"""Create/wire/delete/restore a Class inside existing nested BDE scopes via Doge."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import sys
import time
import traceback

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_class_interface_contract import graph_semantics
from bde_public_oracle import compare, public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--class-fixture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    definition = json.loads(args.class_fixture.read_text(encoding='utf-8'))
    os.environ['ASCET_BD_ENDPOINT_PORT'] = '32503'
    component = fixture['component']
    if component != 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00' or not definition['component'].startswith('BDE_Tool_Experiments\\Trial_InterfaceClass_'):
        raise ValueError('Only the recorded isolated hierarchy and Class fixtures are accepted')
    scopes = ['Main', f"Main/h{fixture['outer_id']}", f"Main/h{fixture['outer_id']}/h{fixture['inner_id']}"]
    service.STORE = args.output / 'store'
    sources = list((service.ROOT / 'scripts').glob('bd*.py'))
    sources += [service.ROOT / 'scripts' / name for name in ('bde_structure_read.st', 'bde_structure_edit.st',
        'bde_recovery_status.st', 'bde_session_guard.st', 'bde_recovery_release.st', 'AscetStructureRead.cs',
        'AscetStructureSession.cs', 'AscetStructureExperiment.cs', 'bde_class_callers.st',
        'bde_class_interface_probe.st', 'AscetClassImpactRead.cs', 'bde_hierarchy_class_experiment.py', 'bde_public_oracle.py')]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'business_writes': False, 'cases': [], 'calls': [], 'metrics': [], 'outstanding': [],
        'not_verified': ['shared Class signature changes', 'runtime scheduling/delivery', 'all-scope native visual lifecycle', 'complete AEB_Core acceptance'],
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        'fixture_sha256': service.digest(args.fixture.read_bytes()), 'class_fixture_sha256': service.digest(args.class_fixture.read_bytes())}
    domain = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'hierarchy-class-' + args.output.name, record)

    def call(tool, values, allow_error=False):
        start_wait = time.monotonic()
        while True:
            head, body, error = call_once(tool, values)
            if not error or not isinstance(body, dict) or body.get('code') != 'ASCET_BUSY' or time.monotonic() - start_wait > 30:
                break
            result.setdefault('busy_waits', []).append({'tool': tool, 'seconds': 2, 'request': values.get('request_id'), 'model_request_dispatched': False})
            save()
            time.sleep(2)
        if error and not allow_error:
            raise RuntimeError(body)
        return head, body, error

    def call_once(tool, values):
        start = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            client.env['ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT'] = '32503'
            head, body, error = client.call(tool, values)
        result['metrics'].append({'tool': tool, 'elapsed_ms': (time.perf_counter() - start) * 1000,
            'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors'], 'is_error': error})
        save()
        assert not wire['errors']
        return head, json.loads(body) if error or tool != 'bd_read' else body, error

    def read(scope):
        head, _, _ = call('bd_read', {'component': component, 'view': 'structure', 'scope': {'diagram': scope}, 'max_bytes': 4096})
        value = service.load_record(head['snapshot'], 's_', 'snapshots')
        assert value['oid'] == fixture['oid'] and value['database'].casefold() == fixture['database'].casefold()
        assert value['dirty_editors'] == [0, 0] and value['structure']['diagram'] == scope
        return value

    def independent():
        with service.live_lock(), bench.proxy() as wire:
            with NativeStructureAdapter(component, environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                adapter._ensure_open(domain)
                tree = adapter._exchange({'cmd': 'observe_public_tree'})
                models = adapter.observe_models(domain)
        result['metrics'].append({'tool': 'public_tree_and_models', 'request': wire['request'].result(),
            'response': wire['response'].result(), 'errors': wire['errors']})
        save()
        assert not wire['errors'] and set(tree) == set(scopes)
        return {'tree': tree, 'models': models}

    def observe():
        native = {scope: read(scope) for scope in scopes}
        public = independent()
        for scope in scopes:
            proof = compare(native[scope]['structure']['entries'], public['tree'][scope])
            assert proof['passed'], proof
        return native, public

    def caller_state():
        _, value, _ = call('bd_inspect', {'query': 'class_callers', 'component': definition['component'], 'max_bytes': 4096})
        assert value['oid'] == definition['oid'] and value['ascet_process_epoch'] == domain['process_epoch']
        assert value['model_setters_called'] == 0
        return {key: value[key] for key in ('signature', 'discovery', 'database_session', 'ascet_process_epoch')}

    def edit(snapshot, op, request):
        _, value, error = call('bd_edit', {'snapshot': snapshot['snapshot'], 'request_id': request, 'operations': [op]}, True)
        if value.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(value['change_id'])
            save()
        assert not error and value.get('status') == 'applied_observed', value
        assert value['requested_effect_verified'] and value['additional_ASCET_reads'] == 0
        return value

    def snapshot(receipt):
        return service.load_record(receipt['after_snapshot'], 's_', 'snapshots')

    def node(receipt):
        return next(d['after'] for d in receipt['differences'] if d['before'] is None and d['after']['kind'] == 'node')

    def revert(change, request):
        _, value, error = call('bd_revert', {'change_id': change, 'request_id': request}, True)
        assert not error and value.get('status') == 'verified_local', value
        result['outstanding'].remove(change)
        save()
        return value

    def assert_restored(native, public, original, public_original):
        assert all(graph_semantics(native[s]['structure']) == graph_semantics(original[s]['structure']) for s in scopes)
        assert all(public_projection(public['tree'][s]) == public_projection(public_original['tree'][s]) for s in scopes)
        assert Counter(map(encoded, public['models'])) == Counter(map(encoded, public_original['models']))

    try:
        save()
        compile_bridge()
        initial = read('Main')
        domain = {'session': client.session, 'database': initial['database'], 'oid': initial['oid'], 'process_epoch': initial['ascet_process_epoch']}
        result['domain'] = domain
        with service.live_lock(), bench.proxy() as wire:
            try:
                with NativeStructureAdapter(component, environment=dict(os.environ,
                        ASCET_BD_ENDPOINT_PORT=str(wire['port']), ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                    adapter._ensure_open(domain)
            except RuntimeError as error:
                assert 'Selected listener is not ASCET' in str(error), str(error)
                result['foreign_endpoint_refusal'] = str(error)
            else:
                raise AssertionError('A Python listener was accepted as ASCET')
        assert wire['request'].frames == wire['response'].frames == 0
        baseline, public_baseline = observe()
        class_baseline = caller_state()
        result.update(baseline=baseline, public_baseline=public_baseline, class_baseline=class_baseline)
        save()
        for round_index in range(args.repeats):
            for depth, scope in enumerate(scopes[1:], 1):
                original, public_original = observe()
                tag = f'r{round_index}-d{depth}'
                case = {'tag': tag, 'scope': scope}
                result['cases'].append(case)
                changes = []
                try:
                    op = {'op': 'create_block', 'kind': 'component', 'name': 'ScopedClass', 'definition': definition['component'], 'position': [900, 600]}
                    _, preview, _ = call('bd_edit', {'snapshot': original[scope]['snapshot'], 'request_id': tag + '-preview', 'operations': [op], 'preview': True})
                    assert preview['setter_called'] is False
                    created = edit(original[scope], op, tag + '-class')
                    changes.append(created['change_id'])
                    case['create'] = created
                    class_node = node(created)
                    state = caller_state()
                    owner = next(c for c in state['discovery']['callers'] if c['oid'] == domain['oid'])
                    occurrence = next(o for s in owner['scopes'] if s['diagram'] == scope for o in s['occurrences'] if o['node'] == int(class_node['ref'][1:]))
                    assert occurrence['name'] == 'ScopedClass' and len(occurrence['pins']) == 2
                    case['nested_caller'] = owner
                    literal = edit(snapshot(created), {'op': 'create_block', 'kind': 'literal', 'name': '7.25', 'position': [600, 550]}, tag + '-literal')
                    changes.append(literal['change_id'])
                    sink = edit(snapshot(literal), {'op': 'create_block', 'kind': 'variable', 'name': 'ScopedSink', 'model_type': 'cont', 'position': [1200, 650]}, tag + '-sink')
                    changes.append(sink['change_id'])
                    rows = snapshot(sink)['structure']['entries']
                    def pin(owner_ref, direction, name=None):
                        return next(r['ref'] for r in rows if r['kind'] == 'pin' and r['owner'] == owner_ref and r[direction] and (name is None or r['name'] == name))
                    first = edit(snapshot(sink), {'op': 'connect_data', 'source': scope + '/' + pin(node(literal)['ref'], 'output'),
                        'target': scope + '/' + pin(class_node['ref'], 'input', 'calc/Signal')}, tag + '-first')
                    changes.append(first['change_id'])
                    second = edit(read(scope), {'op': 'connect_data', 'source': scope + '/' + pin(class_node['ref'], 'output'),
                        'target': scope + '/' + pin(node(sink)['ref'], 'input')}, tag + '-second')
                    changes.append(second['change_id'])
                    connected, public_connected = observe()
                    state = caller_state()
                    assert all(public_projection(public_connected['tree'][s]) == public_projection(public_original['tree'][s]) for s in scopes if s != scope)
                    case.update(literal=literal, sink=sink, first=first, second=second)
                    _, conflict, error = call('bd_revert', {'change_id': created['change_id'], 'request_id': tag + '-connected-refusal'}, True)
                    assert error and conflict.get('status') in ('conflict', 'rejected') and conflict.get('setter_called', False) is False, conflict
                    case['connected_create_inverse_refused'] = conflict
                    deleted = edit(connected[scope], {'op': 'delete_node', 'target': scope + '/' + class_node['ref']}, tag + '-delete')
                    changes.append(deleted['change_id'])
                    case['delete'] = deleted
                    assert sum(d['before']['kind'] == 'edge' for d in deleted['differences'] if d['before'] and d['after'] is None) == 2
                    metric_begin = len(result['metrics'])
                    _, diff, _ = call('bd_diff', {'change_id': deleted['change_id']})
                    assert diff['diagram'] == scope and all(d['qualified_ref'].startswith(scope + '/') for d in diff['differences'])
                    assert all(m['request']['frames'] == 0 for m in result['metrics'][metric_begin:])
                    case['automatic_actual_diff'] = diff
                    inverse = revert(deleted['change_id'], tag + '-restore-deletion')
                    changes.remove(deleted['change_id'])
                    case['delete_inverse'] = inverse
                    restored, restored_public = observe()
                    assert_restored(restored, restored_public, connected, public_connected)
                    assert caller_state() == state
                except Exception:
                    case['error'] = traceback.format_exc()
                    save()
                    raise
                finally:
                    if pending.pending_path(domain).exists():
                        result['cleanup_deferred_for_unknown'] = list(changes)
                        save()
                    else:
                        for i, change in enumerate(reversed(changes)):
                            revert(change, tag + '-cleanup-' + str(i))
                final, final_public = observe()
                assert_restored(final, final_public, original, public_original)
                assert caller_state() == class_baseline
                case['complete_baseline_restored'] = True
                save()
                print(json.dumps({'case': tag, 'passed': True}), flush=True)
        final, final_public = observe()
        assert_restored(final, final_public, baseline, public_baseline)
        assert not result['outstanding']
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    result['source_changes_during_run'] = [str(p.relative_to(service.ROOT)) for p in sources
        if service.digest(p.read_bytes()) != result['source_manifest'][str(p.relative_to(service.ROOT))]]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'outstanding': result['outstanding']}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
