"""Full source values must agree independently before an inverse can be planned."""
from copy import deepcopy
import unittest

from bd_source_inverse_oracle import decode_graph, equal, inspect_candidate


def source_graph(first='base', second='stationary'):
    number = lambda value: ['integer', 'SmallInteger', str(value)]
    text = lambda value: ['string', 'String', value]
    ref = lambda value: ['ref', value]
    rows = [
        {'id': 1, 'native_class': 'SGTopGraphicsBlockDB', 'kind': 'fields',
         'fields': [['blocks', ref(2)], ['connections', ref(7)]]},
        {'id': 2, 'native_class': 'Array', 'kind': 'ordered', 'items': [ref(3), ref(5)]},
        {'id': 3, 'native_class': 'SGDataGODB', 'kind': 'fields', 'logic_id': 1,
         'fields': [['own', ref(4)], ['value', text(first)]]},
        {'id': 4, 'native_class': 'Array', 'kind': 'ordered', 'items': [number(1)]},
        {'id': 5, 'native_class': 'SGLiteralGODB', 'kind': 'fields', 'logic_id': 2,
         'fields': [['own', ref(6)], ['value', text(second)]]},
        {'id': 6, 'native_class': 'Array', 'kind': 'ordered', 'items': [number(2)]},
        {'id': 7, 'native_class': 'Array', 'kind': 'ordered', 'items': []},
    ]
    return {'format': 'bde_persisted_source_graph_v1', 'oid': 'owner',
            'root': ref(1), 'nodes': rows, 'complete': True,
            'reference_count': 11, 'model_setters_called': 0, 'store_called': False}


def source_result():
    return {'source_graphs': {'original': source_graph(), 'applied': source_graph('class_edit'),
                             'current': source_graph('class_edit', 'moved'), 'candidate': source_graph('base', 'moved')},
            'plan': {'compatible': True, 'merged_equals_original': False, 'merged_equals_current': False}}


def hierarchical_graph(first='base', second='stationary'):
    graph = source_graph(first, second)

    def shift(value):
        if type(value) is list:
            if len(value) == 2 and value[0] == 'ref':
                return ['ref', value[1] + 3]
            return [shift(item) for item in value]
        if type(value) is dict:
            return {key: shift(item) for key, item in value.items()}
        return value
    rows = shift(graph['nodes'])
    for row in rows:
        row['id'] += 3
    rows[0]['native_class'] = 'SGGraphicsBlockDB'
    rows[0]['fields'].append(['graphicBlock', ['ref', 11]])
    graph['nodes'] = [
        {'id': 1, 'native_class': 'SGTopGraphicsBlockDB', 'kind': 'fields',
         'fields': [['blocks', ['ref', 2]], ['connections', ['ref', 3]]]},
        {'id': 2, 'native_class': 'Array', 'kind': 'ordered', 'items': [['ref', 4]]},
        {'id': 3, 'native_class': 'Array', 'kind': 'ordered', 'items': []},
        *rows,
        {'id': 11, 'native_class': 'SGHierarchyGODB', 'kind': 'fields', 'logic_id': 9,
         'fields': [['own', ['ref', 12]]]},
        {'id': 12, 'native_class': 'Array', 'kind': 'ordered', 'items': [['integer', 'SmallInteger', '9']]},
    ]
    graph['reference_count'] += 6
    return graph


