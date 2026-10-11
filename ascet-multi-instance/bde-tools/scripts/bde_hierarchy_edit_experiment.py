"""Real Doge scoped hierarchy edits with full independent public-tree comparisons."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_edit_journal import clone
from bde_public_oracle import compare, public_projection, native_projection
from bd_structural_tools import select
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, default=3, choices=range(1, 4))
    parser.add_argument('--read-only', action='store_true')
    parser.add_argument('--include-root', action='store_true', help='Also verify Main with the changed shared reader')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    component = fixture['component']
    if component != 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00':
        raise ValueError('This experiment only accepts the recorded isolated hierarchy fixture')
    scopes = ['Main', f"Main/h{fixture['outer_id']}", f"Main/h{fixture['outer_id']}/h{fixture['inner_id']}"]
    service.STORE = args.output / 'store'
    files = list((service.ROOT / 'scripts').glob('bd*.py'))
    files += [service.ROOT / 'scripts' / name for name in ('bde_structure_read.st', 'bde_structure_edit.st',
        'bde_recovery_status.st', 'bde_session_guard.st', 'bde_recovery_release.st', 'AscetStructureRead.cs',
        'AscetStructureSession.cs', 'AscetStructureExperiment.cs', 'bde_public_oracle.py',
        'bde_hierarchy_edit_experiment.py', 'bde_read_contract_cases.json')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'read_only': args.read_only, 'component': component,
        'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes()) for f in files},
        'fixture_sha256': service.digest(args.fixture.read_bytes()), 'calls': [], 'cases': [],
        'outstanding': [], 'metrics': [], 'public_observations': [], 'business_writes': False, 'complete_flow_gate': False}
    domain = {'session': str(args.output.resolve()), 'database': fixture['database'], 'oid': fixture['oid'],
        'process_epoch': fixture['ascet_process_epoch']}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, domain['session'], record)

    def call(tool, values, allow_error=False):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, values)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
            'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(),
            'errors': wire['errors'], 'is_error': error}
        result['metrics'].append(metric)
        save()
        if error and not allow_error:
            raise RuntimeError(body)
        return head, body, error

    def read(scope):
        head, _, _ = call('bd_read', {'component': component, 'view': 'structure',
            'scope': {'diagram': scope}, 'max_bytes': 4096})
        snapshot = service.load_record(head['snapshot'], 's_', 'snapshots')
        assert all(snapshot[key] == fixture[key] for key in ('database', 'oid', 'ascet_process_epoch'))
        assert snapshot['dirty_editors'] == [0, 0]
        assert snapshot['structure']['diagram'] == scope
        return snapshot

    def public():
        with service.live_lock(), bench.proxy() as wire:
            with NativeStructureAdapter(component, environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                value = adapter._ensure_open(domain)
                value = adapter._exchange({'cmd': 'observe_public_tree'})
        result['metrics'].append({'tool': 'independent_public_tree', 'request_wire': wire['request'].result(),
            'response_wire': wire['response'].result(), 'errors': wire['errors']})
        result['public_observations'].append(value)
        save()
        return value

    def baseline():
        native = {scope: read(scope) for scope in scopes}
        tree = public()
        assert set(tree) == set(scopes)
        for scope in scopes:
            oracle = compare(native[scope]['structure']['entries'], tree[scope])
            assert oracle['passed'], oracle
        assert len({n['structure']['generation'] for n in native.values()}) == 1
        return native, tree

    def verify_observation(snapshot, tree):
        scope = snapshot['structure']['diagram']
        complete = read(scope)['structure']
        oracle = compare(complete['entries'], tree[scope])
        assert oracle['passed'], oracle
        assert select(complete, snapshot['structure']['targets']) == snapshot['structure']

    def edit(snapshot, operation, request_id):
        _, body, error = call('bd_edit', {'snapshot': snapshot['snapshot'], 'request_id': request_id,
            'operations': [operation]}, allow_error=True)
        receipt = json.loads(body)
        if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(receipt['change_id'])
            save()
        if error or receipt.get('status') != 'applied_observed':
            raise RuntimeError(receipt)
        assert receipt['requested_effect_verified'] and receipt['additional_ASCET_reads'] == 0
        return receipt

    def revert(change, request_id):
        _, body, error = call('bd_revert', {'change_id': change, 'request_id': request_id}, allow_error=True)
        receipt = json.loads(body)
        if error or receipt.get('status') != 'verified_local':
            raise RuntimeError(receipt)
        result['outstanding'].remove(change)
        save()
        return receipt

    try:
        save()
        compile_bridge()
        initial, initial_public = baseline()
        result['baseline'] = initial
        result['public_baseline'] = initial_public
        save()
        if not args.read_only:
            for index in range(args.repeats):
                for scope in scopes if args.include_root else scopes[1:]:
                    native, tree = baseline()
                    rows = native[scope]['structure']['entries']
                    edge = next(row for row in rows if row['kind'] == 'edge')
                    case = {'round': index + 1, 'scope': scope, 'original_edge': clone(edge)}
                    result['cases'].append(case)
                    prefix = f'hierarchy-{index + 1}-{scope}'
                    pins = {row['ref']: row for row in rows if row['kind'] == 'pin'}
                    negatives = [
                        {'op': 'connect_data', 'source': scope + '/' + edge['source'], 'target': scope + '/' + edge['target']},
                        {'op': 'connect_data', 'source': scope + '/' + edge['target'], 'target': scope + '/' + edge['source']},
                        {'op': 'disconnect_data', 'target': ('Main' if scope != 'Main' else scopes[1]) + '/' + edge['ref']},
                        {'op': 'delete_node', 'target': scope + '/' + (pins[edge['source']]['owner'] if scope != 'Main' else 'n' + str(fixture['outer_id']))},
                    ]
                    case['rejections'] = []
                    for ni, negative in enumerate(negatives):
                        _, body, rejected = call('bd_edit', {'snapshot': native[scope]['snapshot'],
                            'request_id': prefix + '-reject-' + str(ni), 'operations': [negative], 'preview': True}, allow_error=True)
                        assert rejected, body
                        case['rejections'].append(json.loads(body))
                    unchanged = public()
                    assert all(public_projection(unchanged[s]) == public_projection(tree[s]) for s in scopes)
                    op = {'op': 'disconnect_data', 'target': scope + '/' + edge['ref']}
                    _, preview, _ = call('bd_edit', {'snapshot': native[scope]['snapshot'], 'request_id': prefix + '-preview',
                        'operations': [op], 'preview': True})
                    case['preview'] = json.loads(preview)
                    assert case['preview']['setter_called'] is False and case['preview']['status'] == 'preview'
                    removed = edit(native[scope], op, prefix + '-disconnect')
                    case['disconnect'] = removed
                    _, replay, _ = call('bd_edit', {'snapshot': native[scope]['snapshot'],
                        'request_id': prefix + '-disconnect', 'operations': [op]})
                    assert json.loads(replay) == removed
                    _, stale, error = call('bd_edit', {'snapshot': native[scope]['snapshot'],
                        'request_id': prefix + '-stale', 'operations': [op]}, allow_error=True)
                    case['stale_rejection'] = json.loads(stale)
                    assert error and case['stale_rejection']['status'] == 'conflict'
                    assert case['stale_rejection']['setter_called'] is False
                    observed = service.load_record(removed['after_snapshot'], 's_', 'snapshots')
                    assert observed['structure']['diagram'] == scope and observed['scope'].get('diagram', 'Main') == scope
                    assert len(removed['differences']) == 1 and removed['differences'][0]['after'] is None
                    now_public = public()
                    verify_observation(observed, now_public)
                    assert public_projection(now_public[scope]) == public_projection(tree[scope]) - native_projection([edge])
                    for other in scopes:
                        if other != scope:
                            assert public_projection(tree[other]) == public_projection(now_public[other]), other
                    connection = {'op': 'connect_data', 'source': scope + '/' + edge['source'], 'target': scope + '/' + edge['target']}
                    added = edit(observed, connection, prefix + '-connect')
                    case['connect'] = added
                    connected = service.load_record(added['after_snapshot'], 's_', 'snapshots')
                    now_public = public()
                    verify_observation(connected, now_public)
                    assert public_projection(now_public[scope]) == public_projection(tree[scope])
                    _, conflict, error = call('bd_revert', {'change_id': removed['change_id'],
                        'request_id': prefix + '-premature-inverse'}, allow_error=True)
                    case['inverse_conflict'] = json.loads(conflict)
                    assert error and case['inverse_conflict']['status'] == 'conflict'
                    assert case['inverse_conflict']['setter_called'] is False
                    call_start = len(result['metrics'])
                    _, diff, _ = call('bd_diff', {'change_id': added['change_id']})
                    case['actual_diff'] = json.loads(diff)
                    assert case['actual_diff']['diagram'] == scope
                    assert all(row['qualified_ref'].startswith(scope + '/') for row in case['actual_diff']['differences'])
                    assert all(m['request_wire']['frames'] == 0 for m in result['metrics'][call_start:])
                    case['connect_inverse'] = revert(added['change_id'], prefix + '-connect-inverse')
                    case['disconnect_inverse'] = revert(removed['change_id'], prefix + '-disconnect-inverse')
                    final, final_public = baseline()
                    assert all(final[s]['structure'] == native[s]['structure'] for s in scopes)
                    assert all(public_projection(final_public[s]) == public_projection(tree[s]) for s in scopes)
                    case['baseline_restored'] = True
                    if scope == scopes[1]:
                        hierarchy_sources = {p['id'] for p in fixture['public_graph']['pins']
                            if p['scope'] == scope and p['owner'] == fixture['inner_id'] and p['output']}
                        current_rows = final[scope]['structure']['entries']
                        original = next(row for row in current_rows if row['kind'] == 'edge'
                            and int(row['source'][1:]) in hierarchy_sources)
                        internal_nodes = {n['id'] for n in fixture['public_graph']['nodes']
                            if n['scope'] == scope and n['hierarchy_pin']}
                        replacement = next(row for row in current_rows if row['kind'] == 'pin'
                            and row['output'] and int(row['owner'][1:]) in internal_nodes)
                        operation = {'op': 'rewire_data', 'target': scope + '/' + original['ref'],
                            'source': scope + '/' + replacement['ref'],
                            'expect': {'source': scope + '/' + original['source'], 'native_connection_type': original['type']}}
                        rewired = edit(final[scope], operation, prefix + '-rewire')
                        case['rewire'] = rewired
                        rewired_snapshot = service.load_record(rewired['after_snapshot'], 's_', 'snapshots')
                        after_rewire = public()
                        verify_observation(rewired_snapshot, after_rewire)
                        assert all(public_projection(after_rewire[s]) == public_projection(final_public[s]) for s in scopes if s != scope)
                        case['rewire_inverse'] = revert(rewired['change_id'], prefix + '-rewire-inverse')
                        restored, restored_public = baseline()
                        assert all(restored[s]['structure'] == final[s]['structure'] for s in scopes)
                        assert all(public_projection(restored_public[s]) == public_projection(final_public[s]) for s in scopes)
                        case['rewire_baseline_restored'] = True
                    elif scope != 'Main':
                        case['rewire_not_run'] = 'The deepest scope in this fixture has only one output; no distinct replacement source'
                    save()
        final, final_public = baseline()
        result['baseline_restored'] = all(final[s]['structure'] == initial[s]['structure'] for s in scopes)
        result['public_restored'] = all(public_projection(final_public[s]) == public_projection(initial_public[s]) for s in scopes)
        result['passed'] = result['baseline_restored'] and result['public_restored'] and not result['outstanding']
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if result['outstanding']:
            try:
                for change in list(reversed(result['outstanding'])):
                    revert(change, 'cleanup-' + change)
                final, final_public = baseline()
                result['cleanup_baseline_restored'] = all(final[s]['structure'] == initial[s]['structure'] for s in scopes)
                result['cleanup_public_restored'] = all(public_projection(final_public[s]) == public_projection(initial_public[s]) for s in scopes)
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        result['passed'] &= not result['source_changes_during_run']
        save()
    print(json.dumps({key: value for key, value in result.items() if key not in
        ('source_manifest', 'calls', 'baseline', 'public_baseline', 'public_observations', 'cases', 'metrics')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
