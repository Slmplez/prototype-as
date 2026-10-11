"""Independently recheck every immutable CURRENT recovery segment and final baseline."""
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
        for path in [*args.case, args.offline, args.safety, args.output]), 'Owned base/deep chain evidence required')
    offline, safety = tools.load(args.offline / 'result.json'), tools.load(args.safety / 'result.json')
    require(offline['passed'] is True and all(row['exit_code'] == 0 for row in offline['checks']),
            'Current offline contracts must pass')
    for path, digest in offline['source_manifest'].items():
        require(service.digest((service.ROOT / path).read_bytes()) == digest, 'Current source drift: ' + path)
    require(safety['passed'] is True and safety['restored'] is False and safety['original_record_file_count'] == 29
            and safety['original_files_unchanged'] is True and safety['hold_unchanged'] is True
            and safety['cebra_connections'] == safety['model_setters_called'] == 0, 'Original recovery evidence/hold differs')
    cases = []
    for case_path in args.case:
        case = tools.load(case_path)
        paths = {key: (service.ROOT / case[key]).resolve() for key in ('trial', 'cleanup', 'audit')}
        recoveries = [(service.ROOT / row['directory']).resolve() for row in case['recoveries']]
        require(all(path.is_relative_to(owned) and not args.output.resolve().is_relative_to(path)
            for path in [*paths.values(), *recoveries]), 'Separate owned chain paths required')
        trial = tools.load(paths['trial'] / 'result.json')
        raw_path = paths['trial'] / 'model-publication-0/raw.json'
        origin = tools.load(raw_path)
        require(trial['passed'] is False and origin['model_publication_outstanding'] is True
            and 'fault after native action before accounting' in origin['error'], 'Original actual fault must remain failed')
        original_events = read_events(origin['model_publication_journal'])
        history, bindings, prefixes, journals = [], [], [], []
        for index, path in enumerate(recoveries):
            result, classified = tools.load(path / 'result.json'), tools.load(path / 'classify-raw.json')
            raw = tools.load(path / 'recover-raw.json')
            require(classified['status'] == 'current_execution_classified'
                and classified['model_setters_called'] == 0 and classified['model_mutation_dispatched'] is False
                and classified['current_execution_origin_sha256'] == service.digest(raw_path.read_bytes())
                and result['original_experiment_files_unchanged'] is True and not result['source_drift'],
                'Read-only classification or immutable original proof differs')
            prefix = inspect_current_prefix(origin, original_events, classified['model_publication_classification'],
                classified['current_execution_classifications'], recovery_events=history)
            prefixes.append(prefix)
            journal = read_events(raw['current_execution_recovery_journal'])
            intent = journal[0]['payload']
            expected = recovery_intent(origin, original_events, classified['model_publication_classification'],
                classified['current_execution_classifications'], recovery_events=history)
            require(all(intent.get(key) == value for key, value in expected.items())
                and intent['origin_raw_sha256'] == service.digest(raw_path.read_bytes())
                and intent['origin_journal_checksum'] == original_events[-1]['checksum']
                and intent['recovery_history'] == bindings and intent['recovery_head_required'] is True,
                'Recovery intent does not bind all exact chronological previous journals')
            if index:
                require(result['prior_recovery_files_unchanged'] is True, 'A previous failed recovery was rewritten')
            last = index == len(recoveries) - 1
            require(result['passed'] is last, 'Only the final completed recovery is successful')
            if not last:
                expected_fault = case['recoveries'][index]
                require(raw['status'] == 'error' and raw['outstanding'] is True
                    and raw['model_publication_outstanding'] is True and journal[-1]['kind'] == 'step_started'
                    and journal[-1]['payload']['command'] == expected_fault['command']
                    and ('Injected Class journal fault before native' if expected_fault['event'] == 'before_native'
                         else 'Injected Class journal write failure before step_completed') in raw['error'],
                    'Failed recovery does not retain the exact requested unknown boundary')
            history.extend(journal)
            bindings.append({'journal': raw['current_execution_recovery_journal'], 'checksum': journal[-1]['checksum'],
                'intent_checksum': journal[0]['checksum'], 'event_count': len(journal)})
            journals.append(journal)
        final = raw['current_execution_recovered_classification']
        proof = inspect_current_prefix(origin, original_events, final['publication'], final['owners'], recovery_events=history)
        require(proof['terminal'] is True and proof['recovery_segments'] == len(recoveries)
            and result['complete_current_restored'] is True
            and raw['model_setters_called'] == proof['state']['model_steps'] - prefixes[-1]['state']['model_steps']
            and stable_observation(raw['current_execution_recovered']) == original_events[0]['payload']['current_observation'],
            'Final chain lacks complete physical/public/source/configuration restoration')
        boundaries = []
        for index, prefix in enumerate(prefixes[1:]):
            boundary = case['recoveries'][index]
            require(prefix['unknown_native_action_completed'] is (boundary['event'] == 'step_completed'),
                'Actual completion loss or untouched dispatch was not uniquely classified')
            boundaries.append({'command': boundary['command'], 'event': boundary['event'],
                'native_completed': prefix['unknown_native_action_completed'],
                'model_steps_before': prefixes[index]['state']['model_steps'], 'model_steps_after': prefix['state']['model_steps']})
        cleanup, audit = tools.load(paths['cleanup'] / 'result.json'), tools.load(paths['audit'] / 'result.json')
        require(cleanup['passed'] is True and cleanup['complete_original_baseline_restored'] is True
            and cleanup['original_changed_files'] == [] and audit['passed'] is True
            and audit['all_candidates_absent'] is True and audit['all_retained_material_absent'] is True
            and audit['model_publication_status']['state'] == 'absent'
            and audit['original_experiment_files_unchanged'] is True, 'Original cleanup/fresh absence proof differs')
        omission = None
        if case.get('omission'):
            omission = tools.load((service.ROOT / case['omission']) / 'result.json')
            require(omission['passed'] is True and omission['exit_code'] != 0
                and 'Supply every prior recovery including the current quarantine head' in omission['stderr'],
                'Omitted recovery head was not refused before invocation')
        cases.append({'recipe': trial['recipe'], 'owners_verified': len(proof['state']['owners']),
            'recovery_segments': len(recoveries), 'unknown_boundaries': boundaries,
            'original_model_steps': prefixes[0]['state']['model_steps'], 'final_model_steps': proof['state']['model_steps'],
            'confirmed_recovery_dispatches': proof['recovery_dispatches'],
            'latest_recovery_dispatches': proof['latest_recovery_dispatches'],
            'complete_current_and_original_restored': True, 'temporary_records_absent': True,
            'omitted_head_refused': omission is not None})
    require({row['recipe'] for row in cases} == {'base', 'mixed'}, 'Actual base/deep chain coverage required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Same-epoch recovery-WAL completion loss and pre-native failure at the recorded exact boundaries',
        'cases': cases, 'total_owners_verified': sum(row['owners_verified'] for row in cases),
        'offline_source_hashes_verified': len(offline['source_manifest']),
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0, 'original_AEB_1_restored': False,
        'not_verified': ['unknown release', 'other native failure boundaries', 'inside-setter failure', 'real disconnect/restart',
            'unfaulted complete CURRENT cycle', 'production Class local inverse', 'types/families/UI/FLOW/AEB_Core/package',
            'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    args.output.mkdir(parents=True, exist_ok=False)
    tools.write(args.output / 'result.json', result)
    print(json.dumps({'passed': True, 'total_owners_verified': result['total_owners_verified'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
