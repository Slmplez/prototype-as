"""Export a failed original Store-resource preparation without replay or writes."""
import argparse
import json
import os
from pathlib import Path

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy
from bde_reference_file_capture_experiment import export_report


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preparation',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args(); base=service.ROOT/'analysis/bde-experiments'
    original_dir, output=args.preparation.resolve(),args.output.resolve()
    if not original_dir.is_relative_to(base) or not output.is_relative_to(base) or output.exists():
        raise ValueError('Owned original failure and new output required')
    original=json.loads((original_dir/'result.json').read_text(encoding='utf-8'))
    if (original.get('profile')!='bde_connect_store_preflight_v1' or original['passed'] is not False
            or original['edit_dispatched'] is not False or endpoint_process(original['port'])!=original['pid']):
        raise ValueError('Exact original failed no-write preparation required')
    output.mkdir(parents=True)
    result=dict(profile='bde_connect_store_failure_inspection_v1',passed=False,
        native_token=original['native_token'],domain=original['domain'],preparation_replayed=False,
        original_material_rebound=False,model_operations=0,store_called=False,commit_called=False,
        full_delivery=False,ascet_started_or_restarted=False)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    try:
        with service.live_lock(),proxy(upstream_port=original['port']) as wire:
            if endpoint_process(original['port'])!=original['pid']:
                raise ValueError('Original listener expired')
            with NativeStructureAdapter(original['component'],timeout=40,
                    environment=dict(environment,ASCET_BD_ENDPOINT_PORT=str(original['port']),ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                before=adapter.observe(original['domain'],[])
                attempt=adapter._exchange(dict(cmd='commit_resources',action='attempt',token=original['native_token']))
                service.write_once(output/'attempt.json',attempt)
                if attempt['same_original_binding'] is not True or attempt['reference_baseline_phase']!='failed':
                    raise ValueError('Same original failed baseline required')
                query=dict(cmd='commit_reference_file_capture',token=original['native_token'],
                    profile_index=attempt['reference_profile_index'],section='',offset=0,limit=64)
                profile=adapter._exchange(dict(query,action='profile'));service.write_once(output/'profile.json',profile)
                summary=adapter._exchange(dict(query,action='inspect'));service.write_once(output/'summary.json',summary)
                pages=output/'pages';pages.mkdir()
                report=export_report(adapter,query,summary,pages,profile)
                service.write_once(output/'report.json',report)
                after=adapter.observe(original['domain'],[])
                if before!=after:
                    raise ValueError('Original graph changed during failure export')
                result.update(passed=True,phase=report['phase'],failures=report['failures'],
                    list_counts=summary['list_counts'],commands=adapter.commands.copy(),graph_unchanged=True)
            result['wire']=dict(connections=wire['connections'],request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
    except Exception as error:
        result.update(passed=False,error=str(error))
    service.write_once(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','phase','failures','list_counts')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
