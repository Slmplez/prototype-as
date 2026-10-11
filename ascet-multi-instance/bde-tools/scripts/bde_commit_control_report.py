"""Freeze and independently verify CTree control integration evidence; no ASCET calls."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil
import unittest
import bd_service as service
from bde_acceptance import source_manifest
from bd_commit_control import delta,validate_summary_image
from bd_commit_model_diff import recompute
from bd_commit_resources import status,summary,validate

DAY=service.ROOT/'analysis/bde-experiments/2026-10-07'
SAMPLES=('bde-commit-control-prepare-live-01','bde-commit-control-prepare-live-02',
    'bde-commit-control-prepare-live-03','bde-commit-control-current-live-01',
    'bde-commit-control-tool-live-01','bde-commit-control-tool-live-02',
    'bde-commit-control-private-live-01','bde-commit-control-failed-retain-live-01')
BOUNDARIES=('EtasAPIDiagram','EtasToolAPI','ASDPersistenceController','DBInterface32',
    'DBReferenceInterface32','CTreeInterface','CTreeLocalSearchInterface','CTreeLocalVariableAttributeInterface',
    'DBLinkProxy','DBLinDeLin','DBSwapperDumperLoader','RBObjectDumper','RBObjectLoader','SGEnumerationDB',
    'SGCodeContainerGeneratedExecutable','ASDCodeContainerHandle','ASAP2DBProject','DBObjectCache')


def read(path):return json.loads(path.read_text(encoding='utf-8-sig'))


def freeze(directory):
    directory.mkdir(parents=True,exist_ok=False)
    sources=source_manifest()
    for name in ('analysis/live-api/AscetStructureSession.exe','analysis/live-api/Etas.AscetNET.dll',
                 'Doge/scripts/bde-tool-call-eval.ts','scripts/bde_tool_client.py'):
        sources[name]=service.digest((service.ROOT/name).read_bytes())
    for name in BOUNDARIES:
        path=service.ROOT/'unpacked/smalltalk-source/ASDBase.ic'/f'{name}.st'
        sources[str(path.relative_to(service.ROOT)).replace('\\','/')]=service.digest(path.read_bytes())
    for name in sources:
        destination=directory/'archive'/name;destination.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/name,destination)
    evidence={}
    for name in SAMPLES:
        for path in (DAY/name).rglob('*'):
            if path.is_file():evidence[str(path.relative_to(service.ROOT)).replace('\\','/')]=service.digest(path.read_bytes())
    ledger='analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json'
    evidence[ledger]=service.digest((service.ROOT/ledger).read_bytes())
    control='analysis/bde-experiments/2026-10-07/bde-commit-control-development-01/controls.json'
    evidence[control]=service.digest((service.ROOT/control).read_bytes())
    service.write_once(directory/'manifest.json',dict(sources=sources,evidence=evidence,full_delivery=False))


def verify(directory):
    manifest=read(directory/'manifest.json');checks=0
    for name,wanted in manifest['sources'].items():
        if service.digest((directory/'archive'/name).read_bytes())!=wanted or service.digest((service.ROOT/name).read_bytes())!=wanted:
            raise ValueError('Archived/current source differs: '+name)
        checks+=2
    for name,wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Original evidence changed: '+name)
        checks+=1
    preparation=read(DAY/'bde-commit-control-prepare-live-03/result.json')
    if (not preparation['passed'] or preparation['process_started'] or preparation['process_restarted']
            or not preparation['typed_graph_unchanged'] or preparation['native_model_apply_commands']!=0):
        raise ValueError('Fixed same-dispatch zero-write preparation missing')
    receipt=validate(preparation['prepared_resources'][0],token=preparation['native_token'],component_oid=preparation['domain']['oid'])
    for experiment in ('bde-commit-control-prepare-live-03','bde-commit-control-tool-live-02'):
        for name,wanted in read(DAY/experiment/'source-manifest.json').items():
            if service.digest((service.ROOT/name).read_bytes())!=wanted:raise ValueError('Exact latest experiment source drift: '+name)
            checks+=1
    folder=DAY/'bde-commit-control-tool-live-02';tool=read(folder/'result.json');audit=read(folder/'audit.json')
    actual=recompute(audit)
    validate_summary_image(receipt['ctree_control'],audit['ctree_control_original_image'])
    if (receipt!=audit['prepared_receipt'] or not tool['passed'] or not tool['original_wal_unchanged']
            or not tool['fixed_sources_unchanged'] or not tool['typed_graph_unchanged']
            or not tool['offline_diff_zero_native_frames'] or not tool['offline_history_zero_native_frames']
            or not tool['offline_diff_complete_actual_values']):raise ValueError('Actual Doge/WAL/offline diff proof incomplete')
    recorded=read(folder/'diff.json')['commit_resource_checks'][0]['status']
    status(recorded,token=preparation['native_token'],component_oid=preparation['domain']['oid'],checked=True)
    if recorded['actual_changes']!=actual or summary(recorded)!=tool['agent_summary']:
        raise ValueError('Complete actual WAL or bounded agent summary differs')
    validate_summary_image(recorded['ctree_control_summary'],audit['ctree_control_checks'][-1]['after'])
    private=read(DAY/'bde-commit-control-private-live-01/result.json')
    values=read(DAY/'bde-commit-control-private-live-01/evidence.json')
    nonzero=delta(values['baseline'],values['current'],'since_preparation')
    if (nonzero!=values['actual_changes'] or nonzero!=private['changes'] or len(nonzero)!=3
            or not private['passed'] or not values['synthetic_baseline'] or values['live_control_fields_mutated']
            or not values['original_before_unchanged'] or not values['live_control_unchanged']):
        raise ValueError('Synthetic native nonzero control evidence differs')
    for name in ('bde_commit_control.st','bde_commit_control_diff_private.st','AscetStructureSession.cs'):
        old=DAY/'bde-commit-control-private-live-01/oracle-source'/name
        if old.read_bytes()!=(service.ROOT/'scripts'/name).read_bytes():raise ValueError('Private native input drift: '+name)
        checks+=1
    failure=read(DAY/'bde-commit-control-prepare-live-01/result.json')
    held=read(DAY/'bde-commit-control-failed-retain-live-01/result.json')
    if failure['passed'] is not False or 'Direct CTree register path unavailable' not in failure['edit']['error']:
        raise ValueError('Original path-default failure verdict changed')
    if not held['passed'] or not held['original_prepared_retained'] or not held['typed_graph_unchanged']:
        raise ValueError('Failed preparation material retention missing')
    for name in SAMPLES:
        sample=read(DAY/name/'result.json')
        if sample['process_epoch']!=preparation['process_epoch']:raise ValueError('Experimental epoch changed')
    ledger=read(service.ROOT/'analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json')
    controls=read(DAY/'bde-commit-control-development-01/controls.json')
    if controls['exit_code']!=0 or unittest.defaultTestLoader.loadTestsFromNames(controls['modules']).countTestCases()!=controls['tests']:
        raise ValueError('Recorded offline controls or current test census differs')
    return dict(passed=True,source_count=len(manifest['sources']),hash_checks=checks,evidence_files=len(manifest['evidence']),
        process_epoch=preparation['process_epoch'],ascet_start_count=0,ascet_restart_count=0,
        same_dispatch_preparation_verified=True,ctree_control=receipt['ctree_control'],actual_doge_tool_call_verified=True,
        full_wal_actual_changes=len(actual),actual_change_fields=dict(Counter(row['field'] for row in actual)),
        ctree_control_actual_changes=recorded['ctree_control_summary']['actual_change_count'],
        native_synthetic_baseline_nonzero_changes=len(nonzero),synthetic_baseline_is_real_transaction_mutation=False,
        original_failed_preparation_retained=True,original_failures_preserved=['bde-commit-control-prepare-live-01'],
        initial_failed_partial_control_image_recoverable=False,offline_diff_history_native_frames=0,
        agent_pagination=tool['pagination'],diff_pagination=tool['diff_pagination'],history_pagination=tool['history_pagination'],
        offline_controls=controls['tests'],offline_controls_are_live_model_edits=False,
        full_commit_resource_closure=False,persistent_inverse_verified=False,model_edit_verified_this_increment=False,
        business_original_restoration_verified_this_increment=False,dirty_project_handling_live_verified=False,
        historical_required_case_count=ledger['required_case_count'],historical_required_ledger=ledger['delivery_statuses'],
        new_complete_required_cases_passed=0,full_delivery=False,goal_status='active',
        next_implementation='Fresh scoped serialization and finite reciprocal persistent write set, then controlled write and patch inverse; preserve the current ASCET epoch')


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--directory',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--freeze',action='store_true');args=p.parse_args()
    if args.freeze:freeze(args.directory)
    result=verify(args.directory);service.write_once(args.output,result)
    print(json.dumps({key:result[key] for key in ('passed','source_count','hash_checks','full_wal_actual_changes','ascet_restart_count','full_delivery')}))


if __name__=='__main__':main()
