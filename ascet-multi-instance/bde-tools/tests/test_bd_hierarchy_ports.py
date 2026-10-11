"""Boundary contract tests; native behavior is covered by the online experiment."""
import unittest

from bd_edit_journal import JournalError, clone
from bd_hierarchy_ports import parent_postcondition, scope_postcondition, validate
from bd_structural_tools import plan


class HierarchyPortTests(unittest.TestCase):
    def setUp(self):
        self.parent = {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 1, 'targets': [],
            'entries': [{'kind': 'node', 'ref': 'n10', 'hierarchy_name': 'Stage', 'pins': [], 'anchor': [100, 100]}]}
        self.child = {**clone(self.parent), 'diagram': 'Main/h10', 'entries': [],
                      'boundary_context': [], 'lookup_nodes': 0, 'lookup_edges': 0}
        self.request = {'operation': 'create_hierarchy_port', 'diagram': 'Main', 'arguments': [[], 'n10', 'input', 'Signal']}
        self.after = clone(self.parent)
        self.after['entries'][0]['pins'] = ['p11']
        self.after['entries'].append({'kind': 'pin', 'ref': 'p11', 'owner': 'n10', 'name': 'Signal', 'input': True, 'output': False})
        self.child_after = clone(self.child)
        self.child_after.update(lookup_nodes=1, entries=[
            {'kind': 'node', 'ref': 'n9', 'hierarchy_boundary': True, 'pins': ['p9']},
            {'kind': 'pin', 'ref': 'p9', 'owner': 'n9', 'input': False, 'output': True}],
            boundary_context=[{'hierarchy': 10, 'external': 11, 'internal_node': 9, 'internal_pin': 9, 'input': True, 'output': False}])
        self.effect = {'kind': 'hierarchy_scope', 'diagram': 'Main/h10', 'parent_ref': 'Main/n10',
                       'before': self.child, 'after': self.child_after}

    def test_creation_requires_exact_owner_and_complete_snapshot(self):
        record = {'structure': self.parent}
        op = {'op': 'create_hierarchy_port', 'target': 'Main/n10', 'direction': 'input', 'name': 'Signal'}
        self.assertEqual(plan(record, op), ('create_hierarchy_port', [[], 'n10', 'input', 'Signal'], self.parent))
        for changed in ({**op, 'name': 'invalid name'}, {**op, 'direction': 'both'}, {**op, 'extra': True}):
            with self.assertRaises(Exception):
                plan(record, changed)
        with self.assertRaises(Exception):
            plan({'structure': dict(self.parent, targets=['n10'])}, op)

    def test_actual_pair_and_unchanged_graph_required(self):
        self.assertTrue(parent_postcondition(self.request, self.parent, self.after))
        self.assertTrue(scope_postcondition(self.request, [self.effect], self.parent, self.after))
        for field in ('external', 'internal_node', 'hierarchy'):
            effect = clone(self.effect)
            effect['after']['boundary_context'][0][field] += 1
            self.assertFalse(scope_postcondition(self.request, [effect], self.parent, self.after))
        changed = clone(self.effect)
        changed['after']['entries'][1]['output'] = False
        self.assertFalse(scope_postcondition(self.request, [changed], self.parent, self.after))
        changed = clone(self.after)
        changed['entries'][0]['anchor'] = [101, 100]
        self.assertFalse(parent_postcondition(self.request, self.parent, changed))

    def test_deletion_includes_both_incident_edges_and_preserves_unrelated_rows(self):
        parent = clone(self.after)
        parent['entries'].append({'kind': 'edge', 'ref': 'e1', 'source': 'p30', 'target': 'p11'})
        child = clone(self.child_after)
        child['entries'].append({'kind': 'edge', 'ref': 'e2', 'source': 'p9', 'target': 'p40'})
        child['lookup_edges'] = 1
        request = {'operation': 'delete_hierarchy_port', 'diagram': 'Main', 'arguments': [[], 'p11']}
        effect = dict(self.effect, before=child, after=self.child)
        self.assertTrue(scope_postcondition(request, [effect], parent, self.parent))
        changed = clone(self.parent)
        changed['entries'].append(parent['entries'][-1])
        self.assertFalse(parent_postcondition(request, parent, changed))
        changed_effect = clone(effect)
        changed_effect['after']['entries'].append(child['entries'][-1])
        self.assertFalse(scope_postcondition(request, [changed_effect], parent, self.parent))

    def test_internal_pin_cannot_be_mistaken_for_external_boundary(self):
        with self.assertRaises(Exception):
            plan({'structure': self.child_after}, {'op': 'delete_hierarchy_port', 'target': 'Main/h10/p9'})
        with self.assertRaises(JournalError):
            validate({'op': 'delete_hierarchy_port', 'target': 'Main/p11', 'force': True})

    def test_missing_descendant_context_effect_is_rejected(self):
        direct = clone(self.effect)
        inner = {'kind': 'node', 'ref': 'n20', 'hierarchy_name': 'Nested', 'pins': []}
        direct['before']['entries'].append(inner)
        direct['after']['entries'].append(inner)
        direct['before']['lookup_nodes'] = 1
        direct['after']['lookup_nodes'] = 2
        self.assertFalse(scope_postcondition(self.request, [direct], self.parent, self.after))
        descendant_before = {**clone(self.child), 'diagram': 'Main/h10/h20'}
        descendant_after = dict(descendant_before, boundary_context=clone(self.child_after['boundary_context']))
        descendant = dict(direct, diagram='Main/h10/h20', before=descendant_before, after=descendant_after)
        self.assertTrue(scope_postcondition(self.request, [direct, descendant], self.parent, self.after))
        descendant['after']['entries'] = [inner]
        self.assertFalse(scope_postcondition(self.request, [direct, descendant], self.parent, self.after))


if __name__ == '__main__':
    unittest.main()
