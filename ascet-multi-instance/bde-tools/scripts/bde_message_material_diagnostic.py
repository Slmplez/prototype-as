"""Read retained declarations after a failed message audit; never replay or reconcile."""
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
from bd_create_material import observation
from bd_edit_journal import fingerprint
from bd_message_material_diagnostic import validate,same_diagnostic
from bd_native_graphical_effects import same_current
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,wire_result


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path)
    parser.add_argument('--failed-audit',required=True,type=Path)
    parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args();source=args.source.resolve();failed=args.failed_audit.resolve();output=args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or any(not p.is_relative_to(owned) for p in (source,failed,output)):
        raise ValueError('Retained owned original message/audit and fresh diagnostic output required')
    old=json.loads((source/'result.json').read_text(encoding='utf-8'))
    audit=json.loads((failed/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(old['manifest']);domain=old['domain'];token=old['native_token']
    if (old.get('creation_dispatched') is not True or old.get('material_retained') is not True
            or old.get('witness_retained') is not True or domain['process_epoch']!=epoch
            or domain['database']!=manifest['database'] or audit.get('source')!=str(source)
            or audit.get('native_token')!=token or audit.get('passed') is not False
            or 'Actual retained declaration body/configuration changed' not in audit.get('error','')
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact original isolated retained declaration-audit failure required')
    pending.check(domain);log=StructureJournal(source/'store/edits');events=log.read(token)
    if log.receipt(token,events)['status']!='applied_observed':raise ValueError('Original confirmed applied creation required')
    prepared=next(e['payload'] for e in events if e['kind']=='prepared')
    actual=next(e['payload'] for e in events if e['kind']=='observed');material=actual['create_material_actual']
    checked=observation(prepared['before'],actual['after'],prepared['create_material_prepared'],material,
        token=token,oid=domain['oid'],kind=old['operation']['kind'])
    if any(actual.get(k)!=v for k,v in checked.items()):raise ValueError('Original complete message WAL mismatch')
    immutable={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [source/'result.json',failed/'result.json',*(source/'store/edits'/token).glob('*.json')]}
    output.mkdir(parents=True)
    result=dict(passed=False,source=str(source),failed_audit=str(failed),manifest=old['manifest'],domain=domain,
        process_epoch=epoch,component=old['component'],native_token=token,source_manifest=source_manifest(),
        immutable_before=immutable,observer_calls=0,model_setters_called=0,store_called=False,
        creation_redispatched=False,original_material_retained=True,original_before_witness_retained=True,
        temporary_witness_retained=False,original_restored=False,complete_case_pass=False,full_delivery=False)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        target=output/'source'/rel;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,target)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_DECLARATIONS='message_body_v1')
    witness='main_'+fingerprint(dict(domain=domain,purpose=str(output)))
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def native(label,callback):
            if live_manifest(old['manifest'])!=(manifest,process,epoch):raise ValueError('Original epoch changed; never rebind')
            result['observer_calls']+=1;save();wire=None
            try:
                with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'],timeout=35,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain);value=callback(adapter)
            except Exception as error:
                save_new(output/(label+'-failure.json'),dict(error=str(error),wire=wire_result(wire) if wire is not None else None));raise
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def current(action,label):return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=witness)))
        result['compiled']=native('diagnostic-compile',lambda a:a._exchange(dict(cmd='message_material_diagnostic_compile')))
        result['temporary_witness_retained']=True;save();result['capture']=current('capture','current-capture')
        for label in ('diagnostic','repeat-diagnostic'):
            result[label]=native(label,lambda a:a._exchange(dict(cmd='message_material_diagnostic',token=token)))
            result[label+'-analysis']=validate(result[label],material,token=token,oid=domain['oid']);save()
        left=result['diagnostic'];right=result['repeat-diagnostic']
        if not same_diagnostic(left,right):
            raise ValueError('Full current declarations changed across diagnostic connections')
        result['current_check']=current('check','current-check')
        if result['current_check']['unchanged'] is not True:raise ValueError('Diagnostic changed full current graphical/source/order/alias')
        result['current_release']=current('release','current-release')
        result['temporary_witness_retained']=not result['current_release']['released']
        result['immutable_after']={p:hashlib.sha256(Path(p).read_bytes()).hexdigest() for p in immutable}
        if result['immutable_after']!=immutable or log.read(token)!=events:raise ValueError('Original audit/WAL modified')
        pending.check(domain);result['isolated_pending']=False
        result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and not result['temporary_witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['temporary_witness_retained']:
            try:
                result['failure_check']=current('check','failure-current-check')
                if result['failure_check']['unchanged']:
                    result['failure_release']=current('release','failure-current-release')
                    result['temporary_witness_retained']=not result['failure_release']['released']
            except Exception as diagnostic:result['cleanup_error']=str(diagnostic)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','cleanup_error','observer_calls',
        'temporary_witness_retained','isolated_pending','sources_match')},ensure_ascii=False))
    if result.get('diagnostic-analysis'):print(json.dumps(result['diagnostic-analysis'],ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
