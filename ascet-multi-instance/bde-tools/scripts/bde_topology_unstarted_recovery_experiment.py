"""Prove a failed zero-step attempt, reconcile it, then perform distinct cleanup."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
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
    parser.add_argument('--experiment', required=True, type=Path)
    parser.add_argument('--failure', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--finish-abandoned', type=Path, help='Finish original proven zero-step metadata after its formal rejection; never replay abandonment')
    args = parser.parse_args()
    prior, failure, output = (p.resolve() for p in (args.experiment, args.failure, args.output))
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (prior, failure, output)) or output.exists():
        raise ValueError('Preserved owned failure and fresh output required')
    prior_bytes, failure_bytes = (p.joinpath('result.json').read_bytes() for p in (prior, failure))
    previous, failed = json.loads(prior_bytes), json.loads(failure_bytes)
    manifest, process, epoch = live_manifest(previous['manifest'])
    if epoch != previous['process_epoch'] or epoch != failed['process_epoch'] or failed['passed'] is not False:
        raise ValueError('Exact current failed isolated epoch required')
    domain, component = previous['domain'], previous['component']
    marker_path = pending_path(domain)
    if args.finish_abandoned:
        abandoned_path = args.finish_abandoned.resolve()
        if not abandoned_path.is_relative_to(owned) or marker_path.exists():
            raise ValueError('Preserved rejected zero-step evidence and no active quarantine required')
        abandoned_result = json.loads(abandoned_path.joinpath('result.json').read_text(encoding='utf-8'))
        if (abandoned_result['process_epoch'] != epoch or abandoned_result['domain'] != domain
                or abandoned_result['abandoned']['abandoned'] is not True
                or abandoned_result['reconciliation']['receipt']['status'] != 'rejected'):
            raise ValueError('Exact successful zero-step abandonment and formal rejection required')
        marker_bytes = abandoned_path.joinpath('original-pending.json').read_bytes()
    else:
        marker_bytes = marker_path.read_bytes()
    marker = json.loads(marker_bytes)
    token, context = marker['native_token'], marker['managed_context']
    owner, result_id, state = context['head_change_id'], context['result_change_id'], context['expected_state']
    if token != previous['edit_a']['change_id'] or owner != failed['failed_change_id']:
        raise ValueError('Original retained token differs')
    if marker != dict(domain=domain, command='managed_inverse', native_token=token,
            automatic_retry=False, managed_context=context) or state != 'applied':
        raise ValueError('Exact failed cleanup quarantine required')
    rows = [json.loads(p.read_text(encoding='utf-8')) for p in sorted(failure.joinpath('tool-calls').glob('*.json'))]
    failed_reply = json.loads(rows[-1]['response']['content'].split('\n\n', 1)[1])
    if failed_reply['change_id'] != result_id or 'native_topology: False>>+' not in failed_reply['error']:
        raise ValueError('Preserved actual zero-step failure reply required')
    service.STORE = prior / 'store'; log = StructureJournal(service.STORE / 'edits')
    events = log.read(result_id)
    expected_status = 'rejected' if args.finish_abandoned else 'outcome_unknown'
    if log.receipt(result_id, events)['status'] != expected_status or events[0]['payload']['reverts'] != owner:
        raise ValueError('Exact durable failed attempt and ancestry required')
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
    original_witness = json.loads(prior.joinpath('witness-capture.json').read_text(encoding='utf-8'))['result']['token']
    output.mkdir(parents=True); candidate = source_manifest()
    for rel in candidate:
        dest = output / 'source' / rel; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, dest)
    binary = None
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
        ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1', ASCET_BD_SOURCE_IDENTITY_NORMALIZATION='identity_v1',
        ASCET_BD_TOPOLOGY_EXACT_INVERSE='native_source_v1', ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION='identity_v1',
        ASCET_BD_TOPOLOGY_LOCAL_INVERSE='native_source_v1', ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1',
        ASCET_BD_MANAGED_TOPOLOGY_INVERSE='native_source_v1', ASCET_BD_MANAGED_TOPOLOGY_TERMINAL_CERTIFICATION='metadata_v1')
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    result = dict(passed=False, restored=False, original_experiment=str(prior), failed_experiment=str(failure),
        manifest=previous['manifest'], domain=domain, component=component, process_epoch=epoch, pid=process['pid'],
        native_token=token, failed_change_id=result_id, source_manifest=candidate, complete_case_pass=False,
        full_delivery=False, original_request_redispatched=False, abandonment_attempted=False,
        finished_abandonment_evidence=str(args.finish_abandoned.resolve()) if args.finish_abandoned else None)
    def save():
        output.joinpath('result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    def native(label, request):
        if live_manifest(previous['manifest'])[2] != epoch: raise ValueError('Original epoch changed')
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(component, timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                try: answer = dict(result=adapter._exchange(request))
                except RuntimeError as error: answer = dict(error=str(error))
        answer['wire'] = wire_result(wire); save_new(output / (label + '.json'), answer)
        if 'error' in answer: raise ValueError(answer['error'])
        return answer['result']
    calls = []
    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)
    def tool(label, name, query):
        if live_manifest(previous['manifest'])[2] != epoch: raise ValueError('Original epoch changed')
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls); _, body, error = client.call(name, query)
        save_new(output / (label + '-wire.json'), wire_result(wire))
        if error: raise ValueError(body)
        verify_pages(calls[start:], body, query.get('max_bytes', 12288))
        return json.loads(body)
    witness_token = 'main_' + fingerprint({'domain': domain, 'zero_step_recovery': output.name})
    request = dict(cmd='topology_unstarted_recovery', token=token, head_change_id=owner,
        expected_state=state, result_change_id=result_id, witness_token=witness_token)
    save(); save_new(output / 'original-pending.json', marker)
    try:
        binary = build_oracle(output)
        result['capture'] = native('witness-capture', dict(cmd='main_readonly_witness', token=witness_token, action='capture'))
        inspect_action = 'inspect_abandoned' if args.finish_abandoned else 'inspect'
        abandon_action = 'finish_abandoned' if args.finish_abandoned else 'abandon'
        result['inspection'] = native('inspect', {**request, 'action': inspect_action})
        if args.finish_abandoned:
            if marker_path.exists(): raise ValueError('Inspection created quarantine')
        elif marker_path.read_bytes() != marker_bytes: raise ValueError('Inspection changed quarantine')
        save_new(output / 'abandonment-intent.json', {**request, 'action': abandon_action, 'automatic_retry': False})
        result['abandonment_attempted'] = True; save()
        result['abandoned'] = native('abandon', {**request, 'action': abandon_action})
        if result['abandoned']['abandoned'] is not True: raise ValueError('Zero-step abandonment unconfirmed')
        result['check'] = native('witness-check', dict(cmd='main_readonly_witness', token=witness_token, action='check'))
        if result['check']['unchanged'] is not True: raise ValueError('Metadata abandonment changed complete witness')
        result['release'] = native('witness-release', dict(cmd='main_readonly_witness', token=witness_token, action='release'))
        terminal = native('fresh-unexecuted', dict(cmd='recovery_status', token=token))
        if terminal['state'] != state or terminal['current'] != prepared['before'] or terminal['managed_execution'] is not None:
            raise ValueError('Fresh native proof does not establish complete unexecuted CURRENT')
        result['reconciliation'] = tool('reconcile', 'bd_inspect', dict(query='recovery', change_id=result_id, reconcile=True))
        if (result['reconciliation'].get('reconciled') is not True or marker_path.exists()
                or result['reconciliation']['receipt']['status'] != 'rejected'):
            raise ValueError('Formal zero-step rejection did not clear exact quarantine')
        result['cleanup_topology'] = tool('cleanup-topology', 'bd_revert', dict(change_id=owner, request_id=output.name + '_distinct_cleanup'))
        if result['cleanup_topology']['status'] != 'verified_local': raise ValueError('Distinct topology cleanup failed')
        result['cleanup_literal'] = tool('cleanup-literal', 'bd_revert', dict(change_id=previous['edit_b']['change_id'], request_id=output.name + '_literal_cleanup'))
        if result['cleanup_literal']['status'] != 'verified_local': raise ValueError('Independent literal cleanup failed')
        baseline = json.loads(prior.joinpath('before.json').read_text(encoding='utf-8'))['result']
        final_native = native('final-native', dict(cmd='observe', targets=[]))
        final_public = native('final-public', dict(cmd='observe_public'))
        result['original_witness'] = native('original-witness-check', dict(cmd='main_readonly_witness', token=original_witness, action='check'))
        result['restored'] = (final_native == baseline['native'] and final_public == baseline['public']
            and compare(final_native['entries'], final_public)['passed'] and result['original_witness']['unchanged'] is True)
        if not result['restored']: raise ValueError('Complete original native/source/identity/order baseline differs')
        result['original_witness_release'] = native('original-witness-release', dict(cmd='main_readonly_witness', token=original_witness, action='release'))
        result['preserved_failed_verdicts'] = prior.joinpath('result.json').read_bytes() == prior_bytes and failure.joinpath('result.json').read_bytes() == failure_bytes
        result['sources_match'] = source_manifest() == candidate
        result['passed'] = result['restored'] and result['preserved_failed_verdicts'] and result['sources_match']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc(); result['pending_retained'] = marker_path.exists()
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'abandonment_attempted', 'tool_calls', 'pending_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
