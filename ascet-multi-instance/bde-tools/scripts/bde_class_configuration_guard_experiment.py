"""Setter-free native guard regressions with controlled reader errors on actual configurations."""
import argparse
import json
import os
from pathlib import Path
import subprocess

import bd_service as service
import bd_class_tools as tools
import bde_experiments as bench
from bd_class_configuration import validate_graph
from bde_class_interface_probe import live_slot
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    source, output = args.matrix.resolve(), args.output.resolve()
    if not source.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(source):
        raise ValueError('Separate owned matrix/probe output required')
    matrix = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    if (matrix.get('passed') is not True or matrix['completed_rounds'] != 36
            or matrix['process_epoch'] != epoch or matrix['database'].lower() != manifest['database'].lower()):
        raise ValueError('Complete independently restored same-instance native matrix required')
    output.mkdir(parents=True, exist_ok=False)
    names = ('AscetClassImpactRead.cs', 'AscetStructureRead.cs', 'bde_database_identity.st',
             'bde_class_interface_probe.st', 'bde_class_callers.st', 'bde_class_configuration_read.st',
             'bde_class_configuration_guard.st', 'bde_class_configuration_guard_probe.st', 'bde_class_observation_batch.st',
             'bde_class_configuration_guard_experiment.py', 'bd_class_configuration.py')
    sources = [service.ROOT / 'scripts' / name for name in names]
    hashes = lambda: {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in sources}
    input_hashes = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes())
                           for path in source.rglob('*') if path.is_file()}
    result = {'passed': False, 'full_delivery': False, 'model_setters_called': 0,
              'scope': 'native synthetic guard checks using full actual configuration text; no persisted configuration mutation',
              'not_verified': ['actual external configuration mutation before dispatch', 'native owner identity replacement',
                               'Class remaining types/local inverse/faults', 'whole delivery'],
              'process_epoch': epoch, 'source_manifest': hashes(), 'input_hashes': input_hashes(), 'fixtures': []}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        service.ensure_probe()
        binary = service.ROOT / 'analysis/live-api/AscetClassConfigurationGuardProbe.exe'
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassImpactRead',
            '/define:BDE_CONFIGURATION_GUARD_RESEARCH', '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{path},{path.name}' for path in sources if path.suffix == '.st'],
            *[str(path) for path in sources if path.suffix == '.cs']], capture_output=True, text=True,
            encoding='utf-8', errors='replace', timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        if build.returncode:
            raise ValueError('Guard research build failed')
        for fixture in matrix['fixtures']:
            tools.require_sandbox(fixture['component'])
            live_manifest(args.manifest)
            observation = output / (fixture['recipe'] + '.json')
            with live_slot(), bench.proxy(upstream_port=manifest['port']) as wire:
                process = subprocess.run([str(binary), fixture['component'], str(observation), 'configuration_guard_probe'],
                    capture_output=True, text=True, encoding='utf-8', errors='replace', timeout=60, env={**os.environ,
                        'ASCET_BD_PROBE_PORT': str(wire['port']),
                        'ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT': str(manifest['port'])})
            data = json.loads(observation.read_text(encoding='utf-8')) if observation.exists() else {'status': 'missing'}
            row = {'recipe': fixture['recipe'], 'artifact': str(observation), 'exit_code': process.returncode,
                   'stdout': process.stdout, 'stderr': process.stderr, 'request': wire['request'].result(),
                   'response': wire['response'].result(), 'wire_errors': wire['errors'], 'passed': False}
            result['fixtures'].append(row)
            save()
            if (process.returncode or data.get('status') != 'ok' or wire['errors']
                    or data['configuration_guard_checks'] != 16 or data['configuration_guard_reader_checks'] != 10
                    or data['ascet_process_epoch'] != epoch or data['oid'] != fixture['oid']
                    or data['database'].lower() != manifest['database'].lower()
                    or data['model_setters_called'] != 0 or data['dirty_before'] != 0 or data['dirty_after'] != 0):
                raise ValueError('Complete native guard regression failed: ' + str(data.get('error')))
            row['configuration_graph'] = validate_graph(data['configuration_graph'], data['oid'])
            row.update(passed=True, native_checks=16, fixed_reader_checks=10)
            live_manifest(args.manifest)
            save()
        result['passed'] = len(result['fixtures']) == 3
    except Exception as error:
        result['error'] = repr(error)
    finally:
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['input_files_unchanged'] = input_hashes() == result['input_hashes']
        result['passed'] = result['passed'] and not result['source_drift'] and result['input_files_unchanged']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'input_files_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
