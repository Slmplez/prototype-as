"""Ordering conflicts and preservation; synthetic cases are not native inverse acceptance."""
from copy import deepcopy
from itertools import combinations, permutations
import unittest

from bd_collection_merge import apply_value_splices, merge_order


class CollectionMergeTests(unittest.TestCase):
    def check(self, before, after, current, merged):
        inputs = deepcopy((before, after, current))
        plan = merge_order(before, after, current)
        self.assertTrue(plan['compatible'], plan['conflicts'])
        self.assertEqual(plan['merged'], merged)
        self.assertEqual(apply_value_splices(current, plan), merged)
        self.assertEqual((before, after, current), inputs)
        self.assertFalse(plan['write_authorized'])

    def test_deleted_runs_restore_with_unrelated_members_in_other_gaps(self):
        self.check(['a', 'x', 'z', 'b'], ['a', 'b'], ['new', 'a', 'b', 'tail'],
                   ['new', 'a', 'x', 'z', 'b', 'tail'])

    def test_edit_added_members_are_removed_without_losing_independent_additions(self):
        self.check(['a', 'b'], ['a', 'edit', 'b'], ['new', 'a', 'edit', 'b', 'tail'],
                   ['new', 'a', 'b', 'tail'])

    def test_independently_deleted_originals_are_not_recreated(self):
        self.check(['a', 'x', 'b', 'c'], ['a', 'b', 'c'], ['b', 'c'], ['x', 'b', 'c'])

    def test_empty_parent_and_all_members_deleted(self):
        self.check(['x', 'z'], [], [], ['x', 'z'])
        self.check([], ['edit'], ['edit', 'new'], ['new'])
        self.check([], [], ['new'], ['new'])

    def test_noop_preserves_independent_reordering(self):
        # The ordering policy is conservative even when no members need undo.
        plan = merge_order(['a', 'b'], ['a', 'b'], ['b', 'a'])
        self.assertEqual(plan['conflicts'], [{'code': 'CURRENT_ORDER_CONFLICT'}])

    def test_overlapping_gap_refuses_interior_and_boundary_ambiguity(self):
        for before, after, current in ((['a', 'x', 'b'], ['a', 'b'], ['a', 'new', 'b']),
                                       (['x', 'a'], ['a'], ['new', 'a']),
                                       (['a', 'x'], ['a'], ['a', 'new']),
                                       (['x'], [], ['new'])):
            plan = merge_order(before, after, current)
            self.assertIn('RESTORE_GAP_AMBIGUOUS', {row['code'] for row in plan['conflicts']})
            self.assertEqual((plan['merged'], plan['splices']), ([], []))

    def test_identity_membership_and_order_conflicts(self):
        for before, after, current, code in ((['a', 'x'], ['a'], ['a', 'x'], 'RESTORE_MEMBER_ALREADY_PRESENT'),
                (['a'], ['a', 'edit'], ['a'], 'REMOVE_MEMBER_MISSING'),
                (['a', 'b'], ['b', 'a'], ['b', 'a'], 'EDIT_REORDER_UNSUPPORTED'),
                (['a', 'x', 'b'], ['a', 'b'], ['b', 'a'], 'CURRENT_ORDER_CONFLICT')):
            plan = merge_order(before, after, current)
            self.assertIn(code, {row['code'] for row in plan['conflicts']})
            self.assertEqual((plan['merged'], plan['splices']), ([], []))

    def test_duplicates_untyped_and_unbounded_refs_refuse(self):
        for malformed in (['a', 'a'], [True], [1], [''], ['a' * 4097], ('a',), None, ['a'] * 100001):
            with self.assertRaises(ValueError):
                merge_order(['a'], ['a'], malformed)

    def test_small_exhaustive_plans_preserve_current_order_and_exact_membership(self):
        before = ['a', 'x', 'b']
        checked = 0
        for count in range(4):
            for after in combinations(before, count):
                for later_count in range(5):
                    for current in permutations([*after, 'new'], later_count):
                        plan = merge_order(before, list(after), list(current))
                        if not plan['compatible']:
                            self.assertEqual((plan['merged'], plan['splices']), ([], []))
                            continue
                        merged = apply_value_splices(current, plan)
                        restored = set(before) - set(after)
                        removed = set(after) - set(before)
                        self.assertEqual(set(merged), (set(current) - removed) | restored)
                        self.assertEqual([ref for ref in merged if ref not in restored],
                                         [ref for ref in current if ref not in removed])
                        checked += 1
        self.assertGreater(checked, 50)

    def test_thousand_members_with_independent_append(self):
        before = [f'n{i}' for i in range(1000)]
        after = [ref for index, ref in enumerate(before) if index % 3 or index in (0, 999)]
        self.check(before, after, ['head', *after, 'tail'], ['head', *before, 'tail'])


if __name__ == '__main__':
    unittest.main()
