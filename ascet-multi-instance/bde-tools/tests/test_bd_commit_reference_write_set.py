"""Offline finite reference plans; no database read, write or recovery acceptance."""
from copy import deepcopy
import unittest

from bd_commit_reference_write_set import plan, check_inbound, check_revert_inbound, ReferencePatchConflict
import test_bd_persistent_references as references


OWNER = references.OWNER
A, B, C, UNRELATED = ([value] * 20 for value in (31, 32, 33, 77))


def entries(*keys):
    return [{'tag': 1, 'global_id': key.copy()} for key in keys]


def row(record_owner, keys, role='owner_referenced_by'):
    result = references.fixture(role, keys=deepcopy(keys))
    result['global_id'] = record_owner.copy()
    result['query_key'] = record_owner + list(result['attribute'].encode('ascii'))
    result['actual_file_key'] = result['query_key'].copy()
    return result


def outgoing(*keys):
    return row(OWNER, list(keys), 'owner_references')


class ReferenceWriteSetTests(unittest.TestCase):
    def test_add_remove_and_unchanged_targets_use_sorted_unique_oid_membership(self):
        value = plan(OWNER, outgoing(B, A, A), entries(C, B, C))
        self.assertEqual(value['outgoing_before_entries'], entries(B, A, A))
        self.assertEqual(value['outgoing_after_entries'], entries(C, B, C))
        self.assertEqual(value['added_targets'], [C])
        self.assertEqual(value['removed_targets'], [A])
        self.assertEqual(value['unchanged_targets'], [B])
        self.assertEqual(value['reciprocal_targets'], [A, B, C])
        self.assertEqual(value['before_duplicates'], [{'global_id': A, 'entry_indexes': [1, 2]}])
        self.assertEqual(value['after_duplicates'], [{'global_id': C, 'entry_indexes': [0, 2]}])

    def test_reciprocal_patches_only_add_remove_owner_and_preserve_unrelated_order(self):
        value = plan(OWNER, outgoing(A, B), entries(B, C))
        captured = [row(C, [UNRELATED, B]), row(A, [UNRELATED, OWNER, B]), row(B, [C, OWNER, UNRELATED])]
        result = check_inbound(value, captured)
        self.assertEqual([patch['target_key'] for patch in result['patches']], [A, C])
        self.assertEqual(result['patches'][0]['before_entries'], entries(UNRELATED, OWNER, B))
        self.assertEqual(result['patches'][0]['after_entries'], entries(UNRELATED, B))
        self.assertEqual(result['patches'][1]['before_entries'], entries(UNRELATED, B))
        self.assertEqual(result['patches'][1]['after_entries'], entries(UNRELATED, B, OWNER))
        self.assertEqual([check['operation'] for check in result['checked_targets']],
                         ['remove_owner', 'unchanged', 'append_owner'])
        self.assertTrue(result['unrelated_entries_preserved'])
        self.assertFalse(result['persistent_write_performed'])
        self.assertFalse(result['write_authorized'])
        self.assertFalse(result['inverse_authorized'])

    def test_duplicate_owners_are_explicitly_preserved_or_all_removed(self):
        value = plan(OWNER, outgoing(A, B), entries(B, B))
        captured = [row(A, [OWNER, UNRELATED, OWNER, UNRELATED]), row(B, [OWNER, C, OWNER])]
        result = check_inbound(value, captured)
        self.assertEqual(len(result['patches']), 1)
        self.assertEqual(result['patches'][0]['after_entries'], entries(UNRELATED, UNRELATED))
        self.assertEqual(result['checked_targets'][0]['owner_count_before'], 2)
        self.assertEqual(result['checked_targets'][0]['owner_count_after'], 0)
        self.assertEqual(result['checked_targets'][1]['owner_count_before'], 2)
        self.assertEqual(result['checked_targets'][1]['owner_count_after'], 2)

    def test_order_only_outgoing_change_still_checks_unchanged_inbound_membership(self):
        value = plan(OWNER, outgoing(A, B), entries(B, A))
        self.assertTrue(value['outgoing_changed'])
        self.assertEqual(value['added_targets'], [])
        self.assertEqual(value['removed_targets'], [])
        result = check_inbound(value, [row(A, [OWNER]), row(B, [OWNER])])
        self.assertEqual(result['patches'], [])
        self.assertEqual(len(result['checked_targets']), 2)

    def test_self_reference_requires_its_own_inbound_row(self):
        value = plan(OWNER, outgoing(), entries(OWNER, OWNER))
        self.assertTrue(value['self_reference_after'])
        self.assertEqual(value['reciprocal_targets'], [OWNER])
        result = check_inbound(value, [row(OWNER, [UNRELATED])])
        self.assertTrue(result['self_reference_included'])
        self.assertEqual(result['patches'][0]['after_entries'], entries(UNRELATED, OWNER))
        with self.assertRaises(ValueError):
            check_inbound(value, [outgoing()])
        removed = plan(OWNER, outgoing(OWNER), [])
        self.assertEqual(check_inbound(removed, [row(OWNER, [OWNER, UNRELATED])])['patches'][0]['after_entries'],
                         entries(UNRELATED))

    def test_missing_extra_duplicate_and_misbound_inbound_captures_are_refused(self):
        value = plan(OWNER, outgoing(A), entries(B))
        for captured in ([row(A, [OWNER])], [row(A, [OWNER]), row(B, []), row(C, [])],
                         [row(A, [OWNER]), row(A, [OWNER])], [row(A, [OWNER]), row(C, [])]):
            with self.subTest(captured=captured), self.assertRaises(ValueError):
                check_inbound(value, captured)
        misbound = row(B, [])
        misbound['actual_file_key'][0] ^= 1
        with self.assertRaises(ValueError):
            check_inbound(value, [row(A, [OWNER]), misbound])

    def test_inconsistent_old_reciprocal_membership_is_not_repaired(self):
        cases = [(plan(OWNER, outgoing(A), []), [row(A, [UNRELATED])]),
                 (plan(OWNER, outgoing(), entries(A)), [row(A, [OWNER, UNRELATED])]),
                 (plan(OWNER, outgoing(A), entries(A)), [row(A, [])])]
        for value, captured in cases:
            with self.subTest(value=value), self.assertRaisesRegex(ValueError, 'inconsistent; no repair'):
                check_inbound(value, captured)

    def test_absent_outgoing_or_inbound_record_semantics_are_not_guessed(self):
        for absent in (None, {'role': 'owner_references', 'read_status': 'absent'}):
            with self.subTest(absent=absent), self.assertRaises(ValueError):
                plan(OWNER, absent, entries(A))
        value = plan(OWNER, outgoing(), entries(A))
        for absent in (None, {'role': 'owner_referenced_by', 'read_status': 'absent', 'global_id': A}):
            with self.subTest(absent=absent), self.assertRaisesRegex(ValueError, 'absent'):
                check_inbound(value, [absent])

    def test_unknown_tags_and_malformed_or_wrong_owner_ids_are_refused(self):
        for proposed in ([{'tag': 2, 'global_id': A}], [{'tag': True, 'global_id': A}],
                         [{'tag': 1, 'global_id': [True] * 20}], [{'tag': 1, 'global_id': A[:-1]}],
                         [{'tag': 1, 'global_id': A, 'extra': 1}], None):
            with self.subTest(proposed=proposed), self.assertRaises(ValueError):
                plan(OWNER, outgoing(), proposed)
        with self.assertRaises(ValueError):
            plan(A, outgoing(B), entries(C))
        for owner in (OWNER[:-1], [256] * 20, [True] * 20):
            with self.subTest(owner=owner), self.assertRaises(ValueError):
                plan(owner, outgoing(), [])
        invalid = outgoing(A)
        invalid['allocated_bytes'][64] = 2
        invalid['bytes'] = invalid['allocated_bytes'][:invalid['logical_size']]
        with self.assertRaisesRegex(ValueError, 'Unsupported'):
            plan(OWNER, invalid, [])

    def test_inbound_unknown_proxy_tag_is_refused(self):
        value = plan(OWNER, outgoing(), entries(A))
        invalid = row(A, [UNRELATED])
        invalid['allocated_bytes'][64] = 2
        invalid['bytes'] = invalid['allocated_bytes'][:invalid['logical_size']]
        with self.assertRaisesRegex(ValueError, 'Unsupported'):
            check_inbound(value, [invalid])

    def test_tampered_plan_census_before_or_authority_is_refused(self):
        for edit in (lambda p: p.update(added_targets=[]),
                     lambda p: p.update(reciprocal_targets=[]),
                     lambda p: p.update(outgoing_before_entries=[]),
                     lambda p: p.update(write_authorized=True),
                     lambda p: p.update(original_capture_provenance_verified=True),
                     lambda p: p.update(inverse_authorized=0)):
            value = plan(OWNER, outgoing(A), entries(B))
            edit(value)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                check_inbound(value, [row(A, [OWNER]), row(B, [])])

    def test_entry_bounds_are_checked_before_inbound_append(self):
        with self.assertRaisesRegex(ValueError, 'bounded'):
            plan(OWNER, outgoing(), entries(*([A] * 4097)))
        value = plan(OWNER, outgoing(), entries(A))
        with self.assertRaisesRegex(ValueError, 'exceed'):
            check_inbound(value, [row(A, [UNRELATED] * 4096)])

    def test_empty_membership_is_finite_and_needs_no_inbound_records(self):
        value = plan(bytes(OWNER), outgoing(), [])
        self.assertFalse(value['outgoing_changed'])
        self.assertEqual(value['reciprocal_targets'], [])
        self.assertEqual(check_inbound(value, [])['patches'], [])
        with self.assertRaises(ValueError):
            check_inbound(value, [row(A, [])])

    def test_outputs_are_detached_and_cannot_mutate_original_captures(self):
        original, proposed = outgoing(A), entries(B)
        captured = [row(A, [OWNER, UNRELATED]), row(B, [UNRELATED])]
        saved = deepcopy((original, proposed, captured))
        value = plan(OWNER, original, proposed)
        result = check_inbound(value, captured)
        result['patches'][0]['original_inbound_record']['allocated_bytes'].clear()
        result['patches'][0]['after_entries'].clear()
        value['old_outgoing_record']['allocated_bytes'].clear()
        value['outgoing_after_entries'][0]['global_id'][0] = 0
        self.assertEqual((original, proposed, captured), saved)

    def test_plan_can_consume_explicit_v2_before_record_without_reinterpreting_legacy(self):
        legacy = outgoing(A, A)
        modern = references.payload_v2(legacy)
        old = plan(OWNER, legacy, entries(B))
        current = plan(OWNER, modern, entries(B))
        self.assertEqual(old['outgoing_before_entries'], current['outgoing_before_entries'])
        self.assertEqual(old['reciprocal_targets'], current['reciprocal_targets'])
        self.assertNotIn('length_profile', old['old_outgoing_record'])
        self.assertEqual(current['old_outgoing_record']['length_profile'], 'reference_payload_v2')


