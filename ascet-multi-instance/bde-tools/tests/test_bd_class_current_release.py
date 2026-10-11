"""A lost release reply needs native identity, fresh full values and immutable WAL."""
from copy import deepcopy
import unittest

from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import plan_current_recovery, recovery_intent
import test_bd_class_current_protocol as protocol_fixture
import test_bd_class_current_recovery as recovery_fixture


class CurrentReleaseTests(unittest.TestCase):
    def case(self, completed):
        origin, _, _, _, snapshots = protocol_fixture.CurrentProtocolTests().case()
        events, publication, rows, _, _ = snapshots[-1]
        origin['model_publication_outstanding'] = True
        publication.update(publication_record_present=not completed, release_witness_present=completed,
            release_witness_profile='class_current_release_witness_v1' if completed else None,
            release_witness_verified=completed,
            release_current_observation=deepcopy(events[0]['payload']['current_observation']))
        return origin, events, publication, rows

    def continuation(self):
        origin, events, publication, rows = self.case(True)
        recovery = [{'kind': 'intent', 'payload': recovery_intent(origin, events, publication, rows)},
            {'kind': 'release_reconciled', 'payload': {
                'observation': deepcopy(events[0]['payload']['current_observation']),
                'classification': {'publication': deepcopy(publication), 'owners': deepcopy(rows)},
                'model_setters_called': 0}},
            {'kind': 'finished', 'payload': {'status': 'current_recovered', 'outstanding': False, 'dispatch_count': 0}}]
        return origin, events, publication, rows, recovery

    def test_exact_fresh_presence_distinguishes_both_release_outcomes(self):
        for completed in (False, True):
            with self.subTest(completed=completed):
                origin, events, publication, rows = self.case(completed)
                proof = inspect_current_prefix(origin, events, publication, rows)
                self.assertIs(proof['unknown_native_action_completed'], completed)
                self.assertIs(proof['state']['release_completed'], completed)
                plan = plan_current_recovery(origin, events, publication, rows)
                self.assertEqual(plan['next']['command'], 'reconcile_release' if completed else 'release')
                self.assertEqual(plan['next']['manager'], 'journal' if completed else 'publication')
                self.assertEqual(plan['next']['model_cost'], 0)

    def test_completed_release_is_reconciled_without_native_dispatch(self):
        origin, events, publication, rows, recovery = self.continuation()
        proof = inspect_current_prefix(origin, events, publication, rows, recovery_events=recovery)
        self.assertTrue(proof['terminal'])
        self.assertEqual(proof['recovery_dispatches'], 0)
        self.assertEqual(proof['state']['model_steps'], 16)
        self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_missing_witness_or_any_changed_complete_evidence_refuses(self):
        for fault in ('presence', 'profile', 'witness', 'seal', 'observation', 'native', 'signature', 'source', 'identity'):
            origin, events, publication, rows = self.case(True)
            if fault == 'presence':
                publication['publication_record_present'] = 0
            elif fault == 'profile':
                publication['release_witness_profile'] = 'wrong'
            elif fault == 'witness':
                publication['release_witness_present'] = False
            elif fault == 'seal':
                publication['release_witness_verified'] = False
            elif fault == 'observation':
                publication['release_current_observation']['owners'] = []
            elif fault == 'native':
                rows[0]['full_native_original_restored'] = False
            elif fault == 'signature':
                publication['current_argument_identities_match'] = False
            elif fault == 'source':
                publication['owners'][0]['current_matches'] = False
            else:
                rows[0]['current_diagram_identity_verified'] = False
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, publication, rows)

    def test_terminal_needs_new_fresh_reconciliation_not_a_missing_reply(self):
        for fault in ('missing', 'setter', 'observation', 'duplicate', 'dispatch', 'replay'):
            origin, events, publication, rows, recovery = self.continuation()
            if fault == 'missing':
                recovery.pop(1)
            elif fault == 'setter':
                recovery[1]['payload']['model_setters_called'] = 1
            elif fault == 'observation':
                recovery[1]['payload']['observation'] = {}
            elif fault == 'duplicate':
                recovery.insert(2, deepcopy(recovery[1]))
            elif fault == 'dispatch':
                recovery[-1]['payload']['dispatch_count'] = 1
            else:
                recovery.insert(1, {'kind': 'step_started', 'payload': events[-1]['payload']})
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, publication, rows, recovery_events=recovery)

    def test_recovery_release_reply_loss_keeps_all_predecessor_segments(self):
        origin, events, final, rows, recovery, _, _ = recovery_fixture.CurrentRecoveryTests().case(0, completed=False)
        prior = deepcopy(recovery[:-2])
        self.assertEqual(prior[-1]['payload']['command'], 'release')
        final.update(publication_record_present=False, release_witness_present=True,
            release_witness_profile='class_current_release_witness_v1', release_witness_verified=True,
            release_current_observation=deepcopy(events[0]['payload']['current_observation']))
        next_segment = [{'kind': 'intent', 'payload': recovery_intent(origin, events, final, rows, recovery_events=prior)},
            {'kind': 'release_reconciled', 'payload': {'observation': deepcopy(events[0]['payload']['current_observation']),
                'classification': {'publication': deepcopy(final), 'owners': deepcopy(rows)}, 'model_setters_called': 0}},
            {'kind': 'finished', 'payload': {'status': 'current_recovered', 'outstanding': False, 'dispatch_count': 0}}]
        proof = inspect_current_prefix(origin, events, final, rows, recovery_events=prior + next_segment)
        self.assertTrue(proof['terminal'])
        self.assertEqual(proof['recovery_segments'], 2)
        self.assertEqual(proof['latest_recovery_dispatches'], 0)


if __name__ == '__main__':
    unittest.main()
