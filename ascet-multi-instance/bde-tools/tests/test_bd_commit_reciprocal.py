"""Offline candidate reciprocal-capture controls; no native persistence acceptance."""
from copy import deepcopy
import unittest

from bd_commit_reciprocal import validate_capture, validate_summary
from bd_commit_resources import validate, status, summary
import test_bd_commit_control_integration as controls
import test_bd_commit_reference_write_set as write_sets
import test_bd_commit_resources as resources
import test_bd_persistent_references as references


OWNER, A, B, UNRELATED = references.OWNER, write_sets.A, write_sets.B, write_sets.UNRELATED


def direct_image():
    return dict(binding={'class': 'CTreeLocalVariableAttributeInterface', 'kind': 'boundary', 'ref': 'leaf1'},
                field_names=['ctTransaction'], fields=[dict(slot=1, name='ctTransaction',
                    value={'class': 'SmallInteger', 'kind': 'atom', 'value': '1'})])


def full_row(owner, entries, role='owner_referenced_by'):
    value = references.payload_v2(write_sets.row(owner, entries, role))
    value.update(ctree_before=direct_image(), ctree_after=direct_image())
    return value


def capture_fixture(empty=False):
    outgoing = full_row(OWNER, [] if empty else [A, A, B], 'owner_references')
    records = [] if empty else [full_row(A, [OWNER, UNRELATED]), full_row(B, [OWNER])]
    proof = dict(profile='native_original_reciprocal_capture_v1', phase='captured',
        component_oid=resources.OID, generation=7, outgoing_entry_count=0 if empty else 3,
        target_count=len(records), record_count=len(records),
        logical_bytes=sum(row['logical_size'] for row in records),
        raw_bytes=sum(row['allocated_size'] for row in records), original_material_held=True,
        same_native_dispatch=True, reciprocal_consistent=True, new_outgoing_targets_captured=False,
        write_authorized=False, inverse_authorized=False)
    return dict(profile='native_original_reciprocal_records_v1', component_oid=resources.OID, generation=7,
                owner_key=OWNER.copy(), outgoing_record=outgoing, records=records, summary=proof)


def receipt_fixture():
    value = controls.receipt()
    value.update(profile='native_commit_prepare_v4', record_length_profile='complete_reference_payload_v2',
                 reciprocal_references=capture_fixture()['summary'])
    return value


def status_fixture(checked=True):
    value = controls.status_fixture(checked)
    value.update(prepared_receipt=receipt_fixture(), current_reciprocal_records_checked=False)
    if checked:
        value.update(record_comparison_profile='complete_reference_payload_v2',
                     full_reference_payloads_checked=True, raw_records_match_retained=True)
    return value


