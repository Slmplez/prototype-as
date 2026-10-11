"""Offline formal Doge projections of retained successful create-history WAL.

Does not prepare, execute, reconcile, release or query a live ASCET object.
The failed online verdict remains failed; this verifies the response layer only.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import traceback

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_main_workflow import save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path,help='Preserved failed online history experiment')
    parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Owned archived experiment and fresh output required')
    failure=json.loads((source/'result.json').read_text(encoding='utf-8'))
    creation=Path(failure['source'])
    request=json.loads((source/'undo-intent.json').read_text(encoding='utf-8'))['request']
    head=failure['histories'][0]['receipt']['change_id'];domain=failure['domain']
    if failure['histories'][0]['receipt']['status']!='verified_local':
        raise ValueError('This response-layer experiment needs a durable completed original undo')
    service.STORE=creation/'store';log=StructureJournal(service.STORE/'edits')
    files=[p for token in (head,failure['native_token']) for p in log._path(token).glob('*.json')]
    files.append(source/'result.json')
    def hashes():return {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
    before=hashes();original=log.read(head)
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Offline formal response projection of sealed real successful undo WAL',
        source=str(source),change_id=head,native_token=failure['native_token'],
        source_manifest=source_manifest(),formal_tool_calls=0,documents=[],connections=0,request_frames=0,
        live_model_verified=False,execution_dispatched=False,redo_dispatched=False,
        original_restored=False,complete_case_pass=False,full_delivery=False,
        original_failure_verdict_preserved=True)
    def save():
        (output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        dest=output/'source'/relative;dest.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/relative,dest)
    calls=[]
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT='32641',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
    def record(row):
        save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),row)
        calls.append(row);result['formal_tool_calls']=len(calls);save()
    def tool(label,name,arguments):
        with bench.proxy(upstream_port=32641) as wire:
            client=ToolClient(output,domain['session'],record)
            client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
            start=len(calls);meta,body,error=client.call(name,arguments)
        frames=wire_result(wire);save_new(output/'wire'/(label+'.json'),frames)
        save_new(output/'responses'/(label+'.json'),dict(meta=meta,body=body,is_error=error))
        result['connections']+=frames['connections'];result['request_frames']+=frames['request']['frames']
        if error:raise ValueError('Formal offline projection failed: '+body)
        if frames['connections'] or frames['request']['frames']:
            raise ValueError('Offline projection unexpectedly opened ASCET')
        result['documents'].append(dict(label=label,**verify_pages(calls[start:],body,12288)))
        return json.loads(body),len(body.encode('utf-8'))
    try:
        actual=next(e['payload'] for e in original if e['kind']=='observed')
        receipt,_=tool('completed-undo-duplicate','bd_revert',request)
        diff,size=tool('completed-undo-diff','bd_diff',dict(change_id=head))
        forward,_=tool('forward-create-diff','bd_diff',dict(change_id=failure['native_token']))
        previous=json.loads((source/'responses/undo-diff.json').read_text(encoding='utf-8'))
        old_diff=json.loads(previous['body'])
        if (receipt['status']!='verified_local' or diff['graphical_differences']!=actual['graphical_differences']
                or receipt['graphical_differences']!=diff['graphical_differences']
                or diff['differences']!=old_diff['differences']
                or diff['observations'][0]['after']!=actual['after']):
            raise ValueError('Compact projection lost actual typed/graphical coverage')
        for field in ('parent_order_differences','drawing_order_differences'):
            if receipt[field]!=actual[field] or diff[field]!=actual[field]:
                raise ValueError('Compact projection lost actual order evidence')
        projected=diff['observations'][0];summary=projected['create_history_actual_summary']
        if (summary['sha256']!=fingerprint(actual['create_history_actual'])
                or any(key in projected for key in ('create_history_actual','graphical_current','graphical_actual'))
                or 'create_material_actual' in forward['observations'][0]):
            raise ValueError('Raw evidence leak or summary fingerprint differs')
        result.update(wal_and_failure_verdict_unchanged=hashes()==before,
            all_actual_typed_changes_preserved=True,full_durable_proof_verified=True,
            same_retained_original_owner=receipt['create_history']['owner_change_id']==head,
            returned_redo_head=receipt['create_history'],
            prior_formal_diff_bytes=len(previous['body'].encode('utf-8')),compact_formal_diff_bytes=size,
            sources_match=source_manifest()==result['source_manifest'])
        result['passed']=(result['wal_and_failure_verdict_unchanged'] and result['sources_match']
            and result['same_retained_original_owner'] and result['connections']==result['request_frames']==0)
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc(),wal_and_failure_verdict_unchanged=hashes()==before)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','connections',
        'request_frames','prior_formal_diff_bytes','compact_formal_diff_bytes','wal_and_failure_verdict_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
