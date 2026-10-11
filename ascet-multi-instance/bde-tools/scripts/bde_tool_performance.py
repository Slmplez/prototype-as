"""30-sample backend process + complete pagination measurements with real wire counts.

Timing includes Python process startup, native work, durable publication, every
page process and serialization. Doge orchestration/model time is not included.
Never use cached observations as fresh read samples.
"""
import argparse
import json
import math
import os
import platform
from pathlib import Path
import statistics
import subprocess
import sys
import time
import queue
import threading
import bd_service as service
import bde_experiments as bench
from bde_full_read_experiment import verify
from bd_native_structure import NativeStructureAdapter, compile_bridge


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--mode',choices=['read','edit','display'],required=True)
    parser.add_argument('--driver',choices=['python','doge','doge-session'],default='python')
    parser.add_argument('--component',required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--visual-hold',type=int,choices=range(0,601),default=0)
    args=parser.parse_args()
    args.output.mkdir(parents=True,exist_ok=False)
    service.STORE=args.output/'store'
    session=str(args.output.resolve())
    env=dict(os.environ,ASCET_BD_STORE=str(service.STORE.resolve()),ASCET_BD_BULK_FULL='1',ASCET_BD_STRUCTURAL_WRITES='1',ASCET_BD_PYTHON=sys.executable,
        ASCET_BD_NATIVE_PRESENTATION='1' if args.mode=='display' else '0')
    report={'passed':False,'mode':args.mode,'component':args.component,'samples':[],'attempts':[],
            'timing_boundary':'fresh Python backend process through all result pages; excludes Doge orchestration and eval oracle',
            'environment':{'os':platform.platform(),'processor':os.environ.get('PROCESSOR_IDENTIFIER'), 'python':sys.version},
            'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
                               if p.suffix in ('.py','.st','.cs') and (p.name.startswith(('bd','Ascet','format_bd')))}}
    outstanding=[];display_change=None
    host=None;host_lines=queue.Queue()
    if args.driver in ('doge','doge-session'):
        report['timing_boundary']='fresh Bun process + actual Tool.call + Python/native work + complete pagination; excludes LLM'
        for name in ('Doge/scripts/bde-tool-call-eval.ts','Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts',
                     'Doge/src/tools/BlockDiagramTool/BlockDiagramCreationSchema.ts',
                     'Doge/src/tools/BlockDiagramTool/BlockDiagramReadContract.ts'):
            report['source_manifest'][name]=service.digest((service.ROOT/name).read_bytes())
    if args.driver=='doge-session':
        name='Doge/scripts/bde-session-tool-eval.ts'
        report['source_manifest'][name]=service.digest((service.ROOT/name).read_bytes())
        report['timing_boundary']='existing Bun host + actual Tool.call + fresh Python/native helper per call + all pages; one-time host startup recorded separately; excludes LLM'
    def save():
        report['outstanding']=outstanding[:]
        (args.output/'result.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
    def invoke(tool,payload,bulk=True):
        response_bytes=0;pages=0;failure=None
        def process(name,params,port):
            if host is not None:
                host.stdin.write(json.dumps({'tool':name,'args':params,'session':session,'probe_port':port,'bulk':bulk})+'\n')
                host.stdin.flush()
                try:line=host_lines.get(timeout=100)
                except queue.Empty:raise RuntimeError('Doge eval host timed out; inspect durable journal before retry')
                if line is None:raise RuntimeError('Doge eval host ended without a confirmed response')
                response=json.loads(line)
                if response['is_error']:raise RuntimeError(response['content'])
                return response['content']
            command=([os.environ.get('ASCET_BD_BUN',str(Path.home()/'.bun/bin/bun.exe')),'run','scripts/bde-tool-call-eval.ts']
                     if args.driver=='doge' else [sys.executable,str(service.ROOT/'scripts/bd_service.py')])
            result=subprocess.run(command,cwd=service.ROOT/'Doge' if args.driver=='doge' else service.ROOT,
                input=json.dumps({'tool':name,'args':params,'session':session}),text=True,encoding='utf-8',
                stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=90,
                env={**env,'ASCET_BD_PROBE_PORT':str(port),'ASCET_BD_BULK_FULL':'1' if bulk else '0'})
            if result.returncode:raise RuntimeError(result.stderr[-2000:])
            response=json.loads(result.stdout)
            if response['is_error']:raise RuntimeError(response['content'])
            return response['content']
        with bench.proxy() as wire:
            started=time.perf_counter()
            body=''
            try:
                content=process(tool,payload,wire['port']);response_bytes+=len(content.encode('utf-8'));pages+=1
                header,body=content.split('\n\n',1);first=json.loads(header);meta=first
                while meta['page']['has_more']:
                    content=process('bd_read',{'cursor':meta['page']['next_cursor']},wire['port'])
                    response_bytes+=len(content.encode('utf-8'));pages+=1
                    header,part=content.split('\n\n',1);meta=json.loads(header);body+=part
            except Exception as error:
                failure=error
            elapsed=(time.perf_counter()-started)*1000
        metric={'tool':tool,'elapsed_ms':elapsed,'pages':pages,'response_bytes':response_bytes,
                'body_bytes':len(body.encode('utf-8')),'request_wire':wire['request'].result(),
                'response_wire':wire['response'].result(),'proxy_errors':wire['errors'],
                'cebra_connections':wire['connections'],
                'error':repr(failure) if failure is not None else None,'bulk':bulk,
                'request_id':payload.get('request_id')}
        report['attempts'].append(metric);save()
        if failure is not None:raise failure
        if wire['errors'] or metric['request_wire']['frames'] is None:raise RuntimeError('Wire parse incomplete')
        return first,body,metric
    try:
        service.ensure_probe();compile_bridge()
        if args.driver=='doge-session':
            started=time.perf_counter()
            host=subprocess.Popen([os.environ.get('ASCET_BD_BUN',str(Path.home()/'.bun/bin/bun.exe')),'run','scripts/bde-session-tool-eval.ts'],
                cwd=service.ROOT/'Doge',stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.DEVNULL,
                text=True,encoding='utf-8',env=env,creationflags=subprocess.CREATE_NO_WINDOW if os.name=='nt' else 0)
            def drain_host():
                try:
                    for line in host.stdout:host_lines.put(line)
                finally:host_lines.put(None)
            threading.Thread(target=drain_host,daemon=True).start()
            ready=host_lines.get(timeout=30)
            if ready is None or json.loads(ready)!={'ready':True}:raise RuntimeError('Doge eval host did not start')
            report['host_startup_ms']=(time.perf_counter()-started)*1000
        report['binary_sha256']={str(p):service.digest(p.read_bytes()) for p in [service.ROOT/'analysis/live-api/AscetReadProbe.exe',
            service.ROOT/'analysis/live-api/AscetStructureSession.exe',Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))]}
        if args.mode=='read':
            head,_,metric=invoke('bd_read',{'component':args.component,'max_bytes':16384},bulk=False)
            baseline=json.loads((service.STORE/'raw'/(head['snapshot']+'.json')).read_text())
            report['independent_field_getter_baseline']=metric
            for trial in range(30):
                head,body,metric=invoke('bd_read',{'component':args.component,'max_bytes':16384})
                raw=json.loads((service.STORE/'raw'/(head['snapshot']+'.json')).read_text())
                metric.update(trial=trial,verification=verify(baseline,raw))
                snapshot=service.load_record(head['snapshot'],'s_','snapshots')
                if body!=snapshot['logic']:raise RuntimeError('Pagination differs from saved complete document')
                report['samples'].append(metric);save()
        else:
            if not args.component.startswith('BDE_Tool_Experiments\\Trial_'):raise ValueError('Sandbox only')
            head,_,_=invoke('bd_read',{'component':args.component,'view':'structure'})
            snapshot=service.load_record(head['snapshot'],'s_','snapshots')
            domain={'session':session,'database':snapshot['database'],'oid':snapshot['oid'],'process_epoch':snapshot['ascet_process_epoch']}
            report['public_oracle_timeout_seconds']=120
            with service.live_lock(),NativeStructureAdapter(args.component,timeout=120) as adapter:
                report['public_before']=adapter.observe_public(domain)
            _,body,_=invoke('bd_edit',{'snapshot':head['snapshot'],'request_id':'fixture_literal',
                'operations':[{'op':'create_block','kind':'literal','name':'19.0',
                    'position':[320,50] if args.mode=='display' else [1800,1700]}]})
            created=json.loads(body);outstanding.append(created['change_id']);save()
            target=next(d['after']['ref'] for d in created['differences'] if d['after']['kind']=='node')
            sid=created['after_snapshot']
            if args.mode=='display':
                _,body,_=invoke('bd_edit',{'snapshot':sid,'request_id':'display_move',
                    'operations':[{'op':'move_node','target':'Main/'+target,'position':[440,50]}]})
                changed=json.loads(body);outstanding.append(changed['change_id']);save()
                if changed['status']!='applied_observed':raise RuntimeError('Unverified display fixture edit')
                display_change=changed['change_id']
                report['display_change']=display_change
                report['display_timing_boundary']='Tool.call through native drawing/clear API receipt, not measured photon/visible latency'
                for trial in range(30):
                    _,body,show_metric=invoke('bd_diff',{'change_id':display_change,'presentation':'show'})
                    shown=json.loads(body)
                    if shown['native']['status']!='ok':raise RuntimeError('Native show failed')
                    show_metric.update(tool='bd_diff/show',trial=trial);report['samples'].append(show_metric)
                    report.setdefault('native_show_receipts',[]).append(shown['native']);save()
                    if trial==0 and args.visual_hold:
                        gate=args.output/'display-shown.json'
                        print(json.dumps({'phase':'display-shown','release_file':str(gate)}),flush=True)
                        deadline=time.monotonic()+args.visual_hold
                        while not gate.is_file() and time.monotonic()<deadline:time.sleep(.25)
                        report['visual_gate']=json.loads(gate.read_text(encoding='utf-8')) if gate.is_file() else {'status':'timed_out'}
                        save()
                        if report['visual_gate'].get('status')!='verified':raise RuntimeError('Actual BDE visual gate unverified')
                    _,body,clear_metric=invoke('bd_diff',{'change_id':display_change,'presentation':'clear'})
                    cleared=json.loads(body)
                    if cleared['native']['presentation']!='cleared|undo_content_unchanged=true':raise RuntimeError('Native clear/Undo verification failed')
                    clear_metric.update(tool='bd_diff/clear',trial=trial);report['samples'].append(clear_metric);save()
                _,body,_=invoke('bd_revert',{'change_id':display_change,'request_id':'cleanup_display_move'})
                if json.loads(body)['status']!='verified_local':raise RuntimeError('Display fixture inverse failed')
                outstanding.pop();display_change=None
            else:
                for trial in range(30):
                    _,body,edit_metric=invoke('bd_edit',{'snapshot':sid,'request_id':'move_'+str(trial),
                        'operations':[{'op':'move_node','target':'Main/'+target,'position':[1810,1710]}]})
                    edit=json.loads(body);outstanding.append(edit['change_id']);save()
                    if edit['status']!='applied_observed':raise RuntimeError('Unverified edit')
                    edit_metric['trial']=trial;report['samples'].append(edit_metric);save()
                    _,body,revert_metric=invoke('bd_revert',{'change_id':edit['change_id'],'request_id':'inverse_'+str(trial)})
                    inverse=json.loads(body)
                    if inverse['status']!='verified_local':raise RuntimeError('Unverified inverse')
                    outstanding.pop();sid=inverse['after_snapshot']
                    revert_metric['trial']=trial;report['samples'].append(revert_metric)
                    save()
            _,body,metric=invoke('bd_revert',{'change_id':created['change_id'],'request_id':'cleanup_literal'})
            if json.loads(body)['status']!='verified_local':raise RuntimeError('Fixture inverse failed')
            outstanding.pop()
            with service.live_lock(),NativeStructureAdapter(args.component,timeout=120) as adapter:
                report['public_restored']=adapter.observe_public(domain)==report['public_before']
            if not report['public_restored']:raise RuntimeError('Independent baseline not restored')
        summary={}
        for tool in sorted({r['tool'] for r in report['samples']}):
            rows=[r for r in report['samples'] if r['tool']==tool];timings=sorted(r['elapsed_ms'] for r in rows)
            summary[tool]={'n':len(rows),'p50_ms':statistics.median(timings),'p95_ms':timings[math.ceil(.95*len(timings))-1],
                           'max_ms':max(timings),'request_frames':sorted({r['request_wire']['frames'] for r in rows}),
                           'all_under_1000_ms':max(timings)<1000}
        report.update(passed=True,summary=summary)
    except Exception as error:report['error']=repr(error)
    finally:
        if display_change is not None:
            try:
                _,body,_=invoke('bd_diff',{'change_id':display_change,'presentation':'clear'})
                report['failure_display_clear']=json.loads(body)
            except Exception as error:report['clear_cleanup_error']=repr(error)
        if outstanding:
            report['failure_cleanup']=[]
            try:
                while outstanding:
                    change_id=outstanding[-1]
                    _,body,metric=invoke('bd_revert',{'change_id':change_id,'request_id':'failure_cleanup_'+str(len(outstanding))})
                    receipt=json.loads(body)
                    report['failure_cleanup'].append({'change_id':change_id,'receipt':receipt,'metric':metric});save()
                    if receipt.get('status')!='verified_local':raise RuntimeError('Cleanup not verified; inspect retained recovery material')
                    outstanding.pop();save()
                with service.live_lock(),NativeStructureAdapter(args.component,timeout=120) as adapter:
                    report['public_restored']=adapter.observe_public(domain)==report['public_before']
                if not report['public_restored']:raise RuntimeError('Failure cleanup baseline mismatch')
            except Exception as error:report['cleanup_error']=repr(error)
        if host is not None:
            host.stdin.close()
            try:host.wait(timeout=100)
            except subprocess.TimeoutExpired:
                # Do not kill a possibly active backend or imply cancellation.
                report['eval_host_still_running']=host.pid
        report['source_changes_during_run']=[name for name,digest in report['source_manifest'].items()
            if not (service.ROOT/name).is_file() or service.digest((service.ROOT/name).read_bytes())!=digest]
        report['version_binding_complete']=not report['source_changes_during_run']
        if not report['version_binding_complete']:report['passed']=False
    save();print(json.dumps({k:report.get(k) for k in ('passed','error','summary','outstanding')}))
    return 0 if report['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
