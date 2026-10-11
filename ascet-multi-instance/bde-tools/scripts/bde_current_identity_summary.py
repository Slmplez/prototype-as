"""Recompute the scoped CURRENT preflight evidence without any ASCET connection."""
import argparse
import json
from pathlib import Path

import bd_class_tools as tools
from bd_class_current_identity import inspect_current_identity
from bd_class_model_publication import inspect_publication
from bd_class_study_journal import read_events
import bd_service as service


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execution-preflight', action='store_true')
    parser.add_argument('--private-capture', type=Path)
    args = parser.parse_args()
    output = args.output.resolve()
    require(output.is_relative_to(service.ROOT / 'analysis/bde-experiments'), 'Owned output required')
    output.mkdir(parents=True, exist_ok=False)
    offline = tools.load(args.offline / 'result.json')
    require(offline['passed'] is True, 'Current-source offline checks must pass')
    drift = [name for name, digest in offline['source_manifest'].items()
             if service.digest((service.ROOT / name).read_bytes()) != digest]
    require(not drift, 'Current offline source drift: ' + str(drift))
    rows = []
    for experiment in args.experiment:
        experiment = experiment.resolve()
        require(experiment.is_relative_to(service.ROOT / 'analysis/bde-experiments')
                and not output.is_relative_to(experiment), 'Separate owned experiment required')
        trial = tools.load(experiment / 'result.json')
        audit = tools.load(experiment.with_name(experiment.name + '-audit-01') / 'result.json')
        require(trial['passed'] is True and trial['full_delivery'] is False
                and trial['local_inverse_implemented'] is False and not trial['source_drift']
                and trial['inputs_unchanged'] and trial['new_assertion_count'] == 0
                and len(trial['rounds']) == 1, 'Exact terminal one-round scoped experiment required')
        require(audit['passed'] is True and audit['all_candidates_absent'] is True
                and audit['all_retained_material_absent'] is True
                and audit['model_publication_status']['state'] == 'absent'
                and audit['original_experiment_files_unchanged'] is True,
                'Fresh complete absence and unchanged-byte audit required')
        require(all(service.digest((service.ROOT / name).read_bytes()) == digest
                    for name, digest in trial['source_manifest'].items()), 'Live experiment source drift')
        row = trial['rounds'][0]
        require(row['passed'] is True and row['complete_baseline_restored'] is True
                and not any(row[key] for key in ('class_outstanding', 'ordinary_outstanding', 'candidate_outstanding')),
                'No native edit or candidate may remain outstanding')
        creation = experiment / 'state/class-edits' / row['change_id']
        events = read_events(creation / 'native.wal')
        before = next(event['payload'] for event in events if event['kind'] == 'prepared_all')
        applied = next(event['payload'] for event in events
                       if event['kind'] == 'observed' and event['payload']['phase'] == 'after')
        applied = {key: value for key, value in applied.items() if key != 'phase'}
        publication = experiment / 'model-publication-0'
        raw = tools.load(publication / 'raw.json')
        current = tools.load(publication / 'expected.json')
        journal = read_events(publication / 'model-publication.wal')
        token = row['candidate_token']
        binding = inspect_current_identity(raw['current_identity_preflight'], token, current,
                                           journal[1]['payload']['owners'])
        require(binding == tools.load(publication / 'current-identity-proof.json')
                == row['model_publication']['current_identity'], 'Binding summaries differ from actual raw values')
        plans = tools.load(experiment / 'candidate-audit-0/raw.json')['native_class_source_candidates']
        publication_proof = inspect_publication(raw, token, current, before=before, applied=applied, plans=plans)
        require(publication_proof == row['model_publication']['verification'], 'Complete publication/WAL proof differs')
        last = trial['tool_calls'][-1]
        require(last['tool'] == 'bd_read' and last['response']['is_error'] is False, 'Final independent read required')
        header = json.loads(last['response']['content'].split('\n\n', 1)[0])
        service.STORE = experiment / 'state'
        final = service.load_record(header['snapshot'], 's_', 'snapshots')
        stable_before = {**before, 'observation': {**before['observation'], 'callers': [
            {key: value for key, value in caller.items()
             if key not in ('cached', 'cached_error', 'public_retained', 'public_fresh')}
            for caller in before['observation']['callers']]}}
        require(final['class_interface'] == stable_before
                and final['dirty_editors'] == [0, 0] and final['ascet_process_epoch'] == trial['process_epoch'],
                'Complete final public/native/configuration baseline differs from original WAL')
        rows.append({'experiment': str(experiment), 'process_epoch': trial['process_epoch'],
                     'current_identity': binding, 'publication': publication_proof,
                     'full_baseline_restored': True, 'temporary_records_absent': True})
        if args.execution_preflight:
            from bd_class_current_execution import inspect_preflight
            execution = inspect_preflight(raw, token, current, journal[1]['payload']['owners'])
            require(execution == tools.load(publication / 'current-execution-proof.json')
                    == row['model_publication']['current_execution'], 'CURRENT execution preparations differ')
            rows[-1]['current_execution'] = execution
    require(len(rows) == 2 and len({row['process_epoch'] for row in rows}) == 1,
            'Exactly base/deep trials on the same owned endpoint required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
              'scope': 'Two actual setter-free ready-state binding preflights; temporary private-graph publication/restoration',
              'summary_cebra_connections': 0, 'summary_model_setters_called': 0, 'source_drift': drift,
              'offline': str(args.offline.resolve()), 'offline_sources_verified': len(offline['source_manifest']),
              'trials': rows, 'totals': {field: sum(row['current_identity'][field] for row in rows)
                  for field in ('owners_verified', 'exact_current_targets', 'existing_live_pins', 'planned_coordinate_setters')},
              'not_verified': ['post-store CURRENT native identity preservation', 'production Class local inverse',
                               'remaining types/families/UI/FLOW/AEB_Core/package', 'original AEB_1 restoration',
                               'one-second write performance', 'whole delivery']}
    if args.execution_preflight:
        result['scope'] = 'Two actual setter-free CURRENT executor preparations; temporary private-graph publication/restoration'
        result['execution_totals'] = {field: sum(row['current_execution'][field] for row in rows)
            for field in ('owners_verified', 'forward_steps', 'captured_native_objects')}
        result['not_verified'].insert(0, 'actual same-CURRENT primitive/store execution and recovery')
    if args.private_capture:
        capture = tools.load(args.private_capture / 'result.json')
        raw = tools.load(args.private_capture / 'raw.json')
        require(capture['passed'] is True and capture['mode'] == 'private_capture'
                and not capture['source_drift'] and capture['model_setters_called'] == 0
                and capture['process_epoch'] == rows[0]['process_epoch']
                and raw['full_native_fields_equal'] is True
                and raw['full_native_fields_before'] == raw['full_native_fields_after']
                and capture['private_capture']['assertions'] == 53
                and all(service.digest((service.ROOT / 'scripts' / name).read_bytes()) == digest
                        for name, digest in capture['source_manifest'].items()),
                'Actual private capture and unchanged full-field proof required')
        result['private_capture'] = {'path': str(args.private_capture.resolve()),
            'assertions': 53, 'collection_kinds': capture['private_capture']['collection_kinds'],
            'live_native_unchanged': True, 'model_setters_called': 0}
    tools.write(output / 'result.json', result)
    print(json.dumps({'passed': True, 'totals': result['totals'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
