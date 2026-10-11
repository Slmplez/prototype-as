"""Independently recheck pre-native CURRENT quarantine and full recovery evidence."""
import argparse
import json
from pathlib import Path

import bd_class_tools as tools
import bd_service as service
from bd_class_current_prefix import inspect_current_prefix
from bd_class_model_publication import stable_observation
from bd_class_study_journal import read_events


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('trial', 'recovery', 'cleanup', 'audit'):
        parser.add_argument('--' + name, type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--safety', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    inputs = [*args.trial, *args.recovery, *args.cleanup, *args.audit, args.offline, args.safety]
    require(all(path.resolve().is_relative_to(owned) for path in [*inputs, args.output])
            and all(not args.output.resolve().is_relative_to(path.resolve()) for path in inputs),
            'Separate owned CURRENT protocol summary required')
    lengths = [len(getattr(args, key)) for key in ('trial', 'recovery', 'cleanup', 'audit')]
    require(len(set(lengths)) == 1 and lengths[0] >= 2, 'Paired base and deep protocol evidence required')
    offline = tools.load(args.offline / 'result.json')
    require(offline['passed'] is True and all(row['exit_code'] == 0 for row in offline['checks']),
            'Complete current offline contracts required')
    for path, digest in offline['source_manifest'].items():
        require(service.digest((service.ROOT / path).read_bytes()) == digest, 'Current offline source drift: ' + path)
    safety = tools.load(args.safety / 'result.json')
    require(safety['passed'] is True and safety['original_record_file_count'] == 29 and safety['restored'] is False
            and safety['original_files_unchanged'] is True and safety['hold_unchanged'] is True
            and safety['model_setters_called'] == safety['cebra_connections'] == 0,
            'Original AEB_1 recovery files and hold must remain unchanged')
    trials = []
    for trial_path, recovery_path, cleanup_path, audit_path in zip(args.trial, args.recovery, args.cleanup, args.audit):
        trial = tools.load(trial_path / 'result.json')
        trial_sources = {name.replace('\\', '/'): digest for name, digest in trial['source_manifest'].items()}
        raw = tools.load(trial_path / 'model-publication-0/raw.json')
        require(trial['passed'] is False and not trial['source_drift'] and trial['inputs_unchanged'] is True
                and trial['new_assertion_count'] == 0 and raw['current_execution_study'] is True
                and raw['model_publication_outstanding'] is True and raw['model_mutation_dispatched'] is False
                and 'Injected Class journal fault before native' in raw['error'],
                'Exact pre-native CURRENT fault must remain failed and retain its quarantine')
        events = read_events(raw['model_publication_journal'])
        require(len(events) == 4 and events[-1]['kind'] == 'step_started'
                and events[-1]['payload']['command'] == 'signature_arguments',
                'A pre-native fault must not have a mutation completion or later dispatch')
        for name in tools.SOURCES:
            require(trial_sources['scripts/' + name] == service.digest((service.ROOT / 'scripts' / name).read_bytes()),
                    'CURRENT native execution source drift: ' + name)
        recovery = tools.load(recovery_path / 'result.json')
        classified = tools.load(recovery_path / 'classify-raw.json')
        recovered = tools.load(recovery_path / 'recover-raw.json')
        require(recovery['passed'] is True and recovery['complete_current_restored'] is True
                and recovery['original_experiment_files_unchanged'] is True and not recovery['source_drift']
                and classified['current_execution_origin_sha256'] == service.digest((trial_path / 'model-publication-0/raw.json').read_bytes())
                and classified['model_mutation_dispatched'] is False and classified['model_setters_called'] == 0,
                'CURRENT fresh read-only classification and separate physical recovery must bind the original bytes')
        initial = inspect_current_prefix(raw, events, classified['model_publication_classification'],
                                         classified['current_execution_classifications'])
        final = recovered['current_execution_recovered_classification']
        recovery_events = read_events(recovered['current_execution_recovery_journal'])
        intent = recovery_events[0]['payload']
        require(intent['origin_raw_sha256'] == classified['current_execution_origin_sha256']
                and intent['origin_journal_checksum'] == events[-1]['checksum'],
                'Separate recovery intent must bind the exact original bytes and physical WAL checksum')
        proof = inspect_current_prefix(raw, events, final['publication'], final['owners'], recovery_events=recovery_events)
        require(initial['unknown_native_action_completed'] is False and initial['confirmed_dispatches'] == 0
                and initial['state']['phase'] == 'ready' and initial['state']['model_steps'] == 0
                and proof['terminal'] is True and proof['recovery_dispatches'] == 1 and proof['state']['model_steps'] == 0
                and recovered['model_setters_called'] == 0 and recovered['model_mutation_dispatched'] is False
                and stable_observation(recovered['current_execution_recovered']) == events[0]['payload']['current_observation'],
                'Untouched CURRENT recovery must prove every full native/public/source/configuration baseline with zero setters')
        cleanup = tools.load(cleanup_path / 'result.json')
        absence = tools.load(audit_path / 'result.json')
        require(cleanup['passed'] is True and cleanup['complete_original_baseline_restored'] is True
                and not cleanup['original_changed_files'] and absence['passed'] is True
                and absence['all_candidates_absent'] is True and absence['all_retained_material_absent'] is True
                and absence['model_publication_status']['state'] == 'absent'
                and absence['original_experiment_files_unchanged'] is True,
                'Ordinary/Class original baselines and fresh temporary-record absence must be verified separately')
        trials.append({'trial': str(trial_path.resolve()), 'recipe': trial['recipe'],
            'owners_verified': len(initial['state']['owners']), 'unknown_original_native_action_completed': False,
            'recovery_dispatches': 1, 'CURRENT_model_setters_called': 0, 'full_current_restored': True,
            'complete_original_baseline_restored': True, 'temporary_records_absent': True,
            'recovery_request_frames': recovery['recover']['request']['frames'],
            'recovery_request_bytes': recovery['recover']['request']['bytes'],
            'trial_driver_source_changed_since_recording': trial_sources['scripts/bde_class_independent_edit_experiment.py']
                != service.digest((service.ROOT / 'scripts/bde_class_independent_edit_experiment.py').read_bytes())})
    require({row['recipe'] for row in trials} == {'base', 'mixed'}, 'Base and deep mixed recovery required')
    result = {'passed': True, 'full_delivery': False,
              'scope': 'Actual pre-native CURRENT classification/metadata recovery; no actual CURRENT setters or stores',
              'trials': trials, 'total_owners_verified': sum(row['owners_verified'] for row in trials),
              'summary_cebra_connections': 0, 'summary_model_setters_called': 0,
              'offline_source_hashes_verified': len(offline['source_manifest']),
              'original_AEB_1_restored': False, 'production_executor_available': False,
              'not_verified': ['actual CURRENT primitive/store/inverse execution', 'unaccounted action reconciliation',
                               'unknown release and recovery-WAL interruption', 'process restart',
                               'production Class local inverse', 'types/families/UI/FLOW/AEB_Core/package',
                               'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    args.output.mkdir(parents=True, exist_ok=False)
    tools.write(args.output / 'result.json', result)
    print(json.dumps({'passed': True, 'total_owners_verified': result['total_owners_verified'],
                      'CURRENT_model_setters_called': 0, 'full_delivery': False}))


if __name__ == '__main__':
    main()
