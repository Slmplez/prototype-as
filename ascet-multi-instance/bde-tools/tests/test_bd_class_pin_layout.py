"""Pin coordinate proposals must preserve independent axes and reject ambiguous lineage."""
from copy import deepcopy
import unittest

from bd_class_pin_layout import plan_pin_layout, inspect_native_layout
from bd_source_inverse_oracle import Node
from test_bd_source_dependencies import alias, array, dictionary, encode, number


def fixture(position, added=False, model_alias='dd', pin_id=3, visible=True):
    descriptor = lambda identifier, point: array([number(identifier), ('symbol', 'Symbol', 'right'),
        Node('Point', 'fields', {'x': number(point[0]), 'y': number(point[1])}),
        ('boolean', visible), ('boolean', False), ('boolean', False)])
    returns = dictionary({alias('aa'): dictionary({alias('cc'): descriptor(pin_id, position)})})
    selectors = dictionary({alias('aa'): dictionary({alias('bb'): descriptor(2, [30, 150]),
        **({alias('ee'): descriptor(4, [30, 160])} if added else {})})})
    block = Node('SGCodeGODB', 'fields', {'own': array([number(1)]), 'aliasName': alias(model_alias),
        'returnPorts': returns, 'selectorPorts': selectors}, 1,
        tuple(port.value[0] for table in (returns, selectors) for ports in table.value.values() for port in ports.value.values()))
    basic = Node('SGCodeGODB', 'fields', {'own': array([number(-1)]), 'aliasName': ('nil',),
        'returnPorts': dictionary({}), 'selectorPorts': dictionary({})}, -1, ())
    graph = encode(Node('SGTopGraphicsBlockDB', 'fields', {'graphicBlock': basic, 'blocks': array([block]),
                   'connections': array([]), 'others': array([])}))
    root_fields = dict(graph['nodes'][0]['fields'])
    node_ref = graph['nodes'][root_fields['blocks'][1] - 1]['items'][0][1]
    witness = {'profile': 'native_storage_return_witness_v1', 'oid': 'owner', 'generation': 7,
        'scope_count': 1, 'member_count': 1, 'native_storage_return_calls': 2,
        'expected_members': [{'scope': 'Main', 'native_key': 'Main/n1', 'kind': 'node', 'native_class': 'SGCodeGO'}],
        'source_graph': deepcopy(graph), 'complete_native_members': True, 'live_original_unchanged': True,
        'native_bindings_sealed': True, 'model_setters_called': 0, 'store_called': False, 'write_authorized': False,
        'native_merge_executor_available': False, 'private_normalization_changes': [],
        'private_normalization_inverse_steps': 0, 'private_normalization_restored': True,
        'witnesses': [{'scope': 'Main', 'cohort': kind, 'origin': 'native_storage_return',
                      'kind': 'node' if kind == 'blocks' else 'scope_root', 'native_key': key,
                      'native_class': 'SGCodeGO', 'storage_class': 'SGCodeGODB',
                      'source_ref': ref, 'parent_ref': 1, 'native_parent_verified': True}
            for kind, key, ref in (('graphicBlock', None, root_fields['graphicBlock'][1]), ('blocks', 'Main/n1', node_ref))]}
    return graph, witness


