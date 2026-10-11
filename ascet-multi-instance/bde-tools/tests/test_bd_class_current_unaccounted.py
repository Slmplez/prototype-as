"""An active native action needs one complete outcome and metadata-only accounting."""
from copy import deepcopy
import json
import unittest

from bd_class_current_prefix import inspect_current_prefix
from bd_class_current_recovery import plan_current_recovery, recovery_intent
import test_bd_class_current_prefix as forward_fixture
import test_bd_class_current_inverse as inverse_fixture


class CurrentUnaccountedTests(unittest.TestCase):
    def case(self, boundary=3, *, after=True, accounted=False, collateral=False):
        original, events, publication, before_rows = forward_fixture.CurrentForwardPrefixTests().case(
            boundary, completed_unknown=False)
        _, _, after_publication, after_rows = forward_fixture.CurrentForwardPrefixTests().case(boundary)
        actual_publication = deepcopy(after_publication if accounted else publication)
        actual_rows = deepcopy(after_rows if accounted else before_rows)
        row, before, completed = actual_rows[0], before_rows[0], after_rows[0]
        command = events[-1]['payload']['command']
        kind = 'store' if command == 'publish_store' else 'primitive'
        changes = deepcopy(completed['actual_native_changes'][-1][1]) if after else []
        undo = []
        if collateral:
            changes, undo = inverse_fixture.CurrentCollateralInverseTests().ordered()
            if accounted:
                row.update(publish_store_undo_steps=len(undo), publish_store_undo_plan=deepcopy(undo))
                row['actual_native_changes'][-1][1] = deepcopy(changes)
        row.update(last_command=command, active_command=command, active_kind=kind,
            active_accounted=accounted, active_pending_after_return=True, action_completed=False,
            active_requires_store=kind == 'store', unknown_before_matches=not after, unknown_after_matches=after,
            unknown_native_changes=changes, unknown_store_undo_plan=undo,
            physical_prefix_matches=not after or accounted or changes == [],
            state=('store_completed' if kind == 'store' else 'primitive_completed') if accounted else
                'store_started' if kind == 'store' else 'primitive_started')
        if kind == 'store':
            source = deepcopy(after_publication['owners'][0] if after else publication['owners'][0])
            source.update(owner_state='published' if accounted else 'publish_started',
                          publish_stores=1 if accounted else 0)
            actual_publication['owners'][0] = source
            row.update(entry_state=source['owner_state'], actual_source_graph=source['actual_source_graph'],
                       current_source_matches=source['current_matches'], candidate_source_matches=source['candidate_matches'])
            row['native_context_guard']['owners'][0].update(owner_state=source['owner_state'], required_source_role='either',
                current_source_matches=source['current_matches'], candidate_source_matches=source['candidate_matches'])
        return original, events, actual_publication, actual_rows

    def test_all_primitive_before_after_and_accounted_encoding_loss(self):
        for boundary in (3, 4, 5):
            for after, accounted in ((False, False), (True, False), (True, True)):
                with self.subTest(boundary=boundary, after=after, accounted=accounted):
                    origin, events, publication, rows = self.case(boundary, after=after, accounted=accounted)
                    proof = inspect_current_prefix(origin, events, publication, rows)
                    self.assertIs(proof['unknown_native_action_completed'], after)
                    pending = proof['reconciliation_required']
                    self.assertEqual(pending['accounting_model_steps'], int(after and not accounted))
                    plan = plan_current_recovery(origin, events, publication, rows)
                    self.assertEqual(plan['next']['command'], 'reconcile_action')
                    self.assertEqual(plan['next']['model_cost'], 0)
                    self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_store_full_dynamic_inverse_and_untouched_source(self):
        for after, accounted, collateral in ((False, False, False), (True, False, False),
                                            (True, False, True), (True, True, True)):
            with self.subTest(after=after, accounted=accounted, collateral=collateral):
                origin, events, publication, rows = self.case(6, after=after, accounted=accounted, collateral=collateral)
                proof = inspect_current_prefix(origin, events, publication, rows)
                self.assertIs(proof['unknown_native_action_completed'], after)
                self.assertEqual(proof['state']['owners']['definition']['publish_store_undo_steps'], 2 if collateral else 0)
                self.assertEqual(proof['reconciliation_required']['accounting_model_steps'], int(after and not accounted))

    def test_ambiguous_partial_effect_and_changed_accounting_refuse(self):
        for fault in ('both', 'neither', 'effect', 'counter', 'history', 'command', 'prefix', 'kind', 'pending', 'source', 'plan', 'store_cost'):
            origin, events, publication, rows = self.case(6, collateral=True) if fault == 'plan' else self.case()
            row = rows[0]
            if fault == 'both':
                row['unknown_before_matches'] = True
            elif fault == 'neither':
                row['unknown_after_matches'] = False
            elif fault == 'effect':
                row['unknown_native_changes'] = []
            elif fault == 'counter':
                row['forward_completed'] += 1
            elif fault == 'history':
                row['actual_native_changes'].append(['apply/99', []])
            elif fault == 'command':
                row['active_command'] = 'apply/99'
            elif fault == 'prefix':
                row['physical_prefix_matches'] = True
            elif fault == 'kind':
                row['active_kind'] = 'store'
            elif fault == 'pending':
                row['active_pending_after_return'] = False
            elif fault == 'source':
                publication['owners'][0]['current_matches'] = False
            elif fault == 'store_cost':
                row['active_requires_store'] = True
            else:
                row['unknown_store_undo_plan'].pop()
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, publication, rows)

    def test_persisted_source_only_store_has_no_native_collateral(self):
        origin, events, publication, rows = self.case(6)
        rows[0].update(unknown_native_changes=[], unknown_store_undo_plan=[], physical_prefix_matches=True)
        proof = inspect_current_prefix(origin, events, publication, rows)
        self.assertTrue(proof['unknown_native_action_completed'])
        self.assertEqual(proof['reconciliation_required']['accounting_model_steps'], 1)
        self.assertEqual(proof['state']['owners']['definition']['publish_store_undo_steps'], 0)
        self.assertEqual(plan_current_recovery(origin, events, publication, rows)['next']['model_cost'], 0)

    def test_actual_metadata_reconciliation_has_zero_new_setters_and_exact_history(self):
        for after in (False, True):
            origin, events, publication, rows = self.case(after=after)
            proof = inspect_current_prefix(origin, events, publication, rows)
            recovery = [{'kind': 'intent', 'payload': recovery_intent(origin, events, publication, rows)}]
            oid = 'definition'
            body = {'step': f'recovery/{oid}/reconcile_action', 'phase': 'recovery', 'oid': oid,
                    'component': events[-1]['payload']['component'], 'command': 'reconcile_action', 'database_session': 'session'}
            recovery.append({'kind': 'step_started', 'payload': body})
            _, _, live, fresh = forward_fixture.CurrentForwardPrefixTests().case(3, completed_unknown=after)
            receipt = deepcopy(fresh[0])
            pending = proof['reconciliation_required']
            receipt.update(action='reconcile_action', action_completed=True, active_command='apply/1', active_kind='primitive',
                active_accounted=after, active_pending_after_return=False, model_setters_called=0,
                unknown_before_matches=not after, unknown_after_matches=after,
                step_actual_native_changes=pending['expected_native_changes'])
            recovery.append({'kind': 'step_completed', 'payload': {'step': body['step'], 'native_result': json.dumps(receipt)}})
            audited = inspect_current_prefix(origin, events, live, fresh, recovery_events=recovery)
            self.assertIsNone(audited['reconciliation_required'])
            self.assertEqual(audited['state']['model_steps'], 3 if after else 2)
            self.assertEqual(audited['recovery_dispatches'], 1)
            receipt['model_setters_called'] = 1
            recovery[-1]['payload']['native_result'] = json.dumps(receipt)
            with self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, live, fresh, recovery_events=recovery)


if __name__ == '__main__':
    unittest.main()
