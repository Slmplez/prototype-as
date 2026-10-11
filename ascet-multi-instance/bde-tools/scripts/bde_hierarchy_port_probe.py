"""Read native hierarchy port pairing/managers; no model writes or UI changes."""
import argparse
import json
import os
from pathlib import Path
import sys
import time
import subprocess

import bd_service as service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--scopes', nargs='+', default=['Main', 'Main/h12'])
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT / 'scripts' / name for name in ('AscetHierarchyPortProbe.cs', 'AscetStructureRead.cs',
               'bde_structure_read.st', 'bde_hierarchy_port_probe.st')]
    binary = service.ROOT / 'analysis/live-api/AscetHierarchyPortProbe.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    result = {'passed': False, 'model_setters_called': 0, 'observations': [],
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
              'not_verified': ['port creation/deletion/restoration', 'Undo and visual lifecycle']}
    try:
        service.ensure_probe()
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetHierarchyPortProbe',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        for index, scope in enumerate(args.scopes):
            started = time.perf_counter()
            output = args.output / f'probe-{index}.json'
            with service.live_lock(), bench.proxy() as wire:
                process = subprocess.run([str(binary), args.component, scope, str(output)], capture_output=True,
                    text=True, timeout=30, env={**os.environ, 'ASCET_BD_PROBE_PORT': str(wire['port'])})
            observation = json.loads(output.read_text(encoding='utf-8')) if output.exists() else {'status': 'missing'}
            result['observations'].append({'scope': scope, 'artifact': str(output),
                'passed': observation.get('status') == 'ok' and observation.get('unchanged') is True,
                'elapsed_ms': (time.perf_counter() - started) * 1000,
                'exit_code': process.returncode, 'stdout': process.stdout, 'stderr': process.stderr,
                'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']})
            assert process.returncode == 0 and result['observations'][-1]['passed'] and not wire['errors'], observation
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
                                          if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
