"""Inspect/publish the original completed Enum terminal, then reconcile via real tools."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_create_history import observed
from bd_edit_journal import file_lock
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sync', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--publish', action='store_true', help='Publish only validated original head metadata, never replay model writes')
    args = parser.parse_args()
    sync, output = args.sync.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not all(p.is_relative_to(owned) for p in (sync, output)):
        raise ValueError('Owned completed sync and fresh output required')
    s = json.loads((sync / 'result.json').read_text(encoding='utf-8'))
    if (s.get('passed') is not True or s.get('execution_dispatched') is not True
            or s.get('original_undo_redispatched') is not False or s.get('pending_retained') is not True):
        raise ValueError('Completed original no-replay reference repair required')
    failed = Path(s['failed_trial'])
    old = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if epoch != old['process_epoch'] or s['domain'] != old['domain']:
        raise ValueError('Exact original live epoch/domain required')
    token, result_id = s['native_token'], s['result_change_id']
    marker = pending_path(old['domain'])
    quarantine = json.loads(marker.read_text(encoding='utf-8'))
    if quarantine['native_token'] != token or quarantine['managed_context']['result_change_id'] != result_id:
        raise ValueError('Original unknown quarantine required')
    service.STORE = Path(old['source']) / 'store'
    log = StructureJournal(service.STORE / 'edits')
    prior_events = log.read(result_id)
    p = next(e['payload']['create_history'] for e in prior_events if e['kind'] == 'prepared')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Retained original Enum terminal certificate and formal recovery only',
        sync_trial=str(sync), failed_trial=str(failed), source=old['source'], manifest=old['manifest'],
        process_epoch=epoch, domain=old['domain'], component=old['component'], native_token=token,
        result_change_id=result_id, source_manifest=source_manifest(), observer_calls=0,
        formal_tool_calls=0, original_undo_redispatched=False, certificate_published=False,
        original_restored=False, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    save_new(output / 'original-failed-wal.json', prior_events)
    save_new(output / 'original-pending.json', quarantine)
    for relative in result['source_manifest']:
        target = output / 'source' / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, target)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_ENUM_REFERENCE_REPAIR='exact_v1', ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1', ASCET_BD_CREATE_HISTORY='native_source_exact_v1',
        ASCET_BD_CREATE_DECLARATIONS='enum_body_v1', ASCET_BD_CREATE_DECLARATION_HISTORY='enum_body_exact_v1')
    calls = []
    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
        calls.append(row)
        result['formal_tool_calls'] = len(calls)
        save()
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        def runtime():
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Original epoch changed; no rebind')
        def native(mode):
            runtime()
            if json.loads(marker.read_text(encoding='utf-8')) != quarantine:
                raise ValueError('Original unknown quarantine changed')
            result['observer_calls'] += 1
            save()
            wire = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(old['domain'])
                        value = adapter._exchange(dict(cmd='enum_history_terminal_certificate', action=mode,
                            token=token, result_change_id=result_id))
            except Exception as error:
                save_new(output / (mode + '-failure.json'), dict(error=str(error),
                    wire=wire_result(wire) if wire is not None else None))
                raise
            save_new(output / (mode + '.json'), dict(result=value, wire=wire_result(wire)))
            return value
        def validate(value, certified):
            fixed = dict(profile='native_enum_completed_undo_certificate_v1', native_token=token,
                result_change_id=result_id, model_setters_called=0, source_setters_called=0,
                declaration_setters_called=0, store_called=False, database_commit_called=False,
                original_undo_redispatched=False, certified=certified,
                typed_target_source='retained_actual_target_and_complete_native_source_declaration_equality')
            if any(type(value.get(k)) is not type(v) or value[k] != v for k, v in fixed.items()):
                raise ValueError('Exact metadata-only original terminal certificate required')
            if value['reference_sync_actual'] != s['actual']:
                raise ValueError('Certificate reference recovery differs from retained actual sync')
            if value['original_execution'] != s['preparation']['original_execution']:
                raise ValueError('Certificate original execution differs from before recovery')
            observed(value['actual'], p, oid=old['domain']['oid'])
        result['inspect'] = native('inspect')
        validate(result['inspect'], False)
        if args.publish:
            result['certificate_publish_dispatched'] = True
            save()
            result['certificate'] = native('certify')
            validate(result['certificate'], True)
            if {**result['inspect'], 'certified': True} != result['certificate']:
                raise ValueError('Original inspected terminal changed before metadata publication')
            result['certificate_published'] = True
            save()
            with file_lock(log.root / 'journal.lock'):
                events = log.read(result_id)
                if events != prior_events:
                    raise ValueError('Original failed WAL changed during terminal certificate')
                log._append(log._path(result_id), events, 'enum_reference_recovery_certificate', result['certificate'])
            for reconcile in (False, True):
                runtime()
                with bench.proxy(upstream_port=manifest['port']) as wire:
                    client = ToolClient(output, old['domain']['session'], record)
                    client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                    start = len(calls)
                    _, body, error = client.call('bd_inspect', dict(query='recovery', change_id=result_id,
                        reconcile=reconcile, max_bytes=12288))
                label = 'reconcile' if reconcile else 'terminal-query'
                save_new(output / (label + '-wire.json'), wire_result(wire))
                save_new(output / (label + '-response.json'), dict(body=body, is_error=error))
                if error:
                    raise ValueError('Formal recovery failed: ' + body)
                verify_pages(calls[start:], body, 12288)
                reply = json.loads(body)
                result[label] = reply
                if reply['terminal_verified'] is not True or reply['execution_redispatched'] is not False:
                    raise ValueError('Formal fresh typed/current target query incomplete')
                save()
            result['isolated_pending'] = marker.exists()
            if result['isolated_pending']:
                raise ValueError('Verified formal recovery did not confirm original quarantine')
            result['receipt'] = log.receipt(result_id, log.read(result_id))
            if result['receipt']['status'] != 'verified_local':
                raise ValueError('Original recovered actual undo is not formally verified')
        else:
            result['wals_unchanged'] = log.read(result_id) == prior_events
            result['pending_retained'] = json.loads(marker.read_text(encoding='utf-8')) == quarantine
            if not result['wals_unchanged'] or not result['pending_retained']:
                raise ValueError('Inspection changed original WAL or quarantine')
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['sources_match']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
    finally:
        save()
    print(json.dumps({k: result.get(k) for k in ('passed','error','observer_calls','formal_tool_calls',
        'certificate_published','isolated_pending','original_undo_redispatched','sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
