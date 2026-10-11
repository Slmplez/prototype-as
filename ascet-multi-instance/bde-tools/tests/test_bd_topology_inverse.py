"""Observed three-way topology regressions; no native identity or live acceptance."""
from copy import deepcopy
import unittest

from bd_field_inverse import expected_from_preparation, plan, summary
from bd_delete_inverse import _rows


def graph():
    result = {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 7,
              'identity': 'native', 'lookup_nodes': 3, 'lookup_edges': 2, 'targets': [],
              'entries': [
                  {'kind': 'model', 'ref': 'm1', 'native_class': 'SGVariable', 'oid': 'oid1', 'path': 'x'},
                  {'kind': 'node', 'ref': 'n1', 'native_class': 'VariableGO', 'pins': ['p1'], 'model_ref': 'm1'},
                  {'kind': 'node', 'ref': 'n2', 'native_class': 'OperatorGO', 'pins': ['p2'], 'size': [9, 9]},
                  {'kind': 'node', 'ref': 'n3', 'native_class': 'OperatorGO', 'pins': ['p3'], 'comment': None},
                  {'kind': 'pin', 'ref': 'p1', 'owner': 'n1', 'input': False, 'output': True},
                  {'kind': 'pin', 'ref': 'p2', 'owner': 'n2', 'input': True, 'output': False},
                  {'kind': 'pin', 'ref': 'p3', 'owner': 'n3', 'input': True, 'output': False},
                  {'kind': 'edge', 'ref': 'e1', 'native_class': 'Connection', 'source': 'p1',
                   'target': 'p2', 'connection_kind': 'data', 'route': [[10, 10], [30, 10]]},
                  {'kind': 'edge', 'ref': 'e2', 'native_class': 'Connection', 'source': 'p1',
                   'target': 'p3', 'connection_kind': 'data', 'route': [[10, 10], [40, 10]]}]}
    result['entries'].sort(key=lambda row: row['ref'])
    return result


def remove(value, refs):
    result = deepcopy(value)
    deleted = [row for row in result['entries'] if row['ref'] in refs]
    result['entries'] = [row for row in result['entries'] if row['ref'] not in refs]
    result['lookup_nodes'] -= sum(row['kind'] == 'node' for row in deleted)
    result['lookup_edges'] -= sum(row['kind'] == 'edge' for row in deleted)
    return result


def add_independent(value):
    value['entries'].extend([
        {'kind': 'node', 'ref': 'n4', 'native_class': 'LiteralGO', 'pins': ['p4'], 'literal': 'later'},
        {'kind': 'node', 'ref': 'n5', 'native_class': 'OperatorGO', 'pins': ['p5']},
        {'kind': 'pin', 'ref': 'p4', 'owner': 'n4', 'input': False, 'output': True},
        {'kind': 'pin', 'ref': 'p5', 'owner': 'n5', 'input': True, 'output': False},
        {'kind': 'edge', 'ref': 'e3', 'native_class': 'Connection', 'source': 'p4', 'target': 'p5'}])
    value['lookup_nodes'] += 2
    value['lookup_edges'] += 1
    value['entries'].sort(key=lambda row: row['ref'])


