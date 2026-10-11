"""Freeze and independently verify this partial production resource increment.

No native calls. This preserves original evidence and does not promote any full
required case. The archive is a development checkpoint, not final delivery.
"""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
import subprocess
import sys

import bd_service as service
from bde_acceptance import source_manifest
from bd_commit_resource_diff import recompute
from bd_commit_model_images import validate_audit
from bd_commit_resources import summary
from bd_structure_journal import StructureJournal
from bde_structure_stages import build
from bde_main_workflow import verify_pages

DAY=service.ROOT/'analysis/bde-experiments/2026-10-07'
SAMPLES=('bde-commit-prepare-live-03','bde-commit-status-live-01','bde-commit-status-live-02',
    'bde-commit-audit-live-01','bde-commit-guard-live-01','bde-commit-guard-live-02','bde-commit-guard-live-03',
    'bde-commit-tool-live-01','bde-commit-tool-live-02','bde-commit-tool-live-03','bde-commit-tool-live-04',
    'bde-commit-models-live-01','bde-commit-models-live-02','bde-commit-models-audit-live-01',
    'bde-commit-models-audit-live-02','bde-commit-models-refusal-live-01')
TESTS=('test_bd_commit_resources','test_bd_commit_resource_diff','test_bd_commit_resource_journal',
    'test_bd_commit_model_images','test_bd_scope_inventory','test_bd_structure_journal',
    'test_bd_recovery','test_bd_history_presentation','test_bd_native_adapter_cleanup',
    'test_bd_structure_conflicts')


def read(path):return json.loads(path.read_text(encoding='utf-8-sig'))


def hashes(folder):
    return {str(p.relative_to(service.ROOT)).replace('\\','/'):service.digest(p.read_bytes())
            for p in folder.rglob('*') if p.is_file()}


def prepare(output):
    output.mkdir(parents=True,exist_ok=False)
    archive=output/'archive'
    sources=source_manifest()
    sources.update({str(Path(__file__).relative_to(service.ROOT)).replace('\\','/'):service.digest(Path(__file__).read_bytes()),
        'scripts/bde_tool_client.py':service.digest((service.ROOT/'scripts/bde_tool_client.py').read_bytes()),
        'Doge/scripts/bde-tool-call-eval.ts':service.digest((service.ROOT/'Doge/scripts/bde-tool-call-eval.ts').read_bytes()),
        'analysis/live-api/AscetStructureSession.exe':service.digest((service.ROOT/'analysis/live-api/AscetStructureSession.exe').read_bytes()),
        'analysis/live-api/Etas.AscetNET.dll':service.digest((service.ROOT/'analysis/live-api/Etas.AscetNET.dll').read_bytes())})
    for name in sources:
        destination=archive/name;destination.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/name,destination)
    evidence={}
    for name in SAMPLES:evidence.update(hashes(DAY/name))
    ledger='analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json'
    evidence[ledger]=service.digest((service.ROOT/ledger).read_bytes())
    service.write_once(output/'manifest.json',dict(sources=sources,evidence=evidence,
        full_delivery=False,complete_required_case_promoted=False,offline_archive=True))
    run=subprocess.run([sys.executable,'-X','utf8','-m','unittest',*TESTS],cwd=service.ROOT/'scripts',capture_output=True)
    (output/'controls.stdout.bin').write_bytes(run.stdout);(output/'controls.stderr.bin').write_bytes(run.stderr)
    service.write_once(output/'controls.json',dict(exit_code=run.returncode,modules=TESTS,
        stdout=run.stdout.decode('utf-8','replace'),stderr=run.stderr.decode('utf-8','replace'),
        evidence_level='offline synthetic fault/binding/integrity/transport controls; not online whole-case acceptance'))
    if run.returncode:raise ValueError('Targeted increment controls failed; raw failure retained')


