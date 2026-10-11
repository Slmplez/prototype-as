"""Recompute scoped after-native CURRENT fault recovery from immutable evidence."""
import argparse
import json
from pathlib import Path

import bd_class_tools as tools
import bd_service as service
from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import inspect_untouched_metadata_retry
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
            'Separate owned summary inputs/output required')
    lengths = [len(getattr(args, key)) for key in ('trial', 'recovery', 'cleanup', 'audit')]
    require(len(set(lengths)) == 1 and lengths[0] >= 3, 'Primitive, store and deep evidence required')
    offline = tools.load(args.offline / 'result.json')
    require(offline['passed'] is True and all(row['exit_code'] == 0 for row in offline['checks']),
            'Current offline contracts must pass')
    for path, digest in offline['source_manifest'].items():
        require(service.digest((service.ROOT / path).read_bytes()) == digest, 'Current offline source drift: ' + path)
    safety = tools.load(args.safety / 'result.json')
    require(safety['passed'] is True and safety['restored'] is False and safety['original_record_file_count'] == 29
            and safety['original_files_unchanged'] is True and safety['hold_unchanged'] is True
            and safety['cebra_connections'] == safety['model_setters_called'] == 0,
            'Original AEB_1 evidence/hold must stay unchanged')
    rows = []
    for trial_path, recovery_path, cleanup_path, audit_path in zip(args.trial, args.recovery, args.cleanup, args.audit):
        trial = tools.load(trial_path / 'result.json')
        raw_path = trial_path / 'model-publication-0/raw.json'
        raw = tools.load(raw_path)
        recovery = tools.load(recovery_path / 'result.json')
        classified = tools.load(recovery_path / 'classify-raw.json')
        recovered = tools.load(recovery_path / 'recover-raw.json')
        require(trial['passed'] is False and raw['current_execution_study'] is True
                and raw['model_publication_outstanding'] is True and raw['model_mutation_dispatched'] is True
                and 'fault after native action before accounting' in raw['error']
                and trial['inputs_unchanged'] is True and trial['new_assertion_count'] == 0,
                'Original controlled after-native fault must stay failed')
        require(recovery['passed'] is True and recovery['complete_current_restored'] is True
                and recovery['original_experiment_files_unchanged'] is True and not recovery['source_drift']
                and classified['model_setters_called'] == 0 and classified['model_mutation_dispatched'] is False
                and classified['current_execution_origin_sha256'] == service.digest(raw_path.read_bytes()),
                'Separate successful recovery must bind a fresh complete read-only classification')
        events = read_events(raw['model_publication_journal'])
        initial = inspect_current_prefix(raw, events, classified['model_publication_classification'],
                                         classified['current_execution_classifications'])
        pending = initial['reconciliation_required']
        require(type(pending) is dict and pending['outcome'] == 'after' and pending['already_accounted'] is False
                and pending['accounting_model_steps'] == 1 and initial['unknown_native_action_completed'] is True,
                'Exact actual unaccounted primitive/store outcome required')
        recovery_events = read_events(recovered['current_execution_recovery_journal'])
        intent = recovery_events[0]['payload']
        require(intent['origin_raw_sha256'] == classified['current_execution_origin_sha256']
                and intent['origin_journal_checksum'] == events[-1]['checksum'], 'Origin checksum binding differs')
        if 'metadata_retry' in intent:
            retry = intent['metadata_retry']
            prior = read_events(retry['journal'])
            checked = inspect_untouched_metadata_retry(raw, events, prior,
                classified['model_publication_classification'], classified['current_execution_classifications'])
            require(prior[-1]['checksum'] == retry['checksum']
                    and all(retry.get(key) == value for key, value in checked.items())
                    and recovery['prior_recovery_files_unchanged'] is True,
                    'Prior first-metadata failure is not unchanged or independently auditable')
        final = recovered['current_execution_recovered_classification']
        proof = inspect_current_prefix(raw, events, final['publication'], final['owners'], recovery_events=recovery_events)
        receipts = recovered['current_execution_recovery_receipts']
        require(receipts[0]['action'] == 'reconcile_action' and receipts[0]['model_setters_called'] == 0
                and recovered['reconciled_original_model_steps'] == 1 and proof['terminal'] is True
                and recovered['model_setters_called'] == proof['state']['model_steps'] - initial['state']['model_steps']
                and stable_observation(recovered['current_execution_recovered']) == events[0]['payload']['current_observation'],
                'Metadata accounting/new inverse cost or complete CURRENT baseline differs')
        cleanup, absence = tools.load(cleanup_path / 'result.json'), tools.load(audit_path / 'result.json')
        require(cleanup['passed'] is True and cleanup['complete_original_baseline_restored'] is True
                and cleanup['original_changed_files'] == [] and absence['passed'] is True
                and absence['all_candidates_absent'] is True and absence['all_retained_material_absent'] is True
                and absence['model_publication_status']['state'] == 'absent'
                and absence['original_experiment_files_unchanged'] is True,
                'Separate ordinary/Class original restoration and fresh temporary-record absence required')
        rows.append({'trial': str(trial_path.resolve()), 'recipe': trial['recipe'], 'kind': pending['kind'],
            'command': pending['original_command'], 'owners_verified': len(initial['state']['owners']),
            'original_source_drift_at_closeout': trial['source_drift'],
            'metadata_reconciliation_setters': 0, 'original_model_steps_accounted': 1,
            'new_recovery_model_steps': recovered['model_setters_called'],
            'recovery_dispatches': proof['recovery_dispatches'], 'full_current_restored': True,
            'full_original_restored': True, 'temporary_records_absent': True,
            'recovery_frames': recovery['recover']['request']['frames'],
            'first_metadata_failure_independently_bound': 'metadata_retry' in intent})
    require({row['kind'] for row in rows} == {'primitive', 'store'} and {row['recipe'] for row in rows} == {'base', 'mixed'},
            'Both primitive/store and base/deep recovery required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Controlled after-native return/before-accounting CURRENT primitive/store faults in the same isolated epoch',
        'trials': rows, 'total_owners_verified': sum(row['owners_verified'] for row in rows),
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0,
        'offline_source_hashes_verified': len(offline['source_manifest']), 'original_AEB_1_restored': False,
        'not_verified': ['inside-setter failure', 'real Cebra disconnect', 'restart recovery',
            'other interrupted recovery steps/unknown release', 'unfaulted complete CURRENT cycle',
            'production Class local inverse', 'remaining types/families/UI/FLOW/AEB_Core/package',
            'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    args.output.mkdir(parents=True, exist_ok=False)
    tools.write(args.output / 'result.json', result)
    print(json.dumps({'passed': True, 'total_owners_verified': result['total_owners_verified'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