def append_patch():
    return check_inbound(plan(OWNER, outgoing(), entries(A)), [row(A, [B, UNRELATED])])


def removal_patch(before):
    return check_inbound(plan(OWNER, outgoing(A), []), [row(A, before)])


class ReferenceRevertPlanTests(unittest.TestCase):
    def test_revert_added_owner_preserves_current_unrelated_order_duplicates_and_additions(self):
        patch = append_patch()
        current = row(A, [C, UNRELATED, B, OWNER, C])
        result = check_revert_inbound(patch, [current])
        inverse = result['patches'][0]
        self.assertEqual(inverse['forward_before_entries'], entries(B, UNRELATED))
        self.assertEqual(inverse['forward_after_entries'], entries(B, UNRELATED, OWNER))
        self.assertEqual(inverse['current_entries'], entries(C, UNRELATED, B, OWNER, C))
        self.assertEqual(inverse['reverted_entries'], entries(C, UNRELATED, B, C))
        self.assertEqual(inverse['operation'], 'remove_added_owner')
        self.assertFalse(result['write_authorized'])
        self.assertFalse(result['inverse_authorized'])
        self.assertFalse(result['original_capture_provenance_verified'])

    def test_removed_owner_restores_between_unique_adjacent_anchors_with_other_edits_preserved(self):
        patch = removal_patch([B, OWNER, C, UNRELATED])
        result = check_revert_inbound(patch, [row(A, [UNRELATED, B, C, UNRELATED])])
        inverse = result['patches'][0]
        self.assertEqual(inverse['reverted_entries'], entries(UNRELATED, B, OWNER, C, UNRELATED))
        self.assertEqual(inverse['restore_index'], 2)
        self.assertEqual(inverse['forward_before_entries'], entries(B, OWNER, C, UNRELATED))
        self.assertEqual(inverse['current_entries'], entries(UNRELATED, B, C, UNRELATED))

    def test_single_owner_boundary_restoration_requires_boundary_anchor(self):
        cases = [([OWNER, B, C], [B, UNRELATED, C], [OWNER, B, UNRELATED, C]),
                 ([B, C, OWNER], [UNRELATED, B, C], [UNRELATED, B, C, OWNER]),
                 ([OWNER], [], [OWNER])]
        for before, current, expected in cases:
            with self.subTest(before=before):
                result = check_revert_inbound(removal_patch(before), [row(A, current)])
                self.assertEqual(result['patches'][0]['reverted_entries'], entries(*expected))

    def test_overlapping_current_owner_membership_is_a_conflict(self):
        for patch, current in [(append_patch(), [B, UNRELATED]),
                               (append_patch(), [B, OWNER, UNRELATED, OWNER]),
                               (removal_patch([B, OWNER, C]), [B, OWNER, C])]:
            with self.subTest(current=current), self.assertRaisesRegex(ReferencePatchConflict, 'overlaps'):
                check_revert_inbound(patch, [row(A, current)])

    def test_ambiguous_or_lost_restoration_anchors_are_conflicts(self):
        cases = [([B, OWNER, C], [B, UNRELATED, C]),  # Competing insertion in the original gap.
                 ([B, OWNER, C], [C, B]),
                 ([B, OWNER, C], [B]),
                 ([B, OWNER, C], [B, C, B]),
                 ([B, OWNER, C, B], [B, C, B]),
                 ([B, OWNER, B], [B, B]),
                 ([OWNER, B], [C, B]),
                 ([B, OWNER], [B, C]),
                 ([OWNER], [B])]
        for before, current in cases:
            with self.subTest(before=before, current=current), self.assertRaises(ReferencePatchConflict):
                check_revert_inbound(removal_patch(before), [row(A, current)])

    def test_repeated_original_owner_positions_are_not_guessed(self):
        patch = removal_patch([OWNER, B, OWNER])
        with self.assertRaisesRegex(ReferencePatchConflict, 'Repeated'):
            check_revert_inbound(patch, [row(A, [B])])

    def test_restoring_owner_cannot_exceed_the_current_record_bound(self):
        patch = removal_patch([OWNER, B])
        with self.assertRaisesRegex(ReferencePatchConflict, 'exceed'):
            check_revert_inbound(patch, [row(A, [B] + [UNRELATED] * 4095)])

    def test_current_capture_requires_exact_changed_target_census_and_binding(self):
        patch = append_patch()
        for captured in ([], [row(A, [OWNER]), row(A, [OWNER])], [row(B, [OWNER])],
                         [outgoing(OWNER)], [dict(role='owner_referenced_by', read_status='absent', global_id=A)]):
            with self.subTest(captured=captured), self.assertRaises(ValueError):
                check_revert_inbound(patch, captured)
        invalid = row(A, [OWNER])
        invalid['actual_file_key'][0] ^= 1
        with self.assertRaises(ValueError):
            check_revert_inbound(patch, [invalid])

    def test_mutated_patch_operations_counts_membership_and_authority_are_rejected(self):
        edits = [lambda p: p['patches'][0].update(operation='remove_owner'),
                 lambda p: p['patches'][0].update(owner_count_after=True),
                 lambda p: p['patches'][0].update(owner_count_before=False),
                 lambda p: p['checked_targets'][0].update(owner_count_after=True),
                 lambda p: p['checked_targets'][0].update(new_owner_expected=1),
                 lambda p: p['checked_targets'][0].update(operation='unchanged'),
                 lambda p: p['patches'][0].update(before_entries=entries(C)),
                 lambda p: p['patches'][0].update(after_entries=entries(B, OWNER)),
                 lambda p: p.update(write_authorized=True),
                 lambda p: p.update(inverse_authorized=0),
                 lambda p: p.update(original_capture_provenance_verified=True),
                 lambda p: p.update(self_reference_included=0),
                 lambda p: p['patches'].clear(),
                 lambda p: p['checked_targets'].append(deepcopy(p['checked_targets'][0]))]
        for edit in edits:
            patch = append_patch()
            edit(patch)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                check_revert_inbound(patch, [row(A, [B, UNRELATED, OWNER])])

    def test_original_record_is_redecoded_instead_of_trusting_before_and_after_fields(self):
        patch = append_patch()
        patch['patches'][0]['original_inbound_record'] = row(A, [C, UNRELATED])
        with self.assertRaisesRegex(ValueError, 'retained original'):
            check_revert_inbound(patch, [row(A, [B, UNRELATED, OWNER])])

    def test_self_reference_inverse_uses_separate_current_inbound_evidence(self):
        value = plan(OWNER, outgoing(), entries(OWNER))
        patch = check_inbound(value, [row(OWNER, [UNRELATED])])
        result = check_revert_inbound(patch, [row(OWNER, [C, UNRELATED, OWNER])])
        self.assertEqual(result['patches'][0]['target_key'], OWNER)
        self.assertEqual(result['patches'][0]['reverted_entries'], entries(C, UNRELATED))

    def test_only_changed_targets_are_recaptured_and_noop_plan_needs_none(self):
        value = plan(OWNER, outgoing(A, B), entries(B))
        patch = check_inbound(value, [row(A, [OWNER]), row(B, [OWNER])])
        self.assertEqual(len(check_revert_inbound(patch, [row(A, [])])['patches']), 1)
        with self.assertRaises(ValueError):
            check_revert_inbound(patch, [row(A, []), row(B, [OWNER])])
        unchanged = check_inbound(plan(OWNER, outgoing(B), entries(B)), [row(B, [OWNER])])
        self.assertEqual(check_revert_inbound(unchanged, [])['patches'], [])

    def test_inverse_does_not_modify_original_forward_or_current_evidence(self):
        patch, current = append_patch(), [row(A, [C, OWNER, UNRELATED])]
        original = deepcopy((patch, current))
        result = check_revert_inbound(patch, current)
        inverse = result['patches'][0]
        for field in ('forward_before_entries', 'forward_after_entries', 'current_entries', 'reverted_entries'):
            inverse[field].clear()
        inverse['original_inbound_record']['allocated_bytes'].clear()
        inverse['current_inbound_record']['allocated_bytes'].clear()
        self.assertEqual((patch, current), original)


if __name__ == '__main__':
    unittest.main()
