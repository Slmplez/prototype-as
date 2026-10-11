"""Original Module message exact history compile/prepare purity; no execution or replay."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_instance_pending as pending
import bd_service as service
import bde_experiments as bench
from bd_create_history import preparation
from bd_edit_journal import fingerprint
from bd_message_declaration_history import initial_origin
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_message_history_source import validate as validate_source
from bde_public_oracle import compare


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',type=Path,required=True)
    parser.add_argument('--verification',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--execution-profile',action='store_true',help='Prepare the separate execution contract without dispatch')
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();verification=args.verification.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or any(not p.is_relative_to(owned) for p in (source,verification,output)):
        raise ValueError('Retained owned original message, terminal audit and fresh output required')
    old=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(old['manifest']);domain=old['domain']
    if domain['database']!=manifest['database'] or not old['component'].startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Exact isolated original message database/owner required')
    bound=validate_source(source,old,epoch,verification);token=bound['native_token'];pending.check(domain)
    events=bound['events'];material=bound['material'];origin=initial_origin(material)
    log=StructureJournal(source/'store/edits')
    immutable={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [source/'result.json',*(source/'store/edits'/token).glob('*.json')]}
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Original Module message first-undo compile/preparation purity only',
        source=str(source),verification_source=str(verification),manifest=old['manifest'],process_epoch=epoch,
        domain=domain,component=old['component'],native_token=token,source_manifest=source_manifest(),
        immutable_before=immutable,original_material_retained=True,original_before_witness_retained=True,
        current_witness_retained=False,observer_calls=0,formal_tool_calls=0,model_setters_called=0,
        store_called=False,creation_redispatched=False,execution_dispatched=False,original_restored=False,
        message_same_object_history_verified=False,execution_profile_prepared=args.execution_profile,
        complete_case_pass=False,full_delivery=False,business_model_calls=0)
    def save():
        (output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save_new(output/'original-forward-journal.json',events);save()
    for rel in result['source_manifest']:
        target=output/'source'/rel;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,target)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',
        ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY=
            'message_body_exact_v1' if args.execution_profile else 'message_prepare_exact_v1')
    witness_token='main_'+fingerprint(dict(domain=domain,purpose=output.name+'-current'))
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def native(label,callback):
            if live_manifest(old['manifest'])!=(manifest,process,epoch):
                raise ValueError('Original message runtime changed; never rebind across epochs')
            result['observer_calls']+=1;save();wire=None
            try:
                with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'],timeout=30,
                            environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain);value=callback(adapter)
            except Exception as error:
                save_new(output/(label+'-failure.json'),dict(error=str(error),wire=wire_result(wire) if wire is not None else None));raise
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label):
            return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness_token)))
        def baseline(label):
            value=native(label,lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),
                models=a.observe_models(domain),configuration=a._exchange(dict(cmd='main_configuration'))))
            if not compare(value['native']['entries'],value['public'])['passed']:
                raise ValueError('Independent complete public/native projection differs')
            return value
        result['before']=baseline('before')
        if result['before']['native']!=bound['actual']['after']:
            raise ValueError('Current message typed head differs from original confirmed actual')
        result['current_witness_retained']=True;save()
        result['current_capture']=witness('capture','created-current-capture')
        result['compiled']=native('history-compile',lambda a:a._exchange(dict(cmd='create_history_compile')))
        if result['compiled']!=dict(profile='native_create_exact_execution_v4' if args.execution_profile else
                'native_create_message_exact_preparation_v1',compiled=True,
                model_setters_called=0,store_called=False,write_authorized=False):
            raise ValueError('Original message fixed preparation compile profile differs')
        result_id='edit_'+fingerprint(dict(domain=domain,purpose=output.name+'-prepare'))
        for label in ('preparation','repeat-preparation'):
            raw=native(label,lambda a:a.prepare_create_history(domain,token,token,'applied',result_id))
            value={**raw,'message_origin':origin}
            result[label]=preparation(value,token=token,owner=token,state='applied',result_id=result_id,
                sequence=1,kind=old['operation']['kind'],current=bound['actual']['after'],
                expected=bound['prepared']['before'],oid=domain['oid'],creation_material=material)
            save()
        result['current_check']=witness('check','created-current-check')
        if result['current_check']['unchanged'] is not True:
            raise ValueError('Message preparation changed full original graphical/source/order/alias CURRENT')
        result['after']=baseline('after')
        result['immutable_after']={p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in immutable}
        if result['before']!=result['after'] or log.read(token)!=events or result['immutable_after']!=immutable:
            raise ValueError('Message pure preparation changed complete collected baseline or original failure/WAL')
        result['current_release']=witness('release','created-current-release')
        result['current_witness_retained']=not result['current_release']['released']
        pending.check(domain);result['isolated_pending']=False
        result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and not result['current_witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['current_witness_retained']:
            try:
                result['failure_check']=witness('check','failure-current-check')
                if result['failure_check']['unchanged'] is True:
                    result['failure_release']=witness('release','failure-current-release')
                    result['current_witness_retained']=not result['failure_release']['released']
            except Exception as failure:result['diagnostic_error']=str(failure)
        try:pending.check(domain);result['isolated_pending']=False
        except Exception:result['isolated_pending']=True
    finally:
        result['sources_match']=source_manifest()==result['source_manifest'];save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','observer_calls','execution_dispatched',
        'current_witness_retained','isolated_pending','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
