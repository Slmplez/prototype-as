"""Cancel real Doge Tool.call after durable started; backend finishes and persists."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import traceback
import bd_service as service
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bd_native_structure import NativeStructureAdapter


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    service.STORE=a.output/'store';session=str(a.output.resolve());os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    component='BDE_Tool_Experiments\\Trial_data_20260930_012339'
    result={'passed':False,'calls':[],'trials':[],'outstanding':[],
        'scope':'actual Tool.call cancellation after durable started, before confirmed caller receipt; backend stays alive',
        'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
            if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure'))}}
    for p in [service.ROOT/'Doge/scripts/bde-cancel-tool-eval.ts',*(service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts')]:
        result['source_manifest'][str(p.relative_to(service.ROOT))]=service.digest(p.read_bytes())
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def call(tool,args):
        r=service.handle(tool,args,session);result['calls'].append({'tool':tool,'args':args,'response':r});save()
        assert not r['is_error'],r['content'];h,body=r['content'].split('\n\n',1);first=meta=json.loads(h)
        while meta['page']['has_more']:
            r=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
            assert not r['is_error'];h,b=r['content'].split('\n\n',1);body+=b;meta=json.loads(h)
        return first,body
    def cancel(tool,args,token):
        env=dict(os.environ,ASCET_BD_STORE=str(service.STORE.resolve()),ASCET_BD_PYTHON=sys.executable)
        process=subprocess.run([str(Path.home()/'.bun/bin/bun.exe'),'run','scripts/bde-cancel-tool-eval.ts'],cwd=service.ROOT/'Doge',
            input=json.dumps({'tool':tool,'args':args,'session':session,'change_id':token}),capture_output=True,text=True,encoding='utf-8',env=env,timeout=90)
        result['calls'].append({'tool':tool,'args':args,'cancel_eval_stdout':process.stdout,'stderr':process.stderr,'exit_code':process.returncode});save()
        assert process.returncode==0,process.stderr
        observation=json.loads(process.stdout);assert observation['cancelled_after_ms'] is not None
        response=observation['data'];receipt=json.loads(response['content'])
        assert response['is_error'] and receipt['status']=='outcome_unknown' and receipt['backend_may_be_running']
        assert not receipt['automatic_retry']
        # The evaluator exits after its child backend finishes. The immediate
        # Tool.call response above is still unknown; do not turn it into success.
        log=StructureJournal(service.STORE/'edits');events=log.read(token)
        terminal=log.receipt(token,events)
        assert terminal['status']==('applied_observed' if tool=='bd_edit' else 'verified_local')
        assert len([e for e in events if e['kind']=='started'])==1
        return observation,terminal
    try:
        header,_=call('bd_read',{'component':component,'view':'structure'});sid=header['snapshot']
        original=service.load_record(sid,'s_','snapshots')
        domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(),NativeStructureAdapter(component) as adapter:baseline=adapter.observe_public(domain)
        for trial in range(3):
            args={'snapshot':sid,'request_id':f'cancel-{trial}','operations':[{'op':'create_block','kind':'literal','name':'87.0','position':[500,500]}]}
            token='edit_'+fingerprint({'domain':domain,'request_id':args['request_id']})
            result['outstanding']=[token];save()
            observation,terminal=cancel('bd_edit',args,token)
            before_replay=list((service.STORE/'edits'/token).glob('*.json'))
            _,body=call('bd_edit',args);created=json.loads(body)
            assert created['status']=='applied_observed' and created['change_id']==token
            assert list((service.STORE/'edits'/token).glob('*.json'))==before_replay
            inverse_args={'change_id':token,'request_id':f'undo-cancel-{trial}'}
            inverse='edit_'+fingerprint({'domain':domain,'request_id':inverse_args['request_id']})
            undo_observation,undo_terminal=cancel('bd_revert',inverse_args,inverse)
            _,body=call('bd_revert',inverse_args);restored=json.loads(body)
            assert restored['status']=='verified_local';sid=restored['after_snapshot']
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                assert adapter.observe(domain,[])==original['structure']
                assert adapter.observe_public(domain)==baseline
            result['outstanding']=[];result['trials'].append({'trial':trial,'passed':True,'cancel_apply':observation,'cancel_inverse':undo_observation});save()
        result['passed']=True
    except Exception as error:result['error']=repr(error);result['traceback']=traceback.format_exc()
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding')}));return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
