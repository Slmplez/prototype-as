"""Guarded separate source repair for the retained isolated A+B cleanup failure.

Prepare/proof are flushed before one dispatch. Unknown outcomes stay quarantined;
neither original edit nor the repair is retried. Business databases are excluded.
"""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_connect_journal import context
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_frozen_source_inverse import inspect, _rows, _cells
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_public_oracle import compare


def flush(path, value):
    with path.open('x', encoding='utf-8') as stream:
        stream.write(json.dumps(value, ensure_ascii=False, indent=2) + '\n')
        stream.flush(); os.fsync(stream.fileno())


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--trial', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args(); trial, output = args.trial.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not trial.is_relative_to(owned):
        raise ValueError('Retained owned failure and fresh output required')
    old = json.loads((trial / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest']); domain = old['domain']
    witness = old.get('failure_witness', {})
    if (old['process_epoch'] != epoch or len(old['histories']) != 3 or old['passed'] is True
            or old['independent_b_inverse']['status'] != 'verified_local'
            or witness.get('native_fields_unchanged') is not True or not (witness.get('source_unchanged') is False
                or old.get('original_baseline_verification',{}).get('source_original_verified') is False)
            or any(witness.get(k) is not True for k in ('ids_unchanged', 'physical_identity_order_unchanged', 'drawing_identity_order_unchanged'))):
        raise ValueError('Complete same-epoch original native restoration and retained stale source failure required')
    pending.check(domain); service.STORE = trial / 'store'
    ctx = context(StructureJournal(service.STORE / 'edits'), old['histories'][-1]['actual']['change_id'])
    if ctx['state'] != 'reverted' or ctx['sequence'] != 4:
        raise ValueError('Retained actual A inverse owner differs')
    output.mkdir(parents=True); version = source_manifest()
    result = dict(passed=False, original_failed_trial=str(trial), domain=domain, process_epoch=epoch,
        source_manifest=version, native_token=ctx['native_token'], owner=ctx['owner'],
        field_token=old['independent_b']['change_id'], field_owner=old['independent_b_inverse']['change_id'],
        business_model_calls=0, separate_source_repair=True, original_operations_replayed=False,
        complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save(); binary = build_oracle(output)
    env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CONNECT_HISTORY='native_source_local_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_SOURCE_REPAIR='identity_v1')
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    def native(label, callback):
        if live_manifest(old['manifest']) != (manifest, process, epoch):
            raise ValueError('Original isolated runtime changed; never rebind retained material')
        with patch.dict(os.environ, env, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(old['component'], timeout=30, environment={**env, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain); value = callback(adapter)
        save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
        return value
    repair_id = 'edit_' + fingerprint(dict(domain=domain, request=output.name))
    request = dict(cmd='connect_source_repair', token=result['native_token'], owner=result['owner'],
        field_token=result['field_token'], field_owner=result['field_owner'], repair_id=repair_id)
    marker = None
    try:
        p = native('prepare', lambda a: a._exchange({**request, 'action': 'prepare', 'signature': ''}))
        contract = dict(profile='native_connect_original_source_repair_preparation_v1', native_token=request['token'],
            head_change_id=request['owner'], field_token=request['field_token'], field_owner=request['field_owner'],
            repair_id=repair_id, signature=repair_id + '/r1', original_native_verified=True,
            model_setters_called=0, store_called=False, write_authorized=False)
        if any(type(p.get(k)) is not type(v) or p[k] != v for k,v in contract.items()):
            raise ValueError('Actual identity-bound nonmutating repair preparation differs')
        independent = inspect(p['source_evidence'], domain['oid'])
        flush(output / 'durable-prepared.json', dict(preparation=p, independent=independent, source_manifest=version))
        ownership = {k:request[k] for k in ('token', 'owner', 'field_token', 'field_owner', 'repair_id')}
        marker = pending.begin(domain, 'connect_source_repair', repair_id, context=ownership)
        flush(output / 'durable-started.json', dict(request=request, signature=p['signature'], automatic_retry=False))
        actual = native('execute', lambda a: a._exchange({**request, 'action': 'execute', 'signature':p['signature']}))
        flush(output / 'durable-actual.json', actual)
        proof = actual['execution']
        expected = {k:v for k,v in contract.items() if k in ('native_token', 'head_change_id', 'field_token', 'field_owner', 'repair_id')}
        expected.update(original_native_verified=True, original_source_verified=True, model_setters_called=0, store_called=False)
        if (actual['profile'] != 'native_connect_original_source_repair_actual_v1'
                or actual['write_replayed'] is not False or any(type(proof.get(k)) is not type(v) or proof[k] != v for k,v in expected.items())):
            raise ValueError('Complete source repair actual execution proof differs')
        inspect(actual['source_evidence'], domain['oid'])
        target, restored = (_rows(actual['source_evidence'][k]) for k in ('original','current'))
        if (target.keys() != restored.keys() or any(_cells(row,set(target)) != _cells(restored[ref],set(target)) for ref,row in target.items())):
            raise ValueError('Every actual source value/reference/sharing cell must equal the original target')
        status = native('retained-terminal', lambda a: a._exchange({**request, 'action':'status', 'signature':''}))
        if status != actual: raise ValueError('Retained source repair terminal differs from durable actual')
        result['source_repair_actual'] = actual; save()
        expected_marker = dict(domain=domain, command='connect_source_repair', native_token=repair_id,
            automatic_retry=False, managed_context=ownership)
        if json.loads(marker.read_text(encoding='utf-8')) != expected_marker:
            raise ValueError('Another operation owns repair quarantine')
        flush(output / 'durable-confirmed.json', dict(terminal_verified=True, automatic_retry=False))
        pending.confirmed(marker); marker = None
        full = native('independent-native-public', lambda a: dict(native=a.observe(domain,[]), public=a.observe_public(domain)))
        result['public_compare'] = compare(full['native']['entries'],full['public'])
        if full['native'] != old['before'] or result['public_compare']['passed'] is not True:
            raise ValueError('Complete original graph/public semantics differ after source repair')
        result['repair_release'] = native('repair-release', lambda a: a._exchange({**request, 'action':'release', 'signature':''}))
        if result['repair_release'].get('released') is not True:
            raise ValueError('Completed source repair material release unconfirmed')
        result['b_release'] = native('b-release', lambda a:a.release(domain,result['field_token'],inverse_id=result['field_owner']))
        result['a_release'] = native('a-release', lambda a:a.release(domain,result['native_token']))
        if any(result[k].get('released') is not True for k in ('b_release','a_release')):
            raise ValueError('Original material releases unconfirmed')
        witness_token = witness['token']
        result['witness'] = native('original-witness', lambda a:a._exchange(dict(cmd='main_readonly_witness',action='check',token=witness_token)))
        if result['witness']['unchanged'] is not True: raise ValueError('Original full native/source/order/alias witness not restored')
        result['witness_release'] = native('original-witness-release', lambda a:a._exchange(dict(cmd='main_readonly_witness',action='release',token=witness_token)))
        result['isolated_pending'] = pending.pending_path(domain).exists()
        result['sources_match'] = source_manifest() == version
        result['passed'] = result['witness_release']['released'] is True and not result['isolated_pending'] and result['sources_match']
    except Exception as error:
        import traceback
        result.update(error=str(error), traceback=traceback.format_exc(),isolated_pending=pending.pending_path(domain).exists())
    save(); print(json.dumps({k:result.get(k) for k in ('passed','error','isolated_pending')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