class ReciprocalCaptureTests(unittest.TestCase):
    def test_complete_capture_counts_unique_targets_but_preserves_outgoing_duplicates(self):
        value = capture_fixture()
        before = deepcopy(value)
        proof = validate_capture(value)
        self.assertEqual(proof, value['summary'])
        self.assertEqual((proof['outgoing_entry_count'], proof['target_count'], proof['record_count']), (3, 2, 2))
        self.assertEqual((proof['logical_bytes'], proof['raw_bytes']), (191, 201))
        self.assertFalse(proof['new_outgoing_targets_captured'])
        self.assertFalse(proof['write_authorized'])
        self.assertEqual(value, before)

    def test_zero_targets_require_zero_records_and_byte_totals(self):
        value = capture_fixture(empty=True)
        self.assertEqual(validate_capture(value)['record_count'], 0)
        for field in ('logical_bytes', 'raw_bytes', 'outgoing_entry_count'):
            invalid = deepcopy(value)
            invalid['summary'][field] = 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_capture(invalid)

    def test_self_reference_uses_a_separate_owner_inbound_record(self):
        value = capture_fixture()
        value['outgoing_record'] = full_row(OWNER, [OWNER, OWNER], 'owner_references')
        value['records'] = [full_row(OWNER, [UNRELATED, OWNER, OWNER])]
        value['summary'].update(outgoing_entry_count=2, target_count=1, record_count=1,
            logical_bytes=value['records'][0]['logical_size'], raw_bytes=value['records'][0]['allocated_size'])
        self.assertEqual(validate_capture(value)['target_count'], 1)
        value['records'][0] = deepcopy(value['outgoing_record'])
        with self.assertRaises(ValueError):
            validate_capture(value)

    def test_missing_extra_duplicate_and_foreign_inbound_rows_are_refused(self):
        edits = [lambda v: v['records'].pop(),
                 lambda v: v['records'].append(deepcopy(v['records'][0])),
                 lambda v: v['records'].__setitem__(1, deepcopy(v['records'][0])),
                 lambda v: v['records'].__setitem__(1, full_row(UNRELATED, [OWNER])),
                 lambda v: v['records'][0]['actual_file_key'].__setitem__(0, 99)]
        for edit in edits:
            value = capture_fixture()
            edit(value)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                validate_capture(value)

    def test_inconsistent_original_reciprocal_membership_cannot_be_repaired_or_claimed(self):
        value = capture_fixture()
        value['records'][0] = full_row(A, [UNRELATED])
        value['summary'].update(logical_bytes=sum(row['logical_size'] for row in value['records']),
                                raw_bytes=sum(row['allocated_size'] for row in value['records']))
        with self.assertRaisesRegex(ValueError, 'inconsistent'):
            validate_capture(value)

    def test_summary_entry_target_record_and_byte_censuses_are_independently_checked(self):
        for field in ('outgoing_entry_count', 'target_count', 'record_count', 'logical_bytes', 'raw_bytes'):
            value = capture_fixture()
            value['summary'][field] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_capture(value)

    def test_summary_boolean_counts_binding_and_authority_are_strict(self):
        for field, replacement in [('generation', True), ('component_oid', 'foreign'),
                ('outgoing_entry_count', True), ('target_count', False), ('record_count', 2.0),
                ('logical_bytes', True), ('raw_bytes', 0), ('original_material_held', 1),
                ('same_native_dispatch', False), ('reciprocal_consistent', False),
                ('new_outgoing_targets_captured', True), ('write_authorized', True),
                ('inverse_authorized', 0), ('phase', 'capturing'), ('profile', 'unknown')]:
            value = capture_fixture()['summary']
            value[field] = replacement
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_summary(value, resources.OID, 7)

    def test_full_capture_requires_success_profile_exact_keys_and_original_binding(self):
        edits = [lambda v: v.update(profile='native_original_reciprocal_records_v0'),
                 lambda v: v.update(generation=8), lambda v: v.update(generation=True),
                 lambda v: v.update(component_oid='foreign'), lambda v: v.update(owner_key=A),
                 lambda v: v.update(current_records=[]), lambda v: v.pop('outgoing_record'),
                 lambda v: v.update(summary=None)]
        for edit in edits:
            value = capture_fixture()
            edit(value)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                validate_capture(value)

    def test_new_capture_rejects_legacy_or_unknown_record_length_profiles(self):
        for role in ('outgoing', 'inbound'):
            for profile in (None, 'reference_payload_v1', 'reference_payload_v3'):
                value = capture_fixture()
                row = value['outgoing_record'] if role == 'outgoing' else value['records'][0]
                if profile is None:
                    row.pop('length_profile')
                    row['logical_size'] = row['declared_size']
                    row['bytes'] = row['allocated_bytes'][:row['logical_size']]
                else:
                    row['length_profile'] = profile
                with self.subTest(role=role, profile=profile), self.assertRaisesRegex(ValueError, 'complete v2'):
                    validate_capture(value)

    def test_direct_ctree_before_after_material_cannot_be_missing_or_partial(self):
        edits = [lambda r: r.pop('ctree_before'), lambda r: r.pop('ctree_after'),
                 lambda r: r['ctree_before'].update(field_names=[]),
                 lambda r: r['ctree_after']['fields'][0].update(slot=True),
                 lambda r: r['ctree_before']['binding'].pop('ref'),
                 lambda r: r['ctree_after']['fields'][0].update(value={})]
        for edit in edits:
            value = capture_fixture()
            edit(value['records'][0])
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                validate_capture(value)

    def test_unknown_proxy_tag_and_absent_record_are_failures_not_empty_lists(self):
        value = capture_fixture()
        row = value['records'][0]
        row['allocated_bytes'][64] = 2
        row['bytes'] = row['allocated_bytes'][:row['logical_size']]
        with self.assertRaisesRegex(ValueError, 'Unsupported'):
            validate_capture(value)
        value = capture_fixture()
        value['records'][0]['read_status'] = 'absent'
        with self.assertRaises(ValueError):
            validate_capture(value)

    def test_validated_summary_is_detached_from_original_evidence(self):
        value = capture_fixture()
        proof = validate_capture(value)
        proof['target_count'] = 99
        self.assertEqual(value['summary']['target_count'], 2)


