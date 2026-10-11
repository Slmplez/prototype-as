"""One isolated live graph connect/remove, with durable intent and no Store.

This checks native graph restoration and unchanged complete persistent records.
It does not establish a production connection edit/inverse lifecycle.
"""
import argparse
import json
import os
from pathlib import Path
import re
import shutil

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_persistent_owner_records import validate as validate_owners
from bd_native_graphical_effects import validate_current, validate_actual_diff
from bd_windows_endpoint import endpoint_process
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_public_oracle import compare


def prepared(value, material):
    fields = set(('profile native_token component_oid generation before graphical_before model_operations '
        'store_called commit_called persistent_write_calls production_connection_inverse_available').split())
    if (type(value) is not dict or set(value) != fields or value['profile'] != 'isolated_connect_runtime_prepared_v1'
            or any(value[k] != material[k] for k in ('native_token', 'component_oid'))
            or type(value['generation']) is not int or value['generation'] != material['module_references']['generation']
            or validate_owners(value['before'], component_oid=value['component_oid']) != material['persistent_owner_records']['before']
            or value['graphical_before'] != material['graphical_before']
            or any(type(value[k]) is not int or value[k] != 0 for k in ('model_operations','persistent_write_calls'))
            or any(value[k] is not False for k in ('store_called','commit_called','production_connection_inverse_available'))):
        raise ValueError('Exact original-bound zero-write runtime preparation required')
    validate_current(value['graphical_before'])
    return value


