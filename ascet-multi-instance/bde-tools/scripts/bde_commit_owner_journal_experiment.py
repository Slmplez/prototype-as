"""Real prepare-only WAL plus production inspection and offline owner diff."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import shutil
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
from bde_connect_store_preflight import ReadOnlyPreparation
from bde_acceptance import source_manifest
from bde_experiments import proxy


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('preparation','output'):parser.add_argument('--'+name,type=Path,required=True)
    args=parser.parse_args();base=service.ROOT/'analysis/bde-experiments'
    prior,output=args.preparation.resolve(),args.output.resolve()
    if not prior.is_relative_to(base) or not output.is_relative_to(base) or output.exists():
        raise ValueError('Original preparation and new owned output required')
    original=json.loads((prior/'result.json').read_text(encoding='utf-8'))
    if original.get('passed') is not True or endpoint_process(original['port'])!=original['pid']:
        raise ValueError('Original running private preparation required')
    output.mkdir(parents=True);(output/'store').mkdir()
    domain=dict(original['domain'],session=output.name)
    check(domain)
    result=dict(profile='bde_commit_owner_journal_experiment_v1',passed=False,
        full_delivery=False,model_operations=0,store_called=False,commit_called=False,
        ascet_started_or_restarted=False,domain=domain,component=original['component'],
        port=original['port'],pid=original['pid'],source_manifest=source_manifest())
    for name in result['source_manifest']:
        dest=output/'source'/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,dest)
    environment={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(original['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1',ASCET_BD_CONNECT_HISTORY='native_source_exact_v1',
        ASCET_BD_CONNECT_REFERENCES='module_owner_records_v1',ASCET_BD_COMMIT_RESOURCE_CAPTURE='prepare_v1',
        ASCET_BD_COMMIT_REGISTERED_MODELS='loaded_sg_v1',ASCET_BD_COMMIT_CONTROL_CAPTURE='ctree_v1',
        ASCET_BD_COMMIT_RECIPROCAL_CAPTURE='outgoing_v1',ASCET_BD_COMMIT_REFERENCE_BASELINE='reference_file_v1',
        ASCET_BD_COMMIT_PERSISTENT_OWNERS='component_source_v1')
    prepared=json.loads((prior/'prepared.json').read_text())['material']
    targets=[bytes(k).hex() for k in prepared['persistent_owner_records']['before']['references'].get('requested_reciprocal_targets',[])]
    try:
        with patch.object(service,'STORE',output/'store'),proxy(upstream_port=original['port']) as wire:
            environment['ASCET_BD_PROBE_PORT']=str(wire['port'])
            with patch.dict(os.environ,environment,clear=True):
                log=StructureJournal(service.STORE/'edits')
                with service.live_lock(),ReadOnlyPreparation(original['component'],timeout=50,connect_reference_targets=targets,environment=environment) as adapter:
                    before=adapter.observe(domain,[])
                    pins=[r for r in before['entries'] if r['kind']=='pin']
                    a,b=next((a,b) for a in pins for b in pins if a['output'] and not a['input'] and b['input']
                        and not b['output'] and a['owner']!=b['owner'])
                    request=dict(domain=domain,request_id=output.name,component=original['component'],diagram='Main',
                        operation='connect_data',arguments=[[],a['ref'],b['ref']],expect=fingerprint(before))
                    token=binding(request,original['component'],None)
                    receipt=log.execute(request,adapter,nullcontext)
                    if receipt['status']!='conflict' or receipt['setter_called'] is not False:
                        raise ValueError('Original resource preparation must refuse apply before native mutation')
                    result.update(native_token=token,edit=receipt,prepare_commands=adapter.commands.copy())
                    if before!=adapter.observe(domain,[]):raise ValueError('Graph changed during preparation')
                prior_events=log.read(token)
                result['inspect_reply']=service.handle('bd_inspect',dict(query='recovery',change_id=token,max_bytes=16384),domain['session'])
                service.write_once(output/'inspect-reply.json',result['inspect_reply'])
                if result['inspect_reply'].get('isError') or result['inspect_reply'].get('is_error'):
                    raise ValueError('Production resource inspection rejected')
                events=log.read(token);added=events[len(prior_events):]
                if [e['kind'] for e in added]!=['commit_owner_records_observed','commit_resource_checked']:
                    raise ValueError('Exact two actual observation events required')
                before_frames=wire['request'].result()
                offline=log.diff(token)
                service.write_once(output/'offline-diff.json',offline)
                if before_frames!=wire['request'].result() or len(offline['persistent_owner_current_checks'])!=1:
                    raise ValueError('Offline owner diff must use the WAL and zero native frames')
                owner=offline['persistent_owner_current_checks'][0]['summary']
                if owner['current_persistent_owners_checked'] is not True or owner['changed_physical_records']!=0:
                    raise ValueError('Complete actual raw owners must equal original in this no-edit study')
                replies=[];body=[]
                reply=service.handle('bd_diff',dict(change_id=token,max_bytes=4096),domain['session'])
                while True:
                    replies.append(reply)
                    header,chunk=reply['content'].split('\n\n',1);head=json.loads(header);body.append(chunk)
                    if not head['page']['has_more']:break
                    if len(replies)>128:raise ValueError('Offline diff pagination exceeded bound')
                    reply=service.handle('bd_diff',dict(cursor=head['page']['next_cursor']),domain['session'])
                full=json.loads(''.join(body))
                if full!=offline or before_frames!=wire['request'].result():
                    raise ValueError('Production offline diff differs from full WAL or called native')
                service.write_once(output/'offline-diff-pages.json',replies)
                history=log.receipt(token,events)
                if history['persistent_owner_current_check']['summary']!=owner:
                    raise ValueError('Offline history owner projection differs')
                result.update(offline_diff_pages=len(replies),production_offline_diff_matches=True,
                    offline_history_summary_matches=True)
                result.update(owner_summary=owner,offline_diff_zero_native_frames=True,
                    observed_event_kinds=[e['kind'] for e in added],original_events_preserved=events[:len(prior_events)]==prior_events)
            result['wire']=dict(connections=wire['connections'],request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if result['wire']['errors']:raise ValueError('Wire failure retained')
        result.update(passed=True,sources_match=result['source_manifest']==source_manifest())
        if not result['sources_match']:raise ValueError('Journal experiment source drift')
    except Exception as error:result.update(passed=False,error=str(error))
    service.write_once(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','owner_summary','full_delivery')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
