"""Actual Doge Tool.call query of retained prepared resource evidence, no model write.

Copies the exact original WAL into a separate eval store; never recaptures or
rebinds native material. The original experiment remains immutable.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import time
from unittest.mock import patch

import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bd_structure_journal import StructureJournal
from bd_sandbox_edit import binding
from bd_commit_resources import summary
from bd_commit_resource_diff import recompute
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest
from bde_main_workflow import verify_pages
from bde_tool_client import ToolClient
from bde_acceptance import source_manifest


def tree_hashes(folder):
    return {str(p.relative_to(folder)):service.digest(p.read_bytes()) for p in folder.rglob('*') if p.is_file()}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--manifest',type=Path,required=True)
    p.add_argument('--preparation',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True)
    args=p.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    original=json.loads(args.preparation.read_text(encoding='utf-8'))
    if original.get('passed') is not True or original['process_epoch']!=epoch:
        raise ValueError('Exact original live preparation epoch required')
    args.output.mkdir(parents=True,exist_ok=False)
    result=dict(passed=False,process_epoch=epoch,native_token=original['native_token'],
        automatic_retry=False,full_delivery=False,complete_case_pass=False,model_edit_verified=False,
        validation_scope='actual Doge retained-resource inspect/WAL/pagination and zero-write rejection')
    source=args.preparation.parent/'journal';original_hashes=tree_hashes(source)
    service.write_once(args.output/'intent.json',result)
    calls=[];started=time.perf_counter()
    try:
        compile_bridge()
        sources=source_manifest()
        for name in ('analysis/live-api/AscetStructureSession.exe','analysis/live-api/Etas.AscetNET.dll'):
            sources[name]=service.digest((service.ROOT/name).read_bytes())
        service.write_once(args.output/'source-manifest.json',sources)
        store=args.output/'store';store.mkdir()
        shutil.copytree(source,store/'edits')
        with patch.object(service,'STORE',store),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']))
            log=StructureJournal(store/'edits');events=log.read(original['native_token'])
            request=events[0]['payload']
            if request['domain']!=original['domain'] or request['component']!=original['component']:
                raise ValueError('Original complete WAL identity differs')
            with service.live_lock(),NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                before=adapter.observe(original['domain'],[])
            client=ToolClient(args.output,original['domain']['session'],calls.append);client.env.update(env)
            client.env['ASCET_BD_STORE']=str(store.resolve());client.env.pop('ASCET_BD_COMMIT_RESOURCE_CAPTURE',None)
            client.env.pop('ASCET_BD_SANDBOX_WRITES',None);client.env.pop('ASCET_BD_STRUCTURAL_WRITES',None)
            read_start=len(calls)
            read_head,read_body,read_error=client.call('bd_read',dict(component=original['component'],view='structure',max_bytes=4096))
            if read_error:raise ValueError('Formal contextual structure read rejected: '+read_body)
            result['read_pagination']=verify_pages(calls[read_start:],read_body,4096)
            binding(request,original['component'],read_head['snapshot'])
            check_start=len(calls)
            head,body,error=client.call('bd_inspect',dict(query='recovery',change_id=original['native_token'],max_bytes=2048))
            if error:raise ValueError('Formal query rejected: '+body)
            result['pagination']=verify_pages(calls[check_start:],body,2048)
            result['agent_summary']=json.loads(body)
            now=log.read(original['native_token'])
            added=now[len(events):]
            if len(added)!=1 or added[0]['kind']!='commit_resource_checked':
                raise ValueError('Actual complete query evidence was not appended once to WAL')
            status=added[0]['payload'];result['wal_summary_matches_agent']=summary(status)==result['agent_summary']
            result['actual_change_count']=len(status['actual_changes'])
            diff_start=len(calls);traffic_before=wire['request'].result()
            _,diff_body,diff_error=client.call('bd_diff',dict(change_id=original['native_token'],max_bytes=2048))
            if diff_error:raise ValueError('Formal offline resource diff rejected: '+diff_body)
            result['diff_pagination']=verify_pages(calls[diff_start:],diff_body,2048)
            diff=json.loads(diff_body);service.write_once(args.output/'diff.json',diff)
            result['offline_diff_zero_native_frames']=traffic_before==wire['request'].result()
            recorded=diff.get('commit_resource_checks',[])
            result['offline_diff_complete_actual_values']=(len(recorded)==1 and recorded[0]['status']==status
                and recorded[0]['event_sha256']==added[0]['checksum'] and recorded[0]['as_of_utc']==added[0]['utc']
                and recorded[0]['model_edit_claimed'] is False and recorded[0]['is_fresh_live_observation'] is False)
            if not result['offline_diff_complete_actual_values'] or not result['offline_diff_zero_native_frames']:
                raise ValueError('Offline resource diff omitted values or unexpectedly read ASCET')
            history_start=len(calls);traffic_before=wire['request'].result()
            _,history_body,history_error=client.call('bd_inspect',dict(query='edits',max_bytes=4096))
            if history_error:raise ValueError('Formal offline history rejected: '+history_body)
            result['history_pagination']=verify_pages(calls[history_start:],history_body,4096)
            rows=[json.loads(line) for line in history_body.splitlines()]
            found=next(row for row in rows if row.get('change_id')==original['native_token'])
            result['offline_history_summary_matches']=(found['commit_resource_check']['summary']==result['agent_summary']
                and found['status']==original['edit']['status'] and found['changed_fields']==[]
                and found['commit_resource_check']['model_edit_claimed'] is False)
            result['offline_history_zero_native_frames']=traffic_before==wire['request'].result()
            # These requests must be rejected before any native command.
            rejected=[]
            for foreign,reconcile in ((True,False),(False,True)):
                request_args=dict(query='recovery',change_id=original['native_token'],reconcile=reconcile,max_bytes=2048)
                target=ToolClient(args.output,'foreign_eval_session' if foreign else original['domain']['session'],calls.append)
                target.env=dict(client.env)
                traffic_before=wire['request'].result()
                _,negative,is_error=target.call('bd_inspect',request_args)
                expected='IDENTITY_UNRESOLVED' if foreign else 'RECOVERY_UNRESOLVED'
                rejected.append(dict(expected=expected,body=negative,is_error=is_error,
                    no_native_frames=traffic_before==wire['request'].result()))
                if not is_error or expected not in negative or not rejected[-1]['no_native_frames']:
                    raise ValueError('Unsafe original-material query was not rejected before native access')
            result['rejections']=rejected
            with service.live_lock(),NativeStructureAdapter(original['component'],environment=env,timeout=50) as adapter:
                adapter._ensure_open(original['domain'])
                audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=original['native_token']))
                service.write_once(args.output/'audit.json',audit)
                if audit['prepared_receipt']['profile'] in ('native_commit_prepare_v2','native_commit_prepare_v3','native_commit_prepare_v4','native_commit_prepare_v5'):
                    from bd_commit_model_diff import recompute as full_delta
                    actual=full_delta(audit)
                else:actual=recompute(audit['original_capture'],audit['checks'][-1])
                result['independent_actual_diff_equal']=actual==status['actual_changes']==audit['last_actual_changes']
                result['typed_graph_unchanged']=adapter.observe(original['domain'],[])==before
                result['native_commands']=adapter.commands
            result['wal_event_kinds']=[e['kind'] for e in log.read(original['native_token'])]
            result['original_wal_unchanged']=tree_hashes(source)==original_hashes
            result['fixed_sources_unchanged']=all(service.digest((service.ROOT/name).read_bytes())==digest for name,digest in sources.items())
            result['passed']=(result['wal_summary_matches_agent'] and result['independent_actual_diff_equal']
                and result['offline_diff_complete_actual_values'] and result['offline_diff_zero_native_frames']
                and result['offline_history_summary_matches'] and result['offline_history_zero_native_frames']
                and result['typed_graph_unchanged'] and result['original_wal_unchanged'] and result['fixed_sources_unchanged']
                and status['model_setters_called']==0 and status['store_called'] is False
                and status['commit_called'] is False and status['prepared_receipt']==original['prepared_resources'][0])
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
    except Exception as error:result['error']=repr(error)
    service.write_once(args.output/'tool-calls.json',calls)
    result['wall_ms']=(time.perf_counter()-started)*1000
    service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','actual_change_count','independent_actual_diff_equal','typed_graph_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
