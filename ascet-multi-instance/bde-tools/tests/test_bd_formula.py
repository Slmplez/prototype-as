import unittest
from bd_edit_journal import JournalError, clone, fingerprint
from bd_formula_contract import validate
from bd_structural_tools import plan
from bd_structure_journal import postcondition, validate_request


class FormulaTests(unittest.TestCase):
    def record(self):
        self.target='m_'+'a'*40;self.old='m_'+'b'*40;self.new='m_'+'c'*40;self.formal='d'*40
        return {'structure':{'generation':1,'targets':[],'entries':[
            {'ref':self.target,'kind':'model','native_class':'EtasAPIModelScalar','model_type':'cont',
             'dependent_formula':{'status':'read','text':'x','compiled':'(x)',
                'formals':[{'name':'x','oid':self.formal}],
                'bindings':{'status':'read','source':'component_default_configuration','configuration_oid':'cfg',
                    'values':[{'formal_oid':self.formal,'actual_ref':self.old}]}}},
            *[{'ref':r,'kind':'model','native_class':'EtasAPIModelScalar','model_type':'cont','parameter':True}
                for r in (self.old,self.new)] ]}}

    def test_exact_formula_and_formal_preservation(self):
        record=self.record();op={'op':'set_formula','target':'Main/'+self.target,
            'expect':{'text':'x','compiled':'(x)'},'text':'x + 1'}
        action,args,before=plan(record,op)
        after=clone(before);after['entries'][0]['dependent_formula'].update(text='x + 1',compiled='((x)plus:(1))')
        request={'operation':action,'arguments':args}
        self.assertTrue(postcondition(request,before,after))
        after['entries'][0]['dependent_formula']['formals'][0]['oid']='e'*40
        self.assertFalse(postcondition(request,before,after))
        with self.assertRaises(Exception):plan(record,{**op,'expect':{'text':'x','compiled':'different'}})

    def test_bind_by_identity_with_complete_old_new_closure(self):
        record=self.record();op={'op':'set_formula_binding','target':'Main/'+self.target,
            'formal_oid':self.formal,'expect':{'actual':'Main/'+self.old},'actual':'Main/'+self.new}
        action,args,before=plan(record,op)
        self.assertEqual(set(args[0]),{self.target,self.old,self.new})
        after=clone(before);after['entries'][0]['dependent_formula']['bindings']['values'][0]['actual_ref']=self.new
        request={'operation':action,'arguments':args}
        self.assertTrue(postcondition(request,before,after))
        after['entries'][1]['parameter']=False
        self.assertFalse(postcondition(request,before,after))
        record['structure']['entries'][2]['dependent_formula']={}
        with self.assertRaises(Exception):plan(record,op)
        record['structure']['entries'].pop()
        with self.assertRaises(Exception):plan(record,op)

    def test_non_scalar_and_uncollected_bindings_rejected(self):
        record=self.record();op={'op':'set_formula','target':'Main/'+self.target,
            'expect':{'text':'x','compiled':'(x)'},'text':'x + 1'}
        record['structure']['entries'][0]['native_class']='EtasAPIModelOneDTable'
        with self.assertRaises(Exception):plan(record,op)
        record['structure']['entries'][0]['native_class']='EtasAPIModelScalar'
        formula=record['structure']['entries'][0]['dependent_formula'];formula['bindings']['status']='absent'
        binding={'op':'set_formula_binding','target':op['target'],'formal_oid':self.formal,
                 'expect':{'actual':'Main/'+self.old},'actual':'Main/'+self.new}
        with self.assertRaises(Exception):plan(record,binding)

    def test_shapes_and_native_transport(self):
        record=self.record();op={'op':'set_formula','target':'Main/'+self.target,
            'expect':{'text':'x','compiled':'(x)'},'text':'x + 1'}
        action,args,before=plan(record,op)
        request={'domain':{'session':'s','database':'db','oid':'oid','process_epoch':'epoch'},
            'request_id':'test','diagram':'Main','component':'BDE_Tool_Experiments\\Trial_test',
            'operation':action,'arguments':args,'expect':fingerprint(before)}
        validate_request(request)
        for text in ('','x\x00','\u4e2d\u6587','x'*4097):
            with self.assertRaises(JournalError):validate({**op,'text':text})
            with self.assertRaises(JournalError):validate_request({**request,'arguments':[args[0],args[1],text]})


if __name__=='__main__':unittest.main()
