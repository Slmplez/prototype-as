"""Recovery must preserve completed effects and dynamically finish causal inverses."""
from copy import deepcopy
import json
import unittest

from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import plan_current_recovery, recovery_intent
import test_bd_class_current_prefix as forward_fixture
import test_bd_class_current_protocol as protocol_fixture


class CurrentRecoveryTests(unittest.TestCase):
    def case(self, boundary, *, completed=True):
        origin, complete, final, rows, snapshots = protocol_fixture.CurrentProtocolTests().case()
        original, publication, current_rows, before, command = snapshots[boundary]
        origin['model_publication_outstanding'] = True
        if not completed:
            publication, current_rows = before
        original = deepcopy(original)
        recovery = [{'kind': 'intent', 'payload': recovery_intent(origin, original, publication, current_rows)}]
        start = len(original) + 1 if completed else len(original) - 1
        for event in deepcopy(complete[start:]):
            body = event['payload']
            if event['kind'] == 'step_started':
                body['phase'] = 'recovery'
                if body['command'] == 'restore_signature_arguments':
                    body['command'] = 'abort_signature_arguments'
                body['step'] = f"recovery/{body['oid']}/{body['command']}"
            elif event['kind'] == 'step_completed':
                body['step'] = body['step'].replace('inverse/', 'recovery/', 1)
                if body['step'].endswith('/restore_signature_arguments'):
                    body['step'] = body['step'].replace('/restore_signature_arguments', '/abort_signature_arguments')
                    receipt = json.loads(body['native_result'])
                    receipt['action'] = 'abort_signature_arguments'
                    body['native_result'] = json.dumps(receipt)
            elif event['kind'] == 'finished':
                body.update(status='current_recovered', dispatch_count=sum(row['kind'] == 'step_started' for row in recovery))
            recovery.append(event)
        return origin, original, final, rows, recovery, publication, current_rows

    def test_full_recovery_after_each_completed_unknown_inverse(self):
        for boundary in range(12):
            with self.subTest(boundary=boundary):
                origin, events, final, rows, recovery, _, _ = self.case(boundary)
                proof = inspect_current_prefix(origin, events, final, rows, recovery_events=recovery)
                self.assertTrue(proof['terminal'])
                self.assertEqual(proof['state']['model_steps'], 16)
                self.assertEqual(proof['recovery_dispatches'], 12 - boundary)
                self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_partial_forward_never_resends_original_apply_or_store(self):
        for completed in (False, True):
            for boundary in range(8):
                with self.subTest(boundary=boundary, completed=completed):
                    origin, events, publication, rows = forward_fixture.CurrentForwardPrefixTests().case(
                        boundary, completed_unknown=completed)
                    plan = plan_current_recovery(origin, events, publication, rows)
                    command = plan['next']['command']
                    self.assertIn(command, ('observe_restored', 'abort_signature_arguments'))
                    self.assertFalse(plan['recovery_dispatch_authorized'])

    def test_full_recovery_after_each_uniquely_untouched_inverse(self):
        for boundary in range(12):
            with self.subTest(boundary=boundary):
                origin, events, final, rows, recovery, _, _ = self.case(boundary, completed=False)
                proof = inspect_current_prefix(origin, events, final, rows, recovery_events=recovery)
                self.assertTrue(proof['terminal'])
                self.assertEqual(proof['recovery_dispatches'], 13 - boundary)

    def test_unknown_release_stays_quarantined(self):
        origin, _, _, _, snapshots = protocol_fixture.CurrentProtocolTests().case()
        origin['model_publication_outstanding'] = True
        events, publication, rows, _, _ = snapshots[-1]
        with self.assertRaisesRegex(ValueError, 'fresh absence'):
            plan_current_recovery(origin, events, publication, rows)

    def test_remaining_step_has_exact_dynamic_effect_and_refresh_boundary(self):
        expected = ('restore_signature_commit', 'undo_publish_store/1', 'undo_publish_store/2',
                    'undo_apply/1', 'undo_apply/2', 'undo_apply/3', 'restore_store',
                    'undo_restore_store/1', 'undo_restore_store/2', 'finish_restore', 'reconcile_restore',
                    'observe_restored')
        for boundary, command in enumerate(expected):
            with self.subTest(command=command):
                origin, events, _, _, recovery, publication, rows = self.case(boundary)
                plan = plan_current_recovery(origin, events, publication, rows, recovery_events=recovery[:1])
                self.assertEqual(plan['next']['command'], command)
                self.assertEqual(plan['refresh_required_after'], command == 'restore_store')
                if command.startswith('undo_'):
                    self.assertEqual(plan['next']['model_cost'], 1)
                    self.assertTrue(plan['next']['expected_native_changes'])

    def test_recovery_cannot_widen_or_change_its_origin_or_skip_observation(self):
        for fault in ('domain', 'classification', 'outcome', 'state', 'step', 'effect', 'observation', 'terminal'):
            origin, events, final, rows, recovery, _, _ = self.case(1)
            intent = recovery[0]['payload']
            if fault == 'domain':
                intent['database_session'] = 'different'
            elif fault == 'classification':
                intent['classification']['owners'][0]['forward_completed'] -= 1
            elif fault == 'outcome':
                intent['unknown_native_action_completed'] = False
            elif fault == 'state':
                intent['verified_origin_state']['model_steps'] += 1
            elif fault == 'step':
                recovery[1]['payload']['command'] = 'apply/1'
            elif fault == 'effect':
                receipt = json.loads(recovery[2]['payload']['native_result'])
                receipt['step_actual_native_changes'] = []
                recovery[2]['payload']['native_result'] = json.dumps(receipt)
            elif fault == 'observation':
                recovery = [row for row in recovery if row['kind'] != 'observed']
            else:
                recovery[-1]['payload']['dispatch_count'] += 1
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, final, rows, recovery_events=recovery)


if __name__ == '__main__':
    unittest.main()
