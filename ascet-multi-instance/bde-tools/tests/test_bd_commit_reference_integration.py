"""Offline guards for complete reference semantics and separate raw record tails."""
from copy import deepcopy
import unittest

from bd_commit_resource_diff import recompute
from bd_commit_resources import status, summary, validate
import test_bd_commit_resource_diff as direct
import test_bd_commit_resources as resources
import test_bd_persistent_references as references


PROFILE = 'complete_reference_payload_v2'


def pair_fixture():
    original = direct.capture()
    original.update(profile='bde_commit_resource_capture_v1', owner_key=references.OWNER.copy(), token='commit_' + 'a' * 64,
                    component_oid=resources.OID, generation=7)
    for index, role in enumerate(('owner_references', 'owner_referenced_by'), 1):
        row = references.fixture(role)
        row.update(ctree_before=direct.image('ctree/' + role), ctree_after=direct.image('ctree/' + role))
        original['records'][index] = row
    current = deepcopy(original)
    current.update(profile='bde_commit_resource_capture_v2', action='check', record_comparison_profile=PROFILE,
                   logical_records_match_retained=True,
                   raw_records_match_retained=True)
    current['records'][1:] = [references.payload_v2(row) for row in original['records'][1:]]
    # Independent expected extent: fixed 60 + count 4 + one (tag 1 + key 20).
    current['retained_record_bytes'] = [dict(role=original['records'][0]['role'], bytes=[1, 2])]
    current['retained_record_bytes'] += [dict(role=row['role'], bytes=row['allocated_bytes'][:85])
                                         for row in original['records'][1:]]
    return original, current


def update_prefix(row):
    row['bytes'] = row['allocated_bytes'][:row['logical_size']]


def prepared_fixture():
    _, current = pair_fixture()
    value = resources.receipt()
    value['record_length_profile'] = PROFILE
    value['record_summaries'] = [{key: row[key] for key in ('role', 'logical_size', 'allocated_size')}
                                  for row in current['records']]
    return value


def checked_fixture():
    value = resources.status_receipt(True)
    value.update(prepared_receipt=prepared_fixture(), actual_changes=[], logical_records_match_retained=True,
                 record_comparison_profile=PROFILE, full_reference_payloads_checked=True,
                 raw_records_match_retained=True)
    return value


