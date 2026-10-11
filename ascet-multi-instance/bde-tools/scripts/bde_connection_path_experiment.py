"""Live existing-pin plans, dependent actual edge patches and guarded inverse.

All ordinary calls use Doge Tool.call. Lost-reply dispatch alone injects a
controlled backend adapter exception after the second real native apply.
"""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import time
import traceback
from unittest.mock import patch

import bd_service as service
import bd_group_tools
import bde_experiments as bench
from bd_edit_journal import clone, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structural_tools import select
from bde_public_oracle import compare, encoded, native_projection, public_projection
from bde_tool_client import ToolClient


class LoseSecondReply(NativeStructureAdapter):
    mutations = []

    def _exchange(self, request):
        result = super()._exchange(request)
        if request['cmd'] in ('apply', 'revert'):
            self.mutations.append({'component': self.component, 'cmd': request['cmd'], 'token': request.get('token')})
        if request['cmd'] == 'apply' and len(self.mutations) == 2:
            raise ConnectionError('EVAL: second real native connection apply reply discarded')
        return result


def equivalent(left, right):
    return set(left) == set(right) and all(left[c]['native'] == right[c]['native']
        and Counter(map(encoded, left[c]['models'])) == Counter(map(encoded, right[c]['models']))
        and set(left[c]['public']) == set(right[c]['public'])
        and all(public_projection(left[c]['public'][s]) == public_projection(right[c]['public'][s])
                for s in left[c]['public']) for c in left)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--hierarchy', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--presentation', action='store_true')
    args = parser.parse_args()
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    assert fixture['status'] == 'ok' and fixture['business_writes'] is False
    components = [r['component'] for r in fixture['modules'][:2]] + [args.hierarchy]
    assert len(set(components)) == 3 and all(c.startswith('BDE_Tool_Experiments\\Trial_') for c in components)
    resources = [(components[0], 'Main'), (components[1], 'Main'),
                 (components[2], 'Main/h12'), (components[2], 'Main/h12/h5')]
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'metrics': [], 'cases': [], 'observations': [], 'outstanding': [],
        'business_writes': False, 'atomic': False, 'baseline_restored': False,
        'not_verified': ['semantic bindings between explicit segments', 'create-then-connect in one plan',
            'interface creation', 'runtime transfer/schedule', 'BDE visual lifecycle', 'database reopen'],
        'fault_scope': 'backend adapter reply discarded after second real native apply; not wire truncation'}
    sources = [p for p in (service.ROOT / 'scripts').glob('*') if p.suffix in ('.py', '.cs', '.st', '.json')
               and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    domains, scopes = {}, {}
    active_presentations = []
    baseline = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, 'connection-path-' + args.output.name, record)
    if args.presentation:
        client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'

    def call(tool, values, error=False, direct=False):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            if direct:
                from bd_group_recovery import document
                with patch.dict(os.environ, client.env), patch.object(bd_group_tools, 'NativeStructureAdapter', LoseSecondReply):
                    response = service.handle(tool, values, client.session)
                head = json.loads(response['content'].split('\n\n', 1)[0])
                value, failed = document(response, client.session), bool(response.get('is_error'))
                body = json.dumps(value)
                record({'tool': tool, 'args': values, 'response': response, 'invocation': 'direct backend fault injection'})
            else:
                head, body, failed = client.call(tool, values)
                value = body if tool == 'bd_read' else json.loads(body)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
            'request': wire['request'].result(), 'response': wire['response'].result(),
            'connections': wire['connections'], 'errors': wire['errors'], 'direct_fault_backend': direct,
            'body_bytes': len(body.encode())}
        result['metrics'].append(metric)
        save()
        assert (error is None or failed == error) and not wire['errors'], value
        return head, value, metric

    def read(c, s):
        head, _, _ = call('bd_read', {'component': c, 'view': 'structure', 'scope': {'diagram': s}})
        raw = service.load_record(head['snapshot'], 's_', 'snapshots')
        domains[c] = {'session': client.session, 'database': raw['database'], 'oid': raw['oid'],
                      'process_epoch': raw['ascet_process_epoch']}
        return raw

    def observe():
        value = {}
        with service.live_lock():
            for c in components:
                native = {}
                for s in scopes[c]:
                    with NativeStructureAdapter(c, s) as adapter:
                        native[s] = adapter.observe(domains[c], [])
                with NativeStructureAdapter(c) as adapter:
                    adapter.observe(domains[c], [])
                    public = adapter._exchange({'cmd': 'observe_public_tree'})
                    models = adapter.observe_models(domains[c])
                assert set(native) == set(public)
                for s in scopes[c]:
                    proof = compare(native[s]['entries'], public[s])
                    assert proof['passed'], proof
                value[c] = {'native': native, 'public': public, 'models': models}
        result['observations'].append(value)
        save()
        return value

    def patch_matches(receipt, before, after):
        expected = clone(before)
        projections = {(c, s): public_projection(before[c]['public'][s])
                       for c in components for s in scopes[c]}
        local_receipts = receipt.get('steps', [{'receipt': receipt}])
        for item in local_receipts:
            local = item['receipt']
            intent = bd_group_tools.journal().local.read(local['change_id'])[0]['payload']
            if 'reverts' in intent:
                intent = bd_group_tools.journal().local.read(intent['reverts'])[0]['payload']
            c, s = intent['component'], intent['diagram']
            rows = {r['ref']: r for r in expected[c]['native'][s]['entries']}
            public = projections[c, s]
            for delta in local['differences']:
                assert rows.get(delta['ref']) == delta['before'], delta
                if delta['after'] is None:
                    rows.pop(delta['ref'])
                else:
                    rows[delta['ref']] = delta['after']
                if delta['before']:
                    public -= native_projection([delta['before']])
                if delta['after']:
                    public += native_projection([delta['after']])
            expected[c]['native'][s]['entries'] = sorted(rows.values(), key=lambda r: r['ref'])
            expected[c]['native'][s]['lookup_edges'] = sum(r['kind'] == 'edge' for r in rows.values())
            assert local['additional_ASCET_reads'] == 0 and local['after_snapshot']
            partial = service.load_record(local['after_snapshot'], 's_', 'snapshots')['structure']
            assert select(expected[c]['native'][s], partial['targets']) == partial
        for c in components:
            assert expected[c]['native'] == after[c]['native']
            assert Counter(map(encoded, before[c]['models'])) == Counter(map(encoded, after[c]['models']))
            for s in scopes[c]:
                assert projections[c, s] == public_projection(after[c]['public'][s])
        result.setdefault('actual_patch_audits', []).append({'change_id': receipt['change_id'], 'passed': True})
        save()

    def individual(c, s, op, key):
        raw = read(c, s)
        token = 'edit_' + fingerprint({'domain': domains[c], 'request_id': key})
        result['outstanding'].append(token)
        save()
        _, receipt, _ = call('bd_edit', {'snapshot': raw['snapshot'], 'request_id': key, 'operations': [op]})
        assert receipt['status'] == 'applied_observed' and receipt['change_id'] == token, receipt
        return receipt

    def inverse(token, key):
        _, receipt, _ = call('bd_revert', {'change_id': token, 'request_id': key})
        assert receipt['status'] == ('reverted' if token.startswith('flow_') else 'verified_local'), receipt
        result['outstanding'].remove(token)
        save()
        return receipt

    def plan_for(indices):
        segments = []
        for i in indices:
            c, s = resources[i]
            raw = read(c, s)
            rows = raw['structure']['entries']
            source = next(r for r in rows if r['kind'] == 'node' and r.get('literal') == '731.25')
            operator = next(r for r in rows if r['kind'] == 'node' and r.get('operator') == '+')
            output = next(r['ref'] for r in rows if r['ref'] in source['pins'] and r['output'])
            inputs = sorted(r['ref'] for r in rows if r['ref'] in operator['pins'] and r['input'])
            assert len(inputs) == 2
            segments.extend({'snapshot': raw['snapshot'], 'source': s + '/' + output, 'target': s + '/' + target}
                            for target in inputs)
        _, value, metric = call('bd_inspect', {'query': 'flow_plan', 'segments': segments})
        assert metric['request']['frames'] == metric['connections'] == 0 and value['complete_signal_path'] is False
        return value, segments

    def request_for(plan, key):
        return {'request_id': key, 'operations': [{'op': 'connect_path', 'plan_ref': plan['plan_ref']}]}

    try:
        save()
        for c in components:
            read(c, 'Main')
            with service.live_lock(), NativeStructureAdapter(c) as adapter:
                adapter.observe(domains[c], [])
                scopes[c] = list(adapter._exchange({'cmd': 'observe_public_tree'}))
        baseline = observe()
        for i, (c, s) in enumerate(resources):
            individual(c, s, {'op': 'create_block', 'kind': 'literal', 'name': '731.25', 'position': [1620, 1300]}, f'seed-literal-{i}')
            individual(c, s, {'op': 'create_block', 'kind': 'operator', 'name': '+', 'arity': 2, 'position': [1980, 1300]}, f'seed-operator-{i}')
        seeded = observe()
        for trial in range(args.repeats):
            for name, indices in [('same_scope_fanout', [0]), ('multi_module', [0, 1]), ('nested_scopes', [2, 3])]:
                key = f'r{trial}-{name}'
                row = {'case': name, 'trial': trial, 'passed': False}
                result['cases'].append(row)
                plan, segments = plan_for(indices)
                request = request_for(plan, key)
                _, preview, _ = call('bd_edit', {**request, 'preview': True})
                assert preview['status'] == 'preview' and equivalent(observe(), seeded)
                group = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
                result['outstanding'].append(group)
                save()
                _, receipt, _ = call('bd_edit', request)
                assert receipt['status'] == 'completed', receipt
                current = observe()
                patch_matches(receipt, seeded, current)
                _, replay, metric = call('bd_edit', request)
                assert replay == receipt and metric['request']['frames'] == metric['connections'] == 0
                _, diff, metric = call('bd_diff', {'change_id': group})
                assert len(diff['resource_differences']) == len(segments) and metric['request']['frames'] == metric['connections'] == 0
                if args.presentation:
                    active_presentations.append(group)
                    _, shown, _ = call('bd_diff', {'change_id': group, 'presentation': 'show'})
                    assert shown['coalesced_same_scope'] and len(shown['resources']) == len(indices)
                    assert all(r['result']['native']['status'] == 'ok' for r in shown['resources'])
                    assert equivalent(observe(), current)
                    _, cleared, _ = call('bd_diff', {'change_id': group, 'presentation': 'clear'})
                    assert all(r['result']['native']['status'] == 'ok' for r in cleared['resources'])
                    active_presentations.remove(group)
                    assert equivalent(observe(), current)
                c, s = resources[indices[0]]
                source_ref = segments[0]['source'].rsplit('/', 1)[1]
                source_node = next(r for r in current[c]['native'][s]['entries'] if r['kind'] == 'pin' and r['ref'] == source_ref)['owner']
                moved = individual(c, s, {'op': 'move_node', 'target': s + '/' + source_node, 'position': [1680, 1420]}, key + '-external')
                external = observe()
                _, rejected, _ = call('bd_revert', {'change_id': group, 'request_id': key + '-conflict'}, True)
                assert rejected['status'] == 'conflict' and rejected['setter_called'] is False
                assert equivalent(observe(), external)
                inverse(moved['change_id'], key + '-undo-external')
                assert equivalent(observe(), current)
                _, preview, _ = call('bd_revert', {'change_id': group, 'request_id': key + '-preview', 'preview': True})
                assert preview['status'] == 'preview' and equivalent(observe(), current)
                restored = inverse(group, key + '-undo')
                final = observe()
                patch_matches(restored, current, final)
                assert equivalent(final, seeded)
                row.update(passed=True, group=group, inverse=restored['change_id'], edges=len(segments))
                save()
            plan, segments = plan_for([0, 1])
            last = segments[-1]
            occupied = individual(components[1], 'Main', {'op': 'connect_data', 'source': last['source'], 'target': last['target']}, f'r{trial}-occupied')
            external = observe()
            _, rejected, _ = call('bd_edit', request_for(plan, f'r{trial}-occupied-group'), True)
            assert rejected['status'] == 'rejected' and rejected['setter_called'] is False
            assert equivalent(observe(), external)
            inverse(occupied['change_id'], f'r{trial}-undo-occupied')
            assert equivalent(observe(), seeded)
            plan, segments = plan_for([0, 1])
            request = request_for(plan, f'r{trial}-lost')
            group = 'flow_' + fingerprint({'session': client.session, 'request_id': request['request_id']})
            result['outstanding'].append(group)
            LoseSecondReply.mutations = []
            save()
            _, unknown, _ = call('bd_edit', request, True, True)
            assert unknown['status'] == 'outcome_unknown' and len(LoseSecondReply.mutations) == 2
            _, replay, metric = call('bd_edit', request, True)
            assert replay == unknown and metric['request']['frames'] == metric['connections'] == 0
            _, recovery, _ = call('bd_inspect', {'query': 'recovery', 'change_id': group, 'reconcile': True})
            assert recovery['reconciled'] and recovery['model_setters_called'] == 0
            assert recovery['receipt']['status'] == 'partial' and recovery['continued_steps'] is False
            partial = observe()
            assert equivalent({components[1]: partial[components[1]]}, {components[1]: seeded[components[1]]})
            _, repeated, metric = call('bd_inspect', {'query': 'recovery', 'change_id': group, 'reconcile': True})
            assert repeated['receipt'] == recovery['receipt'] and metric['request']['frames'] == metric['connections'] == 0
            restored = inverse(group, f'r{trial}-undo-lost')
            final = observe()
            patch_matches(restored, partial, final)
            assert equivalent(final, seeded)
            result['cases'].append({'case': 'occupied_last_input_and_lost_second_reply', 'trial': trial,
                'passed': True, 'native_mutations': LoseSecondReply.mutations, 'later_component_unchanged': True})
            save()
        for token in list(reversed(result['outstanding'])):
            inverse(token, 'final-' + token[-16:])
        result['baseline_restored'] = equivalent(observe(), baseline)
        result['passed'] = result['baseline_restored'] and not result['outstanding']
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['cleanup'] = []
        for token in reversed(active_presentations):
            try:
                call('bd_diff', {'change_id': token, 'presentation': 'clear'})
            except Exception:
                result['presentation_cleanup_error'] = traceback.format_exc()
        for token in list(reversed(result['outstanding'])):
            try:
                if token.startswith('flow_'):
                    call('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True}, None)
                result['cleanup'].append(inverse(token, 'cleanup-' + token[-16:]))
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
                break
        if baseline is not None and not result['outstanding']:
            try:
                result['baseline_restored'] = equivalent(observe(), baseline)
            except Exception:
                result['final_error'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != sha]
        if result['source_changes_during_run']:
            result['passed'] = False
        save()
    print(json.dumps({key: result[key] for key in ('passed', 'baseline_restored', 'outstanding')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
