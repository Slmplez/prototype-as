"""Runtime receipt controls, without live mutation or acceptance claims."""
from copy import deepcopy
import unittest

from bde_connect_runtime_study import prepared, actual
from test_bd_connect_owner_records import material


def fixture():
    m=material('prepared')
    p=dict(profile='isolated_connect_runtime_prepared_v1',native_token=m['native_token'],component_oid=m['component_oid'],
        generation=108,before=deepcopy(m['persistent_owner_records']['before']),graphical_before=deepcopy(m['graphical_before']),
        model_operations=0,store_called=False,commit_called=False,persistent_write_calls=0,production_connection_inverse_available=False)
    d=dict(profile='native_graphical_diff_v1',complete=True,after_object_count=2,
        new_objects=[dict(ref='v2',**{'class':'SGOrthogonalConnection'},kind='fields',value=[])],
        changes=[dict(object='v1',kind='collection',before=[],after=[dict(ref='v2',**{'class':'SGOrthogonalConnection'})])])
    a=dict(profile='isolated_connect_runtime_actual_v1',native_token=p['native_token'],component_oid=p['component_oid'],generation=108,
        before=deepcopy(p['before']),after_connect=deepcopy(p['before']),after=deepcopy(p['before']),graphical_before=deepcopy(p['graphical_before']),
        graphical_actual=d,actual_created_edge=True,endpoint_identity_verified=True,model_operations=2,native_restore_primitives=0,
        original_native_source_order_restored=True,store_called=False,commit_called=False,persistent_write_calls=0,
        production_connection_inverse_available=False,full_delivery=False)
    return m,p,a


class RuntimeStudyControls(unittest.TestCase):
    def test_original_bound_preparation_and_actual_complete_diff(self):
        m,p,a=fixture();self.assertEqual(prepared(p,m),p)
        r=actual(a,p);self.assertTrue(r['actual_live_connect_remove']);self.assertEqual(r['changed_graphical_entries'],1)
        self.assertFalse(r['production_connection_inverse_available'])

    def test_preparation_refuses_raw_drift_and_wrong_scope(self):
        for key,bad in (('native_token','edit_'+'b'*64),('generation',True),('model_operations',1),('store_called',True)):
            m,p,a=fixture();p[key]=bad
            with self.subTest(key=key),self.assertRaises(ValueError):prepared(p,m)
        m,p,a=fixture();p['before']['owners'][1]['allocated_bytes'][-1]^=1
        with self.assertRaises(ValueError):prepared(p,m)

    def test_changed_persistent_records_at_either_stage_refused(self):
        for key in ('after_connect','after'):
            m,p,a=fixture();a[key]['owners'][1]['allocated_bytes'][-1]^=1
            with self.subTest(key=key),self.assertRaises(ValueError):actual(a,p)

    def test_noop_cannot_claim_live_connection(self):
        m,p,a=fixture();a['graphical_actual'].update(new_objects=[],changes=[],after_object_count=1)
        with self.assertRaises(ValueError):actual(a,p)

    def test_wrong_original_and_forged_restoration_refused(self):
        for key,bad in (('generation',True),('model_operations',True),('native_restore_primitives',-1),
                ('native_restore_primitives',True),('original_native_source_order_restored',False),('actual_created_edge',False),
                ('persistent_write_calls',1),('store_called',True),('commit_called',True),('full_delivery',True)):
            m,p,a=fixture();a[key]=bad
            with self.subTest(key=key),self.assertRaises(ValueError):actual(a,p)


if __name__=='__main__':unittest.main()