class TopologyTests(unittest.TestCase):
    def setUp(self):
        self.before = graph()
        self.operation = 'disconnect_data'
        self.after = remove(self.before, {'e1'})
        self.current = deepcopy(self.after)

    def delete_setup(self):
        self.operation = 'delete_node'
        self.after = remove(self.before, {'n1', 'p1', 'e1', 'e2'})
        self.current = deepcopy(self.after)

    def planned(self):
        return plan(self.before, self.after, self.current, operation=self.operation)

    def test_disconnect_undo_redo_and_final_inverse(self):
        undo = self.planned()
        self.assertTrue(undo['compatible'])
        self.assertEqual(undo['expected'], self.before)
        self.assertEqual(undo['cells'], [{'ref': 'e1', 'field': None, 'action': 'restore'}])
        redo = plan(self.current, undo['expected'], undo['expected'], operation=self.operation)
        self.assertEqual(redo['expected'], self.current)
        final = plan(undo['expected'], redo['expected'], redo['expected'], operation=self.operation)
        self.assertEqual(final['expected'], undo['expected'])

    def test_delete_undo_and_redo_preserve_original_model_declaration(self):
        self.delete_setup()
        undo = self.planned()
        self.assertEqual(undo['expected'], self.before)
        redo = plan(self.current, undo['expected'], undo['expected'], operation=self.operation)
        self.assertEqual(redo['expected'], self.current)
        self.assertEqual(_rows(redo['expected'])['m1'], _rows(self.before)['m1'])
        self.assertEqual({cell['ref'] for cell in redo['cells']}, {'n1', 'p1', 'e1', 'e2'})

    def test_delete_every_direction_and_conflict_leave_all_inputs_unchanged(self):
        self.delete_setup()
        original = deepcopy([self.before, self.after, self.current])
        undo = self.planned()
        self.assertEqual([self.before, self.after, self.current], original)
        redo_inputs = deepcopy([self.current, undo['expected'], undo['expected']])
        frozen = deepcopy(redo_inputs)
        plan(*redo_inputs, operation=self.operation)
        self.assertEqual(redo_inputs, frozen)
        add_independent(self.current)
        _rows(self.current)['e3']['target'] = 'p2'
        frozen = deepcopy([self.before, self.after, self.current])
        self.assertFalse(self.planned()['compatible'])
        self.assertEqual([self.before, self.after, self.current], frozen)

    def test_independent_nodes_edges_and_same_owner_fields_survive(self):
        for deletion in (False, True):
            with self.subTest(delete=deletion):
                self.setUp()
                if deletion:
                    self.delete_setup()
                add_independent(self.current)
                _rows(self.current)['n2']['size'] = [99, 99]
                undo = self.planned()
                self.assertTrue(undo['compatible'])
                self.assertEqual(_rows(undo['expected'])['n2']['size'], [99, 99])
                self.assertEqual(_rows(undo['expected'])['e3'], _rows(self.current)['e3'])
                self.assertEqual(undo['expected']['lookup_nodes'], 5)
                self.assertEqual(undo['expected']['lookup_edges'], 3)
                redo = plan(self.current, undo['expected'], undo['expected'], operation=self.operation)
                self.assertEqual(redo['expected'], self.current)

    def test_unrelated_existing_occurrence_can_disappear(self):
        self.current = remove(self.current, {'n3', 'p3', 'e2'})
        undo = self.planned()
        self.assertTrue(undo['compatible'])
        self.assertNotIn('n3', _rows(undo['expected']))
        self.assertEqual(undo['expected']['lookup_edges'], 1)

    def test_actual_common_row_collateral_and_later_independent_field(self):
        _rows(self.after)['n2']['size'] = [15, 9]
        self.current = deepcopy(self.after)
        _rows(self.current)['n2']['comment'] = 'later'
        undo = self.planned()
        self.assertTrue(undo['compatible'])
        self.assertEqual(_rows(undo['expected'])['n2']['size'], [9, 9])
        self.assertEqual(_rows(undo['expected'])['n2']['comment'], 'later')
        redo = plan(self.current, undo['expected'], undo['expected'], operation=self.operation)
        self.assertEqual(redo['expected'], self.current)

    def test_common_row_collateral_overlap_or_identity_conflicts(self):
        _rows(self.after)['n3']['comment'] = 'actual store collateral'
        for field, value in [('comment', 'later'), ('native_class', 'Different'), ('pins', [])]:
            with self.subTest(field=field):
                self.current = deepcopy(self.after)
                _rows(self.current)['n3'][field] = value
                self.assertFalse(self.planned()['compatible'])

    def test_common_row_collateral_missing_or_missing_dependency_conflicts(self):
        _rows(self.after)['n3']['comment'] = 'actual store collateral'
        for ref in ('n3', 'p3'):
            with self.subTest(ref=ref):
                self.current = remove(self.after, {ref, 'e2'})
                self.assertFalse(self.planned()['compatible'])

    def test_reappeared_reference_is_conflict_not_idempotent_success(self):
        self.current = deepcopy(self.before)
        self.assertFalse(self.planned()['compatible'])
        self.assertIsNone(self.planned()['expected'])

    def test_every_external_endpoint_owner_and_pin_anchor_is_guarded(self):
        for ref, field, value in [('p1', 'output', False), ('p1', 'owner', 'n3'),
                                 ('p2', 'input', False), ('n1', 'pins', []),
                                 ('n2', 'native_class', 'Different')]:
            with self.subTest(ref=ref, field=field):
                self.current = deepcopy(self.after)
                _rows(self.current)[ref][field] = value
                self.assertFalse(self.planned()['compatible'])
        for ref in ('p1', 'p2', 'n1', 'n2'):
            with self.subTest(missing=ref):
                self.current = remove(self.after, {ref, 'e2'})
                self.assertFalse(self.planned()['compatible'])

    def test_restored_input_occupied_conflicts_but_other_source_fanout_survives(self):
        add_independent(self.current)
        _rows(self.current)['e3']['target'] = 'p2'
        self.assertIn({'code': 'RESTORED_INPUT_OCCUPIED', 'ref': 'e1'}, self.planned()['conflicts'])
        _rows(self.current)['e3']['target'] = 'p5'
        _rows(self.current)['e3']['source'] = 'p1'
        self.assertTrue(self.planned()['compatible'])

    def test_new_edge_referencing_deleted_or_to_be_deleted_pin_conflicts(self):
        self.delete_setup()
        add_independent(self.current)
        _rows(self.current)['e3']['source'] = 'p1'
        self.assertIn({'code': 'NEW_PIN_DEPENDENCY', 'ref': 'e3'}, self.planned()['conflicts'])
        restored = deepcopy(self.before)
        add_independent(restored)
        _rows(restored)['e3']['source'] = 'p1'
        redo = plan(self.after, self.before, restored, operation=self.operation)
        self.assertIn({'code': 'NEW_PIN_DEPENDENCY', 'ref': 'e3'}, redo['conflicts'])

    def test_later_edits_on_restored_row_prevent_redo_deletion(self):
        self.delete_setup()
        for ref, field, value in [('n1', 'comment', 'later'), ('p1', 'type', 'changed'),
                                 ('e1', 'route', [[99, 99], [20, 99]])]:
            with self.subTest(ref=ref):
                now = deepcopy(self.before)
                _rows(now)[ref][field] = value
                redo = plan(self.after, self.before, now, operation=self.operation)
                self.assertFalse(redo['compatible'])
                self.assertIn({'code': 'ADDED_ROW_CONFLICT', 'ref': ref}, redo['conflicts'])

    def test_model_declaration_identity_is_required_for_occurrence_restoration(self):
        self.delete_setup()
        for ref, field, value in [('m1', 'oid', 'different'), ('m1', 'kind', 'node')]:
            self.current = deepcopy(self.after)
            _rows(self.current)[ref][field] = value
            if field == 'kind':
                self.current['lookup_nodes'] += 1
            self.assertFalse(self.planned()['compatible'])
        self.current = remove(self.after, {'m1'})
        self.assertFalse(self.planned()['compatible'])

    def test_noop_mixed_creation_deletion_or_wrong_operation_refuses(self):
        with self.assertRaises(ValueError): plan(self.before, self.before, self.before, operation=self.operation)
        add_independent(self.after)
        with self.assertRaises(ValueError): self.planned()
        self.setUp()
        with self.assertRaises(ValueError): plan(self.before, self.after, self.current, operation='connect_path')
        with self.assertRaises(ValueError): plan(self.before, self.after, self.current, operation='delete_node')

    def test_disconnect_cannot_own_more_than_one_edge(self):
        self.after = remove(self.before, {'e1', 'e2'})
        with self.assertRaises(ValueError): self.planned()

    def test_delete_requires_declared_owned_pins_and_all_incident_edges(self):
        for refs in ({'n1', 'p1', 'e1'}, {'n1', 'e1', 'e2'}, {'n1', 'p2', 'e1', 'e2'}, {'p1', 'e1', 'e2'}):
            with self.subTest(refs=refs):
                after = remove(self.before, refs)
                with self.assertRaises(ValueError): plan(self.before, after, after, operation='delete_node')
        self.delete_setup()
        self.before['entries'].append({'kind': 'pin', 'ref': 'p_extra', 'owner': 'n1', 'input': False, 'output': True})
        with self.assertRaises(ValueError): self.planned()

    def test_delete_cannot_own_model_declaration_or_unrelated_edge(self):
        self.delete_setup()
        self.after = remove(self.after, {'m1'})
        with self.assertRaises(ValueError): self.planned()
        self.before = graph()
        add_independent(self.before)
        self.after = remove(self.before, {'n1', 'p1', 'e1', 'e2', 'e3'})
        with self.assertRaises(ValueError): self.planned()

    def test_comment_occurrence_without_pins_can_be_restored_and_removed(self):
        for graph_value in (self.before, self.after):
            graph_value['entries'].append({'kind': 'node', 'ref': 'n_comment', 'pins': [], 'comment': 'hello'})
            graph_value['lookup_nodes'] += 1
            graph_value['entries'].sort(key=lambda row: row['ref'])
        self.after = remove(self.before, {'n_comment'})
        self.operation = 'delete_node'
        self.current = deepcopy(self.after)
        self.assertEqual(self.planned()['expected'], self.before)

    def test_original_common_row_identity_or_endpoint_mutation_is_not_collateral(self):
        for ref, field, value in [('n2', 'pins', []), ('p1', 'owner', 'n3'), ('e2', 'source', 'p2')]:
            with self.subTest(ref=ref, field=field):
                self.after = remove(self.before, {'e1'})
                _rows(self.after)[ref][field] = value
                with self.assertRaises(ValueError): self.planned()

    def test_original_dependency_kind_direction_and_owner_registration_refuse(self):
        for ref, field, value in [('e1', 'source', 'n1'), ('e1', 'source', None),
                                 ('p1', 'output', False), ('p2', 'input', False),
                                 ('n1', 'pins', []), ('n1', 'pins', ['p1', 'p1'])]:
            with self.subTest(ref=ref, field=field):
                self.before = graph()
                _rows(self.before)[ref][field] = value
                self.after = remove(self.before, {'e1'})
                self.current = deepcopy(self.after)
                with self.assertRaises(ValueError): self.planned()

    def test_original_multiple_drivers_cannot_claim_ordinary_single_edge_patch(self):
        self.before['entries'].append({**_rows(self.before)['e1'], 'ref': 'e_duplicate'})
        self.before['lookup_edges'] += 1
        self.after = remove(self.before, {'e1'})
        self.current = deepcopy(self.after)
        with self.assertRaises(ValueError): self.planned()

    def test_count_delta_boolean_negative_and_underreported_current_refuse(self):
        for which, field, value in [('after', 'lookup_edges', 2), ('before', 'lookup_edges', True),
                                  ('current', 'lookup_nodes', -1), ('current', 'lookup_edges', 0)]:
            with self.subTest(which=which, field=field):
                self.setUp()
                getattr(self, which)[field] = value
                with self.assertRaises(ValueError): self.planned()

    def test_partial_observation_lookup_total_is_not_assumed_to_equal_rows(self):
        for value in (self.before, self.after, self.current):
            value['lookup_nodes'] += 100
            value['lookup_edges'] += 100
        self.assertTrue(self.planned()['compatible'])
        self.assertEqual(self.planned()['expected']['lookup_edges'], 102)

    def test_metadata_mutation_or_wrong_shape_refuses_and_current_generation_conflicts(self):
        self.after['generation'] = 8
        with self.assertRaises(ValueError): self.planned()
        self.setUp()
        self.current['generation'] = 8
        self.assertFalse(self.planned()['compatible'])
        self.current.pop('targets')
        with self.assertRaises(ValueError): self.planned()
        self.setUp()
        for value in (self.before, self.after, self.current):
            value.pop('lookup_edges')
        with self.assertRaises(ValueError): self.planned()

    def test_absent_null_boolean_and_integer_collateral_remain_distinct(self):
        _rows(self.after)['n2']['comment'] = None
        self.current = deepcopy(self.after)
        self.assertNotIn('comment', _rows(self.planned()['expected'])['n2'])
        _rows(self.current)['n2']['comment'] = False
        self.assertFalse(self.planned()['compatible'])
        _rows(self.before)['n2']['comment'] = False
        _rows(self.after)['n2']['comment'] = True
        self.current = deepcopy(self.after)
        _rows(self.current)['n2']['comment'] = 1
        self.assertFalse(self.planned()['compatible'])

    def test_durable_inverse_expected_and_analysis_are_independently_recomputed(self):
        self.delete_setup()
        add_independent(self.current)
        value = self.planned()
        prep = {'before': deepcopy(self.current), 'inverse_expected': value['expected'],
                'inverse_analysis': summary(value, self.current)}
        self.assertEqual(expected_from_preparation(self.before, self.after, prep, operation=self.operation), value['expected'])
        _rows(prep['inverse_expected'])['n4']['literal'] = 'clobbered'
        with self.assertRaises(ValueError): expected_from_preparation(self.before, self.after, prep, operation=self.operation)

    def test_output_observations_do_not_alias_input_rows(self):
        wanted = self.planned()['expected']
        _rows(wanted)['n1']['pins'].append('private output change')
        _rows(wanted)['e1']['route'][0][0] = 999
        self.assertEqual(self.before, graph())
        self.assertNotIn('e1', _rows(self.current))

    def test_connect_owned_edge_inverse_redo_and_later_route_conflict(self):
        before, after = deepcopy(self.after), deepcopy(self.before)
        now = deepcopy(after)
        _rows(now)['n1']['comment'] = 'independent'
        undo = plan(before, after, now, operation='connect_data')
        self.assertTrue(undo['compatible'])
        self.assertNotIn('e1', _rows(undo['expected']))
        self.assertEqual(_rows(undo['expected'])['n1']['comment'], 'independent')
        redo = plan(now, undo['expected'], undo['expected'], operation='connect_data')
        self.assertEqual(redo['expected'], now)
        _rows(now)['e1']['route'] = [[100, 100], [200, 100]]
        self.assertFalse(plan(before, after, now, operation='connect_data')['compatible'])

    def test_create_graphical_occurrence_inverse_redo_with_existing_model(self):
        created = graph()
        absent = remove(created, {'n1', 'p1', 'e1', 'e2'})
        current = deepcopy(created)
        _rows(current)['n2']['comment'] = 'independent'
        undo = plan(absent, created, current, operation='create_block')
        self.assertTrue(undo['compatible'])
        self.assertIn('m1', _rows(undo['expected']))
        self.assertNotIn('n1', _rows(undo['expected']))
        redo = plan(current, undo['expected'], undo['expected'], operation='create_block')
        self.assertEqual(redo['expected'], current)

    def test_create_owned_declaration_is_reversible_without_aliasing_inputs(self):
        created = graph()
        absent = remove(created, {'m1', 'n1', 'p1', 'e1', 'e2'})
        inputs = deepcopy([absent, created, created])
        frozen = deepcopy(inputs)
        undo = plan(*inputs, operation='create_block')
        self.assertTrue(undo['compatible'])
        self.assertNotIn('m1', _rows(undo['expected']))
        redo = plan(created, undo['expected'], undo['expected'], operation='create_block')
        self.assertEqual(redo['expected'], created)
        self.assertEqual(inputs, frozen)

    def test_new_occurrence_of_created_model_prevents_declaration_removal(self):
        created = graph()
        absent = remove(created, {'m1', 'n1', 'p1', 'e1', 'e2'})
        current = deepcopy(created)
        current['entries'].append({'kind': 'node', 'ref': 'n6', 'pins': [], 'model_ref': 'm1'})
        current['lookup_nodes'] += 1
        undo = plan(absent, created, current, operation='create_block')
        self.assertFalse(undo['compatible'])
        self.assertIn({'code': 'NEW_MODEL_DEPENDENCY', 'ref': 'n6'}, undo['conflicts'])

    def test_creation_cannot_own_unbound_or_multiple_model_declarations(self):
        created = graph()
        absent = remove(created, {'m1', 'n1', 'p1', 'e1', 'e2'})
        _rows(created)['n1'].pop('model_ref')
        with self.assertRaises(ValueError): plan(absent, created, created, operation='create_block')
        created = graph()
        created['entries'].append({'kind': 'model', 'ref': 'm_extra'})
        with self.assertRaises(ValueError): plan(absent, created, created, operation='create_block')

    def test_later_created_declaration_change_prevents_inverse(self):
        created = graph()
        absent = remove(created, {'m1', 'n1', 'p1', 'e1', 'e2'})
        current = deepcopy(created)
        _rows(current)['m1']['parameter'] = True
        self.assertFalse(plan(absent, created, current, operation='create_block')['compatible'])

    def test_external_endpoint_model_identity_is_guarded_without_clobbering_values(self):
        for missing in (False, True):
            self.current = remove(self.after, {'m1'}) if missing else deepcopy(self.after)
            if not missing:
                _rows(self.current)['m1']['oid'] = 'replaced'
            self.assertIn({'code': 'ENDPOINT_MODEL_CONFLICT', 'ref': 'e1', 'dependency': 'm1'}, self.planned()['conflicts'])
        self.current = deepcopy(self.after)
        _rows(self.current)['m1']['initial'] = 'independent model edit'
        self.assertTrue(self.planned()['compatible'])
        self.assertEqual(_rows(self.planned()['expected'])['m1']['initial'], 'independent model edit')

    def test_new_pin_cannot_depend_on_restored_or_to_be_removed_occurrence(self):
        self.delete_setup()
        self.current['entries'].append({'kind': 'pin', 'ref': 'p_new', 'owner': 'n1', 'input': False, 'output': True})
        self.assertIn({'code': 'NEW_NODE_DEPENDENCY', 'ref': 'p_new'}, self.planned()['conflicts'])
        current = deepcopy(self.before)
        current['entries'].append({'kind': 'pin', 'ref': 'p_new', 'owner': 'n1', 'input': False, 'output': True})
        redo = plan(self.after, self.before, current, operation=self.operation)
        self.assertIn({'code': 'NEW_NODE_DEPENDENCY', 'ref': 'p_new'}, redo['conflicts'])


if __name__ == '__main__':
    unittest.main()
