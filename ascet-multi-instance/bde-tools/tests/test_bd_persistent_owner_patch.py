"""Synthetic owner inverse/conflict controls, not live serialized BDE edit QA."""
from copy import deepcopy
import unittest

from bd_persistent_owner_patch import project, inverse_request
from test_bd_persistent_owner_records import fixture


def changed(image, index):
    value = deepcopy(image); row = value['owners'][index]
    row['stored_version'] += 1
    raw = row['allocated_bytes']; raw[108:112] = list(row['stored_version'].to_bytes(4, 'little'))
    row['bytes'] = raw[:row['logical_size']]
    return value


def request(original, index):
    candidate = changed(original, index); a = original['owners'][index]; b = candidate['owners'][index]
    return [dict(global_id=a['global_id'], role=a['role'], operation='write_existing_owner_record', current=a, candidate=b)]


class OwnerPatchTests(unittest.TestCase):
    def test_forward_exact_raw_and_original_inverse(self):
        before = fixture(); after = project(before, request(before, 1))
        self.assertEqual(after, changed(before, 1))
        inverse = inverse_request(before, after, after)
        self.assertEqual(inverse['candidate'], before)
        self.assertEqual(len(inverse['patches']), 1); self.assertFalse(inverse['production_inverse_authorized'])

    def test_unrelated_other_owner_preserved_without_before_substitution(self):
        before = fixture(); after = changed(before, 1); current = changed(after, 0)
        value = inverse_request(before, after, current)
        self.assertEqual(value['candidate'], changed(before, 0))
        self.assertEqual(value['expected'], current)

    def test_same_owner_overlap_refuses_entire_request(self):
        before = fixture(); after = changed(before, 1); current = changed(after, 1)
        with self.assertRaisesRegex(ValueError, 'Overlapping'): inverse_request(before, after, current)

    def test_already_restored_owner_does_not_write_again(self):
        before = fixture(); after = changed(before, 1)
        self.assertEqual(inverse_request(before, after, before)['patches'], [])

    def test_extra_duplicate_foreign_operation_and_partial_current_refused(self):
        for mutate in (lambda p: p[0].update(extra=True), lambda p: p.append(deepcopy(p[0])),
                lambda p: p[0].update(global_id=[99] * 20), lambda p: p[0].update(operation='delete'),
                lambda p: p[0]['current'].pop('allocated_bytes')):
            before = fixture(); patches = deepcopy(request(before, 1)); mutate(patches)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): project(before, patches)

    def test_immutable_header_and_query_route_refused(self):
        for offset in (0, 1, 20, 37, 120, 122, 125):
            before = fixture(); patches = deepcopy(request(before, 1)); row = patches[0]['candidate']
            row['allocated_bytes'][offset] ^= 1; row['bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): project(before, patches)

    def test_payload_tail_preserved_completely(self):
        before = fixture(); after = changed(before, 1); row = after['owners'][1]
        row['allocated_bytes'][-1] ^= 1
        result = inverse_request(before, after, after)
        self.assertEqual(result['candidate'], before)

    def test_changed_references_cannot_be_silently_restored_by_owner_patch(self):
        before = fixture(); after = changed(before, 1)
        after['references']['owners'][0]['records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): inverse_request(before, after, after)

    def test_input_mutation_isolated(self):
        before = fixture(); patches = request(before, 1); saved = deepcopy(before)
        value = project(before, patches); value['owners'][0].clear()
        self.assertEqual(before, saved)


if __name__ == '__main__': unittest.main()
