"""Classify an isolated CURRENT attempt and recover its audited remaining inverse."""
import argparse
import json
import os
import re
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import plan_current_recovery, recovery_intent
from bd_class_model_publication import stable_observation
from bd_class_study_journal import read_events


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--origin', type=Path, required=True, help='Exact failed CURRENT raw.json; never rewritten')
    parser.add_argument('--action', choices=('classify', 'recover'), default='classify')
    parser.add_argument('--prior-recovery', type=Path, action='append', default=[],
                        help='Failed recovery raw.json in chronological order; repeat for every prior segment')
    parser.add_argument('--fault-command', help='Fixed recovery command whose outcome will be deliberately unconfirmed')
    parser.add_argument('--fault-event', choices=('before_native', 'step_completed'), default='step_completed')
    parser.add_argument('--fault-owner-index', type=int, choices=(0, 1, 2, 3))
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    require(not args.fault_command or args.action == 'recover' and re.fullmatch(
        r'(reconcile_action|abort_signature_arguments|restore_signature_commit|restore_store|finish_restore|reconcile_restore|release|undo_(apply|publish_store|restore_store)/[1-9][0-9]{0,4})',
        args.fault_command), 'Exact bounded fixed recovery fault command required')
    require(args.fault_owner_index is None or args.fault_command, 'An exact owner fault needs its fixed command')
    manifest, _, epoch = live_manifest(args.manifest)
    origin_path, output = args.origin.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    require(origin_path.is_relative_to(owned) and output.is_relative_to(owned)
            and not output.is_relative_to(origin_path.parent.parent), 'Separate owned CURRENT origin/output required')
    original_bytes = origin_path.read_bytes()
    origin = json.loads(original_bytes)
    require(origin.get('current_execution_study') is True and origin.get('model_publication_outstanding') is True
            and origin['ascet_process_epoch'] == epoch and origin['database'].lower() == manifest['database'].lower(),
            'Exact outstanding CURRENT origin and live isolated epoch required')
    journal = Path(origin['model_publication_journal']).resolve()
    require(journal.is_relative_to(origin_path.parent), 'CURRENT physical WAL must belong to this origin')
    events = read_events(journal)
    intent = events[0]['payload']
    require(args.fault_owner_index is None or args.fault_owner_index < len(intent['current_observation']['owners']),
            'Fault owner is outside the complete prepared roster')
    marker = tools.load(pending.pending_path(intent['domain']))
    require(marker['domain'] == intent['domain'] and marker['native_token'] == str(journal)
            and Path(origin['model_publication_pending']).resolve() == pending.pending_path(intent['domain']).resolve(),
            'Exact unchanged CURRENT quarantine required')
    experiment = origin_path.parent.parent
    hashes = lambda: {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                      for path in experiment.rglob('*') if path.is_file()}
    original_hashes = hashes()
    prior_events, history, prior_hashes, prior_paths = [], [], {}, set()
    require(len(args.prior_recovery) <= 32, 'Bounded chronological recovery history required')
    for supplied in args.prior_recovery:
        prior_path = supplied.resolve()
        require(prior_path.is_relative_to(owned) and prior_path != origin_path and prior_path not in prior_paths
                and not output.is_relative_to(prior_path.parent), 'Separate unique failed recovery required')
        prior_paths.add(prior_path)
        prior_raw = tools.load(prior_path)
        require(prior_raw.get('status') == 'error' and prior_raw.get('outstanding') is True
                and prior_raw.get('model_publication_outstanding') is True
                and prior_raw.get('current_execution_origin_sha256') == service.digest(original_bytes),
                'Failed recovery does not bind the same immutable original')
        prior_journal = Path(prior_raw['current_execution_recovery_journal']).resolve()
        require(prior_journal.is_relative_to(prior_path.parent), 'Failed recovery WAL is outside its owned attempt')
        segment = read_events(prior_journal)
        require(segment[0]['payload'].get('origin_raw_sha256') == service.digest(original_bytes)
                and segment[0]['payload'].get('origin_journal_checksum') == events[-1]['checksum']
                and segment[0]['payload'].get('recovery_history', []) == history,
                'Failed recovery WAL refers to a different original or omits its chronological predecessors')
        history.append({'journal': str(prior_journal), 'checksum': segment[-1]['checksum'],
                        'intent_checksum': segment[0]['checksum'], 'event_count': len(segment)})
        prior_events.extend(segment)
        prior_hashes.update({str(path): service.digest(path.read_bytes()) for path in prior_path.parent.rglob('*') if path.is_file()})
    head = marker.get('current_recovery_head')
    if head is not None:
        require(history and head == {key: history[-1][key] for key in ('journal', 'intent_checksum')},
                'Supply every prior recovery including the current quarantine head; do not restart from the original alone')
    elif prior_events:
        latest_intent = next(row['payload'] for row in reversed(prior_events) if row['kind'] == 'intent')
        require(latest_intent.get('recovery_head_required') is not True, 'CURRENT recovery quarantine head was removed')
    input_value = tools.load(origin_path.parent / 'input.json')
    input_value.pop('expected_observation_path', None)
    input_value.pop('native_class_model_publication', None)
    input_value['native_class_current_execution_recovery'] = {
        'token': intent['token'], 'origin_raw': str(origin_path), 'action': 'classify'}
    output.mkdir(parents=True, exist_ok=False)
    tools.write(output / 'classify-input.json', input_value)
    os.environ.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_CLASS_CURRENT_EXECUTION_STUDY='1',
                      ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY='1', ASCET_BD_CLASS_STORAGE_WITNESS='1',
                      ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle')
    os.environ.pop('ASCET_BD_CLASS_JOURNAL_FAIL_EVENT', None)
    os.environ.pop('ASCET_BD_CLASS_JOURNAL_FAIL_COMMAND', None)
    os.environ.pop('ASCET_BD_CLASS_JOURNAL_FAIL_OWNER', None)
    names = (*tools.SOURCES, 'bd_class_current_recovery.py', 'bd_class_current_prefix.py',
             'bd_class_current_execution.py', 'bd_class_current_identity.py', 'bd_class_current_inverse.py',
             'bd_class_current_unaccounted.py',
             'bd_class_model_publication.py', 'bd_class_publication_recovery_plan.py',
             'bd_source_inverse_oracle.py', 'bd_class_study_journal.py', 'bde_class_current_recovery.py')
    result = {'passed': False, 'action': args.action, 'token': intent['token'], 'process_epoch': epoch,
              'original_failure_remains_failed': True, 'full_delivery': False,
              'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in names},
              'not_verified': ['other active-action outcomes and interrupted recovery steps',
                               'inside-setter failure', 'other release/stale-witness boundaries', 'restart recovery',
                               'production Class local inverse', 'whole delivery']}
    def invoke(name):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            live_manifest(args.manifest)
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            raw, code = tools.invoke(output / (name + '-input.json'), output / (name + '-raw.json'), 'observe')
        stats = {'exit_code': code, 'request': wire['request'].result(), 'response': wire['response'].result(),
                 'wire_errors': wire['errors'], 'error': raw.get('error')}
        result[name] = stats
        require(not code and not wire['errors']
                and all(stats[key]['parse_error'] is None for key in ('request', 'response')),
                'CURRENT recovery call failed: ' + str(raw.get('error')))
        return raw
    try:
        with service.live_lock():
            classified = invoke('classify')
            require(classified.get('status') == 'current_execution_classified'
                    and classified.get('model_mutation_dispatched') is False and classified.get('model_setters_called') == 0
                    and classified.get('current_execution_origin_sha256') == service.digest(original_bytes)
                    and all(classified[field] == origin[field] for field in
                            ('oid', 'database', 'database_session', 'ascet_process_epoch')),
                    'Fresh read-only CURRENT classification differs from exact immutable origin')
            publication, rows = classified['model_publication_classification'], classified['current_execution_classifications']
            result['initial_prefix'] = inspect_current_prefix(origin, events, publication, rows, recovery_events=prior_events)
            result['initial_recovery_plan'] = plan_current_recovery(origin, events, publication, rows, recovery_events=prior_events)
            if args.action == 'recover':
                proof = recovery_intent(origin, events, publication, rows, recovery_events=prior_events)
                proof.update(origin_raw_sha256=service.digest(original_bytes), origin_journal_checksum=events[-1]['checksum'])
                proof.update(recovery_history=history, recovery_head_required=True)
                result['recovery_history'] = history
                tools.write(output / 'recovery-proof.json', proof)
                recover_input = {**input_value, 'native_class_current_execution_recovery': {
                    **input_value['native_class_current_execution_recovery'], 'action': 'recover',
                    'plan': str((output / 'recovery-proof.json').resolve())}}
                tools.write(output / 'recover-input.json', recover_input)
                if args.fault_command:
                    os.environ['ASCET_BD_CLASS_JOURNAL_FAIL_EVENT'] = args.fault_event
                    os.environ['ASCET_BD_CLASS_JOURNAL_FAIL_COMMAND'] = args.fault_command
                    if args.fault_owner_index is not None:
                        os.environ['ASCET_BD_CLASS_JOURNAL_FAIL_OWNER'] = intent['current_observation']['owners'][args.fault_owner_index]['oid']
                recovered = invoke('recover')
                require(recovered.get('status') == 'current_execution_recovered'
                        and recovered.get('model_publication_outstanding') is False and recovered.get('outstanding') is False,
                        'CURRENT recovery has no completed terminal')
                final = recovered['current_execution_recovered_classification']
                recovery_events = read_events(recovered['current_execution_recovery_journal'])
                result['recovery_protocol'] = inspect_current_prefix(origin, events, final['publication'], final['owners'],
                                                                    recovery_events=[*prior_events, *recovery_events])
                require(result['recovery_protocol']['terminal']
                        and stable_observation(recovered['current_execution_recovered']) == intent['current_observation']
                        and recovered['model_setters_called'] == result['recovery_protocol']['state']['model_steps']
                            - result['initial_prefix']['state']['model_steps']
                        and not pending.pending_path(intent['domain']).exists(),
                        'CURRENT full native/public/source/configuration restoration or physical counters differ')
                result['complete_current_restored'] = True
            else:
                require(pending.pending_path(intent['domain']).exists(), 'Classification cleared the CURRENT quarantine')
            live_manifest(args.manifest)
            result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['original_experiment_files_unchanged'] = hashes() == original_hashes
        result['source_drift'] = [name for name, digest in result['source_manifest'].items()
                                  if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != digest]
        if prior_hashes:
            result['prior_recovery_files_unchanged'] = all(Path(path).exists()
                and service.digest(Path(path).read_bytes()) == digest for path, digest in prior_hashes.items())
            result['passed'] = result['passed'] and result['prior_recovery_files_unchanged']
        result['passed'] = result['passed'] and result['original_experiment_files_unchanged'] and not result['source_drift']
        tools.write(output / 'result.json', result)
    print(json.dumps({'passed': result['passed'], 'action': args.action, 'error': result.get('error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
