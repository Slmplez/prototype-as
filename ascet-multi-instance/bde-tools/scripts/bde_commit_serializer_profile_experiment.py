"""Read fixed serializer metadata in the existing original process without serializing."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest
from bde_acceptance import source_manifest


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('manifest','preparation','output'):p.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original.get('passed') is not True or original['process_epoch']!=epoch:raise ValueError('Original live preparation required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,process_started=False,process_restarted=False,automatic_retry=False,
        full_delivery=False,model_edit_verified=False,serialization_called=False)
    service.write_once(args.output/'intent.json',result)
    try:
        inputs=source_manifest()
        service.write_once(args.output/'source-manifest.json',inputs)
        source=service.ROOT/'scripts/bde_commit_serializer_profile.st'
        (args.output/'profile-source.st').write_bytes(source.read_bytes())
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                before=adapter.observe(original['domain'],[])
                evidence=adapter._exchange(dict(cmd='commit_serializer_profile',token=original['native_token']))
                service.write_once(args.output/'profile.json',evidence)
                after=adapter.observe(original['domain'],[])
                result.update(typed_graph_unchanged=after==before,profile_index=evidence['profile_index'],
                    native_commands=adapter.commands,roles={r['role']:r['binding']['class'] for r in evidence['image']},
                    runtime_dispatches=len(evidence['dispatches']),
                    method_identity_checked_twice=evidence.get('method_identity_checked_twice'),
                    complete_literal_descriptors=evidence.get('complete_literal_descriptors'),
                    call_closure_complete=evidence.get('call_closure_complete'))
                result['passed']=(after==before and evidence['serialization_called'] is False and evidence['model_setters_called']==0
                    and evidence['profile']=='native_commit_serializer_profile_v2'
                    and evidence['method_identity_checked_twice'] is True and evidence['complete_literal_descriptors'] is True
                    and evidence['method_evidence_count']==16 and len(evidence['dispatches'])==16
                    and evidence['call_closure_complete'] is False)
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
        result['native_source_unchanged']=source.read_bytes()==(args.output/'profile-source.st').read_bytes()
        if not result['native_source_unchanged']:raise ValueError('Native profile source changed during execution')
    except Exception as error:result['error']=repr(error);result['passed']=False
    service.write_once(args.output/'result.json',result)
    print(json.dumps({key:result.get(key) for key in ('passed','error','roles','runtime_dispatches','typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
