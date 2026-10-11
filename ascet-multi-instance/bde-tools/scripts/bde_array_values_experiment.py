"""Actual Doge array defaults and inverse, independently checked through public data getters."""
import argparse
import json
import traceback
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bde_tool_client import ToolClient
from bde_public_oracle import compare,public_projection


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--repeats',type=int,choices=[1,3],default=1)
    p.add_argument('--kind',choices=['array','matrix','distribution'],default='array')
    p.add_argument('--component',default='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955')
    p.add_argument('--full-read-oracle',action='store_true')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store'
    component=a.component;session=str(a.output.resolve())
    result={'passed':False,'calls':[],'cases':[],'outstanding':[],
        'scope':'local '+a.kind+' defaults; resize only within existing declaration limit; independent public getters; no table support claimed',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
    for f in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))]=service.digest(f.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    def edit(sid,op,key):
        _,body,error=client.call('bd_edit',{'snapshot':sid,'request_id':key,'operations':[op]});receipt=json.loads(body)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']);save()
        assert not error and receipt['status']=='applied_observed',body
        return receipt
    def inverse(key):
        _,receipt=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert receipt['status']=='verified_local';result['outstanding'].pop();save()
    try:
        compile_bridge()
        for model_type,desired in [('cont',[1.25,2.5,3.75]),('sdisc',[-42,0,42]),('udisc',[21,42,63]),('log',[True,False,True])]:
            if a.kind=='distribution' and model_type=='log':continue
            if a.kind=='matrix':desired=[desired,[not v if type(v) is bool else v*2 for v in desired]]
            for trial in range(a.repeats):
                key=model_type+'-'+str(trial);case={'key':key,'passed':False};result['cases'].append(case)
                head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                baseline=service.load_record(head['snapshot'],'s_','snapshots')
                domain={'session':session,'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
                def observe():
                    with service.live_lock(),NativeStructureAdapter(component) as adapter:
                        state=adapter.observe(domain,[]);graph=adapter.observe_public(domain);models=adapter.observe_models(domain)
                        assert compare(state['entries'],graph)['passed']
                        return state,public_projection(graph),sorted(models,key=lambda m:m['name'])
                initial=observe()
                created=edit(head['snapshot'],{'op':'create_block','kind':a.kind,'name':'EvalArrayValues','model_type':model_type,'max_size':[4,4] if a.kind=='matrix' else 4,'position':[2200,1800]},key+'-create')
                before=observe()
                model=next(d['after'] for d in created['differences'] if d['after']['kind']=='model')
                values=desired
                new_size=[len(values),len(values[0])] if a.kind=='matrix' else len(values)
                case.update(declared_max_size=model['default_value']['declared_max_size'],old_size=model['default_value']['size'],new_size=new_size)
                op={'op':'set_'+a.kind+'_values','target':'Main/'+model['ref'],'expect':{'values':model['default_value']['values']},'values':values}
                changed=edit(created['after_snapshot'],op,key+'-values');case['edit']=changed;save()
                assert changed['additional_ASCET_reads']==0 and changed['after_scope']['targets']==[model['ref']]
                assert len(changed['differences'])==1
                state,graph,models=observe();assert graph==before[1]
                public=next(m for m in models if m['name']=='EvalArrayValues')
                assert public[a.kind+'_values']==values and public[a.kind+'_size']==new_size
                case['public_values']=public
                if a.full_read_oracle:
                    import bde_experiments as bench
                    from bde_full_read_experiment import verify
                    readings=[];binary=service.ensure_probe()
                    with service.live_lock():
                        for mode in ('field_getters','bulk_full'):
                            os.environ['ASCET_BD_READ_BATCH']='0';os.environ['ASCET_BD_BULK_GRAPH']='0'
                            os.environ['ASCET_BD_BULK_FULL']='1' if mode=='bulk_full' else '0'
                            raw_path=(a.output/(key+'-'+mode+'.json')).resolve()
                            metrics,raw=bench.run([str(binary),component,str(raw_path),'--current','full'],raw_path)
                            case[mode]=metrics;save()
                            assert not metrics['error'] and not metrics['proxy_errors'],metrics
                            readings.append(raw)
                    case['full_read_equivalence']=verify(*readings)
                    item=next(m for m in readings[1]['model_elements'] if m['name']=='EvalArrayValues')
                    assert item['default_value']['values']==values
                zero=False if model_type=='log' else 0
                oversize=[[zero]*4 for _ in range(5)] if a.kind=='matrix' else list(range(5)) if a.kind=='distribution' else [zero]*5
                wrong=[1] if model_type=='log' else [True]
                if a.kind=='matrix':wrong=[wrong]
                negatives=[('oversize',oversize),('wrong_type',wrong)]
                if a.kind=='distribution':negatives.extend([('duplicate_axis',[1,1]),('descending_axis',[2,1])])
                for label,bad in negatives:
                    _,body,error=client.call('bd_edit',{'snapshot':changed['after_snapshot'],'request_id':key+'-'+label,
                        'operations':[{**op,'expect':{'values':values},'values':bad}]})
                    assert error,body
                inverse(key+'-undo-values');assert observe()==before
                inverse(key+'-undo-create');assert observe()==initial
                case['passed']=True;save();print(json.dumps({'case':key,'passed':True,'old_size':case['old_size'],'new_size':case['new_size']}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
    save();print(json.dumps({'passed':result['passed'],'outstanding':result['outstanding'],'error':result.get('error','')[:1100]}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
