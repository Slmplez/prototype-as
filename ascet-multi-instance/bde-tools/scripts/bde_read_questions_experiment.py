"""READ-03 deterministic retrieval through actual Doge tools against saved public getters.

This is a cached observation experiment, not a new live read or an LLM comprehension score.
Expected answers come from raw public API output, never bd_service.entities/build.
"""
import argparse
import json
from pathlib import Path
import shutil
import traceback
import bd_service as service
from bde_tool_client import ToolClient


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    source=service.ROOT/'analysis/bde-experiments/2026-10-01/doge-session-read-perf30-01/store'
    sid='s_7b0b618de8264bcc8b95dc6b91e90eef'
    raw_file=source/'raw'/(sid+'.json');snapshot_file=source/'snapshots'/(sid+'.json')
    raw=json.loads(raw_file.read_text(encoding='utf-8'));snapshot=json.loads(snapshot_file.read_text(encoding='utf-8'))
    assert snapshot['read_strategy']=='field_getters'
    service.STORE=a.output/'store';(service.STORE/'snapshots').mkdir(parents=True)
    shutil.copyfile(snapshot_file,service.STORE/'snapshots'/snapshot_file.name)
    result={'passed':False,'source_snapshot':sid,'raw_public_sha256':service.digest(raw_file.read_bytes()),
        'scope':'saved public-getter observation; actual Doge cached Tool.call; deterministic retrieval only',
        'live_ASCET_reads':0,'calls':[],'questions':[],
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in
            [Path(__file__),service.ROOT/'scripts/bd_service.py',service.ROOT/'scripts/bde_tool_client.py',service.ROOT/'Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts']}}
    def save():(a.output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(a.output,snapshot['session'],record)
    def call(tool,args):
        head,body,error=client.call(tool,{'snapshot':sid,**args});assert not error,body
        return head,body
    def inspect(ref,fields):
        _,body=call('bd_inspect',{'query':'fields','targets':[ref],'fields':fields})
        return json.loads(body)['fields']
    def question(name,expected,actual):
        result['questions'].append({'question':name,'expected':expected,'actual':actual,'passed':actual==expected});save()
        assert actual==expected,name
    try:
        graph=next(d['graph'] for d in raw['diagrams'] if d['name']=='Main')
        # First deliver the complete observation using every cursor.
        _,body=call('bd_read',{})
        assert body==snapshot['logic']
        question('All pages deliver the stored logic bytes',service.digest(snapshot['logic'].encode()),service.digest(body.encode()))
        _,body=call('bd_find',{'kind':'node','query':'calc/VxAct'})
        node=next(n for n in graph['nodes'] if n['id']==291)
        matches=[json.loads(line) for line in body.splitlines()]
        expected=[{'ref':'Main/n'+str(n['id']),'kind':'node','name':n['model']['name']} for n in graph['nodes'] if 'calc/vxact' in n.get('model',{}).get('name','').lower()]
        question('Find all same-name VxAct occurrences before choosing an exact ref',sorted(expected,key=lambda r:r['ref']),sorted(matches,key=lambda r:r['ref']))
        fields=inspect('Main/n291',['kind','model_oid'])
        question('Occurrence native kind and declaration identity',
            {'kind':node['kind'],'model_oid':node['model']['native_model']['oid_hex']},{k:v['value'] for k,v in fields.items()})
        pin=next(p for n in graph['nodes'] for p in n['pins'] if p['native_id']==267)
        question('Execution order and activator of pin 267',pin['sequence'],inspect('Main/n259.p267',['sequence'])['sequence']['value'])
        _,body=call('bd_find',{'kind':'edge','query':'->p271:'})
        refs=[json.loads(line)['ref'] for line in body.splitlines()]
        actual=[]
        for ref in refs:
            fields=inspect(ref,['input','output','type','multiplicity'])
            row={k:v['value'] for k,v in fields.items()}
            actual.extend([(row['output'],row['input'],row['type'])]*row['multiplicity'])
        expected=[(e['output']['native_id'],e['input']['native_id'],e['type']) for e in graph['edges'] if e['input']['native_id']==271]
        question('All incoming edges including multiplicity',sorted(expected),sorted(actual))
        definition=next(d for d in raw['definitions'] if d['path'].endswith('\\AEB_AxCtrlConfigFF_Modify'))
        method=next(m for m in definition['methods'] if m['name']=='AEB_AXCKiMassFreq')
        ref='definition:'+definition['oid']+'/method:'+method['name']
        question('Referenced library method body',method['code'],inspect(ref,['code'])['code']['value'])
        model=next(m for m in raw['model_elements'] if m['name']=='C_AEB_AXCKiModCtrlDev_table')
        _,body=call('bd_find',{'kind':'model','query':model['name']})
        rows=[json.loads(line) for line in body.splitlines()];assert len(rows)==1
        fields=inspect(rows[0]['ref'],['native_model','formula_bindings','effective_runtime_value'])
        question('Dependent formula text',model['native_model']['formula'],fields['native_model']['value']['formula'])
        expected=raw['default_formula_bindings'][model['native_model']['oid_hex']]
        question('Formal-to-actual binding identities',expected,{b['formal_oid_hex']:b['actual_oid_hex'] for b in fields['formula_bindings']['value']})
        question('Effective runtime value remains explicitly unknown',{'state':'not_collected'},fields['effective_runtime_value'])
        result['passed']=True
    except Exception:result['error']=traceback.format_exc()
    save();print(json.dumps({'passed':result['passed'],'questions':len(result['questions']),'error':result.get('error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
