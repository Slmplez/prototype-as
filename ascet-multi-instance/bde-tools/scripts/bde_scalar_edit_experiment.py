"""Actual Doge scalar defaults: precise local patch, conflict, reverse and independent baseline."""
import argparse
import json
import traceback
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bde_tool_client import ToolClient
from bde_public_oracle import compare,public_projection


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True);p.add_argument('--repeats',type=int,choices=[1,3],default=3)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store'
    component='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955';session=str(a.output.resolve())
    result={'passed':False,'calls':[],'cases':[],'outstanding':[],
        'scope':'independent local scalar defaults; actual Doge Tool.call; not effective project calibration',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    def edit(snapshot,op,key):
        header,body,error=client.call('bd_edit',{'snapshot':snapshot,'request_id':key,'operations':[op]})
        receipt=json.loads(body)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']);save()
        if error or receipt['status']!='applied_observed':raise RuntimeError(body)
        assert receipt['additional_ASCET_reads']==0
        return receipt
    def inverse(key):
        _,receipt=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert receipt['status']=='verified_local';result['outstanding'].pop();save();return receipt
    try:
        compile_bridge()
        for kind,model_type,old,new in [('variable','cont',1.25,42.125),('parameter','sdisc',-1,-42),('variable','udisc',1,42),('constant','log',False,True),('enumeration','enum','Off','On')]:
            for trial in range(a.repeats):
                key=kind+'-'+model_type+'-'+str(trial);case={'key':key,'passed':False};result['cases'].append(case)
                header,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                baseline=service.load_record(header['snapshot'],'s_','snapshots')
                domain={'session':session,'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
                def observe():
                    with service.live_lock(),NativeStructureAdapter(component) as adapter:
                        return adapter.observe(domain,[]),adapter.observe_public(domain),adapter.observe_models(domain)
                initial,graph_initial,models_initial=observe()
                creation={'op':'create_block','kind':kind,'name':'EvalScalar_'+model_type,'position':[2200,1800],'initial_value':old}
                if kind=='enumeration':creation['definition']='BDE_Tool_Experiments\\Trial_Enum_20260930_123955'
                else:creation['model_type']=model_type
                created=edit(header['snapshot'],creation,key+'-create');case['created']=created
                native_before,graph_before,models_before=observe()
                model=next(d['after'] for d in created['differences'] if d['after']['kind']=='model')
                op={'op':'set_scalar_value','target':'Main/'+model['ref'],'expect':{'value':old},'value':new}
                changed=edit(created['after_snapshot'],op,key+'-value');case['changed']=changed;save()
                assert changed['after_scope']['targets']==[model['ref']]
                assert len(changed['differences'])==1 and changed['differences'][0]['ref']==model['ref']
                state,graph,models=observe();assert compare(state['entries'],graph)['passed']
                assert public_projection(graph)==public_projection(graph_before)
                expected={r['ref']:r for r in native_before['entries']};actual={r['ref']:r for r in state['entries']}
                expected[model['ref']]={**model,'default_value':{**model['default_value'],'value':new}}
                assert actual==expected
                public_model=next(m for m in models if m['name']==creation['name']);assert public_model['default_value']==new
                assert sorted([m for m in models if m['name']!=creation['name']],key=lambda r:r['name'])==sorted(models_initial,key=lambda r:r['name'])
                _,body,error=client.call('bd_edit',{'snapshot':created['after_snapshot'],'request_id':key+'-stale','operations':[op]})
                assert error and ('conflict' in body.lower())
                inverse(key+'-undo-value');restored,graph_restored,models_restored=observe()
                assert restored==native_before and public_projection(graph_restored)==public_projection(graph_before)
                assert sorted(models_restored,key=lambda r:r['name'])==sorted(models_before,key=lambda r:r['name'])
                inverse(key+'-undo-create');final,graph_final,models_final=observe()
                assert final==initial and public_projection(graph_final)==public_projection(graph_initial)
                assert sorted(models_final,key=lambda r:r['name'])==sorted(models_initial,key=lambda r:r['name'])
                case['passed']=True;save();print(json.dumps({'case':key,'passed':True}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('failure-cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
    save();print(json.dumps({'passed':result['passed'],'outstanding':result['outstanding'],'error':result.get('error','')[:800]}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
