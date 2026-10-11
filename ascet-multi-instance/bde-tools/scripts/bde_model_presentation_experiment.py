"""Actual Doge model-field presentation, independent observations and bounded UI gates."""
import argparse
import json
import time
import traceback
from pathlib import Path

import bd_service as service
from bd_native_presentation import compile_overlay
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_public_oracle import compare, public_projection
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--visual-hold', type=int, default=0, choices=range(0, 601))
    parser.add_argument('--scenario', choices=('scalar', 'table', 'connect', 'move', 'delete', 'create'), default='scalar')
    parser.add_argument('--skip-lifecycle', action='store_true', help='Only verify show/clear; window close/reopen remains untested')
    parser.add_argument('--lifecycle-cycles', type=int, choices=(1, 3), default=1)
    args = parser.parse_args()
    if args.skip_lifecycle and args.lifecycle_cycles != 1:
        parser.error('--skip-lifecycle cannot be combined with multiple lifecycle cycles')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    component = 'BDE_Tool_Experiments\\Trial_data_20260930_012339'
    session = str(args.output.resolve())
    sources = [f for f in (service.ROOT / 'scripts').glob('*')
               if f.suffix in ('.py', '.cs', '.st', '.json') and f.name.startswith(('bd', 'AscetStructure', 'AscetRead', 'AscetBde', 'format_bd'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'component': component, 'scenario': args.scenario, 'calls': [], 'outstanding': [], 'ui': {},
              'lifecycle_cycles_requested': 0 if args.skip_lifecycle else args.lifecycle_cycles, 'lifecycle_cycles': [],
              'scope': 'one ordinary Main model occurrence; sandbox only; no state-machine editing',
              'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes()) for f in sources}}
    active_change = None
    initial = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, session, record)
    client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'

    def edit(snapshot, operation, key):
        _, body, error = client.call('bd_edit', {'snapshot': snapshot, 'request_id': key, 'operations': [operation]})
        receipt = json.loads(body)
        if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(receipt['change_id'])
            save()
        assert not error and receipt['status'] == 'applied_observed', body
        assert receipt['additional_ASCET_reads'] == 0
        return receipt

    def inverse(key):
        _, receipt = client.value('bd_revert', {'change_id': result['outstanding'][-1], 'request_id': key})
        assert receipt['status'] == 'verified_local', receipt
        result['outstanding'].pop()
        save()

    def gate(stage):
        result['phase'] = stage
        save()
        print(json.dumps({'phase': stage, 'release_file': str(args.output / (stage + '.json'))}), flush=True)
        if not args.visual_hold:
            result['ui'][stage] = {'status': 'not_checked'}
            return
        release = args.output / (stage + '.json')
        deadline = time.monotonic() + args.visual_hold
        while not release.is_file() and time.monotonic() < deadline:
            time.sleep(0.25)
        result['ui'][stage] = json.loads(release.read_text(encoding='utf-8')) if release.is_file() else {'status': 'timed_out'}
        save()
        assert result['ui'][stage].get('status') == 'verified', 'UI gate was not verified: ' + stage

    def observe(label):
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            native = adapter.observe(domain, [])
            public = adapter.observe_public(domain)
            models = sorted(adapter.observe_models(domain), key=lambda m: m['name'])
        comparison = compare(native['entries'], public)
        (args.output / (label + '.json')).write_text(json.dumps({'native': native, 'public': public,
                                                               'models': models, 'comparison': comparison}, indent=2), encoding='utf-8')
        assert comparison['passed'], comparison
        return native, public_projection(public), models

    def status(label):
        path = args.output / (label + '-status.json')
        with service.live_lock():
            service.run_process([str(binary), component, 'status', str(args.output / 'empty.json'),
                                 str(path), str(args.output / 'domain.json')], 25)
        receipt = json.loads(path.read_text(encoding='utf-8'))
        result[label + '_status'] = receipt
        save()
        assert receipt['status'] == 'ok', receipt
        return receipt['presentation']

    try:
        compile_bridge()
        binary = compile_overlay()
        result['runtime_manifest'] = {str(f): service.digest(f.read_bytes()) for f in (
            binary, service.ROOT / 'analysis/live-api/AscetStructureSession.exe',
            Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))}
        header, _, error = client.call('bd_read', {'component': component, 'view': 'structure'})
        assert not error
        base = service.load_record(header['snapshot'], 's_', 'snapshots')
        domain = {'session': session, 'database': base['database'], 'oid': base['oid'], 'process_epoch': base['ascet_process_epoch']}
        (args.output / 'domain.json').write_text(json.dumps(domain), encoding='utf-8')
        (args.output / 'empty.json').write_text('[]', encoding='utf-8')
        initial = observe('baseline')
        geometry_case = args.scenario in ('connect', 'move', 'delete')
        creation = {'op': 'create_block', 'kind': 'oned_table' if args.scenario == 'table' else 'variable',
                    'name': 'EvalModelOverlay', 'model_type': 'cont', 'position': [320, 240]}
        creation.update({'max_size': 3} if args.scenario == 'table' else {'initial_value': 1.25})
        created = edit(header['snapshot'], creation, 'create')
        result['created'] = created
        model = next(d['after'] for d in created['differences'] if d['after']['kind'] == 'model')
        sid = created['after_snapshot']
        if geometry_case:
            node = next(d['after'] for d in created['differences'] if d['after']['kind'] == 'node')
            literal = edit(sid, {'op': 'create_block', 'kind': 'literal', 'name': '3.0', 'position': [160, 400]}, 'literal')
            sid = literal['after_snapshot']
            output = next(d['after'] for d in literal['differences'] if d['after']['kind'] == 'pin' and d['after']['output'])
            input_pin = next(d['after'] for d in created['differences'] if d['after']['kind'] == 'pin' and d['after']['input'])
            connection = {'op': 'connect_data', 'source': 'Main/' + output['ref'], 'target': 'Main/' + input_pin['ref']}
            if args.scenario != 'connect':
                sid = edit(sid, connection, 'connect')['after_snapshot']
        before_edit = initial if args.scenario == 'create' else observe('created')
        operation = {'op': 'set_scalar_value', 'target': 'Main/' + model['ref'],
                     'expect': {'value': 1.25}, 'value': 42.125} if args.scenario != 'table' else {
                         'op': 'set_table_values', 'target': 'Main/' + model['ref'],
                         'expect': {'values': model['default_value']['values']}, 'values': [1.25, 42.125, -3.5]}
        if geometry_case:
            operation = connection if args.scenario == 'connect' else {
                'op': 'move_node' if args.scenario == 'move' else 'delete_node', 'target': 'Main/' + node['ref']}
            if args.scenario == 'move':
                operation['position'] = [480, 360]
        changed = created if args.scenario == 'create' else edit(sid, operation, 'value')
        active_change = changed['change_id']
        result['changed'] = changed
        if not geometry_case and args.scenario != 'create':
            assert len(changed['differences']) == 1 and changed['differences'][0]['ref'] == model['ref']
        expected = observe('after-edit')
        _, diff = client.value('bd_diff', {'change_id': active_change})
        assert diff['differences'] == changed['differences']
        _, shown = client.value('bd_diff', {'change_id': active_change, 'presentation': 'show'})
        result['shown'] = shown
        registered = status('shown')
        assert registered.startswith('registered|') and '|error=none' in registered and '|undo_content_checked=true' in registered, registered
        gate('shown')
        after_ui = status('after-ui')
        assert '|error=none' in after_ui and '|undo_stream_unchanged=true' in after_ui, after_ui
        assert observe('after-show') == expected, 'Presentation altered the model'
        _, cleared = client.value('bd_diff', {'change_id': active_change, 'presentation': 'clear'})
        result['cleared'] = cleared
        assert cleared['native']['presentation']=='cleared|undo_content_unchanged=true',cleared
        assert status('cleared') == 'absent'
        gate('cleared')
        assert observe('after-clear') == expected, 'Clearing altered the model'
        if not args.skip_lifecycle:
            for cycle in range(1, args.lifecycle_cycles + 1):
                suffix = '' if cycle == 1 else '-' + str(cycle)
                row = {'cycle': cycle, 'passed': False}
                result['lifecycle_cycles'].append(row)
                _, row['reshown'] = client.value('bd_diff', {'change_id': active_change, 'presentation': 'show'})
                registered = status('before-close' + suffix)
                assert registered.startswith('registered|') and '|error=none' in registered and '|undo_stream_unchanged=true' in registered, registered
                gate('close-window' + suffix)
                row['window_destroy_removed_callback'] = status('after-close' + suffix) == 'absent'
                if args.visual_hold:
                    assert row['window_destroy_removed_callback'], 'Closing did not remove the presentation callback'
                    assert observe('after-close' + suffix) == expected, 'Closing altered the model'
                    _, row['reopened'] = client.value('bd_diff', {'change_id': active_change, 'presentation': 'show'})
                    gate('reopened' + suffix)
                    registered = status('after-reopened' + suffix)
                    assert registered.startswith('registered|') and '|error=none' in registered and '|undo_stream_unchanged=true' in registered, registered
                    assert observe('after-reopened' + suffix) == expected, 'Reopening altered the model'
                client.value('bd_diff', {'change_id': active_change, 'presentation': 'clear'})
                assert status('lifecycle-cleared' + suffix) == 'absent'
                if args.visual_hold:
                    gate('lifecycle-cleared' + suffix)
                    assert observe('after-lifecycle-clear' + suffix) == expected, 'Lifecycle clear altered the model'
                    row['passed'] = True
                else:
                    row['not_verified'] = 'No actual window close/reopen was observed'
                save()
        client.value('bd_diff', {'change_id': active_change, 'presentation': 'clear'})
        assert status('final-clear') == 'absent'
        assert observe('before-revert') == expected
        inverse('undo-value')
        assert observe('restored-value') == before_edit
        while result['outstanding']:
            inverse('undo-create-' + str(len(result['outstanding'])))
        assert observe('restored-baseline') == initial
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if active_change:
            try:
                client.value('bd_diff', {'change_id': active_change, 'presentation': 'clear'})
            except Exception as error:
                result['clear_cleanup_error'] = str(error)
        while result['outstanding']:
            try:
                inverse('failure-cleanup-' + str(len(result['outstanding'])))
            except Exception as error:
                result['cleanup_error'] = str(error)
                break
        if initial is not None and not result['outstanding']:
            try:
                result['baseline_restored'] = observe('independent-final') == initial
            except Exception as error:
                result['final_verification_error'] = str(error)
        result['source_changes_during_run'] = [name for name, fingerprint in result['source_manifest'].items()
                                              if service.digest((service.ROOT / name).read_bytes()) != fingerprint]
        result['visual_verified'] = bool(result['ui']) and all(v.get('status') == 'verified' for v in result['ui'].values())
        result['lifecycle_verified'] = bool(result['lifecycle_cycles']) and all(row['passed'] for row in result['lifecycle_cycles'])
        result['phase'] = 'finished'
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'visual_verified', 'baseline_restored', 'outstanding', 'error', 'cleanup_error')}), flush=True)
    return 0 if result['passed'] and result.get('baseline_restored') else 1


if __name__ == '__main__':
    raise SystemExit(main())
