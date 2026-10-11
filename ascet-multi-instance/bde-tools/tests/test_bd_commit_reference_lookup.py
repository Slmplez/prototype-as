"""Small synthetic lookup controls; no ASCET connection or baseline rescan."""
from copy import deepcopy
import unittest

from bd_commit_reference_lookup import (FALSE_FIELDS, PROFILE, SOURCE, record_rows,
                                      validate, validate_requests)
from bd_commit_reference_write_set import check_inbound, plan
from bd_persistent_references import decode, delta
from test_bd_commit_reference_baseline import receipt


OWNER, OLD, NEW, UNRELATED = ([number] * 20 for number in (10, 20, 30, 40))


def scan_row(owner, attribute, entries, ordinal, count=5, tail=(97, 98, 99)):
    raw = [0] * 64
    raw[2:22] = owner
    name = list(attribute.encode('ascii'))
    raw[22:22 + len(name)] = name
    raw[56:60] = list((21 * len(entries)).to_bytes(4, 'little'))
    raw[60:64] = list(len(entries).to_bytes(4, 'little'))
    for key in entries:
        raw.extend([1] + key)
    raw.extend(tail)
    key = owner + name
    cursor = count + 3 * ordinal + 1
    return dict(allocated_length=len(raw), attribute=attribute, cursor_event_sequence=cursor,
        declared_blob_size=21 * len(entries), fixed_size=60, global_id=owner.copy(),
        length_event_sequence=cursor + 1, ordinal=ordinal, raw_bytes=raw,
        record_class='CTreeVariableAttributeRecord', reread_event_sequence=cursor + 2,
        semantic_key=key, state='record_captured', transform_event_sequence=4 * count + ordinal + 4,
        transformed_key=key + [0] * (53 - len(key)))


def fixture():
    prepared = receipt()
    records = [scan_row(OWNER, 'DBReferenceList', [OLD, OLD], 1),
               scan_row(OLD, 'DBReferencedByList', [UNRELATED, OWNER], 2),
               scan_row(NEW, 'DBReferencedByList', [UNRELATED], 3)]
    requests = [{key: deepcopy(record[key]) for key in ('global_id', 'attribute')} for record in records]
    value = dict(profile=PROFILE, native_token=prepared['native_token'],
        component_oid=prepared['component_oid'], generation=prepared['generation'],
        profile_index=prepared['reference_file_baseline']['profile_index'],
        reference_file_baseline=deepcopy(prepared['reference_file_baseline']),
        requests=deepcopy(requests), rows=[dict(**deepcopy(request), status='observed_record', record=record)
                                        for request, record in zip(requests, records)], source=SOURCE)
    value.update({key: False for key in FALSE_FIELDS})
    return prepared, requests, value


