"""Offline scenarios for semantic inverse planning; no native inverse claim."""
import unittest

from bd_edit_journal import clone, JournalError
from bd_module_references import FIELDS, SNAPSHOT_PROFILE, plan_inverse, validate_snapshot
from test_bd_module_references import reference_receipt, TOKEN
import test_bd_module_references as coordinator
import bd_connect_journal as connect


def snapshot(image, oid='fixture_oid'):
    return dict(profile=SNAPSHOT_PROFILE, component_oid=oid, image=clone(image), complete=True,
        model_setters_called=0, store_called=False, inverse_authorized=False, full_commit_resource_closure=False)


class ModuleReferenceInverseTests(unittest.TestCase):
    def plan(self, receipt, image):
        return plan_inverse(receipt, snapshot(image), token=TOKEN, component_oid='fixture_oid')

    def test_added_project_membership_reverts_both_sets(self):
        receipt = reference_receipt('attached')
        result = self.plan(receipt, receipt['after'])
        self.assertEqual(result['candidate'], receipt['before'])
        self.assertEqual(len(result['patches']), 2)
        self.assertEqual(result['status'], 'planned_only')
        self.assertEqual(result['native_calls'], 0)
        self.assertFalse(result['inverse_authorized'])
        self.assertFalse(result['full_commit_resource_closure'])

    def test_unrelated_additions_and_removals_survive(self):
        receipt = reference_receipt('attached'); current = clone(receipt['after'])
        for field in FIELDS:
            current[field].append(['unrelated', 'SGProject'])
            current[field] = [row for row in current[field] if row[0] != 'module0']
        result = self.plan(receipt, current)
        self.assertEqual(result['candidate'], {field: [['unrelated', 'SGProject']] for field in FIELDS})

    def test_removed_original_member_restored_preserving_new_owner(self):
        receipt = reference_receipt('attached')
        for field in FIELDS:
            receipt['before'][field] = [['removed', 'SGProject']]
            receipt['after'][field] = []
        current = {field: [['new', 'SGModule']] for field in FIELDS}
        expected = {field: [['new', 'SGModule'], ['removed', 'SGProject']] for field in FIELDS}
        self.assertEqual(self.plan(receipt, current)['candidate'], expected)

    def test_same_oid_class_change_requires_exact_after_class(self):
        receipt = reference_receipt('attached')
        receipt['after']['owner_references'] = [['module0', 'SGProject']]
        self.assertEqual(self.plan(receipt, receipt['after'])['candidate'], receipt['before'])
        current = clone(receipt['after']); current['owner_references'] = [['module0', 'SGClass']]
        result = self.plan(receipt, current)
        self.assertEqual(result['status'], 'conflict')
        self.assertIsNone(result['candidate'])

    def test_external_deletion_of_added_owner_is_not_assumed_already_reverted(self):
        receipt = reference_receipt('attached'); current = clone(receipt['after'])
        current['owner_references'].pop()
        result = self.plan(receipt, current)
        self.assertIsNone(result['candidate'])
        self.assertEqual(result['conflicts'][0]['oid'], 'project0')

    def test_external_class_for_removed_oid_conflicts(self):
        receipt = reference_receipt('attached')
        receipt['after']['owner_references'] = []
        current = clone(receipt['after']); current['owner_references'] = [['module0', 'SGClass']]
        self.assertEqual(self.plan(receipt, current)['status'], 'conflict')

    def test_one_set_conflict_suppresses_candidate_for_both_sets(self):
        receipt = reference_receipt('attached'); current = clone(receipt['after'])
        current['owner_database_record_references'] = [['project0', 'SGClass']]
        result = self.plan(receipt, current)
        self.assertEqual(len(result['patches']), 1)
        self.assertEqual(len(result['conflicts']), 1)
        self.assertIsNone(result['candidate'])

    def test_sets_are_independent_and_untouched_class_change_survives(self):
        receipt = reference_receipt('attached'); current = clone(receipt['after'])
        current['owner_references'][0][1] = 'SGClass'
        result = self.plan(receipt, current)
        self.assertEqual(result['candidate']['owner_references'], [['module0', 'SGClass']])
        self.assertEqual(result['candidate']['owner_database_record_references'], [])

    def test_restoration_that_exceeds_bound_refuses_candidate(self):
        receipt = reference_receipt('attached')
        receipt['after']['owner_references'] = []
        current = clone(receipt['after'])
        current['owner_references'] = [[f'x{i:04d}', 'SGProject'] for i in range(4096)]
        result = self.plan(receipt, current)
        self.assertIsNone(result['candidate'])
        self.assertEqual(result['conflicts'][0]['reason'], 'candidate_reference_bound_exceeded')

    def test_no_change_never_grants_persistence_authority(self):
        receipt = reference_receipt('attached'); receipt['after'] = clone(receipt['before'])
        current = clone(receipt['after']); current['owner_references'].append(['z', 'SGProject'])
        result = self.plan(receipt, current)
        self.assertEqual(result['candidate'], current)
        self.assertEqual(result['patches'], [])
        for key in ('write_authorized', 'inverse_authorized', 'epoch_binding_verified',
                'raw_record_closure_verified', 'reciprocal_closure_verified'):
            self.assertIs(result[key], False)

    def test_wrong_identity_forged_authority_and_partial_snapshot_refuse(self):
        receipt = reference_receipt('attached')
        for key, value in [('component_oid', 'other'), ('inverse_authorized', True), ('complete', False),
                ('model_setters_called', True), ('store_called', 0), ('selector', 'store')]:
            current = snapshot(receipt['after']); current[key] = value
            with self.subTest(key=key), self.assertRaises(JournalError):
                plan_inverse(receipt, current, token=TOKEN, component_oid='fixture_oid')
        current = snapshot(receipt['after']); del current['image']['owner_database_record_references']
        with self.assertRaises(JournalError): validate_snapshot(current, component_oid='fixture_oid')
        with self.assertRaises(JournalError):
            plan_inverse(receipt, snapshot(receipt['after']), token='edit_' + 'c' * 64, component_oid='fixture_oid')

    def test_inputs_and_original_before_are_immutable(self):
        receipt = reference_receipt('attached'); current = snapshot(receipt['after'])
        saved = clone([receipt, current])
        result = plan_inverse(receipt, current, token=TOKEN, component_oid='fixture_oid')
        result['candidate']['owner_references'].clear(); result['patches'][0]['before_class'] = 'changed'
        self.assertEqual([receipt, current], saved)


