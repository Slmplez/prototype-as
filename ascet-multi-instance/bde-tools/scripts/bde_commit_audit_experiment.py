"""Export retained values and independently recompute the complete direct-resource delta."""
import argparse
import json
import os
from pathlib import Path
import bd_service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bd_commit_resource_diff import recompute
from bde_isolated_runtime import live_manifest
from bde_experiments import proxy


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True);p.add_argument('--preparation',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--check-model-refusal',action='store_true',help='Verify loaded-model current check is explicitly refused; never replay edit')
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text())
    if original.get('passed') is not True or original['process_epoch']!=epoch:
        raise ValueError('Exact original prepared epoch required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,automatic_retry=False,process_epoch=epoch,complete_case_pass=False,full_delivery=False)
    bd_service.write_once(args.output/'intent.json',result)
    try:
        compile_bridge()
        with bd_service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                adapter._ensure_open(original['domain'])
                audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=original['native_token']))
                bd_service.write_once(args.output/'audit.json',audit)
                if (audit['profile']!='native_commit_audit_v1' or audit['native_token']!=original['native_token']
                        or audit['prepared_receipt']!=original['prepared_resources'][0]):
                    raise ValueError('Exact original full retained audit required')
                if audit['prepared_receipt']['profile']=='native_commit_prepare_v2':
                    from bd_commit_model_images import validate_audit
                    result['registered_models_validation']=validate_audit(audit)
                    if audit['checks'] or audit['last_actual_changes'] is not None:
                        raise ValueError('Loaded-model capture-only profile cannot claim a current complete diff')
                    result.update(passed=True,check_count=0,current_model_diff_verified=False,
                        original_cache_entries=audit['original_capture']['before_read']['cache_size'])
                    if args.check_model_refusal:
                        bd_service.write_once(args.output/'model-check-intent.json',dict(native_token=original['native_token'],
                            action='check',model_setters_authorized=False,automatic_retry=False))
                        try:adapter._exchange(dict(cmd='commit_resources',action='check',token=original['native_token']))
                        except RuntimeError as error:
                            result['model_check_refused']=str(error)
                        else:raise ValueError('Incomplete loaded-model profile claimed a complete current diff')
                        if 'Loaded registered model post-image/diff not implemented' not in result['model_check_refused']:
                            raise ValueError('Loaded-model check refused for a different reason')
                        retained=adapter._exchange(dict(cmd='commit_resources',action='audit',token=original['native_token']))
                        bd_service.write_once(args.output/'audit-after-refusal.json',retained)
                        result['material_unchanged_after_refusal']=retained==audit
                        if not result['material_unchanged_after_refusal']:
                            raise ValueError('Refused loaded-model check changed original evidence')
                else:
                    if not audit['checks']:raise ValueError('Original direct-resource delta requires retained current evidence')
                    actual=recompute(audit['original_capture'],audit['checks'][-1])
                    result.update(actual_changes=actual,native_actual_changes=audit['last_actual_changes'],
                        independent_actual_diff_equal=actual==audit['last_actual_changes'],check_count=len(audit['checks']),
                        original_cache_entries=audit['original_capture']['after_read']['cache_size'],
                        original_record_bytes=sum(row['logical_size'] for row in audit['original_capture']['records']),
                        passed=actual==audit['last_actual_changes'])
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
    except Exception as error:result['error']=repr(error)
    bd_service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','independent_actual_diff_equal','check_count')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
