"""Exercise the native preparation-only guard and retained-resource scope pins.

No retry, forced retirement, arbitrary Smalltalk, store or inverse. A rejected
direct native apply is tested on a fresh isolated preparation only.
"""
import argparse
import json
import os
from pathlib import Path
import time

import bd_service as service
from bd_edit_journal import fingerprint,NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
from bd_scope_inventory import validate
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest',type=Path,required=True)
    parser.add_argument('--component',required=True)
    parser.add_argument('--oid',required=True)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args();manifest,_,epoch=live_manifest(args.manifest)
    args.output.mkdir(parents=True,exist_ok=False)
    domain=dict(session=args.output.name,process_epoch=epoch,database=manifest['database'],oid=args.oid)
    token='edit_'+fingerprint(dict(domain=domain,request_id=args.output.name))
    result=dict(passed=False,automatic_retry=False,native_token=token,domain=domain,
        full_delivery=False,complete_case_pass=False,model_edit_verified=False,
        validation_scope='native capture-only write rejection and scope retention')
    service.write_once(args.output/'intent.json',result);started=time.perf_counter()
    try:
        binary=build_oracle(args.output,scope_lifecycle=True)
        class Probe(NativeStructureAdapter):build=staticmethod(lambda:binary)
        with service.live_lock(),proxy(manifest['port']) as wire:
            env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(wire['port']),
                ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_COMMIT_RESOURCE_CAPTURE='prepare_v1')
            with Probe(args.component,environment=env,timeout=50) as adapter:
                before=adapter.observe(domain,[])
                literal=next(row for row in before['entries'] if row['kind']=='node' and 'literal' in row)
                service.write_once(args.output/'capture-intent.json',dict(native_token=token,domain=domain,component=args.component))
                adapter.prepare(domain,token,'set_literal',[[literal['ref']],literal['ref'],'123.0'])
                result['prepared_receipt']=adapter.commit_resources_prepared
                result['prepare_commands']=adapter.commands
            env.pop('ASCET_BD_COMMIT_RESOURCE_CAPTURE')
            with Probe(args.component,environment=env,timeout=50) as adapter:
                adapter._ensure_open(domain)
                result['scope_policy']=adapter._exchange(dict(cmd='scope_policy_tests'))
                inventory=adapter._exchange(dict(cmd='scope_inventory'));validate(inventory)
                row=next(row for row in inventory['entries'] if row['scope']==args.oid+'/Main')
                reason='DogeBDECommitResourceWitnessesV1:commit_'+token[5:]
                if reason not in row['pins']:raise ValueError('Original commit material did not pin exact scope')
                result['inventory_before']=inventory
                service.write_once(args.output/'direct-apply-intent.json',dict(native_token=token,automatic_retry=False,
                    expected='PRECONDITION_CONFLICT before model mutation',capture_profile_disabled=True))
                try:adapter._exchange(dict(cmd='apply',token=token))
                except NativePreconditionConflict as error:
                    result['direct_apply_refused']=str(error)
                else:raise ValueError('Preparation-only native apply was accepted; retain all material')
                if 'Preparation-only commit resource material retained' not in result['direct_apply_refused']:
                    raise ValueError('Direct apply refused for a different precondition; guard unverified')
                service.write_once(args.output/'retire-intent.json',dict(scope=row['scope'],generation=row['generation'],
                    expected='retained refusal; no retirement',automatic_retry=False))
                try:adapter._exchange(dict(cmd='scope_retire',expected_generation=row['generation']))
                except RuntimeError as error:result['retire_refused']=str(error)
                else:raise ValueError('Retained commit scope was retired')
                if 'Structural scope retained; refusing retirement' not in result['retire_refused']:
                    raise ValueError('Retirement refused for a different reason; retained guard unverified')
                result['inventory_after']=adapter._exchange(dict(cmd='scope_inventory'))
                result['inventory_unchanged']=result['inventory_after']==inventory
                retained=adapter.commit_resource_status(domain,token)
                result['same_unwritten_original']=retained['prepared_edit_present'] and retained['same_original_binding']
                result['typed_graph_unchanged']=adapter.observe(domain,[])==before
                if not result['same_unwritten_original'] or not result['typed_graph_unchanged']:
                    raise ValueError('Fresh prepared native state changed; do not discard')
                result['discard_prepared']=adapter.discard_prepared(domain,token)
                result['retained_after_discard']=adapter.commit_resource_status(domain,token)
                result['commands']=adapter.commands
                result['passed']=(result['inventory_unchanged']
                    and 'commit original resources' in result['scope_policy']['tests']
                    and result['discard_prepared'].get('commit_resources_retained') is True
                    and result['retained_after_discard']['original_material_held'] is True
                    and result['retained_after_discard']['prepared_edit_present'] is False)
            result['traffic']=dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
    except Exception as error:result['error']=repr(error)
    result['wall_ms']=(time.perf_counter()-started)*1000
    service.write_once(args.output/'result.json',result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','direct_apply_refused','inventory_unchanged','typed_graph_unchanged')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
