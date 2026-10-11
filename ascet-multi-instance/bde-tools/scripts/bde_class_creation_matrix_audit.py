"""Independently read completed Class matrix fixtures; never repeat creation or inverse."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys

import bd_service as service
from bd_class_study_journal import read_events, verify_restored_observation
from bde_class_creation_partial_recovery import complete_restoration
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    source, output = args.matrix.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not source.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(source):
        raise ValueError('Separate owned matrix/audit evidence required')
    matrix = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    if (matrix.get('passed') is not True or matrix['completed_rounds'] != 36 or matrix['expected_rounds'] != 36
            or matrix['process_epoch'] != epoch or matrix['database'].lower() != manifest['database'].lower()):
        raise ValueError('Complete successful matrix in the same disposable native runtime required')
    hashes = lambda: {str(p.relative_to(source)): service.digest(p.read_bytes()) for p in source.rglob('*') if p.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'scope': 'fresh setter-free complete owner baseline checks for three completed matrix fixtures',
              'full_delivery': False, 'model_setters_called': 0, 'matrix_hashes': hashes(), 'fixtures': [],
              'independent_observation_mode': 'public_oracle'}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    try:
        for fixture in matrix['fixtures']:
            recipe = fixture['recipe']
            case = source / (recipe + '-log')
            study = json.loads((case / 'study-2.json').read_text(encoding='utf-8'))
            journal = case / 'study-2.wal'
            prepared = next(row['payload'] for row in read_events(journal) if row['kind'] == 'prepared_all')
            evidence = output / recipe
            live_manifest(args.manifest)
            process = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_class_interface_study.py'),
                '--manifest', str(args.manifest.resolve()), '--fixture', fixture['fixture'], '--observe',
                '--repeats', '1', '--output', str(evidence)], cwd=service.ROOT, capture_output=True, timeout=120,
                env={**os.environ, 'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle', 'ASCET_BD_CLASS_QUERY_CACHE': '0'})
            report = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
            observation = json.loads((evidence / 'study-0.json').read_text(encoding='utf-8'))
            row = {'recipe': recipe, 'artifact': str(evidence / 'result.json'), 'exit_code': process.returncode,
                   'stdout': process.stdout.decode(errors='replace'), 'stderr': process.stderr.decode(errors='replace')}
            result['fixtures'].append(row)
            save()
            if process.returncode or report.get('passed') is not True:
                raise ValueError('Fresh complete native/public observation failed')
            if (observation.get('public_graph_strategy') != 'public_oracle'
                    or observation.get('fixed_read_template_cache') is not False
                    or observation.get('fixed_observation_batch') is not False
                    or observation.get('native_configuration_guard') is not False):
                raise ValueError('Independent audit did not use uncached per-field public getters')
            row['native_journal_proof'] = verify_restored_observation(journal, study, observation)
            complete = complete_restoration(observation, prepared)
            row.update(complete_original_values_equal=True, owners=len(complete['owners']),
                       scopes=sum(len(owner['scopes']) for owner in complete['owners']))
            live_manifest(args.manifest)
            save()
        result['passed'] = len(result['fixtures']) == 3
    except Exception as error:
        result['error'] = repr(error)
    finally:
        result['matrix_files_unchanged'] = hashes() == result['matrix_hashes']
        result['passed'] = result['passed'] and result['matrix_files_unchanged']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'matrix_files_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
