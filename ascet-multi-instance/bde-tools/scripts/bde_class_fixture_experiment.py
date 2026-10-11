"""Create a new isolated Class and two callers for interface mutation research."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bde_class_interface_probe import live_slot
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--resume', type=Path)
    parser.add_argument('--extended', action='store_true')
    parser.add_argument('--mixed', action='store_true', help='Three arguments, mixed Class/Module owners, repeated declaration and three hierarchy levels')
    args = parser.parse_args()
    manifest, owned_process, epoch = live_manifest(args.manifest)
    args.output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT / 'scripts' / name for name in ('AscetBdeClassFixture.cs', 'AscetStructureRead.cs',
               'AscetStructureExperiment.cs', 'bde_class_fixture_place.st', 'bde_class_interface_probe.st')]
    binary = service.ROOT / 'analysis/live-api/AscetBdeClassFixture.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    result = {'passed': False, 'business_writes': False,
              'manifest': str(args.manifest.resolve()), 'process_epoch': epoch,
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
              'not_verified': ['Class interface edits, deletion and exact restoration', 'complete flow eval']}
    try:
        service.ensure_probe()
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetBdeClassFixture',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        output = args.output / 'fixture.json'
        try:
            with patch.dict(os.environ, {'ASCET_BD_ENDPOINT_PORT': str(manifest['port'])}), live_slot(), bench.proxy(upstream_port=manifest['port']) as wire:
                live_manifest(args.manifest)
                if sum((args.extended, args.mixed, bool(args.resume))) > 1:
                    raise ValueError('Choose one fixture recipe or resume; new recipes do not replay mutations')
                command = [str(binary), str(output), *(['mixed'] if args.mixed else ['extended'] if args.extended else [str(args.resume)] if args.resume else [])]
                process = subprocess.run(command, capture_output=True, text=True,
                    timeout=120, env={**os.environ, 'ASCET_BD_PROBE_PORT': str(wire['port']),
                        'ASCET_BD_ENDPOINT_PORT': str(manifest['port']),
                        'ASCET_BD_FIXTURE_DATABASE': manifest['database'], 'ASCET_BD_FIXTURE_EPOCH': epoch})
        except subprocess.TimeoutExpired as error:
            result['execution_status'] = 'unknown'
            result['timeout_seconds'] = error.timeout
            result['stdout'] = (error.stdout or b'').decode('utf-8', errors='replace')
            result['stderr'] = (error.stderr or b'').decode('utf-8', errors='replace')
            raise
        finally:
            if 'wire' in locals():
                result.update(request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
            if output.exists():
                checkpoint = json.loads(output.read_text(encoding='utf-8'))
                result['last_checkpoint'] = checkpoint
        data = json.loads(output.read_text(encoding='utf-8')) if output.exists() else {'status': 'missing'}
        result.update(exit_code=process.returncode, stdout=process.stdout, stderr=process.stderr,
                      request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'],
                      component=data.get('component'), callers=data.get('callers'))
        assert process.returncode == 0 and data.get('status') == 'ok' and not wire['errors'], {
            'status': data.get('status'), 'error': data.get('error'), 'stage': data.get('stage'), 'artifact': str(output)}
        assert data['ascet_process_epoch'] == epoch and data['database'].lower() == manifest['database'].lower()
        live_manifest(args.manifest)
        assert len(data['callers']) == (3 if args.mixed else 2) and sum(len(row['instances']) for row in data['callers']) == (4 if args.mixed else 3)
        if args.mixed:
            assert [row['owner_kind'] for row in data['callers']] == ['Class', 'Module', 'Module']
            assert data['callers'][0]['instances'][0]['name'] == data['callers'][0]['instances'][1]['name']
            assert data['callers'][1]['instances'][0]['diagram'].count('/h') == 3
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
                                         if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'component': result.get('component'), 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
