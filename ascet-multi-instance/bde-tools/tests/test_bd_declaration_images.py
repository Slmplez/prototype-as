"""Fail-closed controls for declaration ownership, storage and native receipts."""
import copy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bde_declaration_images as reader
from bde_create_declaration_images_experiment import validate_images


def receipt():
    classes = ['SGClass', 'SGVariable', 'SGReal', 'SGClassImplConfig', 'SGClassValueConfig',
               'SGImplConfiguration', 'SGValueConfiguration']
    rows = [dict(ref='v' + str(i), **{'class': cls}, kind='fields', value=[])
            for i, cls in enumerate(classes, 1)]
    schema = [dict(ref=row['ref'], **{'class': row['class']}, kind='fields', field_names=[]) for row in rows]
    for table_id, array_id in [(8, 9), (11, 12)]:
        rows.append(dict(ref='v' + str(table_id), **{'class': 'LookupTable'}, kind='fields', value=[
            {'class': 'SmallInteger', 'value': '0'}, {'class': 'Array', 'ref': 'v' + str(array_id)},
            {'class': 'Array', 'ref': 'v' + str(array_id + 1)}]))
        schema.append(dict(ref='v' + str(table_id), **{'class': 'LookupTable'}, kind='fields',
                           field_names=['elementCount', 'keys', 'values']))
        for n in [array_id, array_id + 1]:
            rows.append(dict(ref='v' + str(n), **{'class': 'Array'}, kind='collection', value=[]))
            schema.append(dict(ref='v' + str(n), **{'class': 'Array'}, kind='collection', field_names=[]))
    image = dict(profile='native_graphical_current_v1', complete=True, objects=rows)
    diagnostics = dict(profile='native_graphical_fields_v1', complete=True, objects=schema)
    return dict(profile='retained_declaration_images_study_v1', component_oid='component', native_token='token',
        study_token='study', unchanged=True, complete_body_capture=False, inverse_authorized=False,
        retained_after_state_only=True, definition_body_captured=True, model_setters_called=0, store_called=False,
        current_image=image, current_schema=diagnostics, after_image=copy.deepcopy(image), after_schema=copy.deepcopy(diagnostics),
        actual_diff=dict(profile='native_graphical_diff_v1', complete=True, changes=[], new_objects=[], after_object_count=len(rows)),
        linked_configurations=[['config' + str(i), cls, 'v' + str(i)] for i, cls in enumerate(classes, 1) if i >= 4])


class DeclarationImageControls(unittest.TestCase):
    def validate(self, value):
        return validate_images(value, {'oid': 'component'}, 'token', 'study')

    def test_full_receipt(self):
        self.assertEqual(self.validate(receipt())['lookup_tables'], 2)

    def test_logical_lookup_is_not_storage(self):
        value = receipt(); row = next(r for r in value['current_image']['objects'] if r['class'] == 'LookupTable')
        row['kind'] = 'collection'; row['value'] = []
        with self.assertRaises(ValueError): self.validate(value)

    def test_lookup_slots_cannot_swap(self):
        value = receipt()
        for schema in ['current_schema', 'after_schema']:
            next(r for r in value[schema]['objects'] if r['class'] == 'LookupTable')['field_names'] = ['elementCount', 'values', 'keys']
        with self.assertRaises(ValueError): self.validate(value)

    def test_owner_cannot_be_boundary(self):
        value = receipt()
        for image, schema in [('current_image', 'current_schema'), ('after_image', 'after_schema')]:
            value[image]['objects'][0].update(kind='boundary', value=None)
            value[schema]['objects'][0]['kind'] = 'boundary'
        with self.assertRaisesRegex(ValueError, 'owned role'): self.validate(value)

    def test_changed_original_array(self):
        value = receipt()
        next(r for r in value['after_image']['objects'] if r['class'] == 'Array')['value'] = [{'class': 'SmallInteger', 'value': '1'}]
        with self.assertRaisesRegex(ValueError, 'image changed'): self.validate(value)

    def test_config_link_cannot_target_another_class(self):
        value = receipt(); value['linked_configurations'][0][2] = 'v1'
        with self.assertRaisesRegex(ValueError, 'identity link'): self.validate(value)

    def test_after_study_never_authorizes_inverse(self):
        value = receipt(); value['inverse_authorized'] = True
        with self.assertRaises(ValueError): self.validate(value)

    def test_foreign_component_refused(self):
        value = receipt(); value['component_oid'] = 'other'
        with self.assertRaises(ValueError): self.validate(value)

    def test_algorithm_stays_identical_after_policy(self):
        original = (reader.ROOT / 'bde_native_graph_current.st').read_text(encoding='utf-8-sig')
        marker = ' capture := [:anchors :images :bindings |'
        self.assertEqual(reader.build().split(marker, 1)[1], original.split(marker, 1)[1])

    def test_unknown_template_refused(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); (root / 'bde_native_graph_current.st').write_text('[:component :roots |]', encoding='utf-8')
            with patch.object(reader, 'ROOT', root), self.assertRaises(ValueError): reader.build()


if __name__ == '__main__': unittest.main()
