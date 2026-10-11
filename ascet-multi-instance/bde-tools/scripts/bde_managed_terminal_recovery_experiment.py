"""Certify retained completed isolated material, reconcile once, then exact cleanup."""
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
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_instance_pending import pending_path
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_tool_client import ToolClient
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    action = parser.add_mutually_exclusive_group()
    action.add_argument('--certify', action='store_true')
    action.add_argument('--resume-certificate', type=Path,
        help='Fresh read/reconciliation only after an already successful metadata certificate; never redispatch it')
    args = parser.parse_args()
    prior, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned preserved failed experiment and fresh output required')
    previous_bytes = (prior / 'result.json').read_bytes()
    previous = json.loads(previous_bytes)
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous['passed'] is not False or previous['process_epoch'] != epoch:
        raise ValueError('Exact original failed isolated epoch required')
    domain, component = previous['domain'], previous['component']
    service.STORE = prior / 'store'
    marker_path = pending_path(domain)
    original_marker = marker_path.read_bytes()
    marker = json.loads(original_marker)
    token, owner = previous['edit_a']['change_id'], previous['undo_a_with_b']['change_id']
    result_id = marker['managed_context']['result_change_id']
    if marker != dict(domain=domain, command='managed_inverse', native_token=token, automatic_retry=False,
            managed_context=dict(head_change_id=owner, expected_state='reverted', result_change_id=result_id)):
        raise ValueError('Original managed execution quarantine differs')
    log = StructureJournal(service.STORE / 'edits')
    if log.receipt(result_id, log.read(result_id))['status'] != 'outcome_unknown':
        raise ValueError('Failed durable managed outcome required')
    retained_certificate = None
    if args.resume_certificate:
        certified = args.resume_certificate.resolve()
        if not certified.is_relative_to(owned):
            raise ValueError('Owned preserved certificate evidence required')
        certified_result = json.loads((certified / 'result.json').read_text(encoding='utf-8'))
        retained_certificate = json.loads((certified / 'certify.json').read_text(encoding='utf-8'))['result']
        if (certified_result['process_epoch'] != epoch or certified_result['domain'] != domain
                or certified_result['native_token'] != token or certified_result['failed_change_id'] != result_id
                or certified_result['certificate'] != retained_certificate
                or retained_certificate['native_token'] != token or retained_certificate['head_change_id'] != owner
                or retained_certificate['result_change_id'] != result_id
                or retained_certificate['terminal_certified'] is not True
                or retained_certificate['model_setters_called'] != 0
                or retained_certificate['store_called'] is not False
                or retained_certificate['patch_execute_called'] is not False):
            raise ValueError('Exact already successful metadata certificate required; no redispatch')
    original_witness = json.loads((prior / 'witness-capture.json').read_text(encoding='utf-8'))['result']['token']
    recovery_id = 'edit_' + fingerprint({'domain': domain, 'recovery': output.name})
    output.mkdir(parents=True)
    candidate = source_manifest()
    for rel in candidate:
        dest = output / 'source' / rel; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, dest)
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1', ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1',
        ASCET_BD_SOURCE_IDENTITY_NORMALIZATION='identity_v1', ASCET_BD_TOPOLOGY_EXACT_INVERSE='native_source_v1',
        ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION='identity_v1', ASCET_BD_TOPOLOGY_LOCAL_INVERSE='native_source_v1',
        ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1', ASCET_BD_MANAGED_TOPOLOGY_INVERSE='native_source_v1',
        ASCET_BD_MANAGED_TOPOLOGY_TERMINAL_CERTIFICATION='metadata_v1')
    request = dict(cmd='topology_terminal_recovery', token=token, head_change_id=owner, expected_state='reverted',
        result_change_id=result_id, witness_token=original_witness, recovery_id=recovery_id)
    result = dict(passed=False, original_experiment=str(prior), process_epoch=epoch, pid=process['pid'],
        manifest=previous['manifest'], component=component, domain=domain, native_token=token, failed_change_id=result_id,
        source_manifest=candidate, certify_requested=args.certify, model_setters_called_by_certification=0,
        store_called_by_certification=False, original_failed_request_redispatched=False,
        terminal_certification_attempted=False, certification_redispatched=False,
        retained_certificate_evidence=str(args.resume_certificate.resolve()) if args.resume_certificate else None,
        complete_case_pass=False, full_delivery=False, restored=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save(); save_new(output / 'original-pending.json', marker)
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    def call(label, query):
        # Recheck the exact original listener/PID/epoch before every native call.
        if live_manifest(previous['manifest'])[2] != epoch: raise ValueError('Original live epoch changed')
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(component, timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                try: answer = dict(result=adapter._exchange(query))
                except RuntimeError as error: answer = dict(error=str(error))
        answer['wire'] = wire_result(wire); save_new(output / (label + '.json'), answer)
        return answer
    def good(label, query):
        answer = call(label, query)
        if 'error' in answer: raise ValueError(answer['error'])
        return answer['result']
    calls = []
    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)
    def tool(name, query):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls); meta, body, error = client.call(name, query)
        save_new(output / 'tool-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error: raise ValueError(body)
        return json.loads(body)
    witness_token = 'main_' + fingerprint({'domain': domain, 'pure_certification_preparation': output.name})
    def witness(action):
        return good('preparation-witness-' + action, dict(cmd='main_readonly_witness', token=witness_token, action=action))
    try:
        result['pure_capture'] = witness('capture'); save()
        if retained_certificate is None:
            result['inspection'] = good('inspect', {**request, 'action': 'inspect'})
            for label, fields in (('wrong-owner', {'head_change_id': recovery_id}), ('wrong-state', {'expected_state': 'applied'})):
                refused = call(label, {**request, **fields, 'action': 'inspect'})
                if 'Exact nonterminal completed managed execution required' not in refused.get('error', ''):
                    raise ValueError('Wrong actual certification owner/state not refused: ' + label)
            result['wrong_owner_state_refused'] = True
            result['prepared'] = good('prepare', {**request, 'action': 'prepare'})
        else:
            result['certificate'] = retained_certificate
            result['terminal'] = good('fresh-terminal', dict(cmd='recovery_status', token=token))
        result['pure_check'] = witness('check')
        if result['pure_check']['unchanged'] is not True: raise ValueError('Certification prepare changed complete witness')
        result['pure_release'] = witness('release'); save()
        if args.certify or retained_certificate is not None:
            if retained_certificate is None:
                intent = {**request, 'action': 'certify', 'prepared_signature': result['prepared']['signature'],
                    'automatic_retry': False, 'scope': 'Metadata terminal certification only; no model mutation or store'}
                save_new(output / 'certification-intent.json', intent)
                result['terminal_certification_attempted'] = True; save()
                result['certificate'] = good('certify', {key: value for key, value in intent.items() if key not in ('automatic_retry', 'scope')})
            if (result['certificate']['terminal_certified'] is not True or result['certificate']['model_setters_called'] != 0
                    or result['certificate']['store_called'] is not False or result['certificate']['patch_execute_called'] is not False):
                raise ValueError('Exact metadata-only terminal certificate required')
            if retained_certificate is None:
                result['terminal'] = good('fresh-terminal', dict(cmd='recovery_status', token=token))
            preparation = next(e['payload'] for e in log.read(result_id) if e['kind'] == 'prepared')
            if result['terminal']['current'] != preparation['inverse_expected']:
                raise ValueError('Certified actual fresh terminal differs from independent durable target')
            if marker_path.read_bytes() != original_marker: raise ValueError('Certificate unexpectedly cleared/changed quarantine')
            result['reconciled'] = tool('bd_inspect', dict(query='recovery', change_id=result_id, reconcile=True))
            if (result['reconciled'].get('reconciled') is not True or marker_path.exists()
                    or result['reconciled']['receipt']['status'] != 'verified_local'):
                raise ValueError('Formal reconciliation did not prove completed original transaction')
            result['undo_redo'] = tool('bd_revert', dict(change_id=result_id, request_id=output.name + '_cleanup_redo'))
            if result['undo_redo']['status'] != 'verified_local': raise ValueError('Actual compensated inverse not verified')
            result['cleanup_literal'] = tool('bd_revert', dict(change_id=previous['edit_b']['change_id'], request_id=output.name + '_cleanup_b'))
            if result['cleanup_literal']['status'] != 'verified_local': raise ValueError('Actual independent literal cleanup not verified')
            baseline = json.loads((prior / 'before.json').read_text(encoding='utf-8'))['result']
            final_native = good('final-native', dict(cmd='observe', targets=[]))
            final_public = good('final-public', dict(cmd='observe_public'))
            result['original_witness'] = good('original-witness-check', dict(cmd='main_readonly_witness', token=original_witness, action='check'))
            result['restored'] = (final_native == baseline['native'] and final_public == baseline['public']
                and compare(final_native['entries'], final_public)['passed'] and result['original_witness']['unchanged'] is True)
            if not result['restored']: raise ValueError('Exact original native/source/aliases/physical/drawing baseline not restored')
            result['original_witness_release'] = good('original-witness-release', dict(cmd='main_readonly_witness', token=original_witness, action='release'))
        else:
            result['quarantine_unchanged'] = marker_path.read_bytes() == original_marker
        result['original_failed_verdict_unchanged'] = (prior / 'result.json').read_bytes() == previous_bytes
        result['sources_match'] = source_manifest() == candidate
        result['passed'] = ((result.get('wrong_owner_state_refused') is True or retained_certificate is not None)
            and result['pure_check']['unchanged'] is True
            and result['original_failed_verdict_unchanged'] and result['sources_match']
            and (result['restored'] if args.certify or retained_certificate is not None else result['quarantine_unchanged']))
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        result['pending_retained'] = marker_path.exists()
    result['tool_calls'] = len(calls); save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'restored', 'terminal_certification_attempted', 'pending_retained', 'tool_calls', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
