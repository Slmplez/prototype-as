"""Actual Doge sequence-bearing node move/delete/inverse with independent graph oracle."""
import argparse
import json
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--kinds', default='variable')
    p.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    p.add_argument('--component', help='Optional exact isolated fixture; default routes Module-only kinds separately')
    p.add_argument('--no-assign', action='store_true', help='Keep the existing unassigned call on a fixture without calc')
    p.add_argument('--allow-no-sequence', action='store_true', help='Also validate ordinary nodes; report absent calls explicitly')
    p.add_argument('--method', default='calc', help='Exact existing method/process name for call assignment')
    p.add_argument('--assign-module', action='store_true', help='Assign an existing Module process using --method')
    a = p.parse_args(); a.output.mkdir(parents=True, exist_ok=False)
    service.STORE = a.output / 'store'; session = str(a.output.resolve())
    result = {'passed':False, 'calls':[], 'cases':[], 'outstanding':[],
        'scope':'ordinary node move/delete and selector calls without separate execution connection pins; actual Tool.call; independent full public graph at every stage',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in (service.ROOT/'scripts').glob('*')
            if f.suffix in ('.py','.cs','.st') and f.name.startswith(('bd','AscetStructure'))}}
    for f in (service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))]=service.digest(f.read_bytes())
    def save():
        (a.output/'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    def record(call):
        result['calls'].append(call); save()
    client = ToolClient(a.output, session, record)
    try:
        compile_bridge()
        for kind in a.kinds.split(','):
            module = 'message' in kind or kind == 'resource'
            component = a.component or ('BDE_Tool_Experiments\\Trial_Messages_20260930_132738' if module
                else 'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955')
            for trial in range(a.repeats):
                case = {'kind':kind, 'trial':trial, 'passed':False, 'stages':[]}; result['cases'].append(case)
                head, _, error = client.call('bd_read', {'component':component, 'view':'structure'}); assert not error
                baseline = service.load_record(head['snapshot'], 's_', 'snapshots')
                domain = {'session':session, 'database':baseline['database'], 'oid':baseline['oid'], 'process_epoch':baseline['ascet_process_epoch']}
                rows = {r['ref']:r for r in baseline['structure']['entries']}
                with service.live_lock(), NativeStructureAdapter(component) as adapter:
                    public_before = adapter.observe_public(domain); models_before = adapter.observe_models(domain)
                assert compare(rows.values(), public_before)['passed']
                def verify(receipt, stage):
                    for delta in receipt.get('differences', []):
                        if delta['after'] is None: rows.pop(delta['ref'], None)
                        else: rows[delta['ref']] = delta['after']
                    with service.live_lock(), NativeStructureAdapter(component) as adapter:
                        native = adapter.observe(domain, []); public = adapter.observe_public(domain)
                    oracle = compare(rows.values(), public)
                    assert sorted(rows.values(), key=lambda r:r['ref']) == native['entries']
                    case['stages'].append({'stage':stage, 'receipt':receipt, 'oracle':oracle, 'public':public}); save()
                    assert oracle['passed'], oracle
                def edit(sid, op, key):
                    _, body, error = client.call('bd_edit', {'snapshot':sid, 'request_id':kind+str(trial)+key, 'operations':[op]})
                    receipt = json.loads(body)
                    if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
                        result['outstanding'].append(receipt['change_id']); save()
                    assert not error and receipt['status']=='applied_observed', body
                    verify(receipt, key); return receipt
                def inverse(key):
                    _, receipt = client.value('bd_revert', {'change_id':result['outstanding'][-1], 'request_id':kind+str(trial)+key})
                    assert receipt['status']=='verified_local', receipt
                    result['outstanding'].pop(); save(); verify(receipt, key)
                literal = edit(head['snapshot'], {'op':'create_block','kind':'literal','name':'1.0','position':[2000,1800]}, 'literal')
                op = {'op':'create_block','kind':kind,'name':'EvalSequenceNode','position':[2200,1800]}
                if kind=='enumeration': op['definition']='BDE_Tool_Experiments\\Trial_Enum_20260930_123955'
                if kind=='component': op['definition']='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AEB_Core\\AEB_Core'
                if kind=='existing_model': op['name']='AEB_CurrentState'
                created = edit(literal['after_snapshot'], op, 'create'); sid = created['after_snapshot']
                node = next(d['after'] for d in created['differences'] if d['before'] is None and d['after']['kind']=='node')
                pins = [rows[ref] for ref in node['pins']]
                sequence_pins = [p for p in pins if p.get('sequence')]
                case['sequence_calls'] = sorted({p['sequence']['id'] for p in sequence_pins})
                case['sequence_assignment'] = 'not_applicable' if not sequence_pins else 'preserved'
                save()
                assert sequence_pins or a.allow_no_sequence, 'Fixture kind has no sequence call; use explicit ordinary-node coverage'
                inputs = [p for p in pins if p['input']]
                if inputs and kind != 'enumeration':
                    literal_node = next(d['after'] for d in literal['differences'] if d['after']['kind']=='node')
                    output = next(rows[ref] for ref in literal_node['pins'] if rows[ref]['output'])
                    connected = edit(sid, {'op':'connect_data','source':'Main/'+output['ref'],'target':'Main/'+inputs[0]['ref']}, 'connect')
                    sid = connected['after_snapshot']
                if sequence_pins and (not module or a.assign_module) and not a.no_assign:
                    pin = sequence_pins[0]
                    assigned = edit(sid, {'op':'set_sequence','target':'Main/'+pin['ref'],
                        'expect':{k:pin['sequence'][k] for k in ('number','method')},'number':92000,'method':a.method}, 'assign')
                    sid = assigned['after_snapshot']
                    case['sequence_assignment'] = 'assigned:'+a.method
                before_move = {ref:json.loads(json.dumps(row)) for ref,row in rows.items()}
                moved = edit(sid, {'op':'move_node','target':'Main/'+node['ref'],'position':[2300,1900]}, 'move')
                after_move = {ref:json.loads(json.dumps(row)) for ref,row in rows.items()}
                deleted = edit(moved['after_snapshot'], {'op':'delete_node','target':'Main/'+node['ref']}, 'delete')
                assert not any(row['ref']==node['ref'] for row in rows.values())
                inverse('undo-delete'); assert rows==after_move
                inverse('undo-move'); assert rows==before_move
                while result['outstanding']: inverse('undo-'+str(len(result['outstanding'])))
                with service.live_lock(), NativeStructureAdapter(component) as adapter:
                    assert adapter.observe(domain, [])==baseline['structure']
                    assert adapter.observe_public(domain)==public_before
                    assert adapter.observe_models(domain)==models_before
                case['passed']=True; save(); print(json.dumps({'kind':kind,'trial':trial,'passed':True}), flush=True)
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc(); save()
        while result['outstanding']:
            try: inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception:
                result['cleanup_error']=traceback.format_exc(); break
    save(); print(json.dumps({k:result.get(k) for k in ('passed','outstanding','error','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__': raise SystemExit(main())
