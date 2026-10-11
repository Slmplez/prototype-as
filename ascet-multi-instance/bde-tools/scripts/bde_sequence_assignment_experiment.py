"""Assign a newly created BDE call, switch methods, reject collisions, reverse exactly."""
import argparse
import json
import traceback
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bde_public_oracle import compare,public_projection
from bde_tool_client import ToolClient


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--repeats',type=int,choices=[1,3],default=3)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store'
    component='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955';session=str(a.output.resolve())
    result={'passed':False,'calls':[],'cases':[],'outstanding':[],
        'scope':'existing call assignment only; no creation of missing call; actual Doge Tool.call plus independent public getter',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
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
        for trial in range(a.repeats):
            case={'trial':trial,'passed':False};result['cases'].append(case)
            head,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
            baseline=service.load_record(head['snapshot'],'s_','snapshots')
            domain={'session':session,'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
            def observe():
                with service.live_lock(),NativeStructureAdapter(component) as adapter:
                    native=adapter.observe(domain,[]);public=adapter.observe_public(domain)
                    assert compare(native['entries'],public)['passed']
                    return native,public_projection(public)
            initial=observe()
            created=edit(head['snapshot'],{'op':'create_block','kind':'variable','name':'EvalSequenceAssign','position':[2200,1800]},str(trial)+'-create')
            before_assignment=observe()
            pin=next(d['after'] for d in created['differences'] if d['after'].get('sequence'))
            assert pin['sequence']['method'] is None
            op={'op':'set_sequence','target':'Main/'+pin['ref'],'expect':{'number':pin['sequence']['number'],'method':None},'number':91000,'method':'calc'}
            assigned=edit(created['after_snapshot'],op,str(trial)+'-assign');case['assigned']=assigned
            observed_assignment=observe()
            switched=edit(assigned['after_snapshot'],{**op,'expect':{'number':91000,'method':'calc'},'number':91001,'method':'init'},str(trial)+'-switch');case['switched']=switched
            observed_switch=observe()
            occupied=next(r['sequence']['number'] for r in baseline['structure']['entries'] if r.get('sequence') and r['sequence']['method']=='calc')
            for label,method,number in [('unknown','EvalMissingMethod',91002),('occupied','calc',occupied)]:
                for preview in (True,False):
                    _,body,error=client.call('bd_edit',{'snapshot':switched['after_snapshot'],'request_id':str(trial)+'-'+label+'-'+str(preview),'preview':preview,
                        'operations':[{**op,'expect':{'number':91001,'method':'init'},'method':method,'number':number}]})
                    assert error,body
                    assert ('Sequence method missing' in body if label=='unknown' else 'Sequence number already occupied' in body),body
            assert observe()==observed_switch
            inverse(str(trial)+'-undo-switch');assert observe()==observed_assignment
            inverse(str(trial)+'-undo-assign');assert observe()==before_assignment
            inverse(str(trial)+'-undo-create');assert observe()==initial
            case['passed']=True;save();print(json.dumps({'trial':trial,'passed':True}),flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
    save();print(json.dumps({'passed':result['passed'],'outstanding':result['outstanding'],'error':result.get('error','')[:1000]}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
