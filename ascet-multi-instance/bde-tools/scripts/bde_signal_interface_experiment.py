"""Read-only cross-boundary interface discovery; no route edits or binding inference."""
import argparse
import json
from pathlib import Path
import os
import subprocess

import bd_service as service
import bde_experiments as bench
from bd_signal_interfaces import class_bindings, compare_public


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--diagram', default='Main')
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--public-oracle', action='store_true')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    template = service.ROOT / 'scripts/bde_signal_interfaces.st'
    identity = service.ROOT / 'scripts/bde_database_identity.st'
    source = service.ROOT / 'scripts/AscetStructureRead.cs'
    oracle = service.ROOT / 'scripts/AscetSignalInterfaceRead.cs'
    binary = service.ROOT / ('analysis/live-api/AscetSignalInterfacesVerified.exe'
                             if args.public_oracle else 'analysis/live-api/AscetSignalInterfaces.exe')
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    service.ensure_probe()
    manifest = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes())
                for p in (template, identity, source, oracle, Path(__file__), service.ROOT / 'scripts/bde_experiments.py',
                          service.ROOT / 'scripts/bd_signal_interfaces.py')}
    command = [str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
        '/r:System.Web.Extensions.dll', f'/resource:{template},bde_structure_read.st',
        f'/resource:{identity},bde_database_identity.st',
        f'/out:{binary}', *(['/main:AscetSignalInterfaceRead', str(oracle)] if args.public_oracle else []),
        str(source)]
    build = subprocess.run(command, capture_output=True, timeout=30)
    (args.output / 'build.stdout.log').write_bytes(build.stdout)
    (args.output / 'build.stderr.log').write_bytes(build.stderr)
    if build.returncode:
        result = {'status': 'failed_before_live_call', 'build_exit_code': build.returncode,
                  'source_manifest': manifest, 'setter_called': False, 'online_evidence': False}
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
        print(json.dumps(result))
        return 1
    with service.live_lock():
        metric, raw = bench.run([str(binary), args.component, args.diagram,
            str((args.output / 'probe.json').resolve()), 'all'], args.output / 'probe.json', 90 if args.public_oracle else 30)
    interfaces = raw.get('structure', {})
    result = {'status': raw.get('status'), 'metric': metric, 'source_manifest': manifest,
        'source_changes_during_run': [name for name, digest in manifest.items()
            if service.digest((service.ROOT / name).read_bytes()) != digest],
        'same_dirty': (raw['dirty_before'] == raw['dirty_after']
                       if raw.get('dirty_before', -1) >= 0 and raw.get('dirty_after', -1) >= 0 else None),
        'counts': {key: len(interfaces.get(key, []))
            for key in ('models', 'formals', 'definitions', 'nodes', 'pins', 'edges', 'boundaries')},
        'scope': 'read-only research; not full semantic read, route creation, or runtime delivery proof',
        'diagram_collected': args.diagram != '-',
        'editable_refs': False, 'independent_oracle': 'not_run',
        'unresolved': ['project message resolution', 'hierarchy boundary pairing', 'method body dataflow',
                       'A2A/XPass source interpretation', 'execution and task delivery']}
    if raw.get('status') == 'ok':
        bindings = class_bindings(interfaces)
        (args.output / 'class-bindings.json').write_text(json.dumps(bindings, indent=2), encoding='utf-8')
        result['class_bindings'] = {key: value for key, value in bindings.items() if key != 'bindings'}
    if args.public_oracle and raw.get('status') == 'ok':
        result['independent_oracle'] = compare_public(interfaces, raw['public_before'])
        result['public_unchanged'] = all(compare_public(raw['public_before'], raw['public_after'])['fields'].values())
    result['passed_collected_public_projection'] = bool(result['status'] == 'ok' and not metric['error']
        and result['same_dirty'] and not result['source_changes_during_run']
        and args.public_oracle and result['independent_oracle']['passed'] and result['public_unchanged'])
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result))
    return 0 if (result['passed_collected_public_projection'] if args.public_oracle else
        result['status'] == 'ok' and not metric['error'] and result['same_dirty'] and not result['source_changes_during_run']) else 1


if __name__ == '__main__':
    raise SystemExit(main())
