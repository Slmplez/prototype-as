from copy import deepcopy
import unittest

from bde_scope_lifecycle_experiment import rebuilt_graph_equal


class LegacyGraphComparisonTests(unittest.TestCase):
    def setUp(self):
        self.before = {'diagram': 'Main', 'generation': 1, 'targets': [], 'lookup_nodes': 1,
                       'lookup_edges': 1, 'entries': [
                           {'ref': 'e1', 'kind': 'edge', 'source': 'p2', 'target': 'p2', 'route': [[1, 2], [3, 4]]},
                           {'ref': 'n1', 'kind': 'node', 'literal': 'e1', 'pins': ['p2'], 'position': [1, 2]},
                           {'ref': 'p2', 'kind': 'pin', 'owner': 'n1', 'name': 'out#1', 'output': True}]}
        self.after = deepcopy(self.before)
        self.after['generation'] = 10
        self.after['entries'][0].update(ref='e3')

    def test_reallocated_aliases_preserve_full_graph_and_reference_like_literal(self):
        self.assertTrue(rebuilt_graph_equal(self.before, self.after, 2))

    def test_field_geometry_topology_and_coverage_changes_are_not_ignored(self):
        changes = [lambda row: row['entries'][0].update(route=[[1, 2], [3, 5]]),
                   lambda row: row['entries'][0].update(target='p9'),
                   lambda row: row['entries'][1].update(literal='e3'),
                   lambda row: row['entries'][1].update(ref='n3'),
                   lambda row: row['entries'][2].update(ref='p4'),
                   lambda row: row['entries'][1].update(position=[2, 2]),
                   lambda row: row['entries'][2].update(output=False),
                   lambda row: row['entries'].pop(),
                   lambda row: row.update(lookup_nodes=0),
                   lambda row: row.update(unexpected_field=True)]
        for change in changes:
            with self.subTest(change=change):
                changed = deepcopy(self.after)
                change(changed)
                self.assertFalse(rebuilt_graph_equal(self.before, changed, 2))

    def test_wrong_allocation_offset_and_duplicate_aliases_do_not_pass(self):
        self.assertFalse(rebuilt_graph_equal(self.before, self.after, 1))
        duplicate = deepcopy(self.before)
        duplicate['entries'].append(duplicate['entries'][1])
        with self.assertRaises(ValueError):
            rebuilt_graph_equal(duplicate, self.after, 2)

    def test_unknown_profiles_and_invalid_offsets_refuse(self):
        unknown = deepcopy(self.before)
        unknown['entries'][1]['ref'] = 'h1'
        with self.assertRaises(ValueError):
            rebuilt_graph_equal(unknown, self.after, 2)
        for offset in (-1, True, None):
            with self.subTest(offset=offset), self.assertRaises(ValueError):
                rebuilt_graph_equal(self.before, self.after, offset)


if __name__ == '__main__':
    unittest.main()
