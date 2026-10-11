"""Real Doge Class caller inspection, complete pages and endpoint/fixture checks."""
import argparse
import json
import os
from pathlib import Path
import statistics
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_class_impact_tools import project_formal
from bde_class_interface_study import endpoint_process


def verify_fixture(raw, fixture):
    for key in ('oid', 'ascet_process_epoch'):
        assert raw[key] == fixture[key], key
    assert raw['database'].casefold() == fixture['database'].casefold(), 'database'
    assert raw['signature'] == fixture['class_interface'], 'Class signature/reference baseline changed'
    discovered = {c['oid']: c for c in raw['discovery']['callers']}
    assert set(discovered) == {c['oid'] for c in fixture['callers']}, 'Complete direct caller set differs'
    for expected in fixture['callers']:
        owner = discovered[expected['oid']]
        assert owner['component'].strip('\\') == expected['component'].strip('\\')
        assert owner['native_class'] == 'SGModule'
        occurrences = {(scope['diagram'], row['node']): row for scope in owner['scopes'] for row in scope['occurrences']}
        instances = {(row.get('diagram', 'Main'), row['node_id']): row for row in expected['instances']}
        assert set(occurrences) == set(instances), 'Caller occurrence coverage differs'
        tree = expected.get('public_tree', {'Main': expected['graph']})
        nodes = {(scope, row['id']): row for scope, graph in tree.items() for row in graph['nodes']}
        declarations = {row['ref']: row for row in owner['declarations']}
        assert len(declarations) == len(instances)
        for identity, occurrence in occurrences.items():
            assert occurrence['name'] == instances[identity]['name']
            assert declarations[occurrence['model_ref']]['name'] == occurrence['name']
            expected_pins = {pin['native']['id']: pin for pin in nodes[identity]['pins']}
            assert {pin['id'] for pin in occurrence['pins']} == set(expected_pins)
            for pin in occurrence['pins']:
                native = expected_pins[pin['id']]
                assert all(pin[key] == native[key] for key in ('name', 'input', 'output'))
                method = next(m for m in raw['signature']['methods'] if m['alias'] == pin['method_alias'])
                formals = method['arguments'] + ([method['return']] if method['return'] is not None else [])
                if pin['formal_alias'] == method['alias']:
                    assert method['return'] is None and not pin['input'] and not pin['output']
                else:
                    formal = next(f for f in formals if f['alias'] == pin['formal_alias'])
                    if formal['slot'] == 'argument':
                        assert formal['name'] == pin['name']
    assert len(raw['discovery']['excluded']) + len(discovered) == len(fixture['class_interface']['references'])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--selector', type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    service.STORE = args.output / 'store'
    sources = [service.ROOT / 'scripts' / name for name in ('bd_service.py', 'bd_read_contract.py',
        'bd_class_impact_tools.py', 'bd_class_selector.py', 'AscetClassImpactRead.cs', 'AscetStructureRead.cs',
        'bde_class_interface_probe.st', 'bde_class_callers.st', 'bde_database_identity.st',
        'bde_read_contract_cases.json', 'bde_class_impact_experiment.py', 'bde_experiments.py')]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    sources += [service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts']
    result = {'passed': False, 'business_writes': False, 'model_setters_called': 0, 'rounds': [], 'calls': [],
        'fixture': str(args.fixture), 'fixture_sha256': service.digest(args.fixture.read_bytes()),
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        'scope': 'direct persisted caller bindings and Class signature only; not full caller dataflow/layout',
        'not_verified': ['transitive callers', 'runtime delivery', 'Class edit/journal/revert'],
        'metric_note': 'Tool.call includes fresh Bun/Python and complete 2048-byte pages; proxy lifecycle reported separately; three rounds do not establish P95'}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def call(arguments):
        with bench.proxy() as wire:
            env = dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']),
                ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503', ASCET_BD_STRUCTURAL_WRITES='0',
                ASCET_BD_SANDBOX_WRITES='0', ASCET_BD_STORE=str(service.STORE.resolve()), ASCET_BD_PYTHON=sys.executable)
            start = time.perf_counter()
            process = subprocess.run([str(Path.home() / '.bun/bin/bun.exe'), 'run', 'scripts/bde-tool-call-eval.ts'],
                cwd=service.ROOT / 'Doge', env=env, capture_output=True, text=True, encoding='utf-8', timeout=40,
                input=json.dumps({'tool': 'bd_inspect', 'args': arguments, 'session': 'class-impact-' + args.output.name}))
            elapsed = (time.perf_counter() - start) * 1000
        record = {'args': arguments, 'elapsed_ms': elapsed, 'exit_code': process.returncode,
            'stderr': process.stderr, 'request': wire['request'].result(), 'response': wire['response'].result(),
            'connections': wire['connections'], 'proxy_errors': wire['errors']}
        result['calls'].append(record)
        save()
        assert process.returncode == 0 and not wire['errors'], record
        response = json.loads(process.stdout)
        record['result'] = response
        record['content_bytes'] = len(response['content'].encode())
        save()
        return response, record

    try:
        save()
        baseline = None
        for index in range(args.repeats):
            endpoint_pid = endpoint_process()
            selection = json.loads(args.selector.read_text(encoding='utf-8')) if args.selector else None
            page, metric = call({'query': 'class_callers', 'component': fixture['component'], 'max_bytes': 2048,
                                 **({'selector': selection} if selection else {})})
            first = len(result['calls']) - 1
            document = ''
            while True:
                assert not page['is_error'], page
                assert metric['content_bytes'] <= 2048
                header, part = page['content'].split('\n\n', 1)
                header = json.loads(header)
                assert header['query'] == 'class_callers' and header['editable_refs'] is False
                document += part
                if not header['page']['has_more']:
                    break
                assert len(result['calls']) - first < 40
                page, metric = call({'cursor': header['page']['next_cursor']})
                assert metric['request']['frames'] == metric['response']['frames'] == metric['connections'] == 0, 'Cursor unexpectedly reads live ASCET'
            raw = json.loads(document)
            # Projection never reduces the native discovery oracle's coverage.
            evidence = json.loads(Path(raw['raw_result']).read_text(encoding='utf-8'))
            verify_fixture(evidence, fixture)
            if selection:
                assert raw['selected_formal'] == project_formal(evidence, selection)
                assert 'signature' not in raw and 'discovery' not in raw
            assert endpoint_process() == endpoint_pid
            raw_path = Path(raw['raw_result'])
            assert raw['raw_sha256'] == service.digest(raw_path.read_bytes())
            native = json.loads(raw_path.read_text(encoding='utf-8'))
            assert native['dirty_before'] == native['dirty_after'] == native['model_setters_called'] == 0
            stable = {key: evidence[key] for key in ('component', 'oid', 'database', 'ascet_process_epoch', 'database_session', 'signature', 'discovery')}
            if baseline is not None:
                assert stable == baseline
            baseline = stable
            records = result['calls'][first:]
            result['rounds'].append({'index': index, 'passed': True, 'pages': len(records), 'body_bytes': len(document.encode()),
                'native_elapsed_ms': raw['elapsed_ms'], 'tool_call_ms': sum(c['elapsed_ms'] for c in records),
                'request_frames': sum(c['request']['frames'] for c in records), 'response_bytes': sum(c['response']['bytes'] for c in records),
                'callers': len(evidence['discovery']['callers']), 'occurrences': sum(len(s['occurrences']) for c in evidence['discovery']['callers'] for s in c['scopes']),
                'pins': sum(len(o['pins']) for c in evidence['discovery']['callers'] for s in c['scopes'] for o in s['occurrences']),
                'projection': 'selected_formal' if selection else 'complete_bounded_discovery',
                'selected_pins': len(raw['selected_formal']['caller_pin_targets']) if selection else None,
                'raw_result': str(raw_path), 'raw_sha256': raw['raw_sha256']})
            save()
        # Correctly reject Module target, without choosing a different ASCET instance.
        page, metric = call({'query': 'class_callers', 'component': fixture['callers'][0]['component']})
        assert page['is_error'] is True
        failure = json.loads(page['content'])
        assert 'raw_result' in failure
        diagnostic = json.loads(Path(failure['raw_result']).read_text(encoding='utf-8'))
        assert 'Class target required' in diagnostic['error'] and diagnostic['ascet_process_epoch'] == fixture['ascet_process_epoch']
        result['wrong_kind_refused'] = True
        if selection:
            wrong_slot = {**selection, 'slot': 'return' if selection['slot'] == 'argument' else 'argument'}
            page, metric = call({'query': 'class_callers', 'component': fixture['component'], 'selector': wrong_slot})
            assert page['is_error'] is True
            failure = json.loads(page['content'])
            assert failure['code'] == 'TARGET_NOT_FOUND'
            rejected = json.loads(Path(failure['raw_result']).read_text(encoding='utf-8'))
            assert rejected['model_setters_called'] == rejected['dirty_before'] == rejected['dirty_after'] == 0
            verify_fixture(rejected, fixture)
            result['wrong_formal_slot_refused'] = True
        result['median_native_ms'] = statistics.median(r['native_elapsed_ms'] for r in result['rounds'])
        result['median_complete_tool_call_ms'] = statistics.median(r['tool_call_ms'] for r in result['rounds'])
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    result['source_changes_during_run'] = [str(p.relative_to(service.ROOT)) for p in sources
        if service.digest(p.read_bytes()) != result['source_manifest'][str(p.relative_to(service.ROOT))]]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'median_native_ms', 'median_complete_tool_call_ms')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
