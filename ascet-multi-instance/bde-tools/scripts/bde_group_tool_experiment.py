"""Real Doge independent-resource edit/diff/preview/conflict/revert acceptance."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', action='append', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--presentation', action='store_true')
    args = parser.parse_args()
    if len(args.component) != 2 or len(set(args.component)) != 2:
        parser.error('Two distinct sandbox components are required')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'rounds': [], 'metrics': [], 'outstanding': [],
        'baseline_restored': False, 'business_writes': False, 'atomic': False,
        'scope': 'two sandbox Main scopes, literal creation and independent local move; not message channel construction',
        'not_verified': ['unknown live group outcome', 'OS crash', 'dependent shared definitions',
                         'message properties/connect_path', 'complete visual validation']}
    sources = [path for path in (service.ROOT / 'scripts').glob('*')
               if path.suffix in ('.py', '.cs', '.st', '.json') and path.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in sources}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'group-eval-' + args.output.name, record)
    client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1' if args.presentation else '0'
    domains = {}
    baseline = None
    overlays = []

    def call(tool, arguments, expected_error=False):
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, error = client.call(tool, arguments)
        metric = {'tool': tool, 'frames': traffic['request'].result()['frames'],
                  'connections': traffic['connections'], 'proxy_errors': traffic['errors'], 'bytes': len(body.encode())}
        result['metrics'].append(metric)
        assert error == expected_error and not traffic['errors'], body
        return head, body if tool in ('bd_read',) else json.loads(body), metric

    def read(component):
        head, _, _ = call('bd_read', {'component': component, 'view': 'structure'})
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        domains[component] = {'session': client.session, 'database': record['database'], 'oid': record['oid'],
                              'process_epoch': record['ascet_process_epoch']}
        return head['snapshot']

    def observe():
        rows = {}
        for component in args.component:
            with service.live_lock():
                with NativeStructureAdapter(component) as adapter:
                    domain = domains[component]
                    rows[component] = {'native': adapter.observe(domain, []),
                        'public': adapter._exchange({'cmd': 'observe_public_tree'}), 'models': adapter.observe_models(domain)}
        return rows

    def verify_patch(before, after, receipt):
        for step in receipt['steps']:
            local = step['receipt']
            from bd_group_tools import journal
            log = journal().local
            intent = log.read(local['change_id'])[0]['payload']
            if 'reverts' in intent:
                intent = log.read(intent['reverts'])[0]['payload']
            component = intent['component']
            entries = {row['ref']: row for row in before[component]['native']['entries']}
            for change in local['differences']:
                assert entries.get(change['ref']) == change['before']
                if change['after'] is None:
                    entries.pop(change['ref'])
                else:
                    entries[change['ref']] = change['after']
            assert entries == {row['ref']: row for row in after[component]['native']['entries']}
            assert local['additional_ASCET_reads'] == 0 and local['after_snapshot']

    def inverse(change, request):
        _, receipt, _ = call('bd_revert', {'change_id': change, 'request_id': request})
        assert receipt['status'] in ('reverted', 'verified_local')
        result['outstanding'].remove(change)
        return receipt

    try:
        save()
        snapshots = [read(component) for component in args.component]
        baseline = observe()
        (args.output / 'baseline.json').write_text(json.dumps(baseline, indent=2), encoding='utf-8')
        for index in range(3):
            row = {}
            result['rounds'].append(row)
            request = {'request_id': f'create-{index}', 'steps': [
                {'snapshot': sid, 'operations': [{'op': 'create_block', 'kind': 'literal', 'name': str(21 + position),
                    'position': [1520, 1020]}]} for position, sid in enumerate(snapshots)]}
            _, preview, _ = call('bd_edit', {**request, 'preview': True})
            assert preview['status'] == 'preview' and observe() == baseline
            group = 'flow_' + fingerprint({'session': client.session, 'request_id': request['request_id']})
            result['outstanding'].append(group)
            _, receipt, _ = call('bd_edit', request)
            assert receipt['change_id'] == group and receipt['status'] == 'completed'
            after = observe()
            verify_patch(baseline, after, receipt)
            _, replay, metric = call('bd_edit', request)
            assert replay == receipt and metric['frames'] == metric['connections'] == 0
            _, diff, metric = call('bd_diff', {'change_id': group})
            assert metric['frames'] == metric['connections'] == 0
            assert len(diff['resource_differences']) == 2 and diff['atomic'] is False
            for step, actual in zip(receipt['steps'], diff['resource_differences']):
                assert actual['differences'] == [{**change, 'qualified_ref': 'Main/' + change['ref']}
                                                  for change in step['receipt']['differences']]
            if args.presentation:
                overlays.append(group)
                _, shown, _ = call('bd_diff', {'change_id': group, 'presentation': 'show'})
                assert len(shown['resources']) == 2 and not any(item['result']['is_error'] for item in shown['resources'])
                assert observe() == after
                _, cleared, _ = call('bd_diff', {'change_id': group, 'presentation': 'clear'})
                assert len(cleared['resources']) == 2 and not any(item['result']['is_error'] for item in cleared['resources'])
                overlays.remove(group)
                assert observe() == after
            _, preview, _ = call('bd_revert', {'change_id': group, 'request_id': f'preview-{index}', 'preview': True})
            assert preview['status'] == 'preview' and preview['all_resources_checked'] and observe() == after
            local = receipt['steps'][0]['receipt']
            created = next(change['after']['ref'] for change in local['differences']
                           if change['before'] is None and change['after']['kind'] == 'node')
            _, moved, _ = call('bd_edit', {'snapshot': local['after_snapshot'], 'request_id': f'move-{index}',
                'operations': [{'op': 'move_node', 'target': 'Main/' + created, 'position': [1600, 1100]}]})
            assert moved['status'] == 'applied_observed'
            result['outstanding'].append(moved['change_id'])
            changed = observe()
            _, conflict, _ = call('bd_revert', {'change_id': group, 'request_id': f'conflict-{index}'}, True)
            assert conflict['status'] == 'conflict' and conflict['setter_called'] is False and observe() == changed
            inverse(moved['change_id'], f'unmove-{index}')
            restored = inverse(group, f'inverse-{index}')
            current = observe()
            verify_patch(after, current, restored)
            assert current == baseline
            assert [step['index'] for step in restored['steps']] == [1, 0]
            row.update(passed=True, group=group, inverse=restored['change_id'],
                       complete_public_and_model_restoration=True, visual_verified=False)
            snapshots = [read(component) for component in args.component]
            save()
        head, history, metric = client.call('bd_inspect', {'query': 'edits'})
        assert not metric
        rows = [json.loads(row) for row in history.splitlines()]
        assert sum(item['record_type'] == 'resource_group' for item in rows) == 9
        assert not any(item['record_type'] == 'edit_history_diagnostic' for item in rows)
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        assert not result['source_changes_during_run']
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        for group in list(overlays):
            try:
                call('bd_diff', {'change_id': group, 'presentation': 'clear'})
                overlays.remove(group)
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
        for change in list(reversed(result['outstanding'])):
            try:
                inverse(change, 'cleanup-' + change[-16:])
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
                break
        if baseline is not None:
            try:
                result['baseline_restored'] = observe() == baseline
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
        save()
    print(json.dumps({key: result[key] for key in ('passed', 'baseline_restored', 'outstanding', 'error', 'cleanup_error') if key in result}))
    return 0 if result['passed'] and result['baseline_restored'] and not result['outstanding'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
