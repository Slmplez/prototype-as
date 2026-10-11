"""Fresh ordinary semantic Tool.call delivery with independent public bookends.

Only reads. Public oracle processes include application startup; steady resident
Doge samples report startup separately. Do not claim a direct lifecycle speedup.
"""
import argparse
import json
import math
from pathlib import Path
import statistics
import traceback

import bd_service as service
import bde_experiments as bench
from bde_full_read_experiment import verify
from bde_tool_client import ToolClient, PersistentToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', default=bench.COMPONENT)
    parser.add_argument('--repeats', type=int, choices=(1, 3, 30), default=30)
    parser.add_argument('--max-bytes', type=int, choices=(8192, 16384), default=16384)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    files = [path for path in (service.ROOT / 'scripts').iterdir()
             if path.suffix in ('.py', '.st', '.cs')]
    files += [service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts',
              *sorted((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))]
    result = {'passed': False, 'component': args.component, 'rounds': [], 'tool_calls': [],
        'scope': 'current-state ordinary declared semantic profile; full collected fields and ordered arrays',
        'atomic_observation': False, 'full_delivery': False, 'model_write_requests': 0,
        'max_bytes': args.max_bytes, 'summary': {},
        'timing_scope': 'steady real Doge Tool.calls including fresh Python/native helpers, publication and all pages; application startup separate',
        'oracle_timing_scope': 'public getter Tool.calls in per-call Doge processes; not a same-lifecycle speedup comparison',
        'source_manifest': {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files}}
    session = 'semantic-delivery-' + args.output.name
    oracle = ToolClient(args.output, session, result['tool_calls'].append)
    resident = PersistentToolClient(args.output, session, result['tool_calls'].append)
    for client in (oracle, resident):
        client.env.update(ASCET_BD_STRUCTURAL_WRITES='0', ASCET_BD_CLASS_WRITES='0',
                          ASCET_BD_NATIVE_PRESENTATION='0', ASCET_BD_NATIVE_WRITES='0')
    oracle.env['ASCET_BD_BULK_FULL'] = '0'
    resident.env['ASCET_BD_BULK_FULL'] = '1'
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    before_log = log.read_bytes()
    baseline = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def observe(client, mode, index):
        nonlocal baseline
        row = {'mode': mode, 'round': index, 'passed': False}
        result['rounds'].append(row)
        first_index = len(result['tool_calls'])
        save()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call('bd_read', {
                'component': args.component, 'view': 'logic', 'max_bytes': args.max_bytes})
        calls = result['tool_calls'][first_index:]
        row.update(is_error=error, first_tool_call_ms=calls[0]['elapsed_ms'],
            complete_tool_calls_ms=sum(call['elapsed_ms'] for call in calls),
            tool_call_count=len(calls), request=wire['request'].result(),
            response=wire['response'].result(), proxy_errors=wire['errors'],
            cebra_connections=wire['connections'], response_manifest=head,
            body_utf8_bytes=len(body.encode('utf-8')))
        save()
        if error or wire['errors'] or any(row[key]['frames'] is None for key in ('request', 'response')):
            raise ValueError('Complete Tool.call or wire capture failed: ' + body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        raw = json.loads((service.STORE / 'raw' / (head['snapshot'] + '.json')).read_text(encoding='utf-8'))
        if baseline is None:
            baseline = raw
        row.update(snapshot=head['snapshot'], read_strategy=record['read_strategy'],
                   verification=verify(baseline, raw))
        if record['logic'] != body or record['read_strategy'] != (
                'field_getters' if mode == 'public_oracle' else 'full_native_bulk'):
            raise ValueError('Complete immutable document or actual read strategy differs')
        row['passed'] = True
        save()
        print(json.dumps({key: row[key] for key in ('mode', 'round', 'complete_tool_calls_ms', 'request', 'passed')}), flush=True)

    try:
        service.ensure_probe()
        observe(oracle, 'public_oracle', 'initial')
        result['doge_application_startup'] = resident.start()
        save()
        for index in range(args.repeats):
            observe(resident, 'resident_bulk', index)
        observe(oracle, 'public_oracle', 'final')
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        try:
            resident.close()
            result['doge_eval_exit_code'] = resident.process.returncode if resident.process else None
        except Exception:
            result['cleanup_error'] = traceback.format_exc()
            result['passed'] = False
    after_log = log.read_bytes()
    result['crash_log_append_only'] = after_log.startswith(before_log)
    appended = after_log[len(before_log):] if result['crash_log_append_only'] else after_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_manifest_unchanged'] = all(service.digest((service.ROOT / name).read_bytes()) == sha
        for name, sha in result['source_manifest'].items())
    result['no_edit_intents'] = not any(service.STORE.rglob('intent.json'))
    result['passed'] = (result['passed'] and result['crash_log_append_only'] and
        not result['new_assertion_count'] and result['source_manifest_unchanged'] and result['no_edit_intents'])
    for mode in ('public_oracle', 'resident_bulk'):
        attempts = [row for row in result['rounds'] if row['mode'] == mode]
        rows = [row for row in attempts if row['passed']]
        metrics = {}
        for key in ('first_tool_call_ms', 'complete_tool_calls_ms'):
            values = sorted(row[key] for row in rows)
            if values:
                metrics[key] = {'median': statistics.median(values), 'min': values[0], 'max': values[-1],
                    'p95_nearest_rank': values[math.ceil(len(values) * .95) - 1]
                        if len(values) >= 30 and len(rows) == len(attempts) else None}
        result['summary'][mode] = {'attempts': len(attempts), 'passed': len(rows), 'metrics': metrics,
            'request_frames': sorted({row['request']['frames'] for row in rows}),
            'body_utf8_bytes': sorted({row['body_utf8_bytes'] for row in rows})}
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
