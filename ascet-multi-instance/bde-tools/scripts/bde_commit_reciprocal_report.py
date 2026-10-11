"""Recompute same-dispatch reciprocal capture and actual Doge evidence without contacting ASCET."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
import bd_service as service
from bde_acceptance import source_manifest
from bd_commit_reciprocal import validate_capture
from bd_commit_model_diff import recompute
from bd_commit_resources import status, summary

DAY=service.ROOT/'analysis/bde-experiments/2026-10-07'
PREPARE=DAY/'bde-commit-reciprocal-prepare-live-01'
TOOL=DAY/'bde-commit-reciprocal-tool-live-02'


def read(path):return json.loads(path.read_text(encoding='utf-8-sig'))


def freeze(directory):
    directory.mkdir(exist_ok=False,parents=True)
    sources=source_manifest()
    for name in ('analysis/live-api/AscetStructureSession.exe','analysis/live-api/Etas.AscetNET.dll',
                 'Doge/scripts/bde-tool-call-eval.ts','scripts/bde_tool_client.py'):
        sources[name]=service.digest((service.ROOT/name).read_bytes())
    for name in sources:
        output=directory/'archive'/name;output.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/name,output)
    evidence={}
    for folder in (PREPARE,TOOL,DAY/'bde-commit-reciprocal-tool-live-01',DAY/'bde-commit-reciprocal-development-01',
                   DAY/'bde-fresh-serializer-route-01'):
        if not folder.is_dir():raise ValueError('Missing evidence directory: '+str(folder))
        for path in folder.rglob('*'):
            if path.is_file() and '__pycache__' not in path.parts:
                evidence[path.relative_to(service.ROOT).as_posix()]=service.digest(path.read_bytes())
    service.write_once(directory/'manifest.json',dict(sources=sources,evidence=evidence))


def verify(directory):
    manifest=read(directory/'manifest.json');hashes=0
    for name,wanted in manifest['sources'].items():
        if service.digest((directory/'archive'/name).read_bytes())!=wanted or service.digest((service.ROOT/name).read_bytes())!=wanted:
            raise ValueError('Archived/current input differs: '+name)
        hashes+=2
    for name,wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Original evidence changed: '+name)
        hashes+=1
    for name,wanted in read(TOOL/'source-manifest.json').items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Actual latest Tool.call source changed: '+name)
        hashes+=1
    preparation=read(PREPARE/'result.json');original=read(PREPARE/'audit.json')
    tool=read(TOOL/'result.json');audit=read(TOOL/'audit.json')
    if (not preparation['passed'] or preparation['native_model_apply_commands']!=0
            or not preparation['typed_graph_unchanged'] or preparation['process_started'] is not False
            or preparation['process_restarted'] is not False):raise ValueError('Same-dispatch zero-write preparation not verified')
    retained=audit['original_reciprocal_capture']
    if retained!=original['original_reciprocal_capture']:
        raise ValueError('Original reciprocal before was changed after capture')
    proof=validate_capture(retained)
    if proof!=preparation['prepared_resources'][0]['reciprocal_references'] or proof!=preparation['reciprocal_references']:
        raise ValueError('Compact original receipt differs from complete raw records')
    actual=recompute(audit)
    wal=read(TOOL/'diff.json')['commit_resource_checks'][0]['status']
    status(wal,token=audit['native_token'],component_oid=audit['component_oid'],checked=True)
    if (not tool['passed'] or not tool['typed_graph_unchanged'] or not tool['original_wal_unchanged']
            or not tool['fixed_sources_unchanged'] or actual!=wal['actual_changes']
            or summary(wal)!=tool['agent_summary'] or not tool['offline_diff_zero_native_frames']
            or not tool['offline_history_zero_native_frames'] or wal['current_reciprocal_records_checked'] is not False):
        raise ValueError('Actual full Doge/WAL scope mismatch')
    read_effects=[]
    for record_index,row in enumerate(retained['records']):
        before,after=row['ctree_before'],row['ctree_after']
        if before['binding']!=after['binding'] or before['field_names']!=after['field_names']:
            raise ValueError('Direct reciprocal read changed original leaf identity/schema')
        for old,new in zip(before['fields'],after['fields']):
            if old['value']!=new['value']:
                read_effects.append(dict(record_index=record_index,field=old['name'],before=old['value'],after=new['value']))
    return dict(passed=True,source_count=len(manifest['sources']),hash_checks=hashes,
        same_native_dispatch_preparation_verified=True,original_reciprocal_capture_unchanged=True,
        reciprocal_references=proof,initial_reciprocal_direct_read_effects=read_effects,
        initial_reciprocal_direct_read_effect_count=len(read_effects),actual_doge_tool_call_verified=True,
        full_wal_actual_change_count=len(actual),actual_change_fields=dict(Counter(row['field'] for row in actual)),
        agent_pagination=tool['pagination'],diff_pagination=tool['diff_pagination'],history_pagination=tool['history_pagination'],
        offline_diff_history_native_frames=0,process_epoch=preparation['process_epoch'],native_token=preparation['native_token'],
        ascet_start_count=0,ascet_restart_count=0,model_setters_called=0,
        current_reciprocal_records_checked=False,new_outgoing_targets_captured=False,
        fresh_serializer_executed=False,full_persistent_write_set_captured=False,persistent_inverse_verified=False,
        business_original_restoration_verified_this_increment=False,new_complete_required_cases_passed=0,
        full_delivery=False,goal_status='active',
        next_implementation='Capture before bytes for newly added targets, using a verified fresh serializer route or complete reference-file snapshot baseline, then controlled write and local inverse')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--directory',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);p.add_argument('--freeze',action='store_true');args=p.parse_args()
    if args.freeze:freeze(args.directory)
    result=verify(args.directory);service.write_once(args.output,result)
    print(json.dumps({key:result[key] for key in ('passed','source_count','hash_checks','initial_reciprocal_direct_read_effect_count','full_delivery')}))


if __name__=='__main__':main()
