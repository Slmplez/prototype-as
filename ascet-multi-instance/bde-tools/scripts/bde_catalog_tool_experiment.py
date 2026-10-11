"""Create every declared kind through real Doge Tool.call; compare native/public.

AEB_Core writes use its isolated copy. Message kinds use a separate Module,
because Class cannot own messages. This is creation coverage, not full G0-G7.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bd_structure_journal import CREATION_KINDS
from bde_public_oracle import compare


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--repeats',type=int,default=1,choices=[1,3])
    parser.add_argument('--kinds',help='Optional exact subset for targeted continuation after an audited failure')
    parser.add_argument('--initial-values',action='store_true',help='Supply typed scalar initial values and verify independent public default data')
    parser.add_argument('--model-type',choices=['cont','sdisc','udisc','log'],default='cont')
    parser.add_argument('--full-read-oracle',action='store_true',help='Compare every raw field from public/bulk readers and complete Doge read delivery')
    parser.add_argument('--class-component',default='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955',
                        help='Exact isolated Class fixture; Module-only kinds retain their separate fixture')
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    if not a.class_component.startswith('BDE_Tool_Experiments\\Trial_'):
        parser.error('--class-component must name an isolated Trial_* fixture')
    service.STORE=a.output/'store';session=str(a.output.resolve())
    env=dict(os.environ,ASCET_BD_STORE=str(service.STORE.resolve()),ASCET_BD_STRUCTURAL_WRITES='1',ASCET_BD_PYTHON=sys.executable)
    result={'passed':False,'calls':[],'cases':[],'outstanding':[],
            'class_component':a.class_component,'full_read_oracle':a.full_read_oracle,
            'scope':'26 creation kinds; Module-only messages/resource; independent public graph and declaration checks; not all palette/configuration families',
            'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*') if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure','AscetRead','format_bd'))}}
    for p in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(p.relative_to(service.ROOT))]=service.digest(p.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    def call(tool,payload):
        def invoke(name,args):
            started=time.perf_counter()
            p=subprocess.run([str(Path.home()/'.bun/bin/bun.exe'),'run','scripts/bde-tool-call-eval.ts'],cwd=service.ROOT/'Doge',
                input=json.dumps({'tool':name,'args':args,'session':session}),capture_output=True,text=True,encoding='utf-8',env=env,timeout=90)
            if p.returncode:raise RuntimeError(p.stderr)
            response=json.loads(p.stdout);result['calls'].append({'tool':name,'args':args,'response':response,'elapsed_ms':(time.perf_counter()-started)*1000});save()
            return response
        response=invoke(tool,payload)
        if '\n\n' not in response['content']:raise RuntimeError(response['content'])
        h,body=response['content'].split('\n\n',1);first=meta=json.loads(h)
        while meta['page']['has_more']:
            page=invoke('bd_read',{'cursor':meta['page']['next_cursor']})
            if page['is_error']:raise RuntimeError(page['content'])
            h,part=page['content'].split('\n\n',1);meta=json.loads(h);body+=part
        if response['is_error']:
            if tool=='bd_edit' and first.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
                result['outstanding'].append(first['change_id']);save()
            raise RuntimeError(body)
        return first,body
    def edit(snapshot,op,key):
        _,body=call('bd_edit',{'snapshot':snapshot,'request_id':key,'operations':[op]});receipt=json.loads(body)
        result['outstanding'].append(receipt['change_id']);save()
        assert receipt['status']=='applied_observed' and receipt['additional_ASCET_reads']==0
        return receipt
    def inverse(key):
        _,body=call('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key});receipt=json.loads(body)
        assert receipt['status']=='verified_local';result['outstanding'].pop();save();return receipt['after_snapshot']
    try:
        compile_bridge()
        for component,kinds in [
            (a.class_component,[k for k in CREATION_KINDS if 'message' not in k and k!='resource']),
            ('BDE_Tool_Experiments\\Trial_Messages_20260930_132738',[k for k in CREATION_KINDS if 'message' in k or k=='resource'])]:
            header,body=call('bd_read',{'component':component,'view':'structure'});sid=header['snapshot']
            original=service.load_record(sid,'s_','snapshots');assert body==original['logic']
            domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                public_before=adapter.observe_public(domain);models_before=adapter.observe_models(domain)
            assert compare(original['structure']['entries'],public_before)['passed']
            if a.kinds:
                requested=a.kinds.split(',')
                if set(requested)-set(CREATION_KINDS):raise ValueError('Unknown creation kind')
                kinds=[k for k in kinds if k in requested]
            for kind in kinds:
                for trial in range(a.repeats):
                    key=kind+'-'+str(trial);row={'kind':kind,'trial':trial,'component':component,'passed':False};result['cases'].append(row);save()
                    op={'op':'create_block','kind':kind,'name':'EvalCatalog_'+kind,'position':[2200,1800]}
                    if kind=='delta_t':op['name']='dT'
                    if kind=='literal':op['name']='41.0'
                    if kind=='operator':op['name']='+'
                    if kind=='control':op['name']='MUX'
                    if kind=='hierarchy':op.update(inputs=['In'],outputs=['Out'])
                    if kind=='existing_model':op['name']='AEB_CurrentState'
                    if kind=='enumeration':op['definition']='BDE_Tool_Experiments\\Trial_Enum_20260930_123955'
                    if kind=='component':op['definition']='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AEB_Core\\AEB_Core'
                    if a.initial_values:
                        from bd_structure_journal import SCALAR_CREATORS
                        if kind not in SCALAR_CREATORS:raise ValueError('Use --kinds to select scalar declarations for initial value experiments')
                        if kind=='enumeration':op['initial_value']='On'
                        else:
                            op['model_type']=a.model_type
                            op['initial_value']=True if a.model_type=='log' else 42.125 if a.model_type=='cont' else -42 if a.model_type=='sdisc' else 42
                    if kind.endswith('_group'):
                        for axis in (['x','y'] if kind=='twod_table_group' else ['x']):
                            created=edit(sid,{'op':'create_block','kind':'distribution','name':'EvalCatalog_'+axis,'position':[2400,1800]},key+'-'+axis)
                            sid=created['after_snapshot'];op[axis+'_distribution']='Main/'+next(d['after']['ref'] for d in created['differences'] if d['after'] and d['after']['kind']=='model')
                    created=edit(sid,op,key);sid=created['after_snapshot'];row['change_id']=created['change_id']
                    after=service.load_record(sid,'s_','snapshots')
                    with service.live_lock(),NativeStructureAdapter(component) as adapter:
                        public=adapter.observe_public(domain);models=adapter.observe_models(domain)
                    row['oracle']=compare(after['structure']['entries'],public);row['public_after']=public;row['models_after']=models;save()
                    if not row['oracle']['passed']:
                        with service.live_lock(),NativeStructureAdapter(component) as adapter:
                            adapter._ensure_open(domain);row['raw_public_inventory']=adapter._exchange({'cmd':'observe_public_inventory'})
                        save();raise AssertionError('Public/native graph projection differs; see oracle and raw_public_inventory')
                    declarations=[d['after'] for d in created['differences'] if d['after'] and d['after']['kind']=='model']
                    if a.full_read_oracle:
                        import bde_experiments as bench
                        from bde_full_read_experiment import verify
                        readings=[];binary=service.ensure_probe()
                        for mode in ('field_getters','bulk_full'):
                            os.environ.update(ASCET_BD_READ_BATCH='0',ASCET_BD_BULK_GRAPH='0',ASCET_BD_BULK_FULL='1' if mode=='bulk_full' else '0')
                            raw_path=(a.output/(key+'-'+mode+'.json')).resolve()
                            with service.live_lock():
                                metrics,raw=bench.run([str(binary),component,str(raw_path),'--current','full'],raw_path)
                            row[mode]=metrics;save()
                            assert not metrics['error'] and not metrics['proxy_errors'],metrics
                            readings.append(raw)
                        row['full_read_equivalence']=verify(*readings)
                        env.update(ASCET_BD_READ_BATCH='0',ASCET_BD_BULK_GRAPH='0',ASCET_BD_BULK_FULL='1')
                        full_head,full_body=call('bd_read',{'component':component})
                        full=service.load_record(full_head['snapshot'],'s_','snapshots')
                        assert full_body==full['logic'], 'Incomplete full Tool.call delivery'
                        full_raw=json.loads((service.STORE/'raw'/(full['snapshot']+'.json')).read_text(encoding='utf-8'))
                        row['full_tool_delivery']=verify(readings[0],full_raw)
                    if declarations:
                        declaration=declarations[0];verified=next(m for m in models if m['name']==op['name'])
                        if verified['model_type'] is not None:
                            assert verified['model_type']==declaration.get('model_type'), (kind, verified, declaration)
                        else:
                            row['public_type_field']='not_available_on_nonprimitive_wrapper; native field retained'
                        if 'definition' in declaration:
                            assert verified['definition_oid']==declaration['definition']['oid']
                        if 'initial_value' in op:
                            assert verified['default_value']==op['initial_value']
                            assert verified['default_configuration_oid']==declaration['default_value']['configuration_oid']
                        if kind.endswith('_group'):
                            assert verified['group_table'] and verified['x_distribution_name']=='EvalCatalog_x'
                            if kind=='twod_table_group':assert verified['y_distribution_name']=='EvalCatalog_y'
                    _,diff=call('bd_diff',{'change_id':created['change_id']});row['diff_recorded']=bool(json.loads(diff));save()
                    # Exercise cached inspection on the actual edit-produced observation.
                    _,checks=call('bd_inspect',{'query':'checks','snapshot':sid});assert json.loads(checks)['structural_validation']=='observed_scope_only'
                    while result['outstanding']:sid=inverse(key+'-inverse-'+str(len(result['outstanding'])))
                    with service.live_lock(),NativeStructureAdapter(component) as adapter:
                        assert adapter.observe(domain,[])==original['structure']
                        assert adapter.observe_public(domain)==public_before
                        assert sorted(adapter.observe_models(domain),key=lambda r:r['name'])==sorted(models_before,key=lambda r:r['name'])
                    row['passed']=True;save();print(json.dumps({k:row[k] for k in ('kind','trial','passed')}),flush=True)
        result['passed']=True
    except Exception as error:
        result['error']=repr(error);result['traceback']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('failure-inverse-'+str(len(result['outstanding'])))
            except Exception as cleanup_error:result['cleanup_error']=repr(cleanup_error);break
    save();return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
