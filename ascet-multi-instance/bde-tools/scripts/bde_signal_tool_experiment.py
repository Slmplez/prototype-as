"""Verify actual Doge interface reads against a fresh public common projection."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_signal_interfaces import compare_public
from bd_interface_document import decode


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, default=3, choices=range(1, 4))
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    files = [service.ROOT / 'scripts' / name for name in ('bd_service.py', 'bd_signal_tools.py',
        'bd_signal_interfaces.py', 'bd_read_contract.py', 'bde_read_contract_cases.json',
        'bde_signal_interfaces.st', 'bde_database_identity.st', 'AscetStructureRead.cs', 'AscetSignalInterfaceRead.cs',
        'bde_signal_interface_experiment.py', 'bde_tool_client.py', 'bde_experiments.py', 'bde_signal_tool_experiment.py', 'bd_interface_document.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'component': args.component, 'rounds': [], 'calls': [],
        'source_manifest': {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files},
        'business_writes': False, 'model_setters_called': False,
        'scope': 'read-only interface Tool.call, full pagination and fresh public common fields; not full logic',
        'not_verified': ['independent method/formal alias oracle', 'Project message bindings', 'Class body dataflow',
            'edit/delete/revert across resources', 'database session and graph reload identity', 'Undo/callback contents']}
    result['metric_note'] = 'elapsed_ms includes proxy lifecycle and fresh Bun/Python processes; tool_call_ms sums actual Tool.call page roundtrips; three rounds are not a P95 benchmark'

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'interface-tool-eval-' + args.output.name, record)

    def call(tool, arguments):
        start = time.perf_counter()
        start_call = len(result['calls'])
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, error = client.call(tool, arguments)
        metric = {'elapsed_ms': (time.perf_counter() - start) * 1000, 'request_wire': traffic['request'].result(),
                  'tool_call_ms': sum(row['elapsed_ms'] for row in result['calls'][start_call:]),
                  'response_wire': traffic['response'].result(), 'connections': traffic['connections'],
                  'proxy_errors': traffic['errors'], 'body_bytes': len(body.encode())}
        assert not error and not metric['proxy_errors'] and metric['request_wire']['frames'] is not None, body
        return head, body, metric

    try:
        save()
        previous = None
        for index in range(args.repeats):
            oracle_output = args.output / f'public-{index + 1}'
            process = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_signal_interface_experiment.py'),
                '--component', args.component, '--public-oracle', '--output', str(oracle_output)],
                capture_output=True, timeout=90)
            (args.output / f'oracle-{index + 1}.stdout.log').write_bytes(process.stdout)
            (args.output / f'oracle-{index + 1}.stderr.log').write_bytes(process.stderr)
            assert process.returncode == 0, process.stdout.decode(errors='replace')
            raw = json.loads((oracle_output / 'probe.json').read_text(encoding='utf-8'))
            round = {}
            result['rounds'].append(round)
            head, body, round['read_metric'] = call('bd_read', {'component': args.component, 'view': 'interfaces', 'max_bytes': 12288})
            sid = head['snapshot']
            snapshot = service.load_record(sid, 's_', 'snapshots')
            assert all(snapshot[key] == raw[key] for key in ('database', 'ascet_process_epoch', 'oid'))
            assert snapshot['database_session_identity'] == raw['database_session']
            assert snapshot['database_identity_basis'] == raw['database_identity_basis']
            assert snapshot['dirty_editors'] == [raw['dirty_before'], raw['dirty_after']]
            round['public_projection'] = compare_public(snapshot['interfaces'], raw['public_after'])
            assert round['public_projection']['passed']
            assert snapshot['logic'] == body and head['editable_refs'] is False
            delivered = decode(body)
            jsonl_size = len('\n'.join(service.dump(row) for row in delivered).encode())
            round['same_fields_jsonl_bytes'] = jsonl_size
            for kind, key in [('node', 'nodes'), ('pin', 'pins')]:
                assert sum(row['kind'] == kind for row in delivered) == len(raw['public_after'][key])
            assert sum(row['multiplicity'] for row in delivered if row['kind'] == 'edge') == len(raw['public_after']['edges'])
            by_ref = service.entities(snapshot)
            aliases = {row['fields'].get('alias'): row['ref'] for row in by_ref.values()
                       if row['kind'] in ('model', 'message', 'interface') and 'alias' in row['fields']}
            for row in delivered:
                if row['kind'] == 'node' and 'model_ref' in row:
                    assert row['model_ref'] == aliases[by_ref[row['ref']]['fields']['model_alias']]
                if row['kind'] == 'interface' and 'formal_ref' in row:
                    assert row['formal_ref'] in by_ref
            round['counts'] = snapshot['counts']
            round['document_format'] = head['document_format']
            round['class_bindings'] = {k: v for k, v in snapshot['interface_bindings']['classes'].items() if k != 'bindings'}
            round['snapshot'] = sid
            round['detailed_body_bytes'] = len(service.dump(list(service.entities(snapshot).values())).encode())
            classes = snapshot['interface_bindings']['classes']['bindings']
            selected = next((row for row in classes if row['status'] == 'matched_native_aliases'), None)
            if selected:
                pin = f"{selected['scope']}/n{selected['instance_node_id']}.p{selected['pin_id']}"
                _, binding_body, round['binding_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'interface_binding', 'targets': [pin]})
                binding = json.loads(binding_body)
                assert binding['results'][0]['bindings'] == [selected]
                assert binding['results'][0]['status'] == 'collected'
                assert selected['body_dataflow'] == 'not_collected'
                assert round['binding_metric']['connections'] == round['binding_metric']['request_wire']['frames'] == 0
            declarations = [row for row in delivered if row['kind'] == 'message']
            if declarations:
                _, message_body, round['message_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'interface_binding', 'targets': [declarations[0]['ref']]})
                message = json.loads(message_body)['results'][0]
                expected = next(row for row in raw['public_after']['models'] if row['alias'] == message['declaration']['alias'])
                assert all(message['declaration'][key] == value for key, value in expected.items())
                assert message['project_binding'] == 'not_collected'
                assert round['message_metric']['connections'] == 0
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
    print(json.dumps({key: result[key] for key in ('passed', 'scope', 'component', 'error') if key in result}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
