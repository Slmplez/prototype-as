"""Small synthetic v5 receipt controls; no native scan, prepare or edit calls."""
from copy import deepcopy
import unittest

from bd_commit_reference_baseline import (COUNT_FIELDS, FALSE_FIELDS, TRUE_FIELDS,
                                        validate_summary)
from bd_commit_resources import BASELINE_PROFILE, status, summary, validate
import test_bd_commit_reciprocal as reciprocal
import test_bd_commit_resources as resources


TOKEN, OID = resources.TOKEN, resources.OID


def baseline(count=5):
    value = dict(profile='native_reference_file_baseline_v1', native_token=TOKEN,
                 component_oid=OID, generation=7, profile_index=9,
                 observation_profile='native_reference_file_observation_v3',
                 phase='observational_census_match', events=6 * count + 6,
                 gv_image_count=2, model_setters_called=0, unknown_terminal_count=3)
    value.update({field: count for field in COUNT_FIELDS})
    value.update({field: True for field in TRUE_FIELDS})
    value.update({field: False for field in FALSE_FIELDS})
    return value


def receipt():
    value = reciprocal.receipt_fixture()
    value.update(profile=BASELINE_PROFILE, reference_file_baseline=baseline())
    return value


def status_fixture(checked=False, current_reciprocal=False):
    value = reciprocal.status_fixture(checked)
    value.update(prepared_receipt=receipt(), reference_file_baseline=baseline(),
                 current_reference_file_checked=False)
    if current_reciprocal:
        if not checked:
            raise AssertionError('Fixture current reciprocal scope requires a check')
        value.update(profile='native_commit_status_v2', current_reciprocal_records_checked=True,
                     reciprocal_summary=dict(profile='native_reciprocal_status_v1',
                         component_oid=OID, generation=7, target_count=2, record_count=2,
                         actual_change_count=0, logical_records_match_retained=True,
                         raw_records_match_retained=True, original_targets_only=True,
                         original_material_held=True, new_outgoing_targets_captured=False,
                         write_authorized=False, inverse_authorized=False))
    return value


class ReferenceBaselineSummaryTests(unittest.TestCase):
    def check(self, value, **namespace):
        return validate_summary(value, **dict(dict(token=TOKEN, component_oid=OID, generation=7), **namespace))

    def test_exact_observation_keeps_all_authority_limits_and_returns_detached_copy(self):
        value = baseline(); original = deepcopy(value)
        checked = self.check(value)
        self.assertEqual(checked, value); self.assertIsNot(checked, value)
        checked['record_count'] = 99
        self.assertEqual(value, original)
        for field in FALSE_FIELDS: self.assertIs(value[field], False)
        self.assertEqual(value['unknown_terminal_count'], 3)

    def test_empty_and_maximum_census_keep_fixed_event_formula(self):
        for count in (0, 100000):
            value = baseline(count)
            self.assertEqual(self.check(value)['events'], 6 * count + 6)
        value = baseline(100001)
        with self.assertRaises(ValueError): self.check(value)

    def test_summary_keys_are_exact(self):
        for key in baseline():
            value = baseline(); del value[key]
            with self.subTest(missing=key), self.assertRaises(ValueError): self.check(value)
        value = baseline(); value['current_reference_file_checked'] = True
        with self.assertRaises(ValueError): self.check(value)

    def test_summary_namespace_and_fixed_versions_cannot_change(self):
        for field, changed in [('native_token', 'edit_' + 'b' * 64), ('component_oid', 'foreign'),
                               ('generation', 8), ('generation', True), ('generation', 7.0),
                               ('profile', 'native_reference_file_baseline_v2'),
                               ('observation_profile', 'native_reference_file_observation_v2'),
                               ('phase', 'failed_incomplete')]:
            value = baseline(); value[field] = changed
            with self.subTest(field=field, changed=changed), self.assertRaises(ValueError): self.check(value)

    def test_caller_namespace_is_strict_even_if_payload_were_equally_malformed(self):
        cases = [('token', ''), ('token', 'edit_' + 'A' * 64), ('token', True),
                 ('component_oid', ''), ('component_oid', None), ('component_oid', 0),
                 ('generation', True), ('generation', 0), ('generation', 2147483648), ('generation', 7.0)]
        for field, changed in cases:
            value = baseline(); value['native_token' if field == 'token' else field] = changed
            with self.subTest(field=field, changed=changed), self.assertRaises(ValueError):
                self.check(value, **{field: changed})

    def test_profile_index_has_strict_original_native_bounds(self):
        for index in (1, 16):
            value = baseline(); value['profile_index'] = index; self.check(value)
        for index in (False, True, 0, 17, 9.0, '9'):
            value = baseline(); value['profile_index'] = index
            with self.subTest(index=index), self.assertRaises(ValueError): self.check(value)

    def test_all_record_key_and_count_bounds_reject_bool_float_and_negative(self):
        for field in COUNT_FIELDS:
            for changed in (False, True, -1, 100001, 5.0, '5'):
                value = baseline(); value[field] = changed
                with self.subTest(field=field, changed=changed), self.assertRaises(ValueError): self.check(value)

    def test_record_keys_and_before_after_counts_must_equal_each_other(self):
        for field in COUNT_FIELDS:
            value = baseline(); value[field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)

    def test_complete_event_census_is_not_an_arbitrary_or_boolean_count(self):
        for count in (35, 37, True, False, 36.0, '36', -1):
            value = baseline(); value['events'] = count
            with self.subTest(count=count), self.assertRaises(ValueError): self.check(value)

    def test_full_gv_catalog_census_cannot_be_empty_or_exceed_events(self):
        for count in (1, 36):
            value = baseline(); value['gv_image_count'] = count; self.check(value)
        for count in (0, 37, True, False, 2.0, '2'):
            value = baseline(); value['gv_image_count'] = count
            with self.subTest(count=count), self.assertRaises(ValueError): self.check(value)

    def test_all_material_and_same_dispatch_before_mutation_guards_are_required(self):
        for field in TRUE_FIELDS:
            for changed in (False, 1, None):
                value = baseline(); value[field] = changed
                with self.subTest(field=field, changed=changed), self.assertRaises(ValueError): self.check(value)

    def test_eof_atomicity_before_and_write_flags_remain_exact_false(self):
        for field in FALSE_FIELDS:
            for changed in (True, 0, None):
                value = baseline(); value[field] = changed
                with self.subTest(field=field, changed=changed), self.assertRaises(ValueError): self.check(value)

    def test_zero_setters_and_three_unknown_terminals_are_strict_integer_facts(self):
        for field, values in [('model_setters_called', [True, False, 0.0, 1, -1]),
                              ('unknown_terminal_count', [True, False, 3.0, 0, 2, 4])]:
            for changed in values:
                value = baseline(); value[field] = changed
                with self.subTest(field=field, changed=changed), self.assertRaises(ValueError): self.check(value)


