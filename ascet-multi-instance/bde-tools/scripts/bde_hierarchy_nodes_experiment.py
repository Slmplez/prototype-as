"""Actual Doge child creation/deletion, full public-tree and declaration oracles."""
import argparse
from collections import Counter
from contextlib import contextmanager
import json
import os
from pathlib import Path
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structural_tools import select
from bd_structure_scope import CHILD_CREATION_KINDS
from bde_public_oracle import compare, native_projection, public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, default=3, choices=range(1, 4))
    parser.add_argument('--kinds', nargs='+', choices=CHILD_CREATION_KINDS, default=list(CHILD_CREATION_KINDS))
    parser.add_argument('--parent-guard-only', action='store_true', help='Only cross-scope and hierarchy-container inverse guards')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    component = fixture['component']
    if component != 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00':
        raise ValueError('Only the recorded isolated hierarchy fixture is accepted')
    scopes = ['Main', f"Main/h{fixture['outer_id']}", f"Main/h{fixture['outer_id']}/h{fixture['inner_id']}"]
    service.STORE = args.output / 'store'
    domain = {'session': str(args.output.resolve()), 'database': fixture['database'], 'oid': fixture['oid'],
              'process_epoch': fixture['ascet_process_epoch']}
    files = list((service.ROOT / 'scripts').glob('bd*.py'))
    files += [service.ROOT / 'scripts' / name for name in ('bde_structure_read.st', 'bde_structure_edit.st',
        'bde_recovery_status.st', 'bde_session_guard.st', 'bde_recovery_release.st', 'AscetStructureRead.cs',
        'AscetStructureSession.cs', 'AscetStructureExperiment.cs', 'bde_public_oracle.py', 'bde_read_contract_cases.json')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'component': component, 'business_writes': False, 'complete_flow_gate': False,
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files},
        'fixture_sha256': service.digest(args.fixture.read_bytes()), 'calls': [], 'cases': [],
        'observations': [], 'metrics': [], 'outstanding': [], 'rejections': []}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, domain['session'], record)

    def busy_pause(label, started):
        if time.monotonic() - started >= 30:
            return False
        result.setdefault('busy_waits', []).append({'operation': label, 'wait_seconds': 2,
            'reason': 'host live lock refusal before dispatch; same request ID retained'})
        save()
        time.sleep(2)
        return True

    @contextmanager
    def live_slot():
        started = time.monotonic()
        while True:
            entered = False
            try:
                with service.live_lock():
                    entered = True
                    yield
                return
            except service.ToolError as error:
                if entered or error.code != 'ASCET_BUSY' or not busy_pause('independent_read', started):
                    raise

    def call(tool, values, allow_error=False):
        wait_started = time.monotonic()
        while True:
            head, body, error = call_once(tool, values)
            if not error:
                break
            refusal = json.loads(body)
            if refusal.get('code') != 'ASCET_BUSY' or 'change_id' in refusal or not busy_pause(tool, wait_started):
                break
        if error and not allow_error:
            raise RuntimeError(body)
        return head, body, error

    def call_once(tool, values):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, values)
        result['metrics'].append({'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
            'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(),
            'errors': wire['errors'], 'is_error': error})
        save()
        return head, body, error

    def read(scope):
        head, _, _ = call('bd_read', {'component': component, 'view': 'structure',
            'scope': {'diagram': scope}, 'max_bytes': 4096})
        snapshot = service.load_record(head['snapshot'], 's_', 'snapshots')
        assert all(snapshot[k] == fixture[k] for k in ('database', 'oid', 'ascet_process_epoch'))
        assert snapshot['dirty_editors'] == [0, 0]
        assert snapshot['structure']['diagram'] == scope
        return snapshot

    def independent():
        with live_slot(), bench.proxy() as wire:
            with NativeStructureAdapter(component, environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                adapter._ensure_open(domain)
                tree = adapter._exchange({'cmd': 'observe_public_tree'})
                models = adapter.observe_models(domain)
        result['metrics'].append({'tool': 'independent_public_tree_and_models',
            'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']})
        value = {'tree': tree, 'models': models}
        result['observations'].append(value)
        save()
        return value

    def observe():
        native = {scope: read(scope) for scope in scopes}
        public = independent()
        assert set(public['tree']) == set(scopes)
        for scope in scopes:
            proof = compare(native[scope]['structure']['entries'], public['tree'][scope])
            assert proof['passed'], proof
        assert len({s['structure']['generation'] for s in native.values()}) == 1
        return native, public

    def model_set(observation):
        return Counter(map(encoded, observation['models']))

    def assert_restored(native, public, expected_native, expected_public):
        assert all(native[s]['structure'] == expected_native[s]['structure'] for s in scopes)
        assert all(public_projection(public['tree'][s]) == public_projection(expected_public['tree'][s]) for s in scopes)
        assert model_set(public) == model_set(expected_public)

    def assert_patch(receipt, previous):
        actual = independent()
        scope = receipt['diagram']
        expected = public_projection(previous['tree'][scope])
        for diff in receipt['differences']:
            removed = native_projection([diff['before']]) if diff['before'] else Counter()
            assert all(expected[row] >= count for row, count in removed.items())
            expected -= removed
            expected += native_projection([diff['after']]) if diff['after'] else Counter()
        assert public_projection(actual['tree'][scope]) == expected
        assert all(public_projection(actual['tree'][s]) == public_projection(previous['tree'][s]) for s in scopes if s != scope)
        snapshot = service.load_record(receipt['after_snapshot'], 's_', 'snapshots')
        complete = read(scope)
        assert select(complete['structure'], snapshot['structure']['targets']) == snapshot['structure']
        proof = compare(complete['structure']['entries'], actual['tree'][scope])
        assert proof['passed'], proof
        return actual

    def edit(snapshot, op, request_id):
        _, body, error = call('bd_edit', {'snapshot': snapshot['snapshot'], 'request_id': request_id,
            'operations': [op]}, allow_error=True)
        receipt = json.loads(body)
        if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(receipt['change_id'])
            save()
        if error or receipt.get('status') != 'applied_observed':
            raise RuntimeError(receipt)
        assert receipt['requested_effect_verified'] and receipt['additional_ASCET_reads'] == 0
        return receipt

    def snapshot(receipt):
        return service.load_record(receipt['after_snapshot'], 's_', 'snapshots')

    def revert(receipt, request_id):
        change = receipt if isinstance(receipt, str) else receipt['change_id']
        _, body, error = call('bd_revert', {'change_id': change, 'request_id': request_id}, allow_error=True)
        value = json.loads(body)
        if error or value.get('status') != 'verified_local':
            raise RuntimeError(value)
        result['outstanding'].remove(change)
        save()
        return value

    def rejected(tool, values):
        _, body, error = call(tool, values, allow_error=True)
        value = json.loads(body)
        assert error, value
        assert value.get('setter_called', False) is False
        result['rejections'].append(value)
        save()
        return value

    def created_node(receipt):
        return next(row['after'] for row in receipt['differences']
            if row['before'] is None and row['after']['kind'] == 'node')

    try:
        save()
        compile_bridge()
        initial, initial_public = observe()
        result.update(baseline=initial, public_baseline=initial_public)
        # Native refusal is independently checked, bypassing Python planning.
        for scope in scopes[1:]:
            boundary = next(r for r in initial[scope]['structure']['entries'] if r.get('hierarchy_boundary'))
            rejected('bd_edit', {'snapshot': initial[scope]['snapshot'], 'request_id': 'boundary-' + scope,
                'operations': [{'op': 'delete_node', 'target': scope + '/' + boundary['ref']}], 'preview': True})
            with live_slot(), NativeStructureAdapter(component, scope) as adapter:
                try:
                    adapter.validate(domain, 'delete_node', [[boundary['ref']], boundary['ref']])
                except Exception as error:
                    assert 'Hierarchy boundary pin deletion unavailable' in str(error), str(error)
                    result.setdefault('native_boundary_rejections', []).append({'scope': scope, 'error': str(error)})
                else:
                    raise AssertionError('Native boundary deletion was accepted')
        for round_index in range(args.repeats):
            for scope in ([] if args.parent_guard_only else scopes[1:]):
                for kind in args.kinds:
                    native, public = observe()
                    tag = f'{round_index + 1}-{scope}-{kind}'
                    name = {'literal': '3.0', 'comment': 'Scoped comment', 'operator': '+'}.get(kind, 'ScopedValue')
                    op = {'op': 'create_block', 'kind': kind, 'name': name, 'position': [900, 600]}
                    if kind in ('variable', 'parameter', 'constant'):
                        op.update(model_type='cont', initial_value=3.0)
                    if kind == 'enumeration':
                        op.update(new_definition={'name': 'ScopedEnum_' + service.digest(domain['session'])[:8], 'items': ['Off', 'On']}, initial_value='On')
                    case = {'round': round_index + 1, 'scope': scope, 'kind': kind}
                    result['cases'].append(case)
                    _, body, _ = call('bd_edit', {'snapshot': native[scope]['snapshot'], 'request_id': tag + '-preview',
                        'operations': [op], 'preview': True})
                    assert json.loads(body)['setter_called'] is False
                    created = edit(native[scope], op, tag + '-create')
                    case['create'] = created
                    public_created = assert_patch(created, public)
                    assert all(model_set(public_created)[row] >= count for row, count in model_set(public).items())
                    _, body, _ = call('bd_edit', {'snapshot': native[scope]['snapshot'], 'request_id': tag + '-create', 'operations': [op]})
                    assert json.loads(body) == created
                    rejected('bd_edit', {'snapshot': native[scope]['snapshot'], 'request_id': tag + '-stale', 'operations': [op]})
                    node = created_node(created)
                    deleted = edit(snapshot(created), {'op': 'delete_node', 'target': scope + '/' + node['ref']}, tag + '-delete')
                    case['delete'] = deleted
                    public_deleted = assert_patch(deleted, public_created)
                    assert model_set(public_deleted) == model_set(public_created), 'Occurrence deletion altered declarations'
                    rejected('bd_revert', {'change_id': created['change_id'], 'request_id': tag + '-early-inverse'})
                    metric_start = len(result['metrics'])
                    _, body, _ = call('bd_diff', {'change_id': deleted['change_id']})
                    case['diff'] = json.loads(body)
                    assert case['diff']['diagram'] == scope
                    assert all(r['qualified_ref'].startswith(scope + '/') for r in case['diff']['differences'])
                    assert all(m['request_wire']['frames'] == 0 for m in result['metrics'][metric_start:])
                    case['delete_inverse'] = revert(deleted, tag + '-delete-inverse')
                    public_restored_node = assert_patch(case['delete_inverse'], public_deleted)
                    assert model_set(public_restored_node) == model_set(public_created)
                    case['create_inverse'] = revert(created, tag + '-create-inverse')
                    final, final_public = observe()
                    assert_restored(final, final_public, native, public)
                    case['baseline_restored'] = True
                    save()
                    print(json.dumps({'case': tag, 'passed': True}), flush=True)
                # Two input edges from different sources; delete and restore the exact incident closure.
                native, public = observe()
                tag = f'connected-{round_index + 1}-{scope}'
                case = {'round': round_index + 1, 'scope': scope, 'kind': 'connected_operator'}
                result['cases'].append(case)
                op = edit(native[scope], {'op': 'create_block', 'kind': 'operator', 'name': '+', 'position': [900, 600]}, tag + '-operator')
                lit = edit(snapshot(op), {'op': 'create_block', 'kind': 'literal', 'name': '5.0', 'position': [600, 500]}, tag + '-literal')
                case.update(operator=op, literal=lit)
                op_node, lit_node = created_node(op), created_node(lit)
                rows = snapshot(lit)['structure']['entries']
                inputs = [r['ref'] for r in rows if r['kind'] == 'pin' and r['owner'] == op_node['ref'] and r['input']]
                literal_output = next(r['ref'] for r in rows if r['kind'] == 'pin' and r['owner'] == lit_node['ref'] and r['output'])
                boundaries = {r['ref'] for r in rows if r.get('hierarchy_boundary')}
                boundary_output = next(r['ref'] for r in rows if r['kind'] == 'pin' and r['owner'] in boundaries and r['output'])
                first = edit(snapshot(lit), {'op': 'connect_data', 'source': scope + '/' + boundary_output, 'target': scope + '/' + inputs[0]}, tag + '-first')
                # The first local after omits the other input/source; use the complete scope explicitly.
                second = edit(read(scope), {'op': 'connect_data', 'source': scope + '/' + literal_output, 'target': scope + '/' + inputs[1]}, tag + '-second')
                case.update(first=first, second=second)
                connected_public = independent()
                deleted = edit(read(scope), {'op': 'delete_node', 'target': scope + '/' + op_node['ref']}, tag + '-delete')
                case['delete'] = deleted
                assert sum(d['before']['kind'] == 'edge' for d in deleted['differences'] if d['before'] and d['after'] is None) == 2
                assert_patch(deleted, connected_public)
                case['delete_inverse'] = revert(deleted, tag + '-delete-inverse')
                restored_public = independent()
                assert all(public_projection(restored_public['tree'][s]) == public_projection(connected_public['tree'][s]) for s in scopes)
                case['second_inverse'] = revert(second, tag + '-second-inverse')
                case['first_inverse'] = revert(first, tag + '-first-inverse')
                case['literal_inverse'] = revert(lit, tag + '-literal-inverse')
                case['operator_inverse'] = revert(op, tag + '-operator-inverse')
                final, final_public = observe()
                assert_restored(final, final_public, native, public)
                case['baseline_restored'] = True
                save()
                print(json.dumps({'case': tag, 'passed': True}), flush=True)
            # Another root occurrence must block the inverse of a child-created declaration.
            native, public = observe()
            scope = scopes[-1]
            tag = f'shared-{round_index + 1}'
            case = {'round': round_index + 1, 'scope': scope, 'kind': 'cross_scope_reference_guard'}
            result['cases'].append(case)
            created = edit(native[scope], {'op': 'create_block', 'kind': 'variable', 'name': 'ScopedShared',
                'position': [900, 600], 'model_type': 'cont'}, tag + '-variable')
            occurrence = edit(read('Main'), {'op': 'create_block', 'kind': 'existing_model', 'name': 'ScopedShared',
                'position': [900, 600]}, tag + '-other-occurrence')
            case.update(create=created, occurrence=occurrence)
            before_conflict = independent()
            refusal = rejected('bd_revert', {'change_id': created['change_id'], 'request_id': tag + '-refused-inverse'})
            assert refusal['status'] == 'conflict' and 'another graphical occurrence' in encoded(refusal), refusal
            after_conflict = independent()
            assert model_set(before_conflict) == model_set(after_conflict)
            assert all(public_projection(before_conflict['tree'][s]) == public_projection(after_conflict['tree'][s]) for s in scopes)
            case['occurrence_inverse'] = revert(occurrence, tag + '-other-inverse')
            case['create_inverse'] = revert(created, tag + '-variable-inverse')
            final, final_public = observe()
            assert_restored(final, final_public, native, public)
            case['baseline_restored'] = True
            save()
            print(json.dumps({'case': tag, 'passed': True}), flush=True)
            # A later child edit must not disappear when undoing container creation.
            native, public = observe()
            tag = f'parent-{round_index + 1}'
            case = {'round': round_index + 1, 'scope': 'Main', 'kind': 'parent_hierarchy_guard'}
            result['cases'].append(case)
            parent = edit(native['Main'], {'op': 'create_block', 'kind': 'hierarchy', 'name': 'NewStage',
                'position': [1100, 800], 'inputs': ['Signal'], 'outputs': ['Result']}, tag + '-create')
            child_scope = 'Main/h' + created_node(parent)['ref'][1:]
            empty_child = read(child_scope)
            case.update(create=parent, child_scope=child_scope, empty_child=empty_child)
            parent_public = independent()
            assert set(parent_public['tree']) == set(scopes) | {child_scope}
            assert compare(empty_child['structure']['entries'], parent_public['tree'][child_scope])['passed']
            child = edit(empty_child, {'op': 'create_block', 'kind': 'literal', 'name': '7.0',
                'position': [600, 400]}, tag + '-child')
            case['child'] = child
            before_conflict = independent()
            refusal = rejected('bd_revert', {'change_id': parent['change_id'], 'request_id': tag + '-refused-inverse'})
            assert refusal['status'] == 'conflict' and 'hierarchy contents changed' in encoded(refusal), refusal
            after_conflict = independent()
            assert model_set(before_conflict) == model_set(after_conflict)
            assert set(before_conflict['tree']) == set(after_conflict['tree'])
            assert all(public_projection(before_conflict['tree'][s]) == public_projection(after_conflict['tree'][s]) for s in before_conflict['tree'])
            case['child_inverse'] = revert(child, tag + '-child-inverse')
            case['create_inverse'] = revert(parent, tag + '-parent-inverse')
            final, final_public = observe()
            assert_restored(final, final_public, native, public)
            case['baseline_restored'] = True
            save()
            print(json.dumps({'case': tag, 'passed': True}), flush=True)
        final, final_public = observe()
        assert_restored(final, final_public, initial, initial_public)
        result.update(passed=True, baseline_restored=True, public_restored=True, declarations_restored=True)
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if result['outstanding']:
            try:
                for change in list(reversed(result['outstanding'])):
                    revert(change, 'cleanup-' + change)
                final, final_public = observe()
                assert_restored(final, final_public, initial, initial_public)
                result['cleanup_baseline_restored'] = True
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        result['passed'] &= not result['source_changes_during_run'] and not result['outstanding']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'cleanup_error', 'outstanding',
        'baseline_restored', 'public_restored', 'declarations_restored', 'source_changes_during_run')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
