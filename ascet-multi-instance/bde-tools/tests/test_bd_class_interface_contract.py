"""Fault acceptance checks against retained real Class deletion observations."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_class_interface_contract import deletion_effects


class ClassDeletionContractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-02'
        cls.argument = json.loads((root / 'bde-class-closed-delete-argument-03/study-0.json').read_text(encoding='utf-8'))
        cls.returned = json.loads((root / 'bde-class-closed-delete-return-02/study-0.json').read_text(encoding='utf-8'))

    def test_actual_argument_and_return_closures(self):
        for sample in (self.argument, self.returned):
            effects = deletion_effects(sample, allow_unassigned_sequence=sample['operation'] == 'closed_delete_return')
            self.assertTrue(effects['requested_effect_verified'])
            self.assertEqual(len(effects['resource_effects']), 3)
            self.assertEqual(sum(len(row['removed_pins']) for row in effects['resource_effects']), 4)
            self.assertEqual(sum(len(row['removed_incident_edges']) for row in effects['resource_effects']), 4)

    def test_apply_only_does_not_fabricate_restoration(self):
        sample = deepcopy(self.argument)
        for key in list(sample):
            if key == 'restored' or key.startswith(('owner_restored_', 'owner_scopes_restored_', 'caller_restore_')):
                del sample[key]
        with self.assertRaises((KeyError, ValueError)):
            deletion_effects(sample)
        effects = deletion_effects(sample, verify_restoration=False)
        self.assertTrue(effects['requested_effect_verified'])
        self.assertIn('not_observed', effects['inverse_identity_comparison'])

    def test_unrelated_edge_loss_refused(self):
        sample = deepcopy(self.argument)
        sample['owner_after_0']['entries'] = [row for row in sample['owner_after_0']['entries'] if row['kind'] != 'edge']
        sample['owner_after_0']['lookup_edges'] = 0
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            deletion_effects(sample, allow_unassigned_sequence=True)

    def test_unrelated_geometry_change_refused(self):
        sample = deepcopy(self.returned)
        node = next(row for row in sample['owner_after_0']['entries'] if row['kind'] == 'node')
        node['anchor'][0] += 10
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            deletion_effects(sample, allow_unassigned_sequence=True)

    def test_unrelated_signature_change_refused(self):
        sample = deepcopy(self.argument)
        sample['after']['signature']['methods'][0]['return']['model_type'] = 'sdisc'
        with self.assertRaisesRegex(ValueError, 'signature changed'):
            deletion_effects(sample)

    def test_formal_pin_alias_change_refused(self):
        sample = deepcopy(self.returned)
        sample['after']['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins'][0]['formal_alias'] = 'bytes:deadbeef'
        with self.assertRaisesRegex(ValueError, 'discovery/bindings changed'):
            deletion_effects(sample)

    def test_missing_owner_or_bad_inverse_refused(self):
        sample = deepcopy(self.argument)
        del sample['owner_after_2']
        with self.assertRaises(KeyError):
            deletion_effects(sample)
        sample = deepcopy(self.argument)
        sample['owner_restored_1']['generation'] += 1
        with self.assertRaisesRegex(ValueError, 'inverse is incomplete'):
            deletion_effects(sample)

    def test_outside_scope_not_certified(self):
        sample = deepcopy(self.returned)
        for key in ('before', 'after'):
            sample[key]['discovery']['callers'][0]['scopes'][0]['diagram'] = 'Main/h99'
        with self.assertRaisesRegex(ValueError, 'scope observations'):
            deletion_effects(sample)

    def test_return_requires_explicit_sequence_policy(self):
        with self.assertRaisesRegex(ValueError, 'explicit policy'):
            deletion_effects(self.returned)

    def test_unstored_or_implicitly_assigned_sequence_refused(self):
        for field, value in [('id', None), ('method', 'UnexpectedProcess')]:
            sample = deepcopy(self.returned)
            pin = next(row for row in sample['owner_after_0']['entries'] if row['kind'] == 'pin' and row.get('sequence'))
            pin['sequence'][field] = value
            with self.assertRaises(ValueError):
                deletion_effects(sample, allow_unassigned_sequence=True)


class NestedClassDeletionContractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-02/bde-class-general-delete-secondary-01/study-0.json'
        cls.sample = json.loads(path.read_text(encoding='utf-8'))

    def test_selected_second_formal_and_nested_closure(self):
        effects = deletion_effects(self.sample)
        self.assertEqual(len(effects['resource_effects']), 5)
        self.assertEqual(sum(len(row['removed_pins']) for row in effects['resource_effects']), 4)
        self.assertEqual(sum(len(row['removed_incident_edges']) for row in effects['resource_effects']), 4)
        child = next(row for row in effects['resource_effects'] if row['diagram'] == 'Main/h1/h2')
        self.assertEqual(child['removed_pins'], ['p9'])
        self.assertEqual(child['removed_incident_edges'], ['e2'])
        self.assertEqual(self.sample['before']['signature']['methods'][1]['arguments'][1]['alias'], effects['selector']['formal_alias'])

    def test_missing_nested_scope_or_snapshot_refused(self):
        for key in ('owner_scopes_after_1', 'owner_scopes_restored_1'):
            sample = deepcopy(self.sample)
            del sample[key]['Main/h1/h2']
            with self.subTest(key=key), self.assertRaisesRegex(ValueError, 'scope set changed'):
                deletion_effects(sample)

    def test_wrong_formal_alias_refused_even_when_name_is_similar(self):
        sample = deepcopy(self.sample)
        sample['selector']['formal_alias'] = sample['before']['signature']['methods'][1]['arguments'][0]['alias']
        with self.assertRaisesRegex(ValueError, 'signature changed'):
            deletion_effects(sample)

    def test_unrelated_nested_connection_loss_refused(self):
        sample = deepcopy(self.sample)
        scope = sample['owner_scopes_after_1']['Main/h1/h2']
        edge = next(row for row in scope['entries'] if row['kind'] == 'edge')
        scope['entries'].remove(edge)
        scope['lookup_edges'] -= 1
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            deletion_effects(sample)

    def test_nested_original_identity_mismatch_refused(self):
        sample = deepcopy(self.sample)
        sample['owner_scopes_restored_1']['Main/h1/h2']['generation'] += 1
        with self.assertRaisesRegex(ValueError, 'inverse is incomplete'):
            deletion_effects(sample)


class ClassLayoutEffectTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-02/bde-class-general-delete-primary-04/study-0.json'
        cls.sample = json.loads(path.read_text(encoding='utf-8'))

    def test_actual_class_layout_and_route_endpoint_effects(self):
        effects = deletion_effects(self.sample, allow_pin_layout=True)
        self.assertEqual(sum(len(row['connector_layout_changes']) for row in effects['resource_effects']), 6)
        self.assertEqual(sum(len(row['changed_edge_routes']) for row in effects['resource_effects']), 6)
        self.assertEqual(sum(len(row['removed_incident_edges']) for row in effects['resource_effects']), 4)
        self.assertEqual(effects['layout_policy'], 'follow_verified_affected_class_occurrence_pins')

    def test_default_policy_refuses_implicit_layout_changes(self):
        with self.assertRaisesRegex(ValueError, 'discovery/bindings changed'):
            deletion_effects(self.sample)

    def test_missing_independent_endpoint_evidence_refused(self):
        sample = deepcopy(self.sample)
        sample['after']['callers'][0]['public_connected_pin_positions'] = {}
        with self.assertRaisesRegex(ValueError, 'independent public connected-endpoint'):
            deletion_effects(sample, allow_pin_layout=True)

    def test_anchor_and_endpoint_displacement_mismatch_refused(self):
        sample = deepcopy(self.sample)
        sample['after']['callers'][0]['public_connected_pin_positions']['Main/p7'][1] += 1
        with self.assertRaisesRegex(ValueError, 'displacement differs'):
            deletion_effects(sample, allow_pin_layout=True)

    def test_unrelated_route_corner_or_node_geometry_refused(self):
        for kind in ('edge', 'node'):
            sample = deepcopy(self.sample)
            rows = sample['owner_scopes_after_0']['Main']['entries']
            row = next(row for row in rows if row['kind'] == kind)
            if kind == 'edge':
                row['route'][1][0] += 1
            else:
                row['anchor'][0] += 1
            with self.subTest(kind=kind), self.assertRaisesRegex(ValueError, 'Unexpected graph'):
                deletion_effects(sample, allow_pin_layout=True)


class GeneralReturnCornerContractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-02/bde-class-journal-return-01/study-0.json'
        cls.sample = json.loads(path.read_text(encoding='utf-8'))

    def effects(self, sample):
        return deletion_effects(sample, allow_unassigned_sequence=True, allow_pin_layout=True,
                                allow_adjacent_corner_layout=True)

    def test_general_return_closure_and_deduplicated_actual_sequence_objects(self):
        effects = self.effects(self.sample)
        self.assertEqual(sum(len(row['removed_pins']) for row in effects['resource_effects']), 4)
        self.assertEqual(sum(len(row['removed_incident_edges']) for row in effects['resource_effects']), 4)
        self.assertEqual(sum(len(row['introduced_unassigned_sequence_calls']) for row in effects['resource_effects']), 6)
        self.assertEqual(sum(len(row['introduced_unassigned_sequence_objects']) for row in effects['resource_effects']), 3)
        self.assertEqual(sum(len(row['adjacent_corner_layout_changes']) for row in effects['resource_effects']), 3)
        self.assertFalse(effects['execution_schedule_verified'])

    def test_corner_policy_is_explicit_and_requires_pin_policy(self):
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            deletion_effects(self.sample, allow_unassigned_sequence=True, allow_pin_layout=True)
        with self.assertRaisesRegex(ValueError, 'requires the explicit'):
            deletion_effects(self.sample, allow_unassigned_sequence=True, allow_adjacent_corner_layout=True)

    def test_full_public_route_oracle_mismatch_or_missing_edge_refused(self):
        for fault in ('corner', 'missing'):
            sample = deepcopy(self.sample)
            edges = sample['after']['callers'][0]['public_tree']['Main']['edges']
            if fault == 'corner':
                edges[0]['route'][1][0] += 1
            else:
                edges.pop()
            with self.subTest(fault=fault), self.assertRaisesRegex(ValueError, 'public route multiset'):
                self.effects(sample)

    def test_unrelated_native_corner_change_not_derived_from_endpoint_refused(self):
        sample = deepcopy(self.sample)
        edge = next(row for row in sample['owner_scopes_after_0']['Main']['entries']
                    if row['kind'] == 'edge' and row['source'] == 'p31')
        edge['route'][1][0] += 1
        public = next(row for row in sample['after']['callers'][0]['public_tree']['Main']['edges']
                      if row['source']['native']['id'] == 31)
        public['route'][1][0] += 1
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            self.effects(sample)

    def test_independent_before_route_drift_refused(self):
        sample = deepcopy(self.sample)
        sample['before']['callers'][0]['public_tree']['Main']['edges'][0]['route'][1][0] += 1
        with self.assertRaisesRegex(ValueError, 'public route multiset'):
            self.effects(sample)

    def test_sequence_identity_cannot_alias_other_occurrence(self):
        sample = deepcopy(self.sample)
        pins = [row for row in sample['owner_scopes_after_0']['Main']['entries']
                if row['kind'] == 'pin' and row.get('sequence') and row['name'].startswith('transform/')]
        first_id = pins[0]['sequence']['id']
        for pin in pins:
            pin['sequence']['id'] = first_id
        with self.assertRaisesRegex(ValueError, 'sequence identity is shared'):
            self.effects(sample)


if __name__ == '__main__':
    unittest.main()
