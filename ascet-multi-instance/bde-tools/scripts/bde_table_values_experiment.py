"""Actual table Tool.call edits, independent public values, actual diff and inverse."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_tool_client import ToolClient
from bde_public_oracle import compare, public_projection


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--repeats',type=int,choices=(1,3),default=3)
    p.add_argument('--model-types',default='cont,sdisc,udisc')
    p.add_argument('--full-read-oracle',action='store_true')
    p.add_argument('--multi-cell',action='store_true',help='Create 3-value/2x3 tables and use distinct values for every cell')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    types=a.model_types.split(',')
    if not types or set(types)-{'cont','sdisc','udisc'}:p.error('Exact numeric model types required; logical tables are not supported')
    service.STORE=a.output/'store';component='BDE_Tool_Experiments\\Trial_data_20260930_012339';session=str(a.output.resolve())
    result={'passed':False,'cases':[],'calls':[],'outstanding':[],
        'scope':'1D/2D ordinary/fixed table values only; fixed observed dimensions; independent public getters; full table resize/interpolation editing not claimed',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*')
                           if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetRead','AscetStructure','format_bd'))}}
    for f in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))]=service.digest(f.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    def edit(sid,op,key):
        _,body,error=client.call('bd_edit',{'snapshot':sid,'request_id':key,'operations':[op]});receipt=json.loads(body)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']);save()
        assert not error and receipt['status']=='applied_observed',body
        return receipt
    def inverse(key):
        _,r=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert r['status']=='verified_local';result['outstanding'].pop();save()
    try:
        compile_bridge()
        for kind in ('oned_table','twod_table','oned_table_fixed','twod_table_fixed'):
            for model_type in types:
                for trial in range(a.repeats):
                    key=kind+'-'+model_type+'-'+str(trial);case={'key':key,'passed':False};result['cases'].append(case)
                    head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                    base=service.load_record(head['snapshot'],'s_','snapshots')
                    domain={'session':session,'database':base['database'],'oid':base['oid'],'process_epoch':base['ascet_process_epoch']}
                    def observe():
                        with service.live_lock(),NativeStructureAdapter(component) as adapter:
                            state=adapter.observe(domain,[]);graph=adapter.observe_public(domain);models=adapter.observe_models(domain)
                            assert compare(state['entries'],graph)['passed']
                            return state,public_projection(graph),sorted(models,key=lambda m:m['name'])
                    original=observe()
                    creation={'op':'create_block','kind':kind,'name':'EvalTableValues','model_type':model_type,'position':[2200,1800]}
                    if a.multi_cell:creation['max_size']=[2,3] if kind.startswith('twod') else 3
                    created=edit(head['snapshot'],creation,key+'-create')
                    before=observe()
                    model=next(d['after'] for d in created['differences'] if d['after']['kind']=='model')
                    value=True if model_type=='log' else 1.25 if model_type=='cont' else -42 if model_type=='sdisc' else 42
                    old=model['default_value']['values']
                    desired=[[value for _ in row] for row in old] if kind.startswith('twod') else [value for _ in old]
                    if a.multi_cell:
                        assert model['default_value']['size']==creation['max_size'], 'Declared maximum did not initialize the requested grid'
                        desired=[[value+x*10+y for y in range(3)] for x in range(2)] if kind.startswith('twod') else [value+i for i in range(3)]
                    op={'op':'set_table_values','target':'Main/'+model['ref'],'expect':{'values':old},'values':desired}
                    _,_,error=client.call('bd_edit',{'snapshot':created['after_snapshot'],'request_id':key+'-preview','operations':[op],'preview':True})
                    assert not error and observe()==before
                    changed=edit(created['after_snapshot'],op,key+'-values');case['receipt']=changed;save()
                    assert changed['additional_ASCET_reads']==0 and changed['after_scope']['targets']==[model['ref']]
                    assert len(changed['differences'])==1
                    actual=observe();assert actual[1]==before[1]
                    public=next(m for m in actual[2] if m['name']=='EvalTableValues')
                    assert public['table_values']==desired
                    expected=dict(next(m for m in before[2] if m['name']=='EvalTableValues'));expected['table_values']=desired
                    assert public==expected,'Other table settings changed'
                    case['public_values']=public
                    _,diff=client.value('bd_diff',{'change_id':changed['change_id']})
                    assert diff['differences']==changed['differences']
                    # Old expectations and dimensions fail without model mutation.
                    for label,negative in [('old-values',{**op,'expect':{'values':old}}),
                                           ('wrong-type',{**op,'expect':{'values':desired},'values':[[True for _ in row] for row in old]} if kind.startswith('twod') else {**op,'expect':{'values':desired},'values':[True for _ in old]})]:
                        _,_,error=client.call('bd_edit',{'snapshot':changed['after_snapshot'],'request_id':key+'-'+label,'operations':[negative]})
                        assert error and observe()==actual
                    if a.full_read_oracle:
                        import bde_experiments as bench
                        from bde_full_read_experiment import verify
                        readings=[];binary=service.ensure_probe()
                        for mode in ('field_getters','bulk_full'):
                            os.environ.update(ASCET_BD_READ_BATCH='0',ASCET_BD_BULK_GRAPH='0',ASCET_BD_BULK_FULL='1' if mode=='bulk_full' else '0')
                            path=(a.output/(key+'-'+mode+'.json')).resolve()
                            with service.live_lock():metrics,raw=bench.run([str(binary),component,str(path),'--current','full'],path)
                            case[mode]=metrics;save();assert not metrics['error'] and not metrics['proxy_errors'],metrics
                            readings.append(raw)
                        case['full_read_equivalence']=verify(*readings)
                        item=next(m for m in readings[1]['model_elements'] if m['name']=='EvalTableValues')
                        assert item['default_value']['z' if kind.startswith('twod') else 'y']==desired
                        head,body,error=client.call('bd_read',{'component':component});assert not error
                        snapshot=service.load_record(head['snapshot'],'s_','snapshots');assert body==snapshot['logic']
                        raw=json.loads((service.STORE/'raw'/(snapshot['snapshot']+'.json')).read_text(encoding='utf-8'))
                        case['full_tool_delivery']=verify(readings[0],raw)
                    inverse(key+'-inverse-values');assert observe()==before
                    inverse(key+'-inverse-create');assert observe()==original
                    case['passed']=True;save();print(json.dumps({'case':key,'passed':True}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
