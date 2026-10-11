"""Exact recovery for table-values-02 logical creation; retains original failure."""
import json
import os
from pathlib import Path
import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import native_projection, compare


def build():
    root=service.ROOT;binary=root/'analysis/live-api/AscetTableCreationRepair.exe'
    sources=['AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs']
    resources=['bde_structure_read.st','bde_structure_edit.st','bde_session_guard.st','bde_recovery_status.st','bde_recovery_release.st']
    service.run_process([os.environ.get('WINDIR','C:/Windows')+'/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo','/platform:x86','/define:BDE_SOURCE_EVAL','/main:AscetStructureSession',
        '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll','/r:System.Web.Extensions.dll',f'/out:{binary}',
        *[f'/resource:{root/"scripts"/name},{name}' for name in resources],
        f'/resource:{root}/scripts/bde_table_creation_repair.st,bde_source_eval.st',
        *[str(root/'scripts'/name) for name in sources]],30,build_step=True)
    return binary


class Adapter(NativeStructureAdapter):build=staticmethod(build)


if __name__=='__main__':
    folder=service.ROOT/'analysis/bde-experiments/2026-10-01/bde-table-values-02'
    output=folder/'research-cleanup.json'
    if output.exists():raise RuntimeError('Inspect existing recovery evidence; do not replay')
    result=json.loads((folder/'result.json').read_text(encoding='utf-8'))
    assert len(result['outstanding'])==1
    token=result['outstanding'][0]
    request=StructureJournal(folder/'store/edits').read(token)[0]['payload'];domain=request['domain']
    assert request['component']=='BDE_Tool_Experiments\\Trial_data_20260930_012339'
    call=next(c for c in result['calls'] if c['tool']=='bd_edit' and c['args']['request_id']=='oned_table-log-0-create')
    baseline=json.loads((folder/'store/snapshots'/(call['args']['snapshot']+'.json')).read_text(encoding='utf-8'))['structure']
    assert not any(r['kind']=='model' for r in baseline['entries'])
    marker=pending.pending_path(domain);saved_marker=json.loads(marker.read_text(encoding='utf-8'))
    assert saved_marker['native_token']==token
    evidence={'passed':False,'change_id':token,'quarantine_retained':True,
        'scope':'only recorded failed declaration; original failure and journal retained',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in
            (Path(__file__),service.ROOT/'scripts/bde_table_creation_repair.st')}}
    def save():output.write_text(json.dumps(evidence,indent=2),encoding='utf-8')
    save()
    with service.live_lock(),Adapter(request['component']) as adapter:
        adapter._ensure_open(domain)
        evidence['before']=adapter._exchange({'cmd':'source_eval','action':'inspect_failed_log_table','token':token})
        evidence['public_before']=adapter.observe_public(domain)
        assert compare(baseline['entries'],evidence['public_before'])['passed'];save()
        evidence['cleanup']=adapter._exchange({'cmd':'source_eval','action':'remove_failed_log_table','token':token});save()
        after=adapter.observe(domain,[]);evidence['after_cleanup']=after
        evidence['baseline_restored']=native_projection(after['entries'])==native_projection(baseline['entries'])
        evidence['models_after']=adapter.observe_models(domain);assert evidence['models_after']==[]
        evidence['public']=compare(after['entries'],adapter.observe_public(domain))
        evidence['passed']=evidence['baseline_restored'] and evidence['public']['passed'];save()
        if evidence['passed']:
            assert json.loads(marker.read_text(encoding='utf-8'))==saved_marker
            pending.confirmed(marker);evidence['quarantine_retained']=False;save()
    print(json.dumps({k:evidence[k] for k in ('passed','quarantine_retained')}))
