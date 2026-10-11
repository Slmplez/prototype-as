"""Synthetic receipt tamper/authorization controls, never live serializer QA."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from bde_fresh_serializer_dump_probe import validate_prepared, validate_inventory_proof, verify_dump
from bde_fresh_serializer_dump_confirm import verify_documents, verify_pending
from bde_reference_leaf_noop_probe import run_handshake
from test_bd_persistent_owner_records import fixture as owner_fixture, OID


def fixture():
    owner = owner_fixture(); domain = dict(session='test', process_epoch='123/epoch', database='isolated', oid=OID)
    inventory = dict(profile='isolated_fresh_serializer_inventory_v1', component_oid=OID, workbench_index=4,
        objects=58, blockers=[], model_setters_called=0, serialization_called=False, store_called=False,
        commit_called=False, persistent_write_called=False, call_closure_complete=False, serialization_authorized=False,
        before=deepcopy(owner), after=deepcopy(owner))
    read = dict(component='BDE_Tool_Experiments\\Trial_Test', component_oid=OID, serializer_inventory=inventory,
        owner_observations=[deepcopy(owner), deepcopy(owner)], persistent_observations=[deepcopy(owner['references'])]*2,
        observations=[{'synthetic_graph': 1}]*2)
    proof = dict(passed=True, fresh_serializer_source_inventory_captured=True, persistent_owner_records_stable=True,
        persistent_complete_capture_verified=True, fresh_serializer_source_inventory_blockers=[], native_exit_code=0,
        wire=dict(errors=[]), pid=123, port=32631, native=dict(passed=True, dirty_before=0, dirty_after=0,
            process_epoch=domain['process_epoch'], database=domain['database'], module_read=read))
    prepared = dict(profile='isolated_fresh_source_dump_prepared_v1', component_oid=OID, workbench_index=4,
        before=deepcopy(owner), graph_objects=58, dump_calls=0, load_calls=0, persistent_write_calls=0,
        store_called=False, commit_called=False, full_delivery=False)
    payload = owner['owners'][1]['bytes'][130:]
    actual = dict(profile='isolated_fresh_source_dump_result_v1', component_oid=OID, workbench_index=4,
        before=deepcopy(owner), after=deepcopy(owner), payload_bytes=payload, payload_size=len(payload), dump_calls=1,
        load_calls=0, persistent_write_calls=0, dumper_error=0, dump_returned_true=True, original_graph_preserved=True,
        original_config_preserved=True, owner_records_preserved=True, model_setters_called=0, store_called=False,
        commit_called=False, automatic_retry=False, production_inverse_authorized=False, full_delivery=False)
    native = dict(passed=True, complete_reply_received=True, serialization_dispatched=True, write_dispatched=False,
        component_oid=OID, process_epoch=domain['process_epoch'], database=domain['database'], dirty_before=0,
        dirty_after=0, prepared=prepared, actual=actual)
    return proof, native, domain


class DumpReceiptTests(unittest.TestCase):
    def test_synthetic_success_only_certifies_receipt_not_live_serialization(self):
        proof, native, _ = fixture(); result = verify_dump(native, proof)
        self.assertTrue(result['payload_equals_stored_blob']); self.assertTrue(result['independent_confirmation_required'])
        self.assertFalse(result['production_inverse_authorized']); self.assertFalse(result['full_delivery'])

    def test_valid_different_payload_is_reported_not_called_format_equivalence(self):
        proof, native, _ = fixture(); native['actual']['payload_bytes'][0] ^= 1
        self.assertFalse(verify_dump(native, proof)['payload_equals_stored_blob'])

    def test_runtime_unknown_dirty_cleanup_and_hidden_writer_refused(self):
        for mutate in (lambda n: n.update(process_epoch='foreign'), lambda n: n.update(database='foreign'),
                lambda n: n.update(complete_reply_received=False), lambda n: n.update(serialization_dispatched=False),
                lambda n: n.update(write_dispatched=True), lambda n: n.update(dirty_after=False),
                lambda n: n.update(cleanup_error='unknown')):
            proof, native, _ = fixture(); mutate(native)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_dump(native, proof)

    def test_no_write_counters_and_permissions_cannot_be_widened(self):
        for key, value in (('dump_calls', True), ('dump_calls', 2), ('load_calls', 1), ('persistent_write_calls', 1),
                ('dumper_error', True), ('model_setters_called', 1), ('store_called', True), ('commit_called', True),
                ('automatic_retry', True), ('production_inverse_authorized', True), ('full_delivery', True),
                ('original_graph_preserved', False), ('original_config_preserved', False), ('owner_records_preserved', False)):
            proof, native, _ = fixture(); native['actual'][key] = value
            with self.subTest(key=key, value=value), self.assertRaises(ValueError): verify_dump(native, proof)

    def test_complete_payload_octets_size_and_extra_fields_required(self):
        for mutate in (lambda a: a['payload_bytes'].pop(), lambda a: a['payload_bytes'].__setitem__(0, True),
                lambda a: a.update(payload_bytes=[]), lambda a: a.update(payload_size=True),
                lambda a: a.update(payload_size=4194305), lambda a: a.update(unreported_write=1)):
            proof, native, _ = fixture(); mutate(native['actual'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_dump(native, proof)

    def test_each_original_raw_record_and_reference_image_is_validated(self):
        for image in ('before', 'after'):
            for mutate in (lambda a: a['owners'][0]['allocated_bytes'].__setitem__(-1, 99),
                    lambda a: a.update(model_setters_called=False),
                    lambda a: a['references'].update(inverse_authorized=True)):
                proof, native, _ = fixture(); mutate(native['actual'][image])
                with self.subTest(image=image, mutate=mutate), self.assertRaises(ValueError): verify_dump(native, proof)

    def test_inventory_missing_coverage_dispatch_and_boolean_counts_refused(self):
        for mutate in (lambda p: p.update(persistent_complete_capture_verified=False),
                lambda p: p['native'].update(dirty_before=True), lambda p: p['wire']['errors'].append('unknown'),
                lambda p: p['native']['module_read']['serializer_inventory'].update(workbench_index=True),
                lambda p: p['native']['module_read']['serializer_inventory'].update(objects=True),
                lambda p: p['native']['module_read']['serializer_inventory'].update(blockers=['callback']),
                lambda p: p['native']['module_read']['owner_observations'].pop()):
            proof, _, _ = fixture(); mutate(proof)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate_inventory_proof(proof)

    def test_preparation_cannot_hide_previous_dump_or_mutated_current(self):
        for mutate in (lambda p: p.update(dump_calls=1), lambda p: p.update(workbench_index=3),
                lambda p: p.update(graph_objects=57), lambda p: p.update(store_called=True),
                lambda p: p['before']['owners'][0]['allocated_bytes'].__setitem__(-1, 99)):
            proof, native, _ = fixture(); mutate(native['prepared'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate_prepared(native['prepared'], proof)

    def test_fixed_command_follows_parent_authorization(self):
        calls = []; code = "print('BDE_FRESH_SERIALIZER_READY',flush=True); import sys; assert sys.stdin.readline() == 'SERIALIZE_FRESH_SOURCE_ONCE\\n'"
        with tempfile.TemporaryDirectory() as temp:
            status = run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ), output=Path(temp),
                authorize=lambda: calls.append('authorized'), serializer_dump=True, timeout=3)
        self.assertEqual(status, 0); self.assertEqual(calls, ['authorized'])

    def test_rejected_parent_does_not_dispatch_command(self):
        def reject(): raise ValueError('original refused')
        code = "print('BDE_FRESH_SERIALIZER_READY',flush=True); import sys; assert sys.stdin.readline() == ''"
        with tempfile.TemporaryDirectory() as temp, self.assertRaisesRegex(ValueError, 'original refused'):
            run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ), output=Path(temp),
                authorize=reject, serializer_dump=True, timeout=3)


class DumpConfirmationTests(unittest.TestCase):
    def documents(self):
        inventory, native, domain = fixture(); fresh = deepcopy(inventory)
        original = dict(profile='bde_fresh_source_dump_experiment_v1', passed=True, domain=domain,
            native_exit_code=0, pending_retained_until_fresh_read=True, wire=dict(errors=[]), native=deepcopy(native), pid=123, port=32631)
        prepared = dict(process_epoch=domain['process_epoch'], database=domain['database'],
            component=inventory['native']['module_read']['component'], component_oid=OID, prepared=native['prepared'])
        dispatch = dict(process_epoch=domain['process_epoch'], component_oid=OID, workbench_index=4,
            command='isolated_fresh_source_dump_once', automatic_retry=False)
        return original, native, inventory, fresh, prepared, dispatch

    def test_independent_full_confirmation_never_replays(self):
        result = verify_documents(*self.documents())
        self.assertEqual(result['native_calls'], 0); self.assertTrue(result['original_state_preserved'])
        self.assertFalse(result['serialization_replayed']); self.assertFalse(result['full_delivery'])

    def test_fresh_drift_and_other_epoch_and_dispatch_mismatch_refuse(self):
        for mutate in (lambda f: f['native'].update(process_epoch='other'),
                lambda f: f['native']['module_read']['owner_observations'][0]['owners'][0]['allocated_bytes'].__setitem__(-1, 99),
                lambda f: f['native']['module_read']['observations'][0].update(synthetic_graph=2),
                lambda f: f.update(persistent_complete_capture_verified=False)):
            documents = self.documents(); mutate(documents[3])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_documents(*documents)
        documents = self.documents(); documents[-1]['workbench_index'] = True
        with self.assertRaises(ValueError): verify_documents(*documents)

    def test_only_exact_bound_pending_can_be_cleared(self):
        from bd_edit_journal import fingerprint
        documents = self.documents(); domain = documents[0]['domain']; prepared = documents[4]; evidence = Path('owned')
        row = dict(domain=domain, command='research_fresh_source_dump_once', native_token='edit_' + fingerprint(domain),
            automatic_retry=False, managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'), original_sha256=fingerprint(prepared)))
        verify_pending(row, domain, evidence, prepared)
        for key, bad in (('command', 'owner_patch'), ('native_token', 'foreign'), ('automatic_retry', True)):
            changed = deepcopy(row); changed[key] = bad
            with self.subTest(key=key), self.assertRaises(ValueError): verify_pending(changed, domain, evidence, prepared)


if __name__ == '__main__': unittest.main()
