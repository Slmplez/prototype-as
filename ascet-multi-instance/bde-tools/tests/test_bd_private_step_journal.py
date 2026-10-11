"""Recorded-WAL integrity negatives; these tests are not online acceptance."""
from copy import deepcopy
from functools import lru_cache
import json
from pathlib import Path
import unittest

from bd_class_study_journal import read_events
from bd_private_step_journal import audit, audit_events


EVIDENCE = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-private-remote-14'


@lru_cache(maxsize=1)
def recorded():
    raw = json.loads((EVIDENCE / 'raw-0.json').read_text(encoding='utf-8'))
    case = raw['native_private_remote_observed'][0]['checks']['cases'][2]
    return [(row['kind'], row['payload']) for row in read_events(case['journal'])]


class PrivateStepJournalTests(unittest.TestCase):
    def events(self):
        return deepcopy(recorded())

    def changed(self, predicate, mutate):
        events = self.events()
        index = next(index for index, row in enumerate(events) if predicate(*row))
        mutate(events[index][1])
        with self.assertRaises((ValueError, KeyError, TypeError)):
            audit_events(events)

    def test_recorded_complete_wal(self):
        receipt = audit_events(self.events())
        self.assertEqual(receipt['status'], 'recovered')
        self.assertEqual(receipt['application_receipts_discarded'], 2)
        self.assertEqual(receipt['readonly_reconciliations'], 2)

    def test_pending_intent_is_not_recovered(self):
        events = self.events()
        index = next(i for i, row in enumerate(events) if row[0] == 'step_started')
        with self.assertRaises(ValueError):
            audit_events(events[:index + 1])

    def test_reply_loss_without_observation_is_not_recovered(self):
        events = self.events()
        index = next(i for i, row in enumerate(events) if row[0] == 'application_receipt_discarded')
        with self.assertRaises(ValueError):
            audit_events(events[:index + 1])

    def test_skipped_expected_step(self):
        self.changed(lambda kind, body: kind == 'step_started', lambda body: body.update(index=2))

    def test_reply_counter_cannot_claim_completion(self):
        self.changed(lambda kind, body: kind == 'reconciled', lambda body: body['reply']['status'].update(executed=999))

    def test_reconciliation_cannot_replay_setter(self):
        self.changed(lambda kind, body: kind == 'reconciled', lambda body: body['reply'].update(action='step', index=1))

    def test_unknown_native_outcome_rejected(self):
        self.changed(lambda kind, body: kind == 'reconciled', lambda body: body['reply']['status'].update(actual_observation_complete=False))

    def test_cross_session_reply_rejected(self):
        self.changed(lambda kind, body: kind == 'reconciled', lambda body: body['reply'].update(token='0' * 32))

    def test_model_authorization_rejected(self):
        self.changed(lambda kind, body: kind == 'prepared', lambda body: body['export'].update(write_authorized=True))

    def test_native_archive_claim_rejected(self):
        self.changed(lambda kind, body: kind == 'prepared', lambda body: body['export'].update(native_archive_available=True))

    def test_boundary_cannot_be_a_setter_target(self):
        def mutate(body):
            body['export']['steps'][0]['ref'] = body['export']['boundaries'][0]['ref']
        self.changed(lambda kind, body: kind == 'prepared', mutate)

    def test_omitted_current_field_rejected(self):
        def mutate(body):
            row = next(row for row in body['export']['current'] if row['kind'] == 'fields')
            row['values'].pop()
        self.changed(lambda kind, body: kind == 'prepared', mutate)

    def test_omitted_original_rejected(self):
        self.changed(lambda kind, body: kind == 'prepared', lambda body: body['export']['original'].pop())

    def test_added_unaudited_mutable_object_rejected(self):
        def mutate(body):
            ref = next(row['ref'] for row in body['export']['current'] if row['class'] == 'Dictionary')
            body['export']['additional_objects'].append(ref)
        self.changed(lambda kind, body: kind == 'prepared', mutate)

    def test_actual_before_value_rejected(self):
        def mutate(body):
            body['reply']['actual_changes'][0]['before'] = ['symbol', 'tampered']
        self.changed(lambda kind, body: kind == 'step_observed' and body['reply']['action'] == 'step', mutate)

    def test_empty_actual_diff_cannot_confirm_primitive(self):
        self.changed(lambda kind, body: kind == 'step_observed' and body['reply']['action'] == 'step',
                     lambda body: body['reply'].update(actual_changes=[], recovery_plan=[]))

    def test_false_refusal_unchanged_claim(self):
        self.changed(lambda kind, body: kind == 'refused', lambda body: body['after']['status'].update(executed=999))

    def test_overlapping_or_duplicate_dispatch_rejected(self):
        events = self.events()
        index = next(i for i, row in enumerate(events) if row[0] == 'step_started')
        events.insert(index + 1, deepcopy(events[index]))
        with self.assertRaises(ValueError):
            audit_events(events)

    def test_event_after_terminal_rejected(self):
        events = self.events()
        events.append(deepcopy(events[-1]))
        with self.assertRaises(ValueError):
            audit_events(events)

    def test_writeahead_failure_has_zero_dispatch(self):
        raw = json.loads((EVIDENCE / 'raw-0.json').read_text(encoding='utf-8'))
        root = raw['native_private_remote_observed'][0]['checks']['writeahead_failure_journal']
        receipt = audit(root)
        self.assertEqual((receipt['status'], receipt['execution_primitives']), ('writeahead_refused', 0))


if __name__ == '__main__':
    unittest.main()
