"""Candidate evidence must refuse corrupt sources, omitted owners and ambiguous WALs."""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

from bd_class_source_candidate import audit_candidate_journal, validate_receipts
from bd_edit_journal import JournalError
from test_bd_source_dependencies import candidate_result, context


class SourceCandidateTests(unittest.TestCase):
    def setUp(self):
        _, self.before, self.applied, self.current = context()
        for value in (self.before, self.applied, self.current):
            value['observation']['signature']['oid'] = 'owner'
            value['owners'][0]['scopes']['Main']['entries'][0]['definition']['oid'] = 'owner'
        self.token = 'cand_' + 'a' * 64
        self.plan = {**candidate_result(), 'profile': 'class_persisted_source_inverse_plan_v1',
                     'mode': 'plan', 'oid': 'owner', 'component': 'Trial_Owner', 'generation': 7,
                     'model_setters_called': 0, 'store_called': False, 'write_authorized': False,
                     'native_merge_executor_available': False, 'schema': [{'native_class': 'SGTopGraphicsBlockDB'}],
                     'source_classes': {'SGTopGraphicsBlockDB': 1}}
        self.plan['plan'].update(inputs_unchanged=True, conflicts=[], changed_paths=['root/ports'],
                                 preserved_paths=['root/connections'], block_order_plans=[])
        self.receipt = {'profile': 'class_source_candidate_v1', 'action': 'prepare', 'state': 'prepared',
                        'token': self.token, 'oid': 'owner', 'definition_oid': 'owner', 'generation': 7,
                        'model_setters_called': 0, 'store_called': False, 'write_authorized': False,
                        'native_merge_executor_available': False, 'current_baseline_verified': True, 'scope_pinned': True,
                        'native_object_count': 5, 'native_collection_count': 3, 'private_negative_count': 0,
                        'preparation_reused': False,
                        'source_plan': self.plan}
        self.raw = {'native_class_source_candidates': [
            {'component': 'Trial_Owner', 'oid': 'owner', 'receipt': self.receipt}]}
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.intent = {'operation': 'class_source_candidate', 'action': 'prepare', 'token': self.token,
                       'definition_oid': 'owner', 'database': 'isolated', 'database_session': 'native-session',
                       'process_epoch': '123/2026-10-04T00:00:00Z', 'model_setters_called': 0, 'store_called': False,
                       'owners': [{'component': 'Trial_Owner', 'oid': 'owner'}],
                       'current_observation': self.current}
        self.start = {'index': 0, 'oid': 'owner', 'action': 'prepare', 'token': self.token}
        self.completion = {'index': 0, 'oid': 'owner', 'receipt': self.receipt}
        self.finish = {'status': 'recorded', 'completed_count': 1, 'model_setters_called': 0, 'store_called': False}

    def verify(self):
        return validate_receipts(self.raw, self.current, self.token, 'prepare', before=self.before, applied=self.applied)

    def publish(self, events):
        previous = None
        for index, (kind, payload) in enumerate(events):
            body = json.dumps(payload, separators=(',', ':'))
            utc = '2026-10-04T00:00:00Z'
            checksum = hashlib.sha256('\n'.join((str(index), kind, utc, previous or '', body)).encode()).hexdigest()
            (self.root / f'{index:06d}.json').write_text(json.dumps({
                'sequence': index, 'kind': kind, 'utc': utc, 'previous': previous,
                'payload_json': body, 'checksum': checksum}), encoding='utf-8')
            previous = checksum

    def test_full_independent_candidate_check_never_authorizes_execution(self):
        value = self.verify()
        self.assertTrue(value['source_analysis']['all_candidate_dependencies_valid'])
        self.assertFalse(value['write_authorized'])
        self.assertFalse(value['native_merge_executor_available'])
        self.assertNotIn('source_graphs', value['source_analysis']['owners'][0]['result'])

    def test_complete_source_values_override_a_native_compatible_claim(self):
        self.plan['source_graphs']['candidate'] = self.plan['source_graphs']['current']
        with self.assertRaises(JournalError):
            self.verify()

    def test_new_input_incident_connection_cannot_become_a_verified_candidate(self):
        self.plan['source_graphs'] = candidate_result(connect_added=True)['source_graphs']
        with self.assertRaises(JournalError):
            self.verify()

    def test_owner_token_generation_and_type_rebinding_refuse(self):
        for field, wrong in (('token', 'cand_' + 'b' * 64), ('oid', 'other'), ('definition_oid', 'other'),
                             ('generation', 8), ('generation', True), ('model_setters_called', False),
                             ('write_authorized', True), ('native_merge_executor_available', True), ('action', 'inspect')):
            with self.subTest(field=field):
                saved = self.receipt[field]
                self.receipt[field] = wrong
                with self.assertRaises(JournalError):
                    self.verify()
                self.receipt[field] = saved

    def test_missing_and_duplicate_owner_receipts_refuse(self):
        for rows in ([], self.raw['native_class_source_candidates'] * 2):
            with self.subTest(rows=rows):
                self.raw['native_class_source_candidates'] = rows
                with self.assertRaises(JournalError):
                    self.verify()

    def test_unpinned_candidate_cannot_be_reported_as_retained(self):
        self.receipt['scope_pinned'] = False
        with self.assertRaises(JournalError):
            self.verify()

    def test_absent_status_cannot_claim_a_verified_source_or_execute(self):
        receipt = {key: value for key, value in self.receipt.items() if key not in
                   ('source_plan', 'scope_pinned', 'current_baseline_verified', 'native_object_count',
                    'native_collection_count', 'private_negative_count')}
        receipt.update(action='status', state='absent', candidate_present=False)
        self.raw['native_class_source_candidates'][0]['receipt'] = receipt
        value = validate_receipts(self.raw, self.current, self.token, 'status', before=self.before, applied=self.applied)
        self.assertIsNone(value['source_analysis'])
        self.assertFalse(value['write_authorized'])
        receipt['source_plan'] = self.plan
        with self.assertRaises(JournalError):
            validate_receipts(self.raw, self.current, self.token, 'status', before=self.before, applied=self.applied)

    def test_complete_wal_replays_no_native_action(self):
        self.publish([('intent', self.intent), ('candidate_step_started', self.start),
                      ('candidate_step_completed', self.completion), ('finished', self.finish)])
        result = audit_candidate_journal(self.root)
        self.assertEqual(result['status'], 'recorded')
        self.assertEqual(result['completed_owners'], 1)
        self.assertFalse(result['automatic_retry'])
        self.assertEqual(result['model_setters_called'], 0)

    def test_lost_candidate_response_is_separate_unknown_without_replay(self):
        self.publish([('intent', self.intent), ('candidate_step_started', self.start)])
        result = audit_candidate_journal(self.root)
        self.assertEqual(result['status'], 'candidate_outcome_unknown')
        self.assertEqual(result['active_step'], self.start)
        self.assertFalse(result['automatic_retry'])
        self.assertFalse(result['write_authorized'])

    def test_native_refusal_is_recorded_without_a_fake_prepare_receipt(self):
        refusal = {'index': 0, 'oid': 'owner', 'native_error': 'BDE_CLASS_SOURCE_CANDIDATE_ERROR: current baseline changed'}
        self.publish([('intent', self.intent), ('candidate_step_started', self.start),
                      ('candidate_step_completed', refusal), ('finished', {**self.finish, 'status': 'native_refusal'})])
        self.assertEqual(audit_candidate_journal(self.root)['status'], 'native_refusal')

    def test_fake_complete_missing_response_and_foreign_step_refuse(self):
        for events in (
            [('intent', self.intent), ('candidate_step_started', self.start), ('finished', self.finish)],
            [('intent', self.intent), ('candidate_step_started', {**self.start, 'oid': 'foreign'})],
            [('intent', self.intent), ('candidate_step_completed', self.completion)],
        ):
            with self.subTest(events=events), tempfile.TemporaryDirectory() as folder:
                self.root = Path(folder)
                self.publish(events)
                with self.assertRaises(JournalError):
                    audit_candidate_journal(self.root)

    def test_wal_payload_tampering_and_trailing_events_refuse(self):
        self.publish([('intent', self.intent), ('candidate_step_started', self.start),
                      ('candidate_step_completed', self.completion), ('finished', self.finish),
                      ('candidate_step_started', self.start)])
        with self.assertRaises(JournalError):
            audit_candidate_journal(self.root)
        path = self.root / '000000.json'
        row = json.loads(path.read_text())
        row['payload_json'] += ' '
        path.write_text(json.dumps(row))
        with self.assertRaises(JournalError):
            audit_candidate_journal(self.root)


if __name__ == '__main__':
    unittest.main()
