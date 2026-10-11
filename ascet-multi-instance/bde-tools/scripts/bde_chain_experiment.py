"""Production bd_service chain on a fixed isolated AEB_Core copy; no full reread between edits."""
import argparse
import json
import os
from pathlib import Path
import time
import hashlib
import subprocess
import sys
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--route',action='store_true',help='Exercise exact orthogonal route edit before text/move/delete')
    parser.add_argument('--driver',choices=('python','doge'),default='python')
    args = parser.parse_args()
    if not args.component.startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Sandbox only')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output/'store'
    os.environ['ASCET_BD_STRUCTURAL_WRITES'] = '1'
    session = str(args.output.resolve())
    evidence = {'component':args.component,'driver':args.driver,'passed':False,'calls':[],'cleanup':[]}
    evidence['source_manifest']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in Path(__file__).parent.iterdir()
        if p.suffix in ('.py','.cs','.st') and (p.name.startswith(('bd_','bde_structure','bde_session','bde_recovery','AscetStructure')) or p.name in ('bde_chain_experiment.py','bde_public_oracle.py'))}
    if args.driver=='doge':
        for p in [service.ROOT/'Doge/scripts/bde-tool-call-eval.ts',*(service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts')]:
            evidence['source_manifest'][str(p.relative_to(service.ROOT))]=hashlib.sha256(p.read_bytes()).hexdigest()
    stack = []
    expected_rows = {}
    def save():
        evidence['outstanding']=stack[:]
        (args.output/'result.json').write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    def invoke(tool, payload):
        started = time.perf_counter()
        if args.driver=='doge':
            process=subprocess.run([str(Path.home()/'.bun/bin/bun.exe'),'run','scripts/bde-tool-call-eval.ts'],cwd=service.ROOT/'Doge',
                input=json.dumps({'tool':tool,'args':payload,'session':session}),capture_output=True,text=True,encoding='utf-8',timeout=90,
                env=dict(os.environ,ASCET_BD_STORE=str(service.STORE.resolve()),ASCET_BD_PYTHON=sys.executable))
            if process.returncode:raise RuntimeError(process.stderr)
            result=json.loads(process.stdout)
        else:
            result = service.handle(tool,payload,session)
        evidence['calls'].append({'tool':tool,'args':payload,'result':result,'elapsed_ms':(time.perf_counter()-started)*1000})
        save()
        if result.get('is_error'):
            raise RuntimeError(result['content'])
        return result
    def header(response):
        return json.loads(response['content'].split('\n\n',1)[0])
    def receipt(response):
        text = response['content'].split('\n\n',1)[1]
        meta = header(response)
        while meta['page']['has_more']:
            response = invoke('bd_read', {'cursor':meta['page']['next_cursor']})
            meta = header(response)
            text += response['content'].split('\n\n',1)[1]
        return json.loads(text)
    def apply(sid, op, name):
        result = receipt(invoke('bd_edit',{'snapshot':sid,'request_id':name,'operations':[op]}))
        stack.append(result['change_id'])
        verify_stage(name, result)
        if not result.get('after_snapshot'):
            raise RuntimeError('After snapshot missing')
        return result
    def verify_stage(label, result):
        # Eval-only complete projection: production after snapshots stay scoped.
        for delta in result.get('differences', []):
            if delta['after'] is None:
                expected_rows.pop(delta['ref'], None)
            else:
                expected_rows[delta['ref']] = delta['after']
        with service.live_lock(), NativeStructureAdapter(args.component) as native:
            public = native.observe_public(domain)
        oracle = compare(list(expected_rows.values()), public)
        evidence.setdefault('stage_oracles', []).append({'stage':label,'public':public,**oracle})
        save()
        if not oracle['passed']:
            raise RuntimeError('Independent public projection mismatch at ' + label)
    try:
        initial = header(invoke('bd_read',{'component':args.component,'view':'structure','max_bytes':16384}))['snapshot']
        original = service.load_record(initial,'s_','snapshots')
        domain = {'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        expected_rows.update({row['ref']:row for row in original['structure']['entries']})
        with service.live_lock(), NativeStructureAdapter(args.component) as native:
            evidence['public_before'] = native.observe_public(domain)
        baseline = compare(list(expected_rows.values()), evidence['public_before'])
        evidence['baseline_oracle'] = baseline
        if not baseline['passed']:
            raise RuntimeError('Initial native/public coverage mismatch; no writes')
        literal = apply(initial,{'op':'create_block','kind':'literal','name':'1.0','position':[1600,1000]},'literal')
        lnode = next(r['after'] for r in literal['differences'] if r['before'] is None and r['after']['kind']=='node')
        operator = apply(literal['after_snapshot'],{'op':'create_block','kind':'operator','name':'+','arity':2,'position':[1900,1000]},'operator')
        opnode = next(r['after'] for r in operator['differences'] if r['before'] is None and r['after']['kind']=='node')
        rows = service.load_record(operator['after_snapshot'],'s_','snapshots')['structure']['entries']
        output = next(r['ref'] for r in rows if r['kind']=='pin' and r['owner']==lnode['ref'] and r['output'])
        input_ref = next(r['ref'] for r in rows if r['kind']=='pin' and r['owner']==opnode['ref'] and r['input'])
        connection = apply(operator['after_snapshot'],{'op':'connect_data','source':'Main/'+output,'target':'Main/'+input_ref},'connect')
        if args.route:
            edge=next(r['after'] for r in connection['differences'] if r['before'] is None and r['after']['kind']=='edge')
            start,end=edge['route'][0],edge['route'][-1]
            points=[start,[start[0]+60,start[1]],[start[0]+60,start[1]+80],
                    [end[0]-60,start[1]+80],[end[0]-60,end[1]],end]
            connection=apply(connection['after_snapshot'],{'op':'set_edge_route','target':'Main/'+edge['ref'],'points':points},'route')
            # A second route starts from a bent edge, testing nonempty recovery
            # coordinates across subsequent text/move edits and inverses.
            points=[start,[start[0]+70,start[1]],[start[0]+70,start[1]+120],
                    [end[0]-70,start[1]+120],[end[0]-70,end[1]],end]
            connection=apply(connection['after_snapshot'],{'op':'set_edge_route','target':'Main/'+edge['ref'],'points':points},'route_again')
        edit = apply(connection['after_snapshot'],{'op':'set_literal','target':'Main/'+lnode['ref'],'expect':{'text':'1.0'},'value':{'text':'123456.789'}},'text')
        move = apply(edit['after_snapshot'],{'op':'move_node','target':'Main/'+lnode['ref'],'position':[1700,1100]},'move')
        deletion = apply(move['after_snapshot'],{'op':'delete_node','target':'Main/'+lnode['ref']},'delete')
        evidence['last_snapshot'] = deletion['after_snapshot']
        evidence['chain_completed'] = True
    except Exception as error:
        evidence['error'] = repr(error)
    finally:
        while stack:
            token = stack[-1]
            try:
                restored = receipt(invoke('bd_revert',{'change_id':token,'request_id':'inverse_'+str(len(stack))}))
                evidence['cleanup'].append(restored)
                if restored['status'] != 'verified_local':
                    raise RuntimeError('Inverse did not verify')
                stack.pop()
                verify_stage('inverse_'+str(len(stack)+1), restored)
            except Exception as error:
                evidence['cleanup_error'] = repr(error)
                break
            save()
        evidence['outstanding'] = stack
        if not stack and 'domain' in locals():
            with service.live_lock(), NativeStructureAdapter(args.component) as native:
                evidence['native_restored'] = native.observe(domain,[]) == original['structure']
                evidence['public_final'] = native.observe_public(domain)
                evidence['public_restored'] = evidence['public_final'] == evidence['public_before']
        evidence['passed'] = bool(evidence.get('chain_completed') and evidence.get('native_restored') and evidence.get('public_restored') and not stack)
        save()
    print(json.dumps({k:evidence.get(k) for k in ('passed','error','cleanup_error','outstanding','native_restored','public_restored')}))
    return 0 if evidence['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
