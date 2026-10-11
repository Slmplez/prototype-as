import unittest
from copy import deepcopy

from bd_frozen_source_inverse import inspect


def evidence():
    root = dict(ref='s1', native_class='SGTopGraphicsBlockDB', kind='fields',
                field_names=['left', 'right', 'own'], value=[['ref', 's2'], ['ref', 's3'], ['integer', 'SmallInteger', '10']])
    peer = lambda ref: dict(ref=ref, native_class='SGLogicBlockDB', kind='fields',
                           field_names=['color', 'literal'], value=[['ref', 's4'], ['integer', 'SmallInteger', '1']])
    color = dict(ref='s4', native_class='CgRGBColor', kind='fields',
                 field_names=['red', 'green', 'blue'], value=[['integer', 'SmallInteger', '0']] * 3)
    d = dict(profile='frozen_source_identity_evidence_v1', component_oid='fixture', source_root='s1',
             complete=True, model_setters_called=0, store_called=False)
    d['original'] = [root, peer('s2'), peer('s3'), color]
    d['applied'] = deepcopy(d['original']); d['applied'][0]['value'][2][-1] = '20'
    d['current'] = deepcopy(d['applied']); d['current'][1]['value'][1][-1] = '2'
    d['candidate'] = deepcopy(d['current']); d['candidate'][0]['value'][2][-1] = '10'
    return d


class FrozenSourceInverseTests(unittest.TestCase):
    def test_independent_change_keeps_actual_shared_identity(self):
        d = evidence(); before = deepcopy(d)
        proof = inspect(d, 'fixture')
        self.assertTrue(proof['exact_cross_phase_references_verified'])
        self.assertTrue(proof['bidirectional_sharing_verified'])
        self.assertEqual(d, before)
        self.assertEqual(len(proof['changed_cells']), 1)

    def test_equal_color_replacement_cannot_hide_sharing_split(self):
        d = evidence(); replacement = deepcopy(d['candidate'][3]); replacement['ref'] = 's5'
        d['candidate'].append(replacement); d['candidate'][2]['value'][0] = ['ref', 's5']
        with self.assertRaisesRegex(ValueError, 'references/sharing'):
            inspect(d, 'fixture')

    def test_equal_color_join_cannot_hide_original_distinct_references(self):
        d = evidence()
        for role in ('original', 'applied', 'current', 'candidate'):
            replacement = deepcopy(d[role][3]); replacement['ref'] = 's5'
            d[role].append(replacement); d[role][2]['value'][0] = ['ref', 's5']
        d['candidate'][2]['value'][0] = ['ref', 's4']
        with self.assertRaisesRegex(ValueError, 'references/sharing'):
            inspect(d, 'fixture')

    def test_owned_overlap_is_rejected_even_when_candidate_looks_original(self):
        d = evidence(); d['current'][0]['value'][2][-1] = '30'
        with self.assertRaisesRegex(ValueError, 'SOURCE_CELL_OVERLAP'):
            inspect(d, 'fixture')

    def test_detached_anchor_change_cannot_be_omitted(self):
        d = evidence()
        for role in ('original', 'applied', 'current', 'candidate'):
            d[role].append(dict(ref='s5', native_class='Point', kind='fields',
                                field_names=['x'], value=[['integer', 'SmallInteger', '3']]))
        d['candidate'][-1]['value'][0][-1] = '4'
        with self.assertRaisesRegex(ValueError, 'references/sharing'):
            inspect(d, 'fixture')

    def test_missing_phase_reference_cannot_borrow_another_phase_row(self):
        d = evidence(); d['original'].pop()
        with self.assertRaisesRegex(ValueError, 'unresolved'):
            inspect(d, 'fixture')

    def test_changed_class_cannot_reuse_a_native_reference(self):
        d = evidence(); d['candidate'][3]['native_class'] = 'Point'
        with self.assertRaisesRegex(ValueError, 'class/kind/schema'):
            inspect(d, 'fixture')


if __name__ == '__main__':
    unittest.main()
