"""Creation contract and adversarial effects on synthetic owners, never online evidence."""
from copy import deepcopy
import unittest
from unittest.mock import patch

import bd_class_creation as creation
from bd_class_selector import select_method
from bd_class_study_journal import dispatch_plan
from bde_class_interface_probe import public_projection


def example():
    operation = {'op': creation.OPERATION, 'selector': {'diagram': 'Main', 'method_alias': 'bytes:01'},
        'name': 'Extra', 'model_type': 'cont', 'layout_policy': 'follow_verified_pins_and_orthogonal_routes',
        'sequence_policy': 'no_implicit_changes'}
    formal = {'alias': 'bytes:02', 'name': 'calc/Signal', 'slot': 'argument', 'index': 1,
        'model_type': 'cont', 'owner_matches': True, 'native_class': 'SGMethodArgument', 'in': True, 'out': False, 'in_out': False}
    method = {'alias': 'bytes:01', 'name': 'calc', 'diagram': 'Main', 'owner_matches': True, 'arguments': [formal], 'return': None}
    signature = {'oid': 'definition', 'path': 'BDE_Tool_Experiments\\Trial_Class', 'methods': [method], 'references': []}
    callers = []
    for oid, scope in (('caller1', 'Main'), ('caller2', 'Main/h1')):
        callers.append({'oid': oid, 'component': 'BDE_Tool_Experiments\\Trial_' + oid,
            'scopes': [{'diagram': scope, 'occurrences': [{'node': 1, 'name': 'Instance', 'model_ref': 'm_11', 'pins': [
                {'formal_alias': 'bytes:02', 'method_alias': 'bytes:01', 'id': 5, 'name': 'calc/Signal', 'input': True, 'output': False}]}]}]})
    before = {'signature': signature, 'discovery': {'callers': callers}, 'configurations': {},
        'public_signature': public_projection([method]), 'callers': [{'component': row['component']} for row in callers]}
    after = deepcopy(before)
    after['signature']['methods'][0]['arguments'].append({**formal, 'alias': 'bytes:03', 'name': 'calc/Extra', 'index': 2})
    after['public_signature'] = public_projection(after['signature']['methods'])
    for caller in after['discovery']['callers']:
        caller['scopes'][0]['occurrences'][0]['pins'].append({
            'formal_alias': 'bytes:03', 'method_alias': 'bytes:01', 'id': 6, 'name': 'calc/Extra', 'input': True, 'output': False})
    study = {'before': before, 'after': after, 'restored': deepcopy(before),
        'operation': 'closed_create_argument', 'selector': creation.native_selector(operation)}
    owners = []
    for index, caller in enumerate(callers + [{'oid': 'definition', 'component': signature['path']} ]):
        scope = caller['scopes'][0]['diagram'] if index < len(callers) else 'Main'
        entries = [] if index == len(callers) else [
            {'ref': 'n1', 'kind': 'node', 'model_ref': 'm_11', 'pins': ['p5']},
            {'ref': 'p5', 'kind': 'pin', 'owner': 'n1', 'sequence': None}]
        graph = {'diagram': scope, 'generation': 1, 'lookup_nodes': int(bool(entries)), 'lookup_edges': 0, 'entries': entries}
        current = deepcopy(graph)
        current['generation'] = 2
        if index < len(callers):
            current['entries'][0]['pins'].append('p6')
            current['entries'].append({'ref': 'p6', 'kind': 'pin', 'owner': 'n1', 'sequence': None})
        else:
            current['entries'].append({'ref': 'm_03', 'kind': 'model', 'model_type': 'cont'})
        study[f'owner_scopes_before_{index}'] = {scope: graph}
        study[f'owner_scopes_after_{index}'] = {scope: current}
        study[f'owner_scopes_restored_{index}'] = {scope: deepcopy(graph)}
        study[f'caller_restore_{index}'] = 'restored'
        owners.append({'oid': caller['oid'], 'component': caller['component'], 'native_recovery': 'prepared', 'scopes': {scope: graph}})
    return operation, study, {'observation': before, 'owners': owners}


