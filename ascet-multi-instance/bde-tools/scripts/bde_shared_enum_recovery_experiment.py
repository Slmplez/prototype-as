"""Discard real shared-enum apply/inverse replies, then reconcile without replay.

Fault dispatch uses the Python backend for a controlled adapter exception.
Reconciliation, replay and diff use actual Doge Tool.call. This is not a host
crash, partial native execution, wire truncation or runtime message test.
"""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
import bd_structural_tools
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bde_lost_reply_experiment import LoseReply
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--repeats',type=int,choices=(1,3),default=3)
    parser.add_argument('--components',type=int,choices=(1,3),default=3)
    args=parser.parse_args()
    args.output.mkdir(parents=True,exist_ok=False)
    service.STORE=args.output/'store'
    session=str(args.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES']='1'
    components=['BDE_Tool_Experiments\\Trial_data_20260930_012339',
        'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955',
        'BDE_Tool_Experiments\\Trial_Messages_20260930_132738'][:args.components]
    result={'passed':False,'calls':[],'metrics':[],'cases':[],'outstanding':[],
        'business_writes':False,'fault':'adapter exception after real native completion',
        'not_verified':['OS crash','partial native execution','external library changes during quarantine','cross-restart recovery']}
    sources=[p for p in (service.ROOT/'scripts').glob('*') if p.suffix in ('.py','.cs','.st','.json')
        and p.name.startswith(('bd','AscetStructure','AscetRead','AscetBde','format_bd'))]
    sources+=list((service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest']={str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in sources}
    domains={};snapshots={};baselines={}
    LoseReply.native_mutations=[]
    def save():
        (args.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(row):
        result['calls'].append(row);save()
    client=ToolClient(args.output,session,record)

    def call(tool,values,fault=None,error=False):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT']=str(wire['port'])
            if fault:
                LoseReply.lose_command=fault
                with patch.dict(os.environ,{'ASCET_BD_PROBE_PORT':str(wire['port'])}), \
                        patch.object(bd_structural_tools,'NativeStructureAdapter',LoseReply):
                    response=service.handle(tool,values,session)
                    record({'tool':tool,'args':values,'response':response,'dispatch':'Python backend fault injection'})
                    first,body=response['content'].split('\n\n',1);head=meta=json.loads(first)
                    while meta['page']['has_more']:
                        page=service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
                        part,text=page['content'].split('\n\n',1);body+=text;meta=json.loads(part)
                    failed=bool(response.get('is_error'))
            else:
                head,body,failed=client.call(tool,values)
        result['metrics'].append({'tool':tool,'fault':fault,'request_wire':wire['request'].result(),
            'response_wire':wire['response'].result(),'errors':wire['errors']});save()
        assert failed==error,body
        return head,json.loads(body)

    def read(component):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT']=str(wire['port'])
            head,body,error=client.call('bd_read',{'component':component,'view':'structure'})
        assert not error,body
        raw=service.load_record(head['snapshot'],'s_','snapshots')
        domains[component]={'session':session,'database':raw['database'],'oid':raw['oid'],'process_epoch':raw['ascet_process_epoch']}
        snapshots[component]=head['snapshot']
        return raw

    def observe(component,name=None):
        with service.live_lock(),NativeStructureAdapter(component) as adapter:
            value={'native':adapter.observe(domains[component],[])['entries'],
                'tree':adapter._exchange({'cmd':'observe_public_tree'}),'models':adapter.observe_models(domains[component])}
            if name:value['enum']=adapter._exchange({'cmd':'observe_enum','name':name})
        return value

    def same(a,b):
        return a['native']==b['native'] and encoded(a['models'])==encoded(b['models']) and set(a['tree'])==set(b['tree']) \
            and all(public_projection(a['tree'][s])==public_projection(b['tree'][s]) for s in a['tree'])

    try:
        for component in components:
            read(component);baselines[component]=observe(component)
        for ci,component in enumerate(components):
            for trial in range(args.repeats):
                name='EvalLostEnum_'+service.digest(session)[:8]+'_'+str(ci)+'_'+str(trial)
                tag=str(ci)+'-'+str(trial)
                case={'component':component,'enum_name':name,'trial':trial,'passed':False}
                result['cases'].append(case);save()
                case['before']=observe(component,name)
                assert case['before']['enum']=={'status':'absent'}
                operation={'op':'create_block','kind':'enumeration','name':'EvalLostEnumVariable',
                    'new_definition':{'name':name,'items':['Off','On','Fault']},'initial_value':'On',
                    'position':[300,400] if ci==0 else [2400,2000]}
                intent={'snapshot':snapshots[component],'request_id':tag+'-apply','operations':[operation]}
                _,unknown=call('bd_edit',intent,fault='apply',error=True)
                case['unknown_apply']=unknown
                result['outstanding'].append({'component':component,'change_id':unknown['change_id'],'inverse':None});save()
                assert unknown['status']=='outcome_unknown'
                _,replay=call('bd_edit',intent,error=True)
                assert replay==unknown and result['metrics'][-1]['request_wire']['frames']==0
                _,reconciled=call('bd_inspect',{'query':'recovery','change_id':unknown['change_id'],'reconcile':True})
                created=reconciled['receipt'];case['reconciled_apply']=reconciled
                assert reconciled['reconciled'] and created['status']=='applied_observed'
                assert created['additional_ASCET_reads']==0
                actual=observe(component,name);case['after']=actual
                expected={'kind':'enumeration_definition','path':actual['enum']['path'],'oid':actual['enum']['oid'],
                    'before':None,'after':{'items':actual['enum']['items']}}
                assert actual['enum']['items']==operation['new_definition']['items'] and created['library_effects']==[expected]
                _,diff=call('bd_diff',{'change_id':unknown['change_id']})
                assert diff['library_effects']==[expected]
                assert all(item['qualified_ref']=='Main/'+item['ref'] for item in diff['differences'])
                assert [{k:v for k,v in item.items() if k!='qualified_ref'}
                    for item in diff['differences']]==created['differences']
                assert result['metrics'][-1]['request_wire']['frames']==0
                inverse_intent={'change_id':unknown['change_id'],'request_id':tag+'-inverse'}
                _,inverse=call('bd_revert',inverse_intent,fault='revert',error=True)
                case['unknown_inverse']=inverse;result['outstanding'][-1]['inverse']=inverse['change_id'];save()
                assert inverse['status']=='outcome_unknown'
                _,inverse_replay=call('bd_revert',inverse_intent,error=True)
                assert inverse_replay==inverse and result['metrics'][-1]['request_wire']['frames']==0
                _,restored=call('bd_inspect',{'query':'recovery','change_id':inverse['change_id'],'reconcile':True})
                case['reconciled_inverse']=restored
                assert restored['reconciled'] and restored['receipt']['status']=='verified_local'
                assert restored['receipt']['library_effects']==[{**expected,'before':expected['after'],'after':None}]
                _,repeat=call('bd_inspect',{'query':'recovery','change_id':inverse['change_id'],'reconcile':True})
                assert repeat['reconciled'] and result['metrics'][-1]['request_wire']['frames']==0
                current=observe(component,name);case['restored']=current
                assert same(current,case['before']) and current['enum']=={'status':'absent'}
                snapshots[component]=restored['receipt']['after_snapshot']
                result['outstanding'].pop();case['passed']=True;save()
        result['baseline_restored']=all(same(observe(c),baselines[c]) for c in components)
        assert result['baseline_restored'] and LoseReply.native_mutations==['apply','revert']*(len(components)*args.repeats)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc()
    finally:
        try:
            for item in list(reversed(result['outstanding'])):
                if item['inverse']:
                    _,checked=call('bd_inspect',{'query':'recovery','change_id':item['inverse'],'reconcile':True})
                    assert checked['receipt']['status']=='verified_local'
                else:
                    _,checked=call('bd_inspect',{'query':'recovery','change_id':item['change_id'],'reconcile':True})
                    assert checked['receipt']['status']=='applied_observed'
                    _,restored=call('bd_revert',{'change_id':item['change_id'],'request_id':'cleanup-'+item['change_id']})
                    assert restored['status']=='verified_local'
                result['outstanding'].remove(item);save()
            if baselines:result['baseline_restored']=all(same(observe(c),baselines[c]) for c in baselines)
        except Exception:
            result['cleanup_error']=traceback.format_exc()
        result['native_mutations']=LoseReply.native_mutations
        result['source_changes_during_run']=[name for name,digest in result['source_manifest'].items()
            if service.digest((service.ROOT/name).read_bytes())!=digest]
        result['passed']=result['passed'] and result.get('baseline_restored',False) and not result['outstanding'] and not result['source_changes_during_run']
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','baseline_restored','outstanding','error','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