class JournalBoundReferenceInverseTests(unittest.TestCase):
    def setUp(self):
        coordinator.ModuleReferenceJournalTests.setUp(self)

    def forward(self):
        return coordinator.ModuleReferenceJournalTests.forward(self)

    def test_plan_uses_durable_original_and_leaves_history_unavailable(self):
        first = self.forward(); token = first['change_id']; events = self.log.read(token)
        actual = next(event['payload']['module_references_actual'] for event in events if event['kind'] == 'observed')
        current = snapshot(actual['after'], self.domain['oid'])
        current['image']['owner_references'].append(['z_external', 'SGProject'])
        result = connect.reference_inverse_plan(self.log, token, current)
        self.assertTrue(result['journal_bound'])
        self.assertFalse(result['inverse_authorized'])
        self.assertEqual(result['candidate']['owner_references'], actual['before']['owner_references'] + [['z_external', 'SGProject']])
        self.assertEqual(self.log.read(token), events)
        with self.assertRaises(JournalError): connect.context(self.log, token)
        self.assertNotIn('connect_history', self.log.receipt(token, events))

    def test_unknown_outcome_is_not_promoted_by_current_reference_snapshot(self):
        self.adapter.lose_reply = True
        result = self.forward()
        self.assertEqual(result['status'], 'outcome_unknown')
        with self.assertRaises(JournalError):
            connect.reference_inverse_plan(self.log, result['change_id'], snapshot(reference_receipt('attached')['after'], self.domain['oid']))


if __name__ == '__main__':
    unittest.main()