def verify(output):
    manifest=read(output/'manifest.json');checks=0
    for name,wanted in manifest['sources'].items():
        if service.digest((output/'archive'/name).read_bytes())!=wanted or service.digest((service.ROOT/name).read_bytes())!=wanted:
            raise ValueError('Original/current archived source drift: '+name)
        checks+=2
    for name,wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Original evidence drift: '+name)
        checks+=1
    controls=read(output/'controls.json')
    if controls['exit_code']!=0 or controls['modules']!=list(TESTS):raise ValueError('Exact successful targeted controls required')
    outputs,_=build()
    for name,text in outputs.items():
        if (service.ROOT/'scripts'/name).read_text(encoding='utf-8-sig')!=text:raise ValueError('Canonical stage generation drift')
    # Native oracle source was copied before the last guard call; compare every
    # fixed source now, rather than treating a build-success flag as provenance.
    oracle=DAY/'bde-commit-guard-live-03/oracle-source';oracle_checks=0
    for p in oracle.iterdir():
        if p.name in ('bde_declaration_images.st','bde_enum_declaration_images.st','bde_message_declaration_images.st'):
            from bde_declaration_images import build as generated,build_enum,build_message
            expected={'bde_declaration_images.st':generated,'bde_enum_declaration_images.st':build_enum,
                'bde_message_declaration_images.st':build_message}[p.name]()
            if p.read_text(encoding='utf-8')!=expected:raise ValueError('Generated oracle source differs')
        elif p.read_bytes()!=(service.ROOT/'scripts'/p.name).read_bytes():raise ValueError('Guard oracle source drift: '+p.name)
        oracle_checks+=1
    prepared=read(DAY/'bde-commit-prepare-live-03/result.json')
    tool=read(DAY/'bde-commit-tool-live-04/result.json');audit=read(DAY/'bde-commit-tool-live-04/audit.json')
    if prepared['passed'] is not True or tool['passed'] is not True:raise ValueError('Genuine formal preparation and Tool.call results required')
    events=StructureJournal(DAY/'bde-commit-tool-live-04/store/edits').read(prepared['native_token'])
    event=events[-1]
    if event['kind']!='commit_resource_checked' or event['payload']['prepared_receipt']!=prepared['prepared_resources'][0]:
        raise ValueError('Original prepared/WAL identity differs')
    actual=recompute(audit['original_capture'],audit['checks'][-1])
    if actual!=audit['last_actual_changes'] or actual!=event['payload']['actual_changes'] or summary(event['payload'])!=tool['agent_summary']:
        raise ValueError('Independent native actual changes/WAL/agent summary differ')
    calls=read(DAY/'bde-commit-tool-live-04/tool-calls.json');groups=[]
    for row in calls:
        if row['tool']=='bd_read' and set(row['args'])=={'cursor'}:groups[-1].append(row)
        else:groups.append([row])
    page_checks=[]
    for group in groups:
        if group[0]['response']['is_error']:continue
        body=''.join(row['response']['content'].split('\n\n',1)[1] for row in group)
        page_checks.append(verify_pages(group,body,group[0]['args']['max_bytes']))
    diff=read(DAY/'bde-commit-tool-live-04/diff.json')
    if diff['commit_resource_checks'][0]['status']!=event['payload'] or diff['commit_resource_checks'][0]['event_sha256']!=event['checksum']:
        raise ValueError('Offline tool diff lost full original actual values')
    if not tool['offline_diff_zero_native_frames'] or not tool['offline_history_zero_native_frames'] or not all(r['no_native_frames'] for r in tool['rejections']):
        raise ValueError('Offline tools or rejected requests performed native access')
    model=read(DAY/'bde-commit-models-refusal-live-01/audit.json');model_proof=validate_audit(model)
    if model!=read(DAY/'bde-commit-models-refusal-live-01/audit-after-refusal.json') or model['checks']:
        raise ValueError('Refused model query changed original material or claimed current diff')
    guard=read(DAY/'bde-commit-guard-live-03/result.json')
    if (guard['passed'] is not True or not guard['inventory_unchanged'] or not guard['typed_graph_unchanged']
            or not guard['discard_prepared']['commit_resources_retained']):raise ValueError('Native no-write or retention proof failed')
    failures={name:read(DAY/name/'result.json') for name in ('bde-commit-guard-live-01','bde-commit-status-live-01')}
    if any(value['passed'] is not False or 'error' not in value for value in failures.values()):
        raise ValueError('Original native failures were lost or relabelled')
    ledger=read(service.ROOT/'analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json')
    return dict(passed=True,full_delivery=False,complete_required_case_promoted=False,goal_status='active',
        source_count=len(manifest['sources']),evidence_files=len(manifest['evidence']),hash_checks=checks,
        exact_guard_oracle_sources=oracle_checks,generated_stage_files=len(outputs),controls=controls,
        formal_prepare_verified=True,actual_doge_tool_call_verified=True,offline_diff_and_history_zero_native_frames=True,
        actual_diff_count=len(actual),actual_diff_categories=dict(Counter(row['category'] for row in actual)),
        actual_diff_fields=dict(Counter(row['field'] for row in actual)),page_checks=page_checks,
        prepared_resource_cache_entries=prepared['prepared_resources'][0]['cache_entries'],
        original_three_logical_record_bytes=sum(row['logical_size'] for row in prepared['prepared_resources'][0]['record_summaries']),
        loaded_registered_models=model_proof,loaded_model_current_diff_verified=False,
        full_commit_resource_closure=False,persistent_inverse_verified=False,model_edit_verified_this_increment=False,
        dirty_project_handling_live_verified=False,business_original_restoration_verified_this_increment=False,
        original_failures_retained=list(failures),historical_required_ledger=ledger['delivery_statuses'],
        historical_required_case_count=ledger['required_case_count'],performance_is_delivery_gate=False,
        next_implementation='Capture current SG field/value/collection images aligned to original tokens; complete transitive CTree and persistent resources; actual edit diff/guarded inverse, then full core/type/flow/UI/persistence/fault/Doge/AEB_Core/business restoration/package gates')


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--directory',type=Path,required=True)
    parser.add_argument('--prepare',action='store_true');parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.prepare:prepare(args.directory)
    result=verify(args.directory);service.write_once(args.output,result)
    print(json.dumps({key:result[key] for key in ('passed','source_count','hash_checks','actual_diff_count','full_delivery','goal_status')}))


if __name__=='__main__':main()
