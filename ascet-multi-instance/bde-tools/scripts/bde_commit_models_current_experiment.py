"""One current SG/resource query in the existing manifested process; no launch/restart/retry."""
import argparse
import json
import os
from pathlib import Path
import shutil
import time
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bd_commit_model_diff import recompute,validate_current
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True);p.add_argument('--preparation',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    args=p.parse_args();manifest,process,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original.get('passed') is not True or original['process_epoch']!=epoch:
        raise ValueError('Exact original existing process epoch required; no recapture/rebinding')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,native_token=original['native_token'],automatic_retry=False,
        process_started=False,process_restarted=False,model_setters_called=0,store_called=False,
        full_delivery=False,complete_case_pass=False,full_commit_resource_closure=False,inverse_authorized=False)
    service.write_once(args.output/'intent.json',result);start=time.perf_counter()
    try:
        compile_bridge()
        source=args.output/'source';source.mkdir()
        names=('AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs',
               'bd_native_structure.py','bd_commit_resources.py','bd_commit_model_diff.py','bd_commit_model_images.py',
               'bd_commit_resource_diff.py','bde_commit_status.st','bde_commit_registered_models_current.st',
               'bde_commit_registered_models.st','bde_commit_resources.st','bde_commit_prepare.st',
               'bde_commit_control.st','bd_commit_control.py','bd_commit_control_audit.py',
               'bde_commit_reference_record.st','bd_persistent_references.py','bde_commit_serializer_profile.st',Path(__file__).name)
        hashes={}
        for name in names:
            path=service.ROOT/'scripts'/name;shutil.copyfile(path,source/name);hashes[name]=service.digest(path.read_bytes())
        binary=service.ROOT/'analysis/live-api/AscetStructureSession.exe'
        shutil.copyfile(binary,source/binary.name);hashes[binary.name]=service.digest(binary.read_bytes())
        service.write_once(args.output/'source-manifest.json',hashes)
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                before=adapter.observe(original['domain'],[])
                retained=adapter._exchange(dict(cmd='commit_resources',action='audit',token=original['native_token']))
                service.write_once(args.output/'before-audit.json',retained)
                original_image=retained['registered_model_original_image']
                service.write_once(args.output/'check-intent.json',dict(native_token=original['native_token'],
                    action='check',replay_allowed=False,model_setters_authorized=False))
                checked=adapter.commit_resource_status(original['domain'],original['native_token'],check=True)
                service.write_once(args.output/'checked.json',checked)
                audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=original['native_token']))
                service.write_once(args.output/'audit.json',audit)
                changes=recompute(audit)
                after=adapter.observe(original['domain'],[])
                result.update(typed_graph_unchanged=after==before,original_before_image_unchanged=original_image==audit['registered_model_original_image'],
                    independent_actual_diff_equal=changes==checked['actual_changes'],actual_changes=changes,
                    model_change_count=checked['registered_model_summary']['actual_change_count'],
                    original_objects=audit['registered_models']['objects'],current_objects=len(audit['registered_model_checks'][-1]['after']['image']),
                    current_model_images_verified=True,native_commands=adapter.commands,
                    passed=after==before and original_image==audit['registered_model_original_image'] and changes==checked['actual_changes'])
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        result['source_unchanged']=all(service.digest((service.ROOT/'scripts'/name).read_bytes())==value
            for name,value in hashes.items() if name!=binary.name) and service.digest(binary.read_bytes())==hashes[binary.name]
        if not result['source_unchanged']:raise ValueError('Fixed source changed during the original query')
        _,_,final_epoch=live_manifest(args.manifest)
        if epoch!=final_epoch:raise ValueError('Original process epoch changed; cannot claim retained identity')
    except Exception as error:result['error']=repr(error);result['passed']=False
    result['wall_ms']=(time.perf_counter()-start)*1000
    service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','model_change_count','current_objects','independent_actual_diff_equal','typed_graph_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
