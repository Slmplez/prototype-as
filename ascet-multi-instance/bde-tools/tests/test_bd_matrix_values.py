import unittest
from bd_matrix_values import shape,encode_matrix,decode_matrix
from bd_structure_journal import validate_creation,postcondition
from bd_structural_tools import plan
from bd_edit_journal import JournalError,clone


class MatrixTests(unittest.TestCase):
    def test_rectangular_type_and_bounds(self):
        self.assertEqual(decode_matrix(encode_matrix('cont',[[1.25,2],[3,4.5]])),[[1.25,2],[3,4.5]])
        self.assertEqual(decode_matrix('B0,B1;B1,B0'),[[False,True],[True,False]])
        for value in [[],[[]],[[1],[2,3]],[[True],[1]],[[0]*17],[[0]]*17]:
            with self.assertRaises(JournalError):encode_matrix('cont',value)
        with self.assertRaises(JournalError):decode_matrix('B1;N1')
        self.assertEqual(validate_creation({'op':'create_block','kind':'matrix','name':'m','position':[1,2],'max_size':[4,5]})[-1],'M4x5')

    def test_precise_matrix_resize_postcondition(self):
        row={'kind':'model','ref':'m_abc','native_class':'EtasAPIModelMatrix','model_type':'cont',
            'default_value':{'status':'read','configuration_oid':'c','values':[[0,0],[0,0]],'size':[2,2],'max_size':[4,4],'declared_max_size':[4,4]}}
        record={'structure':{'generation':1,'targets':[],'entries':[row]}}
        op={'op':'set_matrix_values','target':'Main/m_abc','expect':{'values':[[0,0],[0,0]]},'values':[[1.25,2,3]]}
        action,args,before=plan(record,op)
        after=clone(before);after['entries'][0]['default_value'].update(size=[1,3],values=op['values'])
        self.assertTrue(postcondition({'operation':action,'arguments':args},before,after))
        after['entries'][0]['default_value']['size']=[3,1]
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))


if __name__=='__main__':unittest.main()
