"""Real native apply/inverse with disk errors injected at Python journal boundaries.

Tests observed/finished persistence failure three times each. This is not host
kill, native partial mutation, or actual full-disk hardware failure.
"""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch
import bd_service as service
import bd_structural_tools
from bd_structure_journal import StructureJournal
from bd_native_structure import NativeStructureAdapter
from bde_lost_reply_experiment import LoseReply


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--component',required=True);p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    if not a.component.startswith('BDE_Tool_Experiments\\Trial_'):raise ValueError('Sandbox only')
    a.output.mkdir(parents=True,exist_ok=False);service.STORE=a.output/'store';session=str(a.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    result={'passed':False,'calls':[],'trials':[],'outstanding':[],
            'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.st','.cs') and f.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def call(tool,args,expected_error=False):
        r=service.handle(tool,args,session);result['calls'].append({'tool':tool,'args':args,'result':r});save()
        assert bool(r['is_error'])==expected_error,r['content']
        h,body=r['content'].split('\n\n',1);first=meta=json.loads(h)
        while meta['page']['has_more']:
            r=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
            assert not r['is_error'];h,part=r['content'].split('\n\n',1);body+=part;meta=json.loads(h)
        return first,body
    def receipt(tool,args,expected_error=False):return json.loads(call(tool,args,expected_error)[1])
    append=StructureJournal._append
    try:
        h,_=call('bd_read',{'component':a.component,'view':'structure'});sid=h['snapshot'];original=service.load_record(sid,'s_','snapshots')
        domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(),NativeStructureAdapter(a.component) as adapter:result['public_before']=adapter.observe_public(domain)
        LoseReply.lose_command=None;LoseReply.native_mutations=[]
        for phase in ('observed','finished'):
            for trial in range(3):
                def fault(log,path,events,kind,payload):
                    if kind in ({'observed','finished'} if phase=='observed' else {'finished'}):raise OSError('EVAL journal disk full at '+phase)
                    return append(log,path,events,kind,payload)
                key=f'{phase}_{trial}'
                args={'snapshot':sid,'request_id':key,'operations':[{'op':'create_block','kind':'literal','name':'73.0','position':[400,400]}]}
                with patch.object(bd_structural_tools,'NativeStructureAdapter',LoseReply),patch.object(StructureJournal,'_append',fault):
                    unknown=receipt('bd_edit',args,True);assert unknown['status']=='outcome_unknown'
                    result['outstanding']=[unknown['change_id']];save()
                replay=receipt('bd_edit',args,True);assert replay['status']=='outcome_unknown'
                recovered=receipt('bd_inspect',{'query':'recovery','change_id':unknown['change_id'],'reconcile':True})
                assert recovered['receipt']['status']=='applied_observed'
                with patch.object(bd_structural_tools,'NativeStructureAdapter',LoseReply),patch.object(StructureJournal,'_append',fault):
                    inverse=receipt('bd_revert',{'change_id':unknown['change_id'],'request_id':key+'_inverse'},True)
                    assert inverse['status']=='outcome_unknown'
                restored=receipt('bd_inspect',{'query':'recovery','change_id':inverse['change_id'],'reconcile':True})
                assert restored['receipt']['status']=='verified_local';sid=restored['receipt']['after_snapshot']
                with service.live_lock(),NativeStructureAdapter(a.component) as adapter:
                    assert adapter.observe(domain,[])==original['structure']
                    assert adapter.observe_public(domain)==result['public_before']
                result['outstanding']=[];result['trials'].append({'phase':phase,'trial':trial,'passed':True});save()
        assert LoseReply.native_mutations==['apply','revert']*6
        result['native_mutations']=LoseReply.native_mutations;result['passed']=True
    except Exception as error:result['error']=repr(error)
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding')}));return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
