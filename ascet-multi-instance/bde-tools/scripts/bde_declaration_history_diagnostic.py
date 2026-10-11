"""Export the original variable head mismatch; never dispatch history or normalize it."""
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
from bd_declaration_material import schema
from bd_declaration_cache import classify
from bd_native_graphical_effects import _same_image
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_create_history_source import validate
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def compare(value):
    current, current_fields = schema(value['current'], value['current_schema'])
    recorded, fields = schema(value['recorded_after'], value['recorded_schema'])
    if not recorded.keys() <= current.keys():
        raise ValueError('Diagnostic cannot resolve every original retained object')
    changes = []
    for ref, old in recorded.items():
        new = current[ref]
        if ((old['class'], old['kind']) != (new['class'], new['kind']) or fields[ref] != current_fields[ref]):
            raise ValueError('Original diagnostic identity or class changed')
        if old['kind'] == 'fields':
            for index, (a,b) in enumerate(zip(old['value'], new['value'])):
                if a != b:
                    changes.append(dict(ref=ref,native_class=old['class'],field=fields[ref][index],before=a,after=b))
        elif not _same_image(old,old['value'],new['value']):
            changes.append(dict(ref=ref,native_class=old['class'],kind=old['kind'],before=old['value'],after=new['value']))
    return dict(changes=changes,new_objects=[r for ref,r in current.items() if ref not in recorded],
        recorded_objects=len(recorded),current_objects=len(current),recorded_head_matches=value['recorded_head_matches'])


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path);parser.add_argument('--verification',type=Path)
    parser.add_argument('--output',required=True,type=Path)
    parser.add_argument('--controls',action='store_true',help='Run native cache guard controls on detached images')
    args=parser.parse_args()
    source,output=args.source.resolve(),args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not all(p.is_relative_to(owned) for p in (source,output)):
        raise ValueError('Original owned capture and fresh diagnostic output required')
    if args.verification and not args.verification.resolve().is_relative_to(owned):
        raise ValueError('Owned preserved body verification required')
    old=json.loads((source/'result.json').read_text());manifest,process,epoch=live_manifest(old['manifest'])
    if not validate(source,old,epoch,args.verification):raise ValueError('Original variable declaration capture required')
    domain=old['domain'];pending.check(domain);output.mkdir(parents=True)
    result=dict(passed=False,source=str(source),manifest=old['manifest'],domain=domain,process_epoch=epoch,
        native_token=old['native_token'],source_manifest=source_manifest(),witness_retained=False,
        history_dispatched=False,model_setters_called=0,store_called=False,inverse_authorized=False,
        complete_case_pass=False,full_delivery=False)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for name in result['source_manifest']:
        target=output/'source'/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,target)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_DECLARATIONS='body_v1',
        ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1')
    witness_token='main_'+fingerprint(dict(domain=domain,purpose=output.name))
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def native(label,command):
            if live_manifest(old['manifest'])!=(manifest,process,epoch):raise ValueError('Original epoch changed; never rebind')
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(old['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=adapter._exchange(command)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label):return native(label,dict(cmd='main_readonly_witness',action=action,token=witness_token))
        result['capture']=witness('capture','current-capture');result['witness_retained']=True;save()
        result_id='edit_'+fingerprint(dict(domain=domain,purpose=output.name))
        result['diagnostic']=native('declaration-diagnostic',dict(cmd='create_history',action='cache_controls' if args.controls else 'diagnose',
            token=old['native_token'],owner=old['native_token'],state='applied',result_change_id=result_id,prepared_signature=''))
        if args.controls:
            d=result['diagnostic']
            names={'actual_cache_drift','model_attribute','configuration_field','original_string','wrong_cache_root','unreachable_new_object'}
            if (d.get('profile')!='native_declaration_cache_controls_v1' or d.get('declaration_unchanged') is not True
                    or len(d.get('controls',[]))!=len(names) or {r['name'] for r in d['controls']}!=names
                    or any(r['passed'] is not True for r in d['controls'])):
                raise ValueError('Native cache guard controls failed or declaration CURRENT changed')
            result['native_guard_controls_passed']=True
        else:
            result['differences']=compare(result['diagnostic'])
            d=result['diagnostic'];owner=next(r['ref'] for r in d['recorded_after']['objects'] if r['class']=='SGClass')
            result['cache_classification']=classify(d['recorded_after'],d['recorded_schema'],d['current'],d['current_schema'],owner=owner)
        result['check']=witness('check','current-check')
        if result['check']['unchanged'] is not True:raise ValueError('Diagnostic changed complete original CURRENT witness')
        result['release']=witness('release','current-release');result['witness_retained']=not result['release']['released']
        pending.check(domain);result['isolated_pending']=False;result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_check']=witness('check','failure-current-check')
                if result['failure_check']['unchanged'] is True:
                    result['failure_release']=witness('release','failure-current-release')
                    result['witness_retained']=not result['failure_release']['released']
            except Exception as diagnostic_error:result['diagnostic_error']=str(diagnostic_error)
    finally:save()
    display={k:result.get(k) for k in ('passed','error','witness_retained','history_dispatched')}
    if 'differences' in result:
        display.update(changed_entries=len(result['differences']['changes']),new_objects=len(result['differences']['new_objects']))
    print(json.dumps(display,ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
