"""Real Doge typed/scope message create/connect/delete/diff/inverse acceptance."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import compare, public_projection


def equivalent(left, right):
    return (left['native'] == right['native'] and left['models'] == right['models']
            and set(left['public']) == set(right['public'])
            and all(public_projection(left['public'][scope]) == public_projection(right['public'][scope])
                    for scope in left['public']))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=range(1, 4), default=3)
    args = parser.parse_args()
    if not args.component.strip('\\').startswith('BDE_Tool_Experiments\\Trial_'):
        parser.error('Sandbox component required')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed':False,'calls':[],'metrics':[],'cases':[],'observations':[],
              'outstanding':[],'baseline_restored':False,'business_writes':False,
              'not_verified':['Project/runtime channels','message initial values','message rename/scope change',
                              'complete UI/Undo/lifecycle','cross-resource dependency recovery']}
    sources = [p for p in (service.ROOT / 'scripts').glob('*')
               if p.suffix in ('.py','.cs','.st','.json') and p.name.startswith(('bd','AscetStructure'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in sources}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output,'message-eval-' + args.output.name,record)
    domain = None
    baseline = None

    def call(tool, arguments, error=False):
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, failed = client.call(tool,arguments)
        metric = {'tool':tool,'frames':traffic['request'].result()['frames'],
                  'connections':traffic['connections'],'proxy_errors':traffic['errors']}
        result['metrics'].append(metric)
        assert failed == error and not traffic['errors'], body
        return head, body if tool == 'bd_read' else json.loads(body), metric

    def read():
        nonlocal domain
        head, _, _ = call('bd_read',{'component':args.component,'view':'structure'})
        snapshot = service.load_record(head['snapshot'],'s_','snapshots')
        domain = {'session':client.session,'database':snapshot['database'],'oid':snapshot['oid'],
                  'process_epoch':snapshot['ascet_process_epoch']}
        return head['snapshot']

    def observe(label):
        with service.live_lock(), NativeStructureAdapter(args.component) as adapter:
            observed = {'native':adapter.observe(domain,[]),'public':adapter._exchange({'cmd':'observe_public_tree'}),
                        'models':adapter.observe_models(domain)}
        result['observations'].append({'label':label,**observed})
        proof = compare(observed['native']['entries'], observed['public']['Main'])
        result['observations'][-1]['public_common_projection'] = proof
        save()
        assert proof['passed'], proof
        return observed

    def check_patch(before, after, receipt):
        entries = {r['ref']:r for r in before['native']['entries']}
        for change in receipt['differences']:
            assert entries.get(change['ref']) == change['before']
            if change['after'] is None:
                entries.pop(change['ref'])
            else:
                entries[change['ref']] = change['after']
        assert entries == {r['ref']:r for r in after['native']['entries']}
        assert receipt['after_snapshot'] and receipt['additional_ASCET_reads'] == 0

    def edit(sid, op, request, before):
        arguments = {'snapshot':sid,'request_id':request,'operations':[op]}
        _, preview, _ = call('bd_edit',{**arguments,'preview':True})
        assert preview['status'] == 'preview' and equivalent(observe(request + '-preview'),before)
        _, receipt, _ = call('bd_edit',arguments)
        result['outstanding'].append(receipt['change_id'])
        save()
        assert receipt['status'] == 'applied_observed', receipt
        after = observe(request)
        check_patch(before,after,receipt)
        _, diff, metric = call('bd_diff',{'change_id':receipt['change_id']})
        assert metric['frames'] == metric['connections'] == 0
        assert diff['differences'] == [{**r,'qualified_ref':'Main/' + r['ref']} for r in receipt['differences']]
        _, replay, metric = call('bd_edit',arguments)
        assert replay == receipt and metric['frames'] == metric['connections'] == 0
        return receipt['after_snapshot'], receipt, after

    def inverse(receipt, request, before):
        _, preview, _ = call('bd_revert',{'change_id':receipt['change_id'],'request_id':request + '-preview','preview':True})
        assert preview['status'] == 'preview' and equivalent(observe(request + '-preview'),before)
        _, restored, _ = call('bd_revert',{'change_id':receipt['change_id'],'request_id':request})
        assert restored['status'] == 'verified_local', restored
        result['outstanding'].remove(receipt['change_id'])
        after = observe(request)
        check_patch(before,after,restored)
        return restored['after_snapshot'], after

    def rows(sid):
        return service.load_record(sid,'s_','snapshots')['structure']['entries']

    try:
        save()
        sid = read()
        baseline = observe('baseline')
        sid, enum_receipt, seeded = edit(sid,{'op':'create_block','kind':'enumeration','name':'EvalMessageValue',
            'position':[1720,1400],'new_definition':{'name':'EvalMessageType_' + args.output.name.replace('-','_'),
            'items':['Off','On','Fault']},'initial_value':'Off'},'enum-seed',baseline)
        enum_model = next(r for r in rows(sid) if r['kind']=='model' and r['name']=='EvalMessageValue')
        enum_path = enum_model['definition']['path']
        roles = ('receive_message','send_message','send_receive_message')
        cases = [(kind, None, 'cont') for kind in roles]
        cases += [(kind,scope,('enum','sdisc','log')[(i+j)%3])
                  for i,kind in enumerate(roles) for j,scope in enumerate(('local','imported','exported'))]
        for repeat in range(args.repeats):
            for index,(kind,scope,model_type) in enumerate(cases):
                key = f'r{repeat}-c{index}'
                case = {'repeat':repeat,'kind':kind,'scope':scope,'model_type':model_type,'passed':False}
                result['cases'].append(case)
                support = {'op':'create_block','kind':'enumeration' if model_type=='enum' else 'variable',
                           'name':'EvalSignalValue','position':[1400,1200]}
                if model_type=='enum':support['definition']=enum_path
                else:support['model_type']=model_type
                sid, support_receipt, supported = edit(sid,support,key + '-support',seeded)
                op = {'op':'create_block','kind':kind,'name':'EvalSignalMessage','position':[1720,1200],
                      'model_type':model_type}
                if scope is not None:op['message_scope']=scope
                if model_type=='enum':op['definition']=enum_path
                sid, created, after = edit(sid,op,key + '-create',supported)
                model = next(r for r in rows(sid) if r['kind']=='model' and r['name']==op['name'])
                public = next(r for r in after['models'] if r['name']==op['name'])
                expected_scope = scope or ('imported' if kind=='receive_message' else 'exported')
                assert model['message']['scope'] == expected_scope and model['message']==public['message']
                assert model['model_type']==public['model_type']==model_type
                assert model['message']['global_label']==op['name']
                _, stale, _ = call('bd_edit',{'snapshot':support_receipt['after_snapshot'],
                    'request_id':key + '-stale','operations':[op],'preview':True},error=True)
                assert stale['status']=='conflict' and stale['setter_called'] is False
                assert equivalent(observe(key + '-stale-refused'),after)
                if model_type=='enum':
                    assert model['definition']['oid']==public['definition_oid']==enum_model['definition']['oid']
                    assert model['enum_values']==public['enum_values']==['Off','On','Fault']
                node = next(r for r in rows(sid) if r['kind']=='node' and r.get('model_ref')==model['ref'])
                value_model = next(r for r in rows(sid) if r['kind']=='model' and r['name']==support['name'])
                value_node = next(r for r in rows(sid) if r['kind']=='node' and r.get('model_ref')==value_model['ref'])
                pins = {r['ref']:r for r in rows(sid) if r['kind']=='pin'}
                if kind=='receive_message':
                    source = next(p for p in node['pins'] if pins[p]['output'])
                    target = next(p for p in value_node['pins'] if pins[p]['input'])
                else:
                    source = next(p for p in value_node['pins'] if pins[p]['output'])
                    target = next(p for p in node['pins'] if pins[p]['input'])
                sid, connection, connected = edit(sid,{'op':'connect_data','source':'Main/'+source,
                    'target':'Main/'+target},key + '-connect',after)
                _, premature, _ = call('bd_revert',{'change_id':created['change_id'],
                    'request_id':key + '-premature','preview':True},error=True)
                assert premature['status']=='conflict' and premature['setter_called'] is False
                assert equivalent(observe(key + '-premature-refused'),connected)
                sid, deletion, deleted = edit(sid,{'op':'delete_node','target':'Main/'+node['ref']},key + '-delete',connected)
                assert any(r['name']==op['name'] for r in deleted['models'])
                sid, current = inverse(deletion,key + '-undo-delete',deleted)
                assert equivalent(current,connected)
                sid, current = inverse(connection,key + '-undo-connect',current)
                assert equivalent(current,after)
                sid, current = inverse(created,key + '-undo-create',current)
                assert equivalent(current,supported)
                sid, current = inverse(support_receipt,key + '-undo-support',current)
                assert equivalent(current,seeded)
                case['passed']=True
                save()
        sid, final = inverse(enum_receipt,'undo-enum-seed',seeded)
        result['baseline_restored']=equivalent(final,baseline)
        assert result['baseline_restored'] and not result['outstanding']
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc()
    finally:
        result['cleanup']=[]
        for change in list(reversed(result['outstanding'])):
            try:
                _, receipt, _ = call('bd_revert',{'change_id':change,'request_id':'cleanup-'+change[-16:]})
                result['cleanup'].append(receipt)
                if receipt['status']=='verified_local':result['outstanding'].remove(change)
                else:break
            except Exception:
                result['cleanup_error']=traceback.format_exc()
                break
        if baseline is not None and not result['outstanding']:
            try:result['baseline_restored']=equivalent(observe('final'),baseline)
            except Exception:result['final_observation_error']=traceback.format_exc()
        result['source_changes_during_run']=[name for name,sha in result['source_manifest'].items()
            if service.digest((service.ROOT/name).read_bytes())!=sha]
        if result['source_changes_during_run']:result['passed']=False
        save()
    print(json.dumps({k:result[k] for k in ('passed','baseline_restored','outstanding')},indent=2))
    return 0 if result['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
