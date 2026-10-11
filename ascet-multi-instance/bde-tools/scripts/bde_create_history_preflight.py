"""Compile and validate retained create history preparation; never dispatch execute."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_create_history import preparation
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--verification', type=Path, help='Exact preserved variable no-replay capture verification')
    args = parser.parse_args()
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Exact retained owned creation and fresh output required')
    old = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if args.verification and not args.verification.resolve().is_relative_to(owned):
        raise ValueError('Owned preserved capture verification required')
    from bde_create_history_source import validate as validate_source
    declaration = validate_source(source, old, epoch, args.verification)
    domain, token = old['domain'], old['native_token']
    pending.check(domain)
    events = StructureJournal(source / 'store' / 'edits').read(token)
    before = next(e['payload']['before'] for e in events if e['kind']=='prepared')
    after = next(e['payload']['after'] for e in events if e['kind']=='observed')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Fixed retained create history compile/zero-write preparation only',
        source=str(source), manifest=old['manifest'], domain=domain, process_epoch=epoch,
        native_token=token, source_manifest=source_manifest(), formal_tool_calls=0,
        model_setters_called=0, store_called=False, execution_dispatched=False,
        witness_retained=False, original_create_undo_redo_verified=False,
        declaration_body_restore_verified=False, declaration_history_enabled=declaration, original_restored=False,
        verification_source=str(args.verification.resolve()) if args.verification else None,
        complete_case_pass=False, full_delivery=False, business_model_calls=0)
    def save():
        (output / 'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        dest = output / 'source' / relative
        dest.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT / relative, dest)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CREATE_MATERIAL='identity_v1',
        ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
    if declaration:
        environment.update(ASCET_BD_CREATE_DECLARATIONS='body_v1', ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1')
    witness_token = 'main_' + fingerprint(dict(domain=domain,purpose=output.name))
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        def native(label, command):
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Original runtime changed; never rebind retained create material')
            with patch.dict(os.environ,environment,clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(old['component'],timeout=30,
                        environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain)
                    value = adapter._exchange(command)
            save_new(output / (label+'.json'),dict(result=value,wire=wire_result(wire)))
            return value
        def witness(action,label):
            return native(label,dict(cmd='main_readonly_witness',action=action,token=witness_token))
        result['current_capture'] = witness('capture','current-capture')
        result['witness_retained'] = True; save()
        result['compiled'] = native('compile',dict(cmd='create_history_compile'))
        result_id = 'edit_' + fingerprint(dict(domain=domain,purpose=output.name+'-prepare'))
        value = native('preparation',dict(cmd='create_history',action='prepare',token=token,
            owner=token,state='applied',result_change_id=result_id,prepared_signature=''))
        result['preparation'] = preparation(value,token=token,owner=token,state='applied',result_id=result_id,
            sequence=1,kind=old['operation']['kind'],current=after,expected=before,oid=domain['oid'])
        result['current_check'] = witness('check','current-check')
        if result['current_check']['unchanged'] is not True:
            raise ValueError('History preparation changed complete native/source/order/alias CURRENT')
        result['current_release'] = witness('release','current-release')
        result['witness_retained'] = not result['current_release']['released']
        pending.check(domain); result['isolated_pending'] = False
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('check','failure-current-check')
                if result['failure_witness']['unchanged'] is True:
                    result['failure_release'] = witness('release','failure-current-release')
                    result['witness_retained'] = not result['failure_release']['released']
            except Exception as diagnostic_error:
                result['diagnostic_error'] = str(diagnostic_error)
    finally:
        result['sources_match'] = source_manifest() == result['source_manifest']
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','execution_dispatched','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
