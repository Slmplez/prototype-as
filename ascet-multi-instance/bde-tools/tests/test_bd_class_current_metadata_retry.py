"""Interrupted metadata recovery cannot authorize another model action."""
import unittest

from bd_class_current_recovery import inspect_untouched_metadata_retry, recovery_intent
import test_bd_class_current_unaccounted as unaccounted_fixture


class CurrentMetadataRetryTests(unittest.TestCase):
    def case(self):
        origin, events, publication, rows = unaccounted_fixture.CurrentUnaccountedTests().case()
        intent = recovery_intent(origin, events, publication, rows)
        started = {'step': 'recovery/definition/reconcile_action', 'phase': 'recovery',
                   'oid': 'definition', 'component': events[-1]['payload']['component'],
                   'command': 'reconcile_action', 'database_session': 'session'}
        return origin, events, [{'kind': 'intent', 'payload': intent},
                                {'kind': 'step_started', 'payload': started}], publication, rows

    def test_only_unchanged_first_metadata_failure_can_retry(self):
        origin, events, prior, publication, rows = self.case()
        proof = inspect_untouched_metadata_retry(origin, events, prior, publication, rows)
        self.assertEqual(proof['model_setters_called'], 0)
        self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_completed_or_model_dispatch_and_changed_classification_refuse(self):
        for fault in ('completed', 'missing', 'command', 'owner', 'phase', 'domain',
                      'classification', 'steps', 'outcome', 'state', 'authority'):
            origin, events, prior, publication, rows = self.case()
            if fault == 'completed':
                prior.append({'kind': 'step_completed', 'payload': {}})
            elif fault == 'missing':
                prior.pop()
            elif fault in ('command', 'owner', 'phase'):
                prior[1]['payload'][{'command': 'command', 'owner': 'oid', 'phase': 'phase'}[fault]] = 'changed'
            elif fault == 'domain':
                prior[0]['payload']['domain']['session'] = 'changed'
            elif fault == 'classification':
                prior[0]['payload']['classification']['owners'][0]['state'] = 'changed'
            elif fault == 'steps':
                prior[0]['payload']['verified_origin_state']['model_steps'] += 1
            elif fault == 'outcome':
                prior[0]['payload']['unknown_native_action_completed'] = False
            elif fault == 'state':
                rows[0]['active_accounted'] = True
            else:
                prior[0]['payload']['original_dispatch_replay_allowed'] = True
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_untouched_metadata_retry(origin, events, prior, publication, rows)


if __name__ == '__main__':
    unittest.main()
