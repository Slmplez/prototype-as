"""Adapter protocol/gate regressions; these do not prove native execution."""
import unittest
from copy import deepcopy

from bd_native_structure import NativeStructureAdapter
from test_bd_field_inverse import graph


class LocalPreparationTests(unittest.TestCase):
    def adapter(self, enabled=True):
        environment = ({'ASCET_BD_LOCAL_FIELD_INVERSE': 'native_source_v1',
                        'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1'} if enabled else {})
        return NativeStructureAdapter('sandbox', environment=environment)

    def preparation(self):
        return {'observation': graph(), 'inverse_expected': graph(),
                'field_local_inverse_profile': 'native_source_local_inverse_v1',
                'native_token': 'edit_' + 'a' * 64}

    def test_default_gate_remains_closed(self):
        self.assertFalse(self.adapter(False).local_field_inverse_capable)
        self.assertFalse(NativeStructureAdapter.local_field_inverse_capable)

    def test_local_gate_requires_source_material(self):
        with self.assertRaisesRegex(ValueError, 'original source'):
            NativeStructureAdapter('sandbox', environment={'ASCET_BD_LOCAL_FIELD_INVERSE': 'native_source_v1'})

    def test_exact_topology_gate_requires_original_source_before_connection(self):
        with self.assertRaisesRegex(ValueError, 'retained native/source'):
            NativeStructureAdapter('sandbox', environment={
                'ASCET_BD_TOPOLOGY_EXACT_INVERSE': 'native_source_v1'})

    def test_exact_topology_capture_does_not_enable_local_or_managed_inverse(self):
        adapter = NativeStructureAdapter('sandbox', environment={
            'ASCET_BD_TOPOLOGY_EXACT_INVERSE': 'native_source_v1',
            'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1'})
        self.assertFalse(adapter.local_field_inverse_capable)
        self.assertFalse(adapter.managed_inverse_operations & {'disconnect_data', 'delete_node'})

    def test_structural_normalization_requires_exact_main_material_profile(self):
        full = {'ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION': 'identity_v1',
                'ASCET_BD_TOPOLOGY_EXACT_INVERSE': 'native_source_v1',
                'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1'}
        for removed in ('ASCET_BD_TOPOLOGY_EXACT_INVERSE', 'ASCET_BD_SOURCE_MATERIAL_CAPTURE'):
            with self.subTest(removed=removed), self.assertRaises(ValueError):
                NativeStructureAdapter('sandbox', environment={k: v for k, v in full.items() if k != removed})
        with self.assertRaisesRegex(ValueError, 'Main'):
            NativeStructureAdapter('sandbox', diagram='Main/child', environment=full)
        adapter = NativeStructureAdapter('sandbox', environment=full)
        self.assertFalse(adapter.local_field_inverse_capable)
        self.assertFalse(adapter.managed_inverse_operations & {'disconnect_data', 'delete_node'})

    def test_forward_normalization_gate_requires_both_native_and_source_profiles(self):
        for environment in ({'ASCET_BD_SOURCE_IDENTITY_NORMALIZATION': 'identity_v1'},
                {'ASCET_BD_SOURCE_IDENTITY_NORMALIZATION': 'identity_v1', 'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1'}):
            with self.assertRaisesRegex(ValueError, 'fixed local inverse'):
                NativeStructureAdapter('sandbox', environment=environment)
        self.assertTrue(NativeStructureAdapter('sandbox', environment={
            'ASCET_BD_SOURCE_IDENTITY_NORMALIZATION': 'identity_v1',
            'ASCET_BD_LOCAL_FIELD_INVERSE': 'native_source_v1',
            'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1'}).local_field_inverse_capable)

    def test_fixed_field_preparation_needs_no_parent_order(self):
        adapter, preparation = self.adapter(), self.preparation()
        self.assertEqual(adapter._preparation(preparation, preparation['native_token']), preparation['observation'])
        self.assertEqual(adapter.inverse_expected, preparation['inverse_expected'])
        self.assertIsNone(adapter.graphical_signature)

    def test_local_topology_requires_every_profile_before_native_connection(self):
        environment = {'ASCET_BD_TOPOLOGY_LOCAL_INVERSE': 'native_source_v1',
            'ASCET_BD_SOURCE_MATERIAL_CAPTURE': 'identity_v1',
            'ASCET_BD_TOPOLOGY_EXACT_INVERSE': 'native_source_v1',
            'ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION': 'identity_v1',
            'ASCET_BD_ORDER_INVERSE_EXPERIMENTAL': '1',
            'ASCET_BD_OPERATION_EXECUTOR': 'staged_v1'}
        for name in environment:
            if name == 'ASCET_BD_TOPOLOGY_LOCAL_INVERSE':
                continue
            with self.subTest(missing=name), self.assertRaisesRegex(ValueError, 'Local topology'):
                NativeStructureAdapter('sandbox', environment={k: v for k, v in environment.items() if k != name})
        with self.assertRaisesRegex(ValueError, 'Local topology'):
            NativeStructureAdapter('sandbox', diagram='Main/child', environment=environment)
        adapter = NativeStructureAdapter('sandbox', environment=environment)
        self.assertFalse(adapter.local_field_inverse_capable)
        self.assertFalse(adapter.managed_inverse_operations & {'disconnect_data', 'delete_node'})

    def test_foreign_token_profile_extra_fields_and_disabled_gate_rejected(self):
        original = self.preparation()
        changes = [{'native_token': 'edit_' + 'b' * 64},
                   {'field_local_inverse_profile': 'unverified'}, {'parent_order_before': {}}]
        for changeset in changes:
            with self.subTest(changeset=changeset):
                value = deepcopy(original); value.update(changeset)
                with self.assertRaises(ValueError):
                    self.adapter()._preparation(value, original['native_token'])
        with self.assertRaises(ValueError):
            self.adapter(False)._preparation(original, original['native_token'])

    def test_malformed_expected_graph_rejected(self):
        value = self.preparation(); value['inverse_expected'] = {'entries': [{'ref': 'n1'}]}
        with self.assertRaises(ValueError):
            self.adapter()._preparation(value, value['native_token'])


if __name__ == '__main__':
    unittest.main()