class ReciprocalV4ReceiptTests(unittest.TestCase):
    def test_v4_receipt_requires_all_original_model_control_and_reciprocal_proofs(self):
        value = receipt_fixture()
        self.assertEqual(validate(value, token=resources.TOKEN, component_oid=resources.OID), value)
        for key in ('registered_models', 'ctree_control', 'record_length_profile', 'reciprocal_references'):
            invalid = deepcopy(value)
            invalid.pop(key)
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate(invalid, token=resources.TOKEN, component_oid=resources.OID)

    def test_downgraded_receipts_cannot_keep_or_claim_the_v4_reciprocal_proof(self):
        for profile in ('native_commit_prepare_v1', 'native_commit_prepare_v2', 'native_commit_prepare_v3'):
            value = receipt_fixture()
            value['profile'] = profile
            with self.subTest(profile=profile), self.assertRaises(ValueError):
                validate(value, token=resources.TOKEN, component_oid=resources.OID)
        legacy = controls.receipt()
        self.assertEqual(validate(legacy, token=resources.TOKEN, component_oid=resources.OID), legacy)

    def test_v4_inspect_and_check_explicitly_do_not_verify_current_inbound_records(self):
        for checked in (False, True):
            with self.subTest(checked=checked):
                value = status_fixture(checked)
                result = status(value, token=resources.TOKEN, component_oid=resources.OID, checked=checked)
                self.assertIs(result['current_reciprocal_records_checked'], False)
                compact = summary(result)
                self.assertIn('original reciprocal inbound before records captured', compact['coverage'])
                self.assertIn('current reciprocal inbound records not checked', compact['coverage'])
                self.assertIn('new outgoing targets not captured', compact['coverage'])
                self.assertNotIn('historical declared reference prefixes only', compact['coverage'])

    def test_v4_cannot_omit_or_upgrade_the_current_reciprocal_check_flag(self):
        for checked in (False, True):
            for replacement in (None, True, 0, 1):
                value = status_fixture(checked)
                if replacement is None:
                    value.pop('current_reciprocal_records_checked')
                else:
                    value['current_reciprocal_records_checked'] = replacement
                with self.subTest(checked=checked, replacement=replacement), self.assertRaises(ValueError):
                    status(value, token=resources.TOKEN, component_oid=resources.OID, checked=checked)

    def test_v4_checked_status_cannot_downgrade_current_owner_payload_comparison(self):
        value = status_fixture()
        for key in ('record_comparison_profile', 'full_reference_payloads_checked', 'raw_records_match_retained'):
            value.pop(key)
        with self.assertRaisesRegex(ValueError, 'complete current owner'):
            status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_v4_nested_summary_cannot_rebind_or_grant_write_authority(self):
        for field, replacement in [('generation', 8), ('component_oid', 'foreign'),
                ('same_native_dispatch', False), ('write_authorized', True), ('record_count', True),
                ('new_outgoing_targets_captured', True)]:
            value = receipt_fixture()
            value['reciprocal_references'][field] = replacement
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate(value, token=resources.TOKEN, component_oid=resources.OID)


if __name__ == '__main__':
    unittest.main()
