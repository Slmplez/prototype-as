"""Fixed terminal-only recovery and continuation of a known isolated failure.

No model setter/store/patch is replayed to certify the original unknown inverse.
Subsequent inverses are distinct formal Tool.call requests with actual journals.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed-trial', required=True, type=Path)
    parser.add_argument('--inverse-id', required=True)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--finish-partial-handoff', action='store_true',
        help='Finish only the observed Dictionary>>removeAll metadata failure after strict model reconciliation')
    args = parser.parse_args()
    prior, output = args.failed_trial.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned known failure and fresh output required')
    failure = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(failure['manifest']))
    domain, token = failure['domain'], failure['edit']['change_id']
    if epoch != domain['process_epoch'] or failure['passed'] is not False:
        raise ValueError('Current retained failure epoch required')
    service.STORE = prior / 'store'
    log = StructureJournal(service.STORE / 'edits')
    events = log.read(args.inverse_id)
    required_status = 'verified_local' if args.finish_partial_handoff else 'outcome_unknown'
    if (log.receipt(args.inverse_id, events)['status'] != required_status
            or events[0]['payload']['reverts'] != token):
        raise ValueError('Exact unknown original inverse required; do not replay confirmed operations')
    if args.finish_partial_handoff and (not any(e['kind'] == 'recovery_retention_failed'
            and 'Dictionary>>removeAll' in e['payload'].get('error', '') for e in events)
            or any(e['kind'] == 'recovery_retained' for e in events)):
        raise ValueError('Only the observed incomplete metadata handoff may finish')
    marker = pending_path(domain)
    if json.loads(marker.read_text(encoding='utf-8')) != {
            'domain': domain, 'command': 'retain_inverse' if args.finish_partial_handoff else 'revert',
            'native_token': token, 'automatic_retry': False}:
        raise ValueError('Another transaction owns the quarantine')
    output.mkdir(parents=True)
    candidate = source_manifest()
    for rel, digest in candidate.items():
        path = service.ROOT / rel
        if hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise ValueError('Candidate changed while sealing')
        destination = output / 'source' / rel
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(path, destination)
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1', ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1')
    calls = []
    result = {'passed': False, 'restored': False, 'complete_case_pass': False, 'full_delivery': False,
        'scope': 'Known initial literal inverse terminal certification and subsequent distinct actual head history',
        'original_failed_trial': str(prior), 'original_failed_verdict_preserved': True,
        'source_manifest': candidate, 'process_epoch': epoch, 'domain': domain,
        'native_token': token, 'inverse_change_id': args.inverse_id,
        'original_inverse_redispatched': False, 'terminal_recovery_model_setters': 0,
        'finish_partial_handoff': args.finish_partial_handoff,
        'terminal_recovery_store_called': False, 'witness_retained': True}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def native(label, function):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(failure['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                value = function(adapter)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    def witness(action, label):
        return native(label, lambda a: a._exchange({'cmd': 'main_readonly_witness',
            'action': action, 'token': failure['witness_capture']['token']}))

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
        calls.append(row)

    def tool(name, arguments):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls)
            _, body, error = client.call(name, arguments)
        save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error:
            raise ValueError('Formal tool rejected: ' + body)
        verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return json.loads(body)

    def observation(label):
        value = native(label, lambda a: {'native': a.observe(domain, []), 'public': a.observe_public(domain)})
        oracle = compare(value['native']['entries'], value['public'])
        if not oracle['passed']:
            raise ValueError('Independent public/native graph differs: ' + label)
        result.setdefault('public_oracles', {})[label] = oracle
        return value

    try:
        result['stage'] = 'terminal_certification'; save()
        terminal = native('terminal-proof', lambda a: a._exchange(
            {'cmd': 'field_local_handoff_finish', 'token': token, 'inverse_id': args.inverse_id}
            if args.finish_partial_handoff else {'cmd': 'field_local_terminal_recover',
                'token': token, 'witness_token': failure['witness_capture']['token']}))
        result['terminal'] = terminal; save()
        if (terminal['model_setters_called'] != 0 or terminal['store_called'] is not False
                or terminal['patch_execute_called'] is not False
                or not args.finish_partial_handoff
                and terminal['allocator_high_water_before'] != terminal['allocator_high_water_after']):
            raise ValueError('Terminal recovery executed a model operation or changed the generation allocator')
        result['witness_after_certification'] = witness('check', 'witness-after-certification')
        if not result['witness_after_certification']['unchanged']:
            raise ValueError('Complete original native/source/identity witness differs')
        result['stage'] = 'durable_reconciliation'; save()
        recovery = tool('bd_inspect', {'query': 'recovery', 'change_id': args.inverse_id, 'reconcile': True})
        result['recovery'] = recovery; save()
        if not recovery['reconciled'] or recovery['instance_quarantined']:
            raise ValueError('Unknown inverse was not reconciled from actual terminal evidence')
        receipt = log.receipt(args.inverse_id, log.read(args.inverse_id))
        if receipt['status'] != 'verified_local':
            raise ValueError('Reconciled inverse is not strictly verified')
        head = args.inverse_id
        expected_after = json.loads((prior / 'after.json').read_text(encoding='utf-8'))
        expected_before = json.loads((prior / 'before.json').read_text(encoding='utf-8'))
        for phase, expected in [('redo', expected_after), ('final_inverse', expected_before)]:
            result['stage'] = phase; save()
            request = {'change_id': head, 'request_id': output.name + '_' + phase}
            preview = tool('bd_revert', {**request, 'preview': True})
            if preview['status'] != 'preview':
                raise ValueError('Actual head local inverse preview failed')
            actual = tool('bd_revert', request)
            result[phase] = actual; save()
            if actual['status'] != 'verified_local':
                raise ValueError('Actual head inverse did not verify')
            head = actual['change_id']
            current = observation(phase + '-observation')
            if current['native'] != expected['native'] or current['public'] != expected['public']:
                raise ValueError('Complete actual graph differs at ' + phase)
            material = native(phase + '-material', lambda a: a._exchange({'cmd': 'field_material_inspect', 'token': token}))
            if material['local_inverse_head_id'] != head:
                raise ValueError('Retained actual head ownership differs')
            diff = tool('bd_diff', {'change_id': head})
            if diff != log.diff(head):
                raise ValueError('Actual local head journal diff differs')
        result['witness_final'] = witness('check', 'witness-final')
        if not result['witness_final']['unchanged']:
            raise ValueError('Complete original witness did not restore')
        result['witness_release'] = witness('release', 'witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['restored'] = not result['witness_retained']
        result['sources_match'] = candidate == source_manifest()
        result['passed'] = result['restored'] and result['sources_match']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        try:
            result['failed_witness_export'] = witness('export', 'witness-failed-export')
        except Exception as export_error:
            result['witness_export_error'] = str(export_error)
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'stage', 'tool_calls', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
