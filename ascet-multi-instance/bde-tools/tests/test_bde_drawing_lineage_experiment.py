"""Reject unsafe lineage evidence; no native acceptance is implied."""
from copy import deepcopy
import unittest

from bde_drawing_lineage_experiment import validate_probe


TOKEN = 'edit_' + '1' * 64


def fixture():
    physical = [
        {'ref': 'e1', 'class': 'SGConnectionWrapperGO', 'raw_ref': 'v3', 'basic_raw_ref': 'v4', 'drawing_order': 1},
        {'ref': 'e2', 'class': 'SGConnectionWrapperGO', 'raw_ref': 'v5', 'basic_raw_ref': 'v6', 'drawing_order': 2},
    ]
    retained = {'ref': 'n15', 'class': 'SGLiteralGO', 'raw_ref': 'v7', 'basic_raw_ref': 'v7', 'drawing_order': 1}
    raw = [
        {'ref': 'v1', 'class': 'SGBlockDiagram', 'kind': 'fields', 'value': [{'class': 'Array', 'ref': 'v2'}]},
        {'ref': 'v2', 'class': 'Array', 'kind': 'collection', 'value': [
            {'class': row['class'], 'ref': row['raw_ref']} for row in physical]},
        {'ref': 'v3', 'class': 'SGConnectionWrapperGO', 'kind': 'fields', 'value': [{'class': 'SGConnectionGO', 'ref': 'v4'}]},
        {'ref': 'v5', 'class': 'SGConnectionWrapperGO', 'kind': 'fields', 'value': [{'class': 'SGConnectionGO', 'ref': 'v6'}]},
    ]
    for ref, cls, order in (('v4', 'SGConnectionGO', 1), ('v6', 'SGConnectionGO', 2), ('v7', 'SGLiteralGO', 1)):
        raw.append({'ref': ref, 'class': cls, 'kind': 'fields', 'value': [{'class': 'SmallInteger', 'value': str(order)}]})
    probe = {'profile': 'native_drawing_lineage_probe_v2', 'complete': True,
             'native_token': TOKEN, 'component_oid': 'fixture', 'diagram': 'Main',
             'source_record_unchanged': True, 'identity_registry_unchanged': True,
             'model_setters_called': 0, 'store_called': False, 'physical': physical,
             'drawing': deepcopy(physical), 'retained': retained, 'parent_raw_ref': 'v1', 'children_raw_ref': 'v2',
             'schemas': {'SGBlockDiagram': ['children'], 'SGConnectionWrapperGO': ['graphObject'],
                         'SGConnectionGO': ['drawingOrder'], 'SGLiteralGO': ['drawingOrder']},
             'raw_current': {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': raw}}
    observation = {'diagram': 'Main', 'entries': [
        {'kind': 'edge', 'ref': row['ref'], 'native_class': row['class']} for row in physical]}
    return probe, observation


class LineageValidationTests(unittest.TestCase):
    def validate(self, probe, observation):
        return validate_probe(probe, domain={'oid': 'fixture'}, token=TOKEN, observation=observation)

    def test_distinct_wrappers_bind_complete_actual_images(self):
        probe, observation = fixture()
        self.assertEqual(self.validate(probe, observation)['attached_objects'], 2)

    def test_negative_or_duplicate_aliases_refuse(self):
        for ref in ('e-1', 'e1'):
            probe, observation = fixture()
            probe['physical'][1]['ref'] = ref
            probe['drawing'][1]['ref'] = ref
            with self.subTest(ref=ref), self.assertRaises(ValueError):
                self.validate(probe, observation)

    def test_missing_drawing_member_or_native_member_refuses(self):
        for target in ('drawing', 'observation'):
            probe, observation = fixture()
            (probe['drawing'] if target == 'drawing' else observation['entries']).pop()
            with self.subTest(target=target), self.assertRaises(ValueError):
                self.validate(probe, observation)

    def test_scope_registry_and_setter_evidence_refuse(self):
        for key, value in (('component_oid', 'other'), ('diagram', 'Other'), ('native_token', 'other'),
                           ('identity_registry_unchanged', False), ('complete', 1),
                           ('model_setters_called', False), ('store_called', True)):
            probe, observation = fixture()
            probe[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.validate(probe, observation)

    def test_raw_order_parent_schema_or_identity_tamper_refuses(self):
        for target in ('number', 'parent', 'schema', 'raw_ref', 'basic_ref', 'retained'):
            probe, observation = fixture()
            if target == 'number':
                probe['raw_current']['objects'][4]['value'][0]['value'] = '8'
            elif target == 'parent':
                probe['raw_current']['objects'][1]['value'].reverse()
            elif target == 'schema':
                probe['schemas']['SGConnectionGO'] = ['other']
            elif target == 'raw_ref':
                probe['physical'][1]['raw_ref'] = 'v3'
                probe['drawing'][1]['raw_ref'] = 'v3'
            elif target == 'basic_ref':
                probe['physical'][1]['basic_raw_ref'] = 'v4'
                probe['drawing'][1]['basic_raw_ref'] = 'v4'
            else:
                probe['retained'] = deepcopy(probe['physical'][0])
            with self.subTest(target=target), self.assertRaises(ValueError):
                self.validate(probe, observation)


if __name__ == '__main__':
    unittest.main()
