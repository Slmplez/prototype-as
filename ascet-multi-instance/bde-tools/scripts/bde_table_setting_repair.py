"""Inspect/recover only the recorded table-settings-01 no-effect interpolation."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_tool_client import ToolClient
from bde_public_oracle import compare


def build():
    root=service.ROOT;binary=root/'analysis/live-api/AscetTableSettingRepair.exe'
    resources=['bde_structure_read.st','bde_structure_edit.st','bde_session_guard.st','bde_recovery_status.st','bde_recovery_release.st']
    service.run_process([os.environ.get('WINDIR','C:/Windows')+'/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo','/platform:x86','/define:BDE_SOURCE_EVAL','/main:AscetStructureSession',
        '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll','/r:System.Web.Extensions.dll',f'/out:{binary}',
        *[f'/resource:{root/"scripts"/name},{name}' for name in resources],
        f'/resource:{root}/scripts/bde_table_setting_repair.st,bde_source_eval.st',
        *[str(root/'scripts'/name) for name in ('AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs')]],30,build_step=True)
    return binary


class Adapter(NativeStructureAdapter):build=staticmethod(build)


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--restore',action='store_true');a=p.parse_args()
    folder=service.ROOT/'analysis/bde-experiments/2026-10-01/bde-table-settings-01'
    output=folder/('research-cleanup.json' if a.restore else 'research-inspection.json')
    if output.exists():raise RuntimeError('Inspect existing evidence; do not replay')
    result=json.loads((folder/'result.json').read_text(encoding='utf-8'));assert len(result['outstanding'])==3
    token=result['outstanding'][-1];request=StructureJournal(folder/'store/edits').read(token)[0]['payload'];domain=request['domain']
    service.STORE=folder/'store';evidence={'passed':False,'change_id':token,'calls':[],
        'scope':'exact no-effect interpolation only; original failed result retained',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (Path(__file__),service.ROOT/'scripts/bde_table_setting_repair.st')}}
    def save():output.write_text(json.dumps(evidence,indent=2),encoding='utf-8')
    save()
    with service.live_lock(),Adapter(request['component']) as adapter:
        adapter._ensure_open(domain)
        evidence['inspection']=adapter._exchange({'cmd':'source_eval','action':'inspect_table_setting','token':token});save()
        native=adapter.observe(domain,request['arguments'][0]);evidence['before']=native
        journal=StructureJournal(folder/'store/edits').read(token)
        baseline=next(e['payload']['before'] for e in journal if e['kind']=='prepared')
        assert native==baseline,'Actual local before must still equal journal before'
        assert compare(adapter.observe(domain,[])['entries'],adapter.observe_public(domain))['passed']
        if a.restore:evidence['recovery']=adapter._exchange({'cmd':'source_eval','action':'restore_table_setting','token':token});save()
    if a.restore:
        client=ToolClient(folder,domain['session'],lambda c:(evidence['calls'].append(c),save()))
        # Record a normal inverse receipt for the already-proven no-effect operation.
        for i,change in enumerate(reversed(result['outstanding'])):
            _,receipt=client.value('bd_revert',{'change_id':change,'request_id':'research-inverse-'+str(i)})
            assert receipt['status']=='verified_local';save()
        create=next(c for c in result['calls'] if c['tool']=='bd_edit' and c['args']['request_id']=='oned_table-cont-0-create')
        expected=json.loads((folder/'store/snapshots'/(create['args']['snapshot']+'.json')).read_text(encoding='utf-8'))['structure']
        with service.live_lock(),NativeStructureAdapter(request['component']) as adapter:
            actual=adapter.observe(domain,[]);models=adapter.observe_models(domain)
            evidence['final_native']=actual;evidence['final_models']=models
            assert actual==expected and models==[]
            evidence['final_public']=compare(actual['entries'],adapter.observe_public(domain));assert evidence['final_public']['passed']
    evidence['passed']=True;save();print(json.dumps({'passed':True,'inspection':evidence['inspection']}))


if __name__=='__main__':main()
