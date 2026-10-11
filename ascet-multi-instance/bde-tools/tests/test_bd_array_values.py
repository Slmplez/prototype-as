import unittest
from bd_array_values import encode_values,decode_values,validate_shape
from bd_edit_journal import JournalError,clone
from bd_structural_tools import plan
from bd_structure_journal import postcondition


class ArrayTests(unittest.TestCase):
    def test_typed_values_and_transport(self):
        for kind,values in [('cont',[1.25,-2.5]),('sdisc',[-1,2]),('udisc',[0,2]),('log',[False,True])]:
            self.assertEqual(decode_values(encode_values(kind,values)),values)
        for kind,values in [('cont',[]),('cont',[True]),('log',[0]),('sdisc',[.5]),('udisc',[-1]),('cont',[0]*257)]:
            with self.assertRaises(JournalError):encode_values(kind,values)
        for encoded in ['N1,B0','EOn','N1,,N2','NNaN','N1;quit']:
            with self.assertRaises(JournalError):decode_values(encoded)

    def test_default_patch_preserves_config_and_other_fields(self):
        row={'kind':'model','ref':'m_abc','native_class':'EtasAPIModelArray','model_type':'cont',
             'default_value':{'status':'read','configuration_oid':'config','size':2,'max_size':4,'declared_max_size':4,'values':[1.25,2.5]}}
        record={'structure':{'generation':1,'targets':[],'entries':[row]}}
        op={'op':'set_array_values','target':'Main/m_abc','expect':{'values':[1.25,2.5]},'values':[3.75,4.125,5]}
        action,args,before=plan(record,op)
        self.assertEqual(args,[['m_abc'],'m_abc','N3.75,N4.125,N5'])
        after=clone(before);after['entries'][0]['default_value'].update(size=3,values=op['values'])
        request={'operation':action,'arguments':args}
        self.assertTrue(postcondition(request,before,after))
        after['entries'][0]['default_value']['configuration_oid']='changed'
        self.assertFalse(postcondition(request,before,after))
        with self.assertRaises(Exception):plan(record,{**op,'values':[0]*5})
        with self.assertRaises(Exception):plan(record,{**op,'expect':{'values':[0,0]}})


if __name__=='__main__':unittest.main()
