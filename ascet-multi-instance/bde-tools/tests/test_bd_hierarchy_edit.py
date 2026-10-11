"""Scope isolation and actual-patch contracts; not online ASCET evidence."""
import copy
import unittest
from bd_edit_journal import JournalError, fingerprint
from bd_structure_journal import postcondition, validate_request
from bd_structure_scope import valid_diagram, CHILD_CREATION_KINDS
import bd_service as service
import bd_structural_tools as tools


def fixture():
    return {'oid': 'oid', 'structure': {'diagram': 'Main/h12/h5', 'generation': 1,
        'diagram_kind': 'block_diagram', 'targets': [], 'boundary_context': [{'hierarchy': 5}],
        'entries': [{'ref': 'n1', 'kind': 'node', 'pins': ['p1']},
            {'ref': 'p1', 'kind': 'pin', 'owner': 'n1', 'input': False, 'output': True},
            {'ref': 'n2', 'kind': 'node', 'pins': ['p2']},
            {'ref': 'p2', 'kind': 'pin', 'owner': 'n2', 'input': True, 'output': False},
            {'ref': 'e1', 'kind': 'edge', 'source': 'p1', 'target': 'p2', 'type': 2}]}}


class HierarchyEditTests(unittest.TestCase):
    def test_scope_is_canonical_and_bounded(self):
        for value in ('Main', 'Main/h0', 'Main/h12/h5', 'Main/h2147483647'):
            self.assertTrue(valid_diagram(value), value)
        for value in (None, '', 'Main/', 'Main/h01', 'Main/h-1', 'Main/h2147483648',
                      'Main/h1/../h2', 'Main/Stage', 'Main' + '/h1' * 17):
            self.assertFalse(valid_diagram(value), value)

    def test_exact_scoped_refs_are_used_for_edit_and_find(self):
        record = fixture()
        action, args, before = tools.plan(record, {'op': 'disconnect_data', 'target': 'Main/h12/h5/e1'})
        self.assertEqual((action, args[1:]), ('disconnect_data', ['e1']))
        self.assertEqual(before['diagram'], 'Main/h12/h5')
        self.assertIn('p1', args[0])
        entries = service.entities(record)
        self.assertIn('Main/h12/h5/e1', entries)
        self.assertNotIn('Main/e1', entries)

    def test_other_scope_or_interface_ref_does_not_match_same_local_id(self):
        for value in ('Main/e1', 'Main/h12/e1', 'Main/h13/h5/e1', 'Main/h12/h5/n1.p1'):
            with self.assertRaises(service.ToolError):
                tools.plan(fixture(), {'op': 'disconnect_data', 'target': value})

    def test_unavailable_child_operations_are_rejected(self):
        for action in ('set_scalar_value', 'set_sequence_number', 'set_formula'):
            with self.assertRaises(service.ToolError) as error:
                tools.plan(fixture(), {'op': action})
            self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')

    def test_child_text_geometry_keep_exact_scope_and_incident_closure(self):
        record = fixture()
        record['structure']['entries'][0].update(literal='1',anchor=[100,100])
        record['structure']['entries'][-1]['route']=[[100,100],[200,100]]
        operations=[{'op':'set_literal','target':'Main/h12/h5/n1','expect':{'text':'1'},'value':{'text':'2'}},
                    {'op':'move_node','target':'Main/h12/h5/n1','position':[140,160]},
                    {'op':'set_edge_route','target':'Main/h12/h5/e1','points':[[100,100],[140,100],[140,140],[180,140],[180,100],[200,100]]}]
        for op in operations:
            action,args,before=tools.plan(record,op)
            validate_request(self.request(action,args))
            self.assertEqual(before['diagram'],'Main/h12/h5')
            self.assertIn('e1',args[0])
            other_scope={**op,'target':op['target'].replace('h12/h5','h12')}
            with self.assertRaises(service.ToolError):tools.plan(record,other_scope)
        record['structure']['entries'][0]['hierarchy_boundary']=True
        with self.assertRaises(service.ToolError) as error:tools.plan(record,operations[1])
        self.assertEqual(error.exception.code,'CAPABILITY_UNAVAILABLE')

    def test_child_after_cannot_satisfy_text_request_by_changing_boundary(self):
        before=fixture()['structure']
        before['entries'][0]['literal']='1'
        request=self.request('set_literal',[['n1'],'n1','2'])
        after=copy.deepcopy(before);after['entries'][0]['literal']='2'
        self.assertTrue(postcondition(request,before,after))
        after['boundary_context'][0]['hierarchy']=99
        self.assertFalse(postcondition(request,before,after))

    def test_creation_requires_complete_exact_scope(self):
        record = fixture()
        op = {'op': 'create_block', 'kind': 'literal', 'name': '3.0', 'position': [600, 400]}
        action, arguments, before = tools.plan(record, op)
        self.assertEqual((action, arguments), ('create_block', [[], 'literal', '3.0', 600, 400, '']))
        self.assertEqual(before['diagram'], 'Main/h12/h5')
        record['structure']['targets'] = ['n1']
        with self.assertRaises(service.ToolError) as error:
            tools.plan(record, op)
        self.assertEqual(error.exception.code, 'READ_INCOMPLETE')

    def test_unavailable_creation_kinds_rejected_by_both_layers(self):
        for kind in ('hierarchy', 'existing_model', 'oned_table_group'):
            self.assertNotIn(kind, CHILD_CREATION_KINDS)
            with self.assertRaises(service.ToolError) as error:
                tools.plan(fixture(), {'op': 'create_block', 'kind': kind, 'name': 'New', 'position': [600, 400]})
            self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')
            with self.assertRaises(JournalError) as error:
                validate_request(self.request('create_block', [[], kind, 'New', 600, 400, '']))
            self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')

    def test_nested_class_requires_exact_existing_definition_and_complete_scope(self):
        op = {'op': 'create_block', 'kind': 'component', 'name': 'Controller',
              'definition': 'BDE_Tool_Experiments\\Trial_InterfaceClass_test', 'position': [600, 400]}
        action, arguments, _ = tools.plan(fixture(), op)
        validate_request(self.request(action, arguments))
        self.assertEqual(arguments[-1], op['definition'])
        for definition in (None, 'Controller'):
            invalid = {**op, 'definition': definition}
            with self.subTest(definition=definition), self.assertRaises(service.ToolError):
                tools.plan(fixture(), invalid)
        partial = fixture()
        partial['structure']['targets'] = ['n1']
        with self.assertRaises(service.ToolError) as error:
            tools.plan(partial, op)
        self.assertEqual(error.exception.code, 'READ_INCOMPLETE')

    def request(self, operation, arguments):
        return {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'request_id': 'r', 'component': 'BDE_Tool_Experiments\\Trial_eval', 'diagram': 'Main/h12/h5',
            'operation': operation, 'arguments': arguments, 'expect': fingerprint(fixture()['structure'])}

    def test_delete_retains_incident_closure_and_refuses_boundary(self):
        record = fixture()
        action, arguments, before = tools.plan(record, {'op': 'delete_node', 'target': 'Main/h12/h5/n1'})
        self.assertEqual(action, 'delete_node')
        self.assertEqual(set(arguments[0]), {'n1', 'n2', 'p1', 'p2', 'e1'})
        validate_request(self.request(action, arguments))
        after = copy.deepcopy(before)
        after['entries'] = [row for row in before['entries'] if row['ref'] not in ('n1', 'p1', 'e1')]
        self.assertTrue(postcondition(self.request(action, arguments), before, after))
        for field, value in (('hierarchy_boundary', True), ('hierarchy_name', 'Stage')):
            guarded = copy.deepcopy(record)
            guarded['structure']['entries'][0][field] = value
            with self.assertRaises(service.ToolError) as error:
                tools.plan(guarded, {'op': 'delete_node', 'target': 'Main/h12/h5/n1'})
            self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')

    def test_child_request_and_boundary_postcondition(self):
        before = fixture()['structure']
        request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'request_id': 'r', 'component': 'BDE_Tool_Experiments\\Trial_eval', 'diagram': before['diagram'],
            'operation': 'disconnect_data', 'arguments': [['e1', 'p1', 'p2', 'n1', 'n2'], 'e1'],
            'expect': fingerprint(before)}
        validate_request(request)
        after = copy.deepcopy(before)
        after['entries'] = [row for row in after['entries'] if row['ref'] != 'e1']
        self.assertTrue(postcondition(request, before, after))
        after['boundary_context'][0]['hierarchy'] = 99
        self.assertFalse(postcondition(request, before, after))
        request.update(operation='delete_node', arguments=[['n1'], 'n1'])
        validate_request(request)


if __name__ == '__main__':
    unittest.main()
