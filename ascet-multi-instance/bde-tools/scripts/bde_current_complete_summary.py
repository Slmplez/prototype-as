"""Recompute isolated unfaulted CURRENT cycles and later inverse compatibility."""
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
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--audit', type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--safety', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    inputs = [*args.experiment, *args.audit, args.offline, args.safety]
    require(len(args.experiment) == len(args.audit) >= 2
        and all(path.resolve().is_relative_to(owned) for path in [*inputs, args.output])
        and all(not args.output.resolve().is_relative_to(path.resolve()) for path in inputs),
        'Separate owned base/deep evidence and output required')
    offline, safety = tools.load(args.offline / 'result.json'), tools.load(args.safety / 'result.json')
    require(offline['passed'] is True and all(row['exit_code'] == 0 for row in offline['checks']),
        'Current offline contracts must pass')
    for path, digest in offline['source_manifest'].items():
        require(service.digest((service.ROOT / path).read_bytes()) == digest, 'Current source drift: ' + path)
    require(safety['passed'] is True and safety['restored'] is False
        and safety['original_record_file_count'] == 29 and safety['original_files_unchanged'] is True
        and safety['hold_unchanged'] is True and safety['cebra_connections'] == safety['model_setters_called'] == 0,
        'Original AEB_1 recovery files or hold differ')
    cases = []
    for experiment, audit_path in zip(args.experiment, args.audit):
        trial, absence = tools.load(experiment / 'result.json'), tools.load(audit_path / 'result.json')
        require(trial['passed'] is True and trial['full_delivery'] is False
            and trial['local_inverse_implemented'] is False and trial['inputs_unchanged'] is True
            and trial['new_assertion_count'] == 0 and not trial['source_drift'],
            'Actual cycle lacks unchanged inputs/source or full restoration')
        require(absence['passed'] is True and absence['all_candidates_absent'] is True
            and absence['all_retained_material_absent'] is True
            and absence['model_publication_status']['state'] == 'absent'
            and absence['model_setters_called'] == 0 and absence['original_experiment_files_unchanged'] is True,
            'Fresh independent temporary-record absence proof required')
        for row in trial['rounds']:
            folder = experiment / f"model-publication-{row['round']}"
            raw, native_input = tools.load(folder / 'raw.json'), tools.load(folder / 'input.json')
            require(native_input['native_class_current_complete_study'] is True
                and 'native_class_current_fault' not in native_input
                and raw['status'] == 'current_execution_restored' and raw['current_execution_study'] is True
                and raw['model_mutation_dispatched'] is True and raw['outstanding'] is False
                and raw['model_publication_outstanding'] is False,
                'Explicit unfaulted complete CURRENT cycle required')
            events = read_events(raw['model_publication_journal'])
            final = raw['current_execution_restored_classification']
            proof = inspect_current_prefix(raw, events, final['publication'], final['owners'])
            require(proof['terminal'] is True and proof['unknown_step'] is None
                and proof['state']['model_steps'] == raw['model_setters_called'] > 0
                and proof['recovery_dispatches'] == proof['recovery_segments'] == 0
                and stable_observation(raw['model_publication_restored']) == events[0]['payload']['current_observation'],
                'Complete physical WAL/native/public/source restoration differs')
            require(row['passed'] is True and row['complete_baseline_restored'] is True
                and row['class_outstanding'] is False and row['ordinary_outstanding'] is False
                and row['candidate_outstanding'] is False and 'candidate_stale_error' not in row
                and row['formal_source_analysis_matches'] is True,
                'Later ordinary/Class inverses or candidate lifecycle incomplete')
            created = tools.load(experiment / 'state/class-edits' / row['change_id'] / 'raw.json')
            inverse = tools.load(experiment / 'state/class-edits' / row['inverse_change_id'] / 'raw.json')
            baseline = tools.observation(created, 'before')
            require(tools.observation(inverse, 'restored') == baseline,
                'Later strict Class inverse did not restore complete original baseline')
            calls = [call for call in trial['tool_calls'] if call['tool'] == 'bd_read'
                and call['args'].get('view') == 'class_interface']
            require(calls and calls[-1]['response']['is_error'] is False, 'Final Tool.call read missing')
            head = json.loads(calls[-1]['response']['content'].split('\n', 1)[0])
            snapshot = tools.load(experiment / 'state/snapshots' / (head['snapshot'] + '.json'))
            require(snapshot['class_interface'] == baseline and snapshot['dirty_editors'] == [0, 0]
                and snapshot['ascet_process_epoch'] == trial['process_epoch'],
                'Final independent public read differs from the complete original baseline')
            for label in ('model_publication', 'source_plan_unchanged', 'move_inverse', 'class_inverse', 'final'):
                operation = row[label]
                require(not operation['wire_errors']
                    and all(operation[name]['parse_error'] is None for name in ('request', 'response')),
                    'Incomplete Cebra frame evidence: ' + label)
            move = next(operation for call in trial['tool_calls'] if call['tool'] == 'bd_edit'
                for operation in call['args']['operations'] if operation['op'] == 'move_node')
            cases.append({'experiment': str(experiment.resolve()), 'recipe': trial['recipe'],
                'round': row['round'], 'owners_verified': len(proof['state']['owners']),
                'independent_edit_scope': move['target'].rsplit('/', 1)[0],
                'model_steps': raw['model_setters_called'], 'confirmed_dispatches': proof['confirmed_dispatches'],
                'request_frames': row['model_publication']['request']['frames'],
                'complete_current_restored': True, 'later_ordinary_and_class_inverse_compatible': True,
                'complete_original_restored': True, 'temporary_records_absent': True})
    require({row['recipe'] for row in cases} == {'base', 'mixed'}
        and any(row['independent_edit_scope'] == 'Main/h1/h2/h3' for row in cases),
        'Base and actual third-level hierarchy coverage required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Unfaulted isolated CURRENT base/deep cycles followed by ordinary and strict Class inverses',
        'cases': cases, 'total_owners_verified': sum(row['owners_verified'] for row in cases),
        'offline_source_hashes_verified': len(offline['source_manifest']),
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0, 'original_AEB_1_restored': False,
        'not_verified': ['production Class local inverse', 'unknown release', 'inside-setter failure',
            'real disconnect/restart', 'remaining types/families/UI/FLOW/AEB_Core/package',
            'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    args.output.mkdir(parents=True, exist_ok=False)
    tools.write(args.output / 'result.json', result)
    print(json.dumps({'passed': True, 'total_owners_verified': result['total_owners_verified'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
