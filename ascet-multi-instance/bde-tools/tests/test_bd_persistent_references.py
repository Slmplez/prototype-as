"""Synthetic semantic-boundary controls; not online persistent edit acceptance."""
from copy import deepcopy
import unittest

from bd_persistent_references import decode, delta


OWNER = list(range(20))
ATTRIBUTES = {'owner_references': 'DBReferenceList', 'owner_referenced_by': 'DBReferencedByList'}


def fixture(role='owner_references', keys=None, tail=None):
    keys = [[41] * 20] if keys is None else keys
    tail = [81, 82, 83, 84, 85] if tail is None else tail
    attribute = ATTRIBUTES[role]
    allocated = [0] * 60 + list(len(keys).to_bytes(4, 'little'))
    for key in keys:
        allocated += [1] + key
    allocated += tail
    declared_size = 60 + len(keys) * 21
    return dict(role=role, attribute=attribute, record_attribute=attribute,
                record_class='CTreeVariableAttributeRecord', record_class_requested='CTreeVariableAttributeRecord',
                read_status='record', fixed_size=60, blob_size=len(keys) * 21,
                logical_size=declared_size, allocated_size=len(allocated), global_id=OWNER.copy(),
                query_key=OWNER + list(attribute.encode('ascii')),
                actual_file_key=OWNER + list(attribute.encode('ascii')),
                bytes=allocated[:declared_size], allocated_bytes=allocated)


def payload_v2(row):
    result = deepcopy(row)
    result.update(length_profile='reference_payload_v2', declared_size=row['logical_size'],
                  logical_size=row['logical_size'] + 4)
    result['bytes'] = result['allocated_bytes'][:result['logical_size']]
    return result


