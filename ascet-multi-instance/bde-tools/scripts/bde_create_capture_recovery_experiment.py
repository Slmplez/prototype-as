"""Reconcile one retained creation capture failure; never redispatch creation."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_create_material import observation
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--resume-confirmed',action='store_true',help='Verify an already published terminal; no metadata commit or factory retry')
    args = parser.parse_args()
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Retained owned failed creation and fresh owned output required')
    old = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if epoch != old['domain']['process_epoch'] or old.get('creation_dispatched') is not True:
        raise ValueError('Exact original creation epoch required; never rebind')
    service.STORE = source / 'store'
    journals = list((service.STORE / 'edits').glob('edit_*'))
    if len(journals) != 1:
        raise ValueError('One exact original creation journal required')
    token = journals[0].name
    log = StructureJournal(service.STORE / 'edits')
    events = log.read(token)
    intent = events[0]['payload']
    domain = intent['domain']
    kind = intent['arguments'][1]
    initial_status=log.receipt(token,events)['status']
    if (domain != old['domain'] or intent['operation'] != 'create_block'
            or intent['component'] != old['component'] or kind not in (
                'variable','receive_message','send_message','send_receive_message')
            or initial_status != ('applied_observed' if args.resume_confirmed else 'outcome_unknown')):
        raise ValueError('Exact retained unknown declaration creation required')
    expected_marker = dict(domain=domain, command='create_apply', native_token=token, automatic_retry=False)
    marker = pending.pending_path(domain)
    if ((args.resume_confirmed and marker.exists()) or (not args.resume_confirmed
            and json.loads(marker.read_text(encoding='utf-8')) != expected_marker)):
        raise ValueError('Exact original pending creation marker required')
    output.mkdir(parents=True)
    save_new(output / 'original-journal.json', events)
    save_new(output / 'original-pending.json', expected_marker)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1')
    if kind != 'variable':
        environment['ASCET_BD_CREATE_DECLARATIONS'] = 'message_body_v1'
    for key in ('ASCET_BD_CREATE_HISTORY','ASCET_BD_CREATE_DECLARATION_HISTORY',
                'ASCET_BD_CREATE_FINALIZE','ASCET_BD_CREATE_DECLARATION_FINALIZE'):
        environment.pop(key,None)
    result = dict(passed=False, scope='Retained actual creation metadata and formal recovery only',
        source=str(source), manifest=old['manifest'], process_epoch=epoch, domain=domain,
        native_token=token, source_manifest=source_manifest(), formal_tool_calls=0,
        initial_status=initial_status,resume_confirmed=args.resume_confirmed,
        current_witness_token=None,
        model_setters_called=0, store_called=False, creation_redispatched=False,
        original_restored=False, material_retained=True, witness_retained=False,
        complete_case_pass=False, full_delivery=False, business_model_calls=0)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        destination = output / 'source' / rel
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, destination)
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose=output.name))
    result['current_witness_token'] = witness_token
    calls = []
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        def native(label, callback):
            fresh = live_manifest(old['manifest'])
            if fresh != (manifest, process, epoch):
                raise ValueError('Exact original runtime changed')
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(old['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain)
                    try:
                        value = callback(adapter)
                    except Exception as error:
                        save_new(output / (label + '-failure.json'), dict(error=str(error), wire=wire_result(wire)))
                        raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value
        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))
        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
            calls.append(row); result['formal_tool_calls'] = len(calls); save()
        def tool(label, name, arguments, offline=False):
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client = ToolClient(output, domain['session'], record)
                client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                start = len(calls); meta, body, error = client.call(name, arguments)
            frames = wire_result(wire)
            save_new(output / 'call-wire' / (label + '.json'), frames)
            save_new(output / 'responses' / (label + '.json'), dict(meta=meta, body=body, is_error=error))
            if error: raise ValueError('Formal recovery failed: ' + body)
            verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
            if offline and (frames['request']['frames'] or frames['connections']):
                raise ValueError('Offline actual diff attempted live requests')
            return json.loads(body)
        result['current_capture'] = witness('capture', 'actual-current-capture')
        result['witness_retained'] = True; save()
        result['compiled'] = native('create-compile', lambda a: a._exchange(dict(cmd='create_material_compile')))
        result['recovery'] = tool('formal-reconcile', 'bd_inspect', dict(query='recovery', change_id=token, reconcile=not args.resume_confirmed))
        if (result['recovery'].get('reconciled') is not (not args.resume_confirmed) or result['recovery'].get('creation_redispatched') is not False
                or result['recovery']['receipt']['status'] != 'applied_observed' or marker.exists()):
            raise ValueError('Complete durable creation confirmation not proven')
        result['after_recovery_witness'] = witness('check', 'actual-current-after-recovery')
        if result['after_recovery_witness']['unchanged'] is not True:
            raise ValueError('Metadata reconciliation changed complete actual model/source/order/alias')
        fresh_events = log.read(token)
        prepared = next(e['payload'] for e in fresh_events if e['kind'] == 'prepared')
        actual = next(e['payload'] for e in fresh_events if e['kind'] == 'observed')
        validated = observation(prepared['before'], actual['after'], prepared['create_material_prepared'],
            actual['create_material_actual'], token=token, oid=domain['oid'], kind=kind)
        if any(actual.get(key) != value for key, value in validated.items()):
            raise ValueError('Recovered complete actual WAL differs')
        result['material'] = actual['create_material_actual']
        result['independent'] = native('independent-after', lambda a: dict(
            native=a.observe(domain, []), public=a.observe_public(domain), models=a.observe_models(domain)))
        if (result['independent']['native'] != actual['after']
                or not compare(actual['after']['entries'], result['independent']['public'])['passed']):
            raise ValueError('Independent actual native/public recovered target differs')
        result['diff'] = tool('offline-actual-diff', 'bd_diff', dict(change_id=token), offline=True)
        result['terminal_query'] = tool('formal-terminal-query', 'bd_inspect', dict(query='recovery', change_id=token))
        result['final_witness'] = witness('check', 'actual-current-final')
        if result['final_witness']['unchanged'] is not True:
            raise ValueError('Post-recovery read/query changed complete actual model')
        result['witness_release'] = witness('release', 'actual-current-release')
        result['witness_retained'] = not result['witness_release']['released']
        pending.check(domain); result['isolated_pending'] = False
        save_new(output / 'recovered-journal.json', log.read(token))
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        try:
            result['isolated_pending'] = marker.exists()
            if result['witness_retained']:
                result['failure_witness'] = witness('export', 'failure-current-export')
                if result['failure_witness']['unchanged']:
                    result['failure_witness_release'] = witness('release', 'failure-current-release')
                    result['witness_retained'] = not result['failure_witness_release']['released']
        except Exception as export_error:
            result['witness_export_error'] = str(export_error)
    finally:
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','isolated_pending',
        'creation_redispatched','witness_retained','sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
