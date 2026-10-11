import unittest
from bd_edit_journal import JournalError
from bd_structure_journal import validate_route,postcondition
from bd_structural_tools import plan
import bd_service


class RouteTests(unittest.TestCase):
    def test_shape_and_canonical_encoding(self):
        self.assertEqual(validate_route([[0,0],[10,0],[10,10]]),'0,0;10,0;10,10')
        for route in ([], [[0,0]], [[0,0],[0,0]], [[0,0],[10,10]], [[0,0],[5,0],[10,0]],
                      [[True,0],[10,0]], [[0,0],[100001,0]]):
            with self.subTest(route=route),self.assertRaises(JournalError):validate_route(route)

    def test_plan_and_postcondition_retain_endpoints_and_every_other_field(self):
        edge={'ref':'e1','kind':'edge','source':'p1','target':'p2','type':2,'route':[[0,0],[100,0]]}
        before={'generation':1,'targets':[],'entries':[edge]}
        points=[[0,0],[20,0],[20,20],[80,20],[80,0],[100,0]]
        action,arguments,_=plan({'structure':before},{'op':'set_edge_route','target':'Main/e1','points':points})
        request={'operation':action,'arguments':arguments}
        after={**before,'entries':[{**edge,'route':points}]}
        self.assertTrue(postcondition(request,before,after))
        self.assertFalse(postcondition(request,before,{**after,'entries':[{**after['entries'][0],'source':'p9'}]}))
        with self.assertRaises(bd_service.ToolError):
            plan({'structure':before},{'op':'set_edge_route','target':'Main/e1','points':[[10,0],[100,0]]})


if __name__=='__main__':unittest.main()
