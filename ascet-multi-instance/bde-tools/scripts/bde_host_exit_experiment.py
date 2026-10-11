"""Kill only a disposable Python tool host after real native completion.

The native reply is intercepted before adapter confirmation or journal after.
The actual native setter runs. ASCET itself is never killed. This covers that
one host-death window, not termination during an in-progress native setter.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import threading
import time
import traceback
from unittest.mock import patch
import bd_service as service
import bd_structural_tools
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_edit_journal import fingerprint
import bd_instance_pending as pending


def worker(config_path):
    config=json.loads(config_path.read_text(encoding='utf-8'))
    service.STORE=Path(config['store']);os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    class PauseAfterReply(NativeStructureAdapter):
        def _exchange(self,request):
            result=super()._exchange(request)
            if request['cmd']==config['command']:
                service.write_once(Path(config['signal']),{'host_pid':os.getpid(),'bridge_pid':self.process.pid,
                    'command':request['cmd'],'native_result':result})
                # Parent kills this disposable worker, or this bounded wait ends
                # and the normal backend safely completes if the parent vanished.
                threading.Event().wait(30)
            return result
    with patch.object(bd_structural_tools,'NativeStructureAdapter',PauseAfterReply):
        response=service.handle(config['tool'],config['args'],config['session'])
    print(json.dumps(response));return 0


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path);parser.add_argument('--worker',type=Path)
    a=parser.parse_args()
    if a.worker:return worker(a.worker)
    if a.output is None:parser.error('--output required')
    a.output.mkdir(parents=True,exist_ok=False)
    service.STORE=a.output/'store';original_store=service.STORE;session=str(a.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    component='BDE_Tool_Experiments\\Trial_data_20260930_012339'
    result={'passed':False,'calls':[],'trials':[],'outstanding':[],
        'scope':'Python host death after native completion before confirmation; cross-STORE write quarantine; no ASCET termination',
        'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
            if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def call(tool,args,error=False):
        response=service.handle(tool,args,session);result['calls'].append({'store':str(service.STORE),'tool':tool,'args':args,'response':response});save()
        assert bool(response['is_error'])==error,response['content']
        h,body=response['content'].split('\n\n',1);first=meta=json.loads(h)
        while meta['page']['has_more']:
            page=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
            assert not page['is_error'];h,part=page['content'].split('\n\n',1);body+=part;meta=json.loads(h)
        return first,body
    def receipt(tool,args,error=False):return json.loads(call(tool,args,error)[1])
    def kill_window(tool,args,command,label):
        signal=(a.output/(label+'-native.json')).resolve();config_path=a.output/(label+'-worker.json')
        config={'store':str(service.STORE.resolve()),'session':session,'tool':tool,'args':args,'command':command,'signal':str(signal)}
        config_path.write_text(json.dumps(config),encoding='utf-8')
        process=subprocess.Popen([sys.executable,str(Path(__file__).resolve()),'--worker',str(config_path.resolve())],
            stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,encoding='utf-8',
            creationflags=subprocess.CREATE_NO_WINDOW if os.name=='nt' else 0)
        deadline=time.monotonic()+20
        while not signal.exists() and process.poll() is None and time.monotonic()<deadline:time.sleep(.02)
        if not signal.exists():
            # Never kill before the known completed-native window. Let the
            # ordinary tool finish and persist recovery evidence instead.
            stdout,stderr=process.communicate(timeout=60)
            (a.output/(label+'-unexpected.txt')).write_text(stdout+stderr,encoding='utf-8')
            raise RuntimeError('Native-completion signal missing; inspect worker result, do not replay')
        record=json.loads(signal.read_text(encoding='utf-8'));assert record['host_pid']==process.pid
        process.kill();stdout,stderr=process.communicate(timeout=10)
        record.update(host_exit_code=process.returncode,host_stdout=stdout,host_stderr=stderr)
        result['trials'].append({'label':label,'kill':record});save()
        return record
    try:
        h,_=call('bd_read',{'component':component,'view':'structure'});sid=h['snapshot']
        original=service.load_record(sid,'s_','snapshots')
        domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(),NativeStructureAdapter(component) as adapter:baseline=adapter.observe_public(domain)
        for trial in range(3):
            args={'snapshot':sid,'request_id':f'host-{trial}','operations':[{'op':'create_block','kind':'literal','name':'83.0','position':[500,500]}]}
            token='edit_'+fingerprint({'domain':domain,'request_id':args['request_id']})
            result['outstanding']=[token];save()
            kill_window('bd_edit',args,'apply',f'{trial}-apply')
            assert pending.pending_path(domain).exists()
            replay=receipt('bd_edit',args,True);assert replay['status']=='outcome_unknown'
            commands=[]
            class CountCommands(NativeStructureAdapter):
                def _exchange(self,request):commands.append(request['cmd']);return super()._exchange(request)
            service.STORE=a.output/f'alt-store-{trial}'
            try:
                header,_=call('bd_read',{'component':component,'view':'structure'})
                with patch.object(bd_structural_tools,'NativeStructureAdapter',CountCommands):
                    rejected=receipt('bd_edit',{'snapshot':header['snapshot'],'request_id':'must-block',
                        'operations':[{'op':'create_block','kind':'literal','name':'99.0','position':[700,700]}]},True)
                assert rejected['status']=='rejected' and rejected['setter_called'] is False
                assert 'A native mutation has no confirmed reply' in rejected['error']
                assert 'apply' not in commands and 'prepare' not in commands
                result['trials'][-1]['cross_store_commands']=commands
            finally:service.STORE=original_store
            recovered=receipt('bd_inspect',{'query':'recovery','change_id':token,'reconcile':True})
            assert recovered['receipt']['status']=='applied_observed' and not pending.pending_path(domain).exists()
            inverse_args={'change_id':token,'request_id':f'undo-host-{trial}'}
            inverse='edit_'+fingerprint({'domain':domain,'request_id':inverse_args['request_id']})
            kill_window('bd_revert',inverse_args,'revert',f'{trial}-revert')
            assert pending.pending_path(domain).exists()
            assert receipt('bd_revert',inverse_args,True)['status']=='outcome_unknown'
            restored=receipt('bd_inspect',{'query':'recovery','change_id':inverse,'reconcile':True})
            assert restored['receipt']['status']=='verified_local' and not pending.pending_path(domain).exists()
            sid=restored['receipt']['after_snapshot']
            with service.live_lock(),NativeStructureAdapter(component) as adapter:
                assert adapter.observe_public(domain)==baseline
                assert adapter.observe(domain,[])==original['structure']
            result['outstanding']=[];result['trials'][-1]['baseline_restored']=True;save()
        result['passed']=True
    except Exception as error:result['error']=repr(error);result['traceback']=traceback.format_exc()
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
