"""Run fixed native private-object nonzero controls in the existing ASCET process."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_commit_model_diff import delta,image
from bde_isolated_runtime import live_manifest
from bde_experiments import proxy
from bde_main_workflow import build_oracle


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True);p.add_argument('--preparation',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);args=p.parse_args()
    manifest,_,epoch=live_manifest(args.manifest);original=json.loads(args.preparation.read_text())
    if original['process_epoch']!=epoch or original.get('passed') is not True:raise ValueError('Exact existing original epoch required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,process_started=False,process_restarted=False,automatic_retry=False,
        full_delivery=False,complete_case_pass=False,online_model_edit_verified=False,
        scope='native private newly allocated value/field/collection mutations, not live BDE editing')
    service.write_once(args.output/'intent.json',result)
    try:
        binary=build_oracle(args.output)
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                adapter.build=lambda:binary
                before=adapter.observe(original['domain'],[])
                evidence=adapter._exchange(dict(cmd='commit_models_diff_private'))
                service.write_once(args.output/'private-evidence.json',evidence)
                actual=delta(evidence['before'],evidence['after'],'since_preparation')
                after=adapter.observe(original['domain'],[])
                result.update(independent_actual_diff_equal=actual==evidence['after']['actual_changes'],
                    actual_changes=actual,typed_graph_unchanged=after==before,
                    private_before_objects=len(image(evidence['before']['image'])),
                    private_after_objects=len(image(evidence['after']['image'])),native_commands=adapter.commands)
                fields=[row['field'] for row in actual]
                expected=(len(actual)==7 and fields.count('$contents')==5 and fields.count('$new_observed_object')==1
                    and sum(row['locus']=='sg/r2' and row['field'] in ('x','xValue') for row in actual)==1)
                result['expected_nonzero_changes_verified']=expected
                result['passed']=(expected and actual==evidence['after']['actual_changes'] and after==before
                    and evidence['live_observation_unchanged'] is True and evidence['model_setters_called']==0 and evidence['store_called'] is False)
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
    except Exception as error:result['error']=repr(error);result['passed']=False
    service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','expected_nonzero_changes_verified','independent_actual_diff_equal','typed_graph_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
