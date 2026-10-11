"""Real Doge Project reads, public common-field oracle and zero-frame followups."""
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
from bd_interface_document import decode
from bd_project_messages import compare_project


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--project', required=True)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, default=3, choices=range(1, 4))
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    files = [service.ROOT / 'scripts' / name for name in ('bd_service.py', 'bd_project_tools.py',
        'bd_project_messages.py', 'bd_interface_document.py', 'bd_read_contract.py', 'bde_read_contract_cases.json',
        'bde_project_messages.st', 'bde_database_identity.st', 'AscetStructureRead.cs', 'AscetProjectMessagesRead.cs',
        'bde_project_message_experiment.py', 'bde_project_tool_experiment.py', 'bde_tool_client.py', 'bde_experiments.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'project': args.project, 'rounds': [], 'calls': [],
        'business_writes': False, 'setter_called': False,
        'scope': 'all Module messages, native declaration lookup and bounded Module/Class alias chains; no complete instance transport',
        'not_verified': ['database session and graph reload', 'instance descendants beyond depth or recursion stops',
            'independent compatibility candidate oracle', 'runtime delivery', 'Undo and callback state'],
        'metric_note': 'fresh Bun/Python and proxy lifecycle included; complete pagination; public oracle timed separately; three sequential rounds are not P95',
        'source_manifest': {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files}}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'project-eval-' + args.output.name, record)
    client.env['ASCET_BD_STRUCTURAL_WRITES'] = '0'
    client.env['ASCET_BD_SANDBOX_WRITES'] = '0'

    def call(tool, arguments, expect_error=False):
        start = time.perf_counter()
        begin = len(result['calls'])
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, error = client.call(tool, arguments)
        metric = {'elapsed_ms': (time.perf_counter() - start) * 1000,
            'tool_call_ms': sum(row['elapsed_ms'] for row in result['calls'][begin:]),
            'request_wire': traffic['request'].result(), 'response_wire': traffic['response'].result(),
            'connections': traffic['connections'], 'proxy_errors': traffic['errors'], 'body_bytes': len(body.encode()),
            'pages': len(result['calls']) - begin}
        assert error == expect_error and not metric['proxy_errors'], body
        return head, body, metric

    try:
        save()
        previous = None
        for index in range(args.repeats):
            oracle_output = args.output / f'public-{index + 1}'
            process = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_project_message_experiment.py'),
                '--project', args.project, '--messages', 'all', '--output', str(oracle_output)],
                capture_output=True, timeout=180)
            (args.output / f'oracle-{index + 1}.stdout.log').write_bytes(process.stdout)
            (args.output / f'oracle-{index + 1}.stderr.log').write_bytes(process.stderr)
            assert process.returncode == 0, process.stdout.decode(errors='replace')
            raw = json.loads((oracle_output / 'probe.json').read_text(encoding='utf-8'))
            round = {}
            result['rounds'].append(round)
            head, body, round['read_metric'] = call('bd_read', {'component': args.project, 'view': 'project_messages', 'max_bytes': 12288})
            sid = head['snapshot']
            snapshot = service.load_record(sid, 's_', 'snapshots')
            assert all(snapshot[key] == raw[other] for key, other in
                [('database', 'database'), ('oid', 'project_oid'), ('ascet_process_epoch', 'ascet_process_epoch')])
            assert snapshot['database_session_identity'] == raw['database_session']
            assert snapshot['database_identity_basis'] == raw['database_identity_basis']
            assert snapshot['logic'] == body
            assert snapshot['dirty_editors'] == [raw['dirty_before'], raw['dirty_after']]
            assert head['editable_refs'] is False
            round['public_common_fields'] = compare_project(snapshot['project_messages'], raw['public_after'])
            assert round['public_common_fields']['passed']
            rows = decode(body)
            entries = service.entities(snapshot)
            assert len(rows) == len(entries)
            assert {row['ref'] for row in rows} == set(entries)
            for row in rows:
                assert all(entries[row['ref']]['fields'][key] == item for key, item in row.items()
                           if key not in ('ref', 'kind', 'name'))
                for key in ('candidate_refs', 'label_candidate_refs', 'import_instance_refs', 'owner_instances'):
                    assert all(ref in entries for ref in row.get(key, []))
                if row.get('native_selected_ref') is not None:
                    assert row['native_selected_ref'] in entries
                assert all(ref in entries for refs in row.get('candidate_instance_refs', []) for ref in refs)
            round['same_fields_jsonl_bytes'] = len('\n'.join(service.dump(row) for row in rows).encode())
            round['counts'] = snapshot['counts']
            round['instance_count'] = len(snapshot['project_messages']['instances'])
            round['instance_expansion_counts'] = dict(__import__('collections').Counter(row['expansion'] for row in snapshot['project_messages']['instances']))
            round['binding_status_counts'] = snapshot['message_bindings']['counts']
            round['snapshot'] = sid
            _, found, round['find_metric'] = call('bd_find', {'snapshot': sid, 'query': 'TargetStateAEB', 'kind': 'message'})
            assert round['find_metric']['request_wire']['frames'] == round['find_metric']['connections'] == 0
            round['matches'] = [] if found == 'No matches.' else [json.loads(row) for row in found.splitlines()]
            binding_refs = [ref for ref in entries if ref.startswith('message_binding:')][:3]
            if binding_refs:
                _, body, round['binding_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'interface_binding', 'targets': binding_refs})
                observed = json.loads(body)
                assert [row['fields'] for row in observed['results']] == [entries[ref]['fields'] for ref in binding_refs]
                assert round['binding_metric']['request_wire']['frames'] == round['binding_metric']['connections'] == 0
            _, checks, round['checks_metric'] = call('bd_inspect', {'snapshot': sid, 'query': 'checks'})
            assert json.loads(checks)['binding_status_counts'] == snapshot['message_bindings']['counts']
            assert round['checks_metric']['request_wire']['frames'] == round['checks_metric']['connections'] == 0
            if previous:
                _, diff, round['diff_metric'] = call('bd_diff', {'before': previous, 'after': sid})
                assert diff == 'No differences in collected fields.'
                assert round['diff_metric']['request_wire']['frames'] == round['diff_metric']['connections'] == 0
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
    print(json.dumps({key: result[key] for key in ('passed', 'project', 'scope', 'error') if key in result}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
