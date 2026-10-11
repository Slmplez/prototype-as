"""Restore a failed pre-dispatch local-connect trial using its original formal histories.

No local plan is executed, no unconfirmed edit is replayed, and failed verdicts
stay immutable. B is inverted/released first, then exact A and the full witness.
"""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_connect_journal import context
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--trial', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--after-local-history', action='store_true', help='Clean B after three confirmed A local histories and a B inverse rejected before dispatch')
    args = parser.parse_args()
    trial, output = args.trial.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not trial.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Existing owned failed trial and fresh output required')
    old = json.loads((trial / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    domain = old['domain']; token = old['native_token']; b = old.get('independent_b', {}).get('change_id')
    history_ok = (len(old.get('histories', [])) == 3 and old.get('local_connect_executor_dispatched') is True
                  and all(h['actual']['status'] == 'verified_local' for h in old['histories']))
    phase_ok = history_ok if args.after_local_history else (not old.get('histories')
                  and old.get('local_connect_executor_dispatched') is False)
    if (old['process_epoch'] != epoch or old.get('passed') is True or not phase_ok or old['forward']['status'] != 'applied_observed'
            or (b is not None and old['independent_b']['status'] != 'applied_observed')):
        raise ValueError('Only a confirmed same-epoch forward A+B before local dispatch is supported')
    pending.check(domain)
    service.STORE = trial / 'store'
    from bd_structure_journal import StructureJournal
    log = StructureJournal(service.STORE / 'edits')
    head = old['histories'][-1]['actual']['change_id'] if args.after_local_history else token
    if context(log, head)['state'] != ('reverted' if args.after_local_history else 'applied'):
        raise ValueError('Original A formal material state differs')
    if args.after_local_history:
        failed_id = 'edit_' + fingerprint(dict(domain=domain, request_id=trial.name + '-independent-b-inverse'))
        failed = log.read(failed_id)
        failed_receipt = log.receipt(failed_id, failed)
        if (b is None or failed_receipt.get('status') != 'rejected' or failed_receipt.get('setter_called') is not False
                or any(e['kind'] in ('started', 'observed') for e in failed)):
            raise ValueError('Only a proved zero-dispatch B failure can use a distinct cleanup request')
    output.mkdir(parents=True)
    result = dict(passed=False, original_failed_trial=str(trial), source_manifest=source_manifest(),
        process_epoch=epoch, domain=domain, pid=process['pid'], port=manifest['port'],
        business_model_calls=0, automatic_retry=False, local_connect_executor_dispatched=False,
        complete_case_pass=False, full_delivery=False)
    result['after_local_history'] = args.after_local_history
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
        ASCET_BD_CONNECT_HISTORY='native_source_exact_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
        ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1', ASCET_BD_SOURCE_IDENTITY_NORMALIZATION='identity_v1')
    if args.after_local_history:
        env.update(ASCET_BD_CONNECT_HISTORY='native_source_local_v1', ASCET_BD_FIELD_SOURCE_PROJECTION='active_v1')
    binary = build_oracle(output) if args.after_local_history else trial / 'AscetMainWorkflowOracle.exe'
    def check():
        if live_manifest(old['manifest']) != (manifest, process, epoch):
            raise ValueError('Original runtime changed; no rebind or replay')
    def tool(label, name, arguments):
        check()
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(trial, domain['session'], lambda row: save_new(output / 'calls' / (label + '.json'), row))
            client.env.update(env, ASCET_BD_PROBE_PORT=str(wire['port']))
            meta, body, error = client.call(name, arguments)
        value = dict(meta=meta, body=body, is_error=error, wire=wire_result(wire))
        save_new(output / (label + '.json'), value)
        if error:
            raise ValueError('Formal cleanup did not complete: ' + body)
        return json.loads(body)
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    def native(label, callback):
        check()
        with patch.dict(os.environ, env, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(old['component'], timeout=30, environment={**env, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain); value = callback(adapter)
        save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
        return value
    try:
        if b is not None:
            result['b_inverse'] = tool('b-inverse', 'bd_revert', dict(change_id=b, request_id=output.name + '-b-inverse')); save()
            if result['b_inverse']['status'] != 'verified_local': raise ValueError('B inverse not verified')
            result['b_release'] = native('b-release', lambda a: a.release(domain, b, inverse_id=result['b_inverse']['change_id'])); save()
            if result['b_release'].get('released') is not True: raise ValueError('B material release unconfirmed')
        if not args.after_local_history:
            result['a_inverse'] = tool('a-inverse', 'bd_revert', dict(change_id=token, request_id=output.name + '-a-inverse')); save()
            if result['a_inverse']['status'] != 'verified_local': raise ValueError('Exact A inverse not verified')
        result['original_baseline_verification'] = native('original-retained-baseline', lambda a:
            a._exchange(dict(cmd='connect_material', action='inspect_original', token=token)))
        save()
        if any(result['original_baseline_verification'].get(k) is not True for k in (
                'native_original_verified', 'source_original_verified', 'physical_original_verified',
                'drawing_original_verified', 'aliases_original_verified')):
            raise ValueError('Complete original references remain unrestored; retain material')
        result['a_release'] = native('a-release', lambda a: a.release(domain, token)); save()
        if result['a_release'].get('released') is not True: raise ValueError('A material release unconfirmed')
        witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='formal_connect_original'))
        result['witness'] = native('original-witness', lambda a: a._exchange(dict(cmd='main_readonly_witness', action='check', token=witness_token))); save()
        if result['witness']['unchanged'] is not True: raise ValueError('Full original model witness differs')
        result['witness_release'] = native('witness-release', lambda a: a._exchange(dict(cmd='main_readonly_witness', action='release', token=witness_token)))
        result['isolated_pending'] = pending.pending_path(domain).exists()
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['witness_release']['released'] is True and not result['isolated_pending'] and result['sources_match']
    except Exception as error:
        import traceback
        result.update(error=str(error), traceback=traceback.format_exc(), isolated_pending=pending.pending_path(domain).exists())
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'isolated_pending')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
