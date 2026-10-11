"""Scalar default-value guards; does not claim native validation."""
import unittest
from bd_edit_journal import clone,JournalError
from bd_structure_journal import encode_scalar_value,decode_scalar_value,postcondition
from bd_structural_tools import plan


class ScalarTests(unittest.TestCase):
    def setUp(self):
        self.row={'ref':'m_abc','kind':'model','native_class':'EtasAPIModelScalar','model_type':'cont',
            'default_value':{'status':'read','configuration_oid':'configuration','value':1.25}}
        self.record={'structure':{'generation':1,'targets':[],'entries':[self.row]}}
        self.op={'op':'set_scalar_value','target':'Main/m_abc','expect':{'value':1.25},'value':2.5}

    def test_value_is_local_model_closure(self):
        action,args,before=plan(self.record,self.op)
        self.assertEqual(args,[['m_abc'],'m_abc','N2.5'])
        after=clone(before);after['entries'][0]['default_value']['value']=2.5
        self.assertTrue(postcondition({'operation':action,'arguments':args},before,after))
        after['entries'][0]['default_value']['configuration_oid']='other'
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))

    def test_missing_configuration_not_zero(self):
        self.row['default_value']={'status':'absent'}
        with self.assertRaises(Exception):plan(self.record,self.op)

    def test_boolean_is_not_numeric_old_value_or_postcondition(self):
        self.row['default_value']['value']=0
        with self.assertRaises(Exception):plan(self.record,{**self.op,'expect':{'value':False}})
        action,args,before=plan(self.record,{**self.op,'expect':{'value':0},'value':1})
        after=clone(before);after['entries'][0]['default_value']['value']=True
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))

    def test_type_and_precision_preserved(self):
        for kind,value in [('cont',42.125),('sdisc',-42),('udisc',42),('log',False),('enum','On')]:
            self.assertEqual(decode_scalar_value(encode_scalar_value(kind,value)),value)
        for kind,value in [('cont',True),('log',0),('udisc',-1),('sdisc',.5),('enum',42),('cont',float('nan'))]:
            with self.assertRaises(JournalError):encode_scalar_value(kind,value)
        for encoded in ['B2','NNaN','Nnull','N1;code','E','N 1','N1e999']:
            with self.assertRaises(JournalError):decode_scalar_value(encoded)


if __name__=='__main__':unittest.main()