class PersistentReferenceTests(unittest.TestCase):
    def test_both_roles_include_count_and_complete_last_key(self):
        for role in ATTRIBUTES:
            with self.subTest(role=role):
                row = fixture(role, keys=[list(range(20)), [71] * 20])
                result = decode(row, OWNER)
                self.assertEqual((result['declared_size'], result['semantic_size'], result['allocated_size']),
                                 (102, 106, 111))
                self.assertEqual(result['entry_count'], 2)
                self.assertEqual(result['legacy_omitted_byte_count'], 4)
                self.assertEqual(result['entries'], [{'tag': 1, 'global_id': list(range(20))},
                                                      {'tag': 1, 'global_id': [71] * 20}])
                self.assertEqual(result['tail_bytes'], [81, 82, 83, 84, 85])
                self.assertEqual(result['semantic_bytes'], row['allocated_bytes'][:106])

    def test_legacy_omitted_final_four_bytes_are_real_reference_changes(self):
        before = fixture(tail=[])
        after = deepcopy(before)
        # The old bytes/logical_size observation is identical for this change.
        after['allocated_bytes'][81:85] = [90, 91, 92, 93]
        self.assertEqual(before['bytes'], after['bytes'])
        result = delta(before, after, OWNER)
        self.assertIsNotNone(result)
        self.assertEqual(result['before_entries'][0]['global_id'][-4:], [41] * 4)
        self.assertEqual(result['after_entries'][0]['global_id'][-4:], [90, 91, 92, 93])
        self.assertEqual(result['after'][-4:], [90, 91, 92, 93])

    def test_unparsed_record_tail_changes_remain_separate_from_parsed_semantics(self):
        before = fixture()
        after = deepcopy(before)
        after['allocated_bytes'][-5:] = [200, 201, 202, 203, 204, 205, 206]
        after['allocated_size'] = len(after['allocated_bytes'])
        self.assertNotEqual(decode(before, OWNER)['tail_bytes'], decode(after, OWNER)['tail_bytes'])
        self.assertNotEqual(before['allocated_bytes'], after['allocated_bytes'])
        self.assertIsNone(delta(before, after, OWNER))

    def test_zero_references_still_require_the_four_byte_count(self):
        row = fixture(keys=[], tail=[])
        result = decode(row, bytes(OWNER))
        self.assertEqual((result['declared_size'], result['semantic_size']), (60, 64))
        self.assertEqual(result['entries'], [])
        self.assertEqual(result['duplicates'], [])
        row['allocated_bytes'].pop()
        row['allocated_size'] -= 1
        with self.assertRaisesRegex(ValueError, 'four-byte count'):
            decode(row, OWNER)

    def test_unknown_tag_is_refused_without_skip_or_guess(self):
        for tag in (0, 2, 255):
            row = fixture(keys=[[31] * 20, [32] * 20])
            row['allocated_bytes'][85] = tag
            row['bytes'] = row['allocated_bytes'][:row['logical_size']]
            with self.subTest(tag=tag), self.assertRaisesRegex(ValueError, 'Unsupported persistent reference tag'):
                decode(row, OWNER)

    def test_duplicate_oids_preserve_all_entries_and_original_positions(self):
        row = fixture(keys=[[3] * 20, [4] * 20, [3] * 20, [4] * 20, [3] * 20])
        result = decode(row, OWNER)
        self.assertEqual(result['entry_count'], 5)
        self.assertEqual([entry['global_id'][0] for entry in result['entries']], [3, 4, 3, 4, 3])
        self.assertEqual(result['duplicates'], [{'global_id': [3] * 20, 'entry_indexes': [0, 2, 4]},
                                                {'global_id': [4] * 20, 'entry_indexes': [1, 3]}])

    def test_missing_final_semantic_bytes_refused_despite_complete_legacy_prefix(self):
        row = fixture(tail=[])
        row['allocated_bytes'] = row['allocated_bytes'][:row['logical_size']]
        row['allocated_size'] = len(row['allocated_bytes'])
        self.assertEqual(row['bytes'], row['allocated_bytes'])
        with self.assertRaisesRegex(ValueError, 'semantic extent'):
            decode(row, OWNER)

    def test_legacy_prefix_and_original_record_read_lengths_must_be_exact(self):
        for edit in (lambda r: r['bytes'].pop(), lambda r: r['allocated_bytes'].pop(),
                     lambda r: r['bytes'].__setitem__(0, 99),
                     lambda r: r.update(logical_size=r['logical_size'] + 1),
                     lambda r: r.update(allocated_size=r['allocated_size'] + 1)):
            row = fixture()
            edit(row)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                decode(row, OWNER)

    def test_count_is_little_endian_and_strictly_bounded(self):
        keys = [[index % 256] * 20 for index in range(256)]
        row = fixture(keys=keys, tail=[])
        self.assertEqual(row['allocated_bytes'][60:64], [0, 1, 0, 0])
        self.assertEqual(decode(row, OWNER)['entry_count'], 256)
        for count in (4097, 2 ** 32 - 1):
            invalid = fixture()
            invalid['allocated_bytes'][60:64] = list(count.to_bytes(4, 'little'))
            invalid['bytes'] = invalid['allocated_bytes'][:invalid['logical_size']]
            with self.subTest(count=count), self.assertRaisesRegex(ValueError, 'count exceeds'):
                decode(invalid, OWNER)

    def test_declared_blob_must_match_count_times_audited_entry_width(self):
        row = fixture()
        row['allocated_bytes'][60:64] = [2, 0, 0, 0]
        row['bytes'] = row['allocated_bytes'][:row['logical_size']]
        with self.assertRaisesRegex(ValueError, 'blob length'):
            decode(row, OWNER)

    def test_wrong_owner_attribute_and_read_identity_are_refused(self):
        for field, replacement in [('role', 'owner'), ('attribute', 'DBReferencedByList'),
                ('record_attribute', 'DBReferencedByList'), ('record_class', 'CTreeSearchObjectRecord'),
                ('record_class_requested', 'OtherRecord'), ('read_status', 'absent'),
                ('global_id', [0] * 20), ('query_key', OWNER), ('actual_file_key', OWNER),
                ('fixed_size', 59), ('logical_size', True), ('blob_size', -1)]:
            row = fixture()
            row[field] = replacement
            with self.subTest(field=field), self.assertRaises(ValueError):
                decode(row, OWNER)
        with self.assertRaises(ValueError):
            delta(fixture(), fixture('owner_referenced_by'), OWNER)

    def test_byte_shape_and_owner_length_are_strict(self):
        for owner in (OWNER[:-1], OWNER + [0], [True] * 20, 'not a byte key'):
            with self.subTest(owner=owner), self.assertRaises(ValueError):
                decode(fixture(), owner)
        for field in ('bytes', 'allocated_bytes', 'global_id', 'query_key', 'actual_file_key'):
            for replacement in (True, -1, 256, 1.0):
                row = fixture()
                row[field][0] = replacement
                with self.subTest(field=field, value=replacement), self.assertRaises(ValueError):
                    decode(row, OWNER)

    def test_decode_and_delta_results_do_not_mutate_retained_inputs(self):
        before = fixture()
        after = fixture(keys=[[42] * 20])
        original = deepcopy((before, after, OWNER))
        decoded = decode(before, bytearray(OWNER))
        decoded['entries'][0]['global_id'][0] = 0
        decoded['semantic_bytes'][0] = 255
        decoded['owner_key'][0] = 255
        decoded['tail_bytes'].clear()
        changes = delta(before, after, OWNER)
        changes['before'].clear()
        changes['after_entries'].clear()
        self.assertEqual((before, after, OWNER), original)

    def test_legacy_and_v2_decode_the_same_complete_reference_semantics(self):
        for role in ATTRIBUTES:
            with self.subTest(role=role):
                old = fixture(role)
                current = payload_v2(old)
                legacy, updated = decode(old, OWNER), decode(current, OWNER)
                self.assertEqual((legacy['legacy_omitted_byte_count'], updated['legacy_omitted_byte_count']), (4, 0))
                self.assertEqual(legacy['semantic_bytes'], updated['semantic_bytes'])
                self.assertEqual(legacy['declared_size'], updated['declared_size'])
                self.assertEqual(legacy['entries'], updated['entries'])
                self.assertEqual(legacy['tail_bytes'], updated['tail_bytes'])
                self.assertIsNone(delta(old, current, OWNER))
                self.assertIsNone(delta(current, old, OWNER))

    def test_mixed_legacy_v2_delta_still_detects_the_former_final_four_byte_blind_spot(self):
        before = fixture()
        after = payload_v2(before)
        after['allocated_bytes'][81:85] = [91, 92, 93, 94]
        after['bytes'] = after['allocated_bytes'][:after['logical_size']]
        result = delta(before, after, OWNER)
        self.assertEqual(result['before_entries'][0]['global_id'][-4:], [41] * 4)
        self.assertEqual(result['after_entries'][0]['global_id'][-4:], [91, 92, 93, 94])
        self.assertEqual(delta(after, before, OWNER)['before_entries'], result['after_entries'])

    def test_v2_requires_exact_declared_size_and_full_semantic_prefix(self):
        for edit in (lambda r: r.pop('declared_size'),
                     lambda r: r.update(declared_size=True),
                     lambda r: r.update(declared_size=r['logical_size']),
                     lambda r: r.update(logical_size=r['declared_size'], bytes=r['bytes'][:-4]),
                     lambda r: r.update(logical_size=r['logical_size'] + 1,
                                        bytes=r['allocated_bytes'][:r['logical_size'] + 1]),
                     lambda r: r['bytes'].__setitem__(-1, 99)):
            row = payload_v2(fixture())
            edit(row)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                decode(row, OWNER)

    def test_unknown_or_removed_length_profile_cannot_reinterpret_v2_bytes(self):
        for profile in (None, '', 'reference_payload_v1', 'reference_payload_v3', True):
            row = payload_v2(fixture())
            row['length_profile'] = profile
            with self.subTest(profile=profile), self.assertRaisesRegex(ValueError, 'Unknown'):
                decode(row, OWNER)
        row = payload_v2(fixture())
        row.pop('length_profile')
        with self.assertRaisesRegex(ValueError, 'legacy'):
            decode(row, OWNER)

    def test_v2_zero_count_and_unparsed_tail_are_not_conflated(self):
        before = payload_v2(fixture(keys=[], tail=[1, 2, 3]))
        result = decode(before, OWNER)
        self.assertEqual((result['declared_size'], result['semantic_size'], result['legacy_omitted_byte_count']),
                         (60, 64, 0))
        after = deepcopy(before)
        after['allocated_bytes'][-1] = 4
        self.assertEqual(decode(after, OWNER)['tail_bytes'], [1, 2, 4])
        self.assertIsNone(delta(before, after, OWNER))


if __name__ == '__main__':
    unittest.main()
