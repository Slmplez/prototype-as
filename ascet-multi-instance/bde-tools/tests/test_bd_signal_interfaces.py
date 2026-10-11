import copy
import unittest
from bd_signal_interfaces import class_bindings, compare_public


def fixture():
    return {'models': [], 'formals': [], 'definitions': [{
        'oid': 'definition-1', 'path': 'Library\\Worker', 'native_class': 'EtasAPIClassBDE', 'fields': [],
        'formals': [{'alias': 'argument-1', 'method_alias': 'method-1', 'name': 'calc/x',
                     'argument': True, 'return': False, 'local': False},
                    {'alias': 'argument-2', 'method_alias': 'method-2', 'name': 'calc/x',
                     'argument': True, 'return': False, 'local': False}]}],
        'nodes': [{'scope': 'Main', 'id': 1, 'definition_oid': 'definition-1', 'hierarchy': False, 'hierarchy_pin': False}],
        'pins': [{'scope': 'Main', 'id': 2, 'owner': 1, 'name': 'calc/x', 'input': True, 'output': False,
                  'method_alias': 'method-2', 'formal_alias': 'argument-2'}],
        'edges': []}


class SignalInterfacesTests(unittest.TestCase):
    def test_identical_names_resolve_by_both_native_aliases(self):
        result = class_bindings(fixture())
        self.assertEqual(result['matched'], 1)
        self.assertEqual(result['bindings'][0]['formal']['alias'], 'argument-2')
        self.assertFalse(result['bindings'][0]['editable'])
        self.assertEqual(result['bindings'][0]['body_dataflow'], 'not_collected')

    def test_same_definition_instances_remain_separate(self):
        data = fixture()
        data['nodes'].append({**data['nodes'][0], 'id': 3})
        data['pins'].append({**data['pins'][0], 'id': 4, 'owner': 3})
        result = class_bindings(data)
        self.assertEqual(result['matched'], 2)
        self.assertEqual([row['instance_node_id'] for row in result['bindings']], [1, 3])

    def test_duplicate_formal_identity_is_ambiguous(self):
        data = fixture()
        data['definitions'][0]['formals'].append(copy.deepcopy(data['definitions'][0]['formals'][1]))
        result = class_bindings(data)
        self.assertEqual(result['unresolved'], 1)
        self.assertEqual(result['bindings'][0]['reason'], 'ambiguous_alias')

    def test_selector_is_not_treated_as_signal(self):
        data = fixture()
        data['pins'][0].update(input=False, output=False)
        result = class_bindings(data)
        self.assertEqual(result['matched'], 0)
        self.assertEqual(result['bindings'][0]['reason'], 'method_selector_not_data_pin')

    def test_same_ids_in_different_hierarchies_do_not_merge(self):
        data = fixture()
        data['nodes'].append({**data['nodes'][0], 'scope': 'Main/h3'})
        data['pins'].append({**data['pins'][0], 'scope': 'Main/h3'})
        self.assertEqual(class_bindings(data)['matched'], 2)
        data['pins'].append(copy.deepcopy(data['pins'][0]))
        with self.assertRaisesRegex(ValueError, 'Duplicate pin'):
            class_bindings(data)

    def test_multiedge_coverage_does_not_hide_dropped_edges(self):
        data = fixture()
        edge = {'scope': 'Main', 'source': 5, 'target': 2, 'type': 2}
        data['edges'] = [edge, copy.deepcopy(edge)]
        public = copy.deepcopy(data)
        public['edges'].pop()
        self.assertFalse(compare_public(data, public)['fields']['edges'])

    def test_scope_and_direction_are_separate_fields(self):
        data = fixture()
        data['models'] = [{'alias': 'message-1', 'name': 'Signal', 'scope': 'imported', 'send': True,
                           'receive': False, 'send_receive': False, 'message': True}]
        public = copy.deepcopy(data)
        public['models'][0].update(scope='exported')
        self.assertFalse(compare_public(data, public)['fields']['models'])

    def test_field_access_requires_native_aliases_and_direction(self):
        data = fixture()
        data['definitions'][0]['fields'] = [{'alias': 'field-1', 'name': 'State'}]
        data['pins'][0].update(method_alias='field-1', formal_alias='field-1', input=False, output=True, get_access=True)
        self.assertEqual(class_bindings(data)['bindings'][0]['interface_kind'], 'field_access')
        data['pins'][0].update(get_access=False)
        self.assertEqual(class_bindings(data)['matched'], 0)

    def test_deferred_state_machine_interface_stays_explicit(self):
        data = fixture()
        data['definitions'][0]['native_class'] = 'EtasAPIStateMachine'
        result = class_bindings(data)
        self.assertEqual(result['matched'], 0)
        self.assertEqual(result['bindings'][0]['reason'], 'state_machine_interface_deferred')


if __name__ == '__main__':
    unittest.main()
