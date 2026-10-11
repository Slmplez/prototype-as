"""Cross-connection retained-resource query with actual read effects, no mutation retry."""
import argparse
import json
import os
from pathlib import Path
import time
import bd_service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True)
    p.add_argument('--preparation',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    args=p.parse_args()
    manifest,process,epoch=live_manifest(args.manifest)
    prepared=json.loads(args.preparation.read_text(encoding='utf-8'))
    if prepared.get('passed') is not True or prepared['process_epoch']!=epoch:
        raise ValueError('Exact live original preparation epoch required; no recapture/rebinding')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,automatic_retry=False,process_epoch=epoch,native_token=prepared['native_token'],
        full_delivery=False,complete_case_pass=False,model_edit_verified=False)
    bd_service.write_once(args.output/'intent.json',result)
    start=time.perf_counter()
    try:
        compile_bridge()
        with bd_service.live_lock(),proxy(manifest['port']) as wire:
            environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(prepared['component'],environment=environment,timeout=50) as adapter:
                before=adapter.observe(prepared['domain'],[])
                result['retained']=adapter.commit_resource_status(prepared['domain'],prepared['native_token'])
                result['checked']=adapter.commit_resource_status(prepared['domain'],prepared['native_token'],check=True)
                result['after']=adapter.observe(prepared['domain'],[])
                result['typed_graph_unchanged']=result['after']==before
                result['actual_diff_count']=len(result['checked']['actual_changes'])
                result['commands']=adapter.commands
                result['passed']=(result['typed_graph_unchanged']
                    and result['retained']['prepared_receipt']==prepared['prepared_resources'][0]
                    and result['checked']['prepared_receipt']==prepared['prepared_resources'][0]
                    and result['checked']['logical_records_match_retained'] is True)
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
    except Exception as error:result['error']=repr(error)
    result['wall_ms']=(time.perf_counter()-start)*1000
    bd_service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','actual_diff_count','typed_graph_unchanged','wall_ms')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
