"""Public/controlled hierarchy pairing oracle and actual Doge read-only path calls."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_signal_interfaces import FIELDS, bag, hierarchy_bindings, pin_ref
from bd_interface_document import decode


def recipe(fixture):
    """Only this controlled single-input/output fixture permits direction pairing."""
    graph = fixture['public_graph']
    assert fixture['stage'] == 'verified_public_fixture' and fixture['status'] == 'ok'
    assert tuple(len(graph[key]) for key in ('nodes', 'pins', 'edges')) == (9, 13, 6)
    hierarchies = {(n['scope'], n['id']) for n in graph['nodes'] if n['hierarchy']}
    assert hierarchies == {('Main', fixture['outer_id']), (f"Main/h{fixture['outer_id']}", fixture['inner_id'])}
    internal_nodes = {(n['scope'], n['id']) for n in graph['nodes'] if n['hierarchy_pin']}
    pairs = []
    for scope, native_id in sorted(hierarchies):
        child = f'{scope}/h{native_id}'
        for input in (True, False):
            external = [p for p in graph['pins'] if p['scope'] == scope and p['owner'] == native_id and p['input'] == input and p['output'] != input]
            internal = [p for p in graph['pins'] if (p['scope'], p['owner']) in internal_nodes and p['scope'] == child
                        and p['input'] != input and p['output'] == input]
            assert len(external) == len(internal) == 1
            pairs.append((pin_ref(external[0]), pin_ref(internal[0]), 'enter' if input else 'leave'))
    outer_input = next(p for p in graph['pins'] if p['scope'] == 'Main' and p['owner'] == fixture['outer_id'] and p['input'])
    outer_output = next(p for p in graph['pins'] if p['scope'] == 'Main' and p['owner'] == fixture['outer_id'] and p['output'])
    enter = [e for e in graph['edges'] if e['scope'] == 'Main' and e['target'] == outer_input['id']]
    leave = [e for e in graph['edges'] if e['scope'] == 'Main' and e['source'] == outer_output['id']]
    assert len(enter) == len(leave) == 1
    by_pin = {(p['scope'], p['id']): p for p in graph['pins']}
    return pairs, pin_ref(by_pin[('Main', enter[0]['source'])]), pin_ref(by_pin[('Main', leave[0]['target'])])


def verify_graph(fixture, data, public):
    for key in ('nodes', 'pins'):
        assert bag(data[key], FIELDS[key]) == bag(fixture['public_graph'][key], FIELDS[key]), key
    assert bag(data['edges'], ('scope', 'source', 'target')) == bag(fixture['public_graph']['edges'], ('scope', 'source', 'target'))
    for key in ('nodes', 'pins', 'edges'):
        assert bag(data[key], FIELDS[key]) == bag(public[key], FIELDS[key]), key
    expected, _, _ = recipe(fixture)
    hierarchy = hierarchy_bindings(data)
    assert hierarchy['matched'] == 4 and hierarchy['unresolved'] == 0
    actual = [(r['external'], r['internal'], r['direction']) for r in hierarchy['bindings']]
    assert Counter(actual) == Counter(expected)
    assert [n['name'] for n in data['nodes'] if n['hierarchy']] == ['Stage', 'Stage']
    original_types = {(e['scope'], e['source'], e['target']): e['type'] for e in fixture['public_graph']['edges']}
    type_changes = [{**e, 'type_after_placement': original_types[(e['scope'], e['source'], e['target'])]}
                    for e in public['edges'] if e['type'] != original_types[(e['scope'], e['source'], e['target'])]]
    return {'fresh_public_all_common_fields': True, 'controlled_boundary_recipe': True, 'matched_pairs': 4,
            'recipe_topology': True, 'connection_type_changes_since_placement': type_changes,
            'recipe_scope': 'construction requested endpoints; connection type assigned by ASCET, not requested'}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, default=3, choices=range(1, 4))
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    expected_pairs, source, target = recipe(fixture)
    files = [service.ROOT / 'scripts' / name for name in ('bd_service.py', 'bd_signal_tools.py',
        'bd_signal_interfaces.py', 'bd_read_contract.py', 'bde_read_contract_cases.json', 'bde_signal_interfaces.st',
        'AscetStructureRead.cs', 'AscetSignalInterfaceRead.cs', 'bde_signal_interface_experiment.py', 'bd_interface_document.py',
        'bde_tool_client.py', 'bde_experiments.py', 'bde_hierarchy_path_experiment.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'scope': 'one controlled two-level isolated hierarchy fixture; read-only Tool.call',
        'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes()) for f in files},
        'fixture_manifest': {str(args.fixture.resolve()): service.digest(args.fixture.read_bytes())},
        'fixture': fixture['component'], 'expected_pairs': expected_pairs, 'source': source, 'target': target,
        'rounds': [], 'calls': [], 'business_writes': False, 'model_setters_called': False,
        'complete_flow_gate': False, 'not_verified': ['multi-pin hierarchy recipe', 'edit/delete/revert/overlay across scopes',
            'database session and graph reload identity', 'Project binding candidates', 'Class body dataflow', 'runtime delivery']}
    result['metric_note'] = 'elapsed_ms includes proxy lifecycle and fresh Bun/Python processes; tool_call_ms sums actual Tool.call page roundtrips; three rounds are not a P95 benchmark'
    service.STORE = args.output / 'store'

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'hierarchy-path-eval-' + args.output.name, record)

    def call(tool, arguments):
        start = time.perf_counter()
        start_call = len(result['calls'])
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, error = client.call(tool, arguments)
        metric = {'elapsed_ms': (time.perf_counter() - start) * 1000,
                  'tool_call_ms': sum(row['elapsed_ms'] for row in result['calls'][start_call:]),
                  'request_wire': traffic['request'].result(), 'response_wire': traffic['response'].result(),
                  'proxy_errors': traffic['errors'], 'connections': traffic['connections'], 'body_bytes': len(body.encode())}
        assert not metric['proxy_errors'] and metric['request_wire']['frames'] is not None, metric
        if error:
            return head, body, {**metric, 'is_error': True}
        return head, body, metric

    try:
        save()
        previous = None
        for index in range(args.repeats):
            oracle_output = args.output / f'public-{index + 1}'
            process = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_signal_interface_experiment.py'),
                '--component', fixture['component'], '--public-oracle', '--output', str(oracle_output)],
                capture_output=True, timeout=90)
            (args.output / f'oracle-{index + 1}.stdout.log').write_bytes(process.stdout)
            (args.output / f'oracle-{index + 1}.stderr.log').write_bytes(process.stderr)
            assert process.returncode == 0, process.stdout.decode(errors='replace')
            raw = json.loads((oracle_output / 'probe.json').read_text(encoding='utf-8'))
            assert all(raw[key] == fixture[key] for key in ('database', 'ascet_process_epoch', 'oid'))
            round = {'oracle': verify_graph(fixture, raw['structure'], raw['public_before'])}
            result['rounds'].append(round)
            head, body, round['read_metric'] = call('bd_read', {'component': fixture['component'], 'view': 'interfaces', 'max_bytes': 4096})
            assert not round['read_metric'].get('is_error'), body
            sid = head['snapshot']
            snapshot = service.load_record(sid, 's_', 'snapshots')
            assert all(snapshot[key] == fixture[key] for key in ('database', 'ascet_process_epoch', 'oid'))
            assert snapshot['dirty_editors'] == [0, 0]
            verify_graph(fixture, snapshot['interfaces'], raw['public_after'])
            assert body == snapshot['logic'] and head['editable_refs'] is False
            delivered = decode(body)
            assert sum(r['kind'] == 'node' for r in delivered) == 9
            assert sum(r['kind'] == 'pin' for r in delivered) == 13
            assert sum(r['multiplicity'] for r in delivered if r['kind'] == 'edge') == 6
            round['snapshot'] = sid
            round['compact_body_bytes'] = len(body.encode())
            round['detailed_body_bytes'] = len(service.dump(list(service.entities(snapshot).values())).encode())
            _, path_body, round['path_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'signal_path', 'targets': [source, target], 'max_bytes': 2048})
            path = json.loads(path_body)
            assert path['status'] == 'observed_static_path' and len(path['segments']) == 9
            assert [r['kind'] for r in path['segments']] == ['diagram_connection', 'hierarchy_boundary'] * 4 + ['diagram_connection']
            expected_edges = Counter((e['scope'], e['source'], e['target'], e['type']) for e in raw['public_after']['edges'])
            by_ref = {pin_ref(p): p for p in fixture['public_graph']['pins']}
            for segment in path['segments']:
                if segment['kind'] == 'diagram_connection':
                    first, second = by_ref[segment['source']], by_ref[segment['target']]
                    assert first['scope'] == second['scope']
                    key = (first['scope'], first['id'], second['id'], segment['native_type'])
                    assert expected_edges[key] > 0
                    expected_edges[key] -= 1
            assert sum(expected_edges.values()) == 1
            assert path['coverage']['class_body_dataflow'] == 'not_collected' and path['coverage']['runtime_delivery'] == 'not_verified'
            assert round['path_metric']['request_wire']['frames'] == round['path_metric']['connections'] == 0
            _, binding_body, round['binding_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'interface_binding', 'targets': [expected_pairs[0][0], expected_pairs[0][1]]})
            binding = json.loads(binding_body)
            assert len(binding['results']) == 2 and all(len(r['bindings']) == 1 for r in binding['results'])
            assert round['binding_metric']['connections'] == 0
            _, find_body, round['find_metric'] = call('bd_find', {'snapshot': sid, 'kind': 'node', 'query': 'Stage'})
            found = [json.loads(line) for line in find_body.splitlines()]
            assert len(found) == 2 and len({r['ref'] for r in found}) == 2
            assert round['find_metric']['connections'] == 0
            negatives = []
            for negative_tool, negative_args, expected_code in (
                ('bd_inspect', {'snapshot': sid, 'query': 'signal_path', 'targets': [target, source]}, 'INVALID_INPUT'),
                ('bd_inspect', {'snapshot': sid, 'query': 'signal_path', 'targets': [source, 'Main/h999/n1.p2']}, 'INVALID_INPUT'),
                ('bd_inspect', {'snapshot': sid, 'query': 'signal_path', 'targets': [source]}, 'INVALID_INPUT'),
                ('bd_edit', {'snapshot': sid, 'request_id': f'read-only-ref-{index}', 'operations': [
                    {'op': 'connect_data', 'source': source, 'target': target}]}, 'INVALID_INPUT'),
            ):
                _, error_body, metric = call(negative_tool, negative_args)
                error_value = json.loads(error_body)
                assert metric.get('is_error') and error_value.get('code', error_value.get('error')) == expected_code, error_body
                assert metric['connections'] == metric['request_wire']['frames'] == 0
                negatives.append({'tool': negative_tool, 'code': expected_code, 'metric': metric})
            round['negative_cases'] = negatives
            if previous:
                _, diff_body, round['diff_metric'] = call('bd_diff', {'before': previous, 'after': sid})
                assert diff_body == 'No differences in collected fields.'
                assert round['diff_metric']['connections'] == 0
            round['passed'] = True
            previous = sid
            save()
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        assert not result['source_changes_during_run']
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({key: result[key] for key in ('passed', 'scope', 'fixture', 'error') if key in result}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
