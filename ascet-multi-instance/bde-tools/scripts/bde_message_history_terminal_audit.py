"""Fresh read-only audit of original-object Module message histories and their durable WALs."""
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
from bd_create_history_journal import context,reconcile_locked
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,wire_result
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--history',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();history=args.history.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or any(not p.is_relative_to(owned) for p in (history,output)):
        raise ValueError('Passed retained owned message history and fresh audit output required')
    prior=json.loads((history/'result.json').read_text(encoding='utf-8'));source=Path(prior['source']).resolve()
    if not source.is_relative_to(owned):raise ValueError('Exact owned original message source required')
    old=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(prior['manifest']);domain=prior['domain'];head=prior['final_head']
    if (prior.get('passed') is not True or prior.get('message_same_object_history_verified') is not True
            or prior.get('owner_reference_targets_verified') is not True or prior.get('isolated_pending') is not False
            or prior.get('material_retained') is not True or prior.get('witness_retained') is not False
            or prior.get('undo_witness_retained') is not False or len(prior['histories'])!=3
            or epoch!=domain['process_epoch'] or domain['database']!=manifest['database']):
        raise ValueError('Exact same-epoch completed original message history required')
    service.STORE=source/'store';log=StructureJournal(service.STORE/'edits');ctx=context(log,head)
    if ctx['state']!='reverted' or ctx['sequence']!=4 or ctx['source']['domain']!=domain:
        raise ValueError('Complete message ancestry and final reverted direction required')
    pending.check(domain)
    immutable={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [source/'result.json',history/'result.json',*service.STORE.glob('edits/edit_*/*.json')]}
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Fresh original-object message history terminal and complete WAL audit only',
        history=str(history),source=str(source),manifest=prior['manifest'],domain=domain,process_epoch=epoch,
        native_token=prior['native_token'],final_head=head,source_manifest=source_manifest(),immutable_before=immutable,
        observer_calls=0,formal_tool_calls=0,model_setters_called=0,store_called=False,creation_redispatched=False,
        history_redispatched=False,material_retained=True,original_before_witness_retained=True,witness_retained=False,
        original_restored=False,complete_case_pass=False,full_delivery=False,business_model_calls=0)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save_new(output/'durable-context.json',ctx);save()
    for rel in result['source_manifest']:
        target=output/'source'/rel;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,target)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',
        ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='message_body_exact_v1')
    witness='main_'+fingerprint(dict(domain=domain,purpose=output.name))
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def runtime():
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Original message epoch changed; never rebind')
        def native(label,callback):
            runtime();result['observer_calls']+=1;save();wire=None
            try:
                with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as a:
                        a._ensure_open(domain);value=callback(a)
            except Exception as error:
                save_new(output/(label+'-failure.json'),dict(error=str(error),wire=wire_result(wire) if wire else None));raise
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def current(action,label):return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness)))
        def baseline(label):
            value=native(label,lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),models=a.observe_models(domain),
                configuration=a._exchange(dict(cmd='main_configuration'))))
            if not compare(value['native']['entries'],value['public'])['passed']:raise ValueError('Full native/public graph differs')
            return value
        result['before']=baseline('before');result['current_capture']=current('capture','current-capture')
        result['witness_retained']=True;save()
        result['terminal']=native('fresh-message-terminal',lambda a:reconcile_locked(log,head,a,commit=False))
        if (result['terminal']['terminal_verified'] is not True or result['terminal']['owner_reference_targets_verified'] is not True
                or result['terminal']['execution_redispatched'] is not False or result['terminal']['instance_quarantined'] is not False):
            raise ValueError('Fresh complete original message owner/type/reference terminal proof missing')
        calls=[]
        def record(value):save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),value);calls.append(value)
        def offline_tool(label,name,arguments):
            runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client=ToolClient(output,domain['session'],record);client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
                meta,body,error=client.call(name,arguments)
            frames=wire_result(wire);save_new(output/(label+'.json'),dict(meta=meta,body=body,is_error=error,wire=frames))
            if error or frames['connections'] or frames['request']['frames'] or frames['response']['frames']:
                raise ValueError('Offline durable message request failed or accessed ASCET: '+label)
            return json.loads(body)
        result['diff']=offline_tool('offline-actual-diff','bd_diff',dict(change_id=head))
        request=json.loads((history/'undo-again-intent.json').read_text(encoding='utf-8'))['request']
        result['duplicate']=offline_tool('offline-duplicate','bd_revert',request);result['formal_tool_calls']=len(calls)
        if result['duplicate']!=prior['histories'][-1]['receipt'] or result['diff']['declaration_differences']!=result['duplicate']['declaration_differences']:
            raise ValueError('Complete original actual diff/duplicate receipt differs')
        result['after']=baseline('after')
        if (result['before']!=result['after'] or result['after']['native']!=ctx['current']
                or result['after']['models']!=old['before']['models'] or result['after']['configuration']!=old['configuration_before']):
            raise ValueError('Read-only audit changed full model/configuration/current baseline')
        result['current_check']=current('check','current-check')
        if result['current_check']['unchanged'] is not True:raise ValueError('Audit changed original native/source/order/alias witness')
        result['current_release']=current('release','current-release');result['witness_retained']=not result['current_release']['released']
        result['immutable_after']={p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in immutable}
        pending.check(domain);result['isolated_pending']=False;result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and result['immutable_after']==immutable and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_check']=current('check','failure-current-check')
                if result['failure_check']['unchanged']:
                    result['failure_release']=current('release','failure-current-release');result['witness_retained']=not result['failure_release']['released']
            except Exception as e:result['diagnostic_error']=str(e)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','observer_calls','formal_tool_calls','isolated_pending','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
