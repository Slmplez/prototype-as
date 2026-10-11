"""Confirm one recorded no-store runtime lifecycle, without native calls/replay."""
import argparse
import hashlib
import json
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_connect_material import validate
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate as owner_validate
from bd_windows_endpoint import endpoint_process
from bde_connect_runtime_study import prepared, actual


def verify(original, frame, dispatched, value, inspected, bookend_before, bookend_after, fresh):
    domain=original['domain'];token=original['native_token'];material=frame['material']
    if (original.get('profile')!='bde_connect_runtime_study_v1' or original.get('passed') is not True
            or original.get('sources_match') is not True or original.get('edit_dispatched') is not True
            or original.get('pending_retained_until_independent_confirmation') is not True or original['wire']['errors']
            or token!='edit_'+fingerprint(dict(domain=domain,purpose='single_no_store_connect_runtime'))
            or original.get('production_connection_inverse_available') is not False or original.get('full_delivery') is not False):
        raise ValueError('Original successful one-shot study required')
    validate(material,token=token,component_oid=domain['oid'],source=material['source'],target=material['target'],phase='prepared')
    p=prepared(frame['runtime'],material);summary=actual(value,p)
    expected=dict(domain=domain,native_token=token,prepared_sha256=fingerprint(p),automatic_retry=False,operation='single_no_store_connect_remove')
    if dispatched!=expected or inspected!=value or bookend_before!=bookend_after or original.get('summary')!=summary:
        raise ValueError('Original durable dispatch/actual/inspection and complete bookends required')
    # Adapter logs command names, not request arguments. Dispatch identity is
    # bound by the immutable prepared/dispatch/actual files and native one-shot
    # state; do not manufacture action arguments from this name-only log.
    if original['native_commands'] != ['open','observe','observe_public','prepare','connect_material',
            'connect_runtime_lifecycle','connect_runtime_lifecycle','connect_runtime_lifecycle',
            'observe','observe_public','discard_prepared']:
        raise ValueError('Original fixed command sequence required')
    if fresh.get('passed') is not True or fresh.get('persistent_owner_records_stable') is not True or fresh['wire']['errors']:
        raise ValueError('Successful independent complete fresh owner/reference double read required')
    n=fresh['native'];m=n['module_read']
    if (fresh['pid']!=original['pid'] or fresh['port']!=original['port'] or n['process_epoch']!=domain['process_epoch']
            or n['database']!=domain['database'] or m['component']!=original['component'] or m['component_oid']!=domain['oid']
            or any(type(n[k]) is not int or n[k]!=0 for k in ('dirty_before','dirty_after'))):
        raise ValueError('Same live instance/database/component and clean original editor state required')
    samples=[owner_validate(r,component_oid=domain['oid']) for r in m['owner_observations']]
    if len(samples)!=2 or any(r!=p['before'] for r in samples):
        raise ValueError('Full fresh originals differ; no pending clear')
    return dict(summary=summary,native_calls=0,full_owner_fresh_reads=2,full_reference_fresh_reads=2,
        complete_public_bookends_preserved=True,original_state_independently_confirmed=True,
        runtime_edit_replayed=False,production_connection_inverse_available=False,full_delivery=False)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('evidence','fresh-read','output'):parser.add_argument('--'+name,type=Path,required=True)
    args=parser.parse_args();root=service.ROOT/'analysis/bde-experiments';e=args.evidence.resolve();f=args.fresh_read.resolve();o=args.output.resolve()
    if any(not p.is_relative_to(root) for p in (e,f,o)) or o.exists():raise ValueError('Owned original/fresh evidence and new output required')
    def read(p):return json.loads(p.read_text(encoding='utf-8'))
    original=read(e/'result.json');fresh=read(f/'result.json');frame=read(e/'prepared.json')
    o.mkdir(parents=True);result=dict(profile='bde_connect_runtime_confirmation_v1',passed=False,native_calls=0,full_delivery=False,evidence=str(e),fresh_read=str(f))
    try:
        result.update(verify(original,frame,read(e/'dispatch.json'),read(e/'actual.json'),read(e/'inspected.json'),read(e/'before.json'),read(e/'after.json'),fresh))
        checked=0
        for folder,doc in ((e,original),(f,fresh)):
            for relative,sha in doc['source_manifest'].items():
                p=folder/'source'/relative
                if not p.exists():p=folder/relative
                if hashlib.sha256(p.read_bytes()).hexdigest()!=sha:raise ValueError('Original frozen source changed: '+relative)
                checked+=1
        result['archived_source_hashes_checked']=checked
        with service.live_lock():
            if endpoint_process(fresh['port'])!=fresh['pid']:raise ValueError('Original fresh listener expired')
            marker=pending.pending_path(original['domain'])
            expected=dict(domain=original['domain'],command='connect_runtime_study',native_token=original['native_token'],automatic_retry=False,
                managed_context=dict(prepared_sha256=fingerprint(frame['runtime']),output=str(e)))
            if read(marker)!=expected:raise ValueError('Exact original pending marker required')
            service.write_once(o/'verified-original-state.json',result);pending.confirmed(marker)
        result.update(passed=True,pending_cleared_verified_original_state=True)
    except Exception as error:result['error']=str(error)
    service.write_once(o/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','summary')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
