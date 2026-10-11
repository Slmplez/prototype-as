"""Independently recheck exact CURRENT primitive plans and ready classifications."""
import argparse
from collections import Counter
import json
from pathlib import Path
import subprocess
import sys

import bd_class_tools as tools
import bd_service as service
from bd_class_current_execution import inspect_ready_classification
from bd_class_study_journal import read_events


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--private-capture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    require(output.is_relative_to(service.ROOT / 'analysis/bde-experiments'), 'Owned separate output required')
    output.mkdir(parents=True, exist_ok=False)
    helper = service.ROOT / 'scripts/bde_current_identity_summary.py'
    command = [sys.executable, str(helper), '--execution-preflight', '--offline', str(args.offline),
               '--output', str(output / 'full-baseline-proof')]
    for experiment in args.experiment:
        command += ['--experiment', str(experiment)]
    checked = subprocess.run(command, capture_output=True, text=True, encoding='utf-8', timeout=45)
    require(checked.returncode == 0, 'Complete source/WAL/baseline audit failed: ' + checked.stderr)
    baseline = tools.load(output / 'full-baseline-proof/result.json')
    rows, kinds, recipes = [], Counter(), set()
    for experiment in args.experiment:
        trial = tools.load(experiment / 'result.json')
        recipes.add(trial['recipe'])
        publication = experiment / 'model-publication-0'
        raw = tools.load(publication / 'raw.json')
        current = tools.load(publication / 'expected.json')
        journal = read_events(publication / 'model-publication.wal')
        prepared = journal[1]['payload']['owners']
        token = journal[0]['payload']['token']
        proof = inspect_ready_classification(raw, token, current, prepared)
        require(proof == tools.load(publication / 'current-classification-proof.json')
                == trial['rounds'][0]['model_publication']['current_classification'],
                'Ready classification summary differs from independently verified actual values')
        for owner in raw['current_execution_preflight']:
            kinds.update(step['kind'] for step in owner['forward_plan'])
        rows.append({'experiment': str(experiment.resolve()), 'classification': proof})
    require(recipes == {'base', 'mixed'}, 'Both base and third-level mixed recipes required')
    capture = tools.load(args.private_capture / 'result.json')
    native = tools.load(args.private_capture / 'raw.json')
    private = capture['private_capture']
    require(capture['passed'] is True and capture['mode'] == 'private_capture'
            and capture['process_epoch'] == baseline['trials'][0]['process_epoch']
            and capture['source_drift'] == [] and capture['origin_unchanged'] is True
            and capture['dependency_unchanged'] is True and capture['new_assertion_count'] == 0
            and native['full_native_fields_equal'] is True
            and native['full_native_fields_before'] == native['full_native_fields_after']
            and native['model_setters_called'] == 0 and native['dirty_before'] == native['dirty_after'] == 0
            and private['passed'] is True and private['assertions'] == 94
            and len(private['cases']) == len(set(private['cases'])) == 94
            and private['collection_kinds'] == ['OrderedCollection', 'Array', 'Dictionary',
                                               'IdentityDictionary', 'Set', 'IdentitySet']
            and all(service.digest((service.ROOT / 'scripts' / name).read_bytes()) == digest
                    for name, digest in capture['source_manifest'].items()),
            'Current-source private export checks and full live-field equality required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Setter-free exact CURRENT plan and ready-state classification; private diff export only',
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0,
        'source_sha256': service.digest(Path(__file__).read_bytes()),
        'baseline_helper_sha256': service.digest(helper.read_bytes()),
        'baseline_proof': str((output / 'full-baseline-proof/result.json').resolve()),
        'offline_sources_verified': baseline['offline_sources_verified'],
        'execution_totals': baseline['execution_totals'], 'primitive_kinds': dict(kinds),
        'classifications': rows,
        'complete_source_classifications_verified': sum(row['classification']['complete_sources_verified'] for row in rows),
        'private_capture': {'path': str(args.private_capture.resolve()), 'assertions': 94,
                            'full_live_fields_equal': True, 'model_setters_called': 0},
        'not_verified': ['actual CURRENT primitive/store dispatch and partial recovery',
                         'production Class local inverse', 'post-store native identity',
                         'native fault/transport/restart recovery',
                         'remaining types/families/UI/FLOW/AEB_Core/package',
                         'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    tools.write(output / 'result.json', result)
    print(json.dumps({'passed': True, 'execution_totals': result['execution_totals'],
                      'primitive_kinds': result['primitive_kinds'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
