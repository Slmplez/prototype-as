"""One-off repair of the recorded sequence setter label bug, not an agent tool."""
import json
import os
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal


def build():
    root=service.ROOT;binary=root/'analysis/live-api/AscetSequenceRepair.exe'
    sources=['AscetStructureRead.cs','AscetStructureSession.cs','AscetStructureExperiment.cs']
    resources=['bde_structure_read.st','bde_structure_edit.st','bde_session_guard.st','bde_recovery_status.st','bde_recovery_release.st']
    service.run_process([os.environ.get('WINDIR','C:/Windows')+'/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo','/platform:x86','/define:BDE_SOURCE_EVAL','/main:AscetStructureSession','/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll','/r:System.Web.Extensions.dll',f'/out:{binary}',
        *[f'/resource:{root/"scripts"/name},{name}' for name in resources],f'/resource:{root}/scripts/bde_sequence_repair.st,bde_source_eval.st',
        *[str(root/'scripts'/name) for name in sources]],30,build_step=True)
    return binary


class Adapter(NativeStructureAdapter):build=staticmethod(build)


if __name__=='__main__':
    folder=service.ROOT/'analysis/bde-experiments/2026-10-01/bde-sequence-tool-01';output=folder/'research-cleanup.json'
    if output.exists():raise RuntimeError('Inspect existing cleanup before retry')
    result=json.loads((folder/'result.json').read_text(encoding='utf-8'));edit=result['cases'][0]['edit']
    log=StructureJournal(folder/'store/edits');events=log.read(edit['change_id']);request=events[0]['payload'];domain=request['domain']
    # Original complete snapshot prior to the edit, with stable native refs.
    call=next(c for c in result['calls'] if c['tool']=='bd_edit' and not c['args'].get('preview'))
    baseline=json.loads((folder/'store/snapshots'/(call['args']['snapshot']+'.json')).read_text(encoding='utf-8'))['structure']
    def normalize(state):
        from copy import deepcopy
        state=deepcopy(state)
        for row in state['entries']:
            if row.get('sequence'):row['sequence'].pop('label',None)
        return state
    inverse=next(json.loads(c['response']['content'].split('\n\n',1)[0]) for c in result['calls'] if c['tool']=='bd_revert')
    expected=next(e['payload']['after'] for e in log.read(inverse['change_id']) if e['kind']=='observed')
    evidence={'passed':False,'inverse':inverse['change_id']}
    with service.live_lock(),Adapter(request['component']) as adapter:
        # The first cleanup already checked the full failed-inverse scope and
        # restored the label, but incorrectly required StoreToCache to return
        # literal true (it returns its receiver). Finish that exact known repair.
        adapter._ensure_open(domain)
        evidence['repair']=adapter._exchange({'cmd':'source_eval','action':'restore_label','token':edit['change_id']})
        after=adapter.observe(domain,[]);evidence['full_native_restored']=normalize(after)==baseline
        evidence['public_after']=adapter.observe_public(domain)
        from bde_public_oracle import compare
        evidence['public_check']=compare(after['entries'],evidence['public_after'])
        evidence['passed']=evidence['full_native_restored'] and evidence['public_check']['passed']
    output.write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps({'passed':evidence['passed']}))
