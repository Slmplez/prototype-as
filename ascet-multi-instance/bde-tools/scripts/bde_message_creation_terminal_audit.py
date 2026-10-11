"""Independently verify one confirmed message terminal, original WAL, offline diff and duplicate."""
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
from bd_declaration_material import schema
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_native_graphical_effects import same_current
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_public_oracle import compare
from bde_tool_client import ToolClient
from bd_create_material import same_material, observation
from bd_message_material_diagnostic import validate as validate_diagnostic


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--prior-recovery',type=Path,help='Release only its exact unchanged temporary read witness')
    args=parser.parse_args(); source=args.source.resolve(); output=args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Existing owned message failure and fresh owned audit required')
    old=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(old['manifest']); domain=old['domain']
    if (old.get('creation_dispatched') is not True or epoch!=domain['process_epoch']
            or domain['database']!=manifest['database']
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact retained isolated message epoch required')
    service.STORE=source/'store'; log=StructureJournal(service.STORE/'edits')
    directories=list((service.STORE/'edits').glob('edit_*'))
    if len(directories)!=1: raise ValueError('One retained original message WAL required')
    token=directories[0].name; events=log.read(token); intent=events[0]['payload']
    if (intent['domain']!=domain or intent['operation']!='create_block'
            or intent['arguments'][1] not in ('receive_message','send_message','send_receive_message')
            or log.receipt(token,events)['status']!='applied_observed'):
        raise ValueError('Exact confirmed original message creation required')
    marker=pending.pending_path(domain)
    expected=dict(domain=domain,command='create_apply',native_token=token,automatic_retry=False)
    if marker.exists():raise ValueError('Confirmed creation still has an unresolved instance request')
    immutable={str(path):hashlib.sha256(path.read_bytes()).hexdigest()
        for path in [source/'result.json',*directories[0].glob('*.json')]}
    output.mkdir(parents=True)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_DECLARATIONS='message_body_v1')
    witness='main_'+fingerprint(dict(domain=domain,purpose=output.name))
    result=dict(passed=False,source=str(source),manifest=old['manifest'],process_epoch=epoch,domain=domain,
        native_token=token,source_manifest=source_manifest(),immutable_before=immutable,
        observer_calls=0,model_setters_called=0,store_called=False,creation_redispatched=False,
        quarantine_cleared=False,witness_retained=False,original_restored=False,
        complete_case_pass=False,full_delivery=False)
    def save():
        (output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        destination=output/'source'/rel;destination.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/rel,destination)
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter): build=staticmethod(lambda:binary)
        def native(label,callback):
            if live_manifest(old['manifest'])!=(manifest,process,epoch):
                raise ValueError('Original message runtime changed; cannot rebind')
            result['observer_calls']+=1
            wire=None
            try:
                with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain);value=callback(adapter)
            except Exception as error:
                save_new(output/(label+'-failure.json'),dict(error=str(error),wire=None if wire is None else wire_result(wire)))
                raise
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));save()
            return value
        def current(action,label):
            return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness)))
        result['current_capture']=current('capture','actual-current-capture'); result['witness_retained']=True;save()
        result['status']=native('retained-status',lambda a:a.recovery_status(domain,token))
        prepared=next(event['payload'] for event in events if event['kind']=='prepared')
        actual=next(event['payload'] for event in events if event['kind']=='observed')
        # The factory image is durable history. Normal ASCET reads may populate
        # audited lazy caches, so prove the complete live body before separately
        # exporting retained original metadata; never call it a fresh exact image.
        def complete_diagnostic(label):
            raw=native(label,lambda a:a._exchange(dict(cmd='message_material_diagnostic',token=token)))
            checked=validate_diagnostic(raw,actual['create_material_actual'],token=token,oid=domain['oid'])
            if checked['safe_for_history_preparation'] is not True:
                raise ValueError('Complete live message declaration/cache/native/source guard refused')
            return raw,checked
        result['material_diagnostic'],result['material_diagnostic_analysis']=complete_diagnostic('complete-current-declaration')
        result['material']=native('retained-original-material',lambda a:a._exchange(dict(cmd='create_material',action='inspect_attached_read_cache',token=token)))
        result['material_observation_source']='retained_original_images_with_complete_live_read_cache_guard'
        material=result['material']; declaration=material['declaration_material']
        checked=observation(prepared['before'],actual['after'],prepared['create_material_prepared'],
            actual['create_material_actual'],token=token,oid=domain['oid'],kind=intent['arguments'][1])
        if any(actual.get(key)!=value for key,value in checked.items()):
            raise ValueError('Durable message diff differs from complete original material')
        if not same_material(material,actual['create_material_actual'],token=token,oid=domain['oid'],kind=intent['arguments'][1],phase='attached'):
            raise ValueError('Complete retained original message head differs from durable actual WAL')
        result['wal_checked']=True
        if material['profile']!='native_create_material_v4' or declaration['profile']!='native_message_declaration_material_v1':
            raise ValueError('Exact original message material profile required')
        objects,fields=schema(declaration['after'],declaration['after_schema'])
        model=declaration['created_model_ref']; module=declaration['owner_ref']
        def slot(ref,name):return objects[ref]['value'][fields[ref].index(name)]
        owner=slot(model,'owner'); module_storage=slot(module,'dbObject')
        result['owner_pointer']=owner
        result['owner_storage']=objects.get(owner.get('ref'))
        result['module_database_pointer']=module_storage
        result['module_database_storage']=objects.get(module_storage.get('ref'))
        result['inventory']=native('created-declaration-inventory',lambda a:a._exchange(dict(cmd='message_declaration_inventory')))
        inventory=result['inventory']
        def inventory_slot(role,name):
            row=next(row for row in inventory['objects'] if row['role']==role)
            return next(field['value'] for field in row['fields'] if field['field']==name)
        result['owner_database_descriptor']=inventory_slot('model:'+declaration['request_name'],'owner')
        result['module_database_descriptor']=inventory_slot('owner','dbObject')
        result['audited_owner_database_identity_equal']=(
            result['owner_database_descriptor']['database_oid']==domain['oid']
            and result['module_database_descriptor']['database_oid']==domain['oid']
            and result['owner_database_descriptor']['database_class']=='SGModule'
            and result['module_database_descriptor']['database_class']=='SGModule')
        result['independent']=native('independent-after',lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),
            models=a.observe_models(domain),configuration=a._exchange(dict(cmd='main_configuration'))))
        if (result['status']['state']!='applied' or result['independent']['native']!=material['after']
                or not compare(material['after']['entries'],result['independent']['public'])['passed']):
            raise ValueError('Retained original terminal differs from independent current projection')
        result['material_repeat']=native('retained-original-material-repeat',lambda a:a._exchange(dict(cmd='create_material',action='inspect_attached_read_cache',token=token)))
        result['material_diagnostic_repeat'],result['material_diagnostic_repeat_analysis']=complete_diagnostic('complete-current-declaration-repeat')
        result['live_complete_declaration_cache_guard_verified']=True
        result['read_cache_changed_during_audit']=not same_current(result['material_diagnostic']['current'],result['material_diagnostic_repeat']['current'])
        left=json.loads(json.dumps(material));right=json.loads(json.dumps(result['material_repeat']))
        for head in ('before','after'):
            if not same_current(left['declaration_material'].pop(head),right['declaration_material'].pop(head)):
                raise ValueError('Complete original message body changed across connections')
        if left!=right: raise ValueError('Complete original message terminal metadata changed across connections')
        calls=[]
        def record(call):
            save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),call);calls.append(call)
        def offline_tool(label,name,request):
            if live_manifest(old['manifest'])!=(manifest,process,epoch):raise ValueError('Original runtime changed')
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client=ToolClient(output,domain['session'],record)
                client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
                meta,body,error=client.call(name,request)
            frames=wire_result(wire)
            save_new(output/(label+'.json'),dict(meta=meta,body=body,is_error=error,wire=frames))
            if error or frames['connections'] or frames['request']['frames']:
                raise ValueError('Offline message request failed or called native: '+label)
            return json.loads(body)
        result['diff']=offline_tool('offline-actual-diff','bd_diff',dict(change_id=token))
        request=json.loads((source/'forward-intent.json').read_text(encoding='utf-8'))['request']
        result['duplicate']=offline_tool('offline-duplicate','bd_edit',request)
        if result['duplicate']['status']!='applied_observed' or result['duplicate']['change_id']!=token:
            raise ValueError('Duplicate did not preserve original confirmed change identity')
        result['formal_tool_calls']=len(calls)
        if args.prior_recovery is not None:
            prior=args.prior_recovery.resolve()
            if not prior.is_relative_to(owned):raise ValueError('Owned previous recovery required')
            previous=json.loads((prior/'result.json').read_text(encoding='utf-8'))
            if previous['domain']!=domain or previous['native_token']!=token or previous.get('creation_redispatched') is not False:
                raise ValueError('Previous read witness does not belong to this exact original terminal')
            prior_token=previous.get('current_witness_token') or previous['failure_witness']['token']
            result['prior_readonly_check']=native('prior-readonly-check',lambda a:a._exchange(dict(
                cmd='main_readonly_witness',action='check',token=prior_token)))
            if not result['prior_readonly_check']['unchanged']:raise ValueError('Previous read witness changed; retain it')
            result['prior_readonly_release']=native('prior-readonly-release',lambda a:a._exchange(dict(
                cmd='main_readonly_witness',action='release',token=prior_token)))
            if not result['prior_readonly_release']['released']:raise ValueError('Previous read witness release not confirmed')
        result['current_check']=current('check','actual-current-check')
        if not result['current_check']['unchanged']:raise ValueError('Audit changed full current graphical/source/order/alias')
        result['current_release']=current('release','actual-current-release')
        result['witness_retained']=not result['current_release']['released']
        result['immutable_after']={path:hashlib.sha256(Path(path).read_bytes()).hexdigest() for path in immutable}
        pending.check(domain);result['isolated_pending']=False
        result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=(result['immutable_after']==immutable and result['sources_match']
            and not result['witness_retained'] and result['audited_owner_database_identity_equal'])
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_witness']=current('check','failure-current-check')
                if result['failure_witness']['unchanged']:
                    result['failure_release']=current('release','failure-current-release')
                    result['witness_retained']=not result['failure_release']['released']
            except Exception as diagnostic:result['diagnostic_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','diagnostic_error','owner_pointer','owner_storage',
        'module_database_pointer','module_database_storage','observer_calls','formal_tool_calls','isolated_pending','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
