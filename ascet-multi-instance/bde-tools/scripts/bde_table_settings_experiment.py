"""Actual Doge table-axis/interpolation edits and independent recovery evidence."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_edit_journal import clone
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bde_tool_client import ToolClient
from bde_public_oracle import compare,public_projection


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,required=True)
    p.add_argument('--repeats',type=int,choices=(1,3),default=3)
    p.add_argument('--model-types',default='cont,sdisc,udisc')
    p.add_argument('--full-read-oracle',action='store_true')
    p.add_argument('--component',default='BDE_Tool_Experiments\\Trial_data_20260930_012339',choices=(
        'BDE_Tool_Experiments\\Trial_data_20260930_012339',
        'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955',
        'BDE_Tool_Experiments\\Trial_Messages_20260930_132738'))
    p.add_argument('--test-display-rejection',action='store_true',help='Confirm unsupported model-only native overlays fail before drawing or modifying the model')
    a=p.parse_args();types=a.model_types.split(',')
    if not types or set(types)-{'cont','sdisc','udisc'}:p.error('Exact numeric model types required')
    a.output.mkdir(parents=True,exist_ok=False)
    service.STORE=a.output/'store';session=str(a.output.resolve())
    component=a.component
    result={'passed':False,'cases':[],'calls':[],'outstanding':[],
        'component':component,'full_read_oracle_enabled':a.full_read_oracle,
        'scope':'one isolated fixture; fixed-size ordinary numeric axes; ordinary/fixed numeric declared interpolation (affects all configurations; only defaults verified); state machines/grouped axes/resize not accepted',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*')
            if f.suffix in ('.py','.cs','.st','.json') and f.name.startswith(('bd','AscetRead','AscetStructure','format_bd'))}}
    for f in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))]=service.digest(f.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    if a.test_display_rejection:client.env['ASCET_BD_NATIVE_PRESENTATION']='1'
    def edit(sid,op,key):
        _,body,error=client.call('bd_edit',{'snapshot':sid,'request_id':key,'operations':[op]});receipt=json.loads(body)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']);save()
        assert not error and receipt['status']=='applied_observed',body
        return receipt
    def inverse(key):
        _,receipt=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert receipt['status']=='verified_local',receipt
        result['outstanding'].pop();save()
    try:
        compile_bridge()
        result['runtime_manifest']={str(f):service.digest(f.read_bytes()) for f in (
            service.ROOT/'analysis/live-api/AscetStructureSession.exe',service.ensure_probe(),
            Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))}
        save()
        for kind in ('oned_table','twod_table','oned_table_fixed','twod_table_fixed'):
            for model_type in types:
                for trial in range(a.repeats):
                    key=kind+'-'+model_type+'-'+str(trial)
                    case={'key':key,'passed':False,'edits':[],'negatives':[]};result['cases'].append(case)
                    head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                    base=service.load_record(head['snapshot'],'s_','snapshots')
                    domain={'session':session,'database':base['database'],'oid':base['oid'],'process_epoch':base['ascet_process_epoch']}
                    def observe():
                        with service.live_lock(),NativeStructureAdapter(component) as adapter:
                            state=adapter.observe(domain,[]);graph=adapter.observe_public(domain);models=adapter.observe_models(domain)
                            assert compare(state['entries'],graph)['passed']
                            return state,public_projection(graph),sorted(models,key=lambda m:m['name'])
                    original=observe()
                    created=edit(head['snapshot'],{'op':'create_block','kind':kind,'name':'EvalTableSettings',
                        'model_type':model_type,'position':[2200,1800],'max_size':[2,3] if kind.startswith('twod') else 3},key+'-create')
                    current=created;states=[original,observe()]
                    model=next(d['after'] for d in created['differences'] if d['after']['kind']=='model')
                    ref='Main/'+model['ref']
                    def reject(op,label):
                        _,body,error=client.call('bd_edit',{'snapshot':current['after_snapshot'],'request_id':key+'-'+label,'operations':[op]})
                        assert error and observe()==states[-1],body
                        case['negatives'].append({'label':label,'response':json.loads(body)});save()
                    def setting(op,fields,label):
                        nonlocal current
                        _,_,error=client.call('bd_edit',{'snapshot':current['after_snapshot'],'request_id':key+'-'+label+'-preview','operations':[op],'preview':True})
                        assert not error and observe()==states[-1]
                        sid=current['after_snapshot'];current=edit(sid,op,key+'-'+label)
                        assert current['additional_ASCET_reads']==0 and current['after_scope']['targets']==[model['ref']]
                        assert len(current['differences'])==1
                        actual=observe();expected=clone(states[-1][2])
                        next(m for m in expected if m['name']=='EvalTableSettings').update(fields)
                        assert actual[1]==states[-1][1] and actual[2]==expected,'Unrequested public field change'
                        states.append(actual);case['edits'].append(current);save()
                        _,diff=client.value('bd_diff',{'change_id':current['change_id']});assert diff['differences']==current['differences']
                        if a.test_display_rejection:
                            _,body,error=client.call('bd_diff',{'change_id':current['change_id'],'presentation':'show'})
                            assert error and json.loads(body)['code']=='PRESENTATION_UNAVAILABLE' and observe()==actual,body
                            case.setdefault('display_rejections',[]).append(json.loads(body));save()
                        _,duplicate=client.value('bd_edit',{'snapshot':sid,'request_id':key+'-'+label,'operations':[op]})
                        assert duplicate['change_id']==current['change_id'] and observe()==actual
                    for axis in ('x','y') if kind.startswith('twod') else ('x',):
                        old=model['default_value'][axis]
                        values=([1,4] if len(old)==2 else [1,3,5]) if model_type=='udisc' else (
                            ([-2,3] if len(old)==2 else [-3,0,4]) if model_type=='sdisc' else ([-1.25,2.5] if len(old)==2 else [-2.5,0,3.75]))
                        op={'op':'set_table_axis','target':ref,'axis':axis,'expect':{'values':old},'values':values}
                        if kind.endswith('_fixed'):
                            reject(op,'fixed-'+axis);continue
                        setting(op,{'table_'+axis:values},axis)
                        reject(op,'old-'+axis)
                        reject({**op,'expect':{'values':values},'values':list(reversed(values))},'descending-'+axis)
                        if model_type!='cont':
                            reject({**op,'expect':{'values':values},'values':[v+0.25 for v in values]},'fractional-'+axis)
                        if model_type=='udisc':
                            reject({**op,'expect':{'values':values},'values':[-10]+values[1:]},'negative-'+axis)
                    flags=('interpolation_linear','interpolation_rounded')
                    initial={k:model['default_value'][k] for k in flags};initial['declared_interpolation']=model['declared_interpolation']
                    first_mode='rounded' if initial['interpolation_linear'] else 'linear'
                    op={'op':'set_table_interpolation','target':ref,'expect':initial,'mode':first_mode}
                    setting(op,{'interpolation_linear':first_mode=='linear','interpolation_rounded':first_mode=='rounded'},'interpolation-first')
                    reject(op,'old-interpolation')
                    first_change=current['change_id'];first_flags={k:first_mode==k.removeprefix('interpolation_') for k in flags}
                    first_flags['declared_interpolation']='Rounded' if first_mode=='rounded' else 'Linear'
                    second_mode='linear' if first_mode=='rounded' else 'rounded'
                    setting({**op,'expect':first_flags,'mode':second_mode},{k:initial[k] for k in flags},'interpolation-second')
                    _,body,error=client.call('bd_revert',{'change_id':first_change,'request_id':key+'-inverse-conflict'})
                    assert error and json.loads(body)['status']=='conflict' and observe()==states[-1],body
                    case['inverse_conflict']=json.loads(body);save()
                    # Leave a nondefault interpolation and table grid for the complete-reader comparison.
                    inverse(key+'-inverse-second');states.pop();assert observe()==states[-1]
                    current=case['edits'][-2]
                    value=1.25 if model_type=='cont' else -42 if model_type=='sdisc' else 42
                    old=model['default_value']['values']
                    desired=[[value+x*10+y for y in range(3)] for x in range(2)] if kind.startswith('twod') else [value+i for i in range(3)]
                    setting({'op':'set_table_values','target':ref,'expect':{'values':old},'values':desired},{'table_values':desired},'values')
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
                        head,body,error=client.call('bd_read',{'component':component});assert not error
                        snapshot=service.load_record(head['snapshot'],'s_','snapshots');assert body==snapshot['logic']
                        raw=json.loads((service.STORE/'raw'/(snapshot['snapshot']+'.json')).read_text(encoding='utf-8'))
                        case['full_tool_delivery']=verify(readings[0],raw)
                    for i in range(len(states)-1):
                        inverse(key+'-inverse-'+str(i));states.pop();assert observe()==states[-1]
                    assert not result['outstanding'] and observe()==original
                    case['passed']=True;save();print(json.dumps({'case':key,'passed':True}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
        if not result['outstanding'] and 'original' in locals():
            try:result['cleanup_baseline_restored']=observe()==original
            except Exception:result['cleanup_verification_error']=traceback.format_exc()
    result['source_changes_during_run']=[name for name,digest in result['source_manifest'].items()
        if not (service.ROOT/name).exists() or service.digest((service.ROOT/name).read_bytes())!=digest]
    if result['source_changes_during_run']:result['version_binding_complete']=False
    else:result['version_binding_complete']=True
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding','cleanup_error','version_binding_complete')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
