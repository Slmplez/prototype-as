"""Inspect one retained message terminal without retrying a factory or clearing quarantine."""
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


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
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
            or log.receipt(token,events)['status']!='outcome_unknown'):
        raise ValueError('Exact unknown original message creation required')
    marker=pending.pending_path(domain)
    expected=dict(domain=domain,command='create_apply',native_token=token,automatic_retry=False)
    if json.loads(marker.read_text(encoding='utf-8'))!=expected:
        raise ValueError('Original message quarantine differs')
    immutable={str(path):hashlib.sha256(path.read_bytes()).hexdigest()
        for path in [source/'result.json',marker,*directories[0].glob('*.json')]}
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
        result['material']=native('raw-actual-material',lambda a:a._exchange(dict(cmd='create_material',action='inspect_attached',token=token)))
        material=result['material']; declaration=material['declaration_material']
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
        result['material_repeat']=native('raw-actual-material-repeat',lambda a:a._exchange(dict(cmd='create_material',action='inspect_attached',token=token)))
        left=json.loads(json.dumps(material));right=json.loads(json.dumps(result['material_repeat']))
        for head in ('before','after'):
            if not same_current(left['declaration_material'].pop(head),right['declaration_material'].pop(head)):
                raise ValueError('Complete original message body changed across connections')
        if left!=right: raise ValueError('Complete original message terminal metadata changed across connections')
        result['current_check']=current('check','actual-current-check')
        if not result['current_check']['unchanged']:raise ValueError('Audit changed full current graphical/source/order/alias')
        result['current_release']=current('release','actual-current-release')
        result['witness_retained']=not result['current_release']['released']
        result['immutable_after']={path:hashlib.sha256(Path(path).read_bytes()).hexdigest() for path in immutable}
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
        'module_database_pointer','module_database_storage','observer_calls','witness_retained','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
