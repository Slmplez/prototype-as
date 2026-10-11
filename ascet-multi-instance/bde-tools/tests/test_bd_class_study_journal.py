"""Write-ahead state/fault checks; synthetic journals use retained native samples."""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

from bd_class_study_journal import actual_diff, audit, dispatch_plan, verify_study, verify_restored_observation
from bd_edit_journal import JournalError


class ClassStudyJournalTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        source = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-02/bde-class-general-delete-primary-04/study-0.json'
        cls.sample = json.loads(source.read_text(encoding='utf-8'))

    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.rows = []
        state = self.sample['before']
        self.intent = {'domain': {'oid': self.sample['oid'], 'database': self.sample['database'],
                                 'process_epoch': self.sample['ascet_process_epoch'], 'session': 'study'},
                       'component': self.sample['component'], 'operation': self.sample['operation'],
                       'request_id': 'unique', 'selector': self.sample['selector']}
        self.intent['database_session'] = 'offline-test-native-token'
        owners = [{'component': row['component'], 'oid': row['oid']} for row in state['discovery']['callers']]
        # The native fixture ordering is authoritative for owner_scopes_* indexes.
        paths = [row['component'] for row in state['callers']] + [state['signature']['path']]
        by_path = {row['component']: row['oid'] for row in owners}
        by_path[state['signature']['path']] = state['signature']['oid']
        self.owners = [{'component': path, 'oid': by_path[path], 'native_recovery': 'prepared',
                        'scopes': self.sample[f'owner_scopes_before_{index}']} for index, path in enumerate(paths)]
        self.prepared = {'observation': state, 'owners': self.owners}
        self.plan = dispatch_plan(self.intent, self.owners)

    def append(self, kind, payload):
        self.rows.append((kind, deepcopy(payload)))

    def publish(self):
        for source in self.root.glob('*.json'):
            source.unlink()
        previous = None
        for sequence, (kind, payload) in enumerate(self.rows):
            utc = '2026-10-02T10:00:00.0000000Z'
            body = json.dumps(payload, ensure_ascii=False, separators=(',', ':'))
            checksum = hashlib.sha256('\n'.join((str(sequence), kind, utc, previous or '', body)).encode()).hexdigest()
            event = {'sequence': sequence, 'kind': kind, 'utc': utc, 'previous': previous,
                     'payload_json': body, 'checksum': checksum}
            (self.root / f'{sequence:06d}.json').write_text(json.dumps(event), encoding='utf-8')
            previous = checksum

    def observation(self, phase):
        sample_key = 'after' if phase == 'after' else 'restored'
        return {'phase': phase, 'observation': self.sample[sample_key],
                'owners': [{**row, 'scopes': self.sample[f'owner_scopes_{sample_key}_{index}']}
                           for index, row in enumerate(self.owners)]}

    def start(self):
        self.append('intent', self.intent)
        self.append('prepared_all', self.prepared)
        self.append('preflight_observed', self.prepared)

    def full(self):
        self.start()
        for step in self.plan:
            if step['phase'] == 'inverse' and not any(kind == 'inverse_preflight' for kind, _ in self.rows):
                observed = self.observation('after')
                self.append('observed', observed)
                self.append('inverse_preflight', {**observed, 'native_owner_checks': ['verified'] * len(self.owners)})
            self.append('step_started', step)
            name = step['step']
            key = 'apply' if name == 'signature_apply' else 'restore' if name == 'signature_restore' else (
                {'prune': 'closure_prune_', 'store': 'caller_store_', 'restore': 'caller_restore_'}[name.rsplit('_', 1)[0]] + name.rsplit('_', 1)[1])
            self.append('step_completed', {'step': name, 'native_result': self.sample[key]})
        self.append('observed', self.observation('restored'))
        self.append('finished', {'status': 'restored', 'outstanding': False})
        self.publish()

    def test_complete_actual_journal_and_offline_diff(self):
        self.full()
        result = actual_diff(self.root)
        self.assertEqual(result['status'], 'restored')
        self.assertEqual((result['prepared_owners'], result['prepared_scopes']), (3, 5))
        self.assertEqual((result['dispatch_count'], result['completed_count']), (11, 11))
        self.assertEqual(len(result['resource_effects']), 5)
        self.assertTrue(any(row['differences'] for row in result['resource_effects']))
        self.assertNotEqual(result['definition_effect']['before'], result['definition_effect']['after'])
        self.assertEqual(result['live_frames'], 0)
        self.assertFalse(result['production_class_edit_enabled'])
        self.assertNotIn('retained_source_binding_verified', result)
        self.assertNotIn('body', result['observations']['after'])

    def enable_configurations(self):
        from test_bd_class_configuration import fixture
        self.sample = deepcopy(self.sample)
        configs = {}
        for owner in self.owners:
            graph = fixture()
            graph['oid'] = owner['oid']
            graph['component'] = owner['component']
            configs[owner['oid']] = graph
        for phase in ('before', 'after', 'restored'):
            self.sample[phase]['configurations'] = deepcopy(configs)
        self.prepared = {**self.prepared, 'observation': self.sample['before']}

    def test_configuration_storage_is_in_actual_diff(self):
        self.enable_configurations()
        self.full()
        result = actual_diff(self.root)
        self.assertEqual(len(result['configuration_effects']), len(self.owners))
        self.assertTrue(all(row['unchanged'] for row in result['configuration_effects']))

    def test_missing_owner_configuration_refuses(self):
        self.enable_configurations()
        del self.prepared['observation']['configurations'][self.owners[0]['oid']]
        self.full()
        with self.assertRaises(JournalError):
            audit(self.root)

    def test_configuration_change_during_inverse_preflight_refuses(self):
        self.enable_configurations()
        self.full()
        for kind, body in self.rows:
            if kind == 'inverse_preflight':
                graph = body['observation']['configurations'][self.owners[0]['oid']]
                graph['nodes'][1]['items'][0][1] = '0000000000000000'
        self.publish()
        with self.assertRaises(JournalError):
            audit(self.root)

    def test_configuration_not_restored_refuses(self):
        self.enable_configurations()
        graph = self.sample['restored']['configurations'][self.owners[0]['oid']]
        graph['nodes'][1]['items'][0][1] = '0000000000000000'
        self.full()
        with self.assertRaises(JournalError):
            audit(self.root)

    def test_started_without_receipt_is_unknown_and_never_retryable(self):
        self.start()
        self.append('step_started', self.plan[0])
        self.publish()
        result = audit(self.root)
        self.assertEqual(result['status'], 'outcome_unknown')
        self.assertFalse(result['automatic_retry'])
        self.assertEqual(result['unknown_step'], self.plan[0])

    def test_no_started_is_interrupted_or_rejected(self):
        self.start()
        self.publish()
        self.assertEqual(audit(self.root)['status'], 'interrupted_before_apply')
        self.append('finished', {'status': 'rejected_before_dispatch', 'outstanding': False})
        self.publish()
        self.assertEqual(audit(self.root)['status'], 'rejected_before_dispatch')

    def test_confirmed_partial_execution_without_terminal_is_unknown(self):
        self.start()
        self.append('step_started', self.plan[0])
        self.append('step_completed', {'step': self.plan[0]['step'], 'native_result': 'pruned'})
        self.publish()
        self.assertEqual(audit(self.root)['status'], 'outcome_unknown')

    def test_unprepared_dispatch_or_duplicate_owner_refused(self):
        self.start()
        self.rows[1][1]['owners'].append(deepcopy(self.owners[0]))
        self.publish()
        with self.assertRaisesRegex(JournalError, 'omits exact owner'):
            audit(self.root)

    def test_missing_nested_scope_refused(self):
        self.start()
        del self.rows[1][1]['owners'][1]['scopes']['Main/h1/h2']
        self.publish()
        with self.assertRaisesRegex(JournalError, 'omits caller scope'):
            audit(self.root)

    def test_preflight_drift_refused(self):
        self.start()
        self.rows[2][1]['owners'][0]['scopes']['Main']['generation'] += 1
        self.publish()
        with self.assertRaisesRegex(JournalError, 'differs from preparation'):
            audit(self.root)

    def test_missing_preflight_refused(self):
        self.append('intent', self.intent)
        self.append('prepared_all', self.prepared)
        self.append('step_started', self.plan[0])
        self.publish()
        with self.assertRaisesRegex(JournalError, 'lacks preparation'):
            audit(self.root)

    def test_unrelated_command_or_owner_refused(self):
        for field, value in [('command', 'delete_all'), ('oid', 'foreign'), ('database_session', 'foreign-database')]:
            self.rows = []
            self.start()
            self.append('step_started', {**self.plan[0], field: value})
            self.publish()
            with self.subTest(field=field), self.assertRaises(JournalError):
                audit(self.root)

    def test_inverse_conflict_refused(self):
        self.full()
        event = next(body for kind, body in self.rows if kind == 'inverse_preflight')
        event['owners'][0]['scopes']['Main']['generation'] += 1
        self.publish()
        with self.assertRaisesRegex(JournalError, 'differs from actual after'):
            audit(self.root)

    def test_restored_fields_and_complete_steps_required(self):
        self.full()
        event = next(body for kind, body in self.rows if kind == 'observed' and body['phase'] == 'restored')
        event['owners'][0]['scopes']['Main']['generation'] += 1
        self.publish()
        with self.assertRaisesRegex(JournalError, 'baseline is not restored'):
            audit(self.root)

    def test_missing_completion_or_terminal_forgery_refused(self):
        self.start()
        self.append('step_started', self.plan[0])
        self.append('finished', {'status': 'restored', 'outstanding': False})
        self.publish()
        with self.assertRaisesRegex(JournalError, 'lacks evidence'):
            audit(self.root)

    def test_checksum_tamper_and_gap_refused(self):
        self.full()
        path = self.root / '000001.json'
        event = json.loads(path.read_text())
        event['payload_json'] += ' '
        path.write_text(json.dumps(event))
        with self.assertRaisesRegex(JournalError, 'Invalid Class write-ahead'):
            audit(self.root)
        self.publish()
        path.unlink()
        with self.assertRaises(JournalError):
            audit(self.root)

    def test_raw_study_observations_and_native_receipts_match(self):
        self.full()
        sample = {**self.sample, 'database_session': self.intent['database_session']}
        self.assertTrue(verify_study(self.root, sample)['raw_observations_and_receipts_match'])

    def test_raw_observation_or_native_receipt_mismatch_refused(self):
        self.full()
        for mismatch in ('observation', 'receipt'):
            sample = deepcopy(self.sample)
            sample['database_session'] = self.intent['database_session']
            if mismatch == 'observation':
                sample['after']['signature']['path'] += '_foreign'
            else:
                sample['caller_store_0'] = 'unknown'
            with self.subTest(mismatch=mismatch), self.assertRaises(JournalError):
                verify_study(self.root, sample)

    def current_observation(self):
        current = {**deepcopy(self.sample), 'status': 'observed', 'model_setters_called': 0,
                   'database_session': self.intent['database_session']}
        for index in range(len(self.owners)):
            current[f'owner_scopes_observed_{index}'] = deepcopy(self.sample[f'owner_scopes_before_{index}'])
        return current

    def test_known_restored_quarantine_confirmation_uses_fresh_complete_scopes(self):
        self.full()
        sample = {**self.sample, 'database_session': self.intent['database_session']}
        result = verify_restored_observation(self.root, sample, self.current_observation())
        self.assertTrue(result['independent_current_baseline_verified'])
        self.assertEqual(result['model_setters_called'], 0)

    def test_stale_identity_dirty_or_missing_scope_cannot_clear_quarantine(self):
        self.full()
        sample = {**self.sample, 'database_session': self.intent['database_session']}
        for field, value in [('database_session', 'foreign'), ('dirty_after', 1), ('model_setters_called', True),
                             ('owner_scopes_observed_1', {'Main': {}})]:
            current = self.current_observation()
            current[field] = value
            with self.subTest(field=field), self.assertRaises(JournalError):
                verify_restored_observation(self.root, sample, current)

    def test_unknown_dispatch_cannot_be_confirmed_as_restored(self):
        self.start()
        self.append('step_started', self.plan[0])
        self.publish()
        with self.assertRaisesRegex(JournalError, 'Completed native study'):
            verify_restored_observation(self.root, self.sample, self.current_observation())

    def retained(self):
        self.intent['execution_phase'] = 'apply_only'
        self.plan = dispatch_plan(self.intent, self.owners)
        self.start()
        for step in self.plan:
            self.append('step_started', step)
            result = 'pruned' if step['command'].startswith('prune_') else 'applied' if step['command'] == 'apply' else 'added'
            self.append('step_completed', {'step': step['step'], 'native_result': result})
        self.append('observed', self.observation('after'))
        self.append('finished', {'status': 'retained_applied', 'outstanding': True})
        self.publish()

    def split_inverse(self):
        self.retained()
        source = self.root
        terminal = json.loads(sorted(source.glob('*.json'))[-1].read_text())['checksum']
        self.root = source / 'inverse'
        self.root.mkdir()
        self.rows = []
        self.intent = {**self.intent, 'execution_phase': 'inverse_only', 'request_id': 'inverse',
                       'retained_origin': {'journal': str(source), 'terminal_checksum': terminal,
                                           'study_sha256': 'bound-by-native-loader'}}
        self.prepared = self.observation('after')
        self.plan = dispatch_plan(self.intent, self.owners)
        self.start()
        self.append('observed', self.prepared)
        self.append('inverse_preflight', {**self.prepared, 'native_owner_checks': ['verified'] * len(self.owners)})
        for step in self.plan:
            self.append('step_started', step)
            self.append('step_completed', {'step': step['step'], 'native_result': 'restored'})
        self.append('observed', self.observation('restored'))
        target = {'observation': self.sample['before'], 'owners': self.owners}
        self.append('finished', {'status': 'retained_restored', 'outstanding': False, 'inverse_target': target})
        self.publish()

    def test_split_inverse_verifies_origin_and_records_real_reverse_diff(self):
        self.enable_configurations()
        self.split_inverse()
        result = actual_diff(self.root)
        self.assertEqual(result['status'], 'retained_restored')
        self.assertTrue(result['retained_source_binding_verified'])
        self.assertTrue(any(row['differences'] for row in result['resource_effects']))
        self.assertEqual(result['definition_effect']['before'], self.sample['after']['signature'])
        self.assertEqual(result['definition_effect']['after'], self.sample['before']['signature'])

    def test_retained_application_needs_every_receipt_and_actual_after(self):
        self.retained()
        original = deepcopy(self.rows)
        for missing in ('step_completed', 'observed'):
            self.rows = deepcopy(original)
            index = next(i for i, (kind, _) in enumerate(self.rows) if kind == missing)
            self.rows.pop(index)
            self.publish()
            with self.subTest(missing=missing), self.assertRaises(JournalError):
                audit(self.root)

    def test_actual_after_cannot_precede_setters(self):
        self.start()
        self.append('observed', self.observation('after'))
        self.publish()
        with self.assertRaisesRegex(JournalError, 'precedes complete phase'):
            audit(self.root)

    def test_failed_native_receipt_cannot_be_counted_as_completed(self):
        self.retained()
        next(body for kind, body in self.rows if kind == 'step_completed')['native_result'] = 'failed'
        self.publish()
        with self.assertRaisesRegex(JournalError, 'does not confirm'):
            audit(self.root)

    def test_split_inverse_wrong_source_identity_or_checksum_refuses(self):
        self.split_inverse()
        original = deepcopy(self.rows)
        for key in ('terminal_checksum', 'operation', 'selector'):
            self.rows = deepcopy(original)
            if key == 'terminal_checksum':
                self.rows[0][1]['retained_origin'][key] = 'foreign'
            else:
                self.rows[0][1][key] = 'foreign'
            self.publish()
            with self.subTest(key=key), self.assertRaises(JournalError):
                audit(self.root)

    def test_split_inverse_missing_preflight_cannot_restore(self):
        self.split_inverse()
        self.rows = [(kind, body) for kind, body in self.rows if kind != 'inverse_preflight']
        self.publish()
        with self.assertRaisesRegex(JournalError, 'lacks complete preflight'):
            audit(self.root)

    def test_split_inverse_cannot_invent_baseline_even_with_matching_restored(self):
        self.split_inverse()
        self.rows[-1][1]['inverse_target']['owners'][0]['scopes']['Main']['generation'] += 1
        for kind, body in self.rows:
            if kind == 'observed' and body['phase'] == 'restored':
                body['owners'][0]['scopes']['Main']['generation'] += 1
        self.publish()
        with self.assertRaisesRegex(JournalError, 'original retained baseline'):
            audit(self.root)

    def test_split_inverse_started_without_reply_preserves_unknown(self):
        self.split_inverse()
        started = next(i for i, (kind, _) in enumerate(self.rows) if kind == 'step_started')
        self.rows = self.rows[:started + 1]
        self.publish()
        result = audit(self.root)
        self.assertEqual(result['status'], 'outcome_unknown')
        self.assertFalse(result['automatic_retry'])

    def test_split_inverse_cannot_claim_classic_terminal(self):
        self.split_inverse()
        self.rows[-1][1]['status'] = 'restored'
        self.publish()
        with self.assertRaisesRegex(JournalError, 'differs from execution phase'):
            audit(self.root)


if __name__ == '__main__':
    unittest.main()
