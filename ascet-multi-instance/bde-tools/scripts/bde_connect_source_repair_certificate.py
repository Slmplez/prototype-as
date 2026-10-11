"""Certify a completed isolated source repair without replaying its primitives."""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_frozen_source_inverse import inspect, _rows, _cells
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_public_oracle import compare
from bde_connect_source_repair import flush


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repair',required=True,type=Path); parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args(); previous,output=args.repair.resolve(),args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not previous.is_relative_to(owned):
        raise ValueError('Existing retained source repair and fresh owned certificate output required')
    failed=json.loads((previous/'result.json').read_text(encoding='utf-8'))
    trial=Path(failed['original_failed_trial']); old=json.loads((trial/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(old['manifest']);domain=old['domain']
    preparation=json.loads((previous/'durable-prepared.json').read_text(encoding='utf-8'))['preparation']
    started=json.loads((previous/'durable-started.json').read_text(encoding='utf-8'))
    request=started['request'];repair_id=request['repair_id']
    marker=pending.pending_path(domain)
    ownership={k:request[k] for k in ('token','owner','field_token','field_owner','repair_id')}
    expected_marker=dict(domain=domain,command='connect_source_repair',native_token=repair_id,
        automatic_retry=False,managed_context=ownership)
    if (old['process_epoch']!=epoch or failed['passed'] is True
            or not marker.exists() or json.loads(marker.read_text(encoding='utf-8'))!=expected_marker):
        raise ValueError('Exact original pending source repair/epoch required')
    output.mkdir(parents=True);service.STORE=trial/'store';version=source_manifest()
    result=dict(passed=False,source_manifest=version,original_failed_repair=str(previous),domain=domain,
        process_epoch=epoch,source_primitives_replayed=False,business_model_calls=0,complete_case_pass=False,full_delivery=False)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save();binary=build_oracle(output)
    env=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CONNECT_HISTORY='native_source_local_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1',ASCET_BD_CONNECT_SOURCE_REPAIR='identity_v1')
    class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
    def native(label,callback):
        if live_manifest(old['manifest'])!=(manifest,process,epoch):raise ValueError('Original runtime changed; no rebind')
        with patch.dict(os.environ,env,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(old['component'],timeout=30,environment={**env,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as a:
                a._ensure_open(domain);v=callback(a)
        save_new(output/(label+'.json'),dict(result=v,wire=wire_result(wire)));return v
    try:
        inspect(preparation['source_evidence'],domain['oid'])
        p=native('inspect',lambda a:a._exchange({**request,'cmd':'connect_source_repair_certificate','action':'inspect','signature':''}))
        if (p['profile']!='completed_source_repair_metadata_certificate_v1' or p['certified'] is not False
                or p['complete_original_material_verified'] is not True or p['signature']!=repair_id+'/m1'
                or any(p[k]!=0 for k in ('model_setters_called','source_setters_called'))
                or p['store_called'] is not False or p['write_replayed'] is not False):
            raise ValueError('Complete zero-setter source repair certificate required')
        inspect(p['source_evidence'],domain['oid'])
        target,actual=(_rows(p['source_evidence'][k]) for k in ('original','current'))
        if target.keys()!=actual.keys() or any(_cells(row,set(target))!=_cells(actual[ref],set(target)) for ref,row in target.items()):
            raise ValueError('All original source cells and exact references must already match')
        flush(output/'durable-certificate.json',p)
        actual_certificate=native('certify',lambda a:a._exchange({**request,'cmd':'connect_source_repair_certificate','action':'certify','signature':p['signature']}))
        flush(output/'durable-certified.json',actual_certificate)
        if actual_certificate['certified'] is not True or actual_certificate['allocator_high_water']!=p['allocator_high_water']:
            raise ValueError('Original live scope certification not confirmed')
        terminal=native('retained-terminal',lambda a:a._exchange({**request,'action':'status','signature':''}))
        flush(output/'durable-terminal.json',terminal)
        if terminal['execution']['original_native_verified'] is not True or terminal['execution']['original_source_verified'] is not True:
            raise ValueError('Actual retained original target is not certified')
        if json.loads(marker.read_text(encoding='utf-8'))!=expected_marker:raise ValueError('Another operation owns quarantine')
        flush(output/'durable-confirmed.json',dict(terminal_verified=True,automatic_retry=False))
        pending.confirmed(marker)
        full=native('independent-native-public',lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain)))
        result['public_compare']=compare(full['native']['entries'],full['public'])
        if full['native']!=old['before'] or result['public_compare']['passed'] is not True:
            raise ValueError('Independent full original typed/public semantics differ')
        witness_token=old['failure_witness']['token']
        result['witness']=native('original-witness',lambda a:a._exchange(dict(cmd='main_readonly_witness',action='check',token=witness_token)))
        if result['witness']['unchanged'] is not True:raise ValueError('Full native/source/order/alias original witness differs')
        result['repair_release']=native('repair-release',lambda a:a._exchange({**request,'action':'release','signature':''}))
        result['b_release']=native('b-release',lambda a:a.release(domain,request['field_token'],inverse_id=request['field_owner']))
        result['a_release']=native('a-release',lambda a:a.release(domain,request['token']))
        if any(result[k].get('released') is not True for k in ('repair_release','a_release','b_release')):
            raise ValueError('Completed exact retained materials not fully released')
        result['witness_release']=native('witness-release',lambda a:a._exchange(dict(cmd='main_readonly_witness',action='release',token=witness_token)))
        result['isolated_pending']=marker.exists();result['sources_match']=source_manifest()==version
        result['passed']=result['witness_release']['released'] is True and not result['isolated_pending'] and result['sources_match']
    except Exception as error:
        import traceback
        result.update(error=str(error),traceback=traceback.format_exc(),isolated_pending=marker.exists())
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','isolated_pending')}));return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