class ReferenceLookupTests(unittest.TestCase):
    def setUp(self):
        self.prepared, self.requests, self.value = fixture()

    def check(self, value=None):
        return validate(self.value if value is None else value,
                        prepared=self.prepared, requests=self.requests)

    def rows(self, value=None):
        return record_rows(self.value if value is None else value,
                           prepared=self.prepared, requests=self.requests)

    def test_complete_positive_reply_and_conversion_are_detached(self):
        original = deepcopy(self.value)
        self.assertEqual(self.check(), original)
        checked, rows = self.check(), self.rows()
        checked['rows'][0]['record']['raw_bytes'][0] = 99
        rows[0]['allocated_bytes'][0] = 88
        self.assertEqual(self.value, original)
        self.assertEqual(self.prepared, receipt())

    def test_ordered_duplicates_and_raw_tail_are_preserved_without_fake_ctree(self):
        rows = self.rows()
        parsed = decode(rows[0], OWNER)
        self.assertEqual(parsed['entries'], [dict(tag=1, global_id=OLD)] * 2)
        self.assertEqual(parsed['duplicates'], [dict(global_id=OLD, entry_indexes=[0, 1])])
        self.assertEqual(parsed['tail_bytes'], [97, 98, 99])
        self.assertEqual(parsed['legacy_omitted_byte_count'], 0)
        for row in rows:
            self.assertNotIn('ctree_before', row); self.assertNotIn('ctree_after', row)
            self.assertEqual(row['baseline_observation']['native_token'], self.prepared['native_token'])
            self.assertEqual(row['allocated_bytes'], self.value['rows'][rows.index(row)]['record']['raw_bytes'])

    def test_positive_new_target_before_feeds_finite_plan_without_authority(self):
        rows = self.rows()
        write_set = plan(OWNER, rows[0], [dict(tag=1, global_id=OLD), dict(tag=1, global_id=NEW)])
        patch = check_inbound(write_set, rows[1:])
        self.assertEqual(write_set['added_targets'], [NEW])
        self.assertEqual(patch['patches'][0]['target_key'], NEW)
        self.assertEqual(patch['patches'][0]['before_entries'], [dict(tag=1, global_id=UNRELATED)])
        self.assertEqual(patch['patches'][0]['after_entries'], [dict(tag=1, global_id=UNRELATED), dict(tag=1, global_id=OWNER)])
        for field in ('original_capture_provenance_verified', 'persistent_write_performed',
                      'write_authorized', 'inverse_authorized'):
            self.assertIs(patch[field], False)

    def test_not_observed_is_returned_but_never_converted_to_empty_before(self):
        self.value['rows'][2].update(status='not_observed', record=None)
        checked = self.check()
        self.assertIs(checked['absence_proven'], False)
        with self.assertRaisesRegex(ValueError, 'Not-observed'): self.rows()
        self.value['rows'][2]['record'] = {}
        with self.assertRaises(ValueError): self.check()

    def test_request_limits_order_duplicates_and_schema(self):
        for invalid in ([], [self.requests[0]] * 2, [self.requests[0]] * 17, tuple(self.requests),
                        [dict(self.requests[0], extra=0)], [{'global_id': OWNER, 'attribute': 'other'}]):
            with self.subTest(invalid=invalid), self.assertRaises(ValueError): validate_requests(invalid)
        maximum = [dict(global_id=[number] * 20, attribute='DBReferenceList') for number in range(16)]
        self.assertEqual(len(validate_requests(maximum)), 16)
        self.value['requests'].reverse()
        with self.assertRaises(ValueError): self.check()

    def test_request_oid_is_exact_twenty_bytes_and_rejects_bool(self):
        for bad in ([1] * 19, [1] * 21, [True] * 20, [256] * 20, [-1] * 20, bytes(20)):
            with self.subTest(bad=bad), self.assertRaises(ValueError):
                validate_requests([dict(global_id=bad, attribute='DBReferenceList')])

    def test_receipt_keys_and_source_are_exact(self):
        for field in self.value:
            changed = deepcopy(self.value); del changed[field]
            with self.subTest(missing=field), self.assertRaises(ValueError): self.check(changed)
        for changed in (dict(self.value, extra=False), dict(self.value, profile='native_reference_baseline_lookup_v2'),
                        dict(self.value, source='current_read')):
            with self.assertRaises(ValueError): self.check(changed)

    def test_reply_namespace_index_and_generation_cannot_rebind(self):
        for field, wrong in [('native_token', 'edit_' + '9' * 64), ('component_oid', 'other'),
                             ('generation', True), ('generation', 7.0), ('generation', 8),
                             ('profile_index', True), ('profile_index', 9.0), ('profile_index', 8)]:
            changed = deepcopy(self.value); changed[field] = wrong
            with self.subTest(field=field, wrong=wrong), self.assertRaises(ValueError): self.check(changed)

    def test_prepared_v5_cannot_downgrade_or_drop_inherited_scope(self):
        for profile in ('native_commit_prepare_v1', 'native_commit_prepare_v4'):
            self.prepared['profile'] = profile
            with self.assertRaises(ValueError): self.check()
        self.prepared = receipt(); del self.prepared['ctree_control']
        with self.assertRaises(ValueError): self.check()

    def test_baseline_full_summary_and_same_preparation_match_are_required(self):
        for field, wrong in [('generation', True), ('complete_before_authorized', True),
                             ('profile_index', 8), ('gv_image_count', 3)]:
            changed = deepcopy(self.value); changed['reference_file_baseline'][field] = wrong
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(changed)
        changed = deepcopy(self.value); del changed['reference_file_baseline']['same_native_dispatch']
        with self.assertRaises(ValueError): self.check(changed)

    def test_scan_read_absence_and_authority_flags_must_be_exact_false(self):
        for field in FALSE_FIELDS:
            for wrong in (True, 0, None):
                changed = deepcopy(self.value); changed[field] = wrong
                with self.subTest(field=field, wrong=wrong), self.assertRaises(ValueError): self.check(changed)

    def test_row_count_order_owner_attribute_status_and_keys_are_exact(self):
        changes = []
        missing = deepcopy(self.value); missing['rows'].pop(); changes.append(missing)
        extra = deepcopy(self.value); extra['rows'].append(extra['rows'][0]); changes.append(extra)
        reorder = deepcopy(self.value); reorder['rows'].reverse(); changes.append(reorder)
        for field, wrong in [('global_id', [True] * 20), ('attribute', 'DBReferencedByList'),
                             ('status', 'absent'), ('record', None), ('extra', False)]:
            changed = deepcopy(self.value); changed['rows'][0][field] = wrong; changes.append(changed)
        for changed in changes:
            with self.assertRaises(ValueError): self.check(changed)

    def test_complete_scan_row_keys_state_class_and_fixed_size(self):
        for field in self.value['rows'][0]['record']:
            changed = deepcopy(self.value); del changed['rows'][0]['record'][field]
            with self.subTest(missing=field), self.assertRaises(ValueError): self.check(changed)
        for field, wrong in [('state', 'allocated'), ('record_class', 'Other'), ('fixed_size', True),
                             ('fixed_size', 59), ('extra', 0)]:
            changed = deepcopy(self.value); changed['rows'][0]['record'][field] = wrong
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(changed)

    def test_owner_and_attribute_raw_headers_must_match_selected_request(self):
        for offset in (2, 21, 22, 30):
            changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): self.check(changed)
        changed = deepcopy(self.value); changed['rows'][0]['record']['global_id'][0] ^= 1
        with self.assertRaises(ValueError): self.check(changed)

    def test_raw_size_blob_count_and_complete_last_oid_are_validated(self):
        for field, wrong in [('allocated_length', True), ('allocated_length', 64),
                             ('allocated_length', 4194305), ('declared_blob_size', True),
                             ('declared_blob_size', 41)]:
            changed = deepcopy(self.value); changed['rows'][0]['record'][field] = wrong
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(changed)
        for offset in (56, 60):
            changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): self.check(changed)
        changed = deepcopy(self.value); record = changed['rows'][0]['record']
        record['raw_bytes'] = record['raw_bytes'][:102]; record['allocated_length'] = 102
        with self.assertRaisesRegex(ValueError, 'complete semantic'): self.check(changed)

    def test_record_and_transformed_byte_arrays_reject_bool(self):
        for field in ('raw_bytes', 'global_id', 'semantic_key', 'transformed_key'):
            changed = deepcopy(self.value); changed['rows'][0]['record'][field][0] = True
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(changed)

    def test_semantic_key_exact_and_transform_preserved_without_guessing(self):
        changed = deepcopy(self.value); changed['rows'][0]['record']['semantic_key'][0] ^= 1
        with self.assertRaises(ValueError): self.check(changed)
        changed = deepcopy(self.value); changed['rows'][0]['record']['transformed_key'].pop()
        with self.assertRaises(ValueError): self.check(changed)
        changed = deepcopy(self.value); changed['rows'][0]['record']['transformed_key'] = [77] * 53
        self.assertEqual(self.check(changed)['rows'][0]['record']['transformed_key'], [77] * 53)

    def test_complete_event_positions_are_bound_to_census_and_ordinal(self):
        for field in ('cursor_event_sequence', 'length_event_sequence', 'reread_event_sequence', 'transform_event_sequence'):
            for wrong in (True, 0, self.value['rows'][0]['record'][field] + 1):
                changed = deepcopy(self.value); changed['rows'][0]['record'][field] = wrong
                with self.subTest(field=field, wrong=wrong), self.assertRaises(ValueError): self.check(changed)
        for wrong in (True, 0, 6):
            changed = deepcopy(self.value); changed['rows'][0]['record']['ordinal'] = wrong
            with self.subTest(wrong=wrong), self.assertRaises(ValueError): self.check(changed)

    def test_distinct_results_cannot_reuse_record_ordinal_or_transformed_key(self):
        changed = deepcopy(self.value)
        for field in ('ordinal', 'cursor_event_sequence', 'length_event_sequence', 'reread_event_sequence', 'transform_event_sequence'):
            changed['rows'][1]['record'][field] = changed['rows'][0]['record'][field]
        with self.assertRaisesRegex(ValueError, 'share'): self.check(changed)
        changed = deepcopy(self.value)
        changed['rows'][1]['record']['transformed_key'] = changed['rows'][0]['record']['transformed_key'].copy()
        with self.assertRaisesRegex(ValueError, 'share'): self.check(changed)

    def test_unknown_payload_tag_and_excessive_count_fail_closed(self):
        changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][64] = 2
        with self.assertRaisesRegex(ValueError, 'Unsupported persistent reference tag'): self.check(changed)
        changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][60:64] = list((4097).to_bytes(4, 'little'))
        with self.assertRaises(ValueError): self.check(changed)

    def test_last_four_oid_bytes_are_semantic_and_tail_is_separately_retained(self):
        original = self.rows()[0]
        changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][102] ^= 1
        altered = self.rows(changed)[0]
        self.assertIsNotNone(delta(original, altered, OWNER))
        changed = deepcopy(self.value); changed['rows'][0]['record']['raw_bytes'][-1] ^= 1
        altered = self.rows(changed)[0]
        self.assertIsNone(delta(original, altered, OWNER))
        self.assertNotEqual(decode(original, OWNER)['tail_bytes'], decode(altered, OWNER)['tail_bytes'])

    def test_observed_empty_list_is_distinct_from_not_observed(self):
        self.value['rows'][2]['record'] = scan_row(NEW, 'DBReferencedByList', [], 3, tail=())
        parsed = decode(self.rows()[2], NEW)
        self.assertEqual(parsed['entries'], [])
        self.assertEqual(parsed['semantic_size'], 64)
        self.assertIs(self.check()['absence_proven'], False)

    def test_combined_raw_limit_is_exact_and_never_truncates(self):
        original_total = sum(row['record']['allocated_length'] for row in self.value['rows'])
        record = self.value['rows'][0]['record']
        record['raw_bytes'].extend([0] * (1048576 - original_total))
        record['allocated_length'] = len(record['raw_bytes'])
        self.assertEqual(sum(row['allocated_size'] for row in self.rows()), 1048576)
        record['raw_bytes'].append(0); record['allocated_length'] += 1
        with self.assertRaisesRegex(ValueError, 'one-MiB'): self.check()


if __name__ == '__main__':
    unittest.main()
