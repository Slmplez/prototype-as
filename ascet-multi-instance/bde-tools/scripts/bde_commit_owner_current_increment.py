"""Freeze actual v6 CURRENT/WAL evidence and rerun targeted controls offline."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

import bd_service as service
from bd_commit_owner_current import summary, differences, projection
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();root=service.ROOT/'analysis/bde-experiments/2026-10-11';output=args.output.resolve()
    if not output.is_relative_to(root) or output.exists():raise ValueError('Fresh owned checkpoint required')
    output.mkdir(parents=True)
    result=dict(profile='bde_commit_owner_current_checkpoint_v1',passed=False,native_calls_by_report=0,
        full_delivery=False,production_connection_inverse_available=False,model_store_verified=False,
        full_commit_resource_closure=False,complete_message_lifecycle_cases_passed=0,
        required_cases_upgraded=False,ascet_started_or_restarted=False)
    read=lambda p:json.loads(p.read_text(encoding='utf-8'))
    try:
        prep=root/'bde-connect-store-resources-preflight-03'
        current=root/'bde-commit-owner-current-live-02';journal=root/'bde-commit-owner-journal-live-02'
        p,c,j=(read(folder/'result.json') for folder in (prep,current,journal))
        if any(doc.get('passed') is not True for doc in (p,c,j)):raise ValueError('Actual prepare/current/journal success required')
        original=read(prep/'original-audit.json')['persistent_owner_capture']
        for i in (1,2):
            actual=read(current/f'current-{i}.json')
            if summary(original,actual)!=c['summaries'][i-1] or differences(original,actual)!=read(current/f'diff-{i}.json'):
                raise ValueError('Full actual CURRENT records and independent diff differ')
        log=StructureJournal(journal/'store/edits');events=log.read(j['native_token'])
        prepared=next(e['payload']['commit_resources_prepared'] for e in events if e['kind']=='prepared')
        owners=[e for e in events if e['kind']=='commit_owner_records_observed']
        if len(owners)!=1 or projection(owners[0]['payload'],prepared)!=j['owner_summary']:
            raise ValueError('Original WAL actual owner projection differs')
        offline=log.diff(j['native_token'])
        if offline!=read(journal/'offline-diff.json') or j['offline_diff_zero_native_frames'] is not True:
            raise ValueError('Actual immutable offline diff differs')
        if j.get('production_offline_diff_matches') is not True or j.get('offline_history_summary_matches') is not True:
            raise ValueError('Production offline paged diff and history proof required')
        failed=root/'bde-connect-store-failure-inspect-01';f=read(failed/'report.json')
        if (f['census_matches'] is not True or len(f['records'])!=16017 or f['identity_after_checked'] is not False
                or f['changed_function_before'][4:]!=f['changed_function_after'][4:]
                or f['changed_function_before'][:4]!=[0,0,0,0] or f['changed_function_after'][:4]==[0,0,0,0]):
            raise ValueError('Preserved original strict function-byte guard failure differs')
        folders=(prep,current,journal,root/'bde-connect-store-resources-preflight-02',root/'bde-commit-owner-current-live-01')
        evidence={};archived=0
        for folder in folders:
            doc=read(folder/'result.json')
            for relative,sha in doc.get('source_manifest',{}).items():
                path=folder/'source'/relative
                if hashlib.sha256(path.read_bytes()).hexdigest()!=sha:raise ValueError('Archived source drift: '+relative)
                archived+=1
            for name in ('result.json','prepared.json','current.json','current-1.json','current-2.json',
                    'original-audit.json','offline-diff.json','offline-diff-pages.json','before.json','after.json'):
                path=folder/name
                if path.is_file():evidence[folder.name+'/'+name]=hashlib.sha256(path.read_bytes()).hexdigest()
        evidence[failed.name+'/report.json']=hashlib.sha256((failed/'report.json').read_bytes()).hexdigest()
        sources=source_manifest()
        for relative,sha in sources.items():
            path=service.ROOT/relative;destination=output/'source'/relative
            destination.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(path,destination)
            if hashlib.sha256(destination.read_bytes()).hexdigest()!=sha:raise ValueError('Frozen source mismatch')
        modules=('test_bd_commit_owner_current','test_bd_commit_resource_journal','test_bd_commit_resources',
            'test_bd_commit_persistent_owners','test_bd_structural_diff_route')
        tests=subprocess.run([sys.executable,'-X','utf8','-m','unittest','-v',*modules],cwd=output/'source/scripts',capture_output=True,timeout=60)
        logbytes=tests.stdout+tests.stderr;(output/'controls.log').write_bytes(logbytes)
        count=re.search(rb'Ran (\d+) tests',logbytes)
        if tests.returncode or count is None:raise ValueError('Frozen controls failed')
        result.update(passed=True,source_manifest=sources,frozen_source_files=len(sources),
            archived_source_hashes_checked=archived,local_evidence_hashes=evidence,
            original_v6_preparation_verified=True,original_registered_sg_objects=p['registered_models']['objects'],
            original_reference_records=prepared['reference_file_baseline']['record_count'],
            same_original_owner_current_reads_verified=2,records_per_current_read=6,
            original_raw_records_match=True,ctree_read_effects_reported=True,
            production_inspect_wal_verified=True,offline_diff_zero_native_frames=True,
            production_offline_diff_pages=j['offline_diff_pages'],offline_history_verified=True,
            strict_platform_function_guard_unchanged=True,old_failure_verdict_preserved=True,
            offline_controls=dict(tests=int(count[1]),exit_code=0,modules=list(modules),online_acceptance=False,
                executed_from_frozen_sources=True),model_operations=0,store_called=False,commit_called=False,
            native_wire={folder.name:doc['wire'] for folder,doc in ((prep,p),(current,c),(journal,j))})
    except Exception as error:result.update(passed=False,error=str(error))
    service.write_once(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','offline_controls','archived_source_hashes_checked')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
