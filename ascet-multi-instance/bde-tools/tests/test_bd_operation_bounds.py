"""An operation must not accept unrelated observed field mutations."""
import copy
import unittest
from bd_structure_journal import postcondition


class OperationBoundsTests(unittest.TestCase):
    def test_connection_and_delete_reject_unrequested_fields(self):
        node={'ref':'n1','kind':'node','pins':['p1'],'anchor':[10,10]}
        other={'ref':'n2','kind':'node','pins':['p2'],'anchor':[30,10]}
        pin={'ref':'p1','kind':'pin','owner':'n1','input':False,'output':True}
        pin2={'ref':'p2','kind':'pin','owner':'n2','input':True,'output':False}
        edge={'ref':'e1','kind':'edge','source':'p1','target':'p2','type':2,'route':[[10,10],[30,10]]}
        cases=[('connect_data',[[],'p1','p2'],[node,other,pin,pin2],[node,other,pin,pin2,edge]),
               ('disconnect_data',[[],'e1'],[node,other,pin,pin2,edge],[node,other,pin,pin2]),
               ('delete_node',[[],'n1'],[node,other,pin,pin2,edge],[other,pin2]),
               ('rewire_data',[[],'e1','p9'],[node,other,pin,pin2,edge],[node,other,pin,pin2,{**edge,'source':'p9'}])]
        for op,args,before,after in cases:
            with self.subTest(op=op):
                request={'operation':op,'arguments':args};left={'generation':1,'entries':before};right={'generation':1,'entries':after}
                self.assertTrue(postcondition(request,left,right))
                altered=copy.deepcopy(right)
                next(row for row in altered['entries'] if row['ref']=='n2')['anchor']=[999,999]
                self.assertFalse(postcondition(request,left,altered))


if __name__=='__main__':unittest.main()
