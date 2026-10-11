"""Classify retained publication sources and recover only confirmed remaining work."""
import argparse
import json
import os
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
import bd_instance_pending as pending
from bd_class_study_journal import read_events
from bd_source_inverse_oracle import decode_graph, equal
from bde_isolated_runtime import live_manifest
import bde_experiments as bench
from bd_class_publication_recovery_plan import plan_recovery


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--round', type=int, default=0)
    parser.add_argument('--action', choices=('classify', 'reconcile'), default='classify')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    experiment, output = args.experiment.resolve(), args.output.resolve()
    if not experiment.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(experiment):
        raise ValueError('Separate owned retained experiment and output required')
    origin_path = experiment / f'model-publication-{args.round}' / 'raw.json'
    origin = tools.load(origin_path)
    events = read_events(origin['model_publication_journal'])
    if origin.get('model_mutation_dispatched') is not True or origin.get('model_publication_outstanding') is not True:
        raise ValueError('An actual outstanding model publication is required')
    if origin['ascet_process_epoch'] != epoch or origin['database'].lower() != manifest['database'].lower():
        raise ValueError('Publication native recovery epoch/database differs')
    intent = events[0]['payload']
    current = intent['current_observation']
    prepared = next(event['payload']['owners'] for event in events if event['kind'] == 'prepared_all')
    token = intent['token']
    marker = tools.load(pending.pending_path(intent['domain']))
    if marker['domain'] != intent['domain'] or marker['native_token'] != origin['model_publication_journal']:
        raise ValueError('Exact original publication quarantine required')
    input_value = tools.load(origin_path.parent / 'input.json')
    input_value.pop('expected_observation_path', None)
    input_value.pop('native_class_model_publication', None)
    input_value['native_class_model_publication_recovery'] = {
        'token': token, 'action': args.action, 'origin_raw': str(origin_path)}
    output.mkdir(parents=True, exist_ok=False)
    hashes = lambda: {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                      for path in experiment.rglob('*') if path.is_file()}
    original_hashes = hashes()
    tools.write(output / 'input.json', input_value)
    os.environ.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY='1', ASCET_BD_CLASS_STORAGE_WITNESS='1',
        ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle')
    result = {'passed': False, 'action': args.action, 'token': token, 'process_epoch': epoch,
              'original_failure_remains_failed': True, 'full_delivery': False}
    try:
        if args.action == 'reconcile':
            classify_input = {**input_value, 'native_class_model_publication_recovery': {
                **input_value['native_class_model_publication_recovery'], 'action': 'classify'}}
            tools.write(output / 'classify-input.json', classify_input)
            with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                live_manifest(args.manifest)
                os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                classified, classify_code = tools.invoke(output / 'classify-input.json', output / 'classify-raw.json', 'observe')
            result['preflight_classification'] = {'exit_code': classify_code,
                'request': wire['request'].result(), 'response': wire['response'].result(), 'wire_errors': wire['errors']}
            if (classify_code or wire['errors'] or classified.get('status') != 'publication_classified'
                    or classified.get('model_mutation_dispatched') is not False
                    or classified.get('model_setters_called') != 0
                    or any(result['preflight_classification'][key]['parse_error'] is not None for key in ('request', 'response'))):
                raise ValueError('Read-only publication recovery preflight did not complete')
            result['recovery_plan'] = plan_recovery(origin, events, classified['model_publication_classification'])
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            live_manifest(args.manifest)
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            raw, code = tools.invoke(output / 'input.json', output / 'raw.json', 'observe')
        live_manifest(args.manifest)
        result.update(exit_code=code, error=raw.get('error'), request=wire['request'].result(),
                      response=wire['response'].result(), wire_errors=wire['errors'])
        if code or wire['errors'] or any(result[key]['parse_error'] is not None for key in ('request', 'response')):
            raise ValueError('Retained publication recovery call did not complete: ' + str(raw.get('error')))
        classification = raw['model_publication_classification']
        expected = {row['oid']: row for row in prepared}
        rows = classification['owners']
        if (len(rows) != len(expected) or len({row['oid'] for row in rows}) != len(rows)
                or {row['oid'] for row in rows} != set(expected)):
            raise ValueError('Classification omits an exact retained owner')
        verified = []
        for row in rows:
            oid = row['oid']
            actual = decode_graph(row['actual_source_graph'], oid)
            matches = {}
            for role in ('current', 'candidate'):
                source = expected[oid][role + '_source_graph']
                if not equal(decode_graph(row[role + '_source_graph'], oid), decode_graph(source, oid)):
                    raise ValueError('Classification source changed from the original immutable CURRENT WAL')
                matches[role] = equal(actual, decode_graph(source, oid))
                if row[role + '_matches'] is not matches[role]:
                    raise ValueError('Native classification disagrees with independent complete source values')
            verified.append({'oid': oid, 'state': row['owner_state'], 'matches': matches})
        result['classified_owners'] = verified
        if args.action == 'classify':
            if raw.get('model_mutation_dispatched') is not False or raw.get('model_setters_called') != 0:
                raise ValueError('Classification called a model setter')
            if not pending.pending_path(intent['domain']).exists():
                raise ValueError('Read-only classification unexpectedly cleared the quarantine')
            result['recovery_plan'] = plan_recovery(origin, events, classification)
        else:
            if raw.get('status') != 'publication_recovered' or raw.get('outstanding') is not False:
                raise ValueError('Retained publication recovery is not complete')
            recovered = raw['model_publication_recovered']
            stable = {**recovered, 'observation': {**recovered['observation'], 'callers': [
                {key: value for key, value in caller.items() if key not in
                 ('cached', 'cached_error', 'public_retained', 'public_fresh')}
                for caller in recovered['observation']['callers']]}}
            if stable != current or pending.pending_path(intent['domain']).exists():
                raise ValueError('Complete original CURRENT/identities/configurations not recovered')
            result['complete_current_restored'] = True
            result['physical_recovery_actions'] = [row['action'] for row in raw['model_publication_recovery_receipts']]
            receipts = raw['model_publication_recovery_receipts']
            steps = result['recovery_plan']['steps']
            if len(receipts) != len(steps):
                raise ValueError('Recovery dispatch count differs from the independently classified remaining plan')
            counter = classification['model_steps']
            for receipt, step in zip(receipts, steps):
                counter += step['model_cost']
                if (receipt['oid'] != step['oid'] or receipt['action'] != step['command']
                        or receipt['token'] != token or receipt['model_steps'] != counter):
                    raise ValueError('Recovery receipt identity or physical counter differs from the remaining plan')
            if raw['model_setters_called'] != result['recovery_plan']['model_recovery_steps']:
                raise ValueError('Recovery actual model mutation count differs from the independent plan')
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['original_experiment_files_unchanged'] = hashes() == original_hashes
        result['passed'] = result['passed'] and result['original_experiment_files_unchanged']
        tools.write(output / 'result.json', result)
    print(json.dumps(result, ensure_ascii=True), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