class CompleteSourceOracleTests(unittest.TestCase):
    def allocator_result(self, *, current_equals_applied=False):
        result = source_result()
        if current_equals_applied:
            result['source_graphs']['current'] = source_graph('class_edit')
            result['source_graphs']['candidate'] = source_graph()
        for role, number in (('original', 10), ('applied', 12), ('current', 12), ('candidate', 12)):
            graph = result['source_graphs'][role]
            graph['nodes'][0]['fields'].append(['highestUsedGraphicalIdentifier', ['integer', 'SmallInteger', str(number)]])
            graph['reference_count'] += 1
        result['plan']['allocator_high_water'] = {'policy': 'preserve_current_high_water_v1',
            'path': 'root/highestUsedGraphicalIdentifier', 'original': 10, 'applied': 12, 'current': 12, 'candidate': 12}
        return result

    def test_local_inverse_keeps_allocator_high_water_even_without_independent_changes(self):
        for identical in (False, True):
            with self.subTest(current_equals_applied=identical):
                result = self.allocator_result(current_equals_applied=identical)
                before = deepcopy(result)
                proof = inspect_candidate(result, 'owner')
                self.assertEqual(proof['allocator_high_water']['candidate'], 12)
                self.assertEqual(result, before)

    def test_rewinding_allocator_cannot_pass_the_complete_source_oracle(self):
        result = self.allocator_result()
        result['source_graphs']['candidate']['nodes'][0]['fields'][-1][1][2] = '10'
        with self.assertRaisesRegex(ValueError, 'candidate differs'):
            inspect_candidate(result, 'owner')

    def test_missing_or_false_allocator_receipt_refuses(self):
        result = self.allocator_result()
        del result['plan']['allocator_high_water']
        with self.assertRaisesRegex(ValueError, 'allocator policy'):
            inspect_candidate(result, 'owner')

    def test_lowered_or_untyped_current_allocator_history_refuses(self):
        for atom in (['integer', 'SmallInteger', '11'], ['integer', 'SmallInteger', '-1'], ['nil'],
                     ['boolean', True], ['integer', 'LargePositiveInteger', '2147483648']):
            with self.subTest(atom=atom):
                result = self.allocator_result()
                result['source_graphs']['current']['nodes'][0]['fields'][-1][1] = atom
                with self.assertRaises(ValueError):
                    inspect_candidate(result, 'owner')

    def test_hierarchy_members_use_persisted_graphic_block_ids(self):
        result = {'source_graphs': {'original': hierarchical_graph(), 'applied': hierarchical_graph('class_edit'),
                                   'current': hierarchical_graph('class_edit', 'moved'),
                                   'candidate': hierarchical_graph('base', 'moved')},
                  'plan': source_result()['plan']}
        oracle = inspect_candidate(result, 'owner')
        self.assertTrue(oracle['candidate_matches_independent_inverse'])
        self.assertEqual([row['merged_identifiers'] for row in oracle['block_order_plans']], [[9], [1, 2]])
        self.assertIn('root/blocks/id:9/connections', oracle['preserved_complete_connections'])

    def test_hierarchy_wrapper_cannot_replace_an_id_with_a_label_or_index(self):
        result = {'source_graphs': {'original': hierarchical_graph(), 'applied': hierarchical_graph('class_edit'),
                                   'current': hierarchical_graph('class_edit', 'moved'),
                                   'candidate': hierarchical_graph('base', 'moved')},
                  'plan': source_result()['plan']}
        result['source_graphs']['current']['nodes'][10]['logic_id'] = None
        with self.assertRaisesRegex(ValueError, 'block identifier'):
            inspect_candidate(result, 'owner')

    def test_actual_candidate_retains_independent_value_and_restores_only_edit(self):
        result = source_result()
        before = deepcopy(result)
        oracle = inspect_candidate(result, 'owner')
        self.assertTrue(oracle['complete_values_verified'])
        self.assertTrue(oracle['candidate_matches_independent_inverse'])
        self.assertFalse(oracle['write_authorized'])
        self.assertEqual(oracle['preserved_complete_connections'], ['root/connections'])
        self.assertEqual(result, before)

    def test_compatible_summary_cannot_hide_wrong_candidate_value(self):
        result = source_result()
        result['source_graphs']['candidate'] = source_graph('class_edit', 'moved')
        with self.assertRaisesRegex(ValueError, 'candidate differs'):
            inspect_candidate(result, 'owner')

    def test_compatible_summary_cannot_hide_erased_independent_move(self):
        result = source_result()
        result['source_graphs']['candidate'] = source_graph()
        with self.assertRaisesRegex(ValueError, 'candidate differs'):
            inspect_candidate(result, 'owner')

    def test_complete_collection_order_is_checked(self):
        result = source_result()
        result['source_graphs']['candidate']['nodes'][1]['items'].reverse()
        with self.assertRaisesRegex(ValueError, 'candidate differs'):
            inspect_candidate(result, 'owner')

    def test_wrong_persisted_identifier_cannot_be_hidden_by_metadata(self):
        graph = source_graph()
        graph['nodes'][2]['logic_id'] = 9
        with self.assertRaisesRegex(ValueError, 'identifier differs'):
            decode_graph(graph, 'owner')

    def test_root_graphic_negative_sentinel_is_retained_as_value_not_block_identity(self):
        graph = source_graph()
        graph['nodes'][0]['fields'].append(['graphicBlock', ['ref', 8]])
        graph['nodes'].append({'id': 8, 'native_class': 'SGCodeGODB', 'kind': 'fields', 'logic_id': -1,
                               'fields': [['own', ['ref', 9]]]})
        graph['nodes'].append({'id': 9, 'native_class': 'Array', 'kind': 'ordered',
                               'items': [['integer', 'SmallInteger', '-1']]})
        graph['reference_count'] += 3
        root = decode_graph(graph, 'owner')
        self.assertEqual(root.value['graphicBlock'].logic_id, -1)

    def test_dangling_unreachable_and_incomplete_exports_refuse(self):
        for change in ('dangling', 'unreachable', 'partial', 'count'):
            with self.subTest(change=change):
                graph = source_graph()
                if change == 'dangling':
                    graph['root'] = ['ref', 900]
                elif change == 'unreachable':
                    graph['nodes'].append({'id': 8, 'native_class': 'Array', 'kind': 'ordered', 'items': []})
                elif change == 'partial':
                    graph['complete'] = False
                else:
                    graph['reference_count'] -= 1
                with self.assertRaises(ValueError):
                    decode_graph(graph, 'owner')

    def test_native_equality_summary_must_match_complete_values(self):
        result = source_result()
        result['plan']['merged_equals_original'] = True
        with self.assertRaisesRegex(ValueError, 'equality summaries'):
            inspect_candidate(result, 'owner')

    def test_wrong_owner_and_missing_graphs_refuse(self):
        result = source_result()
        with self.assertRaises(ValueError):
            inspect_candidate(result, 'foreign')
        del result['source_graphs']['candidate']
        with self.assertRaises(ValueError):
            inspect_candidate(result, 'owner')

    def test_float_bits_and_shared_structural_objects_are_not_flattened(self):
        left = source_graph()
        left['nodes'][2]['fields'][1][1] = ['float64le', '0000000000000000']
        right = deepcopy(left)
        right['nodes'][2]['fields'][1][1] = ['float64le', '0000000000000080']
        self.assertFalse(equal(decode_graph(left, 'owner'), decode_graph(right, 'owner')))

    def test_model_alias_bytes_are_lossless_dictionary_keys(self):
        graph = source_graph()
        graph['nodes'][0]['fields'].append(['ports', ['ref', 8]])
        graph['nodes'].append({'id': 8, 'native_class': 'Dictionary', 'kind': 'dictionary',
                               'entries': [[['bytes', 'ByteArray', '0100ff'], ['integer', 'SmallInteger', '2']]]})
        graph['reference_count'] += 3
        root = decode_graph(graph, 'owner')
        self.assertEqual(root.value['ports'].value[('bytes', 'ByteArray', '0100ff')], ('integer', 'SmallInteger', '2'))
        graph['nodes'][7]['entries'].append(deepcopy(graph['nodes'][7]['entries'][0]))
        with self.assertRaisesRegex(ValueError, 'Duplicate'):
            decode_graph(graph, 'owner')
    def test_duplicate_structural_storage_is_distinct_from_shared_storage(self):
        left = source_graph()
        left['nodes'][0]['fields'].append(['also_connections', ['ref', 7]])
        left['reference_count'] += 1
        right = deepcopy(left)
        right['nodes'][0]['fields'][-1][1] = ['ref', 8]
        right['nodes'].append({'id': 8, 'native_class': 'Array', 'kind': 'ordered', 'items': []})
        self.assertFalse(equal(decode_graph(left, 'owner'), decode_graph(right, 'owner')))


if __name__ == '__main__':
    unittest.main()
