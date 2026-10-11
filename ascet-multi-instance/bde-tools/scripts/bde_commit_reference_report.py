"""Freeze and recompute reference-length correction evidence without contacting ASCET."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
import unittest
import bd_service as service
from bde_acceptance import source_manifest
from bd_persistent_references import decode,delta
from bd_commit_model_diff import recompute
from bd_commit_resources import status,summary

DAY=service.ROOT/'analysis/bde-experiments/2026-10-07'
SAMPLES=('bde-commit-reference-current-live-01','bde-commit-reference-prepare-live-01',
    'bde-commit-reference-private-live-01','bde-commit-reference-tool-live-01',
    'bde-commit-reference-development-01','bde-commit-serializer-profile-live-01',
    'bde-commit-serializer-profile-live-02','bde-commit-serializer-profile-live-03',
    'bde-commit-serializer-dispatch-audit-01')


def read(path):return json.loads(path.read_text(encoding='utf-8-sig'))


def freeze(directory):
    directory.mkdir(parents=True,exist_ok=False);sources=source_manifest()
    for name in ('analysis/live-api/AscetStructureSession.exe','analysis/live-api/Etas.AscetNET.dll',
                 'Doge/scripts/bde-tool-call-eval.ts','scripts/bde_tool_client.py'):
        sources[name]=service.digest((service.ROOT/name).read_bytes())
    for name in ('DBLinkProxy','DBProxy_class','CTreeRecord_class','CTreeInterface',
                 'DBLinDeLin','DBSwapperDumperLoader','RBObjectDumper','RBObjectLoader'):
        path=service.ROOT/'unpacked/smalltalk-source/ASDBase.ic'/f'{name}.st'
        sources[str(path.relative_to(service.ROOT)).replace('\\','/')]=service.digest(path.read_bytes())
    for name in sources:
        dest=directory/'archive'/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,dest)
    evidence={}
    for folder in SAMPLES:
        if not (DAY/folder).exists():raise ValueError('Missing evidence folder: '+folder)
        for path in (DAY/folder).rglob('*'):
            if path.is_file():evidence[str(path.relative_to(service.ROOT)).replace('\\','/')]=service.digest(path.read_bytes())
    for name in ('analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json',
        'analysis/bde-experiments/2026-10-07/bde-commit-control-tool-live-02/audit.json'):
        evidence[name]=service.digest((service.ROOT/name).read_bytes())
    service.write_once(directory/'manifest.json',dict(sources=sources,evidence=evidence,full_delivery=False))


def verify(directory):
    manifest=read(directory/'manifest.json');checks=0
    for name,wanted in manifest['sources'].items():
        if service.digest((directory/'archive'/name).read_bytes())!=wanted or service.digest((service.ROOT/name).read_bytes())!=wanted:
            raise ValueError('Archived/current source drift: '+name)
        checks+=2
    for name,wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Original evidence drift: '+name)
        checks+=1
    tool_folder=DAY/'bde-commit-reference-tool-live-01';tool=read(tool_folder/'result.json');audit=read(tool_folder/'audit.json')
    for name,wanted in read(tool_folder/'source-manifest.json').items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Exact latest Tool.call input changed: '+name)
        checks+=1
    actual=recompute(audit);recorded=read(tool_folder/'diff.json')['commit_resource_checks'][0]['status']
    status(recorded,token=audit['native_token'],component_oid=audit['component_oid'],checked=True)
    if (not tool['passed'] or not tool['typed_graph_unchanged'] or not tool['original_wal_unchanged']
            or not tool['fixed_sources_unchanged'] or actual!=recorded['actual_changes']
            or summary(recorded)!=tool['agent_summary'] or not tool['offline_diff_zero_native_frames']
            or not tool['offline_history_zero_native_frames']):raise ValueError('Actual complete reference/WAL proof differs')
    prepared=read(DAY/'bde-commit-reference-prepare-live-01/result.json')
    if not prepared['passed'] or prepared['prepared_resources'][0].get('record_length_profile')!='complete_reference_payload_v2':
        raise ValueError('New same-dispatch complete reference preparation not verified')
    historical=read(DAY/'bde-commit-control-tool-live-02/audit.json')['original_capture']
    legacy=[decode(row,historical['owner_key']) for row in historical['records'][1:]]
    live=audit['checks'][-1];current=[decode(row,live['owner_key']) for row in live['records'][1:]]
    if [row['legacy_omitted_byte_count'] for row in legacy]!=[4,4] or any(row['legacy_omitted_byte_count'] for row in current):
        raise ValueError('Original four-byte blind spot or new complete extents differ')
    old_current_folder=DAY/'bde-commit-reference-current-live-01';old_current=read(old_current_folder/'result.json')
    old_audit=read(old_current_folder/'audit.json');before_audit=read(old_current_folder/'before-audit.json')
    old_actual=recompute(old_audit)
    if (not old_current['passed'] or old_actual!=old_current['actual_changes']
            or old_audit['original_capture']!=before_audit['original_capture']):
        raise ValueError('Original legacy material changed during complete current query')
    private=read(DAY/'bde-commit-reference-private-live-01/result.json');e=read(DAY/'bde-commit-reference-private-live-01/evidence.json')
    for name,proof in (('original_row','before'),('edited_row','changed'),('tail_row','tail_result')):
        decoded=decode(e[name],e['owner_key']);expected={k:decoded[k] for k in ('semantic_size','semantic_bytes','entries')}
        expected['raw_tail']=decoded['tail_bytes']
        if expected!=e[proof]:raise ValueError('Native private decoder differs from independent bytes')
    if (not private['passed'] or delta(e['original_row'],e['edited_row'],e['owner_key']) is None
            or delta(e['original_row'],e['tail_row'],e['owner_key']) is not None
            or not e['original_material_unchanged'] or e['live_record_write_called'] is not False):
        raise ValueError('Nonzero copied-record controls missing or promoted to live writing')
    for name in ('bde_commit_reference_record.st','bde_commit_reference_private.st','AscetStructureSession.cs'):
        old=DAY/'bde-commit-reference-private-live-01/oracle-source'/name
        if old.read_bytes()!=(service.ROOT/'scripts'/name).read_bytes():raise ValueError('Native private input drift: '+name)
        checks+=1
    controls=read(DAY/'bde-commit-reference-development-01/controls.json')
    if controls['exit_code']!=0 or unittest.defaultTestLoader.loadTestsFromNames(controls['modules']).countTestCases()!=controls['tests']:
        raise ValueError('Recorded offline controls/current census differs')
    failures=[read(DAY/f'bde-commit-serializer-profile-live-{i:02}/result.json') for i in (1,2)]
    if any(row['passed'] is not False or not row.get('error') for row in failures):raise ValueError('Original profile failure changed')
    profile=read(DAY/'bde-commit-serializer-profile-live-03/result.json')
    if not profile['passed'] or profile['serialization_called']:raise ValueError('Serializer metadata must not be promoted to serialization')
    dispatch=read(DAY/'bde-commit-serializer-dispatch-audit-01/result.json')
    if (dispatch['passed'] is not False or dispatch['serialization_authorized'] is not False
            or dispatch['provided_evidence_matches'] is not True or len(dispatch['dispatches'])!=14
            or any(row['bytecodes_exact'] is not True or row['defining_class_match'] is not True for row in dispatch['dispatches'])
            or not dispatch['missing_guards']):
        raise ValueError('Partial serializer audit must retain missing guards and deny execution')
    ledger=read(service.ROOT/'analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json')
    return dict(passed=True,source_count=len(manifest['sources']),evidence_files=len(manifest['evidence']),hash_checks=checks,
        offline_controls=controls['tests'],offline_controls_are_live_model_edits=False,
        legacy_reference_bytes_omitted=[r['legacy_omitted_byte_count'] for r in legacy],
        current_reference_semantic_sizes=[r['semantic_size'] for r in current],
        original_retained_material_unchanged=True,original_raw_tail_is_not_proven_nonpersistent=True,
        current_reference_entries=[r['entry_count'] for r in current],
        same_dispatch_new_preparation_verified=True,actual_doge_tool_call_verified=True,
        full_wal_actual_changes=len(actual),actual_change_fields=dict(Counter(row['field'] for row in actual)),
        reference_last_oid_blind_spot_verified_with_copied_records=True,copied_records_are_live_writes=False,
        unsupported_reference_tags_refused=True,offline_diff_history_native_frames=0,
        agent_pagination=tool['pagination'],diff_pagination=tool['diff_pagination'],history_pagination=tool['history_pagination'],
        runtime_serializer_metadata_dispatches=profile['runtime_dispatches'],serialization_called=False,
        serializer_dispatch_bytecodes_exact=14,serializer_audit_passed=False,
        serializer_audit_counts=dispatch['counts'],serializer_missing_guards=dispatch['missing_guards'],
        process_epoch=prepared['process_epoch'],ascet_start_count=0,ascet_restart_count=0,
        full_persistent_write_set_captured=False,full_commit_resource_closure=False,persistent_inverse_verified=False,
        business_original_restoration_verified_this_increment=False,new_complete_required_cases_passed=0,
        historical_required_case_count=ledger['required_case_count'],historical_required_ledger=ledger['delivery_statuses'],
        full_delivery=False,goal_status='active',
        next_implementation='Complete runtime method/literal guards, fresh scoped serialization and finite reciprocal inbound captures before any persistent patch write')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--directory',type=Path,required=True)
    p.add_argument('--output',type=Path,required=True);p.add_argument('--freeze',action='store_true');args=p.parse_args()
    if args.freeze:freeze(args.directory)
    result=verify(args.directory);service.write_once(args.output,result)
    print(json.dumps({key:result[key] for key in ('passed','source_count','hash_checks','offline_controls','current_reference_semantic_sizes','full_delivery')}))


if __name__=='__main__':main()
