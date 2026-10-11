"""Research cleanup for literal/operator chain fixtures after a failed inverse.

Only removes nodes proven created by this trial. All preexisting public graph
rows must match before cleanup. Does not reinterpret failed inverses as passes.
"""
import argparse
from contextlib import nullcontext
import json
from pathlib import Path
import bd_service as service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--trial',type=Path,required=True)
    args=parser.parse_args()
    result=json.loads((args.trial/'result.json').read_text(encoding='utf-8'))
    if not result['component'].startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Isolated fixture required')
    output=args.trial/'research-cleanup.json'
    if output.exists():
        raise ValueError('Existing cleanup evidence: inspect before retry')
    original=StructureJournal(args.trial/'store/edits')
    creates=[]
    for token in result['outstanding']:
        events=original.read(token)
        request=events[0]['payload']
        if request.get('operation')=='create_block':
            if request['arguments'][1] not in ('literal','operator'):
                raise ValueError('Research cleanup only literal/operator')
            creates.extend(d['after'] for d in original.receipt(token,events)['differences'] if d['before'] is None and d['after']['kind']=='node')
    ids={int(n['ref'][1:]) for n in creates}
    source=original.read(result['outstanding'][0])[0]['payload']
    domain={**source['domain'],'session':str(args.trial.resolve())+'/research-cleanup'}
    log=StructureJournal(args.trial/'cleanup-journal')
    evidence={'created_nodes':creates,'deletes':[]}
    def save():output.write_text(json.dumps(evidence,ensure_ascii=False,indent=2),encoding='utf-8')
    save()
    with service.live_lock(),NativeStructureAdapter(result['component']) as adapter:
        public=adapter.observe_public(domain)
        baseline={**public,'nodes':[n for n in public['nodes'] if n['id'] not in ids],
                  'edges':[e for e in public['edges'] if e['source']['owner'] not in ids and e['target']['owner'] not in ids]}
        evidence['preexisting_public_unchanged']=baseline==result['public_before'];save()
        if not evidence['preexisting_public_unchanged']:
            raise ValueError('Preexisting graph differs: no cleanup mutation allowed')
        for ident in sorted(ids):
            state=adapter.observe(domain,[])
            if not any(n['ref']=='n'+str(ident) for n in state['entries']):continue
            action,arguments,before=plan({'structure':state},{'op':'delete_node','target':'Main/n'+str(ident)})
            request={'domain':domain,'component':result['component'],'diagram':'Main','request_id':'cleanup_'+str(ident),
                     'operation':action,'arguments':arguments,'expect':fingerprint(before)}
            receipt=log.execute(request,adapter,nullcontext)
            evidence['deletes'].append(receipt);save()
            if receipt['status']!='applied_observed':raise ValueError('Cleanup failed; inspect journal')
        evidence['public_final']=adapter.observe_public(domain)
        evidence['public_restored']=evidence['public_final']==result['public_before'];save()
    print(json.dumps({'public_restored':evidence['public_restored']}))


if __name__=='__main__':main()
