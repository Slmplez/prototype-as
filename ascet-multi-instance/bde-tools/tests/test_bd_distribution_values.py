import unittest
from bd_distribution_values import encode_distribution, decode_distribution, validate_shape
from bd_edit_journal import JournalError, clone
from bd_structural_tools import plan
from bd_structure_journal import postcondition, validate_creation


class DistributionValuesTests(unittest.TestCase):
    def test_strict_numeric_axes(self):
        for kind, values in [('cont', [-1.5, 0, 2.25]), ('sdisc', [-2, 0, 3]), ('udisc', [0, 2, 3])]:
            self.assertEqual(decode_distribution(encode_distribution(kind, values)), values)
        for kind, values in [('cont', [0, 0]), ('cont', [2, 1]), ('cont', [True]),
                             ('log', [False, True]), ('sdisc', [1.5]), ('udisc', [-1]),
                             ('cont', [float('nan')]), ('cont', [])]:
            with self.assertRaises(JournalError):
                encode_distribution(kind, values)

    def test_old_zero_default_is_allowed_only_as_expectation(self):
        validate_shape({'expect': {'values': [0, 0]}, 'values': [0, 2]})
        for op in [{'expect': {'values': [False]}, 'values': [0]},
                   {'expect': {'values': [0]}, 'values': [0, 0]},
                   {'expect': {'values': [0], 'size': 1}, 'values': [0]}]:
            with self.assertRaises(JournalError):
                validate_shape(op)

    def test_local_patch_retains_configuration_identity(self):
        row = {'kind': 'model', 'ref': 'm_abc', 'native_class': 'EtasAPIModelDistribution', 'model_type': 'cont',
               'default_value': {'status': 'read', 'configuration_oid': 'config', 'size': 4,
                                 'max_size': 4, 'declared_max_size': 4, 'values': [0, 0, 0, 0]}}
        record = {'structure': {'generation': 1, 'targets': [], 'entries': [row]}}
        op = {'op': 'set_distribution_values', 'target': 'Main/m_abc',
              'expect': {'values': [0, 0, 0, 0]}, 'values': [-1.25, 0, 2.5]}
        action, args, before = plan(record, op)
        self.assertEqual(args, [['m_abc'], 'm_abc', 'N-1.25,N0,N2.5'])
        after = clone(before)
        after['entries'][0]['default_value'].update(size=3, values=op['values'])
        request = {'operation': action, 'arguments': args}
        self.assertTrue(postcondition(request, before, after))
        after['entries'][0]['default_value']['configuration_oid'] = 'other'
        self.assertFalse(postcondition(request, before, after))
        for change in [{'values': [0, 0]}, {'values': [0, 1, 2, 3, 4]}, {'expect': {'values': [1, 2]}}]:
            with self.assertRaises(Exception):
                plan(record, {**op, **change})

    def test_creation_maximum_is_verified_as_a_dimension(self):
        args = validate_creation({'op': 'create_block', 'kind': 'distribution', 'name': 'Axis',
                                  'position': [200, 200], 'model_type': 'cont', 'max_size': 4})
        before = {'generation': 1, 'entries': []}
        after = {'generation': 1, 'entries': [
            {'ref': 'n1', 'kind': 'node', 'anchor': [200, 200], 'pins': ['p2'], 'model_ref': 'm_abc'},
            {'ref': 'p2', 'kind': 'pin'},
            {'ref': 'm_abc', 'kind': 'model', 'name': 'Axis', 'native_class': 'EtasAPIModelDistribution',
             'model_type': 'cont', 'default_value': {'status': 'read', 'declared_max_size': 4}},
        ]}
        request = {'operation': 'create_block', 'arguments': args}
        self.assertTrue(postcondition(request, before, after))
        after['entries'][2]['default_value']['declared_max_size'] = 5
        self.assertFalse(postcondition(request, before, after))


if __name__ == '__main__':
    unittest.main()
