"""Reject incomplete/foreign enum materials using a hashed live study fixture.

These are offline validation controls, not enum creation/history acceptance.
"""
import copy
import hashlib
import json
from pathlib import Path
import unittest

from bd_enum_declaration_before import validate
import bde_declaration_images as reader


FIXTURE = Path(__file__).resolve().parents[1] / (
    'analysis/bde-experiments/2026-10-06/bde-enum-before-images-01/enum-before-capture.json')
FIXTURE_SHA = 'fbef54c808bd792ef3e27d0b772bf6c8c42cc32fcaff10dddd925018203bcd56'


class EnumBeforeMaterialControls(unittest.TestCase):
    def setUp(self):
        raw = FIXTURE.read_bytes()
        self.assertEqual(hashlib.sha256(raw).hexdigest(), FIXTURE_SHA)
        self.value = json.loads(raw)['result']

    def check(self, value=None, **bindings):
        expected = dict(oid=self.value['component_oid'], definition_oid=self.value['definition_oid'],
                        token=self.value['study_token'])
        return validate(value or self.value, **{**expected, **bindings})

    def change_role(self, ref, change):
        for image, schema in [('before', 'before_schema'), ('current', 'current_schema')]:
            row = next(row for row in self.value[image]['objects'] if row['ref'] == ref)
            description = next(row for row in self.value[schema]['objects'] if row['ref'] == ref)
            change(row, description)

    def enum_map(self):
        ref = self.value['enumeration_ref']
        row = next(row for row in self.value['before']['objects'] if row['ref'] == ref)
        fields = next(row for row in self.value['before_schema']['objects'] if row['ref'] == ref)['field_names']
        return row['value'][fields.index('enumerationMap')]['ref']

    def test_live_bounded_fixture_and_no_authorization(self):
        summary = self.check()
        self.assertEqual(summary['native_objects'], 126)
        self.assertEqual(summary['lookup_tables'], 13)
        self.assertFalse(summary['body_before_bound_to_creation'])
        self.assertFalse(summary['inverse_authorized'])

    def test_enum_body_cannot_be_opaque(self):
        self.change_role(self.value['enumeration_ref'], lambda row, schema: (
            row.update(kind='boundary', value=None), schema.update(kind='boundary', field_names=[])))
        with self.assertRaises(ValueError): self.check()

    def test_sorted_map_cannot_be_opaque(self):
        self.change_role(self.enum_map(), lambda row, schema: (
            row.update(kind='boundary', value=None), schema.update(kind='boundary', field_names=[])))
        with self.assertRaisesRegex(ValueError, 'child storage'): self.check()

    def test_sorted_map_slots_cannot_swap(self):
        self.change_role(self.enum_map(), lambda row, schema: schema['field_names'].__setitem__(
            slice(0, 2), list(reversed(schema['field_names'][:2]))))
        with self.assertRaisesRegex(ValueError, 'SortedCollection'): self.check()

    def test_sorted_storage_cannot_be_opaque(self):
        ref = self.enum_map()
        row = next(row for row in self.value['before']['objects'] if row['ref'] == ref)
        storage_ref = row['value'][2]['ref']
        self.change_role(storage_ref, lambda row, schema: (
            row.update(kind='boundary', value=None), schema.update(kind='boundary', field_names=[])))
        with self.assertRaisesRegex(ValueError, 'child storage'): self.check()

    def test_sorted_size_cannot_exceed_storage(self):
        def excessive(row, schema):
            row['value'][1] = {'class': 'SmallInteger', 'value': '9999999'}
        self.change_role(self.enum_map(), excessive)
        with self.assertRaisesRegex(ValueError, 'size/storage'): self.check()

    def test_unknown_sort_block_cannot_be_accepted(self):
        def unknown(row, schema): row['value'][0] = {'class': 'SmallInteger', 'value': '1'}
        self.change_role(self.enum_map(), unknown)
        with self.assertRaisesRegex(ValueError, 'sort block'): self.check()

    def test_owner_and_definition_binding_must_be_exact(self):
        for key in ('oid', 'definition_oid', 'token'):
            with self.subTest(key=key), self.assertRaises(ValueError): self.check(**{key: 'foreign'})

    def test_current_external_reference_change_refuses(self):
        self.value['definition_references_current'].append(['new', 'SGClass'])
        with self.assertRaisesRegex(ValueError, 'reference set'): self.check()

    def test_each_configuration_requires_its_database_link(self):
        self.value['configuration_links'].pop()
        with self.assertRaisesRegex(ValueError, 'Every enum configuration'): self.check()

    def test_cannot_promote_study_to_creation_or_inverse(self):
        for field in ('creation_before_bound', 'full_body_capture', 'inverse_authorized'):
            value = copy.deepcopy(self.value); value[field] = True
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)

    def test_enum_reader_policy_is_separate_and_algorithm_unchanged(self):
        ordinary = reader.build(); enum = reader.build_enum()
        marker = ' capture := [:anchors :images :bindings |'
        self.assertEqual(ordinary.split(marker, 1)[1], enum.split(marker, 1)[1])
        self.assertNotIn("'SGCodeArchive' 'SGEnumeration'", ordinary)
        self.assertIn("'SGCodeArchive' 'SGEnumeration'", enum)


if __name__ == '__main__':
    unittest.main()
