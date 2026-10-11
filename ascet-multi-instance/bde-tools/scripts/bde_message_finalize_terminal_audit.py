"""Fresh released-message baseline and complete durable finalization audit; no model writes."""
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
from bd_create_finalize_journal import check,one,reconcile_locked
from bd_create_finalize import observed
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
    parser.add_argument('--source',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or any(not p.is_relative_to(owned) for p in (source,output)):
        raise ValueError('Passed owned message finalization and fresh audit output required')
    prior=json.loads((source/'result.json').read_text(encoding='utf-8'))
    domain=prior['domain'];manifest,process,epoch=live_manifest(prior['manifest'])
    for key in ('passed','original_restored','message_full_original_declaration_restored',
                'message_owner_reference_targets_verified','allocator_baseline_restored','namespace_retirement_verified','sources_match'):
        if prior.get(key) is not True:raise ValueError('Completed original message finalization required: '+key)
    if (prior['material_retained'] is not False or prior['witness_retained'] is not False
            or prior['isolated_pending'] is not False or epoch!=domain['process_epoch']
            or manifest['database']!=domain['database']):
        raise ValueError('Exact same-epoch released finalization required')
    creation=Path(prior['creation_source']).resolve();history=Path(prior['source']).resolve()
    if any(not p.is_relative_to(owned) for p in (creation,history)):raise ValueError('Exact owned original sources required')
    service.STORE=creation/'store';log=StructureJournal(service.STORE/'edits');rid=prior['edit']['change_id']
    events=log.read(rid);intent=one(events,'intent');p=check(log,intent,one(events,'prepared')['create_finalize'],rid)
    actual=observed(one(events,'observed')['create_finalize_actual'],p,oid=domain['oid'])
    if (p['profile']!='native_create_finalize_preparation_v5' or log.receipt(rid,events)['status']!='finalized'
            or not any(e['kind']=='recovery_released' for e in events)):
        raise ValueError('Complete original finalized/released v5 WAL required')
    pending.check(domain)
    files=[source/'result.json',history/'result.json',creation/'result.json',*service.STORE.glob('edits/edit_*/*.json')]
    hashes={str(file):hashlib.sha256(file.read_bytes()).hexdigest() for file in files}
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Fresh post-release message baseline plus complete historical v5 actual/WAL',
        source=str(source),history=str(history),creation_source=str(creation),manifest=prior['manifest'],domain=domain,
        source_manifest=source_manifest(),immutable_before=hashes,observer_calls=0,formal_tool_calls=0,
        model_setters_called=0,store_called=False,finalization_redispatched=False,witness_retained=False,
        material_retained=False,original_before_witness_retained=False,original_restored_at_finalization=True,
        complete_case_pass=False,full_delivery=False,business_model_calls=0)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save_new(output/'finalization-journal.json',events);save_new(output/'validated-preparation.json',p)
    save_new(output/'validated-actual.json',actual);save()
    for rel in result['source_manifest']:
        dest=output/'source'/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,dest)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',
        ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='message_body_exact_v1',
        ASCET_BD_CREATE_FINALIZE='original_release_v1',ASCET_BD_CREATE_DECLARATION_FINALIZE='message_body_original_release_v1')
    witness='main_'+fingerprint(dict(domain=domain,purpose=output.name))
    try:
        binary=build_oracle(output,scope_lifecycle=True)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def runtime():
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Original epoch changed; never rebind')
        def native(label,callback):
            runtime();result['observer_calls']+=1;save()
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as a:
                    a._ensure_open(domain);value=callback(a)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def current(action,label):return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness)))
        def baseline(label):
            value=native(label,lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),models=a.observe_models(domain),
                configuration=a._exchange(dict(cmd='main_configuration'))))
            if (not compare(value['native']['entries'],value['public'])['passed']
                    or value['native']!=prior['fresh_namespace'] or value['public']!=prior['after']['public']
                    or value['models']!=prior['after']['models'] or value['configuration']!=prior['configuration_after']):
                raise ValueError('Fresh post-release baseline differs from exact finalization result')
            return value
        result['before']=baseline('before');result['current_capture']=current('capture','current-capture')
        result['witness_retained']=True;save()
        calls=[]
        def record(value):save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),value);calls.append(value)
        def offline(label,name,arguments):
            runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client=ToolClient(output,domain['session'],record);client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
                meta,body,error=client.call(name,arguments)
            frames=wire_result(wire);save_new(output/(label+'.json'),dict(meta=meta,body=body,is_error=error,wire=frames))
            if error or frames['connections'] or frames['request']['frames'] or frames['response']['frames']:
                raise ValueError('Released historical request failed or accessed ASCET: '+label)
            return json.loads(body)
        result['diff']=offline('offline-actual-diff','bd_diff',dict(change_id=rid))
        request=json.loads((source/'finalization-intent.json').read_text(encoding='utf-8'))['request']
        result['duplicate']=offline('offline-duplicate','bd_revert',request)
        result['historical_query']=offline('offline-released-query','bd_inspect',dict(query='recovery',change_id=rid))
        result['formal_tool_calls']=len(calls)
        if (result['duplicate']!=prior['edit'] or result['diff']['declaration_differences']!=prior['edit']['declaration_differences']
                or result['historical_query']['current_state']!='not_queried_material_released'
                or result['historical_query']['execution_redispatched'] is not False):
            raise ValueError('Released exact actual diff/receipt/historical query differs')
        result['after']=baseline('after');result['current_check']=current('check','current-check')
        if result['before']!=result['after'] or result['current_check']['unchanged'] is not True:
            raise ValueError('Read-only audit changed full baseline or original current object witness')
        result['current_release']=current('release','current-release');result['witness_retained']=not result['current_release']['released']
        result['immutable_after']={file:hashlib.sha256(Path(file).read_bytes()).hexdigest() for file in hashes}
        pending.check(domain);result['isolated_pending']=False;result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and result['immutable_after']==hashes and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_check']=current('check','failure-current-check')
                if result['failure_check']['unchanged']:
                    result['failure_release']=current('release','failure-current-release');result['witness_retained']=not result['failure_release']['released']
            except Exception as diagnostic:result['diagnostic_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','observer_calls','formal_tool_calls','isolated_pending','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
