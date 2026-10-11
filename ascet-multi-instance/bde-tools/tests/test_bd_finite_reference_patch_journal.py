"""WAL-bound request controls with synthetic native receipts; no online acceptance."""
from copy import deepcopy
import unittest

import bd_connect_journal as connect
from bd_edit_journal import JournalError, fingerprint
import test_bd_module_persistent_references as journal_fixtures
import test_bde_reference_leaf_nonempty_probe as raw_fixtures


class FinitePatchJournalTests(unittest.TestCase):
    def setUp(self):
        journal_fixtures.FiniteReferenceJournalTests.setUp(self)
        prior = self.adapter.material
        def material(token, phase, oid):
            result = prior(token, phase, oid); raw = raw_fixtures.NonemptyTests().native()
            before, after = deepcopy(raw['before']), deepcopy(raw['actual']['stages'][1])
            for value in (before, after):
                value['component_oid'] = oid; value['owners'][0]['oid'] = oid
            finite = result['module_persistent_references']
            finite.update(before=before, after=None if phase == 'prepared' else after)
            return result
        self.adapter.material = material

    def forward(self):
        return journal_fixtures.FiniteReferenceJournalTests.forward(self)

    def test_original_wal_drives_complete_inverse_without_calls_or_append(self):
        first = self.forward(); token = first['change_id']; events = deepcopy(self.log.read(token))
        native_calls = deepcopy(self.adapter.calls); finite = connect.one(events, 'observed')['module_persistent_references_actual']
        request = connect.persistent_reference_inverse_request(self.log, token, finite['after'])
        self.assertTrue(request['journal_bound']); self.assertEqual(request['candidate'], finite['before'])
        self.assertEqual(request['original_domain'], self.domain)
        self.assertEqual(request['durable_actual_sha256'], fingerprint(connect.one(events, 'observed')))
        self.assertFalse(request['production_connection_inverse_available']); self.assertFalse(request['write_authorized'])
        self.assertEqual(len(request['patches']), 3)
        self.assertEqual(self.log.read(token), events); self.assertEqual(self.adapter.calls, native_calls)
        with self.assertRaises(JournalError): connect.context(self.log, token)

    def test_current_cannot_replace_historical_original(self):
        first = self.forward(); token = first['change_id']; finite = connect.one(self.log.read(token), 'observed')['module_persistent_references_actual']
        current = deepcopy(finite['after']); current['owners'][1]['records'][0]['allocated_bytes'][-1] ^= 1
        current['owners'][1]['records'][0]['bytes'][-1] ^= 1
        with self.assertRaises(ValueError): connect.persistent_reference_inverse_request(self.log, token, current)

    def test_unknown_reply_is_not_an_inverse_request_or_history_upgrade(self):
        self.adapter.lose_reply = True; first = self.forward()
        with self.assertRaises(JournalError): connect.persistent_reference_inverse_request(self.log, first['change_id'], {})
        self.assertEqual(self.adapter.calls.count('apply'), 1)


if __name__ == '__main__': unittest.main()
