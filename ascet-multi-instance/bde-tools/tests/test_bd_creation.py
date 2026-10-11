"""Creation contract tests, independent of a live ASCET installation."""
import unittest
import json
from pathlib import Path
from bd_edit_journal import JournalError
from bd_structure_journal import validate_creation, postcondition, library_postcondition
from bd_structural_tools import select


class CreationTests(unittest.TestCase):
    def test_message_scope_and_enum_native_roundtrip(self):
        from bd_structure_journal import validate_request
        op = {'op':'create_block','kind':'receive_message','name':'Mode','position':[320,240],
              'model_type':'enum','definition':'Types\\Mode','message_scope':'imported'}
        args = validate_creation(op)
        self.assertEqual(args, [[], 'receive_message', 'Mode', 320, 240, 'ENUM|Types\\Mode', 'Simported'])
        request = {'domain':{'session':'s','database':'db','oid':'oid','process_epoch':'p'},'request_id':'r',
                   'component':'BDE_Tool_Experiments\\Trial_Test','diagram':'Main','operation':'create_block',
                   'arguments':args,'expect':'a'*64}
        validate_request(request)
        for changes in ({'message_scope':'global'}, {'model_type':'cont'}, {'kind':'variable'},
                        {'definition':None}, {'definition':'Types\\Bad|Name'}, {'initial_value':'On'},
                        {'new_definition':{'name':'New','items':['Off','On']}}):
            with self.subTest(changes=changes), self.assertRaises(JournalError):
                validate_creation({**op, **changes})

    def test_message_postcondition_checks_roles_scope_label_and_definition(self):
        op = {'op':'create_block','kind':'receive_message','name':'Mode','position':[320,240],
              'model_type':'enum','definition':'Types\\Mode','message_scope':'imported'}
        request = {'operation':'create_block','arguments':validate_creation(op)}
        model = {'kind':'model','ref':'m_123','name':'Mode','native_class':'EtasAPIModelReceiveMessage',
                 'model_type':'enum','definition':{'path':'Types\\Mode','oid':'enum_oid'},
                 'message':{'scope':'imported','send':False,'receive':True,'send_receive':False,'global_label':'Mode'}}
        node = {'kind':'node','ref':'n1','model_ref':'m_123','pins':[],'anchor':[320,240]}
        before = {'generation':1,'entries':[]}
        after = {'generation':1,'entries':[model,node]}
        self.assertTrue(postcondition(request,before,after))
        for changes in ({'scope':'local'}, {'send':True}, {'receive':False}, {'global_label':'Other'}):
            with self.subTest(changes=changes):
                self.assertFalse(postcondition(request,before,{**after,'entries':[{**model,'message':{**model['message'],**changes}},node]}))
        self.assertFalse(postcondition(request,before,{**after,'entries':[{**model,'definition':{'path':'Types\\Other','oid':'enum_oid'}},node]}))

    def test_shared_schema_contract_corpus(self):
        cases = json.loads(Path(__file__).with_name('bde_creation_contract_cases.json').read_text())
        for case in cases:
            with self.subTest(case=case['id']):
                if case['valid']:
                    validate_creation(case['operation'])
                else:
                    with self.assertRaises(JournalError):
                        validate_creation(case['operation'])

    def test_creation_validation_is_typed_and_kind_specific(self):
        op = {'op':'create_block','kind':'variable','name':'v','position':[1,2],'model_type':'cont'}
        self.assertEqual(validate_creation(op), [[], 'variable', 'v', 1, 2, 'cont'])
        for changes in ({'kind':'arbitrary_selector'}, {'position':[True,2]}, {'name':'x;code'},
                        {'model_type':'unknown'}, {'definition':'unrequested'}, {'arity':2}):
            with self.subTest(changes=changes), self.assertRaises(JournalError):
                validate_creation({**op, **changes})

    def test_referenced_enumeration_requires_definition_path(self):
        op = {'op':'create_block','kind':'enumeration','name':'e','position':[0,0]}
        with self.assertRaises(JournalError):
            validate_creation(op)
        self.assertEqual(validate_creation({**op,'definition':'Types\\Mode'})[-1], 'Types\\Mode')

    def test_new_enum_definition_and_native_roundtrip_are_strict(self):
        from bd_structure_journal import validate_request
        op={'op':'create_block','kind':'enumeration','name':'mode','position':[320,240],
            'new_definition':{'name':'EvalMode','items':['Off','On','Fault']},'initial_value':'On'}
        arguments=validate_creation(op)
        self.assertEqual(arguments,[[],'enumeration','mode',320,240,'NEWENUM|EvalMode|Off,On,Fault','EOn'])
        request={'domain':{'session':'s','database':'db','oid':'oid','process_epoch':'p'},'request_id':'r',
                 'component':'BDE_Tool_Experiments\\Trial_Test','diagram':'Main','operation':'create_block',
                 'arguments':arguments,'expect':'a'*64}
        validate_request(request)
        for change in ({'definition':'Types\\Mode'}, {'initial_value':'Unknown'},
                       {'new_definition':{'name':'EvalMode','items':[]}},
                       {'new_definition':{'name':'EvalMode','items':['Off','Off']}},
                       {'new_definition':{'name':'Bad|Code','items':['Off']}},
                       {'new_definition':{'name':'EvalMode','items':['Off'],'extra':1}}):
            with self.subTest(change=change),self.assertRaises(JournalError):validate_creation({**op,**change})
        with self.assertRaises(JournalError):validate_creation({**op,'kind':'component'})

    def test_new_enum_postcondition_checks_order_and_actual_definition(self):
        model={'kind':'model','ref':'m_123','name':'mode','native_class':'EtasAPIModelScalar','model_type':'enum',
               'enum_values':['Off','On'],'definition':{'path':'BDE_Tool_Experiments\\EvalMode','oid':'oid'},
               'default_value':{'status':'read','value':'On'}}
        node={'kind':'node','ref':'n1','model_ref':'m_123','pins':[],'anchor':[1,2]}
        request={'operation':'create_block','arguments':[[],'enumeration','mode',1,2,'NEWENUM|EvalMode|Off,On','EOn']}
        before={'generation':1,'entries':[]};after={'generation':1,'entries':[model,node]}
        self.assertTrue(postcondition(request,before,after))
        for change in ({'enum_values':['On','Off']},{'enum_values':['Off']},
                       {'definition':{'path':'Types\\EvalMode','oid':'oid'}},
                       {'default_value':{'status':'read','value':'Off'}}):
            self.assertFalse(postcondition(request,before,{**after,'entries':[{**model,**change},node]}))

    def test_new_enum_requires_actual_library_effect_and_matching_model_identity(self):
        request={'operation':'create_block','arguments':[[],'enumeration','mode',1,2,'NEWENUM|EvalMode|Off,On','EOn']}
        effect={'kind':'enumeration_definition','path':'BDE_Tool_Experiments\\EvalMode','oid':'oid',
                'before':None,'after':{'items':['Off','On']}}
        delta=[{'before':None,'after':{'kind':'model','definition':{'oid':'oid'}}}]
        self.assertTrue(library_postcondition(request,[effect],delta))
        for effects in ([],[effect,effect],[{**effect,'oid':'wrong'}],
                        [{**effect,'before':{'items':[]}}],[{**effect,'after':{'items':['On','Off']}}]):
            with self.subTest(effects=effects):self.assertFalse(library_postcondition(request,effects,delta))
        self.assertFalse(library_postcondition(request,[effect],[]))
        self.assertFalse(library_postcondition({**request,'operation':'move_node'},[effect],delta))

    def test_postcondition_requires_graph_and_definition_without_existing_changes(self):
        existing = {'kind':'node','ref':'n1','position':[0,0],'pins':[]}
        model = {'kind':'model','ref':'m_123','name':'v','native_class':'EtasAPIModelScalar','model_type':'cont','parameter':False}
        node = {'kind':'node','ref':'n2','model_ref':'m_123','model_name':'v','pins':['p3'],'anchor':[1,2]}
        pin = {'kind':'pin','ref':'p3','owner':'n2'}
        request = {'operation':'create_block','arguments':[[], 'variable','v',1,2,'cont']}
        before = {'generation':1,'entries':[existing]}
        after = {'generation':1,'entries':[existing,model,node,pin]}
        self.assertTrue(postcondition(request,before,after))
        for rows in ([existing,node,pin], [existing,model,node],
                     [{**existing,'position':[10,10]},model,node,pin],
                     [existing,{**model,'model_type':'log'},node,pin],
                     [existing,model,{**node,'anchor':[5,2]},pin],
                     [existing,model,node,pin,{'kind':'model','ref':'m_456','name':'unexpected'}]):
            with self.subTest(rows=rows):
                self.assertFalse(postcondition(request,before,{**after,'entries':rows}))

    def test_select_retains_model_definition_with_graphical_occurrence(self):
        rows = [{'kind':'node','ref':'n1','pins':['p2'],'model_ref':'m_123'},
                {'kind':'pin','ref':'p2','owner':'n1'}, {'kind':'model','ref':'m_123','name':'v'},
                {'kind':'node','ref':'n9','pins':[]}]
        structure = {'entries':rows,'targets':[]}
        self.assertEqual(select(structure,[])['entries'], rows)
        self.assertEqual({r['ref'] for r in select(structure,['n1'])['entries']}, {'n1','p2','m_123'})

    def test_reference_and_conversion_postconditions_distinguish_same_shape(self):
        before={'generation':1,'entries':[]}
        model={'kind':'model','ref':'m_123','name':'e','native_class':'EtasAPIModelScalar','model_type':'enum',
               'definition':{'path':'Types\\Mode','oid':'oid1'}}
        node={'kind':'node','ref':'n1','model_ref':'m_123','pins':[],'anchor':[1,2]}
        request={'operation':'create_block','arguments':[[], 'enumeration','e',1,2,'Types\\Mode']}
        self.assertTrue(postcondition(request,before,{'generation':1,'entries':[model,node]}))
        for definition in ({'path':'Other\\Mode','oid':'oid2'},{'path':'Types\\Mode'},{}):
            self.assertFalse(postcondition(request,before,{'generation':1,'entries':[{**model,'definition':definition},node]}))
        node={'kind':'node','ref':'n1','pins':['p2'],'anchor':[1,2],'operator':'conversion','conversion_type':'limit'}
        pin={'kind':'pin','ref':'p2','input':True}
        request={'operation':'create_block','arguments':[[],'operator','limit',1,2,1]}
        self.assertTrue(postcondition(request,before,{'generation':1,'entries':[node,pin]}))
        self.assertFalse(postcondition(request,before,{'generation':1,'entries':[{**node,'conversion_type':'wrapAround'},pin]}))


if __name__ == '__main__':
    unittest.main()
