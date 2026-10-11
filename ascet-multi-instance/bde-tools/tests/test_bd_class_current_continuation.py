"""Recovery chains retain old unknown steps and continue only proven remaining work."""
from copy import deepcopy
import json
import unittest

from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import plan_current_recovery, recovery_intent
import test_bd_class_current_protocol as protocol_fixture
import test_bd_class_current_recovery as recovery_fixture
import test_bd_class_current_unaccounted as unaccounted_fixture
import test_bd_class_current_prefix as forward_fixture


class CurrentContinuationTests(unittest.TestCase):
    def lifecycle(self):
        origin, events, final, rows, recovery, _, _ = recovery_fixture.CurrentRecoveryTests().case(0, completed=False)
        _, _, _, _, snapshots = protocol_fixture.CurrentProtocolTests().case()
        states = {command: (publication, members, before) for _, publication, members, before, command in snapshots}
        return origin, events, final, rows, recovery, states

    def chain(self, index, *, completed):
        origin, events, final, rows, recovery, states = self.lifecycle()
        command = recovery[index]['payload']['command']
        original = 'restore_signature_arguments' if command == 'abort_signature_arguments' else command
        publication, members, before = deepcopy(states[original])
        if not completed:
            publication, members = before
        partial = deepcopy(recovery[:index + 1])
        proof = inspect_current_prefix(origin, events, publication, members, recovery_events=partial)
        continuation = [{'kind': 'intent', 'payload': recovery_intent(origin, events, publication, members,
                                                                     recovery_events=partial)}]
        continuation.extend(deepcopy(recovery[index + 2 if completed else index:]))
        continuation[-1]['payload']['dispatch_count'] = sum(row['kind'] == 'step_started' for row in continuation)
        return origin, events, final, rows, partial + continuation, proof

    def test_every_inverse_recovery_boundary_completed_or_untouched(self):
        _, _, _, _, recovery, _ = self.lifecycle()
        for index, event in enumerate(recovery):
            if event['kind'] != 'step_started' or event['payload']['command'] == 'release':
                continue
            for completed in (False, True):
                with self.subTest(command=event['payload']['command'], completed=completed):
                    origin, events, final, rows, history, initial = self.chain(index, completed=completed)
                    self.assertIs(initial['unknown_native_action_completed'], completed)
                    proof = inspect_current_prefix(origin, events, final, rows, recovery_events=history)
                    self.assertTrue(proof['terminal'])
                    self.assertEqual(proof['state']['model_steps'], 16)
                    self.assertEqual(proof['recovery_segments'], 2)
                    self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_chained_intent_cannot_change_state_or_replay_completed_inverse(self):
        _, _, _, _, recovery, _ = self.lifecycle()
        index = next(i for i, row in enumerate(recovery) if row['kind'] == 'step_started'
                     and row['payload']['command'] == 'undo_apply/1')
        for fault in ('state', 'classification', 'outcome', 'authority', 'replay', 'terminal'):
            origin, events, final, rows, history, _ = self.chain(index, completed=True)
            intent = history[index + 1]['payload']
            if fault == 'state':
                intent['verified_origin_state']['model_steps'] += 1
            elif fault == 'classification':
                intent['classification']['owners'][0]['inverse_completed'] += 1
            elif fault == 'outcome':
                intent['unknown_native_action_completed'] = False
            elif fault == 'authority':
                intent['original_dispatch_replay_allowed'] = True
            elif fault == 'replay':
                history[index + 2]['payload']['command'] = 'undo_apply/1'
            else:
                history[-1]['payload']['dispatch_count'] += 1
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, final, rows, recovery_events=history)

    def metadata_case(self, completed):
        origin, events, publication, rows = unaccounted_fixture.CurrentUnaccountedTests().case()
        intent = recovery_intent(origin, events, publication, rows)
        started = {'step': 'recovery/definition/reconcile_action', 'phase': 'recovery',
                   'oid': 'definition', 'component': events[-1]['payload']['component'],
                   'command': 'reconcile_action', 'database_session': 'session'}
        if completed:
            _, _, publication, rows = forward_fixture.CurrentForwardPrefixTests().case(3)
        return origin, events, publication, rows, [{'kind': 'intent', 'payload': intent},
                                                 {'kind': 'step_started', 'payload': started}]

    def test_metadata_completion_loss_does_not_repeat_original_native_action(self):
        for completed in (False, True):
            origin, events, publication, rows, history = self.metadata_case(completed)
            proof = inspect_current_prefix(origin, events, publication, rows, recovery_events=history)
            self.assertIs(proof['unknown_native_action_completed'], completed)
            self.assertEqual(proof['state']['model_steps'], 3)
            plan = plan_current_recovery(origin, events, publication, rows, recovery_events=history)
            self.assertEqual(plan['next']['command'], 'abort_signature_arguments' if completed else 'reconcile_action')
            self.assertEqual(plan['next']['model_cost'], int(completed))

    def test_three_segments_preserve_the_same_physical_prefix(self):
        origin, events, publication, rows, history = self.metadata_case(False)
        for _ in range(2):
            intent = recovery_intent(origin, events, publication, rows, recovery_events=history)
            history.extend([{'kind': 'intent', 'payload': intent}, deepcopy(history[1])])
        proof = inspect_current_prefix(origin, events, publication, rows, recovery_events=history)
        self.assertEqual(proof['recovery_segments'], 3)
        self.assertEqual(proof['state']['model_steps'], 3)
        self.assertEqual(proof['recovery_dispatches'], 0)
        self.assertIs(proof['unknown_native_action_completed'], False)


if __name__ == '__main__':
    unittest.main()
