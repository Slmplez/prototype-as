"""Retire a fully released legacy graphical scope; prove generation-only stale-write refusal."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch
import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_scope_inventory import validate as validate_inventory
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle,save_new,wire_result,verify_pages
from bde_tool_client import ToolClient


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path)
    parser.add_argument('--output',required=True,type=Path)
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Completed owned legacy finalization and fresh output required')
    prior=json.loads((source/'result.json').read_text(encoding='utf-8'))
    history=json.loads((Path(prior['source'])/'result.json').read_text(encoding='utf-8'))
    creation=Path(history['source']);domain=prior['domain']
    manifest,process,epoch=live_manifest(prior['manifest'])
    if (prior['passed'] is not True or prior['original_restored'] is not True
            or prior['material_retained'] is not False or prior['witness_retained'] is not False
            or prior['process_epoch']!=epoch or prior['isolated_pending'] is not False
            or prior['edit'].get('namespace') is not None):
        raise ValueError('Exact released same-epoch legacy graphical finalization required; never replay it')
    pending.check(domain);output.mkdir(parents=True);service.STORE=creation/'store'
    result=dict(passed=False,scope='Metadata-only legacy scope retirement and formal stale snapshot rejection',
        source=str(source),manifest=prior['manifest'],domain=domain,component=prior['component'],process_epoch=epoch,
        source_manifest=source_manifest(),retirement_dispatched=False,formal_tool_calls=0,
        legacy_finalize_redispatched=False,business_model_calls=0,complete_case_pass=False,full_delivery=False)
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save();calls=[]
    for name in result['source_manifest']:
        dest=output/'source'/name;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/name,dest)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1',
        ASCET_BD_CREATE_FINALIZE='original_release_v1')
    try:
        binary=build_oracle(output,scope_lifecycle=True)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def runtime():
            if live_manifest(prior['manifest'])!=(manifest,process,epoch):raise ValueError('Epoch changed; never rebind')
        def native(label,callback):
            runtime()
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=callback(adapter)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        result['before']=native('before',lambda a:a.observe(domain,[]))
        if result['before']!=prior['after']['native']:raise ValueError('Released legacy model changed before retirement')
        result['configuration_before']=native('configuration-before',lambda a:a._exchange(dict(cmd='main_configuration')))
        result['inventory_before']=native('inventory-before',lambda a:a._exchange(dict(cmd='scope_inventory')))
        validate_inventory(result['inventory_before'])
        scoped=next(r for r in result['inventory_before']['entries'] if r['scope']==domain['oid']+'/Main')
        if scoped['generation']!=result['before']['generation'] or scoped['pins']:
            raise ValueError('Exact current generation must be completely unpinned')
        save_new(output/'retirement-intent.json',dict(domain=domain,scope=scoped['scope'],expected_generation=scoped['generation'],automatic_retry=False))
        result['retirement_dispatched']=True;save()
        result['retirement']=native('retirement',lambda a:a._exchange(dict(cmd='scope_retire',expected_generation=scoped['generation'])))
        if result['retirement']!=dict(retired=True,scope=scoped['scope'],generation=scoped['generation']):
            raise ValueError('Exact frozen metadata retirement unconfirmed; do not retry')
        result['after']=native('after',lambda a:a.observe(domain,[]))
        if (result['after']['generation']<=result['inventory_before']['high_water']
                or {k:v for k,v in result['before'].items() if k!='generation'}!=
                   {k:v for k,v in result['after'].items() if k!='generation'}):
            raise ValueError('Fresh generation must preserve every typed field except generation')
        def record(row):
            save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),row);calls.append(row);result['formal_tool_calls']=len(calls)
        runtime()
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client=ToolClient(output,domain['session'],record);client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
            meta,body,error=client.call('bd_edit',dict(snapshot=prior['edit']['after_snapshot'],request_id=output.name+'-stale',
                operations=[dict(op='create_block',kind='literal',name='9',position=[320,240])]))
        save_new(output/'stale-write-wire.json',wire_result(wire))
        result['stale_write']=json.loads(body)
        if not error or result['stale_write'].get('status')!='conflict':raise ValueError('Actual stale snapshot did not reject before creation')
        save_new(output/'stale-write-response.json',dict(meta=meta,body=body,is_error=error))
        from bd_structure_journal import StructureJournal
        from bd_edit_journal import fingerprint
        token='edit_'+fingerprint(dict(domain=domain,request_id=output.name+'-stale'))
        events=StructureJournal(service.STORE/'edits').read(token)
        if [e['kind'] for e in events]!=['intent','finished'] or events[-1]['payload']['status']!='conflict':
            raise ValueError('Stale write created preparation or execution material')
        save_new(output/'stale-write-journal.json',events)
        result['after_stale']=native('after-stale',lambda a:a.observe(domain,[]))
        result['configuration_after']=native('configuration-after',lambda a:a._exchange(dict(cmd='main_configuration')))
        if result['after_stale']!=result['after'] or result['configuration_after']!=result['configuration_before']:
            raise ValueError('Metadata retirement or stale write changed model/configuration')
        pending.check(domain);result['isolated_pending']=False
        result['sources_match']=source_manifest()==result['source_manifest'];result['passed']=result['sources_match']
    except Exception as error:result.update(error=str(error),traceback=traceback.format_exc())
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','isolated_pending','retirement_dispatched')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
