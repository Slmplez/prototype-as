"""Rewire owns one endpoint, preserves unrelated edits, and rejects dependencies."""
from copy import deepcopy
import unittest

from bd_field_inverse import plan, summary, expected_from_preparation


def graph():
    return {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 7,
            'identity': 'native', 'lookup_nodes': 3, 'lookup_edges': 1, 'targets': [],
            'entries': [
                {'kind': 'node', 'ref': 'n1', 'native_class': 'Literal', 'pins': ['p1'], 'literal': '1'},
                {'kind': 'node', 'ref': 'n2', 'native_class': 'Literal', 'pins': ['p2'], 'literal': '2'},
                {'kind': 'node', 'ref': 'n3', 'native_class': 'Operator', 'pins': ['p3']},
                {'kind': 'pin', 'ref': 'p1', 'owner': 'n1', 'input': False, 'output': True},
                {'kind': 'pin', 'ref': 'p2', 'owner': 'n2', 'input': False, 'output': True},
                {'kind': 'pin', 'ref': 'p3', 'owner': 'n3', 'input': True, 'output': False},
                {'kind': 'edge', 'ref': 'e1', 'native_class': 'Connection', 'source': 'p1',
                 'target': 'p3', 'type': 2, 'route': [[10, 10], [30, 10]]}]}


class RewireInverseTests(unittest.TestCase):
    def setUp(self):
        self.before = graph()
        self.after = deepcopy(self.before)
        self.after['entries'][-1].update(source='p2', route=[[20, 20], [30, 20], [30, 10]])
        self.current = deepcopy(self.after)

    def planned(self):
        return plan(self.before, self.after, self.current, operation='rewire_data')

    def test_inverse_and_its_inverse_keep_independent_owner_values(self):
        self.current['entries'][0]['literal'] = 'later'
        undo = self.planned()
        expected = deepcopy(self.before); expected['entries'][0]['literal'] = 'later'
        self.assertTrue(undo['compatible']); self.assertEqual(undo['expected'], expected)
        redo = plan(self.current, expected, expected, operation='rewire_data')
        self.assertEqual(redo['expected'], self.current)
        self.assertEqual(undo['cells'], [{'ref': 'e1', 'field': 'route'}, {'ref': 'e1', 'field': 'source'}])

    def test_old_source_owner_dependency_cannot_disappear_after_rewire(self):
        for ref in ('n1', 'p1', 'n2', 'p2', 'n3', 'p3'):
            with self.subTest(ref=ref):
                self.current = deepcopy(self.after)
                self.current['entries'] = [row for row in self.current['entries'] if row['ref'] != ref]
                self.assertFalse(self.planned()['compatible'])

    def test_old_source_owner_pin_direction_and_registration_conflict(self):
        for ref, field, value in [('p1', 'output', False), ('p1', 'owner', 'n2'),
                                 ('n1', 'pins', []), ('p2', 'input', True)]:
            with self.subTest(ref=ref, field=field):
                self.current = deepcopy(self.after)
                next(row for row in self.current['entries'] if row['ref'] == ref)[field] = value
                self.assertFalse(self.planned()['compatible'])

    def test_later_endpoint_or_route_edit_conflicts_before_execution(self):
        for field, value in [('source', 'p1'), ('route', [[99, 99], [30, 10]])]:
            self.current = deepcopy(self.after); self.current['entries'][-1][field] = value
            candidate = self.planned()
            self.assertFalse(candidate['compatible']); self.assertIsNone(candidate['expected'])

    def test_occupied_input_rejects_new_foreign_edge(self):
        self.current['entries'].append({**self.after['entries'][-1], 'ref': 'e2', 'source': 'p1'})
        self.current['lookup_edges'] = 2
        self.assertIn({'code': 'REWIRE_INPUT_OCCUPIED', 'ref': 'e1', 'target': 'p3'}, self.planned()['conflicts'])

    def test_unrelated_new_edge_is_preserved(self):
        self.current['entries'].extend([
            {'kind': 'node', 'ref': 'n4', 'pins': ['p4'], 'native_class': 'Operator'},
            {'kind': 'pin', 'ref': 'p4', 'owner': 'n4', 'input': True, 'output': False},
            {**self.after['entries'][-1], 'ref': 'e2', 'target': 'p4'}])
        self.current['lookup_edges'] = 2
        self.current['lookup_nodes'] = 4
        candidate = self.planned()
        self.assertTrue(candidate['compatible'])
        self.assertEqual(candidate['expected']['entries'][-1], self.current['entries'][-1])
        self.assertEqual(candidate['expected']['lookup_edges'], 2)

    def test_other_field_operation_cannot_authorize_source_mutation(self):
        with self.assertRaises(ValueError):
            plan(self.before, self.after, self.current, operation='set_edge_route')

    def test_noop_and_multiple_edge_sources_cannot_claim_one_rewire(self):
        with self.assertRaises(ValueError): plan(self.before, self.before, self.before, operation='rewire_data')
        self.before['entries'].append({**self.before['entries'][-1], 'ref': 'e2'})
        self.after['entries'].append({**self.after['entries'][-1], 'ref': 'e2'})
        with self.assertRaises(ValueError): self.planned()

    def test_original_pin_direction_and_owner_membership_are_required(self):
        for graph_value in ('before', 'after'):
            with self.subTest(graph=graph_value):
                before, after = deepcopy(self.before), deepcopy(self.after)
                target = before if graph_value == 'before' else after
                target['entries'][0]['pins'] = []
                with self.assertRaises(ValueError): plan(before, after, self.current, operation='rewire_data')

    def test_target_identity_change_cannot_be_hidden_by_rewire(self):
        self.after['entries'][-1]['target'] = 'p1'
        with self.assertRaises(ValueError): self.planned()

    def test_durable_expected_is_recomputed_without_mutating_inputs(self):
        originals = deepcopy([self.before, self.after, self.current])
        candidate = self.planned()
        preparation = {'before': self.current, 'inverse_expected': candidate['expected'],
                       'inverse_analysis': summary(candidate, self.current)}
        self.assertEqual(expected_from_preparation(self.before, self.after, preparation,
                                                  operation='rewire_data'), candidate['expected'])
        self.assertEqual(originals, [self.before, self.after, self.current])
        preparation['inverse_expected']['entries'][-1]['source'] = 'p2'
        with self.assertRaises(ValueError): expected_from_preparation(self.before, self.after, preparation,
                                                                     operation='rewire_data')


if __name__ == '__main__':
    unittest.main()
