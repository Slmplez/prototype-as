"""Class-only negative creation cases, preserving a prior successful inverse."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    service.STORE=a.output/'store';session=str(a.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    component='BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955'
    result={'passed':False,'calls':[],'trials':[],'outstanding':[],
        'scope':'Module-only resource/messages rejected on Class in preview and prepare; prior successful edit remains reversible',
        'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
            if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def call(tool,args,error=False):
        response=service.handle(tool,args,session)
        result['calls'].append({'tool':tool,'args':args,'response':response});save()
        assert bool(response['is_error'])==error,response['content']
        h,body=response['content'].split('\n\n',1);first=meta=json.loads(h)
        while meta['page']['has_more']:
            page=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
            assert not page['is_error'];h,part=page['content'].split('\n\n',1);body+=part;meta=json.loads(h)
        return first,body
    def receipt(tool,args,error=False):return json.loads(call(tool,args,error)[1])
    try:
        header,_=call('bd_read',{'component':component,'view':'structure'})
        sid=header['snapshot'];original=service.load_record(sid,'s_','snapshots')
        domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(),NativeStructureAdapter(component) as adapter:
            baseline_public=adapter.observe_public(domain);baseline_models=adapter.observe_models(domain)
        for trial in range(3):
            created=receipt('bd_edit',{'snapshot':sid,'request_id':f'create-{trial}',
                'operations':[{'op':'create_block','kind':'literal','name':'37.0','position':[2400,2000]}]})
            assert created['status']=='applied_observed'
            result['outstanding']=[created['change_id']];sid=created['after_snapshot'];save()
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                before=adapter.observe(domain,[]);public=adapter.observe_public(domain);models=adapter.observe_models(domain)
            for kind in ('resource','receive_message','send_message','send_receive_message'):
                for preview in (True,False):
                    rejected=receipt('bd_edit',{'snapshot':sid,'request_id':f'{kind}-{trial}-{preview}', 'preview':preview,
                        'operations':[{'op':'create_block','kind':kind,'name':'Reject_'+kind,'position':[2500,2100]}]},True)
                    assert rejected['status']=='rejected' and rejected['setter_called'] is False
                    assert ('Messages require a module' if 'message' in kind else 'Resource graphical persistence') in rejected['error']
                    with service.live_lock(),NativeStructureAdapter(component) as adapter:
                        assert adapter.observe(domain,[])==before
                        assert adapter.observe_public(domain)==public
                        assert adapter.observe_models(domain)==models
                    result['trials'].append({'kind':kind,'trial':trial,'preview':preview,'passed':True});save()
            restored=receipt('bd_revert',{'change_id':created['change_id'],'request_id':f'undo-{trial}'})
            assert restored['status']=='verified_local';sid=restored['after_snapshot']
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                assert adapter.observe(domain,[])==original['structure']
                assert adapter.observe_public(domain)==baseline_public
                assert adapter.observe_models(domain)==baseline_models
            result['outstanding']=[];save()
        result['passed']=True
    except Exception as error:
        result['error']=repr(error);result['traceback']=traceback.format_exc()
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
