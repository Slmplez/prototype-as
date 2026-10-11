"""Verify a retained failed capture cannot lose its original prepared root; no restart."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_isolated_runtime import live_manifest
from bde_experiments import proxy


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('manifest','preparation','output'):p.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original['process_epoch']!=epoch or original.get('passed') is not False:
        raise ValueError('Exact existing failed preparation required')
    token=original['edit']['change_id']
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,native_token=token,process_started=False,process_restarted=False,
        automatic_retry=False,full_delivery=False,model_edit_verified=False)
    service.write_once(args.output/'intent.json',result)
    try:
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                before=adapter.observe(original['domain'],[])
                held_before=adapter.recovery_status(original['domain'],token)
                try:adapter.discard_prepared(original['domain'],token)
                except Exception as error:result['release_error']=str(error)
                held_after=adapter.recovery_status(original['domain'],token)
                after=adapter.observe(original['domain'],[])
                service.write_once(args.output/'held-before.json',held_before)
                service.write_once(args.output/'held-after.json',held_after)
                result.update(original_prepared_retained=held_before==held_after,typed_graph_unchanged=after==before,native_commands=adapter.commands)
                result['passed']=(held_before==held_after and before==after and 'Incomplete commit capture must remain pinned' in result.get('release_error',''))
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
    except Exception as error:result['error']=repr(error);result['passed']=False
    service.write_once(args.output/'result.json',result)
    print(json.dumps({key:result.get(key) for key in ('passed','error','original_prepared_retained','typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
