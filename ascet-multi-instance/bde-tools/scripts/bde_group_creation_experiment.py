"""Public-API verified grouped table creation from exact distribution refs."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--component',required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store';session=str(a.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    result={'passed':False,'calls':[],'trials':[]};stack=[]
    def save():
        result['outstanding']=stack[:];(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def invoke(tool,args):
        r=service.handle(tool,args,session);result['calls'].append({'tool':tool,'args':args,'result':r});save()
        header,body=r['content'].split('\n\n',1);meta=json.loads(header)
        if r['is_error']:
            if tool=='bd_edit' and meta.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
                stack.append(meta['change_id']);save()
            raise RuntimeError(r['content'])
        while meta['page']['has_more']:
            page=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session);h,b=page['content'].split('\n\n',1);body+=b;meta=json.loads(h)
        return json.loads(header),body
    try:
        header,_=invoke('bd_read',{'component':a.component,'view':'structure'});sid=header['snapshot']
        original=service.load_record(sid,'s_','snapshots');domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(),NativeStructureAdapter(a.component) as adapter:
            public_before=adapter.observe_public(domain);models_before=adapter.observe_models(domain)
        result['public_before']=public_before;result['models_before']=models_before;save()
        for trial in range(3):
            distribution=[]
            for kind,name in [('distribution','Eval_X'),('distribution','Eval_Y'),('oned_table_group','Eval_T1'),('twod_table_group','Eval_T2')]:
                op={'op':'create_block','kind':kind,'name':name,'position':[1800+len(stack)*100,1800]}
                if kind.endswith('_group'):
                    op['x_distribution']='Main/'+distribution[0]
                    if kind=='twod_table_group':op['y_distribution']='Main/'+distribution[1]
                _,body=invoke('bd_edit',{'snapshot':sid,'request_id':f'{trial}_{name}','operations':[op]});edit=json.loads(body)
                stack.append(edit['change_id']);save();sid=edit['after_snapshot']
                model=next(d['after'] for d in edit['differences'] if d['after'] and d['after']['kind']=='model')
                if kind=='distribution':distribution.append(model['ref'])
                else:
                    with service.live_lock(),NativeStructureAdapter(a.component) as adapter:
                        declarations=adapter.observe_models(domain)
                    row=next(m for m in declarations if m['name']==name)
                    assert row['group_table'] and row['x_distribution_name']=='Eval_X'
                    if kind=='twod_table_group':assert row['y_distribution_name']=='Eval_Y'
                    result['trials'].append({'trial':trial,'kind':kind,'native':model,'public':row,'passed':True});save()
            while stack:
                _,body=invoke('bd_revert',{'change_id':stack[-1],'request_id':f'{trial}_inverse_{len(stack)}'});restored=json.loads(body)
                assert restored['status']=='verified_local';sid=restored['after_snapshot'];stack.pop();save()
            with service.live_lock(),NativeStructureAdapter(a.component) as adapter:
                assert adapter.observe(domain,[])==original['structure']
                assert adapter.observe_public(domain)==public_before
                assert sorted(adapter.observe_models(domain),key=lambda r:r['name'])==sorted(models_before,key=lambda r:r['name'])
        result['passed']=True
    except Exception as e:
        result['error']=repr(e)
        while stack:
            try:
                _,body=invoke('bd_revert',{'change_id':stack[-1],'request_id':'failure_cleanup_'+str(len(stack))})
                if json.loads(body)['status']!='verified_local':break
                stack.pop();save()
            except Exception as error:
                result['cleanup_error']=repr(error);break
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
