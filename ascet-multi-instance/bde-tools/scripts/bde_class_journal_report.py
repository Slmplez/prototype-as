"""Offline evidence cross-check for the native Class write-ahead increment."""
import argparse
import hashlib
import json
from pathlib import Path

from bd_class_interface_contract import deletion_effects
from bd_class_study_journal import actual_diff, audit, read_events, verify_study
from bd_edit_journal import fingerprint


def load(path):
    return json.loads(path.read_text(encoding='utf-8'))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--runs', type=Path, nargs='+', required=True)
    parser.add_argument('--fault', type=Path, required=True)
    parser.add_argument('--observation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--fixtures', type=Path, nargs='+', help='Independent fixture oracles for automatically discovered edit owners')
    parser.add_argument('--resource-conflict', type=Path, help='Retained zero-setter stale-resource-precondition experiment')
    parser.add_argument('--configuration-conflict', type=Path, help='Retained zero-setter stale-configuration-precondition experiment')
    parser.add_argument('--configuration-reads', type=Path, nargs='+', help='Independent supported persisted configuration graph observations')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'mode': 'offline cross-check of retained live evidence; no native calls',
              'live_frames': 0, 'rounds': [], 'source_manifest': {
                  source.name: hashlib.sha256(source.read_bytes()).hexdigest() for source in (
                      Path(__file__), Path(__file__).with_name('bd_class_study_journal.py'),
                      Path(__file__).with_name('bd_class_interface_contract.py'), Path(__file__).with_name('bd_class_configuration.py'))},
              'not_verified': ['production Class bd_edit/diff/revert', 'complete types/effective configurations',
                               'live unknown/partial reconciliation and cross-restart inverse', 'all BDE visual gates and whole AEB_Core eval']}
    try:
        fixtures = {row['oid']: row for row in (load(path) for path in (args.fixtures or []))}
        for run in args.runs:
            native = load(run / 'result.json')
            assert native['passed'] and not native['source_changes_during_run']
            for index, row in enumerate(native['observations']):
                study = load(run / f'study-{index}.json')
                journal = run / f'study-{index}.wal'
                receipt = verify_study(journal, study)
                recorded_effects = load(run / f'actual-effects-{index}.json')
                effects = deletion_effects(study, allow_pin_layout=True,
                    allow_unassigned_sequence=recorded_effects['sequence_policy'] == 'allow_unassigned_explicitly',
                    allow_adjacent_corner_layout=recorded_effects.get('adjacent_corner_policy') ==
                        'orthogonal_endpoint_alignment_with_complete_public_route_oracle')
                diff = actual_diff(journal)
                assert diff == load(run / f'journal-diff-{index}.json'), 'Offline diff differs from saved native-run diff'
                assert row['proof']['quarantine_cleared_after_actual_validation'] is True
                automatic = study.get('caller_resolution') == 'native'
                if automatic:
                    inputs = load(run / 'execution-input.json')
                    assert set(inputs) == {'status', 'database', 'component', 'oid', 'ascet_process_epoch', 'caller_resolution'}
                    assert inputs['caller_resolution'] == 'native'
                    intent = read_events(journal)[0]['payload']
                    assert intent['fixture_sha256'] == hashlib.sha256((run / 'execution-input.json').read_bytes()).hexdigest()
                    assert intent['resource_closure'] == study['resource_closure']
                    assert study['resource_closure_sha256'] == hashlib.sha256(study['resource_closure'].encode()).hexdigest()
                    assert study['resource_closure_checks'] == receipt['dispatch_count']
                    if 'configurations' in study['before']:
                        assert study['configuration_guard_checks'] == receipt['dispatch_count']
                        assert all(row['unchanged'] for row in diff['configuration_effects'])
                        assert study['before']['configurations'] == study['after']['configurations'] == study['restored']['configurations']
                    oracle = fixtures[study['oid']]
                    expected = {owner['oid']: owner for owner in oracle['callers']}
                    discovered = {owner['oid']: owner for owner in study['before']['discovery']['callers']}
                    assert discovered.keys() == expected.keys()
                    observed_public = {owner['component']: owner['public_tree'] for owner in study['before']['callers']}
                    for oid, owner in discovered.items():
                        fixture_owner = expected[oid]
                        assert owner['component'] == fixture_owner['component']
                        assert owner['native_class'] == ('SGClass' if fixture_owner.get('owner_kind') == 'Class' else 'SGModule')
                        assert sorted(owner['resource_scopes']) == sorted(fixture_owner['public_tree'])
                        actual = sorted((scope['diagram'], node['node'], node['name'])
                            for scope in owner['scopes'] for node in scope['occurrences'])
                        wanted = sorted((node.get('diagram', 'Main'), node['node_id'], node['name'])
                            for node in fixture_owner['instances'])
                        assert actual == wanted
                        assert len(owner['declarations']) == len({node['name'] for node in fixture_owner['instances']})
                        assert observed_public[owner['component']] == fixture_owner['public_tree']
                    assert study['before']['body'] == oracle['class_graph']
                    assert study['before']['signature'] == oracle['class_interface']
                result['rounds'].append({'run': str(run), 'index': index, 'semantic_sha256': fingerprint(study),
                    'raw_sha256': hashlib.sha256((run / f'study-{index}.json').read_bytes()).hexdigest(),
                    'journal': str(journal), 'status': receipt['status'], 'owners': receipt['prepared_owners'],
                    'scopes': receipt['prepared_scopes'], 'dispatches': receipt['dispatch_count'],
                    'native_receipts_and_observations_match': receipt['raw_observations_and_receipts_match'],
                    'caller_resolution': 'native' if automatic else 'fixture',
                    'resource_checks': study.get('resource_closure_checks'),
                    'configuration_checks': study.get('configuration_guard_checks'),
                    'configuration_storage': diff.get('configuration_effects'),
                    'independent_fixture_oracle_match': True if automatic else None,
                    'removed_pins': sum(len(r['removed_pins']) for r in effects['resource_effects']),
                    'removed_incident_edges': sum(len(r['removed_incident_edges']) for r in effects['resource_effects']),
                    'retained_pin_movements': sum(len(r['connector_layout_changes']) for r in effects['resource_effects']),
                    'adjacent_corner_changes': sum(len(r['adjacent_corner_layout_changes']) for r in effects['resource_effects']),
                    'introduced_unassigned_sequence_objects': sum(len(r['introduced_unassigned_sequence_objects']) for r in effects['resource_effects']),
                    'raw_patch_rows': sum(len(r['differences']) for r in diff['resource_effects']),
                    'request_frames': row['request']['frames'], 'response_bytes': row['response']['bytes']})
        fault = load(args.fault / 'study-0.json')
        observed = load(args.observation / 'study-0.json')
        check = audit(args.fault / 'study-0.wal')
        assert load(args.fault / 'result.json')['passed'] and load(args.observation / 'result.json')['passed']
        assert check['status'] == 'rejected_before_dispatch' and check['dispatch_count'] == 0
        assert fault['model_mutation_dispatched'] is False and fault['outstanding'] is False
        before, after = fault['before'], observed['before']
        unchanged = {key: before[key] == after[key] for key in ('signature', 'discovery', 'body')}
        if 'configurations' in before:
            unchanged['configuration_storage'] = before['configurations'] == after.get('configurations')
        unchanged['caller_public_trees'] = all(a['public_tree'] == b['public_tree']
            for a, b in zip(before['callers'], after['callers'])) and len(before['callers']) == len(after['callers'])
        assert all(unchanged.values()), unchanged
        result['write_ahead_fault'] = {'run': str(args.fault), 'independent_observation': str(args.observation),
                                      'setters': 0, 'outstanding': False, 'baseline_unchanged': unchanged}
        if args.resource_conflict:
            rejection = load(args.resource_conflict / 'study-0.json')
            assert load(args.resource_conflict / 'result.json')['passed']
            assert rejection['model_mutation_dispatched'] is False and rejection['outstanding'] is False
            assert 'Class resource closure precondition conflict' in rejection['error']
            assert rejection['resource_closure_checks'] == 0
            assert rejection['resource_closure_sha256'] == observed['resource_closure_sha256']
            assert not (args.resource_conflict / 'study-0.wal').exists()
            result['stale_resource_conflict'] = {'run': str(args.resource_conflict), 'setters': 0,
                'outstanding': False, 'independently_observed_closure_matches': True}
        if args.configuration_conflict:
            rejection = load(args.configuration_conflict / 'study-0.json')
            assert load(args.configuration_conflict / 'result.json')['passed']
            assert rejection['model_mutation_dispatched'] is False and rejection['outstanding'] is False
            assert 'Class configuration storage precondition conflict' in rejection['error']
            assert rejection['configuration_guard_checks'] == 0
            assert rejection['configuration_storage_sha256'] == observed['configuration_storage_sha256']
            assert not (args.configuration_conflict / 'study-0.wal').exists()
            result['stale_configuration_conflict'] = {'run': str(args.configuration_conflict), 'setters': 0,
                'outstanding': False, 'independently_observed_storage_matches': True}
        result['configuration_reads'] = []
        for source in args.configuration_reads or []:
            from bd_class_configuration import validate_graph
            retained = load(source / 'result.json')
            observation = load(source / 'observation.json')
            assert retained['passed'] and not retained['source_changes_during_run']
            assert observation['status'] == 'ok' and observation['configuration_samples'] == 2
            assert observation['dirty_before'] == observation['dirty_after'] == observation['model_setters_called'] == 0
            assert observation['configuration_graph'] == observation['configuration_recheck']
            graph = validate_graph(observation['configuration_graph'], observation['oid'])
            assert graph == retained['configuration_graph']
            result['configuration_reads'].append({'run': str(source), 'component': observation['component'],
                **graph, 'elapsed_ms': observation['elapsed_ms'], 'request_frames': retained['request']['frames'],
                'response_bytes': retained['response']['bytes']})
        by_component = {}
        for row in result['configuration_reads']:
            if row['component'] in by_component:
                assert row['sha256'] == by_component[row['component']], 'Independent configuration read fingerprints differ'
            by_component[row['component']] = row['sha256']
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'rounds': len(result['rounds']), 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
