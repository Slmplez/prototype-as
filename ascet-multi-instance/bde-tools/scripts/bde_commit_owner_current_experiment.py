"""Query v6 CURRENT owners twice using the actual immutable preparation."""
import argparse
import json
import os
from pathlib import Path
import shutil

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_windows_endpoint import endpoint_process
from bd_commit_owner_current import validate, summary, differences
from bde_acceptance import source_manifest
from bde_experiments import proxy


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('preparation','output'):parser.add_argument('--'+name,type=Path,required=True)
    args=parser.parse_args();base=service.ROOT/'analysis/bde-experiments'
    original_dir,output=args.preparation.resolve(),args.output.resolve()
    if not original_dir.is_relative_to(base) or not output.is_relative_to(base) or output.exists():
        raise ValueError('Original owned preparation and fresh output required')
    read=lambda p:json.loads(p.read_text(encoding='utf-8'))
    original=read(original_dir/'result.json');audit=read(original_dir/'original-audit.json')
    if (original.get('passed') is not True or original.get('commit_resources_profile')!='native_commit_prepare_v6'
            or original.get('edit_dispatched') is not False or endpoint_process(original['port'])!=original['pid']):
        raise ValueError('Original completed no-write v6 preparation required')
    before_hashes={p.name:service.digest(p.read_bytes()) for p in original_dir.glob('*.json')}
    output.mkdir(parents=True)
    result=dict(profile='bde_commit_owner_current_experiment_v1',passed=False,
        native_token=original['native_token'],domain=original['domain'],model_operations=0,
        store_called=False,commit_called=False,full_delivery=False,original_material_rebound=False,
        preparation_replayed=False,ascet_started_or_restarted=False,source_manifest=source_manifest())
    for name in result['source_manifest']:
        dest=output/'source'/name;dest.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/name,dest)
    env={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    try:
        with service.live_lock(),proxy(upstream_port=original['port']) as wire:
            if endpoint_process(original['port'])!=original['pid']:raise ValueError('Original listener expired')
            with NativeStructureAdapter(original['component'],timeout=40,
                    environment=dict(env,ASCET_BD_ENDPOINT_PORT=str(original['port']),ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                before=adapter.observe(original['domain'],[])
                records=[]
                for i in range(2):
                    current=adapter._exchange(dict(cmd='commit_persistent_owner_current',token=original['native_token']))
                    service.write_once(output/f'current-{i+1}.json',current)
                    validate(current,audit['persistent_owner_capture']);records.append(current)
                for i,current in enumerate(records):
                    service.write_once(output/f'diff-{i+1}.json',differences(audit['persistent_owner_capture'],current))
                result['summaries']=[summary(audit['persistent_owner_capture'],r) for r in records]
                after=adapter.observe(original['domain'],[])
                if before!=after:raise ValueError('Original graph changed during owner queries')
                result.update(native_commands=adapter.commands.copy(),typed_graph_unchanged=True)
            result['wire']=dict(connections=wire['connections'],request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if result['wire']['errors']:raise ValueError('Wire failure retained')
        if before_hashes!={p.name:service.digest(p.read_bytes()) for p in original_dir.glob('*.json')}:
            raise ValueError('Original prepared evidence changed')
        result.update(passed=True,original_evidence_unchanged=True,sources_match=result['source_manifest']==source_manifest())
        if not result['sources_match']:raise ValueError('CURRENT query source drift')
    except Exception as error:result.update(passed=False,error=str(error))
    service.write_once(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','summaries','full_delivery')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
