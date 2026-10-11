"""Fixed isolated UI hierarchy mapping/routing with independent public tree oracle."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import public_projection, encoded
from bd_native_presentation import compile_overlay


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--mode', choices=('map', 'route', 'overlay_guard'), default='map')
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=1)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture_path = service.ROOT / 'analysis/bde-experiments/2026-10-01/bde-hierarchy-fixture-02/fixture.json'
    fixture = json.loads(fixture_path.read_text(encoding='utf-8'))
    domain = {'session': str(args.output.resolve()), 'database': fixture['database'], 'oid': fixture['oid'], 'process_epoch': fixture['ascet_process_epoch']}
    domain_path = args.output / 'domain.json'
    domain_path.write_text(json.dumps(domain), encoding='utf-8')
    files = [service.ROOT/'scripts'/name for name in ('AscetStructureRead.cs', 'AscetBdeHierarchyViewProbe.cs',
        'bde_structure_read.st', 'bde_hierarchy_view_probe.st', 'bde_hierarchy_view_experiment.py',
        'bd_native_structure.py', 'bde_public_oracle.py', 'bde_overlay.st', 'AscetBdeOverlay.cs', 'bd_native_presentation.py')]
    result = {'passed': False, 'business_writes': False, 'model_edits': 0, 'visual_verified': False,
        'mode': args.mode, 'runs': [], 'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files},
        'limitations': ['No actual diff overlay or visual observation', 'UI graph object contents and selection/mode/scroll state not deeply compared',
                       'Fixed two-level fixture only; not FLOW UI acceptance']}

    def save():
        (args.output/'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def independent():
        with bench.proxy() as wire:
            with NativeStructureAdapter(fixture['component'], environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                adapter._ensure_open(domain)
                tree = adapter._exchange({'cmd': 'observe_public_tree'})
                models = adapter.observe_models(domain)
        return {'tree': tree, 'models': models, 'request_wire': wire['request'].result(), 'response_wire': wire['response'].result()}

    def overlay_call(mode):
        path = args.output/f'overlay-{mode}.json'
        metric, raw = bench.run([str(overlay_binary), fixture['component'], mode, str(commands_path.resolve()),
                                str(path.resolve()), str(domain_path.resolve())], path, 35)
        result[f'overlay_{mode}'] = {'metric': metric, 'native': raw}; save()
        if metric['error'] or raw.get('status') != 'ok':
            raise RuntimeError(raw.get('error', metric))

    try:
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        binary = service.ROOT/'analysis/live-api/AscetBdeHierarchyViewProbe.exe'
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetBdeHierarchyViewProbe',
            f'/r:{dll}', '/r:System.Web.Extensions.dll', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in files[2:4]], *map(str, files[:2])], 30, build_step=True)
        if args.mode == 'overlay_guard':
            overlay_binary = compile_overlay()
            commands_path = args.output/'commands.json'
            commands_path.write_text(json.dumps(['rect', '32768', '20', '20', '30', '30']), encoding='utf-8')
        with service.live_lock():
            result['public_before'] = independent(); save()
            try:
                if args.mode == 'overlay_guard':
                    # Initialize the production reader's source checkpoint without edits.
                    with NativeStructureAdapter(fixture['component']) as adapter:
                        adapter.observe(domain, [])
                    overlay_call('show')
                for repeat in range(args.repeats):
                    path = args.output/f'native-{repeat+1}.json'
                    metric, raw = bench.run([str(binary), str(path.resolve()), str(domain_path.resolve()), args.mode], path, 35)
                    result['runs'].append({'metric': metric, 'native': raw}); save()
                    if metric['error'] or raw.get('status') != 'ok':
                        raise RuntimeError(raw.get('error', metric))
            finally:
                try:
                    if args.mode == 'overlay_guard':
                        overlay_call('clear')
                        overlay_call('status')
                        if result['overlay_status']['native']['presentation'] != 'absent':
                            raise RuntimeError('Overlay registration remains')
                finally:
                    result['public_after'] = independent(); save()
            before, after = result['public_before'], result['public_after']
            result['public_unchanged'] = set(before['tree']) == set(after['tree']) and all(
                public_projection(before['tree'][scope]) == public_projection(after['tree'][scope]) for scope in before['tree'])
            result['declarations_unchanged'] = encoded(before['models']) == encoded(after['models'])
            result['passed'] = result['public_unchanged'] and result['declarations_unchanged']
    except Exception:
        result['error'] = traceback.format_exc()
    # Preserve recovery evidence even when a native/cleanup assertion failed.
    if 'public_before' in result and 'public_after' in result:
        before, after = result['public_before'], result['public_after']
        result['public_unchanged'] = set(before['tree']) == set(after['tree']) and all(
            public_projection(before['tree'][scope]) == public_projection(after['tree'][scope]) for scope in before['tree'])
        result['declarations_unchanged'] = encoded(before['models']) == encoded(after['models'])
    result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items() if service.digest((service.ROOT/name).read_bytes()) != digest]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'mode', 'public_unchanged', 'declarations_unchanged', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
