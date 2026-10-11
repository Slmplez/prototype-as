"""Native edit/journal integration experiment on the existing isolated fixture.

Never operates on the AEB business component. Each invocation needs a fresh
output directory. A failed/unknown write is not silently replayed.
"""
from contextlib import nullcontext
from datetime import datetime, timezone
import argparse
import json
import os
from pathlib import Path
import time

import bd_service
import bde_experiments as bench
from bd_edit_journal import EditJournal
from bd_native_literal import NativeLiteralAdapter, compile_bridge


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    if any(args.output.iterdir()):
        raise ValueError('Use an empty output directory; inspect partial logs before retrying')
    fixture = json.loads((bench.ROOT / 'analysis/bde-experiments/2026-09-29/edit-09/result.json').read_text(encoding='utf-8'))
    component = fixture['component']
    if not component.startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Invalid sandbox fixture')
    report = {'started_utc': datetime.now(timezone.utc).isoformat(), 'component': component, 'oid': fixture['oid'], 'steps': []}
    def save():
        (args.output / 'result.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')
    def record(label, value):
        report['steps'].append({'label': label, 'result': value})
        save()
    save()
    compile_bridge()
    journal = EditJournal(args.output / 'edits')
    bd_service.STORE.mkdir(parents=True, exist_ok=True)
    try:
        with bd_service.live_lock():
            before_path = args.output / 'before.json'
            metric, before = bench.run([str(bench.ROOT / 'analysis/live-api/AscetScopedProbe.exe'), component,
                str(before_path.resolve()), 'public', 'all', 'layout'], before_path, 20)
            record('independent_before', metric)
            if metric['error'] or before.get('oid') != fixture['oid']:
                raise ValueError('Sandbox baseline unavailable or changed identity')
            nodes = {n['id']: n for n in before['graph']['nodes']}
            expected = {3: fixture['final_target'], 1: fixture['final_unrelated']}
            if set(nodes) != set(expected) or before['graph']['edges']:
                raise ValueError('Fixture topology changed; no writes')
            for ref, fields in expected.items():
                if any(nodes[ref][key] != fields[key] for key in ('literal', 'position', 'size')):
                    raise ValueError('Fixture fields changed; no writes')
            domain = {'session': args.output.name, 'database': before['database'], 'oid': before['oid'], 'process_epoch': before['ascet_process_epoch']}
            def request(request_id, target, old, value):
                return {'domain': domain, 'request_id': request_id, 'target': target, 'expect': {'literal': old}, 'value': value}
            def apply(adapter, label, req):
                started = time.perf_counter()
                receipt = journal.execute_literal(req, adapter, nullcontext)
                record(label, {'receipt': receipt, 'elapsed_ms': round((time.perf_counter() - started)*1000, 3)})
                return receipt
            started = time.perf_counter()
            with bench.proxy() as traffic:
                environment = dict(os.environ, ASCET_BD_PROBE_PORT=str(traffic['port']))
                with NativeLiteralAdapter(component, environment=environment) as adapter:
                    long_req = request('long', 'Main/n3', '0.0', '123456789012345.125')
                    changed = apply(adapter, 'long_literal', long_req)
                    if changed['status'] != 'verified_local':
                        raise ValueError('Long literal did not verify; inspect journal')
                    commands = len(adapter.commands)
                    replay = apply(adapter, 'replay_same_request', long_req)
                    if replay != changed or len(adapter.commands) != commands:
                        raise ValueError('Replay was not offline/idempotent')
                    unrelated = apply(adapter, 'unrelated_literal', request('unrelated', 'Main/n1', '2.0', '3.5'))
                    if unrelated['status'] != 'verified_local':
                        raise ValueError('Unrelated test edit failed')
                    conflict = apply(adapter, 'stale_precondition', request('stale', 'Main/n3', '0.0', '999.0'))
                    if conflict['status'] != 'conflict':
                        raise ValueError('Stale precondition not rejected')
                    restored = apply(adapter, 'revert_long', journal.prepare_literal_revert(changed['change_id'], 'revert-long'))
                    preserved = adapter.observe(domain, 'Main/n1')['fields']['literal'] == '3.5'
                    if restored['status'] != 'verified_local' or not preserved:
                        raise ValueError('Inverse failed or unrelated change lost')
                    restored_other = apply(adapter, 'restore_unrelated', journal.prepare_literal_revert(unrelated['change_id'], 'restore-unrelated'))
                    if restored_other['status'] != 'verified_local':
                        raise ValueError('Unrelated fixture restoration failed')
                    report['commands_first_session'] = list(adapter.commands)
                report['first_session_ms'] = round((time.perf_counter() - started)*1000, 3)
            record('first_session_transport', {'requests': traffic['request'].result(), 'responses': traffic['response'].result(), 'proxy_errors': traffic['errors']})

            # Inject lost delivery after a real, finalized native apply. This is
            # a deterministic transport-boundary failure, not an OS crash test.
            with NativeLiteralAdapter(component) as recovery_adapter:
                class LostReply:
                    def observe(self, d, t): return recovery_adapter.observe(d, t)
                    def apply_literal(self, d, t, v):
                        outcome = recovery_adapter.apply_literal(d, t, v)
                        if outcome.get('completed') is not True:
                            raise RuntimeError('Native apply failed before fault injection')
                        raise TimeoutError('Injected lost delivery after native apply/finalize')
                lost_request = request('lost-reply', 'Main/n3', '0.0', '7.25')
                unknown = apply(LostReply(), 'injected_lost_reply', lost_request)
                if unknown['status'] != 'outcome_unknown':
                    raise ValueError('Lost reply not recorded as unknown')
                count = len(recovery_adapter.commands)
                repeated = apply(recovery_adapter, 'unknown_request_replay', lost_request)
                if repeated['status'] != 'outcome_unknown' or count != len(recovery_adapter.commands):
                    raise ValueError('Unknown write was replayed')
                actual = recovery_adapter.observe(domain, 'Main/n3')
                record('unknown_actual_state', actual)
                if actual['fields']['literal'] != '7.25':
                    raise ValueError('Unknown result differs; no automatic recovery attempted')
                recovery = request('explicit-guarded-recovery', 'Main/n3', '7.25', '0.0')
                recovery['expect'] = actual['fields']
                recovered = apply(recovery_adapter, 'explicit_guarded_recovery', recovery)
                if recovered['status'] != 'verified_local':
                    raise ValueError('Explicit recovery failed')
                report['commands_recovery_session'] = list(recovery_adapter.commands)
            after_path = args.output / 'after.json'
            metric, after = bench.run([str(bench.ROOT / 'analysis/live-api/AscetScopedProbe.exe'), component,
                str(after_path.resolve()), 'public', 'all', 'layout'], after_path, 20)
            record('independent_after', metric)
            report['independent_fixture_restored'] = (not metric['error'] and before['oid'] == after['oid']
                and before['ascet_process_epoch'] == after['ascet_process_epoch'] and before['graph'] == after['graph'])
            report['status'] = 'passed' if report['independent_fixture_restored'] else 'failed_final_comparison'
            report['limitations'] = ['isolated unconnected literals only', 'no actual OS crash injection', 'GUI changes not atomic',
                'StoreToCache tested; database close/reopen not tested', 'no BDE diff display', 'no connections/deletion/state machine']
    except Exception as error:
        report['status'] = 'failed'
        report['error'] = str(error)
    report['finished_utc'] = datetime.now(timezone.utc).isoformat()
    save()
    print(json.dumps({'status': report['status'], 'report': str(args.output / 'result.json'), 'error': report.get('error')}))
    return 0 if report['status'] == 'passed' else 1


if __name__ == '__main__':
    raise SystemExit(main())
