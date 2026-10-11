import unittest
from bd_edit_journal import JournalError, clone
from bd_table_values import encode_table, decode_table, validate_shape
from bd_structural_tools import plan
from bd_structure_journal import postcondition, validate_creation


class TableValuesTests(unittest.TestCase):
    def test_table_maximum_dimensions_and_numeric_type(self):
        for kind,maximum,encoded in [('oned_table',3,'M3'),('twod_table_fixed',[2,3],'M2x3')]:
            self.assertEqual(validate_creation({'op':'create_block','kind':kind,'name':'t','position':[300,200],'max_size':maximum})[-1],encoded)
        for op in [{'kind':'oned_table','max_size':[2,3]}, {'kind':'twod_table','max_size':3}, {'kind':'oned_table','model_type':'log'}]:
            with self.assertRaises(JournalError):validate_creation({'op':'create_block','name':'t','position':[300,200],**op})
    def test_shape_type_and_transport(self):
        for values in ([1.25,2.5], [[1,2,3],[4,5,6]]):
            self.assertEqual(decode_table(encode_table('cont',values)), values)
        for values in ([], [[]], [[1],[2,3]], [True,1], [[True,1]], [float('inf')]):
            with self.assertRaises(JournalError):encode_table('cont',values)
        with self.assertRaises(JournalError):validate_shape({'expect':{'values':[0,0]},'values':[[1,2]]})
        with self.assertRaises(JournalError):decode_table('VB1')

    def test_exact_values_preserve_axes_and_settings(self):
        row={'kind':'model','ref':'m_abc','native_class':'EtasAPIModelTwoDTable','model_type':'cont','group_table':False,
             'default_value':{'status':'read','configuration_oid':'c','values':[[0,0,0],[0,0,0]],
                              'x':[1,2],'y':[3,4,5],'size':[2,3],'interpolation_linear':True,'extrapolation_constant':True}}
        record={'structure':{'generation':1,'targets':[],'entries':[row]}}
        op={'op':'set_table_values','target':'Main/m_abc','expect':{'values':row['default_value']['values']},'values':[[1,2,3],[4,5,6]]}
        action,args,before=plan(record,op)
        after=clone(before);after['entries'][0]['default_value']['values']=op['values']
        self.assertTrue(postcondition({'operation':action,'arguments':args},before,after))
        after['entries'][0]['default_value']['x']=[0,1]
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))
        row['group_table']=True
        with self.assertRaises(Exception):plan(record,op)


if __name__=='__main__':unittest.main()
