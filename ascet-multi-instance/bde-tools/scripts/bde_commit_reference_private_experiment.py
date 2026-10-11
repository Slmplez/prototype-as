"""Fixed native decoder controls on copied retained record buffers; no live record edit."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_persistent_references import decode,delta
from bd_native_structure import NativeStructureAdapter
from bde_isolated_runtime import live_manifest
from bde_experiments import proxy
from bde_main_workflow import build_oracle


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('manifest','preparation','output'):p.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original['process_epoch']!=epoch or original.get('passed') is not True:raise ValueError('Original live preparation required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,process_started=False,process_restarted=False,automatic_retry=False,
        copied_records_only=True,live_record_write_verified=False,model_edit_verified=False,full_delivery=False)
    service.write_once(args.output/'intent.json',result)
    try:
        binary=build_oracle(args.output)
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                adapter.build=lambda:binary;before=adapter.observe(original['domain'],[])
                evidence=adapter._exchange(dict(cmd='commit_reference_private',token=original['native_token']))
                service.write_once(args.output/'evidence.json',evidence)
                proofs={}
                for row_name,proof_name in (('original_row','before'),('edited_row','changed'),('tail_row','tail_result')):
                    proof=decode(evidence[row_name],evidence['owner_key']);proofs[row_name]=proof
                    expected={key:proof[key] for key in ('semantic_size','semantic_bytes','entries')}
                    expected['raw_tail']=proof['tail_bytes']
                    if expected!=evidence[proof_name]:raise ValueError('Native/Python full reference decoding differs')
                after=adapter.observe(original['domain'],[])
                old=evidence['original_row'];new=evidence['edited_row'];declared=old['fixed_size']+old['blob_size']
                result.update(typed_graph_unchanged=before==after,original_material_unchanged=evidence['original_material_unchanged'],
                    old_prefix_misses_change=old['allocated_bytes'][:declared]==new['bytes'],
                    complete_semantics_detect_change=delta(old,new,evidence['owner_key']) is not None,
                    tail_separate_from_semantics=delta(old,evidence['tail_row'],evidence['owner_key']) is None,
                    unsupported_tag_rejected='Unsupported reference proxy tag' in evidence['unknown_tag_error'],
                    independent_full_decoding_equal=True,native_commands=adapter.commands)
                result['passed']=all(result[k] for k in ('typed_graph_unchanged','original_material_unchanged','old_prefix_misses_change',
                    'complete_semantics_detect_change','tail_separate_from_semantics','unsupported_tag_rejected')) and evidence['live_record_write_called'] is False
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
    except Exception as error:result['error']=repr(error);result['passed']=False
    service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','complete_semantics_detect_change','unsupported_tag_rejected','typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
