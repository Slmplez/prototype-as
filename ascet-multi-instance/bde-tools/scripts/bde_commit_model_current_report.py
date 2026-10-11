"""Freeze and independently verify the current SG/resource diff increment; no native calls."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
import subprocess
import sys
import unittest

import bd_service as service
from bde_acceptance import source_manifest
from bd_commit_model_diff import recompute,delta,image
from bd_commit_resources import summary
from bd_structure_journal import StructureJournal
from bde_main_workflow import verify_pages

DAY=service.ROOT/'analysis/bde-experiments/2026-10-07'
SAMPLES=('bde-commit-models-current-live-01','bde-commit-models-current-tool-live-01',
    'bde-commit-models-current-tool-live-02','bde-commit-models-current-private-live-01',
    'bde-commit-models-current-private-live-02','bde-commit-models-current-private-live-03',
    'bde-commit-models-current-development-01','bde-commit-models-live-02',
    'bde-commit-production-increment-01')
TESTS=('test_bd_commit_model_diff','test_bd_commit_resources','test_bd_commit_resource_diff',
    'test_bd_commit_resource_journal','test_bd_commit_model_images','test_bd_scope_inventory',
    'test_bd_structure_journal','test_bd_recovery','test_bd_history_presentation',
    'test_bd_native_adapter_cleanup','test_bd_structure_conflicts')


def read(path):return json.loads(path.read_text(encoding='utf-8-sig'))


def production_text(text):
    """All conditional blocks in this bridge are eval-only; compare the production text."""
    depth=0;result=[]
    for line in text.splitlines(keepends=True):
        stripped=line.strip()
        if stripped.startswith('#if '):
            if not stripped[4:].startswith('BDE_'):raise ValueError('Unaudited bridge conditional')
            depth+=1
        elif stripped=='#endif':depth-=1
        elif stripped.startswith(('#else','#elif')):raise ValueError('Unaudited conditional branch')
        elif depth==0:result.append(line)
        if depth<0:raise ValueError('Bridge conditional imbalance')
    if depth:raise ValueError('Bridge conditional imbalance')
    return ''.join(result)


def prepare(output):
    output.mkdir(parents=True,exist_ok=False)
    sources=source_manifest()
    for name in ('scripts/bde_tool_client.py','Doge/scripts/bde-tool-call-eval.ts',
                 'analysis/live-api/AscetStructureSession.exe','analysis/live-api/Etas.AscetNET.dll'):
        sources[name]=service.digest((service.ROOT/name).read_bytes())
    for name in sources:
        dest=output/'archive'/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,dest)
    evidence={}
    for name in SAMPLES:
        for path in (DAY/name).rglob('*'):
            if path.is_file():evidence[str(path.relative_to(service.ROOT)).replace('\\','/')]=service.digest(path.read_bytes())
    ledger='analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json'
    evidence[ledger]=service.digest((service.ROOT/ledger).read_bytes())
    service.write_once(output/'manifest.json',dict(sources=sources,evidence=evidence,
        full_delivery=False,new_complete_required_cases_passed=0))
    controls=subprocess.run([sys.executable,'-X','utf8','-m','unittest',*TESTS],cwd=service.ROOT/'scripts',capture_output=True)
    (output/'controls.stdout.bin').write_bytes(controls.stdout);(output/'controls.stderr.bin').write_bytes(controls.stderr)
    count=unittest.defaultTestLoader.loadTestsFromNames(TESTS).countTestCases()
    service.write_once(output/'controls.json',dict(exit_code=controls.returncode,tests=count,modules=TESTS,
        stdout=controls.stdout.decode('utf-8','replace'),stderr=controls.stderr.decode('utf-8','replace'),
        scope='offline synthetic controls; not live model edit acceptance'))
    if controls.returncode:raise ValueError('Targeted controls failed; original output preserved')


def verify(output):
    manifest=read(output/'manifest.json');checks=0
    for name,wanted in manifest['sources'].items():
        if (service.digest((service.ROOT/name).read_bytes())!=wanted
                or service.digest((output/'archive'/name).read_bytes())!=wanted):raise ValueError('Archived/current source drift: '+name)
        checks+=2
    for name,wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Preserved evidence drift: '+name)
        checks+=1
    controls=read(output/'controls.json')
    if controls['exit_code'] or controls['modules']!=list(TESTS) or controls['tests']<1:
        raise ValueError('Nonempty successful targeted controls required')
    tool_folder=DAY/'bde-commit-models-current-tool-live-02';tool=read(tool_folder/'result.json');audit=read(tool_folder/'audit.json')
    if tool['passed'] is not True or tool.get('fixed_sources_unchanged') is not True:raise ValueError('Actual latest fixed-source Tool.call verification required')
    for name,wanted in read(tool_folder/'source-manifest.json').items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Tool.call source drift: '+name)
        checks+=1
    actual=recompute(audit)
    token=audit['native_token'];events=StructureJournal(tool_folder/'store/edits').read(token)
    event=events[-1]
    if event['kind']!='commit_resource_checked' or event['payload']['actual_changes']!=actual or summary(event['payload'])!=tool['agent_summary']:
        raise ValueError('Complete independent native SG/resource changes differ from WAL/agent receipt')
    diff=read(tool_folder/'diff.json')
    if (len(diff['commit_resource_checks'])!=1 or diff['commit_resource_checks'][0]['status']!=event['payload']
            or diff['commit_resource_checks'][0]['event_sha256']!=event['checksum']):
        raise ValueError('Offline diff lost actual before/after values or original WAL event')
    if (not tool['offline_diff_zero_native_frames'] or not tool['offline_history_zero_native_frames']
            or not tool['original_wal_unchanged'] or not tool['typed_graph_unchanged']):
        raise ValueError('Offline access or original graph/WAL integrity failed')
    calls=read(tool_folder/'tool-calls.json');groups=[];pages=[]
    for row in calls:
        if row['tool']=='bd_read' and set(row['args'])=={'cursor'}:groups[-1].append(row)
        else:groups.append([row])
    for group in groups:
        if group[0]['response']['is_error']:continue
        body=''.join(row['response']['content'].split('\n\n',1)[1] for row in group)
        pages.append(verify_pages(group,body,group[0]['args']['max_bytes']))
    live=read(DAY/'bde-commit-models-current-live-01/result.json');live_audit=read(DAY/'bde-commit-models-current-live-01/audit.json')
    if live['passed'] is not True or recompute(live_audit)!=live['actual_changes']:raise ValueError('Original current native check changed')
    if (audit['registered_model_original_image']!=live_audit['registered_model_original_image']
            or audit['registered_models']!=live_audit['registered_models']):raise ValueError('Original loaded SG before material changed')
    # Later C# edits only introduced an excluded eval method. Verify every other
    # earlier production source exactly and the production C# after preprocessing.
    current_folder=DAY/'bde-commit-models-current-live-01';initial_sources=read(current_folder/'source-manifest.json')
    for name,wanted in initial_sources.items():
        old=current_folder/'source'/name
        if service.digest(old.read_bytes())!=wanted:raise ValueError('Original current-query source lost')
        if name=='AscetStructureSession.exe':continue
        now=service.ROOT/'scripts'/name
        if name=='AscetStructureSession.cs':
            if production_text(old.read_text())!=production_text(now.read_text()):raise ValueError('Native current-query production bridge changed')
        elif now.read_bytes()!=old.read_bytes():raise ValueError('Current collector/validator drift: '+name)
        checks+=1
    private_folder=DAY/'bde-commit-models-current-private-live-03';private=read(private_folder/'result.json');values=read(private_folder/'private-evidence.json')
    private_actual=delta(values['before'],values['after'],'since_preparation')
    if (private['passed'] is not True or private_actual!=values['after']['actual_changes'] or private_actual!=private['actual_changes']
            or len(private_actual)!=7 or not private['typed_graph_unchanged'] or private['online_model_edit_verified']):
        raise ValueError('Nonzero native private controls were lost or promoted to model acceptance')
    for path in (private_folder/'oracle-source').iterdir():
        if path.suffix in ('.st','.cs') and (service.ROOT/'scripts'/path.name).exists():
            if path.read_bytes()!=(service.ROOT/'scripts'/path.name).read_bytes():raise ValueError('Fixed native private source changed: '+path.name)
            checks+=1
    failures={name:read(DAY/name/'result.json') for name in ('bde-commit-models-current-private-live-01','bde-commit-models-current-private-live-02')}
    if any(value['passed'] is not False or not value.get('error') for value in failures.values()):raise ValueError('Original native failure verdict changed')
    ledger=read(service.ROOT/'analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json')
    return dict(passed=True,source_count=len(manifest['sources']),evidence_files=len(manifest['evidence']),hash_checks=checks,
        offline_controls=controls['tests'],offline_controls_are_live_model_edits=False,controls=controls,
        native_current_loaded_sg_verified=True,current_loaded_sg_objects=len(audit['registered_model_checks'][-1]['after']['image']),
        native_current_loaded_sg_roots=len(audit['registered_model_checks'][-1]['after']['registered_roots']),
        actual_changes=len(actual),actual_change_fields=dict(Counter(row['field'] for row in actual)),
        native_sg_changes=sum(row['locus'].startswith('sg/') or row['locus']=='sg_registry' for row in actual),
        native_private_nonzero_changes=len(private_actual),native_private_changes_are_live_bde_edits=False,
        original_sg_before_material_unchanged=True,actual_doge_tool_call_verified=True,page_checks=pages,
        offline_diff_history_native_frames=0,original_failures_preserved=list(failures),
        process_epoch=live['process_epoch'],ascet_start_count_this_increment=0,ascet_restart_count_this_increment=0,
        original_scope_boundaries=audit['registered_models']['boundary_class_counts'],
        full_commit_resource_closure=False,persistent_inverse_verified=False,model_edit_verified_this_increment=False,
        business_original_restoration_verified_this_increment=False,dirty_project_handling_live_verified=False,
        historical_required_case_count=ledger['required_case_count'],historical_required_ledger=ledger['delivery_statuses'],
        new_complete_required_cases_passed=0,full_delivery=False,goal_status='active',
        next_implementation='Transitive CTree/persistent commit resources and precise actual edit guards/inverse; preserve current process and native original materials')


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--directory',type=Path,required=True)
    p.add_argument('--prepare',action='store_true');p.add_argument('--output',type=Path,required=True);args=p.parse_args()
    if args.prepare:prepare(args.directory)
    result=verify(args.directory);service.write_once(args.output,result)
    print(json.dumps({key:result[key] for key in ('passed','source_count','hash_checks','offline_controls',
        'native_current_loaded_sg_verified','native_private_nonzero_changes','full_delivery','goal_status')}))


if __name__=='__main__':main()
