import copy
import unittest
from bd_class_body import formal_body_bindings, instance_body_segments, compare_class_public


def graphs():
    formals = [dict(alias='arg1', method_alias='method1', name='same', argument=True,
                    local=False, **{'return': False, 'in': True, 'out': False, 'in_out': False}),
               dict(alias='ret1', method_alias='method1', name='same', argument=False,
                    local=False, **{'return': True})]
    data = {'models': [], 'formals': formals, 'definitions': [], 'edges': [], 'boundaries': [],
            'nodes': [dict(scope='Main', id=i, hierarchy=False, hierarchy_pin=False, model_alias=alias)
                      for i, alias in ((1, 'arg1'), (3, 'ret1'))],
            'pins': [dict(scope='Main', owner=1, id=2, input=False, output=True, get_access=True, set_access=False),
                     dict(scope='Main', owner=3, id=4, input=True, output=False, get_access=False, set_access=True)]}
    child = dict(oid='child', snapshot='s_child', interfaces=data)
    parent = dict(oid='parent', snapshot='s_parent', interfaces={'models': [], 'formals': [], 'edges': [],
        'boundaries': [], 'definitions': [dict(oid='child', native_class='EtasAPIClassBDE', formals=copy.deepcopy(formals))],
        'nodes': [dict(scope='Main', id=5, hierarchy=False, hierarchy_pin=False, model_alias='instance1', definition_oid='child')],
        'pins': [dict(scope='Main', owner=5, id=6, input=True, output=False, method_alias='method1', formal_alias='arg1'),
                 dict(scope='Main', owner=5, id=7, input=False, output=True, method_alias='method1', formal_alias='ret1')]})
    return parent, child, dict(owner_oid='parent', definition_oid='child', alias='instance1')


class ClassBodyTests(unittest.TestCase):
    def test_independent_model_and_method_member_oracle_rejects_alias_drift(self):
        _, child, _ = graphs()
        data = child['interfaces']
        public = {'nodes': copy.deepcopy(data['nodes']), 'method_memberships': copy.deepcopy(data['formals'])}
        self.assertTrue(compare_class_public(data, public)['passed'])
        public['nodes'][0]['model_alias'] = 'other'
        self.assertFalse(compare_class_public(data, public)['fields']['occurrence_model_alias'])
        public['method_memberships'][0]['method_alias'] = 'other-method'
        self.assertFalse(compare_class_public(data, public)['fields']['formal_method_membership'])
    def test_directional_argument_and_return_bindings_keep_same_names_distinct(self):
        parent, child, instance = graphs()
        rows = instance_body_segments(parent, child, instance)
        self.assertEqual([(row['parent_pin'], row['body_pin'], row['direction']) for row in rows],
                         [('Main/n5.p6', 'Main/n1.p2', 'parent_to_body'), ('Main/n5.p7', 'Main/n3.p4', 'body_to_parent')])
        self.assertEqual(formal_body_bindings(child['interfaces'])['matched'], 2)

    def test_in_out_maps_each_access_direction_separately(self):
        _, child, _ = graphs()
        data = child['interfaces']
        data['formals'][0].update(out=True, in_out=True)
        data['pins'].append(dict(scope='Main', owner=1, id=8, input=True, output=False, set_access=True, get_access=False))
        result = formal_body_bindings(data)
        self.assertEqual(result['matched'], 3)
        self.assertEqual(result['bindings'][-1]['direction'], 'body_to_parent')

    def test_formal_or_instance_alias_drift_does_not_match_by_name(self):
        parent, child, instance = graphs()
        instance['alias'] = 'instance2'
        self.assertEqual(instance_body_segments(parent, child, instance), [])
        instance['alias'] = 'instance1'
        parent['interfaces']['pins'][0]['method_alias'] = 'different-method'
        self.assertEqual(len(instance_body_segments(parent, child, instance)), 1)

    def test_changed_formal_interface_is_rejected(self):
        parent, child, instance = graphs()
        child['interfaces']['formals'][0]['name'] = 'external'
        with self.assertRaisesRegex(ValueError, 'observations disagree'):
            instance_body_segments(parent, child, instance)

    def test_selector_and_out_only_reads_are_not_inferred_boundaries(self):
        _, child, _ = graphs()
        data = child['interfaces']
        data['formals'][0].update(**{'in': False, 'out': True})
        data['pins'][1].update(input=False, output=False)
        result = formal_body_bindings(data)
        self.assertEqual(result['matched'], 0)
        self.assertEqual(result['unresolved'], 2)


if __name__ == '__main__':
    unittest.main()