def actual(value, original):
    fields = set(('profile native_token component_oid generation before after_connect after graphical_before graphical_actual '
        'actual_created_edge endpoint_identity_verified model_operations native_restore_primitives '
        'original_native_source_order_restored store_called commit_called persistent_write_calls '
        'production_connection_inverse_available full_delivery').split())
    if (type(value) is not dict or set(value) != fields or value['profile'] != 'isolated_connect_runtime_actual_v1'
            or any(fingerprint(value[k]) != fingerprint(original[k]) for k in ('native_token','component_oid','generation','before','graphical_before'))
            or any(validate_owners(value[k], component_oid=value['component_oid']) != original['before'] for k in ('after_connect','after'))
            or any(value[k] is not True for k in ('actual_created_edge','endpoint_identity_verified','original_native_source_order_restored'))
            or type(value['model_operations']) is not int or value['model_operations'] != 2
            or type(value['persistent_write_calls']) is not int or value['persistent_write_calls'] != 0
            or type(value['native_restore_primitives']) is not int or not 0 <= value['native_restore_primitives'] <= 100000
            or any(value[k] is not False for k in ('store_called','commit_called','production_connection_inverse_available','full_delivery'))):
        raise ValueError('Complete one-shot original runtime/source/raw restoration required')
    diff = validate_actual_diff(value['graphical_before'], value['graphical_actual'])
    if diff['new_objects'] < 1 or diff['changed_entries'] < 1:
        raise ValueError('Actual native created edge and existing graph changes required')
    return dict(profile='isolated_connect_runtime_summary_v1', actual_live_connect_remove=True,
        changed_graphical_entries=diff['changed_entries'], new_graphical_objects=diff['new_objects'],
        native_restore_primitives=value['native_restore_primitives'], model_operations=2,
        complete_original_restored=True, store_called=False, commit_called=False,
        production_connection_inverse_available=False, full_delivery=False)


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--read-probe',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True);args=parser.parse_args()
    base=service.ROOT/'analysis/bde-experiments';prior=args.read_probe.resolve();out=args.output.resolve()
    if not prior.is_relative_to(base) or not out.is_relative_to(base) or out.exists(): raise ValueError('Owned fresh study output required')
    proof=json.loads((prior/'result.json').read_text(encoding='utf-8'));n=proof['native'];m=n['module_read']
    if proof.get('passed') is not True or proof.get('persistent_owner_records_stable') is not True:
        raise ValueError('Complete fresh original owner/ref witness required')
    component=m['component'];port=proof['port'];pid=proof['pid']
    if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+',component) or endpoint_process(port)!=pid:
        raise ValueError('Exact existing isolated Module listener required')
    domain=dict(session=out.name,database=n['database'],process_epoch=n['process_epoch'],oid=m['component_oid'])
    pending.check(domain);out.mkdir(parents=True)
    token='edit_'+fingerprint(dict(domain=domain,purpose='single_no_store_connect_runtime'))
    result=dict(profile='bde_connect_runtime_study_v1',passed=False,domain=domain,component=component,
        port=port,pid=pid,native_token=token,source_manifest=source_manifest(),read_probe=str(prior),
        stage='prepare',edit_dispatched=False,full_delivery=False,production_connection_inverse_available=False)
    def save(): (out/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        dest=out/'source'/relative;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/relative,dest)
    env={k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    env.update(ASCET_BD_ENDPOINT_PORT=str(port),ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CONNECT_MATERIAL='identity_v1',
        ASCET_BD_CONNECT_HISTORY='native_source_exact_v1',ASCET_BD_CONNECT_REFERENCES='module_owner_records_v1',
        ASCET_BD_CONNECT_RUNTIME_STUDY='single_no_store_v1',ASCET_BD_NATIVE_TRACE='1')
    targets=[bytes(k).hex() for k in m['persistent_observations'][1].get('requested_reciprocal_targets',[])]
    try:
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port)!=pid: raise ValueError('Listener changed before study')
            with proxy(upstream_port=port) as wire:
                try:
                    with NativeStructureAdapter(component,timeout=40,connect_reference_targets=targets,
                            environment=dict(env,ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                        before=adapter.observe(domain,[]);public_before=adapter.observe_public(domain)
                        if compare(before['entries'],public_before)['passed'] is not True: raise ValueError('Public/native original mismatch')
                        service.write_once(out/'before.json',dict(native=before,public=public_before))
                        pins=[r for r in before['entries'] if r['kind']=='pin'];occupied={r['target'] for r in before['entries'] if r['kind']=='edge'}
                        pairs=[(a,b) for a in pins for b in pins if a['output'] and not a['input'] and b['input'] and not b['output']
                            and b['ref'] not in occupied and a['owner']!=b['owner']]
                        if not pairs: raise ValueError('No original output/free-input pair')
                        a,b=pairs[0]
                        if adapter.prepare(domain,token,'connect_data',[[],a['ref'],b['ref']])!=before: raise ValueError('Preparation changed original semantic observation')
                        material=adapter.connect_material_prepared
                        if material['persistent_owner_records']['before']!=m['owner_observations'][1]: raise ValueError('Complete original raw records changed since read witness')
                        prep=prepared(adapter._exchange(dict(cmd='connect_runtime_lifecycle',token=token,action='prepare')),material)
                        service.write_once(out/'prepared.json',dict(material=material,runtime=prep))
                        result['stage']='dispatch';save()
                        marker=pending.begin(domain,'connect_runtime_study',token,context=dict(prepared_sha256=fingerprint(prep),output=str(out)))
                        service.write_once(out/'dispatch.json',dict(domain=domain,native_token=token,prepared_sha256=fingerprint(prep),
                            automatic_retry=False,operation='single_no_store_connect_remove'))
                        result['edit_dispatched']=True;save()
                        value=adapter._exchange(dict(cmd='connect_runtime_lifecycle',token=token,action='execute'))
                        service.write_once(out/'actual.json',value);result['summary']=actual(value,prep)
                        inspected=adapter._exchange(dict(cmd='connect_runtime_lifecycle',token=token,action='inspect'))
                        service.write_once(out/'inspected.json',inspected)
                        if inspected!=value: raise ValueError('Terminal runtime proof changed')
                        after=adapter.observe(domain,[]);public_after=adapter.observe_public(domain)
                        service.write_once(out/'after.json',dict(native=after,public=public_after))
                        if before!=after or public_before!=public_after: raise ValueError('Complete public/native original not restored')
                        result['pending_retained_until_independent_confirmation']=True
                        result['discard']=adapter.discard_prepared(domain,token)
                finally:
                    if 'adapter' in locals():result['native_commands']=adapter.commands.copy();result['native_stderr_tail']=adapter.stderr_tail.copy()
                    result['wire']=dict(connections=wire['connections'],request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if result['wire']['errors']:raise ValueError('Wire error retained')
        result.update(passed=True,stage='finished',sources_match=result['source_manifest']==source_manifest())
        if not result['sources_match']:raise ValueError('Study source drift')
    except Exception as error:result.update(passed=False,error=str(error))
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','stage','error','summary','full_delivery')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
