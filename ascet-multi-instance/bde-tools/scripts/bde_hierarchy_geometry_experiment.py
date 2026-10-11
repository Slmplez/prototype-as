"""Doge child text/layout edits with complete public trees and native observations."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import traceback

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_structural_tools import select
from bde_public_oracle import compare, encoded, native_projection, public_projection
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, choices=range(1, 4), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed':False, 'calls':[], 'metrics':[], 'cases':[], 'observations':[],
              'outstanding':[], 'baseline_restored':False, 'business_writes':False,
              'not_verified':['visuals', 'reload lifecycle', 'boundary/container move', 'interface edits']}
    files = list((service.ROOT / 'scripts').glob('bd*.py'))
    files += [service.ROOT / 'scripts' / name for name in ('bde_structure_read.st', 'bde_structure_edit.st',
        'bde_recovery_status.st', 'bde_session_guard.st', 'bde_recovery_release.st', 'AscetStructureRead.cs',
        'AscetStructureSession.cs', 'AscetStructureExperiment.cs', 'bde_public_oracle.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in files}
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    def record(call):
        result['calls'].append(call); save()
    client = ToolClient(args.output, 'geometry-' + args.output.name, record)
    domain = None
    scopes = []
    initial = None

    def call(tool, values, error=False):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, failed = client.call(tool, values)
        metric = {'tool':tool, 'request':wire['request'].result(), 'response':wire['response'].result(),
                  'proxy_errors':wire['errors'], 'is_error':failed}
        result['metrics'].append(metric); save()
        value = body if tool == 'bd_read' else json.loads(body)
        assert (error is None or failed == error) and not wire['errors'], value
        return head, value, metric

    def read(scope):
        head, _, _ = call('bd_read', {'component':args.component, 'view':'structure', 'scope':{'diagram':scope}})
        return service.load_record(head['snapshot'], 's_', 'snapshots')

    def observation():
        with service.live_lock():
            native = {}
            for scope in scopes:
                with NativeStructureAdapter(args.component,scope) as adapter:
                    native[scope] = adapter.observe(domain, [])
            with NativeStructureAdapter(args.component) as adapter:
                adapter.observe(domain, [])
                public = adapter._exchange({'cmd':'observe_public_tree'})
                models = adapter.observe_models(domain)
        assert set(public) == set(native), (set(public), set(native))
        for scope in scopes:
            proof = compare(native[scope]['entries'], public[scope])
            assert proof['passed'], proof
        value = {'native':native, 'public':public, 'models':models}
        result['observations'].append(value); save()
        return value

    def same(left, right):
        return left['native'] == right['native'] and all(
            public_projection(left['public'][s]) == public_projection(right['public'][s]) for s in scopes
        ) and Counter(map(encoded, left['models'])) == Counter(map(encoded, right['models']))

    def snapshot(receipt):
        return service.load_record(receipt['after_snapshot'], 's_', 'snapshots')

    def edit(record, op, tag):
        _, receipt, _ = call('bd_edit', {'snapshot':record['snapshot'], 'request_id':tag, 'operations':[op]},None)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']); save()
        assert receipt['status'] == 'applied_observed' and receipt['additional_ASCET_reads'] == 0, receipt
        return receipt

    def revert(receipt, tag):
        token = receipt if isinstance(receipt, str) else receipt['change_id']
        _, inverse, _ = call('bd_revert', {'change_id':token, 'request_id':tag})
        assert inverse['status'] == 'verified_local' and inverse['additional_ASCET_reads'] == 0, inverse
        result['outstanding'].remove(token); save()
        return inverse

    def patch_matches(receipt, before, after):
        scope = receipt['diagram']
        expected = {row['ref']:row for row in before['native'][scope]['entries']}
        projected = public_projection(before['public'][scope])
        for delta in receipt['differences']:
            assert expected.get(delta['ref']) == delta['before'], delta
            if delta['after'] is None: expected.pop(delta['ref'])
            else: expected[delta['ref']] = delta['after']
            if delta['before']: projected -= native_projection([delta['before']])
            if delta['after']: projected += native_projection([delta['after']])
        assert expected == {row['ref']:row for row in after['native'][scope]['entries']}
        assert projected == public_projection(after['public'][scope])
        for other in scopes:
            if other != scope:
                assert before['native'][other] == after['native'][other]
                assert public_projection(before['public'][other]) == public_projection(after['public'][other])
        partial = snapshot(receipt)['structure']
        assert select(after['native'][scope], partial['targets']) == partial

    def node(receipt):
        return next(delta['after'] for delta in receipt['differences']
                    if delta['before'] is None and delta['after']['kind'] == 'node')

    try:
        save()
        root = read('Main')
        domain = {'session':client.session, 'database':root['database'], 'oid':root['oid'],
                  'process_epoch':root['ascet_process_epoch']}
        with service.live_lock(), NativeStructureAdapter(args.component) as adapter:
            adapter.observe(domain, [])
            scopes = list(adapter._exchange({'cmd':'observe_public_tree'}))
        assert len(scopes) == 3, scopes
        initial = observation()
        for repeat in range(args.repeats):
            for scope in [s for s in scopes if s != 'Main']:
                tag = str(repeat) + '-' + scope
                case = {'repeat':repeat,'scope':scope,'operations':[]}
                result['cases'].append(case)
                saved = observation()
                record = read(scope)
                boundary = next(r for r in record['structure']['entries'] if r.get('hierarchy_boundary'))
                _, refused, _ = call('bd_edit', {'snapshot':record['snapshot'], 'request_id':tag+'-boundary',
                    'operations':[{'op':'move_node','target':scope+'/'+boundary['ref'],'position':[400,300]}], 'preview':True}, True)
                assert refused['code']=='CAPABILITY_UNAVAILABLE'
                with service.live_lock(), NativeStructureAdapter(args.component,scope) as adapter:
                    try:adapter.validate(domain,'move_node',[[boundary['ref']],boundary['ref'],400,300])
                    except Exception as error:
                        assert 'Hierarchy boundary move/text' in str(error), str(error)
                    else:raise AssertionError('Native boundary move was accepted')
                literal = edit(read(scope), {'op':'create_block','kind':'literal','name':'1.0','position':[600,500]}, tag+'-literal')
                operator = edit(snapshot(literal), {'op':'create_block','kind':'operator','name':'+','position':[1000,700]}, tag+'-operator')
                comment = edit(snapshot(operator), {'op':'create_block','kind':'comment','name':'Before','position':[800,900]}, tag+'-comment')
                lit, opnode, com = node(literal), node(operator), node(comment)
                rows = snapshot(comment)['structure']['entries']
                output = next(r['ref'] for r in rows if r['kind']=='pin' and r['owner']==lit['ref'] and r['output'])
                target = next(r['ref'] for r in rows if r['kind']=='pin' and r['owner']==opnode['ref'] and r['input'])
                link = edit(snapshot(comment), {'op':'connect_data','source':scope+'/'+output,'target':scope+'/'+target}, tag+'-link')
                stable = observation()
                for action in ('set_literal','set_comment','move_node','set_edge_route'):
                    current = read(scope)
                    if action == 'set_literal':
                        op = {'op':action,'target':scope+'/'+lit['ref'],'expect':{'text':'1.0'},'value':{'text':'12345.678'}}
                    elif action == 'set_comment':
                        op = {'op':action,'target':scope+'/'+com['ref'],'text':'After: precise child comment'}
                    elif action == 'move_node':
                        op = {'op':action,'target':scope+'/'+opnode['ref'],'position':[1240,880]}
                    else:
                        edge = next(r for r in current['structure']['entries'] if r['kind']=='edge' and r['source']==output and r['target']==target)
                        first, last = edge['route'][0], edge['route'][-1]
                        x, y = max(first[0],last[0])+120, max(first[1],last[1])+120
                        op = {'op':action,'target':scope+'/'+edge['ref'],'points':[first,[x,first[1]],[x,y],[last[0],y],last]}
                    request = {'snapshot':current['snapshot'],'request_id':tag+'-'+action,'operations':[op]}
                    _, refused, metric = call('bd_edit', {**request, 'request_id':request['request_id']+'-wrong-scope',
                        'operations':[{**op,'target':'Main/'+op['target'].rsplit('/',1)[-1]}], 'preview':True}, True)
                    assert refused['code']=='TARGET_NOT_FOUND' and metric['request']['frames']==0
                    _, preview, _ = call('bd_edit', {**request,'preview':True})
                    assert preview['status']=='preview' and preview['setter_called'] is False
                    before = observation()
                    changed = edit(current, op, request['request_id'])
                    after = observation(); patch_matches(changed,before,after)
                    assert Counter(map(encoded,before['models']))==Counter(map(encoded,after['models']))
                    _, repeated, metric = call('bd_edit',request)
                    assert repeated==changed and metric['request']['frames']==0
                    _, delta, metric = call('bd_diff',{'change_id':changed['change_id']})
                    assert delta['differences'] and metric['request']['frames']==0
                    _, stale, _ = call('bd_edit',{**request,'request_id':request['request_id']+'-stale'},True)
                    assert stale['status']=='conflict' and stale['setter_called'] is False
                    _, preview, _ = call('bd_revert',{'change_id':changed['change_id'],'request_id':tag+'-preview-'+action,'preview':True})
                    assert preview['status']=='preview' and preview['setter_called'] is False
                    inverse = revert(changed,tag+'-undo-'+action)
                    restored = observation(); patch_matches(inverse,after,restored)
                    assert same(before,restored) and same(stable,restored)
                    case['operations'].append({'op':action,'passed':True,'change_id':changed['change_id'],'inverse':inverse['change_id']})
                    save()
                for receipt in (link,comment,operator,literal):revert(receipt,tag+'-cleanup-'+receipt['change_id'][-12:])
                assert same(observation(),saved)
                case['passed']=True;save()
                print(json.dumps({'scope':scope,'repeat':repeat,'passed':True}),flush=True)
        result['baseline_restored'] = same(observation(),initial)
        result['passed'] = result['baseline_restored'] and not result['outstanding']
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        for token in list(reversed(result['outstanding'])):
            try:revert(token,'cleanup-'+token[-16:])
            except Exception:
                result['cleanup_error']=traceback.format_exc();break
        if initial is not None and not result['outstanding']:
            try:result['baseline_restored']=same(observation(),initial)
            except Exception:result['final_error']=traceback.format_exc()
        result['source_changes_during_run']=[name for name,sha in result['source_manifest'].items()
            if service.digest((service.ROOT/name).read_bytes())!=sha]
        if result['source_changes_during_run']:result['passed']=False
        save()
    print(json.dumps({key:result[key] for key in ('passed','baseline_restored','outstanding')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':raise SystemExit(main())
