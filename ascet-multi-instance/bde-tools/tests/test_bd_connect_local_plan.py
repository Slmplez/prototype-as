import unittest
from copy import deepcopy

from bd_connect_local_plan import inspect_source_projection


def evidence():
    def integer(n): return ['integer', 'SmallInteger', str(n)]
    def node(ref, name, fields, values):
        return dict(ref=ref, native_class=name, kind='fields', field_names=fields, value=values)
    root = node('s1', 'SGTopGraphicsBlockDB', ['literal', 'peer', 'edge'],
                [['ref', 's2'], ['ref', 's2'], integer(0)])
    literal = node('s2', 'SGLiteralGODB', ['identifier', 'value'], [integer(15), integer(3)])
    d = dict(profile='frozen_connect_source_projection_evidence_v1', component_oid='fixture',
             source_root='s1', complete=True, model_setters_called=0, store_called=False)
    d['original'] = [root, literal]
    d['applied'] = deepcopy(d['original']); d['applied'][0]['value'][2] = integer(1)
    d['current'] = deepcopy(d['applied']); d['current'][1]['value'][1] = integer(4)
    d['candidate'] = deepcopy(d['current']); d['candidate'][0]['value'][2] = integer(0)
    for logical, raw in [('applied', 'raw_applied'), ('current', 'raw_current'), ('candidate', 'raw_candidate')]:
        d[raw] = deepcopy(d[logical])
        wrapper = deepcopy(d[raw][1]); wrapper['ref'] = 's3'; d[raw].append(wrapper)
        if raw != 'raw_candidate':
            d[raw][0]['value'][:2] = [['ref', 's3'], ['ref', 's3']]
        else:
            # Normalization changes only logical rows; fresh detached wrapper is preserved.
            d[raw][-1] = deepcopy(d['raw_current'][-1])
    # Actual store replaced an unrelated literal source wrapper; its old retained
    # object does not change when B edits the newly active wrapper.
    d['raw_current'][1]['value'][1] = integer(3)
    d['raw_applied'][1]['value'][1] = integer(3)
    return d


class ConnectSourceProjectionTests(unittest.TestCase):
    def test_unrelated_regenerated_wrapper_change_is_preserved_with_full_evidence(self):
        d = evidence(); original = deepcopy(d)
        proof = inspect_source_projection(d, 'fixture')
        self.assertTrue(proof['complete_raw_candidate_verified'])
        self.assertFalse(proof['model_execution_authorized'])
        self.assertEqual(d, original)

    def test_actual_owned_reference_overlap_is_not_excused_by_equal_projection(self):
        d = evidence(); d['raw_current'][0]['value'][2][-1] = '2'
        with self.assertRaisesRegex(ValueError, 'projection|overlap'):
            inspect_source_projection(d, 'fixture')

    def test_shared_reference_split_is_rejected_even_when_leaf_values_equal(self):
        d = evidence(); other = deepcopy(d['raw_current'][-1]); other['ref'] = 's4'
        d['raw_current'].append(other); d['raw_current'][0]['value'][1] = ['ref', 's4']
        with self.assertRaisesRegex(ValueError, 'sharing'):
            inspect_source_projection(d, 'fixture')

    def test_unowned_detached_anchor_mutation_cannot_hide_outside_root(self):
        d = evidence(); d['raw_candidate'][-1]['value'][1][-1] = '99'
        with self.assertRaisesRegex(ValueError, 'unowned actual anchor'):
            inspect_source_projection(d, 'fixture')

    def test_candidate_cannot_omit_actual_detached_wrapper(self):
        d = evidence(); d['raw_candidate'].pop()
        with self.assertRaisesRegex(ValueError, 'omitted actual anchors'):
            inspect_source_projection(d, 'fixture')

    def test_native_class_swap_does_not_reuse_same_identity(self):
        d = evidence(); d['raw_candidate'][-1]['native_class'] = 'SGConnectionDB'
        with self.assertRaisesRegex(ValueError, 'class/kind/schema'):
            inspect_source_projection(d, 'fixture')

    def test_projection_cannot_change_owned_native_identifier(self):
        d = evidence(); d['current'][1]['value'][0][-1] = '16'
        d['candidate'][1]['value'][0][-1] = '16'
        with self.assertRaisesRegex(ValueError, 'projection'):
            inspect_source_projection(d, 'fixture')


if __name__ == '__main__':
    unittest.main()
