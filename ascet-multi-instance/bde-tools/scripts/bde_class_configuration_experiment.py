"""Read-only diagnostic of persisted Class configuration storage shapes."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys

import bd_service as service
import bde_experiments as bench
from bde_class_interface_probe import live_slot


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--mode', choices=('audit', 'graph'), default='audit')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    names = ('AscetClassImpactRead.cs', 'AscetStructureRead.cs', 'bde_database_identity.st',
        'bde_class_interface_probe.st', 'bde_class_callers.st', 'bde_class_configuration_audit.st',
        'bde_class_configuration_audit_dump.st', 'bde_class_configuration_read.st', 'bd_class_configuration.py', 'bde_class_configuration_experiment.py')
    sources = [service.ROOT / 'scripts' / name for name in names]
    binary = service.ROOT / 'analysis/live-api/AscetClassImpactConfigRead.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    result = {'passed': False, 'mode': args.mode + '; persisted storage, not effective-configuration evaluation',
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}}
    try:
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassImpactRead',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        output = args.output / 'observation.json'
        with live_slot(), bench.proxy() as wire:
            process = subprocess.run([str(binary), args.component, str(output), 'configuration_' + ('audit' if args.mode == 'audit' else 'graph')],
                capture_output=True, text=True, timeout=45, env={**os.environ,
                'ASCET_BD_PROBE_PORT': str(wire['port']), 'ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT': '32503'})
        result.update(exit_code=process.returncode, stdout=process.stdout, stderr=process.stderr,
            request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
        data = json.loads(output.read_text(encoding='utf-8'))
        assert process.returncode == 0 and data['status'] == 'ok' and not wire['errors'], data.get('error')
        assert data['dirty_before'] == data['dirty_after'] == data['model_setters_called'] == 0
        if args.mode == 'audit':
            result['configurations'] = len(data['configuration_audit']['configurations'])
        else:
            from bd_class_configuration import validate_graph
            result['configuration_graph'] = validate_graph(data['configuration_graph'], data['oid'])
            assert data['configuration_samples'] == 2
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
    raise SystemExit(main())
