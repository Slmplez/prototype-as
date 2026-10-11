"""Formal graphical history finalization, complete original witness, explicit material cleanup."""
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
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_create_history_journal import context
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,verify_pages,wire_result
from bde_public_oracle import compare
from bd_class_configuration import validate_graph
from bde_tool_client import ToolClient
from bd_message_declaration_material import KINDS as MESSAGE_KINDS


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path);parser.add_argument('--output',required=True,type=Path)
    parser.add_argument('--resume',type=Path,help='Failed driver after a fully durable completed finalization; never re-dispatch source patch')
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Owned completed history and fresh output required')
    prior=json.loads((source/'result.json').read_text(encoding='utf-8'));creation=Path(prior['source'])
    initial=json.loads((creation/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(prior['manifest']);domain=prior['domain'];head=prior['final_head']
    if (prior['passed'] is not True or prior['process_epoch']!=epoch or not prior['typed_original_restored']
            or initial['operation']['kind'] not in {'literal','operator','variable','enumeration'}|MESSAGE_KINDS or initial['witness_retained'] is not True):
        raise ValueError('Exact retained graphical creation/complete history/original witness required')
    pending.check(domain);service.STORE=creation/'store';log=StructureJournal(service.STORE/'edits');failed=None;request=None
    if args.resume:
        resume=args.resume.resolve()
        if not resume.is_relative_to(owned):raise ValueError('Owned failed driver required')
        failed=json.loads((resume/'result.json').read_text(encoding='utf-8'))
        if (failed['passed'] is not False or Path(failed['source']).resolve()!=source or failed['domain']!=domain
                or failed['process_epoch']!=epoch or failed['head']!=head or failed['isolated_pending'] is not False
                or failed.get('edit',{}).get('status')!='finalized' or failed['material_retained'] is not True
                or failed['witness_retained'] is not True):
            raise ValueError('Exact retained completed finalization and failed driver required')
        rid=failed['edit']['change_id'];events=log.read(rid)
        from bd_create_finalize_journal import check,one
        from bd_create_finalize import observed
        intent=one(events,'intent');p=check(log,intent,one(events,'prepared')['create_finalize'],rid)
        observed(one(events,'observed')['create_finalize_actual'],p,oid=domain['oid'])
        if log.receipt(rid,events)['status']!='finalized' or p['owner_change_id']!=head:
            raise ValueError('Full durable finalized proof required; unknown cannot resume cleanup')
        request=json.loads((resume/'finalization-intent.json').read_text(encoding='utf-8'))['request']
        if request!=dict(change_id=head,request_id=intent['request_id'],finalize=True):
            raise ValueError('Original completed request differs')
        ctx=dict(native_token=p['native_token'],state='reverted')
    else:
        ctx=context(log,head)
        if ctx['state']!='reverted':raise ValueError('Completed original undo required')
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Formal original graphical finalization and full original material/witness release',
        source=str(source),creation_source=str(creation),manifest=prior['manifest'],process_epoch=epoch,domain=domain,
        component=prior['component'],native_token=ctx['native_token'],head=head,source_manifest=source_manifest(),
        formal_tool_calls=0,documents=[],material_retained=True,witness_retained=True,original_restored=False,
        finalize_dispatched=False,finalize_redispatched=False,resume_from=str(args.resume.resolve()) if failed else None,
        complete_case_pass=False,full_delivery=False,business_model_calls=0)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        dest=output/'source'/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,dest)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_FINALIZE='original_release_v1')
    enumeration=initial['operation']['kind']=='enumeration'
    message=initial['operation']['kind'] in MESSAGE_KINDS
    declaration=message or initial['operation']['kind'] in ('variable','enumeration')
    if initial['operation']['kind']=='variable':
        environment.update(ASCET_BD_CREATE_DECLARATIONS='body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='body_original_release_v1')
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
    calls=[]
    try:
        binary=build_oracle(output,scope_lifecycle=True)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def runtime():
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Original epoch changed; never rebind')
        def native(label,callback):
            runtime()
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=callback(adapter)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label):
            return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=initial['witness_token'])))
        def record(row):
            save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),row);calls.append(row);result['formal_tool_calls']=len(calls);save()
        def tool(label,name,arguments,offline=False,expected_error=False):
            runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client=ToolClient(output,domain['session'],record);client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
                start=len(calls);meta,body,error=client.call(name,arguments)
            frames=wire_result(wire);save_new(output/'call-wire'/(label+'.json'),frames)
            save_new(output/'responses'/(label+'.json'),dict(meta=meta,body=body,is_error=error))
            if error!=expected_error:raise ValueError('Unexpected formal finalization result '+label+': '+body)
            result['documents'].append(dict(label=label,**verify_pages(
                calls[start:],body,12288,expected_error=expected_error)))
            if offline and (frames['connections'] or frames['request']['frames']):raise ValueError('Offline finalization query accessed ASCET')
            return json.loads(body)
        result['before_finalization_witness']=witness('check','before-original-witness')
        if failed:result['preview']=failed['preview']
        else:
            request=dict(change_id=head,request_id=output.name+'-finalize',finalize=True)
            result['preview']=tool('preview','bd_revert',{**request,'preview':True})
            if result['preview']['status']!='preview':raise ValueError('Original finalization constraints failed')
            result['finalize_dispatched']=True
        save_new(output/'finalization-intent.json',dict(domain=domain,request=request,automatic_retry=False));save()
        result['edit']=tool('actual-completed-duplicate' if failed else 'actual','bd_revert',request,offline=bool(failed))
        rid=result['edit']['change_id']
        if result['edit']['status']!='finalized':raise ValueError('Actual finalization lacks complete terminal proof')
        result['after']=native('after-independent',lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),models=a.observe_models(domain)))
        if result['after']!=initial['before'] or not compare(result['after']['native']['entries'],result['after']['public'])['passed']:
            raise ValueError('Complete native/public/model original observation differs')
        result['configuration_after']=native('configuration-after',lambda a:a._exchange(dict(cmd='main_configuration')))
        validate_graph(result['configuration_after'],domain['oid'])
        if result['configuration_after']!=initial['configuration_before']:raise ValueError('Original persisted owner configuration differs')
        result['original_witness']=witness('check','original-witness')
        if result['original_witness']['unchanged'] is not True:raise ValueError('Complete original native/source/order/alias witness differs')
        versioned=result['edit'].get('namespace',{}).get('profile')=='allocator_scope_retirement_actual_v1'
        if versioned:
            from bd_scope_inventory import validate as validate_inventory
            result['inventory_material_retained']=native('inventory-material-retained',lambda a:a._exchange(dict(cmd='scope_inventory')))
            validate_inventory(result['inventory_material_retained'])
            scoped=next(r for r in result['inventory_material_retained']['entries'] if r['scope']==domain['oid']+'/Main')
            if not any(p.startswith('DogeBDEMainWorkflowWitnessesV1:') for p in scoped['pins']):
                raise ValueError('Original witness failed to pin finalizing namespace')
            guard_request=dict(snapshot=result['edit']['after_snapshot'],request_id=output.name+'-blocked',
                operations=[dict(op='create_block',kind='literal',name='9',position=[320,240])],preview=True)
            result['blocked_write']=tool('namespace-blocked-write','bd_edit',guard_request,expected_error=True)
            if 'retirement pending' not in json.dumps(result['blocked_write']).lower():
                raise ValueError('Ordinary write was not rejected by the actual retirement barrier')
            result['barrier_witness']=witness('check','barrier-original-witness')
            if not result['barrier_witness']['unchanged']:raise ValueError('Blocked request changed original witness')
        result['diff']=tool('diff','bd_diff',dict(change_id=rid),offline=True)
        result['duplicate']=tool('duplicate','bd_revert',request,offline=True)
        if result['duplicate']!=result['edit'] or result['diff']['source_differences']!=result['edit']['source_differences']:
            raise ValueError('Actual finalization offline diff/duplicate differs')
        result['terminal']=tool('terminal-query','bd_inspect',dict(query='recovery',change_id=rid))
        if not result['terminal'].get('terminal_verified') or result['terminal'].get('execution_redispatched') is not False:
            raise ValueError('Original finalization terminal query differs')
        if declaration and (result['terminal'].get('current_matches_terminal') is not True
                or result['terminal'].get('original_declaration_current_verified') is not True):
            raise ValueError('Complete initial declaration/cache baseline changed after independent reads; retain materials')
        if enumeration and result['terminal'].get('enum_definition_reference_targets_verified') is not True:
            raise ValueError('Fresh original Enum type/identity and both reference sources must be verified before release')
        if message and result['terminal'].get('message_owner_reference_targets_verified') is not True:
            raise ValueError('Fresh original Module proxy/type/role and both reference sources required before release')
        result['closed_preview']=tool('closed-history-preview','bd_revert',dict(change_id=head,request_id=output.name+'-closed',preview=True),
            offline=True,expected_error=True)
        if result['closed_preview']['status']!='rejected':raise ValueError('Closed original history still permits redo')
        pending.check(domain)
        save_new(output/'material-release-intent.json',dict(native_token=ctx['native_token'],original_witness=initial['witness_token'],automatic_retry=False))
        result['release']=native('material-release',lambda a:a.release(domain,ctx['native_token']))
        if result['release'].get('released') is not True:raise ValueError('Original graphical material release unconfirmed')
        result['material_retained']=False;save()
        from bd_edit_journal import file_lock
        with file_lock(log.root/'journal.lock'):
            events=log.read(rid);log._append(log._path(rid),events,'recovery_released',dict(native_token=ctx['native_token'],
                model_setters_called=0,store_called=False,original_native_source_verified=True))
        result['after_release_witness']=witness('check','after-release-original-witness')
        if result['after_release_witness']['unchanged'] is not True:raise ValueError('Material release changed complete original witness')
        if versioned:
            result['inventory_witness_only']=native('inventory-witness-only',lambda a:a._exchange(dict(cmd='scope_inventory')))
            validate_inventory(result['inventory_witness_only'])
            scoped=next(r for r in result['inventory_witness_only']['entries'] if r['scope']==domain['oid']+'/Main')
            if scoped['pins']!=['DogeBDEMainWorkflowWitnessesV1:'+initial['witness_token']]:
                raise ValueError('Expected only the complete original witness pin after material release')
            def refuse_retirement(adapter):
                try:adapter._exchange(dict(cmd='scope_retire',expected_generation=scoped['generation']))
                except Exception as error:
                    if 'Structural scope retained; refusing retirement' not in str(error):raise
                    return dict(refused=True,error=str(error),generation=scoped['generation'])
                raise ValueError('Pinned original witness allowed scope retirement')
            result['pinned_retirement']=native('pinned-retirement',refuse_retirement)
            result['pin_guard_witness']=witness('check','pin-guard-witness')
            if not result['pin_guard_witness']['unchanged']:raise ValueError('Rejected retirement changed the original witness')
            result['native_pin_policy_tests']=native('native-pin-policy',lambda a:a._exchange(dict(cmd='scope_policy_tests')))
            if not result['native_pin_policy_tests'].get('passed'):raise ValueError('Actual native pin policy controls failed')
        result['witness_release']=witness('release','original-witness-release');result['witness_retained']=not result['witness_release']['released']
        if versioned:
            result['fresh_namespace']=native('fresh-namespace',lambda a:a.observe(domain,[]))
            old_namespace=result['after']['native']
            if (result['fresh_namespace']['generation']<=old_namespace['generation']
                    or {k:v for k,v in result['fresh_namespace'].items() if k!='generation'}!=
                       {k:v for k,v in old_namespace.items() if k!='generation'}):
                raise ValueError('Automatic retirement did not issue a fresh generation preserving the complete typed graph')
            result['stale_write']=tool('stale-snapshot-write','bd_edit',dict(snapshot=result['edit']['after_snapshot'],
                request_id=output.name+'-stale',operations=[dict(op='create_block',kind='literal',name='9',position=[320,240])]),
                expected_error=True)
            if result['stale_write'].get('status')!='conflict':raise ValueError('Stale namespace was not rejected before actual create')
            result['after_stale']=native('after-stale',lambda a:a.observe(domain,[]))
            if result['after_stale']!=result['fresh_namespace']:raise ValueError('Stale actual write changed the complete diagram')
            result['namespace_retirement_verified']=True
        result['released_history_query']=tool('released-terminal-query','bd_inspect',dict(query='recovery',change_id=rid),offline=True)
        if result['released_history_query'].get('current_state')!='not_queried_material_released':
            raise ValueError('Released historical proof incorrectly claims live current verification')
        save_new(output/'finalization-journal.json',log.read(rid));save_new(output/'closed-head-journal.json',log.read(head))
        pending.check(domain);result['isolated_pending']=False;result['original_restored']=True
        if enumeration:
            result.update(enum_full_original_declaration_restored=True,enum_reference_targets_verified=True,
                allocator_baseline_restored=True)
        if message:
            result.update(message_full_original_declaration_restored=True,message_owner_reference_targets_verified=True,
                allocator_baseline_restored=True)
        result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and not result['material_retained'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        try:pending.check(domain);result['isolated_pending']=False
        except Exception as quarantine:result.update(isolated_pending=True,pending_error=str(quarantine))
        if result['witness_retained']:
            try:result['failure_witness']=witness('export','failure-original-witness')
            except Exception as diagnostic:result['diagnostic_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','isolated_pending','original_restored','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