class ClassPinLayoutTests(unittest.TestCase):
    def setUp(self):
        self.sources, self.witnesses = {}, {}
        for phase, position, added in (('original', [170, 180], False), ('applied', [170, 190], True),
                                      ('current', [175, 190], True), ('candidate', [175, 180], False)):
            source, witness = fixture(position, added)
            self.sources[phase] = source
            if phase != 'candidate':
                self.witnesses[phase] = witness
        self.scopes = {'Main': {'entries': [{'kind': 'model', 'ref': 'm_dd', 'definition': {'oid': 'definition'}},
            {'kind': 'node', 'ref': 'n1', 'native_class': 'SGCodeGO', 'model_ref': 'm_dd', 'pins': ['p2', 'p3', 'p4']},
            *[{'kind': 'pin', 'ref': 'p' + str(index), 'owner': 'n1'} for index in (2, 3, 4)]]}}

    def check(self, keys=None):
        return plan_pin_layout(self.sources, 'owner', definition_oid='definition', current_scopes=self.scopes,
                               storage_witnesses=self.witnesses, target_keys=['Main/p4'] if keys is None else keys)

    def replace(self, phase, position, **kwargs):
        source, witness = fixture(position, added=phase in ('applied', 'current'), **kwargs)
        self.sources[phase] = source
        if phase != 'candidate':
            self.witnesses[phase] = witness

    def test_independent_x_is_preserved_while_creation_y_is_restored(self):
        proof = self.check()
        returned = next(row for row in proof['pins'] if row['native_key'] == 'Main/p3')
        self.assertEqual(returned['merged'], [175, 180])
        self.assertEqual(returned['restore_axes'], ['y'])
        self.assertEqual(returned['preserved_axes'], ['x'])
        self.assertEqual(proof['coordinate_restores'], 1)
        self.assertTrue(proof['compatible'])
        self.assertTrue(proof['native_binding_required'])
        self.assertFalse(proof['write_authorized'])

    def test_same_axis_later_edit_is_a_conflict_without_any_authority(self):
        self.replace('current', [175, 195])
        proof = self.check()
        self.assertFalse(proof['compatible'])
        self.assertEqual(proof['conflicts'][0]['field'], 'y')
        self.assertEqual(proof['model_setters_called'], 0)

    def test_already_restored_coordinate_is_not_overwritten(self):
        self.replace('current', [175, 180])
        returned = next(row for row in self.check()['pins'] if row['native_key'] == 'Main/p3')
        self.assertEqual(returned['restore_axes'], [])
        self.assertEqual(returned['already_restored_axes'], ['y'])

    def test_candidate_cannot_erase_an_independent_coordinate(self):
        self.replace('candidate', [170, 180])
        with self.assertRaisesRegex(ValueError, 'complete merged candidate'):
            self.check()

    def test_same_scope_key_does_not_prove_declaration_identity(self):
        self.replace('applied', [170, 190], model_alias='ff')
        with self.assertRaisesRegex(ValueError, 'declaration alias changed'):
            self.check()

    def test_same_formal_alias_does_not_prove_pin_identity(self):
        self.replace('applied', [170, 190], pin_id=5)
        with self.assertRaisesRegex(ValueError, 'identifier, direction or visibility'):
            self.check()

    def test_wrong_native_storage_parent_and_class_refuse(self):
        for field, replacement in (('parent_ref', 2), ('native_class', 'SGDataGO')):
            with self.subTest(field=field):
                witness = deepcopy(self.witnesses['current'])
                self.witnesses['current']['witnesses'][1][field] = replacement
                with self.assertRaises(ValueError):
                    self.check()
                self.witnesses['current'] = witness

    def test_target_requires_current_unique_parent_and_represented_class(self):
        for keys in (['Main/p4', 'Main/p4'], ['Main/p9'], ['Main/h1/p4'], ['Main/n1']):
            with self.subTest(keys=keys), self.assertRaises(ValueError):
                self.check(keys)
        self.scopes['Main']['entries'][0]['definition']['oid'] = 'foreign'
        with self.assertRaisesRegex(ValueError, 'represented Class'):
            self.check()

    def test_matching_definition_without_drawn_target_has_no_layout_setters(self):
        self.sources['candidate'] = deepcopy(self.sources['current'])
        proof = plan_pin_layout(self.sources, 'owner', definition_oid='owner', current_scopes=self.scopes,
                                storage_witnesses=self.witnesses, target_keys=[])
        self.assertEqual(proof['pins'], [])
        self.assertEqual(proof['coordinate_restores'], 0)

    def test_existing_input_cannot_replace_the_created_input_target(self):
        with self.assertRaisesRegex(ValueError, 'exact newly added'):
            self.check(['Main/p2'])

    def test_empty_caller_cannot_skip_layout_obligations(self):
        with self.assertRaisesRegex(ValueError, 'Empty layout plan'):
            self.check([])

    def test_hidden_pin_keeps_complete_source_obligation_and_native_binding_requirement(self):
        for phase, position in (('original', [170, 180]), ('applied', [170, 190]),
                                ('current', [175, 190]), ('candidate', [175, 180])):
            self.replace(phase, position, visible=False)
        self.scopes['Main']['entries'] = [entry for entry in self.scopes['Main']['entries'] if entry['ref'] != 'p3']
        self.scopes['Main']['entries'][1]['pins'].remove('p3')
        proof = self.check()
        returned = next(row for row in proof['pins'] if row['native_key'] == 'Main/p3')
        self.assertEqual(returned['current_membership'], 'hidden_storage_native_child_witness')
        self.assertEqual(proof['existing_pins_checked'], 2)
        self.assertEqual(proof['coordinate_restores'], 1)
        self.assertTrue(proof['native_binding_required'])

    def test_visible_pin_cannot_use_hidden_storage_exemption(self):
        self.scopes['Main']['entries'] = [entry for entry in self.scopes['Main']['entries'] if entry['ref'] != 'p3']
        self.scopes['Main']['entries'][1]['pins'].remove('p3')
        with self.assertRaisesRegex(ValueError, 'Visible existing pin'):
            self.check()

    def native(self, plan):
        fields = ('node_key', 'native_key', 'port_kind', 'method_alias', 'formal_alias', 'pin_id', 'model_alias',
                  'original', 'applied', 'current', 'merged', 'restore_axes', 'preserved_axes', 'already_restored_axes')
        return {'profile': 'class_native_pin_layout_plan_v1', 'oid': 'owner', 'generation': 7,
                'compatible': True, 'conflicts': [], 'affected_callers': plan['affected_callers'],
                'existing_pins_checked': plan['existing_pins_checked'],
                'pins': [{**{field: deepcopy(row[field]) for field in fields}, 'native_binding_verified': True,
                          'memo_owned_connector_verified': True, 'connector_class': 'SGArgumentConnectorGO',
                          'position_field_index': 16} for row in plan['pins']],
                'planned_coordinate_setters': 1, 'actual_coordinate_setters': 1,
                'model_setters_called': 0, 'write_authorized': False, 'native_merge_executor_available': False}

    def test_native_actions_require_complete_independent_plan_and_actual_position_diff(self):
        plan = self.check()
        changes = [{'kind': 'fields', 'native_class': 'SGArgumentConnectorGO', 'field': 'position',
                    'native_key': 'Main/p3/external', 'index': 16, 'before_class': 'Point', 'after_class': 'Point'}]
        proof = inspect_native_layout(self.native(plan), 'owner', 7, plan=plan, actual_changes=changes)
        self.assertTrue(proof['complete_independent_proposal_verified'])
        self.assertTrue(proof['actual_private_position_diff_verified'])
        with self.assertRaisesRegex(ValueError, 'private diff'):
            inspect_native_layout(self.native(plan), 'owner', 7, plan=plan, actual_changes=[])
        for patch in ({'native_key': 'Main/p9/external'}, {'index': 15}, {'native_class': 'SGBlockConnectorGO'}):
            with self.subTest(patch=patch), self.assertRaisesRegex(ValueError, 'private diff'):
                inspect_native_layout(self.native(plan), 'owner', 7, plan=plan, actual_changes=[{**changes[0], **patch}])

    def test_native_coordinate_or_formal_claim_cannot_replace_independent_values(self):
        plan = self.check()
        for patch in ({'merged': [170, 180]}, {'formal_alias': 'bytes:ff'}, {'node_key': 'Main/n2'}):
            value = self.native(plan)
            value['pins'][0].update(patch)
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                inspect_native_layout(value, 'owner', 7, plan=plan)

    def test_native_binding_authority_and_setter_count_forgery_refuse(self):
        plan = self.check()
        for patch in ({'write_authorized': True}, {'actual_coordinate_setters': True},
                      {'planned_coordinate_setters': 0}, {'generation': 8}, {'generation': True}):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                inspect_native_layout({**self.native(plan), **patch}, 'owner', 7, plan=plan)
        for flag in ('native_binding_verified', 'memo_owned_connector_verified'):
            value = self.native(plan)
            value['pins'][0][flag] = False
            with self.subTest(flag=flag), self.assertRaises(ValueError):
                inspect_native_layout(value, 'owner', 7, plan=plan)
        value = self.native(plan)
        value['pins'][0]['connector_class'] = 'ForeignConnectorGO'
        with self.assertRaises(ValueError):
            inspect_native_layout(value, 'owner', 7, plan=plan)


if __name__ == '__main__':
    unittest.main()
