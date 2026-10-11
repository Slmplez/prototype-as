"""Research-only cleanup of initial-value-01 after missing sequence activator read failure."""
import json
import argparse
import os
from pathlib import Path
import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import native_projection,compare


def build():
    root=service.ROOT;binary=root/'analysis/live-api/AscetCreationRepair.exe'
    sources=['AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs']
    resources=['bde_structure_read.st','bde_structure_edit.st','bde_session_guard.st','bde_recovery_status.st','bde_recovery_release.st']
    service.run_process([os.environ.get('WINDIR','C:/Windows')+'/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo','/platform:x86','/define:BDE_SOURCE_EVAL','/main:AscetStructureSession','/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll','/r:System.Web.Extensions.dll',f'/out:{binary}',
        *[f'/resource:{root/"scripts"/name},{name}' for name in resources],f'/resource:{root}/scripts/bde_creation_repair.st,bde_source_eval.st',
        *[str(root/'scripts'/name) for name in sources]],30,build_step=True)
    return binary


class Adapter(NativeStructureAdapter):build=staticmethod(build)


if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--trial',default='bde-initial-value-01',choices=['bde-initial-value-01','bde-initial-value-04']);a=parser.parse_args()
    folder=service.ROOT/'analysis/bde-experiments/2026-10-01'/a.trial;output=folder/'research-cleanup.json'
    if output.exists():raise RuntimeError('Inspect existing cleanup before retry')
    result=json.loads((folder/'result.json').read_text(encoding='utf-8'));token=result['outstanding'][0]
    log=StructureJournal(folder/'store/edits');request=log.read(token)[0]['payload'];domain=request['domain']
    failed_name='EvalCatalog_variable' if a.trial=='bde-initial-value-01' else 'EvalCatalog_receive_message'
    call=next(c for c in result['calls'] if c['tool']=='bd_edit' and c['args']['operations'][0]['name']==failed_name)
    baseline=json.loads((folder/'store/snapshots'/(call['args']['snapshot']+'.json')).read_text(encoding='utf-8'))['structure']
    marker=pending.pending_path(domain);saved_marker=json.loads(marker.read_text(encoding='utf-8'))
    assert saved_marker['native_token']==token
    evidence={'passed':False,'change_id':token,'quarantine_retained':True}
    def save():output.write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    def models(state):return {r['ref']:r for r in state if r['kind']=='model'}
    with service.live_lock(),Adapter(request['component']) as adapter:
        state=adapter.observe(domain,[]);evidence['before_cleanup']=state
        model=next(r for r in state['entries'] if r.get('name')==failed_name)
        removed={model['ref']}
        for node in state['entries']:
            if node.get('model_ref')==model['ref']:removed.update([node['ref'],*node['pins']])
        reduced=[r for r in state['entries'] if r['ref'] not in removed]
        assert native_projection(reduced)==native_projection(baseline['entries']) and models(reduced)==models(baseline['entries'])
        evidence['preexisting_unchanged']=True;save()
        action='remove_failed_initial_variable' if a.trial=='bde-initial-value-01' else 'remove_failed_initial_message'
        evidence['cleanup']=adapter._exchange({'cmd':'source_eval','action':action,'token':token});save()
        after=adapter.observe(domain,[]);evidence['after_cleanup']=after
        evidence['baseline_restored']=native_projection(after['entries'])==native_projection(baseline['entries']) and models(after['entries'])==models(baseline['entries'])
        evidence['public']=compare(after['entries'],adapter.observe_public(domain))
        evidence['passed']=evidence['baseline_restored'] and evidence['public']['passed'];save()
        if evidence['passed']:
            assert json.loads(marker.read_text(encoding='utf-8'))==saved_marker
            pending.confirmed(marker);evidence['quarantine_retained']=False;save()
    print(json.dumps({'passed':evidence['passed'],'quarantine_retained':evidence['quarantine_retained']}))
