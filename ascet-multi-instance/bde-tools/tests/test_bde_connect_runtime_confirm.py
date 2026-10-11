"""Independent recorded-witness validation controls; no native acceptance."""
from copy import deepcopy
import unittest

from bd_edit_journal import fingerprint
from bde_connect_runtime_confirm import verify
from test_bde_connect_runtime_study import fixture


def documents():
    m,p,a=fixture();domain=dict(session='synthetic',database='synthetic',process_epoch='synthetic',oid=m['component_oid'])
    token='edit_'+fingerprint(dict(domain=domain,purpose='single_no_store_connect_runtime'))
    for v in (m,p,a):v['native_token']=token
    for k in ('module_references','module_persistent_references','persistent_owner_records'):m[k]['native_token']=token
    for k in ('parent_before','drawing_before'):m[k]['native_token']=token
    from bde_connect_runtime_study import actual
    o=dict(profile='bde_connect_runtime_study_v1',domain=domain,native_token=token,passed=True,sources_match=True,
        edit_dispatched=True,pending_retained_until_independent_confirmation=True,wire=dict(errors=[]),
        production_connection_inverse_available=False,full_delivery=False,pid=1,port=2,component='BDE_Tool_Experiments\\Trial_Control',summary=actual(a,p),
        native_commands=['open','observe','observe_public','prepare','connect_material','connect_runtime_lifecycle','connect_runtime_lifecycle',
            'connect_runtime_lifecycle','observe','observe_public','discard_prepared'])
    f=dict(passed=True,persistent_owner_records_stable=True,pid=1,port=2,wire=dict(errors=[]),native=dict(database='synthetic',process_epoch='synthetic',
        dirty_before=0,dirty_after=0,module_read=dict(component=o['component'],component_oid=domain['oid'],owner_observations=[deepcopy(p['before']),deepcopy(p['before'])])))
    dispatch=dict(domain=domain,native_token=token,prepared_sha256=fingerprint(p),automatic_retry=False,operation='single_no_store_connect_remove')
    return [o,dict(material=m,runtime=p),dispatch,a,deepcopy(a),dict(native={},public={}),dict(native={},public={}),f]


class RuntimeConfirmControls(unittest.TestCase):
    def test_complete_independent_confirmation_is_zero_native(self):
        r=verify(*documents());self.assertEqual(r['native_calls'],0);self.assertTrue(r['original_state_independently_confirmed'])
        self.assertFalse(r['production_connection_inverse_available'])

    def test_stale_dirty_and_missing_full_originals_refuse(self):
        for change in (lambda f:f.update(pid=3),lambda f:f['native'].update(process_epoch='stale'),
                lambda f:f['native'].update(dirty_before=1),lambda f:f['native']['module_read']['owner_observations'].pop(),
                lambda f:f['native']['module_read']['owner_observations'][1]['owners'][1]['allocated_bytes'].__setitem__(-1,99)):
            d=documents();change(d[-1])
            with self.subTest(change=change),self.assertRaises(ValueError):verify(*d)

    def test_unknown_command_replay_and_changed_dispatch_refuse(self):
        d=documents();d[0]['passed']=False
        with self.assertRaises(ValueError):verify(*d)
        d=documents();d[0]['native_commands'].insert(7,'connect_runtime_lifecycle')
        with self.assertRaises(ValueError):verify(*d)
        d=documents();d[2]['prepared_sha256']='0'*64
        with self.assertRaises(ValueError):verify(*d)

    def test_public_or_inspection_drift_cannot_clear_pending(self):
        d=documents();d[6]['public']={'unrelated':True}
        with self.assertRaises(ValueError):verify(*d)
        d=documents();d[4]['native_restore_primitives']=1
        with self.assertRaises(ValueError):verify(*d)


if __name__=='__main__':unittest.main()
