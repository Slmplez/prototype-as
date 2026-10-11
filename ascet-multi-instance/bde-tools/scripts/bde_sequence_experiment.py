"""Sequence number edits on isolated AEB_Core, with shared-pin and collision checks."""
import argparse
import json
import traceback
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter,compile_bridge
from bde_tool_client import ToolClient
from bde_public_oracle import compare,public_projection


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store'
    component='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955';session=str(a.output.resolve())
    result={'passed':False,'calls':[],'cases':[],'outstanding':[],'scope':'existing ordinary Main sequence numbers; actual Doge Tool.call; independent public getter; no activator changes',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,session,record)
    try:
        compile_bridge()
        header,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
        baseline=service.load_record(header['snapshot'],'s_','snapshots')
        domain={'session':session,'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
        def public():
            with service.live_lock(),NativeStructureAdapter(component) as adapter:return adapter.observe_public(domain)
        before_public=public();assert compare(baseline['structure']['entries'],before_public)['passed']
        groups={}
        for row in baseline['structure']['entries']:
            if row.get('sequence'):groups.setdefault(row['sequence']['id'],[]).append(row)
        groups=sorted(groups.values(),key=lambda rows:len(rows),reverse=True)
        assert len(groups)>=3 and len(groups[0])>1
        for group in groups[:3]:
            pin=group[0];sequence=pin['sequence']
            occupied=next(g[0]['sequence']['number'] for g in groups if g[0]['sequence']['method']==sequence['method'] and g[0]['sequence']['id']!=sequence['id'])
            for trial in range(3):
                key=str(sequence['id'])+'-'+str(trial);case={'key':key,'shared_pins':len(group),'passed':False};result['cases'].append(case)
                header,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                op={'op':'set_sequence_number','target':'Main/'+pin['ref'],'expect':{'number':sequence['number'],'method':sequence['method']},'number':90000+trial}
                _,edit=client.value('bd_edit',{'snapshot':header['snapshot'],'request_id':key,'operations':[op]})
                result['outstanding'].append(edit['change_id']);case['edit']=edit;save()
                assert edit['status']=='applied_observed' and edit['additional_ASCET_reads']==0
                assert len(edit['differences'])==len(group)
                after=service.load_record(edit['after_snapshot'],'s_','snapshots')
                current=public()
                full_header,_,error=client.call('bd_read',{'component':component,'view':'structure'});assert not error
                full_after=service.load_record(full_header['snapshot'],'s_','snapshots')
                case['public_check']=compare(full_after['structure']['entries'],current);assert case['public_check']['passed']
                for preview in (True,False):
                    invalid={**op,'number':occupied,'expect':{'number':op['number'],'method':sequence['method']}}
                    _,body,error=client.call('bd_edit',{'snapshot':edit['after_snapshot'],'request_id':key+'-reject-'+str(preview),'operations':[invalid],'preview':preview})
                    assert error and 'Sequence number already occupied' in body
                assert public_projection(current)==public_projection(public())
                _,inverse=client.value('bd_revert',{'change_id':edit['change_id'],'request_id':key+'-inverse'})
                assert inverse['status']=='verified_local';result['outstanding'].pop();save()
                assert public_projection(before_public)==public_projection(public())
                case['inverse']=inverse;case['passed']=True;save()
        result['passed']=True
    except Exception:result['error']=traceback.format_exc()
    save();print(json.dumps({'passed':result['passed'],'cases':len(result['cases']),'outstanding':result['outstanding'],'error':result.get('error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
