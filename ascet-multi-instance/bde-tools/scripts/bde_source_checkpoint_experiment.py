"""Real nested in-place source mutation, stale snapshot rejection and restoration."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan
from bd_edit_journal import fingerprint


def build():
    root=service.ROOT;binary=root/'analysis/live-api/AscetSourceEval.exe'
    sources=['AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs']
    resources=['bde_structure_read.st','bde_structure_edit.st','bde_session_guard.st','bde_recovery_status.st','bde_recovery_release.st','bde_source_eval.st']
    compiler=Path(os.environ.get('WINDIR','C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll=Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.run_process([str(compiler),'/nologo','/platform:x86','/define:BDE_SOURCE_EVAL','/main:AscetStructureSession',
        f'/r:{dll}','/r:System.Web.Extensions.dll',f'/out:{binary}',
        *[f'/resource:{root/"scripts"/p},{p}' for p in resources],*[str(root/'scripts'/p) for p in sources]],30,build_step=True)
    return binary


class SourceAdapter(NativeStructureAdapter):
    build=staticmethod(build)
    def injection(self,action,token):return self._exchange({'cmd':'source_eval','action':action,'token':token})


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    raw=json.loads(a.reference.read_text(encoding='utf-8'))
    assert raw['oid']=='040ts00000001qg714f06gl6l0bgk'
    domain={'session':str(a.output.resolve()),'process_epoch':raw['ascet_process_epoch'],'database':raw['database'],'oid':raw['oid']}
    result={'passed':False,'domain':domain,'trials':[],'injection_pending':None,
        'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
            if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    try:
        with service.live_lock(),SourceAdapter(raw['component']) as adapter:
            baseline=adapter.observe_public(domain);result['baseline']=baseline;save()
            for trial in range(3):
                row={'trial':trial,'passed':False};result['trials'].append(row);token=f'source-{trial}'
                before=adapter.observe(domain,[])
                assert adapter.observe(domain,[])==before,'Unchanged graph must preserve generation and refs'
                node=next(r for r in before['entries'] if r['kind']=='node')
                operation,args,local=plan({'structure':before},{'op':'move_node','target':'Main/'+node['ref'],'position':[500,500]})
                request={'domain':domain,'request_id':token,'component':raw['component'],'diagram':'Main',
                    'operation':operation,'arguments':args,'expect':fingerprint(local)}
                result['injection_pending']=token;save()
                try:
                    row['injection']=adapter.injection('mutate',token);save()
                    assert row['injection']['deep_detected'] and row['injection']['old_shallow_equals']
                    changed=adapter.observe(domain,[]);row['generation_before']=before['generation'];row['generation_after']=changed['generation']
                    assert changed['generation']>before['generation']
                    rejected=StructureJournal(a.output/'journal').execute(request,adapter,nullcontext)
                    row['rejected']=rejected;assert rejected['status']=='conflict' and rejected['setter_called'] is False
                finally:
                    row['restored']=adapter.injection('restore',token)
                    result['injection_pending']=None;save()
                assert adapter.observe_public(domain)==baseline
                restored=adapter.observe(domain,[]);assert adapter.observe(domain,[])==restored
                row['passed']=True;save()
            result['passed']=True
    except Exception as error:result['error']=repr(error);result['traceback']=traceback.format_exc()
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','injection_pending')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