class ClassCreationTests(unittest.TestCase):
    def setUp(self):
        self.operation, self.study, self.observed = example()

    def test_empty_method_can_be_selected_without_a_fake_formal(self):
        signature = deepcopy(self.observed['observation']['signature'])
        signature['methods'][0]['arguments'] = []
        self.assertEqual(select_method(signature, self.operation['selector'])['arguments'], [])
        signature['methods'][0]['owner_matches'] = False
        with self.assertRaises(ValueError):
            select_method(signature, self.operation['selector'])

    def test_unknown_name_type_direction_and_foreign_selector_refused(self):
        for key, value in [('name', 'Bad/Name'), ('name', 'x' * 65), ('model_type', 'enum:unresolved'),
                ('model_type', {}), ('selector', {'diagram': 'Main', 'method_alias': 'calc'}),
                ('selector', {'diagram': 'Other', 'method_alias': 'bytes:01'}), ('sequence_policy', 'allow_unassigned')]:
            with self.subTest(key=key, value=value), self.assertRaises(ValueError):
                creation.validate_operation({**self.operation, key: value})
        with self.assertRaises(ValueError):
            creation.validate_operation({**self.operation, 'direction': 'out'})

    @patch.object(creation, 'NATIVE_WRITE_ACCEPTED', False)
    def test_plan_includes_exact_nested_callers_and_does_not_invent_identity(self):
        value = creation.creation_plan(self.observed, self.operation)
        self.assertEqual(value['planned_input_pin_count'], 2)
        self.assertEqual({row['diagram'] for row in value['resources']}, {'Main', 'Main/h1'})
        self.assertEqual(value['new_formal_alias'], 'assigned_by_native_creation')
        self.assertFalse(value['native_write_accepted'])

    def test_duplicate_name_capacity_incomplete_pin_and_missing_owner_refused(self):
        with self.assertRaisesRegex(ValueError, 'name already exists'):
            creation.creation_plan(self.observed, {**self.operation, 'name': 'Signal'})
        altered = deepcopy(self.observed)
        altered['observation']['signature']['methods'][0]['arguments'] = [
            {**deepcopy(altered['observation']['signature']['methods'][0]['arguments'][0]), 'alias': f'bytes:{i:04x}'} for i in range(256)]
        with self.assertRaisesRegex(ValueError, 'capacity'):
            creation.creation_plan(altered, self.operation)
        altered = deepcopy(self.observed)
        altered['owners'][1]['scopes']['Main/h1']['entries'] = []
        with self.assertRaises(ValueError):
            creation.creation_plan(altered, self.operation)
        altered = deepcopy(self.observed)
        altered['owners'].pop()
        with self.assertRaises(ValueError):
            creation.creation_plan(altered, self.operation)

    def test_actual_full_owner_effects_and_strict_inverse_values(self):
        value = creation.creation_effects(self.study, self.operation, verify_restoration=True)
        self.assertEqual(value['created_input_pins'], 2)
        self.assertEqual(value['formal_alias'], 'bytes:03')
        self.assertTrue(value['native_restoration_verified'])
        self.assertFalse(value['execution_schedule_verified'])

    def test_wrong_new_formal_type_direction_alias_or_order_refused(self):
        for field, value in [('model_type', 'sdisc'), ('in', 1), ('owner_matches', False), ('alias', 'bytes:02'), ('index', 1)]:
            altered = deepcopy(self.study)
            altered['after']['signature']['methods'][0]['arguments'][-1][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['after']['signature']['methods'][0]['arguments'].reverse()
        with self.assertRaises(ValueError):
            creation.creation_effects(altered, self.operation)

    def test_missing_or_wrong_caller_pin_and_omitted_nested_scope_refused(self):
        for field, value in [('formal_alias', 'bytes:99'), ('method_alias', 'bytes:99'), ('id', 5), ('input', False)]:
            altered = deepcopy(self.study)
            altered['after']['discovery']['callers'][1]['scopes'][0]['occurrences'][0]['pins'][-1][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['owner_scopes_after_1'] = {}
        with self.assertRaises(ValueError):
            creation.creation_effects(altered, self.operation)

    def test_unrelated_graph_or_configuration_or_public_changes_refused(self):
        altered = deepcopy(self.study)
        altered['owner_scopes_after_0']['Main']['entries'][0]['name'] = 'changed'
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['after']['configurations']['foreign'] = {}
        with self.assertRaisesRegex(ValueError, 'configurations'):
            creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['after']['public_signature'] = []
        with self.assertRaisesRegex(ValueError, 'public signature'):
            creation.creation_effects(altered, self.operation)

    def test_unrequested_new_node_or_incident_connection_refused(self):
        for entry in ({'ref': 'e1', 'kind': 'edge', 'source': 'p5', 'target': 'p6', 'type': 1, 'route': [[0, 0], [10, 0]]},
                {'ref': 'n9', 'kind': 'node', 'model_ref': 'm_03', 'pins': []}):
            altered = deepcopy(self.study)
            altered['owner_scopes_after_0']['Main']['entries'].append(entry)
            with self.assertRaisesRegex(ValueError, 'cannot introduce nodes or data connections'):
                creation.creation_effects(altered, self.operation)

    def test_json_boolean_integer_changes_are_never_equal_in_signature_configuration_or_graph(self):
        altered = deepcopy(self.study)
        altered['after']['signature']['methods'][0]['arguments'][0]['in'] = 1
        with self.assertRaisesRegex(ValueError, 'Signature changed'):
            creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['before']['configurations'] = {'flag': True}
        altered['after']['configurations'] = {'flag': 1}
        with self.assertRaisesRegex(ValueError, 'configurations'):
            creation.creation_effects(altered, self.operation)
        altered = deepcopy(self.study)
        altered['owner_scopes_before_0']['Main']['entries'][0]['flag'] = True
        altered['owner_scopes_after_0']['Main']['entries'][0]['flag'] = 1
        with self.assertRaisesRegex(ValueError, 'Unexpected graph'):
            creation.creation_effects(altered, self.operation)

    def test_creation_dispatch_plan_has_no_deletion_steps_and_restores_in_reverse(self):
        intent = {'operation': 'closed_create_argument', 'domain': {'oid': 'definition'}}
        plan = dispatch_plan(intent, self.observed['owners'])
        self.assertEqual([row['command'] for row in plan], ['create_argument', 'apply', 'apply', 'apply', 'restore', 'restore', 'restore', 'restore'])
        self.assertEqual([row['oid'] for row in plan[-3:]], ['definition', 'caller2', 'caller1'])

    def test_reloaded_edge_aliases_keep_exact_values_and_multiplicity(self):
        study = deepcopy(self.study)
        edge = {'ref': 'e1', 'kind': 'edge', 'native_class': 'SGConnectionWrapperGO',
                'source': 'p9', 'target': 'p5', 'type': 2, 'route': [[0, 0], [10, 0]]}
        for phase in ('before', 'after', 'restored'):
            graph = study[f'owner_scopes_{phase}_0']['Main']
            graph['entries'].extend([
                {'ref': 'n9', 'kind': 'node', 'pins': ['p9']},
                {'ref': 'p9', 'kind': 'pin', 'owner': 'n9', 'sequence': None},
                {**deepcopy(edge), 'ref': 'e99' if phase == 'after' else 'e1'}])
            graph['lookup_nodes'] += 1
            graph['lookup_edges'] = 1
        effects = creation.creation_effects(study, self.operation, verify_restoration=True)
        self.assertTrue(effects['native_restoration_verified'])
        for key, value in (('source', 'p6'), ('target', 'p9'), ('type', 1), ('route', [[0, 1], [10, 1]])):
            altered = deepcopy(study)
            altered['owner_scopes_after_0']['Main']['entries'][-1][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                creation.creation_effects(altered, self.operation)
        altered = deepcopy(study)
        altered['owner_scopes_after_0']['Main']['entries'].append({**edge, 'ref': 'e100'})
        with self.assertRaises(ValueError):
            creation.creation_effects(altered, self.operation)
        altered['owner_scopes_after_0']['Main']['lookup_edges'] = 2
        with self.assertRaisesRegex(ValueError, 'connection count'):
            creation.creation_effects(altered, self.operation)


if __name__ == '__main__':
    unittest.main()
