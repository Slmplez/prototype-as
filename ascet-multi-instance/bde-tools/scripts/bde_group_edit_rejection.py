"""Live grouped-table edit rejection and continued inverse availability."""
import argparse
import json
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_tool_client import ToolClient


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--settings-only',action='store_true',help='Test only new table axis/interpolation rejection, without replaying older negative matrices')
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store'
    component='BDE_Tool_Experiments\\Trial_data_20260930_012339';session=str(a.output.resolve())
    result={'passed':False,'cases':[],'calls':[],'outstanding':[],
            'settings_only':a.settings_only,
            'scope':'group table and referenced axis rejection, preview/execute, full baseline restoration; direct native validation of disabled logical table factory',
            'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*')
                               if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
    for f in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))]=service.digest(f.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    def create(sid,op,key):
        _,body,error=client.call('bd_edit',{'snapshot':sid,'request_id':key,'operations':[op]});r=json.loads(body)
        if r.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(r['change_id']);save()
        assert not error and r['status']=='applied_observed',body
        return r['after_snapshot'],next(d['after'] for d in r['differences'] if d['after']['kind']=='model')
    def inverse(key):
        _,r=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert r['status']=='verified_local';result['outstanding'].pop();save()
    try:
        compile_bridge()
        head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
        base=service.load_record(head['snapshot'],'s_','snapshots')
        domain={'session':session,'database':base['database'],'oid':base['oid'],'process_epoch':base['ascet_process_epoch']}
        def observe():
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                return adapter.observe(domain,[]),adapter.observe_public(domain),adapter.observe_models(domain)
        original=observe()
        for kind in () if a.settings_only else ('oned_table','twod_table','oned_table_fixed','twod_table_fixed'):
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                try:adapter.validate(domain,'create_block',[[],kind,'EvalLogicalRejected',2200,1800,'log'])
                except Exception as error:
                    assert 'Logical table factory' in str(error),str(error)
                    result.setdefault('native_log_rejections',[]).append({'kind':kind,'error':str(error)})
                else:raise AssertionError('Logical table native validate was not rejected')
            assert observe()==original;save()
        for kind in ('oned_table_group','twod_table_group'):
            for trial in range(3):
                key=kind+'-'+str(trial);case={'key':key,'passed':False,'rejections':[]};result['cases'].append(case)
                head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                sid=head['snapshot'];axes=[]
                for axis in ('x','y') if kind.startswith('twod') else ('x',):
                    sid,model=create(sid,{'op':'create_block','kind':'distribution','name':'EvalGrouped_'+axis,'position':[2200,1800]},key+'-'+axis)
                    axes.append(model)
                op={'op':'create_block','kind':kind,'name':'EvalGroupedTable','position':[2300,1800],
                    'x_distribution':'Main/'+axes[0]['ref']}
                if len(axes)==2:op['y_distribution']='Main/'+axes[1]['ref']
                sid,table=create(sid,op,key+'-table');before=observe()
                rejected_ops=[{'op':'set_distribution_values','target':'Main/'+model['ref'],
                               'expect':{'values':model['default_value']['values']},'values':[42]} for model in axes]
                rejected_ops.append({'op':'set_table_values','target':'Main/'+table['ref'],
                                     'expect':{'values':table['default_value']['values']},
                                     'values':[[42]] if len(axes)==2 else [42]})
                settings_ops=[{'op':'set_table_axis','target':'Main/'+table['ref'],'axis':axis,
                    'expect':{'values':table['default_value'][axis]},'values':[42]} for axis in ('x','y') if axis in table['default_value']]
                settings_ops.append({'op':'set_table_interpolation','target':'Main/'+table['ref'],
                    'expect':{'declared_interpolation':table['declared_interpolation'],
                              **{k:table['default_value'][k] for k in ('interpolation_linear','interpolation_rounded')}},'mode':'rounded'})
                rejected_ops=settings_ops if a.settings_only else rejected_ops+settings_ops
                if a.settings_only:
                    for edit in settings_ops:
                        args=[[table['ref']],table['ref'],edit['axis'],'N42'] if edit['op']=='set_table_axis' else [[table['ref']],table['ref'],'rounded']
                        with service.live_lock(),NativeStructureAdapter(component) as adapter:
                            try:adapter.validate(domain,edit['op'],args)
                            except Exception as error:
                                assert 'non-group table required' in str(error),str(error)
                                case.setdefault('native_rejections',[]).append({'operation':edit['op'],'error':str(error)})
                            else:raise AssertionError('Grouped table direct native validate accepted')
                        assert observe()==before;save()
                for index,edit in enumerate(rejected_ops):
                    for preview in (True,False):
                        _,body,error=client.call('bd_edit',{'snapshot':sid,'request_id':key+'-'+str(index)+'-'+str(preview),
                            'operations':[edit],'preview':preview})
                        assert error and ('Grouped-table' in body or 'Grouped-table configuration' in body),body
                        case['rejections'].append({'operation':edit['op'],'preview':preview,'error':body})
                        assert observe()==before;save()
                while result['outstanding']:inverse(key+'-inverse-'+str(len(result['outstanding'])))
                assert observe()==original
                case['passed']=True;save();print(json.dumps({'case':key,'passed':True,'rejections':len(case['rejections'])}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
