"""Read-only recovery refusal contracts, not live native acceptance."""
from copy import deepcopy
import unittest

from bd_class_preview import recovery_checks


class NativeRecoveryChecksTests(unittest.TestCase):
    def setUp(self):
        self.owners = [{'oid': str(i), 'component': 'BDE_Tool_Experiments\\Trial_' + str(i)} for i in range(4)]
        self.signature = {'registry_present': False, 'retained_records': 0, 'capacity': 8, 'record_present': False,
            'state': 'absent', 'selector_matches': False, 'original_formal_binding_matches': False,
            'after_signature_identity_matches': False}
        self.material = {'registry_present': False, 'retained_records': 0, 'capacity': 8, 'record_present': False,
            'state': 'absent', 'selector_matches': False, 'native_owner_matches': False,
            'specification_matches': False, 'stored_source_matches': False, 'original_object_identities_match': False,
            'detached_fields_profile': 'collected_graphics_v1', 'current_graphical_fields_observed': True,
            'original_graphical_fields_checkpoint_present': False, 'original_graphical_fields_match': False,
            'native_binding_profile': 'native_collections_v1', 'original_binding_checkpoint_present': False,
            'original_full_collections_match': False, 'after_binding_checkpoint_present': False,
            'after_native_bindings_match': False}

    def probes(self):
        return [{**owner, 'checks': {'signature': deepcopy(self.signature), 'material': deepcopy(self.material)}} for owner in self.owners]

    def test_capacity_reserves_entire_owner_group_not_one_slot(self):
        probes = self.probes()
        for row in probes:
            row['checks']['material'].update(registry_present=True, retained_records=5)
        value = recovery_checks(self.owners, probes, False)
        self.assertEqual(value['refusal_reasons'], [{'code': 'NATIVE_RECOVERY_CAPACITY', 'resource': 'material', 'required_slots': 4}])

    def test_no_native_record_is_never_available_for_inverse(self):
        value = recovery_checks(self.owners, self.probes(), True)
        self.assertFalse(value['native_guards_match'])
        self.assertEqual(len(value['refusal_reasons']), 5)

    def test_partial_duplicate_foreign_owner_probes_refuse(self):
        probes = self.probes()
        for malformed in (probes[:-1], probes + [probes[0]], [probes[0]] * 4,
                [{**probes[0], 'component': 'wrong'}, *probes[1:]]):
            with self.subTest(malformed=malformed), self.assertRaises(ValueError):
                recovery_checks(self.owners, malformed, False)

    def test_malformed_booleans_capacity_and_non_atomic_counts_refuse(self):
        for key, value in (('capacity', True), ('retained_records', True), ('retained_records', -1),
                ('record_present', 1), ('state', None), ('registry_present', True)):
            probes = self.probes()
            probes[0]['checks']['signature'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                recovery_checks(self.owners, probes, False)

    def applied_probes(self):
        probes = self.probes()
        for probe in probes:
            for name, state in (('signature', 'added'), ('material', 'applied')):
                row = probe['checks'][name]
                row.update({key: True for key, value in row.items() if type(value) is bool})
                row.update(state=state, retained_records=1 if name == 'signature' else 4)
        return probes

    def test_detached_fields_match_is_required_even_when_native_identity_matches(self):
        probes = self.applied_probes()
        self.assertTrue(recovery_checks(self.owners, probes, True)['native_guards_match'])
        probes[1]['checks']['material']['original_graphical_fields_match'] = False
        result = recovery_checks(self.owners, probes, True)
        self.assertFalse(result['native_guards_match'])
        self.assertEqual(result['refusal_reasons'], [{'code': 'NATIVE_RECOVERY_CONFLICT', 'oid': '1', 'resource': 'material'}])

    def test_legacy_original_record_without_detached_checkpoint_never_authorizes_inverse(self):
        probes = self.applied_probes()
        probes[0]['checks']['material'].update(original_graphical_fields_checkpoint_present=False,
                                              original_graphical_fields_match=False)
        self.assertFalse(recovery_checks(self.owners, probes, True)['native_guards_match'])

    def test_wrong_profile_and_unchecked_or_untyped_detached_fields_refuse(self):
        for key, value in (('detached_fields_profile', 'unknown'), ('current_graphical_fields_observed', False),
                ('original_graphical_fields_match', 1), ('original_graphical_fields_checkpoint_present', None)):
            probes = self.applied_probes()
            probes[0]['checks']['material'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                recovery_checks(self.owners, probes, True)

    def test_full_collection_and_after_native_identity_changes_refuse(self):
        for key in ('original_full_collections_match', 'after_native_bindings_match'):
            probes = self.applied_probes()
            probes[0]['checks']['material'][key] = False
            result = recovery_checks(self.owners, probes, True)
            self.assertFalse(result['native_guards_match'])
            self.assertEqual(result['refusal_reasons'], [{'code': 'NATIVE_RECOVERY_CONFLICT', 'oid': '0', 'resource': 'material'}])

    def test_missing_legacy_binding_checkpoint_never_authorizes_inverse(self):
        probes = self.applied_probes()
        probes[0]['checks']['material'].update(original_binding_checkpoint_present=False,
            original_full_collections_match=False, after_binding_checkpoint_present=False, after_native_bindings_match=False)
        self.assertFalse(recovery_checks(self.owners, probes, True)['native_guards_match'])

    def test_binding_profile_types_and_impossible_claims_refuse(self):
        for key, value in (('native_binding_profile', 'unknown'), ('original_full_collections_match', 1),
                           ('original_binding_checkpoint_present', False), ('after_binding_checkpoint_present', False)):
            probes = self.applied_probes()
            probes[0]['checks']['material'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                recovery_checks(self.owners, probes, True)


if __name__ == '__main__':
    unittest.main()
