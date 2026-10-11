"""Actual Tool.call child diff show/clear with routing guards and full public oracle.

No visual/zoom/window lifecycle acceptance is claimed by this native experiment.
"""
import argparse
import json
import os
from pathlib import Path
import traceback
import time
import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_native_presentation import compile_overlay
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient


def visual_gate_verified(row):
    return (isinstance(row, dict) and row.get('status') == 'verified'
            and isinstance(row.get('evidence'), list) and bool(row['evidence'])
            and not row.get('not_verified'))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--scopes', nargs='+', choices=('Main', 'Main/h12', 'Main/h12/h5'), default=['Main', 'Main/h12', 'Main/h12/h5'])
    parser.add_argument('--visual-hold', type=int, choices=range(0, 901), default=0)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads((service.ROOT/'analysis/bde-experiments/2026-10-01/bde-hierarchy-fixture-02/fixture.json').read_text())
    component = fixture['component']
    assert component == 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00'
    service.STORE = args.output/'store'
    domain = {'session': str(args.output.resolve()), 'database': fixture['database'], 'oid': fixture['oid'], 'process_epoch': fixture['ascet_process_epoch']}
    sources = [p for p in (service.ROOT/'scripts').glob('*') if p.suffix in ('.py', '.cs', '.st', '.json') and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    sources += list((service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'visual_verified': False, 'business_writes': False, 'cases': [], 'calls': [], 'metrics': [], 'ui': {},
        'outstanding': [], 'observations': [], 'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        'limits': ['One two-level fixture; no zoom/scroll/reopen visual acceptance', 'Routing checks native canvas identity and Undo contents; not all UI transient state', 'No cross-Module/Class group edits']}
    active = None

    def save():
        (args.output/'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row); save()

    client = ToolClient(args.output, domain['session'], record)
    client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'

    def call(tool, values, allow_error=False):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, values)
        result['metrics'].append({'tool': tool, 'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}); save()
        if error and not allow_error:
            raise RuntimeError(body)
        return head, body, error

    def observation():
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            adapter._ensure_open(domain)
            value = {'tree': adapter._exchange({'cmd': 'observe_public_tree'}), 'models': adapter.observe_models(domain)}
        result['observations'].append(value); save()
        return value

    def equal(a, b):
        return set(a['tree']) == set(b['tree']) and all(public_projection(a['tree'][s]) == public_projection(b['tree'][s]) for s in a['tree']) and encoded(a['models']) == encoded(b['models'])

    def edit(snapshot, operation, key):
        _, body, error = call('bd_edit', {'snapshot': snapshot, 'request_id': key, 'operations': [operation]}, True)
        value = json.loads(body)
        if value.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(value['change_id']); save()
        assert not error and value['status'] == 'applied_observed', value
        return value

    def revert(key):
        change = result['outstanding'][-1]
        _, body, _ = call('bd_revert', {'change_id': change, 'request_id': key})
        assert json.loads(body)['status'] == 'verified_local'
        result['outstanding'].pop(); save()

    def display(change, mode):
        nonlocal active
        if mode == 'show': active = change
        _, body, _ = call('bd_diff', {'change_id': change, 'presentation': mode})
        value = json.loads(body)
        assert value['presentation_status'] == 'native_call_succeeded_visual_unverified'
        if mode == 'clear': active = None
        return value

    def gate(label):
        if not args.visual_hold: return
        result['phase'] = label; save()
        path = args.output/(label+'.json')
        print(json.dumps({'phase': label, 'release_file': str(path)}), flush=True)
        deadline = time.monotonic()+args.visual_hold
        while not path.exists() and time.monotonic()<deadline: time.sleep(.25)
        result['ui'][label] = json.loads(path.read_text(encoding='utf-8')) if path.exists() else {'status':'timed_out'}
        save()
        assert visual_gate_verified(result['ui'][label]), label+' visual gate incomplete or not verified'

    def native_status(label, scope):
        path = args.output/(label+'-native-status.json')
        dp = args.output/(label+'-status-domain.json'); dp.write_text(json.dumps({**domain, 'diagram': scope}))
        with service.live_lock():
            metric, raw = bench.run([str(binary), component, 'status', str((args.output/'empty.json').resolve()), str(path.resolve()), str(dp.resolve())], path, 30)
        assert not metric['error'] and raw['status']=='ok', raw
        return raw['presentation']

    try:
        binary = compile_overlay()
        probe = service.ROOT/'analysis/live-api/AscetBdeHierarchyViewProbe.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetBdeHierarchyViewProbe', f'/r:{dll}',
            '/r:System.Web.Extensions.dll', f'/out:{probe}',
            *[f'/resource:{service.ROOT / "scripts" / name},{name}' for name in ('bde_structure_read.st', 'bde_hierarchy_view_probe.st')],
            *[str(service.ROOT/'scripts'/name) for name in ('AscetStructureRead.cs', 'AscetBdeHierarchyViewProbe.cs')]], 30, build_step=True)
        (args.output/'empty.json').write_text('[]')
        # Fixture IDs describe the recipe; live process identity must be fresh.
        head, _, _ = call('bd_read', {'component':component,'view':'structure'})
        current = service.load_record(head['snapshot'],'s_','snapshots')
        assert current['oid']==fixture['oid'] and current['dirty_editors']==[0,0]
        domain.update(database=current['database'],process_epoch=current['ascet_process_epoch'])
        baseline = observation(); result['baseline'] = baseline
        for repeat in range(args.repeats):
            for scope in args.scopes:
                tag = str(repeat)+'-'+scope.replace('/', '_')
                head, _, _ = call('bd_read', {'component': component, 'view': 'structure', 'scope': {'diagram': scope}})
                created = edit(head['snapshot'], {'op': 'create_block', 'kind': 'literal', 'name': '3.0', 'position': [300, 250]}, tag+'-create')
                node = next(d['after'] for d in created['differences'] if d['before'] is None and d['after']['kind'] == 'node')
                case = {'scope': scope, 'round': repeat+1, 'create': created, 'displays': []}; result['cases'].append(case); save()
                for action in ('create', 'delete'):
                    changed = created if action == 'create' else edit(created['after_snapshot'], {'op': 'delete_node', 'target': scope+'/'+node['ref']}, tag+'-delete')
                    expected = observation()
                    if action == 'delete':
                        _, rejected, error = call('bd_diff', {'change_id': created['change_id'], 'presentation': 'show'}, True)
                        refusal = json.loads(rejected)
                        assert error and refusal['code'] == 'PRECONDITION_CONFLICT', refusal
                        case['stale_show_refusal'] = refusal
                    shown = display(changed['change_id'], 'show')
                    assert shown['diagram'] == scope and shown['native']['diagram'] == scope
                    if scope != 'Main' and result['cases'][0]['scope']=='Main':
                        main_change = result['cases'][0]['create']['change_id']
                        _, rejected, error = call('bd_diff', {'change_id': main_change, 'presentation': 'clear'}, True)
                        refusal = json.loads(rejected)
                        assert error and refusal['code'] == 'PRESENTATION_FAILED' and 'PRESENTATION_SCOPE_MISMATCH' in json.dumps(refusal), refusal
                        case.setdefault('wrong_scope_clear_refusals', []).append(refusal)
                    domain_path = args.output/(tag+'-'+action+'-domain.json')
                    domain_path.write_text(json.dumps({**domain, 'diagram': scope}))
                    path = args.output/(tag+'-'+action+'-route.json')
                    with service.live_lock():
                        metric, raw = bench.run([str(probe), str(path.resolve()), str(domain_path.resolve()), 'overlay_guard'], path, 35)
                    case['displays'].append({'kind': action, 'show': shown, 'route': raw, 'metric': metric}); save()
                    assert not metric['error'] and raw.get('status') == 'ok', raw
                    assert raw['proof']['overlay_guard_checks'] == 3
                    label = tag+'-'+action
                    gate(label+'-shown')
                    state = native_status(label+'-after-show', scope)
                    assert '|error=none' in state and '|undo_stream_unchanged=true' in state and '|scope_active=true' in state, state
                    if args.visual_hold and action == 'delete':
                        gate(label+'-close')
                        assert native_status(label+'-closed',scope)=='absent', 'Destroyed window kept callback'
                        case['displays'][-1]['reopened'] = display(changed['change_id'],'show')
                        gate(label+'-reopened')
                        state = native_status(label+'-after-reopen',scope)
                        assert '|error=none' in state and '|undo_stream_unchanged=true' in state and '|scope_active=true' in state, state
                    assert equal(expected, observation()), 'Presentation changed graph/declarations'
                    case['displays'][-1]['clear'] = display(changed['change_id'], 'clear')
                    assert native_status(label+'-cleared',scope)=='absent'
                    gate(label+'-cleared')
                    assert equal(expected, observation()), 'Clear changed graph/declarations'
                revert(tag+'-restore-delete'); revert(tag+'-restore-create')
                assert equal(baseline, observation()), 'Round did not restore baseline'
                case['restored'] = True; save()
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        try:
            if active:
                try:
                    display(active, 'clear')
                except Exception:
                    result['presentation_cleanup_error'] = traceback.format_exc()
            while result['outstanding']: revert('cleanup-'+str(len(result['outstanding'])))
            if 'baseline' in result:
                result['baseline_restored'] = equal(result['baseline'], observation())
        except Exception:
            result['cleanup_error'] = traceback.format_exc(); result['passed'] = False
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items() if service.digest((service.ROOT/name).read_bytes()) != digest]
        result['visual_verified'] = bool(result['ui']) and all(visual_gate_verified(v) for v in result['ui'].values())
        result['phase'] = 'finished'
        result['passed'] = result['passed'] and result.get('baseline_restored', False) and not result['outstanding'] and not result['source_changes_during_run'] and 'presentation_cleanup_error' not in result
        if args.visual_hold:
            result['passed'] = result['passed'] and result['visual_verified']
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'baseline_restored', 'outstanding', 'error', 'cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
