"""Synthetic source-record lifecycle receipts, not online write acceptance."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from test_bde_private_layout_probe import fixture as layout_fixture
from bde_private_layout_probe import verify_layout
from bde_source_payload_probe import validate_proof, validate_prepared, verify_source_payload
from bd_serialized_source_candidate import candidate_from_private_layout
from bde_reference_leaf_noop_probe import run_handshake
from bde_private_layout_confirm import verify_documents, verify_pending


def fixture():
    extracted, _, _, _, _, layout_native = layout_fixture(); domain = extracted['domain']
    layout = dict(profile='bde_private_layout_after_experiment_v1', passed=True, native_exit_code=0,
        wire=dict(errors=[]), pending_retained_until_fresh_read=True, domain=domain, native=layout_native)
    confirmed = dict(profile='bde_private_layout_after_confirmation_v1', passed=True,
        pending_cleared_verified_original_state=True, original_state_preserved=True, complete_public_bookends_preserved=True,
        native_calls=0, summary=verify_layout(layout_native, extracted))
    plan = candidate_from_private_layout(layout_native['prepared']['before'], layout_native, extracted)
    before = plan['expected']; candidate = plan['candidate']; source = before['owners'][1]
    p = dict(profile='isolated_source_payload_lifecycle_prepared_v1', component_oid=domain['oid'], workbench_index=4,
        before=deepcopy(before), candidate=deepcopy(candidate), target_logic_id=3,
        before_position=[150,80], after_position=[161,80], persistent_leaf_write_calls=0,
        store_called=False, commit_called=False, full_commit_resource_closure=False, full_delivery=False)
    def execution(a,b):
        return dict(profile='isolated_persistent_owner_patch_result_v1', before=deepcopy(a), candidate=deepcopy(b), after=deepcopy(b),
            outcomes=[dict(role=source['role'], global_id=source['global_id'], operation='write_existing_owner_record', returned_class='CTSpaceCheckingIFil')],
            persistent_leaf_write_calls=1, persistent_leaf_delete_calls=0, owner_source_backend_preserved=True,
            model_setters_called=0, store_called=False, commit_called=False, full_commit_resource_closure=False, automatic_retry=False)
    actual = dict(profile='isolated_source_payload_lifecycle_result_v1', component_oid=domain['oid'], workbench_index=4,
        before=deepcopy(before), candidate=deepcopy(candidate), forward=execution(before,candidate), inverse=execution(candidate,before),
        after=deepcopy(before), persistent_leaf_write_calls=2, persistent_leaf_delete_calls=0, exact_raw_restoration=True,
        original_graph_preserved=True, original_config_preserved=True, model_setters_called=0, store_called=False,
        commit_called=False, graphical_cache_reloaded=False, full_commit_resource_closure=False,
        production_inverse_authorized=False, full_delivery=False)
    native = dict(passed=True, complete_reply_received=True, payload_lifecycle_dispatched=True, write_dispatched=True,
        component_oid=domain['oid'], process_epoch=domain['process_epoch'], database=domain['database'], dirty_before=0,dirty_after=0,
        prepared=p, actual=actual)
    return layout, extracted, confirmed, native


class SourcePayloadTests(unittest.TestCase):
    def test_two_source_writes_do_not_grant_live_model_or_crash_durability(self):
        layout, extracted, confirmation, native = fixture(); validate_proof(layout, extracted, confirmation)
        result = verify_source_payload(native, layout, extracted)
        self.assertTrue(result['changed_graphical_payload_written_and_read_back']); self.assertTrue(result['exact_raw_restoration'])
        self.assertFalse(result['production_move_verified']); self.assertFalse(result['crash_durability_verified'])
        self.assertFalse(result['full_commit_resource_closure']); self.assertFalse(result['production_inverse_authorized'])

    def test_unconfirmed_changed_bytes_or_widened_layout_proof_refused(self):
        for key,value in (('passed',False),('native_calls',True),('pending_cleared_verified_original_state',False),('summary',{})):
            layout,extracted,confirmed,_=fixture(); confirmed[key]=value
            with self.subTest(key=key),self.assertRaises(ValueError): validate_proof(layout,extracted,confirmed)

    def test_candidate_and_original_are_bound_to_actual_typed_payload(self):
        for mutate in (lambda p:p['candidate']['owners'][1]['allocated_bytes'].__setitem__(-1,99),
                lambda p:p.update(workbench_index=True),lambda p:p.update(target_logic_id=999),
                lambda p:p.update(persistent_leaf_write_calls=1),lambda p:p.update(full_delivery=True)):
            layout,extracted,_,native=fixture(); mutate(native['prepared'])
            with self.subTest(mutate=mutate),self.assertRaises(ValueError):validate_prepared(native['prepared'],layout,extracted)

    def test_one_missing_inverse_or_hidden_owner_change_refused(self):
        for stage in ('forward','inverse'):
            for mutate in (lambda s:s.update(persistent_leaf_write_calls=0),lambda s:s.update(profile='failed'),
                    lambda s:s['outcomes'][0].update(role='owner'),lambda s:s.update(automatic_retry=True),
                    lambda s:s['after']['owners'][0]['allocated_bytes'].__setitem__(-1,99)):
                layout,extracted,_,native=fixture(); mutate(native['actual'][stage])
                with self.subTest(stage=stage,mutate=mutate),self.assertRaises(ValueError):verify_source_payload(native,layout,extracted)

    def test_unknown_runtime_counts_and_expanded_permissions_refused(self):
        for key,value in (('persistent_leaf_write_calls',True),('persistent_leaf_write_calls',3),('persistent_leaf_delete_calls',1),
                ('model_setters_called',1),('exact_raw_restoration',False),('original_graph_preserved',False),
                ('original_config_preserved',False),('store_called',True),('commit_called',True),
                ('graphical_cache_reloaded',True),('full_commit_resource_closure',True),('full_delivery',True)):
            layout,extracted,_,native=fixture();native['actual'][key]=value
            with self.subTest(key=key),self.assertRaises(ValueError):verify_source_payload(native,layout,extracted)
        layout,extracted,_,native=fixture(); native['complete_reply_received']=False
        with self.assertRaises(ValueError):verify_source_payload(native,layout,extracted)

    def test_only_source_lifecycle_handshake_can_authorize_record_writer(self):
        with tempfile.TemporaryDirectory() as directory:
            script="import sys;print('BDE_SOURCE_PAYLOAD_READY',flush=True);assert sys.stdin.readline()=='WRITE_PRIVATE_LAYOUT_SOURCE_AND_RESTORE_ONCE\\n'"
            self.assertEqual(run_handshake([sys.executable,'-c',script],environment=os.environ.copy(),output=Path(directory),
                authorize=lambda:None,source_payload=True),0)
        with tempfile.TemporaryDirectory() as directory,self.assertRaises(ValueError):
            run_handshake(['nonexistent.exe'],environment={},output=Path(directory),authorize=lambda:None,
                source_payload=True,private_layout=True)

    def test_full_independent_confirmation_keeps_model_and_durability_unverified(self):
        layout,extracted,_,native=fixture(); _,dump,inventory,_,_,_=layout_fixture()
        domain=layout['domain']; component=inventory['native']['module_read']['component']
        original=dict(profile='bde_source_payload_lifecycle_experiment_v1',passed=True,native_exit_code=0,
            wire=dict(errors=[]),pending_retained_until_fresh_read=True,native=native,domain=domain,
            pid=123,port=32631,component=component)
        frame=dict(process_epoch=domain['process_epoch'],database=domain['database'],component=component,
            component_oid=domain['oid'],prepared=native['prepared'])
        dispatch=dict(process_epoch=domain['process_epoch'],component_oid=domain['oid'],workbench_index=4,
            command='isolated_source_payload_lifecycle_once',automatic_retry=False)
        result=verify_documents(original,native,layout,dump,inventory,inventory,frame,dispatch,
            source_payload=True,source_extraction=extracted)
        self.assertEqual(result['native_calls'],0);self.assertTrue(result['original_state_preserved'])
        self.assertFalse(result['summary']['production_move_verified'])
        fresh=deepcopy(inventory);fresh['native']['module_read']['owner_observations'].pop()
        with self.assertRaises(ValueError):verify_documents(original,native,layout,dump,inventory,fresh,frame,dispatch,
            source_payload=True,source_extraction=extracted)

    def test_payload_confirmation_cannot_clear_private_layout_pending(self):
        from bd_edit_journal import fingerprint
        layout,_,_,native=fixture();domain=layout['domain'];evidence=Path('evidence');frame=native['prepared']
        row=dict(domain=domain,command='research_source_payload_lifecycle_once',native_token='edit_'+fingerprint(domain),
            automatic_retry=False,managed_context=dict(evidence=str(evidence),original_material=str(evidence/'prepared.json'),original_sha256=fingerprint(frame)))
        verify_pending(row,domain,evidence,frame,source_payload=True)
        with self.assertRaises(ValueError):verify_pending(row,domain,evidence,frame)


if __name__=='__main__':unittest.main()
