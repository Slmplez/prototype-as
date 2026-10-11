"""Real native group apply completion lost at the adapter boundary; no replay."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
import bd_group_tools
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import public_projection


class LoseReply(NativeStructureAdapter):
    lose_component = None
    lost = False
    mutations = []

    def _exchange(self, request):
        result = super()._exchange(request)
        if request['cmd'] in ('apply','revert'):
            self.mutations.append({'component':self.component,'cmd':request['cmd'],'token':request.get('token')})
        if request['cmd']=='apply' and self.component==self.lose_component and not self.lost:
            type(self).lost=True
            raise ConnectionError('EVAL: real native apply completed; adapter response deliberately discarded')
        return result


def equivalent(left, right):
    return all(left[name]['native']==right[name]['native'] and left[name]['models']==right[name]['models']
               and set(left[name]['public'])==set(right[name]['public'])
               and all(public_projection(left[name]['public'][scope])==public_projection(right[name]['public'][scope])
                       for scope in left[name]['public']) for name in left)


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component',action='append',required=True)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if len(args.component)!=3 or len(set(args.component))!=3:
        parser.error('Three distinct sandbox components required')
    args.output.mkdir(parents=True,exist_ok=False)
    service.STORE=args.output/'store'
    result={'passed':False,'calls':[],'metrics':[],'rounds':[],'outstanding':[],'baseline_restored':False,
            'fault':'controlled adapter exception after a real native apply reply; not a wire truncation or host crash',
            'not_verified':['native partial execution','OS crash','group inverse lost reply','dependent resources']}
    sources=[p for p in (service.ROOT/'scripts').glob('*') if p.suffix in ('.py','.cs','.st','.json')
             and p.name.startswith(('bd','AscetStructure'))]
    sources+=list((service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest']={str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in sources}
    def save():
        (args.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(call):
        result['calls'].append(call);save()
    client=ToolClient(args.output,'group-recovery-'+args.output.name,record)
    domains={}
    baseline=None
    def call(tool,arguments,error=False,direct=False):
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT']=str(traffic['port'])
            if direct:
                with patch.dict(os.environ,client.env),patch.object(bd_group_tools,'NativeStructureAdapter',LoseReply):
                    response=service.handle(tool,arguments,client.session)
                head=json.loads(response['content'].split('\n\n',1)[0])
                from bd_group_recovery import document
                value=document(response,client.session)
                failed=bool(response.get('is_error'))
                record({'tool':tool,'args':arguments,'response':response,'invocation':'direct backend fault injection'})
            else:
                head,body,failed=client.call(tool,arguments)
                value=body if tool=='bd_read' else json.loads(body)
        metric={'tool':tool,'direct_fault_backend':direct,'frames':traffic['request'].result()['frames'],
                'connections':traffic['connections'],'proxy_errors':traffic['errors']}
        result['metrics'].append(metric)
        assert failed==error and not traffic['errors'], value
        return head,value,metric
    def observe():
        rows={}
        with service.live_lock():
            for component in args.component:
                with NativeStructureAdapter(component) as adapter:
                    rows[component]={'native':adapter.observe(domains[component],[]),
                        'public':adapter._exchange({'cmd':'observe_public_tree'}),'models':adapter.observe_models(domains[component])}
        return rows
    def read():
        snapshots=[]
        for component in args.component:
            head,_,_=call('bd_read',{'component':component,'view':'structure'})
            record=service.load_record(head['snapshot'],'s_','snapshots')
            domains[component]={'session':client.session,'database':record['database'],'oid':record['oid'],
                                'process_epoch':record['ascet_process_epoch']}
            snapshots.append(head['snapshot'])
        return snapshots
    try:
        save();snapshots=read();baseline=observe()
        (args.output/'baseline.json').write_text(json.dumps(baseline,indent=2),encoding='utf-8')
        for repeat in range(3):
            request={'request_id':'lost-'+str(repeat),'steps':[{'snapshot':sid,'operations':[{
                'op':'create_block','kind':'literal','name':str(41+index),'position':[2020,1600]}]}
                for index,sid in enumerate(snapshots)]}
            row={};result['rounds'].append(row)
            LoseReply.lose_component=args.component[1];LoseReply.lost=False;LoseReply.mutations=[]
            _,unknown,_=call('bd_edit',request,True,True)
            result['outstanding'].append(unknown['change_id']);save()
            assert unknown['status']=='outcome_unknown' and len(unknown['steps'])==2
            assert [item['component'] for item in LoseReply.mutations]==args.component[:2]
            _,replay,metric=call('bd_edit',request,True)
            assert replay==unknown and metric['frames']==metric['connections']==0
            _,recovery,_=call('bd_inspect',{'query':'recovery','change_id':unknown['change_id'],'reconcile':True})
            assert recovery['reconciled'] and recovery['model_setters_called']==0 and recovery['continued_steps'] is False
            assert recovery['receipt']['status']=='partial' and len(recovery['receipt']['steps'])==2
            after=observe()
            assert equivalent({args.component[2]:after[args.component[2]]},{args.component[2]:baseline[args.component[2]]})
            _,again,metric=call('bd_inspect',{'query':'recovery','change_id':unknown['change_id'],'reconcile':True})
            assert again['receipt']==recovery['receipt'] and metric['frames']==metric['connections']==0
            _,delta,metric=call('bd_diff',{'change_id':unknown['change_id']})
            assert len(delta['resource_differences'])==2 and metric['frames']==metric['connections']==0
            for index,item in enumerate(delta['resource_differences']):
                component=args.component[index]
                expected={r['ref']:r for r in baseline[component]['native']['entries']}
                for change in item['differences']:
                    assert expected.get(change['ref'])==change['before']
                    if change['after'] is None:expected.pop(change['ref'])
                    else:expected[change['ref']]=change['after']
                assert expected=={r['ref']:r for r in after[component]['native']['entries']}
            _,inverse,_=call('bd_revert',{'change_id':unknown['change_id'],'request_id':'undo-'+str(repeat)})
            assert inverse['status']=='reverted' and len(inverse['steps'])==2
            assert equivalent(observe(),baseline)
            result['outstanding'].remove(unknown['change_id'])
            row.update(passed=True,group=unknown['change_id'],inverse=inverse['change_id'],
                       native_apply_calls=LoseReply.mutations,third_resource_unchanged=True)
            snapshots=read();save()
        result['baseline_restored']=equivalent(observe(),baseline)
        result['passed']=result['baseline_restored'] and not result['outstanding']
    except Exception:
        result['error']=traceback.format_exc()
    finally:
        result['cleanup']=[]
        for token in list(reversed(result['outstanding'])):
            try:
                _,recovery,_=call('bd_inspect',{'query':'recovery','change_id':token,'reconcile':True})
                _,restored,_=call('bd_revert',{'change_id':token,'request_id':'cleanup-'+token[-16:]})
                result['cleanup'].append(restored)
                if restored['status']=='reverted':result['outstanding'].remove(token)
                else:break
            except Exception:
                result['cleanup_error']=traceback.format_exc();break
        if baseline is not None and not result['outstanding']:
            try:result['baseline_restored']=equivalent(observe(),baseline)
            except Exception:result['final_error']=traceback.format_exc()
        result['source_changes_during_run']=[name for name,sha in result['source_manifest'].items()
            if service.digest((service.ROOT/name).read_bytes())!=sha]
        if result['source_changes_during_run']:result['passed']=False
        save()
    print(json.dumps({key:result[key] for key in ('passed','baseline_restored','outstanding')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
