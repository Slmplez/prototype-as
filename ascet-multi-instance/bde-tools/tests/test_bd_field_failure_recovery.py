"""Validate new recovery contracts against actual sealed native compensation."""
import copy
import json
from pathlib import Path
import unittest

from bd_edit_journal import JournalError, fingerprint
from bd_field_failure_recovery import validate_reply, completed
from bd_structure_journal import StructureJournal

BASE = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-05'


class FieldFailureRecoveryTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        restored = json.loads((BASE / 'bde-route-failure-compensation-apply-01/result.json').read_text(encoding='utf-8'))
        cls.reply = restored['compensation_observed']
        cls.record = {'native_token': restored['native_token'], 'transaction': restored['transaction'],
            'witness_token': restored['witness_token'], 'terminal_proof': copy.deepcopy(cls.reply['compensation']),
            'original_field_execution': copy.deepcopy(cls.reply['original_field_execution'])}
        cls.log = StructureJournal(BASE / 'bde-local-source-independent-route-02/store/edits')
        events = cls.log.read(restored['native_token']); cls.events = events
        cls.request = events[0]['payload']; cls.before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')

    def reply_copy(self):
        r = copy.deepcopy(self.reply); r['restored_observation'] = copy.deepcopy(self.before)
        return r

    def reject(self, reply):
        with self.assertRaises(JournalError):
            validate_reply(reply, self.record, self.request, self.before)

    def test_real_terminal_preserves_failed_forward_and_counts_actual_writes(self):
        proof = validate_reply(self.reply_copy(), self.record, self.request, self.before)
        self.assertEqual(proof['primitive_writes'], 10)
        self.assertEqual(self.reply['native_state'], 'started')
        self.assertFalse(self.reply['original_field_execution']['terminal_verified'])

    def test_incomplete_native_progress_rejected(self):
        r = self.reply_copy(); r['compensation']['native_progress']['completed_cells'] -= 1; self.reject(r)

    def test_missing_source_restoration_rejected(self):
        r = self.reply_copy(); r['compensation']['source_after'] = None; self.reject(r)

    def test_original_identity_mismatch_rejected(self):
        r = self.reply_copy(); r['compensation']['original_verified'] = False; self.reject(r)

    def test_changed_original_forward_status_rejected(self):
        r = self.reply_copy(); r['original_field_execution']['phase'] = 'terminal'; self.reject(r)

    def test_unchanged_flag_cannot_replace_actual_restored_observation(self):
        r = self.reply_copy()
        next(row for row in r['restored_observation']['entries'] if 'size' in row)['size'][0] += 1
        self.reject(r)

    def test_wrong_transaction_rejected(self):
        r = self.reply_copy(); r['compensation']['transaction'] = self.record['native_token']; self.reject(r)

    def test_mutation_in_status_query_rejected(self):
        r = self.reply_copy(); r['store_called'] = True; self.reject(r)

    def test_completed_history_requires_no_live_adapter(self):
        result = completed(self.log, self.record['native_token'], self.events, {'domain': self.request['domain']})
        self.assertTrue(result['reconciled'])
        self.assertFalse(result['current_model_verified'])
        self.assertFalse(result['model_mutation_dispatched'])

    def test_historical_proof_cannot_hide_partial_compensation(self):
        events = copy.deepcopy(self.events)
        evidence = next(e['payload'] for e in events if e['kind'] == 'field_failure_compensation_evidence')
        evidence['terminal_proof']['source_progress']['state'] = 'started'
        with self.assertRaises(JournalError):
            completed(self.log, self.record['native_token'], events, {'domain': self.request['domain']})

    def test_full_fresh_reply_is_checksum_and_baseline_checked(self):
        events = copy.deepcopy(self.events)
        reconciled = next(e['payload'] for e in events if e['kind'] == 'field_failure_compensation_reconciled')
        reconciled['fresh_reply'] = self.reply_copy()
        reconciled['fresh_proof_sha256'] = fingerprint(reconciled['fresh_reply'])
        self.assertTrue(completed(self.log, self.record['native_token'], events,
            {'domain': self.request['domain']})['reconciled'])
        reconciled['fresh_reply']['restored_observation']['generation'] += 1
        reconciled['fresh_proof_sha256'] = fingerprint(reconciled['fresh_reply'])
        with self.assertRaises(JournalError):
            completed(self.log, self.record['native_token'], events, {'domain': self.request['domain']})

    def test_diff_keeps_actual_compensation_separate_from_unknown_forward(self):
        result = self.log.diff(self.record['native_token'])
        self.assertEqual(result['status'], 'compensated')
        self.assertEqual(result['failure_compensation']['original_forward_status'], 'outcome_unknown')
        self.assertEqual(result['failure_compensation']['primitive_writes'], 10)
        self.assertEqual(len(result['failure_compensation']['actual_native_changes']), 6)
        self.assertEqual(result['observations'], [])


if __name__ == '__main__':
    unittest.main()
