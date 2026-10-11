"""Synthetic complete search-record controls; no native persistence acceptance."""
from copy import deepcopy
import unittest

from bd_persistent_owner_records import search_global_id, validate
from test_bd_module_persistent_references import OID, snapshot


def fixture():
    references = snapshot(); owners = []
    for owner, model in zip(references['owners'], ('SGModule', 'SGTopGraphicsBlockDB')):
        key = owner['key']; raw = [0] * 142
        raw[2:20] = key[:18]; raw[123:125] = key[18:]
        # Distinct first-version bytes expose the old contiguous-key mistake.
        raw[20:38] = [79] * 18
        raw[108:112] = list((17).to_bytes(4, 'little'))
        raw[112:116] = list((18).to_bytes(4, 'little'))
        raw[116:120] = list((19).to_bytes(4, 'little'))
        raw[126:130] = list((7).to_bytes(4, 'little'))
        raw[130:] = list(range(12))
        owners.append(dict(role=owner['role'], model_class=model, oid=owner['oid'],
            global_id=key.copy(), query_key=key.copy(), actual_file_key=key.copy(),
            record_class_requested='CTreeSearchObjectRecord', record_class='CTreeSearchObjectRecord',
            read_status='record', leaf_class='CTreeLocalSearchInterface', file_class='CTSpaceCheckingIFil',
            fixed_size=130, blob_size=7, logical_size=137, allocated_size=142,
            bytes=raw[:137], allocated_bytes=raw, stored_class=model, stored_name='Trial',
            stored_version=17, stored_object_state=18, stored_reference_state=19))
    return dict(profile='isolated_persistent_owner_records_v1', component_oid=OID, owners=owners,
        references=references, complete=True, model_setters_called=0, store_called=False,
        commit_called=False, full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False)


class OwnerRecordTests(unittest.TestCase):
    def test_split_key_and_full_allocated_tail_preserved(self):
        value = fixture(); self.assertEqual(validate(value, component_oid=OID), value)
        self.assertNotEqual(value['owners'][0]['allocated_bytes'][2:22], value['owners'][0]['global_id'])
        self.assertEqual(search_global_id(value['owners'][0]['allocated_bytes']), value['owners'][0]['global_id'])

    def test_nonzero_transaction_exact_position(self):
        raw = list(range(130))
        self.assertEqual(search_global_id(raw), list(range(2, 20)) + [123, 124])

    def test_each_key_region_tamper_rejected(self):
        for offset in (2, 9, 10, 19, 123, 124):
            value = fixture(); row = value['owners'][0]
            row['allocated_bytes'][offset] ^= 1; row['bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_wrong_route_owner_source_class_and_duplicate_owner_refused(self):
        for field, bad in (('actual_file_key', [99] * 20), ('oid', 'foreign'), ('model_class', 'SGClass'),
                ('record_class', 'CTreeReferenceRecord'), ('leaf_class', 'foreign'), ('file_class', 'foreign')):
            value = fixture(); value['owners'][0][field] = bad
            with self.subTest(field=field), self.assertRaises(ValueError): validate(value, component_oid=OID)
        value = fixture(); value['owners'][1] = deepcopy(value['owners'][0])
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_raw_state_size_and_prefix_are_independent(self):
        for offset in (108, 112, 116, 126):
            value = fixture(); row = value['owners'][0]
            row['allocated_bytes'][offset] ^= 1; row['bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): validate(value, component_oid=OID)
        value = fixture(); value['owners'][0]['bytes'][-1] ^= 1
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_truncation_boolean_extents_and_octets_refused(self):
        for mutate in (lambda r: r['allocated_bytes'].pop(), lambda r: r['bytes'].pop(),
                lambda r: r.update(allocated_size=True), lambda r: r.update(blob_size=7.0),
                lambda r: r['allocated_bytes'].__setitem__(-1, True), lambda r: r.update(stored_version=True)):
            value = fixture(); mutate(value['owners'][0])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_capture_does_not_grant_writer_or_closure(self):
        for field in ('write_authorized', 'inverse_authorized', 'store_called', 'commit_called', 'full_commit_resource_closure'):
            value = fixture(); value[field] = True
            with self.subTest(field=field), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_references_must_be_complete(self):
        value = fixture(); value['references']['complete'] = False
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_returned_data_detached(self):
        value = fixture(); saved = deepcopy(value); result = validate(value, component_oid=OID)
        result['owners'][0]['allocated_bytes'].clear(); result['references'].clear()
        self.assertEqual(value, saved)


if __name__ == '__main__': unittest.main()
