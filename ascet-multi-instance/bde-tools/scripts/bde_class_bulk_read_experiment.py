"""Compare complete Class Tool.call reads against the unchanged public RPC oracle."""
import argparse
import json
import math
from pathlib import Path
import statistics
import time
import traceback

import bd_class_tools as tools
import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient, PersistentToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3, 30), default=3)
    parser.add_argument('--oracle-sampling', choices=('each_round', 'bookends'), default='each_round')
    parser.add_argument('--bulk-mode', choices=('default', 'bulk_public_v1'), default='default')
    parser.add_argument('--max-bytes', type=int, choices=(8192, 16384), default=8192)
    parser.add_argument('--doge-lifecycle', choices=('per_call', 'resident'), default='per_call')
    parser.add_argument('--query-cache', action='store_true', help='Opt-in fixed compiled-query cache; no model snapshot cache')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    result = {'passed': False, 'scope': 'real Doge Tool.call; complete collected Class owners; public RPC oracle vs in-process public getter batch',
        'model_setters_called': 0, 'outstanding_edit_resolved': False, 'atomic_observation': False,
        'full_delivery': False, 'rounds': [], 'tool_calls': [],
        'oracle_sampling': args.oracle_sampling, 'max_bytes': args.max_bytes,
        'doge_lifecycle': args.doge_lifecycle,
        'fixed_read_template_cache': args.query_cache,
        'timing_scope': 'request through complete output, including every Python/bridge process and all pages; Doge application startup separated only in resident mode',
        'not_collected': ['effective configuration', 'complete external types', 'runtime scheduling'],
        'source_manifest': {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes())
            for path in [*[service.ROOT / 'scripts' / name for name in (*tools.SOURCES, 'bd_class_tools.py',
                'bd_service.py', 'bd_windows_endpoint.py', 'bd_class_impact_tools.py', 'bde_class_interface_study.py',
                'bd_instance_pending.py', 'bde_class_bulk_read_experiment.py', 'bde_tool_client.py', 'bde_experiments.py')],
                service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts',
                *sorted((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))]}}
    client_type = PersistentToolClient if args.doge_lifecycle == 'resident' else ToolClient
    client = client_type(args.output, 'class-bulk-read-' + args.output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503', ASCET_BD_ENDPOINT_PORT='32503')
    client.env['ASCET_BD_CLASS_QUERY_CACHE'] = '1' if args.query_cache else '0'
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    before_log = log.read_bytes()
    baseline = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def observe(mode, index):
        nonlocal baseline
        row = {'round': index, 'mode': mode}
        result['rounds'].append(row)
        if mode == 'default':
            client.env.pop('ASCET_BD_CLASS_OBSERVATION_MODE', None)
        else:
            client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = mode
        save()
        start = time.perf_counter()
        call_index = len(result['tool_calls'])
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call('bd_read', {
                'component': args.component, 'view': 'class_interface', 'max_bytes': args.max_bytes})
        row.update(elapsed_ms=(time.perf_counter() - start) * 1000,
            tool_calls_elapsed_ms=sum(call['elapsed_ms'] for call in result['tool_calls'][call_index:]),
            tool_call_count=len(result['tool_calls']) - call_index,
            first_tool_call_ms=result['tool_calls'][call_index]['elapsed_ms'],
            request=wire['request'].result(), response=wire['response'].result(),
            proxy_errors=wire['errors'], is_error=error, response_manifest=head)
        save()
        if error or wire['errors'] or row['request']['frames'] is None or row['response']['frames'] is None:
            raise ValueError('Complete Class tool read or wire observation failed: ' + body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if record['logic'] != body or record['source'] != tools.SOURCE:
            raise ValueError('Complete paged body differs from immutable Class snapshot')
        observed = record['class_interface']
        if baseline is None:
            baseline = observed
        row.update(snapshot=record['snapshot'], body_utf8_bytes=len(body.encode('utf-8')),
            read_strategy=record['read_strategy'], read_phases_ms=record.get('read_phases_ms'),
            collected_observation_sha256=service.digest(observed),
            exact_complete_observation_match=observed == baseline,
            owners=len(observed['owners']), scopes=sum(len(owner['scopes']) for owner in observed['owners']))
        # Equality covers every public graph field and ordered array, all native
        # scope entries, signature/discovery and persisted configuration storage.
        if (not row['exact_complete_observation_match'] or record['dirty_editors'] != [0, 0] or
                head['capabilities']['edit'] or head['capabilities']['revert']):
            raise ValueError('Complete collected coverage, clean state or retained write hold differs')
        row['passed'] = True
        save()
        print(json.dumps({key: row[key] for key in ('round', 'mode', 'tool_calls_elapsed_ms', 'request', 'passed')}), flush=True)

    try:
        # Compile outside timed samples; both strategies use this exact binary.
        tools.build()
        if args.doge_lifecycle == 'resident':
            result['doge_application_startup'] = client.start()
            save()
        if args.oracle_sampling == 'bookends':
            observe('public_oracle', 'initial_purity_check')
            for index in range(args.repeats):
                observe(args.bulk_mode, index)
        else:
            for index in range(args.repeats):
                modes = ('public_oracle', args.bulk_mode) if index % 2 == 0 else (args.bulk_mode, 'public_oracle')
                for mode in modes:
                    observe(mode, index)
        observe('public_oracle', 'final_purity_check')
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if args.doge_lifecycle == 'resident':
            try:
                client.close()
                result['doge_eval_exit_code'] = client.process.returncode if client.process else None
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
                result['passed'] = False
    after_log = log.read_bytes()
    result['crash_log_append_only'] = after_log.startswith(before_log)
    appended = after_log[len(before_log):] if result['crash_log_append_only'] else after_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_manifest_unchanged'] = all(service.digest((service.ROOT / name).read_bytes()) == digest
        for name, digest in result['source_manifest'].items())
    result['no_class_edit_records'] = not any((service.STORE / 'class-edits').glob('*/intent.json'))
    result['passed'] = (result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0
        and result['source_manifest_unchanged'] and result['no_class_edit_records'])
    result['summary'] = {}
    for mode in ('public_oracle', args.bulk_mode):
        rows = [row for row in result['rounds'] if row['mode'] == mode and row.get('passed')]
        metrics = {}
        for key, values in (
                ('complete_tool_calls_ms', [row['tool_calls_elapsed_ms'] for row in rows]),
                ('first_tool_call_ms', [row['first_tool_call_ms'] for row in rows]),
                ('live_capture_ms', [row['read_phases_ms']['live_capture_total'] for row in rows])):
            if values:
                ordered = sorted(values)
                metrics[key] = {'min': ordered[0], 'median': statistics.median(values), 'max': ordered[-1],
                    'p95_nearest_rank': ordered[math.ceil(len(ordered) * .95) - 1] if len(ordered) >= 30 else None}
        result['summary'][mode] = {'samples': len(rows), 'metrics': metrics,
            'request_frames': sorted({row['request']['frames'] for row in rows}),
            'body_utf8_bytes': sorted({row['body_utf8_bytes'] for row in rows})}
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
