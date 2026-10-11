"""Zero-model-write verification of the formal prepared-resource binding.

Reuses the supplied existing manifested process. Never starts/restarts ASCET,
retries capture or attempts inverse.
"""
import argparse
from contextlib import nullcontext
import hashlib
import json
import os
from pathlib import Path
import sys
import time

import bd_service
from bd_edit_journal import fingerprint, NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--component', required=True)
    parser.add_argument('--oid', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--registered-models',action='store_true',help='Capture loaded SG objects with original direct resource material')
    parser.add_argument('--ctree-control',action='store_true',help='Capture every backend leaf control route and ordered savepoints; no transaction methods')
    parser.add_argument('--reciprocal-references',action='store_true',help='Capture original inbound records for all original outgoing targets in the same preparation')
    parser.add_argument('--reference-baseline',action='store_true',help='Capture a new observed reference-file baseline in the same preparation dispatch')
    parser.add_argument('--persistent-owners',action='store_true',help='Capture component and SGTopGraphicsBlockDB persistent owners in the same preparation dispatch')
    args = parser.parse_args()
    if args.ctree_control and not args.registered_models:
        parser.error('--ctree-control requires --registered-models')
    if args.reciprocal_references and not args.ctree_control:
        parser.error('--reciprocal-references requires --ctree-control')
    if args.reference_baseline and not args.reciprocal_references:
        parser.error('--reference-baseline requires --reciprocal-references')
    if args.persistent_owners and not args.reference_baseline:
        parser.error('--persistent-owners requires --reference-baseline')
    manifest, process, epoch = live_manifest(args.manifest)
    args.output.mkdir(parents=True, exist_ok=False)
    domain = dict(session=args.output.name, process_epoch=epoch, database=manifest['database'], oid=args.oid)
    result = dict(passed=False, process_epoch=epoch, component=args.component, domain=domain,
        automatic_retry=False, validation_scope='formal preparation binding and zero-write rejection only',
        model_edit_verified=False, full_delivery=False, complete_case_pass=False,process_started=False,process_restarted=False)
    bd_service.write_once(args.output/'intent.json',result)
    start=time.perf_counter()
    try:
        binary=compile_bridge()
        from bde_acceptance import source_manifest
        sources=source_manifest()
        sources[str(binary.relative_to(bd_service.ROOT)).replace('\\','/')]=bd_service.digest(binary.read_bytes())
        bd_service.write_once(args.output/'source-manifest.json',sources)
        if args.reference_baseline:
            for name in sources:
                destination=args.output/'source'/name
                destination.parent.mkdir(parents=True,exist_ok=True)
                destination.write_bytes((bd_service.ROOT/name).read_bytes())
            sdk={}
            for role,path in (('compile_sdk',Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))),
                              ('runtime_sdk',binary.with_name('Etas.AscetNET.dll'))):
                raw=path.read_bytes();sdk[role]=dict(path=str(path.resolve()),sha256=bd_service.digest(raw))
                (args.output/(role+'.dll')).write_bytes(raw)
            bd_service.write_once(args.output/'external-inputs.json',sdk)
        with bd_service.live_lock(), proxy(manifest['port']) as wire:
            environment=dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
                ASCET_BD_COMMIT_RESOURCE_CAPTURE='prepare_v1')
            if args.registered_models:environment['ASCET_BD_COMMIT_REGISTERED_MODELS']='loaded_sg_v1'
            if args.ctree_control:environment['ASCET_BD_COMMIT_CONTROL_CAPTURE']='ctree_v1'
            if args.reciprocal_references:environment['ASCET_BD_COMMIT_RECIPROCAL_CAPTURE']='outgoing_v1'
            if args.reference_baseline:environment['ASCET_BD_COMMIT_REFERENCE_BASELINE']='reference_file_v1'
            if args.persistent_owners:environment['ASCET_BD_COMMIT_PERSISTENT_OWNERS']='component_source_v1'
            with NativeStructureAdapter(args.component,environment=environment,timeout=50) as adapter:
                before=adapter.observe(domain,[])
                bd_service.write_once(args.output/'before.json',before)
                literal=next(row for row in before['entries'] if row['kind']=='node' and 'literal' in row)
                request=dict(domain=domain,request_id=args.output.name,component=args.component,diagram='Main',
                    operation='set_literal',arguments=[[literal['ref']], literal['ref'], '123.0'],
                    expect=fingerprint(adapter.observe(domain,[literal['ref']])))
                log=StructureJournal(args.output/'journal')
                edit=log.execute(request,adapter,nullcontext)
                result['edit']=edit
                token=edit['change_id']
                events=log.read(token)
                proofs=[event['payload']['commit_resources_prepared'] for event in events
                        if event['kind']=='prepared' and 'commit_resources_prepared' in event['payload']]
                result['prepared_resources']=proofs
                if args.registered_models:
                    expected_profile=('native_commit_prepare_v6' if args.persistent_owners else 'native_commit_prepare_v5' if args.reference_baseline else 'native_commit_prepare_v4' if args.reciprocal_references else
                        'native_commit_prepare_v3' if args.ctree_control else 'native_commit_prepare_v2')
                    if len(proofs)!=1 or proofs[0]['profile']!=expected_profile:
                        raise ValueError('Same-dispatch loaded SG capture receipt required')
                    result['registered_models']=proofs[0]['registered_models']
                result['journal_event_kinds']=[event['kind'] for event in events]
                result['duplicate']=log.execute(request,adapter,nullcontext)
                result['after']=adapter.observe(domain,[])
                result['typed_graph_unchanged']=result['after']==before
                result['native_token']=token
                result['commands']=adapter.commands
                result['native_model_apply_commands']=sum(cmd=='apply' for cmd in adapter.commands)
                result['passed']=(edit['status']=='conflict' and edit['setter_called'] is False
                    and len(proofs)==1 and result['typed_graph_unchanged']
                    and result['duplicate']==edit and result['native_model_apply_commands']==0)
                if args.ctree_control:
                    from bd_commit_control import validate_summary_image,delta
                    audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=token))
                    bd_service.write_once(args.output/'audit.json',audit)
                    validate_summary_image(proofs[0]['ctree_control'],audit['ctree_control_original_image'])
                    result['ctree_control']=proofs[0]['ctree_control']
                    result['control_capture_read_effects']=delta(audit['ctree_control_original_image'],audit['ctree_control_after_capture'],'query_read_effect')
                    if result['control_capture_read_effects']!=audit['ctree_control_capture_read_effects']:
                        raise ValueError('Independent CTree control capture effects differ')
                    if args.reciprocal_references:
                        from bd_commit_reciprocal import validate_capture
                        reciprocal=audit['original_reciprocal_capture']
                        result['reciprocal_references']=validate_capture(reciprocal)
                        if (result['reciprocal_references']!=proofs[0]['reciprocal_references']
                                or reciprocal['outgoing_record']!=audit['original_capture']['records'][1]
                                or reciprocal['owner_key']!=audit['original_capture']['owner_key']
                                or audit['current_reciprocal_records_checked'] is not False):
                            raise ValueError('Original same-dispatch reciprocal proof differs')
                    if args.reference_baseline:
                        from bd_commit_reference_baseline import validate_summary
                        from bde_reference_file_capture_experiment import export_report
                        from bde_reference_file_profile_experiment import validate_profile
                        from bd_reference_file_compact import expand
                        from bd_reference_file_observation import validate as validate_scan
                        baseline=validate_summary(proofs[0]['reference_file_baseline'],token=token,component_oid=args.oid,generation=proofs[0]['generation'])
                        if audit['reference_file_baseline']!=baseline or audit['current_reference_file_checked'] is not False:
                            raise ValueError('Same-preparation original reference baseline differs')
                        query=dict(cmd='commit_reference_file_capture',token=token,profile_index=baseline['profile_index'],section='',offset=0,limit=64)
                        profile=adapter._exchange(dict(query,action='profile'))
                        bd_service.write_once(args.output/'reference-profile.json',profile)
                        validate_profile(profile,dict(native_token=token,domain=domain,prepared_resources=proofs))
                        summary=adapter._exchange(dict(query,action='inspect'))
                        bd_service.write_once(args.output/'reference-summary.json',summary)
                        pages=args.output/'reference-pages';pages.mkdir()
                        full=export_report(adapter,query,summary,pages,profile)
                        bd_service.write_once(args.output/'reference-report.json',full)
                        observed=validate_scan(expand(full),profile)
                        bd_service.write_once(args.output/'reference-validated.json',observed)
                        if (observed['passed'] is not True or observed['records']!=baseline['record_count']
                                or observed['events']!=baseline['events']):
                            raise ValueError('New same-dispatch baseline failed independent complete census')
                        result['reference_file_baseline']=baseline
                        result['reference_observation_verified']=True
                        result['reference_profile']=profile['profile_index']
                    if args.persistent_owners:
                        from bd_commit_persistent_owners import validate_audit as validate_persistent
                        validate_persistent(audit)
                        result['persistent_owners']=proofs[0]['persistent_owners']
                        result['persistent_owner_audit_verified']=True
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if live_manifest(args.manifest)[2]!=epoch:raise ValueError('Original process epoch changed')
        result['sources_unchanged']=all(bd_service.digest((bd_service.ROOT/name).read_bytes())==value for name,value in sources.items())
        if not result['sources_unchanged']:raise ValueError('Source changed during same-dispatch preparation')
        if args.reference_baseline:
            result['sdk_sources_unchanged']=all(bd_service.digest(Path(row['path']).read_bytes())==row['sha256'] for row in sdk.values())
            if not result['sdk_sources_unchanged']:raise ValueError('Compiled or running SDK changed')
    except Exception as error:
        result['error']=repr(error);result['passed']=False
    result['wall_ms']=(time.perf_counter()-start)*1000
    bd_service.write_once(args.output/'result.json',result)
    print(json.dumps({key:result.get(key) for key in ('passed','error','native_token','wall_ms','typed_graph_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__': raise SystemExit(main())
