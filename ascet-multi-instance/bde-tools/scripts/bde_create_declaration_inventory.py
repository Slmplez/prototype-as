"""Read-only variable body role/slot audit, guarded by a full current graphical witness."""
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
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,wire_result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path);parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Retained owned variable creation and fresh output required')
    prior=json.loads((source/'result.json').read_text(encoding='utf-8'));domain=prior['domain']
    manifest,process,epoch=live_manifest(prior['manifest'])
    if (prior['passed'] is not True or prior['operation']['kind']!='variable' or prior['material_retained'] is not True
            or prior['process_epoch']!=epoch or prior['isolated_pending'] is not False):
        raise ValueError('Exact retained current-epoch actual variable creation required')
    pending.check(domain);output.mkdir(parents=True);service.STORE=output/'store'
    witness_token='main_'+fingerprint(dict(domain=domain,study=output.name))
    result=dict(passed=False,scope='Read-only role/slot inventory, not complete declaration capture or inverse',
        source=str(source),manifest=prior['manifest'],process_epoch=epoch,domain=domain,component=prior['component'],
        native_token=prior['native_token'],source_manifest=source_manifest(),witness_token=witness_token,witness_retained=False,
        model_setters_called=0,store_called=False,creation_redispatched=False,inverse_dispatched=False,
        complete_case_pass=False,full_delivery=False,business_model_calls=0)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for name in result['source_manifest']:
        target=output/'source'/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,target)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1')
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def native(label,callback):
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Exact epoch changed; never rebind')
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=callback(adapter)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label):return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness_token)))
        result['before']=native('before',lambda a:dict(native=a.observe(domain,[]),models=a.observe_models(domain)))
        if result['before']['native']!=prior['after']['native']:raise ValueError('Exact retained variable graph differs; no write/rebind')
        result['configuration_before']=native('configuration-before',lambda a:a._exchange(dict(cmd='main_configuration')))
        result['witness_capture']=witness('capture','current-witness-capture');result['witness_retained']=True;save()
        result['inventory']=native('declaration-inventory',lambda a:a._exchange(dict(cmd='main_declaration_inventory',token=prior['native_token'])))
        value=result['inventory']
        if (value['profile']!='retained_declaration_inventory_v1' or value['component_oid']!=domain['oid']
                or value['native_token']!=prior['native_token'] or value['complete_body_capture'] is not False
                or value['inverse_authorized'] is not False or value['model_setters_called']!=0 or value['store_called'] is not False):
            raise ValueError('Bounded zero-write declaration inventory receipt differs')
        for obj in value['objects']:
            if len(obj['field_names'])!=len(obj['fields']) or [r['field'] for r in obj['fields']]!=obj['field_names']:
                raise ValueError('Incomplete native role schema')
        result['after']=native('after',lambda a:dict(native=a.observe(domain,[]),models=a.observe_models(domain)))
        result['configuration_after']=native('configuration-after',lambda a:a._exchange(dict(cmd='main_configuration')))
        result['witness_check']=witness('check','current-witness-check')
        if (result['before']!=result['after'] or result['configuration_before']!=result['configuration_after']
                or result['witness_check']['unchanged'] is not True):raise ValueError('Read-only audit changed collected full current baselines')
        result['witness_release']=witness('release','current-witness-release');result['witness_retained']=not result['witness_release']['released']
        result['sources_match']=source_manifest()==result['source_manifest'];pending.check(domain);result['isolated_pending']=False
        result['passed']=result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:result['failure_witness']=witness('export','failure-current-witness')
            except Exception as diagnostic:result['diagnostic_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','witness_retained','isolated_pending','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
