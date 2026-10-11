import unittest
from bd_edit_journal import JournalError, clone, fingerprint
from bd_table_settings import validate_axis,validate_interpolation
from bd_structural_tools import plan
from bd_structure_journal import postcondition,validate_request


class TableSettingsTests(unittest.TestCase):
    def record(self):
        return {'structure':{'generation':1,'targets':[],'entries':[{
            'ref':'m_abc','kind':'model','native_class':'EtasAPIModelTwoDTable','model_type':'cont',
            'group_table':False,'fixed_table':False,'declared_interpolation':None,'default_value':{'status':'read','configuration_oid':'c',
                'values':[[1,2,3],[4,5,6]],'x':[0,0],'y':[0,0,0],'size':[2,3],
                'interpolation_linear':True,'interpolation_rounded':False,'extrapolation_constant':True}}]}}

    def test_axis_contract_accepts_old_duplicates_but_rejects_resize_and_new_disorder(self):
        op={'axis':'x','expect':{'values':[0,0]},'values':[-1.25,2.5]}
        validate_axis(op)
        for patch in ({'values':[1]},{'values':[2,1]},{'values':[1,1]},
                      {'values':[False,True]},{'axis':'z'},{'expect':{'values':[0,0],'size':2}}):
            with self.assertRaises(JournalError):validate_axis({**op,**patch})

    def test_axis_preserves_value_orientation_and_other_axis(self):
        record=self.record()
        op={'op':'set_table_axis','target':'Main/m_abc','axis':'y','expect':{'values':[0,0,0]},'values':[1,2,4]}
        action,args,before=plan(record,op)
        after=clone(before);after['entries'][0]['default_value']['y']=[1,2,4]
        request={'operation':action,'arguments':args}
        self.assertTrue(postcondition(request,before,after))
        after['entries'][0]['default_value']['values'][1][2]=7
        self.assertFalse(postcondition(request,before,after))
        record['structure']['entries'][0]['fixed_table']=True
        with self.assertRaises(Exception):plan(record,op)

    def test_axis_matches_discrete_signedness_before_native_io(self):
        record=self.record();row=record['structure']['entries'][0]
        row['model_type']='sdisc'
        op={'op':'set_table_axis','target':'Main/m_abc','axis':'x','expect':{'values':[0,0]},'values':[-2.5,3.75]}
        with self.assertRaises(Exception):plan(record,op)
        row['model_type']='udisc';op['values']=[-2,3]
        with self.assertRaises(Exception):plan(record,op)
        op['values']=[1,4];self.assertEqual(plan(record,op)[0],'set_table_axis')

    def test_interpolation_exact_flags_and_preservation(self):
        record=self.record();row=record['structure']['entries'][0]
        row['fixed_table']=True
        op={'op':'set_table_interpolation','target':'Main/m_abc','mode':'rounded',
            'expect':{'declared_interpolation':None,'interpolation_linear':True,'interpolation_rounded':False}}
        action,args,before=plan(record,op)
        after=clone(before);after['entries'][0]['default_value'].update(interpolation_linear=False,interpolation_rounded=True)
        after['entries'][0]['declared_interpolation']='Rounded'
        self.assertTrue(postcondition({'operation':action,'arguments':args},before,after))
        after['entries'][0]['default_value']['extrapolation_constant']=False
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))
        row['declared_interpolation']='Linear'
        with self.assertRaises(Exception):plan(record,op)
        row['declared_interpolation']=None
        for patch in ({'mode':'spline'},{'expect':{'interpolation_linear':1,'interpolation_rounded':False}},
                      {'expect':{'interpolation_linear':True,'interpolation_rounded':True}}):
            with self.assertRaises(JournalError):validate_interpolation({**op,**patch})
        row['group_table']=True
        with self.assertRaises(Exception):plan(record,op)

    def test_native_transport_is_fixed_and_bounded(self):
        record=self.record();op={'op':'set_table_axis','target':'Main/m_abc','axis':'x',
            'expect':{'values':[0,0]},'values':[-1,2]}
        action,args,before=plan(record,op)
        request={'domain':{'session':'s','database':'db','oid':'oid','process_epoch':'epoch'},
            'request_id':'test','diagram':'Main','component':'BDE_Tool_Experiments\\Trial_test',
            'operation':action,'arguments':args,'expect':fingerprint(before)}
        validate_request(request)
        with self.assertRaises(JournalError):validate_request({**request,'arguments':[args[0],args[1],'z',args[3]]})


if __name__=='__main__':unittest.main()
