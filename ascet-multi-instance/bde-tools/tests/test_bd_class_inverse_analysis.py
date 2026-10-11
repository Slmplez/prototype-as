"""Inverse value merge/conflict cases; no online native restoration evidence."""
from copy import deepcopy
import unittest

from bd_class_inverse_analysis import analyze_inverse


def graph(entries):
    return {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 4,
            'identity': 'native_registry', 'entries': entries, 'lookup_nodes': 2, 'lookup_edges': 0, 'targets': []}


def observation(entries):
    return {'observation': {'signature': {'oid': 'class'}, 'configurations': {}, 'public_signature': []},
            'owners': [{'oid': 'owner', 'component': 'Trial_Owner', 'scopes': {'Main': graph(entries)}}]}


class ClassInverseAnalysisTests(unittest.TestCase):
    def setUp(self):
        self.before = observation([
            {'ref': 'n1', 'kind': 'node', 'native_class': 'Node', 'pins': ['p1', 'p2'],
             'position': [20, 30], 'size': [50, 60], 'label': 'original'},
            {'ref': 'p1', 'kind': 'pin', 'native_class': 'Pin', 'owner': 'n1', 'input': True, 'output': False,
             'name': 'argument', 'sequence': None},
            {'ref': 'p2', 'kind': 'pin', 'native_class': 'Pin', 'owner': 'n1', 'input': False, 'output': True,
             'name': 'return', 'sequence': None},
            {'ref': 'comment1', 'kind': 'comment', 'native_class': 'Comment', 'text': 'original'}])
        self.after = deepcopy(self.before)
        self.row(self.after, 'n1')['position'] = [40, 50]
        self.current = deepcopy(self.after)

    def entries(self, value):
        return value['owners'][0]['scopes']['Main']['entries']

    def row(self, value, ref):
        return next(row for row in self.entries(value) if row['ref'] == ref)

    def analyze(self):
        return analyze_inverse(self.before, self.after, self.current)

    def resource(self, result):
        return result['resources'][0]

    def codes(self, result):
        return {row['code'] for resource in result['resources'] for row in resource['conflicts']}

    def test_exact_after_has_inverse_values_and_never_authorizes_write(self):
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        self.assertTrue(result['original_after_matches'])
        self.assertFalse(result['write_authorized'])
        self.assertFalse(result['native_merge_executor_available'])
        self.assertEqual(self.resource(result)['merged_differences'][0]['after'], self.row(self.before, 'n1'))

    def test_unrelated_field_on_same_object_and_other_object_are_preserved(self):
        self.row(self.current, 'n1')['label'] = 'GUI changed'
        self.row(self.current, 'comment1')['text'] = 'GUI comment'
        original_inputs = deepcopy((self.before, self.after, self.current))
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        self.assertFalse(result['original_after_matches'])
        merged = self.resource(result)['merged_differences'][0]['after']
        self.assertEqual(merged['label'], 'GUI changed')
        self.assertEqual(merged['position'], [20, 30])
        self.assertEqual({row['ref'] for row in self.resource(result)['preserved_changes']}, {'n1', 'comment1'})
        self.assertEqual((self.before, self.after, self.current), original_inputs)

    def test_new_unrelated_comment_is_preserved(self):
        self.entries(self.current).append({'ref': 'comment2', 'kind': 'comment', 'native_class': 'Comment', 'text': 'new'})
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        self.assertEqual(self.resource(result)['preserved_changes'][0]['ref'], 'comment2')
        self.assertNotIn('comment2', [row['ref'] for row in self.resource(result)['merged_differences']])

    def test_touched_position_conflicts_and_exposes_no_candidate_patch(self):
        self.row(self.current, 'n1')['position'] = [80, 90]
        result = self.analyze()
        self.assertFalse(result['collected_graph_compatible'])
        self.assertIn('TOUCHED_FIELD_CONFLICT', self.codes(result))
        self.assertEqual(self.resource(result)['merged_differences'], [])

    def deleted_argument(self, independent_pins):
        self.entries(self.after).remove(self.row(self.after, 'p1'))
        self.row(self.after, 'n1')['pins'] = ['p2']
        self.current = deepcopy(self.after)
        self.row(self.current, 'n1')['pins'] = independent_pins
        self.entries(self.current).append({'ref': 'p3', 'kind': 'pin', 'native_class': 'Pin',
            'owner': 'n1', 'input': True, 'output': False, 'name': 'later_argument', 'sequence': None})

    def test_deleted_argument_inverse_preserves_independent_later_pin_in_another_gap(self):
        self.deleted_argument(['p2', 'p3'])
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        resource = self.resource(result)
        node = next(row['after'] for row in resource['merged_differences'] if row['ref'] == 'n1')
        self.assertEqual(node['pins'], ['p1', 'p2', 'p3'])
        self.assertNotIn('p3', [row['ref'] for row in resource['merged_differences']])
        self.assertEqual(resource['collection_plans'][0]['preserved'], ['p3'])
        self.assertFalse(result['write_authorized'])
        self.assertFalse(result['native_merge_executor_available'])

    def test_deleted_argument_inverse_refuses_ambiguous_independent_pin_order(self):
        self.deleted_argument(['p3', 'p2'])
        result = self.analyze()
        self.assertFalse(result['collected_graph_compatible'])
        self.assertIn('COLLECTION_ORDER_CONFLICT', self.codes(result))
        self.assertEqual(self.resource(result)['merged_differences'], [])
        self.assertEqual(self.resource(result)['collection_plans'][0]['conflicts'][0]['code'], 'RESTORE_GAP_AMBIGUOUS')

    def test_array_order_changes_are_not_merged_by_index(self):
        self.row(self.after, 'n1')['pins'] = ['p2', 'p1']
        self.current = deepcopy(self.after)
        self.row(self.current, 'n1')['pins'] = ['p1', 'p2']
        result = self.analyze()
        conflicts = self.resource(result)['conflicts']
        self.assertTrue(any(row.get('path') == ['pins'] for row in conflicts))

    def test_deleted_original_row_restoration_requires_absence(self):
        self.entries(self.after).pop()
        self.current = deepcopy(self.after)
        self.assertTrue(self.analyze()['collected_graph_compatible'])
        self.entries(self.current).append({'ref': 'comment1', 'kind': 'comment', 'native_class': 'Comment', 'text': 'replacement'})
        self.assertIn('ROW_EXISTENCE_CONFLICT', self.codes(self.analyze()))

    def test_added_row_inverse_refuses_changed_contents(self):
        self.entries(self.after).append({'ref': 'comment2', 'kind': 'comment', 'native_class': 'Comment', 'text': 'created'})
        self.current = deepcopy(self.after)
        self.assertTrue(self.analyze()['collected_graph_compatible'])
        self.row(self.current, 'comment2')['text'] = 'later edit'
        self.assertIn('ROW_EXISTENCE_CONFLICT', self.codes(self.analyze()))

    def test_deleted_touched_row_and_rebound_native_class_refuse(self):
        self.entries(self.current).remove(self.row(self.current, 'n1'))
        self.assertIn('ROW_IDENTITY_CONFLICT', self.codes(self.analyze()))
        self.current = deepcopy(self.after)
        self.row(self.current, 'n1')['native_class'] = 'ForeignNode'
        self.assertIn('ROW_IDENTITY_CONFLICT', self.codes(self.analyze()))

    def test_json_boolean_and_number_do_not_match(self):
        self.row(self.before, 'n1')['value'] = False
        self.row(self.after, 'n1')['value'] = True
        self.current = deepcopy(self.after)
        self.row(self.current, 'n1')['value'] = 1
        self.assertIn('TOUCHED_FIELD_CONFLICT', self.codes(self.analyze()))

    def test_missing_nullable_field_is_a_conflict(self):
        self.row(self.before, 'p1')['sequence'] = {'number': 3, 'position': [5, 5]}
        self.current = deepcopy(self.after)
        del self.row(self.current, 'p1')['sequence']
        self.assertIn('TOUCHED_FIELD_CONFLICT', self.codes(self.analyze()))

    def test_removed_nested_container_refuses_without_exception(self):
        self.row(self.before, 'p1')['sequence'] = {'number': 3, 'method': 'calc'}
        self.row(self.after, 'p1')['sequence'] = {'number': 3}
        self.current = deepcopy(self.after)
        del self.row(self.current, 'p1')['sequence']
        self.assertIn('TOUCHED_FIELD_CONFLICT', self.codes(self.analyze()))

    def test_new_edge_attached_to_changed_pin_is_dependency_conflict(self):
        self.row(self.after, 'p1')['name'] = 'changed'
        self.current = deepcopy(self.after)
        self.entries(self.current).append({'ref': 'e1', 'kind': 'edge', 'source': 'p2', 'target': 'p1'})
        self.assertIn('NEW_INCIDENT_DEPENDENCY', self.codes(self.analyze()))

    def test_model_removed_by_inverse_with_new_node_dependency_refuses(self):
        self.entries(self.after).append({'ref': 'm1', 'kind': 'model'})
        self.current = deepcopy(self.after)
        self.entries(self.current).append({'ref': 'n2', 'kind': 'node', 'pins': [], 'model_ref': 'm1'})
        self.assertIn('MODEL_DEPENDENCY', self.codes(self.analyze()))

    def test_restore_edge_to_occupied_input_refuses(self):
        self.entries(self.before).append({'ref': 'e1', 'kind': 'edge', 'source': 'p2', 'target': 'p1'})
        self.entries(self.current).append({'ref': 'e2', 'kind': 'edge', 'source': 'p2', 'target': 'p1'})
        self.assertIn('RESTORED_INPUT_OCCUPIED', self.codes(self.analyze()))

    def test_restore_edge_refuses_existing_edge_retargeted_to_its_input(self):
        for value in (self.before, self.after):
            self.row(value, 'n1')['pins'].append('p3')
            self.entries(value).append({'ref': 'p3', 'kind': 'pin', 'owner': 'n1', 'input': True, 'output': False})
            self.entries(value).append({'ref': 'e2', 'kind': 'edge', 'source': 'p2', 'target': 'p3'})
        self.entries(self.before).append({'ref': 'e1', 'kind': 'edge', 'source': 'p2', 'target': 'p1'})
        self.current = deepcopy(self.after)
        self.row(self.current, 'e2')['target'] = 'p1'
        result = self.analyze()
        self.assertIn('RESTORED_INPUT_OCCUPIED', self.codes(result))
        self.assertEqual(self.resource(result)['merged_differences'], [])

    def test_inverse_rewire_refuses_original_input_now_occupied(self):
        for value in (self.before, self.after):
            self.row(value, 'n1')['pins'].append('p3')
            self.entries(value).append({'ref': 'p3', 'kind': 'pin', 'owner': 'n1', 'input': True, 'output': False})
            self.entries(value).append({'ref': 'e1', 'kind': 'edge', 'source': 'p2',
                                       'target': 'p1' if value is self.before else 'p3'})
        self.current = deepcopy(self.after)
        self.entries(self.current).append({'ref': 'e2', 'kind': 'edge', 'source': 'p2', 'target': 'p1'})
        result = self.analyze()
        self.assertIn('RESTORED_INPUT_OCCUPIED', self.codes(result))
        self.assertEqual(self.resource(result)['merged_differences'], [])

    def test_inverse_rewire_to_free_input_preserves_unrelated_edge(self):
        for value in (self.before, self.after):
            self.row(value, 'n1')['pins'].extend(['p3', 'p4'])
            for ref in ('p3', 'p4'):
                self.entries(value).append({'ref': ref, 'kind': 'pin', 'owner': 'n1', 'input': True, 'output': False})
            self.entries(value).append({'ref': 'e1', 'kind': 'edge', 'source': 'p2',
                                       'target': 'p1' if value is self.before else 'p3'})
        self.current = deepcopy(self.after)
        self.entries(self.current).append({'ref': 'e2', 'kind': 'edge', 'source': 'p2', 'target': 'p4'})
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        patch = self.resource(result)['merged_differences']
        self.assertEqual(next(row['after']['target'] for row in patch if row['ref'] == 'e1'), 'p1')
        self.assertNotIn('e2', [row['ref'] for row in patch])

    def test_generation_owner_scope_changes_refuse(self):
        self.current['owners'][0]['scopes']['Main']['generation'] += 1
        self.assertIn('GRAPH_IDENTITY_OR_METADATA_CHANGED', self.codes(self.analyze()))
        self.current = deepcopy(self.after)
        self.current['owners'][0]['component'] = 'Foreign'
        self.assertEqual(self.analyze()['identity_guards'][0]['code'], 'OWNER_OR_SCOPE_IDENTITY_CHANGED')
        self.current = deepcopy(self.after)
        self.current['owners'].append({'oid': 'extra', 'component': 'Extra', 'scopes': {}})
        self.assertEqual(self.analyze()['identity_guards'][0]['code'], 'OWNER_ROSTER_CHANGED')

    def test_changed_signature_configuration_require_native_recheck(self):
        self.current['observation']['signature']['extra'] = 'new formal'
        self.current['observation']['configurations']['value'] = 7
        result = self.analyze()
        self.assertTrue(result['collected_graph_compatible'])
        self.assertEqual(result['observation_fields_requiring_native_recheck'], ['configurations', 'signature'])
        self.assertFalse(result['write_authorized'])

    def test_duplicate_entries_or_owners_are_never_silently_deduplicated(self):
        self.entries(self.current).append(deepcopy(self.entries(self.current)[0]))
        with self.assertRaises(ValueError):
            self.analyze()
        self.current = deepcopy(self.after)
        self.current['owners'].append(deepcopy(self.current['owners'][0]))
        with self.assertRaises(ValueError):
            self.analyze()


if __name__ == '__main__':
    unittest.main()
