"""Independently audit same-epoch CURRENT release outcomes and zero-dispatch reconciliation."""
import argparse
import json
from pathlib import Path

import bd_class_tools as tools
import bd_service as service
from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import recovery_intent
from bd_class_model_publication import stable_observation
from bd_class_study_journal import read_events


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--case', type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--safety', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    require(len(args.case) >= 2 and all(path.resolve().is_relative_to(owned)
        for path in [*args.case, args.offline, args.safety, args.output]), 'Owned ready/deep release evidence required')
    offline, safety = tools.load(args.offline / 'result.json'), tools.load(args.safety / 'result.json')
    require(offline['passed'] is True and all(row['exit_code'] == 0 for row in offline['checks']),
        'Current offline contracts must pass')
    for path, digest in offline['source_manifest'].items():
        require(service.digest((service.ROOT / path).read_bytes()) == digest, 'Current source drift: ' + path)
    require(safety['passed'] is True and safety['restored'] is False and safety['original_record_file_count'] == 29
        and safety['original_files_unchanged'] is True and safety['hold_unchanged'] is True
        and safety['cebra_connections'] == safety['model_setters_called'] == 0, 'Original AEB_1 hold/evidence changed')
    cases, boundaries = [], []
    for case_path in args.case:
        case = tools.load(case_path)
        trial_path = (service.ROOT / case['trial']).resolve()
        paths = [trial_path, *((service.ROOT / row['directory']).resolve() for row in case['recoveries']),
            (service.ROOT / case['cleanup']).resolve(), (service.ROOT / case['audit']).resolve()]
        require(all(path.is_relative_to(owned) and not args.output.resolve().is_relative_to(path) for path in paths),
            'Separate owned release inputs/output required')
        trial, origin = tools.load(trial_path / 'result.json'), tools.load(trial_path / 'model-publication-0/raw.json')
        origin_path = trial_path / 'model-publication-0/raw.json'
        require(trial['passed'] is False and trial['inputs_unchanged'] is True and trial['new_assertion_count'] == 0
            and origin['model_publication_outstanding'] is True and origin['outstanding'] is True,
            'Original controlled fault must remain failed and quarantined')
        expected_fault = 'Injected Class journal fault before native' if case['original_fault'] == 'before_native' else \
            'Injected CURRENT primitive fault after native action before accounting'
        require(expected_fault in origin['error'], 'Original fault differs from its recorded scope')
        events, history, bindings, prefixes = read_events(origin['model_publication_journal']), [], [], []
        for index, recovery in enumerate(case['recoveries']):
            directory = (service.ROOT / recovery['directory']).resolve()
            result, classified = tools.load(directory / 'result.json'), tools.load(directory / 'classify-raw.json')
            raw = tools.load(directory / 'recover-raw.json')
            require(classified['status'] == 'current_execution_classified' and classified['model_setters_called'] == 0
                and classified['model_mutation_dispatched'] is False
                and classified['current_execution_origin_sha256'] == service.digest(origin_path.read_bytes())
                and result['original_experiment_files_unchanged'] is True and not result['source_drift'],
                'Fresh read-only classification or immutable-original/source proof differs')
            prefix = inspect_current_prefix(origin, events, classified['model_publication_classification'],
                classified['current_execution_classifications'], recovery_events=history)
            prefixes.append(prefix)
            journal = read_events(raw['current_execution_recovery_journal'])
            intent = journal[0]['payload']
            expected = recovery_intent(origin, events, classified['model_publication_classification'],
                classified['current_execution_classifications'], recovery_events=history)
            require(all(intent.get(key) == value for key, value in expected.items())
                and intent['origin_raw_sha256'] == service.digest(origin_path.read_bytes())
                and intent['origin_journal_checksum'] == events[-1]['checksum']
                and intent['recovery_history'] == bindings and intent['recovery_head_required'] is True,
                'Recovery intent does not bind its complete fresh state and every predecessor')
            if index:
                require(result['prior_recovery_files_unchanged'] is True, 'A prior failed release WAL was modified')
                boundary = case['recoveries'][index - 1]['event']
                completed = boundary == 'step_completed'
                require(prefix['unknown_step'].endswith('/release')
                    and prefix['unknown_native_action_completed'] is completed
                    and prefix['state']['release_completed'] is completed,
                    'Fresh evidence did not uniquely classify the actual release boundary')
                boundaries.append({'recipe': trial['recipe'], 'event': boundary, 'native_release_completed': completed})
            last = index == len(case['recoveries']) - 1
            require(result['passed'] is last, 'Only separate final reconciliation can be successful')
            if not last:
                expected_error = 'Injected Class journal fault before native' if recovery['event'] == 'before_native' else \
                    'Injected Class journal write failure before step_completed'
                require(raw['status'] == 'error' and raw['outstanding'] is True
                    and raw['model_publication_outstanding'] is True and expected_error in raw['error']
                    and journal[-1]['kind'] == 'step_started' and journal[-1]['payload']['command'] == 'release',
                    'Controlled failed release boundary is not preserved exactly')
            history.extend(journal)
            bindings.append({'journal': raw['current_execution_recovery_journal'], 'checksum': journal[-1]['checksum'],
                'intent_checksum': journal[0]['checksum'], 'event_count': len(journal)})
        final = raw['current_execution_recovered_classification']
        proof = inspect_current_prefix(origin, events, final['publication'], final['owners'], recovery_events=history)
        require(proof['terminal'] is True and proof['latest_recovery_dispatches'] == 0
            and raw['model_setters_called'] == 0 and raw['model_mutation_dispatched'] is False
            and raw['current_execution_release_reconciled_without_dispatch'] is True
            and [row['kind'] for row in journal] == ['intent', 'release_reconciled', 'finished']
            and result['complete_current_restored'] is True
            and stable_observation(raw['current_execution_recovered']) == events[0]['payload']['current_observation']
            and final['publication']['publication_record_present'] is False
            and final['publication']['release_witness_verified'] is True,
            'Final metadata reconciliation lacks fresh full restoration or resent the physical release')
        cleanup, audit = tools.load(paths[-2] / 'result.json'), tools.load(paths[-1] / 'result.json')
        require(cleanup['passed'] is True and cleanup['complete_original_baseline_restored'] is True
            and cleanup['original_changed_files'] == [] and audit['passed'] is True
            and audit['all_candidates_absent'] is True and audit['all_retained_material_absent'] is True
            and audit['model_publication_status']['state'] == 'absent'
            and audit['original_experiment_files_unchanged'] is True, 'Original cleanup/fresh absence proof differs')
        cases.append({'recipe': trial['recipe'], 'phase_at_release': prefixes[-1]['state']['phase'],
            'owners_verified': len(proof['state']['owners']), 'recovery_segments': proof['recovery_segments'],
            'confirmed_recovery_dispatches': proof['recovery_dispatches'], 'model_steps': proof['state']['model_steps'],
            'final_reconciliation_dispatches': 0, 'final_reconciliation_model_setters': 0,
            'final_reconciliation_request_frames': result['recover']['request']['frames'],
            'complete_current_and_original_restored': True, 'temporary_records_absent': True})
    require({row['phase_at_release'] for row in cases} == {'ready', 'restored'}
        and {row['recipe'] for row in cases} == {'base', 'mixed'}
        and {row['event'] for row in boundaries} == {'before_native', 'step_completed'},
        'Actual ready/restored, base/deep and both release outcomes required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Same-epoch isolated release pre-native failure/completion loss and fresh zero-dispatch reconciliation',
        'cases': cases, 'release_boundaries': boundaries,
        'total_owners_verified': sum(row['owners_verified'] for row in cases),
        'offline_source_hashes_verified': len(offline['source_manifest']),
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0, 'original_AEB_1_restored': False,
        'not_verified': ['native stale-witness/inside-release failure matrix', 'inside-setter failure',
            'real disconnect/restart', 'production Class local inverse', 'remaining types/families/UI/FLOW/AEB_Core/package',
            'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    args.output.mkdir(parents=True, exist_ok=False)
    tools.write(args.output / 'result.json', result)
    print(json.dumps({'passed': True, 'total_owners_verified': result['total_owners_verified'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
