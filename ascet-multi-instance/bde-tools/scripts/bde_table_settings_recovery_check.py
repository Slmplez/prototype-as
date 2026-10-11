"""Independent baseline proof after settings-03's normally reverted failure."""
import json
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import compare


def main():
    folder=service.ROOT/'analysis/bde-experiments/2026-10-01/bde-table-settings-03'
    output=folder/'recovery-verification.json'
    if output.exists():raise RuntimeError('Inspect existing evidence; do not replay')
    result=json.loads((folder/'result.json').read_text(encoding='utf-8'))
    assert not result['passed'] and not result['outstanding'] and not result.get('cleanup_error')
    key=result['cases'][-1]['key']+'-create'
    call=next(c for c in result['calls'] if c['tool']=='bd_edit' and c['args']['request_id']==key)
    baseline=service.load_record(call['args']['snapshot'],'s_','snapshots') if service.STORE==folder/'store' else json.loads(
        (folder/'store/snapshots'/(call['args']['snapshot']+'.json')).read_text(encoding='utf-8'))
    component=baseline['component'];assert component=='BDE_Tool_Experiments\\Trial_data_20260930_012339'
    assert not any(r['kind']=='model' for r in baseline['structure']['entries'])
    domain={'session':baseline['session'],'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
    service.STORE=folder/'store'
    evidence={'passed':False,'original_failure_preserved':True,
        'source_manifest':{str(Path(__file__).relative_to(service.ROOT)):service.digest(Path(__file__).read_bytes())}}
    with service.live_lock(),NativeStructureAdapter(component) as adapter:
        evidence['native']=adapter.observe(domain,[]);evidence['models']=adapter.observe_models(domain)
        evidence['public']=compare(evidence['native']['entries'],adapter.observe_public(domain))
        evidence['passed']=evidence['native']==baseline['structure'] and evidence['models']==[] and evidence['public']['passed']
    output.write_text(json.dumps(evidence,indent=2),encoding='utf-8')
    print(json.dumps({'passed':evidence['passed']}));return 0 if evidence['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
