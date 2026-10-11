"""Sequence impact and side-effect guards. Offline; live oracle is separate."""
import unittest
from bd_edit_journal import clone
from bd_structural_tools import plan
from bd_structure_journal import postcondition


class SequenceTests(unittest.TestCase):
    def setUp(self):
        self.sequence={'id':10,'method':'calc','number':2,'label':'2/calc','position':[10,20],'size':[20,12]}
        self.record={'structure':{'generation':1,'targets':[],'entries':[
            {'ref':'n1','kind':'node','pins':['p1','p2']},
            *[{'ref':p,'kind':'pin','owner':'n1','sequence':clone(self.sequence)} for p in ('p1','p2')],
            {'ref':'p3','kind':'pin','owner':'n2','sequence':{**self.sequence,'id':20}},
            {'ref':'n2','kind':'node','pins':['p3']}]}}
        self.op={'op':'set_sequence_number','target':'Main/p1','expect':{'number':2,'method':'calc'},'number':3}

    def test_shared_call_pins_in_closure(self):
        _,args,before=plan(self.record,self.op)
        self.assertEqual(args[0],['n1','p1','p2'])
        self.assertEqual([r['ref'] for r in before['entries']],['n1','p1','p2'])

    def test_postcondition_requires_every_alias_and_preserves_activator(self):
        action,args,before=plan(self.record,self.op)
        request={'operation':action,'arguments':args}
        after=clone(before)
        after['entries'][1]['sequence']['number']=3
        after['entries'][1]['sequence']['label']='3/calc'
        self.assertFalse(postcondition(request,before,after))
        after['entries'][2]['sequence']['number']=3
        after['entries'][2]['sequence']['label']='3/calc'
        self.assertTrue(postcondition(request,before,after))
        after['entries'][2]['sequence']['method']='other'
        self.assertFalse(postcondition(request,before,after))

    def test_old_method_expectation_rejected(self):
        with self.assertRaises(Exception):plan(self.record,{**self.op,'expect':{'number':2,'method':'other'}})

    def test_assign_unassigned_call_preserves_identity_and_every_pin(self):
        for row in self.record['structure']['entries']:
            if (row.get('sequence') or {}).get('id')==10:
                row['sequence'].update(method=None,number=0,label='0/-')
        op={'op':'set_sequence','target':'Main/p1','expect':{'number':0,'method':None},'number':7,'method':'calc'}
        action,args,before=plan(self.record,op)
        self.assertEqual(args,[['n1','p1','p2'],'p1',7,'calc'])
        after=clone(before)
        for row in after['entries']:
            if row.get('sequence'):row['sequence'].update(method='calc',number=7,label='7/calc')
        self.assertTrue(postcondition({'operation':action,'arguments':args},before,after))
        after['entries'][1]['sequence']['id']=99
        self.assertFalse(postcondition({'operation':action,'arguments':args},before,after))


    def test_move_records_every_shared_call_and_rejects_binding_damage(self):
        self.record['structure']['entries'][0]['anchor'] = [100, 100]
        action, args, before = plan(self.record, {'op':'move_node','target':'Main/n1','position':[110,120]})
        after = clone(before)
        after['entries'][0]['anchor'] = [110, 120]
        for row in after['entries']:
            if row.get('sequence'):
                row['sequence']['position'] = [20, 40]
        request = {'operation':action,'arguments':args}
        self.assertTrue(postcondition(request, before, after))
        after['entries'][2]['sequence']['position'] = [10, 20]
        self.assertFalse(postcondition(request, before, after))
        after['entries'][2]['sequence']['position'] = [20, 40]
        after['entries'][1]['sequence']['number'] = 3
        self.assertFalse(postcondition(request, before, after))


if __name__=='__main__':unittest.main()
