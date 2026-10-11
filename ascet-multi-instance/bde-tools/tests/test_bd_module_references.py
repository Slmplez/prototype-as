"""Offline transport, WAL and negative controls; no native acceptance claim."""
import os
import unittest
from unittest.mock import patch

from bd_edit_journal import clone, JournalError
from bd_module_references import validate, differences, summary
from bd_connect_material import validate as validate_material
from bd_native_structure import NativeStructureAdapter
import bd_connect_journal as connect
from test_bd_connect_material import receipt, TOKEN
import test_bd_connect_journal as coordinator


def reference_receipt(phase, token=TOKEN, oid='fixture_oid'):
    before = dict(owner_references=[['module0', 'SGModule']], owner_database_record_references=[])
    after = clone(before)
    after['owner_references'].append(['project0', 'SGProject'])
    after['owner_database_record_references'].append(['project0', 'SGProject'])
    return dict(profile='native_module_inbound_references_v1', native_token=token,
        component_oid=oid, generation=108, before=before, after=after if phase == 'attached' else None,
        complete=True, model_setters_called=0, store_called=False, inverse_authorized=False,
        full_commit_resource_closure=False)


class ModuleReferencesTests(unittest.TestCase):
    def check(self, value, phase='attached'):
        return validate(value, token=TOKEN, component_oid='fixture_oid', phase=phase)

    def test_two_independent_sets_preserve_project_delta(self):
        value = reference_receipt('attached')
        result = self.check(value)
        delta = differences(result)
        self.assertEqual([row['added'] for row in delta], [[['project0', 'SGProject']]] * 2)
        self.assertTrue(all(row['removed'] == [] for row in delta))
        self.assertTrue(summary(result)['changed'])
        result['before']['owner_references'].clear()
        self.assertTrue(value['before']['owner_references'])

    def test_removals_and_same_oid_class_changes_are_actual_deltas(self):
        value = reference_receipt('attached')
        value['after']['owner_references'] = [['module0', 'SGProject']]
        row = differences(value)[0]
        self.assertEqual(row['removed'], [['module0', 'SGModule']])
        self.assertEqual(row['added'], [['module0', 'SGProject']])

    def test_forged_authority_identity_generation_and_incomplete_sets_refuse(self):
        for key, changed in [('native_token', 'edit_' + 'b' * 64), ('component_oid', 'other'),
                ('generation', True), ('generation', 0), ('complete', False),
                ('model_setters_called', True), ('store_called', True), ('inverse_authorized', True),
                ('full_commit_resource_closure', True), ('selector', 'store')]:
            with self.subTest(key=key):
                value = reference_receipt('attached'); value[key] = changed
                with self.assertRaises(JournalError): self.check(value)
        value = reference_receipt('attached'); del value['after']['owner_database_record_references']
        with self.assertRaises(JournalError): self.check(value)

    def test_prepared_cannot_invent_after_and_attached_cannot_omit_it(self):
        self.check(reference_receipt('prepared'), phase='prepared')
        with self.assertRaises(JournalError): self.check(reference_receipt('attached'), phase='prepared')
        with self.assertRaises(JournalError): self.check(reference_receipt('prepared'))

    def test_duplicate_oid_wrong_shape_order_and_unbounded_roster_refuse(self):
        for rows in ([['x', 'SGModule'], ['x', 'SGProject']], [['x']],
                [['z', 'SGModule'], ['a', 'SGModule']], [['x', False]],
                [['x' + str(i), 'SGModule'] for i in range(4097)]):
            value = reference_receipt('attached'); value['after']['owner_references'] = rows
            with self.assertRaises(JournalError): self.check(value)

    def test_v2_material_requires_reference_receipt_and_same_bindings(self):
        for phase in ('prepared', 'attached'):
            value = receipt(phase); value.update(profile='native_connect_material_v2',
                module_references=reference_receipt(phase))
            self.assertEqual(validate_material(value, token=TOKEN, component_oid='fixture_oid',
                source='p12', target='p8', phase=phase), value)
            value['module_references']['native_token'] = 'edit_' + 'b' * 64
            with self.assertRaises(JournalError): validate_material(value, token=TOKEN,
                component_oid='fixture_oid', source='p12', target='p8', phase=phase)

    def test_explicit_gate_is_default_off_and_rejects_unknown_or_missing_history(self):
        with patch.dict(os.environ, {}, clear=True):
            self.assertFalse(NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test').connect_reference_capture_capable)
        for env in ({'ASCET_BD_CONNECT_REFERENCES': 'module_inbound_v1'},
                {'ASCET_BD_CONNECT_REFERENCES': 'arbitrary'}):
            with patch.dict(os.environ, env, clear=True), self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test')
        env = dict(ASCET_BD_CONNECT_REFERENCES='module_inbound_v1',
            ASCET_BD_CONNECT_HISTORY='native_source_exact_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
            ASCET_BD_OPERATION_EXECUTOR='staged_v1')
        with patch.dict(os.environ, env, clear=True):
            adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test')
            self.assertTrue(adapter.connect_reference_capture_capable)
            with self.assertRaises(ValueError): adapter._check_connect_reference_profile(receipt('prepared'))


class ModuleReferenceJournalTests(unittest.TestCase):
    def setUp(self):
        coordinator.ConnectJournalTests.setUp(self)
        material = self.adapter.material
        def captured(token, phase, oid):
            result = material(token, phase, oid)
            result.update(profile='native_connect_material_v2', module_references=reference_receipt(phase, token, oid))
            result['module_references']['generation'] = self.adapter.original['generation']
            return result
        self.adapter.material = captured

    def forward(self):
        return coordinator.ConnectJournalTests.forward(self)

    def test_reference_forward_wal_diff_and_no_graphical_only_inverse(self):
        first = self.forward()
        self.assertEqual(first['status'], 'applied_observed')
        self.assertNotIn('connect_history', first)
        self.assertTrue(first['module_reference_history']['changed'])
        self.assertFalse(first['module_reference_history']['inverse_authorized'])
        events = self.log.read(first['change_id'])
        actual = connect.one(events, 'observed')['module_references_actual']
        self.assertEqual(connect.one(events, 'prepared')['connect_material_prepared']['module_references']['before'], actual['before'])
        calls = clone(self.adapter.calls)
        diff = self.log.diff(first['change_id'])['observations'][0]
        self.assertEqual(diff['module_reference_differences'], differences(actual))
        self.assertNotIn('module_references_actual', diff)
        self.assertEqual(self.adapter.calls, calls)
        with self.assertRaises(JournalError): self.log.revert(first['change_id'], 'undo', self.adapter, lambda: None)
        self.assertEqual(self.adapter.calls, calls)

    def test_original_reference_rebinding_is_unknown_and_never_confirmed(self):
        apply = self.adapter.apply
        def corrupted(token):
            after = apply(token)
            self.adapter.connect_material_actual['module_references']['before']['owner_references'] = []
            return after
        self.adapter.apply = corrupted
        first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown')
        self.assertEqual(self.adapter.calls.count('apply'), 1)

    def test_lost_forward_reply_recovers_only_previously_frozen_actual_references(self):
        from contextlib import nullcontext
        self.adapter.lose_reply = True
        first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown')
        result = connect.reconcile(self.log, first['change_id'], self.adapter, nullcontext, commit=True)
        self.assertEqual(result['receipt']['status'], 'applied_observed')
        self.assertNotIn('connect_history', result['receipt'])
        self.assertTrue(result['receipt']['module_reference_history']['changed'])
        self.assertFalse(result['instance_quarantined'])
        self.assertEqual(self.adapter.calls.count('apply'), 1)

    def test_generation_mismatch_cannot_be_used_as_actual_reference_history(self):
        apply = self.adapter.apply
        def corrupted(token):
            after = apply(token)
            self.adapter.connect_material_actual['module_references']['generation'] += 1
            return after
        self.adapter.apply = corrupted
        first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown')
        self.assertEqual(self.adapter.calls.count('apply'), 1)
        self.assertEqual(self.forward(), first)
        self.assertEqual(self.adapter.calls.count('apply'), 1)


if __name__ == '__main__':
    unittest.main()
