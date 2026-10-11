"""Compile and zero-write check original graphical allocator finalization on a completed undo."""
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
import bd_instance_pending as pending
from bd_edit_journal import fingerprint,clone
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_create_history_journal import context
from bd_create_finalize import preparation
from bd_message_declaration_material import KINDS as MESSAGE_KINDS
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,wire_result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path,help='Passed actual graphical history experiment')
    parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Owned completed history and fresh output required')
    prior=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(prior['manifest'])
    if prior['passed'] is not True or prior['process_epoch']!=epoch or not prior['typed_original_restored']:
        raise ValueError('Same-epoch passed history with complete original typed graph required')
    creation=Path(prior['source']);domain=prior['domain'];head=prior['final_head'];pending.check(domain)
    log=StructureJournal(creation/'store/edits');ctx=context(log,head)
    if ctx['state']!='reverted':raise ValueError('Completed original-object undo required')
    from bd_create_finalize_journal import context as finalize_context
    final_ctx=finalize_context(log,head);original=final_ctx['original'];output.mkdir(parents=True)
    result=dict(passed=False,scope='Fixed original graphical allocator finalization zero-write preparation',
        source=str(source),manifest=prior['manifest'],domain=domain,component=prior['component'],process_epoch=epoch,
        head=head,native_token=ctx['native_token'],source_manifest=source_manifest(),execution_dispatched=False,
        witness_retained=False,original_restored=False,complete_case_pass=False,full_delivery=False)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        dest=output/'source'/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,dest)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_FINALIZE='original_release_v1')
    if ctx['source']['arguments'][1]=='variable':
        environment.update(ASCET_BD_CREATE_DECLARATIONS='body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='body_original_release_v1')
    enumeration=ctx['source']['arguments'][1]=='enumeration'
    message=ctx['source']['arguments'][1] in MESSAGE_KINDS
    if enumeration:
        environment.update(ASCET_BD_CREATE_DECLARATIONS='enum_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='enum_body_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='enum_body_original_release_v1')
    if message:
        if (prior.get('message_same_object_history_verified') is not True
                or prior.get('owner_reference_targets_verified') is not True
                or prior['native_token']!=ctx['native_token']):
            raise ValueError('Exact verified original Module message history required')
        environment.update(ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='message_body_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='message_body_original_release_v1')
        result['immutable_before']={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in
            [source/'result.json',creation/'result.json',*(creation/'store/edits').glob('edit_*/*.json')]}
    witness_token='main_'+fingerprint(dict(domain=domain,purpose=output.name))
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def native(label,callback):
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Original epoch changed; never rebind')
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=callback(adapter)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label):return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness_token)))
        result['current_capture']=witness('capture','current-capture');result['witness_retained']=True;save()
        if enumeration or message:
            result['independent_before']=native('independent-before',lambda a:dict(native=a.observe(domain,[]),
                public=a.observe_public(domain),models=a.observe_models(domain),
                configuration=a._exchange(dict(cmd='main_configuration'))))
        result['compiled']=native('compile',lambda a:a._exchange(dict(cmd='create_finalize_compile')))
        rid='edit_'+fingerprint(dict(domain=domain,purpose=output.name+'-prepare'))
        value=native('preparation',lambda a:a.prepare_create_finalize(domain,ctx['native_token'],head,rid))
        if enumeration:value={**value,'enum_origin':clone(ctx['enum_origin'])}
        if message:value={**value,'message_origin':clone(ctx['message_origin'])}
        result['preparation']=preparation(value,token=ctx['native_token'],owner=head,result_id=rid,sequence=ctx['sequence'],
            current=ctx['current'],original=original,oid=domain['oid'])
        if ctx['source']['arguments'][1]=='variable':
            from bd_declaration_finalize import preparation as declaration_preparation
            declaration_preparation(value['declaration_evidence'],previous=ctx['declaration_head'],
                original=final_ctx['declaration_original'],model_oid=ctx['created_model_oid'])
        if message:
            repeated=native('preparation-again',lambda a:a.prepare_create_finalize(domain,ctx['native_token'],head,rid))
            repeated={**repeated,'message_origin':clone(ctx['message_origin'])}
            result['preparation_again']=preparation(repeated,token=ctx['native_token'],owner=head,result_id=rid,
                sequence=ctx['sequence'],current=ctx['current'],original=original,oid=domain['oid'])
            result['message_original_before_and_latest_head_bound']=True
        if enumeration or message:
            result['independent_after']=native('independent-after',lambda a:dict(native=a.observe(domain,[]),
                public=a.observe_public(domain),models=a.observe_models(domain),
                configuration=a._exchange(dict(cmd='main_configuration'))))
            if result['independent_before']!=result['independent_after']:
                raise ValueError('Original declaration finalization preflight changed independent native/public/models/configuration')
            if enumeration:result['enum_original_before_and_latest_head_bound']=True
        result['current_check']=witness('check','current-check')
        if result['current_check']['unchanged'] is not True:raise ValueError('Finalization preparation changed complete current witness')
        result['current_release']=witness('release','current-release');result['witness_retained']=not result['current_release']['released']
        pending.check(domain);result['isolated_pending']=False;result['sources_match']=source_manifest()==result['source_manifest']
        if message:
            result['immutable_after']={p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in result['immutable_before']}
            if result['immutable_before']!=result['immutable_after']:
                raise ValueError('Message finalization preflight changed immutable original/history evidence')
        result['passed']=result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_check']=witness('check','failure-current-check')
                if result['failure_check']['unchanged'] is True:
                    result['failure_release']=witness('release','failure-current-release');result['witness_retained']=not result['failure_release']['released']
            except Exception as diagnostic:result['diagnostic_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','execution_dispatched','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
