"""Nonzero fixed native comparison using a synthetic baseline; no live control mutation."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_commit_control import delta
from bd_native_structure import NativeStructureAdapter
from bde_isolated_runtime import live_manifest
from bde_experiments import proxy
from bde_main_workflow import build_oracle


def main():
    p=argparse.ArgumentParser(description=__doc__)
    for name in ('manifest','preparation','output'):p.add_argument('--'+name,type=Path,required=True)
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original['process_epoch']!=epoch or original.get('passed') is not True:
        raise ValueError('Exact existing preparation epoch required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,process_started=False,process_restarted=False,
        automatic_retry=False,synthetic_baseline=True,real_transaction_state_mutation_verified=False,
        model_edit_verified=False,full_delivery=False,complete_case_pass=False)
    service.write_once(args.output/'intent.json',result)
    try:
        binary=build_oracle(args.output)
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                adapter.build=lambda:binary
                before=adapter.observe(original['domain'],[])
                evidence=adapter._exchange(dict(cmd='commit_control_diff_private',token=original['native_token']))
                service.write_once(args.output/'evidence.json',evidence)
                changes=delta(evidence['baseline'],evidence['current'],'since_preparation')
                after=adapter.observe(original['domain'],[])
                result.update(changes=changes,independent_actual_diff_equal=changes==evidence['actual_changes'],
                    expected_nonzero_fields=[row['field'] for row in changes]==['interfaces','ctSavePoint','ctTransaction'],
                    typed_graph_unchanged=before==after,live_control_unchanged=evidence['live_control_unchanged'],
                    original_before_unchanged=evidence['original_before_unchanged'],native_commands=adapter.commands)
                result['passed']=(result['independent_actual_diff_equal'] and result['expected_nonzero_fields']
                    and result['typed_graph_unchanged'] and result['live_control_unchanged'] and result['original_before_unchanged']
                    and evidence['live_control_fields_mutated'] is False and evidence['transaction_methods_called']==0
                    and evidence['model_setters_called']==0 and evidence['synthetic_baseline'] is True)
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
    except Exception as error:result['error']=repr(error);result['passed']=False
    service.write_once(args.output/'result.json',result)
    print(json.dumps({key:result.get(key) for key in ('passed','error','expected_nonzero_fields','independent_actual_diff_equal','typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
