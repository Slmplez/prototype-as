"""Build a conservative functional evidence ledger. Partial studies never pass gates.

The ledger intentionally keeps case verdicts separate from individual successful
experiments. A missing required scenario, version binding, fixture or visual
proof remains not_run/blocked. This is an evidence assembler, not a live runner.
"""
import argparse
import hashlib
import json
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]


def evidence(path):
    resolved=(ROOT/path).resolve()
    if not resolved.is_relative_to(ROOT):raise ValueError('Evidence must be within workspace')
    if not resolved.is_file():return {'artifact':path,'state':'missing'}
    raw=resolved.read_bytes();value=json.loads(raw)
    return {'artifact':path,'sha256':hashlib.sha256(raw).hexdigest(),'state':'recorded',
            'experiment_passed':value.get('passed') if isinstance(value,dict) else None,
            'summary':value.get('summary') if isinstance(value,dict) else None}


def assemble(policy, coverage):
    required={c for g in policy['groups'].values() for c in g.get('cases',g.get('required_cases',[]))}
    reporting={c for g in policy['groups'].values() for c in g.get('reporting_cases',[])}-required
    known=required|reporting
    if set(coverage)-known:raise ValueError('Unknown case id')
    rows=[]
    for case in sorted(known):
        claim=coverage.get(case,{})
        # Full acceptance needs dedicated per-case assertions, not a checkbox
        # beside a collection of successful but narrower experiments.
        if claim.get('status')=='pass':raise ValueError('Partial evidence ledger cannot grant gate passes')
        items=[evidence(p) for p in claim.get('artifacts',[])]
        rows.append({'case_id':case,'status':claim.get('status','not_run'),
                     'required_for_delivery':case in required,
                     'missing_required':claim.get('missing_required',['No complete case verdict from an acceptance runner']),
                     'evidence':items})
    counts=lambda selected:{status:sum(row['status']==status for row in selected)
                            for status in ('pass','fail','not_run','blocked','not_applicable')}
    return {'policy':policy['id'],'complete':False,'levels':{k:'not_passed' for k in policy['levels']},
            'scope':'ordinary BDE including Module/Class/hierarchy flows; individual experiments are not full case passes',
            'required_case_count':len(required),'reporting_case_count':len(reporting),
            'delivery_statuses':counts([row for row in rows if row['required_for_delivery']]),
            'reporting_statuses':counts([row for row in rows if not row['required_for_delivery']]),
            'performance_limits_block_delivery':policy.get('performance_limits_block_delivery',True),
            'cases':rows}


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--coverage',type=Path,default=ROOT/'docs/bde-tools-eval-evidence.json')
    p.add_argument('--output',type=Path,required=True);a=p.parse_args()
    policy=json.loads((ROOT/'docs/bde-tools-eval-policy.json').read_text(encoding='utf-8'))
    result=assemble(policy,json.loads(a.coverage.read_text(encoding='utf-8')))
    a.output.mkdir(parents=True,exist_ok=False)
    (a.output/'report.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    lines=['# BDE eval evidence ledger','','Full functional delivery / L0–L3 acceptance: not passed.',
           '', 'Required functional cases: '+str(result['required_case_count'])+
           '; reporting-only cases: '+str(result['reporting_case_count'])+'.',
           'Performance limits block delivery: '+str(result['performance_limits_block_delivery'])+'.', '',
           '| Case | Required for delivery | Status | Missing evidence / limits |','|---|---|---|---|']
    for row in result['cases']:
        lines.append('| '+row['case_id']+' | '+('yes' if row['required_for_delivery'] else 'report only')+
                     ' | '+row['status']+' | '+'; '.join(row['missing_required'])+' |')
    (a.output/'report.md').write_text('\n'.join(lines)+'\n',encoding='utf-8')
    print(json.dumps({'complete':False,'case_count':len(result['cases']),'output':str(a.output)}))


if __name__=='__main__':main()