class ReferenceBaselineResourceIntegrationTests(unittest.TestCase):
    def validate_receipt(self, value):
        return validate(value, token=TOKEN, component_oid=OID)

    def validate_status(self, value, checked=False):
        return status(value, token=TOKEN, component_oid=OID, checked=checked)

    def test_v5_inherits_complete_v4_material_and_adds_detached_baseline(self):
        value = receipt(); original = deepcopy(value)
        proof = self.validate_receipt(value)
        self.assertEqual(proof, value)
        for key in ('registered_models', 'ctree_control', 'reciprocal_references', 'record_length_profile'):
            self.assertEqual(proof[key], reciprocal.receipt_fixture()[key])
        proof['reference_file_baseline']['profile_index'] = 3
        self.assertEqual(value, original)

    def test_v5_cannot_omit_any_inherited_layer_or_baseline(self):
        for key in ('registered_models', 'ctree_control', 'reciprocal_references',
                    'record_length_profile', 'reference_file_baseline'):
            value = receipt(); del value[key]
            with self.subTest(key=key), self.assertRaises(ValueError): self.validate_receipt(value)

    def test_inherited_v4_summaries_are_still_validated(self):
        for layer, field, changed in [('registered_models', 'objects', True),
                                      ('registered_models', 'full_model_transitive_closure', True),
                                      ('ctree_control', 'write_authorized', True),
                                      ('reciprocal_references', 'generation', 8),
                                      ('reciprocal_references', 'record_count', 3)]:
            value = receipt(); value[layer][field] = changed
            with self.subTest(layer=layer, field=field), self.assertRaises(ValueError): self.validate_receipt(value)

    def test_baseline_must_belong_to_prepared_token_owner_and_generation(self):
        for field, changed in [('native_token', 'edit_' + 'b' * 64), ('component_oid', 'foreign'),
                               ('generation', 8), ('generation', True), ('before_model_mutation', False)]:
            value = receipt(); value['reference_file_baseline'][field] = changed
            with self.subTest(field=field), self.assertRaises(ValueError): self.validate_receipt(value)

    def test_v5_payload_cannot_be_relabelled_as_an_older_receipt(self):
        for profile in ('native_commit_prepare_v1', 'native_commit_prepare_v2',
                        'native_commit_prepare_v3', 'native_commit_prepare_v4'):
            value = receipt(); value['profile'] = profile
            with self.subTest(profile=profile), self.assertRaises(ValueError): self.validate_receipt(value)

    def test_older_receipts_retain_their_original_schema_and_behavior(self):
        v4 = reciprocal.receipt_fixture()
        v3 = deepcopy(v4); v3['profile'] = 'native_commit_prepare_v3'
        del v3['reciprocal_references']; del v3['record_length_profile']
        v2 = deepcopy(v3); v2['profile'] = 'native_commit_prepare_v2'; del v2['ctree_control']
        for value in (resources.receipt(), v2, v3, v4):
            with self.subTest(profile=value['profile']):
                self.assertEqual(self.validate_receipt(value), value)
                unsolicited = deepcopy(value); unsolicited['reference_file_baseline'] = baseline()
                with self.assertRaises(ValueError): self.validate_receipt(unsolicited)

    def test_v5_inspection_retains_baseline_but_claims_no_current_file_read(self):
        value = status_fixture()
        self.assertEqual(self.validate_status(value), value)
        compact = summary(value)
        self.assertEqual(compact['reference_file_baseline'], baseline())
        self.assertIs(compact['current_reference_file_checked'], False)
        self.assertIs(compact['current_reciprocal_records_checked'], False)
        self.assertIn('current reference file not checked', compact['coverage'])
        self.assertIn('current owner payloads not checked', compact['coverage'])
        compact['reference_file_baseline']['profile_index'] = 1
        self.assertEqual(value['reference_file_baseline'], baseline())

    def test_v5_status_v1_checks_old_resources_without_silently_checking_whole_file(self):
        value = status_fixture(checked=True)
        proof = self.validate_status(value, checked=True)
        self.assertIs(proof['registered_models_checked'], True)
        self.assertIs(proof['ctree_control_checked'], True)
        self.assertIs(proof['full_reference_payloads_checked'], True)
        self.assertIs(proof['current_reference_file_checked'], False)
        self.assertIs(proof['current_reciprocal_records_checked'], False)

    def test_v5_status_v2_keeps_original_reciprocal_diff_scope_and_baseline(self):
        value = status_fixture(checked=True, current_reciprocal=True)
        proof = self.validate_status(value, checked=True)
        compact = summary(proof)
        self.assertIs(compact['current_reciprocal_records_checked'], True)
        self.assertIs(compact['current_reference_file_checked'], False)
        self.assertEqual(compact['reciprocal_summary']['record_count'], 2)
        self.assertIn('original-target reciprocal inbound before/current records', compact['coverage'])
        self.assertIn('same-preparation reference-file observational baseline', compact['coverage'])
        self.assertEqual(compact['reference_file_baseline'], baseline())

    def test_every_v5_status_requires_both_new_fields(self):
        for checked, current in ((False, False), (True, False), (True, True)):
            for key in ('reference_file_baseline', 'current_reference_file_checked'):
                value = status_fixture(checked, current); del value[key]
                with self.subTest(checked=checked, current=current, key=key), self.assertRaises(ValueError):
                    self.validate_status(value, checked)

    def test_status_cannot_claim_current_reference_file_check_or_int_false(self):
        for checked, current in ((False, False), (True, False), (True, True)):
            for changed in (True, 0, None):
                value = status_fixture(checked, current); value['current_reference_file_checked'] = changed
                with self.subTest(checked=checked, current=current, changed=changed), self.assertRaises(ValueError):
                    self.validate_status(value, checked)

    def test_status_baseline_must_equal_original_prepared_not_merely_be_valid(self):
        for changed in (baseline(6), dict(baseline(), profile_index=10), dict(baseline(), gv_image_count=3)):
            validate_summary(changed, token=TOKEN, component_oid=OID, generation=7)
            value = status_fixture(); value['reference_file_baseline'] = changed
            with self.subTest(changed=changed), self.assertRaises(ValueError): self.validate_status(value)

    def test_v5_checked_status_cannot_drop_inherited_models_control_or_reciprocal_proof(self):
        for field in ('registered_models_checked', 'registered_model_summary', 'ctree_control_checked',
                      'ctree_control_summary', 'current_reciprocal_records_checked', 'reciprocal_summary',
                      'record_comparison_profile', 'full_reference_payloads_checked', 'raw_records_match_retained'):
            value = status_fixture(True, True); del value[field]
            with self.subTest(field=field), self.assertRaises(ValueError): self.validate_status(value, True)

    def test_v5_current_reciprocal_summary_still_cannot_forge_original_target_count(self):
        value = status_fixture(True, True); value['reciprocal_summary']['record_count'] = 3
        with self.assertRaises(ValueError): self.validate_status(value, True)

    def test_downgrading_status_prepared_profile_cannot_hide_new_baseline_fields(self):
        for checked in (False, True):
            value = status_fixture(checked)
            value['prepared_receipt'] = reciprocal.receipt_fixture()
            with self.subTest(checked=checked), self.assertRaises(ValueError): self.validate_status(value, checked)

    def test_older_inspect_and_current_status_do_not_gain_unsolicited_file_flags(self):
        for checked in (False, True):
            value = reciprocal.status_fixture(checked)
            self.assertEqual(self.validate_status(value, checked), value)
            self.assertNotIn('reference_file_baseline', summary(value))
            self.assertNotIn('current_reference_file_checked', summary(value))
            for added in ({'reference_file_baseline': baseline()}, {'current_reference_file_checked': False}):
                invalid = dict(value, **added)
                with self.subTest(checked=checked, added=added), self.assertRaises(ValueError):
                    self.validate_status(invalid, checked)


if __name__ == '__main__':
    unittest.main()
