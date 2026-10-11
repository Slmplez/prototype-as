import copy
import unittest
from bd_class_configuration import validate_graph


def fixture():
    return {'format': 'bde_configuration_graph_v1', 'oid': 'owner', 'component': 'test',
        'roots': [['config', 'SGValueConfiguration', 'Data', ['ref', 1]]],
        'linked_configurations': [['config', 'SGValueConfiguration']], 'coverage': 'storage',
        'nodes': [{'id': 1, 'class': 'SGValueConfiguration', 'fields': [
            ['shared_a', ['ref', 2]], ['shared_b', ['ref', 2]], ['self', ['ref', 1]]]},
            {'id': 2, 'class': 'Array', 'items': [['float64le', '0000000000000080'],
                ['float64le', '0000000000000000'], ['float64le', '010000000000f03f']]}]}


class ConfigurationGraphTests(unittest.TestCase):
    def test_cycles_and_shared_nodes_are_explicit(self):
        result = validate_graph(fixture(), 'owner')
        self.assertEqual((result['nodes'], result['float64_values']), (2, 3))

    def test_signed_zero_and_adjacent_float_bits_change_fingerprint(self):
        original = fixture()
        changed = copy.deepcopy(original)
        changed['nodes'][1]['items'][0][1] = '0000000000000000'
        self.assertNotEqual(validate_graph(original, 'owner')['sha256'], validate_graph(changed, 'owner')['sha256'])
        changed = copy.deepcopy(original)
        changed['nodes'][1]['items'][2][1] = '000000000000f03f'
        self.assertNotEqual(validate_graph(original, 'owner')['sha256'], validate_graph(changed, 'owner')['sha256'])

    def test_contents_and_aliasing_are_both_guarded(self):
        original = fixture()
        changed = copy.deepcopy(original)
        changed['nodes'].append({'id': 3, 'class': 'Array', 'items': copy.deepcopy(changed['nodes'][1]['items'])})
        changed['nodes'][0]['fields'][1][1][1] = 3
        self.assertNotEqual(validate_graph(original, 'owner')['sha256'], validate_graph(changed, 'owner')['sha256'])

    def test_mutable_scalar_storage_aliases_and_key_references(self):
        graph = fixture()
        graph['format'] = 'bde_configuration_graph_v2'
        graph['nodes'][0]['fields'].append(['database_owner', ['config_ref', 1, 'config', 'SGValueConfiguration']])
        graph['nodes'][1] = {'id': 2, 'class': 'LookupTable', 'entries': [[['ref', 3], ['ref', 4]]]}
        graph['nodes'].extend([{'id': 3, 'class': 'ByteArray', 'hex': 'abcd'},
                              {'id': 4, 'class': 'String', 'text': 'same'}])
        graph['nodes'][0]['fields'].append(['same_string', ['ref', 4]])
        original = validate_graph(graph, 'owner')['sha256']
        graph['nodes'].append({'id': 5, 'class': 'String', 'text': 'same'})
        graph['nodes'][0]['fields'][-1][1][1] = 5
        self.assertNotEqual(original, validate_graph(graph, 'owner')['sha256'])
        graph['nodes'].append({'id': 6, 'class': 'ByteArray', 'hex': 'abcd'})
        graph['nodes'][1]['entries'].append([['ref', 6], ['nil']])
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')

    def test_linked_configuration_object_and_oid_bindings(self):
        graph = fixture()
        graph['format'] = 'bde_configuration_graph_v2'
        graph['nodes'][0]['fields'].append(['database_owner', ['config_ref', 1, 'config', 'SGValueConfiguration']])
        validate_graph(graph, 'owner')
        graph['nodes'][0]['fields'][-1][1][2] = 'another_oid'
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')

    def test_owner_and_root_class_mismatch(self):
        with self.assertRaises(ValueError):
            validate_graph(fixture(), 'foreign')
        graph = fixture()
        graph['roots'][0][1] = 'SGClassValueConfig'
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')

    def test_dangling_and_unreachable_nodes_refuse(self):
        graph = fixture()
        graph['nodes'][0]['fields'][0][1][1] = 3
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')
        graph = fixture()
        graph['nodes'].append({'id': 3, 'class': 'Array', 'items': []})
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')

    def test_unknown_decimal_and_truncation_refuse(self):
        for row in (['number', '1.0'], ['float64le', '1'], ['boundary', 'depth_or_cycle']):
            graph = fixture()
            graph['nodes'][1]['items'][0] = row
            with self.assertRaises(ValueError):
                validate_graph(graph, 'owner')

    def test_duplicate_fields_roots_and_map_keys_refuse(self):
        for mutation in ('fields', 'roots', 'entries'):
            graph = fixture()
            if mutation == 'fields':
                graph['nodes'][0]['fields'].append(copy.deepcopy(graph['nodes'][0]['fields'][0]))
            elif mutation == 'roots':
                graph['roots'].append(copy.deepcopy(graph['roots'][0]))
            else:
                graph['nodes'][1] = {'id': 2, 'class': 'LookupTable', 'entries': [
                    [['bytes', 'ab'], ['nil']], [['bytes', 'ab'], ['nil']]]}
            with self.assertRaises(ValueError):
                validate_graph(graph, 'owner')

    def test_unknown_classes_and_unexpanded_config_boundaries_refuse(self):
        graph = fixture()
        graph['nodes'][1]['class'] = 'UnknownNativeConfiguration'
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')
        graph = fixture()
        graph['nodes'][1]['items'].append(['database', 'other', 'SGValueConfiguration'])
        with self.assertRaises(ValueError):
            validate_graph(graph, 'owner')


if __name__ == '__main__':
    unittest.main()
