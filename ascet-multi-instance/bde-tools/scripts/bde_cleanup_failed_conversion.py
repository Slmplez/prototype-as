"""Research-only cleanup for the recorded conversion serialization failure.

Keeps the original quarantine throughout cleanup. Never upgrades the failed
create/inverse to a pass; removes only the unique unconnected conversion whose
addition exactly explains the independent public graph difference.
"""
import argparse
from contextlib import nullcontext
import json
from pathlib import Path
import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan
from bd_edit_journal import fingerprint


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--trial',type=Path,required=True)
    args=parser.parse_args()
    original=json.loads((args.trial/'result.json').read_text(encoding='utf-8'))
    assert original['component'].startswith('BDE_Tool_Experiments\\Trial_')
    assert original['operation']['kind']=='operator' and original['operation']['name'] in ('limit','wraparound')
    assert original['edit']['status']=='outcome_unknown' and 'Unsupported structural value' in original['edit']['error']
    domain=original['domain'];token=original['edit']['change_id'];marker_path=pending.pending_path(domain)
    marker=json.loads(marker_path.read_text())
    assert marker['domain']==domain and marker['native_token']==token and marker['command']=='apply'
    output=args.trial/'research-cleanup.json'
    if output.exists():raise ValueError('Inspect existing cleanup evidence; do not replay')
    evidence={'original_change':token,'passed':False,'quarantine_retained':True}
    def save():output.write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    class CleanupAdapter(NativeStructureAdapter):
        def prepare(self,d,t,op,arguments):
            assert op=='delete_node' and arguments[1]==evidence['created_ref']
            assert json.loads(marker_path.read_text())==marker
            self._ensure_open(d)
            return self._exchange({'cmd':'prepare','token':t,'operation':op,'arguments':arguments})
        def _mutate(self,command,t):
            assert command=='apply' and json.loads(marker_path.read_text())==marker
            return self._exchange({'cmd':command,'token':t})
    save()
    with service.live_lock(),CleanupAdapter(original['component']) as adapter:
        native=adapter.observe(domain,[]);public=adapter.observe_public(domain);models=adapter.observe_models(domain)
        oldids={n['id'] for n in original['public_before']['nodes']}
        added=[n for n in public['nodes'] if n['id'] not in oldids]
        assert len(added)==1 and added[0]['op']=='conversion'
        ref='n'+str(added[0]['id']);node=next(n for n in native['entries'] if n['ref']==ref)
        assert node['anchor']==original['operation']['position'] and node['conversion_type'] in ('limit','wrapAround')
        assert not any(refid in (e['source'],e['target']) for e in native['entries'] if e['kind']=='edge' for refid in node['pins'])
        reduced={**public,'nodes':[n for n in public['nodes'] if n['id'] in oldids]}
        assert reduced==original['public_before'] and models==original['models_before']
        evidence.update(created_ref=ref,public_before=public,native_before=native,preexisting_unchanged=True);save()
        op,arguments,before=plan({'structure':native},{'op':'delete_node','target':'Main/'+ref})
        request={'domain':domain,'component':original['component'],'diagram':'Main','request_id':'research-cleanup-conversion',
                 'operation':op,'arguments':arguments,'expect':fingerprint(before)}
        evidence['cleanup']=StructureJournal(args.trial/'cleanup-journal').execute(request,adapter,nullcontext);save()
        assert evidence['cleanup']['status']=='applied_observed'
        evidence['public_after']=adapter.observe_public(domain);evidence['models_after']=adapter.observe_models(domain)
        assert evidence['public_after']==original['public_before'] and evidence['models_after']==original['models_before']
        evidence['passed']=True;save()
        pending.confirmed(marker_path)
        evidence['quarantine_retained']=False;save()
    print('Independent baseline restored; original failed journal retained.')


if __name__=='__main__':main()
