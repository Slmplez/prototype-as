"""Freeze native changed source record/readback/restore evidence offline."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

import bd_service as service
from bde_private_layout_probe import SOURCES
from bde_private_layout_confirm import verify_documents
from bd_serialized_source_candidate import candidate_from_private_layout


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();root=service.ROOT/'analysis/bde-experiments/2026-10-11';output=args.output.resolve()
    if not output.is_relative_to(root) or output.exists():raise ValueError('Fresh owned checkpoint required')
    output.mkdir(parents=True)
    result=dict(profile='bde_changed_source_record_checkpoint_v1',passed=False,native_calls_by_report=0,full_delivery=False,
        production_connection_inverse_available=False,complete_message_lifecycle_cases_passed=0,required_cases_upgraded=False,
        ascet_started_or_restarted_by_increment=False,unknown_writer_replayed=False)
    try:
        names=('bde-private-layout-after-live-01','bde-private-layout-after-fresh-01','bde-private-layout-after-confirm-01',
            'bde-source-payload-lifecycle-live-01','bde-source-payload-lifecycle-fresh-01','bde-source-payload-lifecycle-confirm-01')
        def read(path):return json.loads(path.read_text(encoding='utf-8'))
        docs={name:read(root/name/'result.json') for name in names};hashes_evidence={};checked=0
        for name,doc in docs.items():
            for file,sha in doc.get('source_manifest',{}).items():
                if Path(file).name!=file or hashlib.sha256((root/name/file).read_bytes()).hexdigest()!=sha:
                    raise ValueError('Archived source changed: '+name+'/'+file)
                checked+=1
            for file in ('result.json','native.json','prepared.json','dispatch.json','verified-original-state.json','offline-source-candidate.json','build.log'):
                path=root/name/file
                if path.is_file():hashes_evidence[name+'/'+file]=hashlib.sha256(path.read_bytes()).hexdigest()
        layout=docs[names[0]];written=docs[names[3]];fresh=docs[names[4]];confirmed=docs[names[5]]
        extracted=read(root/names[3]/'extraction-proof.json');prior=Path(layout['extraction']).resolve()
        if not prior.is_relative_to(root) or read(prior/'result.json')!=extracted:raise ValueError('Exact bound extraction proof required')
        dump=read(prior/'dump-proof.json');inventory=read(prior/'inventory-proof.json')
        verified=verify_documents(written,read(root/names[3]/'native.json'),layout,dump,inventory,fresh,
            read(root/names[3]/'prepared.json'),read(root/names[3]/'dispatch.json'),source_payload=True,source_extraction=extracted)
        if confirmed.get('passed') is not True or confirmed.get('pending_cleared_verified_original_state') is not True or any(
                confirmed.get(k)!=v for k,v in verified.items()):raise ValueError('Complete independent exact original-state confirmation required')
        candidate=candidate_from_private_layout(layout['native']['prepared']['before'],layout['native'],extracted)
        if read(root/names[0]/'offline-source-candidate.json')!=candidate:raise ValueError('Independent source candidate differs')
        before=written['native']['actual']['before']['owners'][1]['allocated_bytes']
        after=written['native']['actual']['candidate']['owners'][1]['allocated_bytes']
        files=set(SOURCES)|{'AscetSourcePayloadProbe.cs','bde_source_payload_lifecycle.st','bde_persistent_owner_patch.st',
            'bde_source_payload_probe.py','bde_source_payload_confirm.py','bd_serialized_source_candidate.py',
            'bde_private_layout_probe.py','bde_private_layout_confirm.py','bde_source_payload_increment.py'}
        modules=('test_bde_source_payload_probe','test_bde_private_layout_probe','test_bde_fresh_serializer_extract_probe',
            'test_bde_fresh_serializer_dump_probe','test_bde_reference_leaf_noop_probe','test_bde_reference_leaf_lifecycle_probe',
            'test_bde_persistent_owner_patch_probe','test_bd_persistent_owner_patch')
        files.update(m+'.py' for m in modules);queue=list(files);visited=set()
        while queue:
            name=queue.pop()
            if name in visited or not name.endswith('.py'):continue
            visited.add(name);tree=ast.parse((service.ROOT/'scripts'/name).read_text(encoding='utf-8-sig'))
            for node in ast.walk(tree):
                imports=[a.name for a in node.names] if isinstance(node,ast.Import) else [node.module] if isinstance(node,ast.ImportFrom) and node.module else []
                for imported in imports:
                    item=imported.split('.')[0]+'.py'
                    if (service.ROOT/'scripts'/item).is_file() and item not in files:files.add(item);queue.append(item)
        hashes={}
        for name in sorted(files):
            src=service.ROOT/'scripts'/name;dest=output/'source/scripts'/name;dest.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(src,dest);hashes['scripts/'+name]=hashlib.sha256(src.read_bytes()).hexdigest()
        for name in ('bde-fresh-source-serializer.md','bde-delivery-status.md','bde-tools-task-nodes-v1.md'):
            src=service.ROOT/'docs'/name;dest=output/'source/docs'/name;dest.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(src,dest);hashes['docs/'+name]=hashlib.sha256(src.read_bytes()).hexdigest()
        tests=subprocess.run([sys.executable,'-X','utf8','-m','unittest','-v',*modules],cwd=output/'source/scripts',capture_output=True,timeout=60)
        log=tests.stdout+tests.stderr;(output/'controls.log').write_bytes(log);count=re.search(rb'Ran (\d+) tests',log)
        if tests.returncode or count is None:raise ValueError('Frozen related controls failed')
        for path,sha in hashes.items():
            if hashlib.sha256((output/'source'/path).read_bytes()).hexdigest()!=sha:raise ValueError('Frozen source drift')
        result.update(passed=True,source_manifest=hashes,evidence_sha256=hashes_evidence,archived_source_hashes_checked=checked,
            frozen_source_files=len(hashes),online_private_layout=docs[names[2]]['summary'],online_source_record=verified['summary'],
            original_state_independently_confirmed=True,pending_cleared_verified_original_state=True,
            physical_source_record_diff=dict(before_bytes=len(before),after_bytes=len(after),
                changed_bytes=sum(a!=b for a,b in zip(before,after))+abs(len(before)-len(after)),
                header_identity_preserved=before[:126]==after[:126],semantic_private_coordinate_changes=1),
            native_wire={name:docs[name]['wire'] for name in (names[0],names[3],names[4])},
            offline_controls=dict(tests=int(count[1]),exit_code=0,modules=list(modules),executed_from_frozen_sources=True,online_acceptance=False),
            graphical_cache_reloaded=False,store_called=False,commit_called=False,crash_durability_verified=False,
            production_move_verified=False,production_inverse_authorized=False,full_commit_resource_closure=False,
            business_restoration_hold_cleared=False)
    except Exception as error:result['error']=str(error)
    service.write_once(output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','online_source_record','offline_controls','full_delivery')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