class CommitReferenceIntegrationTests(unittest.TestCase):
    def test_legacy_original_is_recovered_from_retained_raw_bytes_without_rewriting_it(self):
        original, current = pair_fixture()
        preserved = deepcopy(original)
        self.assertEqual(recompute(original, current), [])
        self.assertEqual(original, preserved)
        for before, after, retained in zip(original['records'][1:], current['records'][1:],
                                           current['retained_record_bytes'][1:]):
            self.assertNotIn('length_profile', before)
            self.assertEqual(before['logical_size'], 81)
            self.assertEqual(after['logical_size'], 85)
            self.assertEqual(retained['bytes'], before['allocated_bytes'][:85])
            self.assertEqual(after['bytes'], retained['bytes'])

    def test_only_the_former_missing_last_four_key_bytes_trigger_semantic_diff_in_both_roles(self):
        for index in (1, 2):
            original, current = pair_fixture()
            row = current['records'][index]
            row['allocated_bytes'][81:85] = [91, 92, 93, 94]
            update_prefix(row)
            current.update(logical_records_match_retained=False, raw_records_match_retained=False)
            self.assertEqual(original['records'][index]['bytes'], row['bytes'][:81])
            expected = dict(category='since_preparation', locus='logical_record/' + row['role'],
                field='$logical_bytes', before=original['records'][index]['allocated_bytes'][:85],
                after=row['allocated_bytes'][:85])
            with self.subTest(role=row['role']):
                self.assertEqual(recompute(original, current), [expected])
                self.assertEqual(expected['before'][-4:], [41, 41, 41, 41])
                self.assertEqual(expected['after'][-4:], [91, 92, 93, 94])

    def test_unparsed_tail_change_is_actual_raw_diff_while_reference_semantics_match(self):
        original, current = pair_fixture()
        current['records'][1]['allocated_bytes'][-1] = 99
        current['raw_records_match_retained'] = False
        expected = dict(category='since_preparation', locus='raw_record/owner_references',
            field='$unparsed_record_tail', before=[81, 82, 83, 84, 85], after=[81, 82, 83, 84, 99])
        self.assertEqual(recompute(original, current), [expected])
        self.assertTrue(current['logical_records_match_retained'])
        self.assertFalse(current['raw_records_match_retained'])
        value = checked_fixture()
        value.update(actual_changes=[expected], raw_records_match_retained=False)
        checked = status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)
        self.assertEqual(checked['actual_changes'], [expected])
        self.assertTrue(checked['logical_records_match_retained'])
        self.assertFalse(checked['raw_records_match_retained'])

    def test_owner_record_tail_is_preserved_separately_too(self):
        original, current = pair_fixture()
        current['records'][0]['allocated_bytes'][-1] = 77
        current['raw_records_match_retained'] = False
        self.assertEqual(recompute(original, current), [dict(category='since_preparation',
            locus='raw_record/owner', field='$unparsed_record_tail', before=[0], after=[77])])

    def test_forged_retained_semantic_bytes_roles_or_census_are_rejected(self):
        for edit in (lambda c: c['retained_record_bytes'][1]['bytes'].__setitem__(-1, 99),
                     lambda c: c['retained_record_bytes'].pop(),
                     lambda c: c['retained_record_bytes'].reverse(),
                     lambda c: c['retained_record_bytes'][1].update(role='owner_referenced_by')):
            original, current = pair_fixture()
            edit(current)
            with self.subTest(edit=edit), self.assertRaisesRegex(ValueError, 'retained reference bytes'):
                recompute(original, current)

    def test_forged_semantic_and_raw_equality_are_rejected(self):
        for flag in ('logical_records_match_retained', 'raw_records_match_retained'):
            original, current = pair_fixture()
            current[flag] = False
            with self.subTest(flag=flag), self.assertRaises(ValueError):
                recompute(original, current)
        original, current = pair_fixture()
        current['records'][1]['allocated_bytes'][-1] = 99
        with self.assertRaisesRegex(ValueError, 'raw record equality'):
            recompute(original, current)
        original, current = pair_fixture()
        current['records'][1]['allocated_bytes'][84] = 99
        update_prefix(current['records'][1])
        current['raw_records_match_retained'] = False
        with self.assertRaisesRegex(ValueError, 'reference equality'):
            recompute(original, current)

    def test_equality_flags_must_be_booleans_not_integer_substitutes(self):
        for flag in ('logical_records_match_retained', 'raw_records_match_retained'):
            for value in (1, 1.0):
                original, current = pair_fixture()
                current[flag] = value
                with self.subTest(flag=flag, value=value), self.assertRaises(ValueError):
                    recompute(original, current)

    def test_complete_current_profile_cannot_use_a_legacy_truncated_reference_row(self):
        original, current = pair_fixture()
        current['records'][1] = deepcopy(original['records'][1])
        current['logical_records_match_retained'] = False
        with self.assertRaises(ValueError):
            recompute(original, current)

    def test_unknown_tag_in_old_or_new_reference_material_is_refused(self):
        for side in ('old', 'new'):
            original, current = pair_fixture()
            row = (original if side == 'old' else current)['records'][1]
            row['allocated_bytes'][64] = 2
            update_prefix(row)
            with self.subTest(side=side), self.assertRaisesRegex(ValueError, 'Unsupported persistent reference tag'):
                recompute(original, current)

    def test_unknown_comparison_and_reference_length_profiles_are_refused(self):
        for edit in (lambda c: c.update(record_comparison_profile='complete_reference_payload_v3'),
                     lambda c: c.update(record_comparison_profile=None),
                     lambda c: c.update(profile='bde_commit_resource_capture_v1'),
                     lambda c: c.pop('profile'),
                     lambda c: c['records'][1].update(length_profile='reference_payload_v3')):
            original, current = pair_fixture()
            edit(current)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                recompute(original, current)

    def test_new_prepared_length_claim_and_checked_status_are_explicit(self):
        prepared = prepared_fixture()
        self.assertEqual(validate(prepared, token=resources.TOKEN, component_oid=resources.OID), prepared)
        checked = checked_fixture()
        result = status(checked, token=resources.TOKEN, component_oid=resources.OID, checked=True)
        self.assertTrue(result['full_reference_payloads_checked'])
        self.assertIn('separate unparsed raw record tails', summary(result)['coverage'])
        for bad in (None, '', 'complete_reference_payload_v1', True):
            invalid = deepcopy(prepared)
            invalid['record_length_profile'] = bad
            with self.subTest(profile=bad), self.assertRaises(ValueError):
                validate(invalid, token=resources.TOKEN, component_oid=resources.OID)

    def test_complete_status_requires_exact_profile_flags_and_raw_equality_type(self):
        for edit in (lambda v: v.update(record_comparison_profile='unknown'),
                     lambda v: v.update(full_reference_payloads_checked=False),
                     lambda v: v.update(full_reference_payloads_checked=1),
                     lambda v: v.update(raw_records_match_retained=1),
                     lambda v: v.update(logical_records_match_retained=1),
                     lambda v: v.pop('raw_records_match_retained'),
                     lambda v: v.pop('record_comparison_profile')):
            value = checked_fixture()
            edit(value)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_old_comparison_can_be_retained_but_does_not_claim_complete_references(self):
        original, _ = pair_fixture()
        historical = deepcopy(original)
        historical['action'] = 'check'
        historical['records'][1]['allocated_bytes'][84] = 99
        # Historical comparison preserves its known blind spot; it is not new acceptance.
        self.assertEqual(recompute(original, historical), [])
        old_status = resources.status_receipt(True)
        result = status(old_status, token=resources.TOKEN, component_oid=resources.OID, checked=True)
        self.assertNotIn('full_reference_payloads_checked', result)
        self.assertNotIn('complete tag-1', summary(result)['coverage'])
        old_status['full_reference_payloads_checked'] = True
        with self.assertRaises(ValueError):
            status(old_status, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_inspect_only_cannot_claim_checked_full_payloads(self):
        value = resources.status_receipt(False)
        value['prepared_receipt'] = prepared_fixture()
        self.assertNotIn('full_reference_payloads_checked', status(value, token=resources.TOKEN,
                                                                  component_oid=resources.OID, checked=False))
        value.update(record_comparison_profile=PROFILE, full_reference_payloads_checked=True,
                     raw_records_match_retained=True)
        with self.assertRaises(ValueError):
            status(value, token=resources.TOKEN, component_oid=resources.OID, checked=False)


if __name__ == '__main__':
    unittest.main()
