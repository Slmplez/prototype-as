"""Recheck full scoped baselines and shared private inverse evidence without Cebra."""
import argparse
import json
from pathlib import Path
import subprocess
import sys

import bd_class_tools as tools
import bd_service as service
from bd_class_current_inverse import inspect_collateral_inverse, inspect_primitive_inverse


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--private-inverse', type=Path, required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    inputs = [path.resolve() for path in [*args.experiment, args.private_inverse, args.offline]]
    require(output.is_relative_to(owned) and all(path.is_relative_to(owned)
            and not output.is_relative_to(path) for path in inputs), 'Separate owned inputs/output required')
    output.mkdir(parents=True, exist_ok=False)
    command = [sys.executable, str(service.ROOT / 'scripts/bde_current_identity_summary.py'),
               '--execution-preflight', '--offline', str(args.offline), '--output', str(output / 'baseline-proof')]
    for experiment in args.experiment:
        command += ['--experiment', str(experiment)]
    checked = subprocess.run(command, capture_output=True, text=True, encoding='utf-8', timeout=45)
    require(checked.returncode == 0, 'Independent full source/WAL/baseline proof failed: ' + checked.stderr)
    baseline = tools.load(output / 'baseline-proof/result.json')
    prepared = []
    recipes = set()
    for experiment in args.experiment:
        trial = tools.load(experiment / 'result.json')
        recipes.add(trial['recipe'])
        raw = tools.load(experiment / 'model-publication-0/raw.json')
        for row in raw['current_execution_preflight']:
            count = inspect_primitive_inverse(row['forward_plan'], row['inverse_plan'])
            require(row['inverse_plan_sealed'] is True and row['store_inverse_plans_sealed'] is True
                    and row['publish_store_undo_plan'] == row['restore_store_undo_plan'] == [],
                    'Preparation contains store effects or lacks its complete sealed inverse')
            prepared.append({'experiment': str(experiment.resolve()), 'oid': row['oid'], 'inverse_effects': count})
    require(recipes == {'base', 'mixed'}, 'Base and deep native binding experiments required')
    private = tools.load(args.private_inverse / 'result.json')
    raw = tools.load(args.private_inverse / 'raw.json')
    proof = raw['private_inverse']
    require(private['passed'] is True and private['mode'] == 'private_inverse' and not private['source_drift']
            and private['origin_unchanged'] is True and private['new_assertion_count'] == 0
            and private['process_epoch'] == baseline['trials'][0]['process_epoch']
            and raw['full_native_fields_before'] == raw['full_native_fields_after']
            and raw['full_native_fields_equal'] is True and raw['dirty_before'] == raw['dirty_after'] == 0
            and raw['model_setters_called'] == 0 and proof['passed'] is True
            and proof['live_native_unchanged'] is True and proof['model_setters_called'] == 0
            and proof['production_executor_available'] is False,
            'Actual shared private inverse/live-field bookends do not agree')
    require(all(service.digest((service.ROOT / 'scripts' / name).read_bytes()) == digest
                for name, digest in private['source_manifest'].items()), 'Private inverse source drift')
    kinds = ['OrderedCollection', 'Array', 'Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet', 'Point']
    require([trial['native_class'] for trial in proof['trials']] == kinds, 'Private inverse type coverage differs')
    expected_cases = {'all-private-native-fields-restored', 'original-complete-seal', 'live-root-source-connector-unchanged',
                      'Point/exact-field-inverse', 'Point/full-native-restore'}
    audited = []
    for trial, expected_steps in zip(proof['trials'], (2, 2, 3, 3, 2, 2, 1)):
        kind = trial['native_class']
        prefix = 'undo_restore_store/' if kind == 'Point' else 'undo_publish_store/'
        report = inspect_collateral_inverse(trial['collateral_changes'], trial['inverse_plan'], prefix,
                                            trial['actual_inverse_changes'])
        require(report['inverse_steps_verified'] == expected_steps and trial['full_native_restored'] is True,
                'Native private inverse has missing steps or an unrestored full baseline')
        audited.append({'native_class': kind, **report})
        if kind != 'Point':
            expected_cases.update(kind + '/' + suffix for suffix in ('complete-collateral', 'dynamic-plan',
                'projected-full-restore', 'full-native-restore', 'original-seal'))
            expected_cases.update(kind + '/exact-step/' + str(index) for index in range(1, expected_steps + 1))
    require(len(proof['cases']) == len(set(proof['cases'])) == proof['assertions'] == len(expected_cases)
            and set(proof['cases']) == expected_cases and audited == private['independent_inverse_audits'],
            'Actual native private assertions or independent effects differ')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Shared private collateral inverse and prepared live inverse plans; not actual CURRENT stores',
        'source_sha256': service.digest(Path(__file__).read_bytes()), 'summary_cebra_connections': 0,
        'summary_model_setters_called': 0, 'baseline_proof': str((output / 'baseline-proof/result.json').resolve()),
        'offline_sources_verified': baseline['offline_sources_verified'], 'prepared_owners': prepared,
        'prepared_inverse_effects': sum(row['inverse_effects'] for row in prepared),
        'private_inverse': str(args.private_inverse.resolve()), 'native_private_assertions': proof['assertions'],
        'native_private_inverse_steps': sum(row['inverse_steps_verified'] for row in audited), 'audits': audited,
        'not_verified': ['actual CURRENT primitive/store/inverse dispatch', 'complete inverse physical WAL',
            'unaccounted reconciliation and physical recovery', 'live store collateral and post-store identity',
            'production Class local inverse', 'types/families/UI/FLOW/AEB_Core/package',
            'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    tools.write(output / 'result.json', result)
    print(json.dumps({key: result[key] for key in ('passed', 'prepared_inverse_effects',
                                                  'native_private_assertions', 'native_private_inverse_steps')}))


if __name__ == '__main__':
    main()
