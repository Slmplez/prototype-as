"""Run formal Class creation tools serially across the independently restored native matrix."""
import argparse
import json
from pathlib import Path
import subprocess
import sys

import bd_service as service
from bd_class_creation import MODEL_TYPES
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--bulk-write', action='store_true')
    parser.add_argument('--query-cache', action='store_true')
    parser.add_argument('--batch-observation', action='store_true')
    parser.add_argument('--configuration-guard', action='store_true')
    args = parser.parse_args()
    if args.query_cache and not args.bulk_write:
        raise ValueError('Creation query cache requires the fixed bulk profile')
    if args.batch_observation and not args.bulk_write:
        raise ValueError('Observation batching requires the fixed bulk profile')
    if args.configuration_guard and not args.bulk_write:
        raise ValueError('Native configuration guard requires the fixed bulk profile')
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    matrix_path, output = args.matrix.resolve(), args.output.resolve()
    if (not matrix_path.is_relative_to(owned) or not output.is_relative_to(owned)
            or output.is_relative_to(matrix_path)):
        raise ValueError('Separate owned native matrix and formal experiment output required')
    native = json.loads((matrix_path / 'result.json').read_text(encoding='utf-8'))
    if (native['passed'] is not True or native['completed_rounds'] != 36
            or native['process_epoch'] != epoch or native['database'].lower() != manifest['database'].lower()
            or {row['recipe'] for row in native['fixtures']} != {'base', 'extended', 'mixed'}):
        raise ValueError('Complete same-instance native prerequisite matrix required')
    input_hashes = lambda: {str(p.relative_to(matrix_path)): service.digest(p.read_bytes())
                           for p in matrix_path.rglob('*') if p.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT / 'scripts' / name for name in
               ('bde_class_creation_tool_matrix.py', 'bde_class_creation_tool_experiment.py',
                'bd_class_creation.py', 'bd_class_tools.py', 'bde_tool_client.py')]
    source_hashes = lambda: {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    result = {'passed': False, 'full_delivery': False, 'business_writes': False,
        'scope': 'actual formal Doge creation/diff/idempotency/conflict/inverse across three fixtures and four primitive types',
        'bulk_write': args.bulk_write, 'query_cache': args.query_cache,
        'batch_observation': args.batch_observation,
        'configuration_guard': args.configuration_guard,
        'manifest': str(args.manifest.resolve()), 'process_epoch': epoch, 'database': manifest['database'],
        'expected_rounds': 36, 'completed_rounds': 0, 'created_input_pins': 0, 'cases': [],
        'input_hashes': input_hashes(), 'source_manifest': source_hashes()}

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    save()
    try:
        for fixture in native['fixtures']:
            for model_type in MODEL_TYPES:
                recipe = fixture['recipe']
                live_manifest(args.manifest)
                case = output / (recipe + '-' + model_type)
                command = [sys.executable, str(service.ROOT / 'scripts/bde_class_creation_tool_experiment.py'),
                    '--manifest', str(args.manifest.resolve()), '--fixture', fixture['fixture'],
                    '--baseline', str(matrix_path / (recipe + '-' + model_type) / 'study-2.json'),
                    '--selector', str(matrix_path / (recipe + '-' + model_type + '-selector.json')),
                    '--repeats', '3', '--output', str(case), *(['--bulk-write'] if args.bulk_write else []),
                    *(['--query-cache'] if args.query_cache else []),
                    *(['--batch-observation'] if args.batch_observation else []),
                    *(['--configuration-guard'] if args.configuration_guard else [])]
                print(json.dumps({'recipe': recipe, 'model_type': model_type, 'stage': 'start'}), flush=True)
                process = subprocess.run(command, cwd=service.ROOT, capture_output=True, timeout=360)
                report = json.loads((case / 'result.json').read_text(encoding='utf-8'))
                row = {'recipe': recipe, 'model_type': model_type, 'command': command,
                       'exit_code': process.returncode, 'passed': report.get('passed') is True,
                       'artifact': str(case / 'result.json'), 'stdout': process.stdout.decode(errors='replace'),
                       'stderr': process.stderr.decode(errors='replace')}
                result['cases'].append(row)
                save()
                if (process.returncode or not row['passed'] or len(report['rounds']) != 3
                        or report['bulk_write'] is not args.bulk_write or report['query_cache'] is not args.query_cache
                        or report['batch_observation'] is not args.batch_observation
                        or report['configuration_guard'] is not args.configuration_guard):
                    raise ValueError('Formal creation case failed; inspect exact WAL/current state before further writes')
                for round_row in report['rounds']:
                    if (round_row.get('passed') is not True or round_row['outstanding'] is not False
                            or round_row['complete_baseline_equal'] is not True
                            or round_row['native_conflict']['model_setters_called'] != 0):
                        raise ValueError('Formal case lacks complete restoration/live conflict proof')
                    result['completed_rounds'] += 1
                    result['created_input_pins'] += round_row['creation_effects']['created_input_pins']
                save()
                print(json.dumps({'recipe': recipe, 'model_type': model_type, 'stage': 'passed',
                                  'completed_rounds': result['completed_rounds']}), flush=True)
        result['passed'] = result['completed_rounds'] == result['expected_rounds']
    except Exception as error:
        result['error'] = repr(error)
    finally:
        result['inputs_unchanged'] = input_hashes() == result['input_hashes']
        result['source_drift'] = [name for name, digest in source_hashes().items()
                                if digest != result['source_manifest'][name]]
        result['passed'] = result['passed'] and result['inputs_unchanged'] and not result['source_drift']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'completed_rounds', 'created_input_pins', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
