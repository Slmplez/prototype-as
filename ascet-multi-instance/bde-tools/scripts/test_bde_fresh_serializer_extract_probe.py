"""Synthetic extraction receipt and process-handshake controls, not live QA."""
from copy import deepcopy
from pathlib import Path
import os
import sys
import tempfile
import unittest

from test_bde_fresh_serializer_dump_probe import fixture as dump_fixture
from bde_fresh_serializer_dump_probe import verify_dump
from bde_fresh_serializer_extract_probe import validate_confirmed_dump, validate_prepared, verify_extract, validate_continuation, verify_pending
from bde_reference_leaf_noop_probe import run_handshake
from bde_fresh_serializer_extract_confirm import verify_documents


def fixture():
    inventory, dump_native, domain = dump_fixture()
    proof = dict(profile='bde_fresh_source_dump_experiment_v1', passed=True, native_exit_code=0,
        pending_retained_until_fresh_read=True, wire=dict(errors=[]), domain=domain, native=dump_native)
    confirmation = dict(profile='bde_fresh_source_dump_confirmation_v1', passed=True,
        pending_cleared_verified_original_state=True, original_state_preserved=True,
        complete_public_bookends_preserved=True, native_calls=0, summary=verify_dump(dump_native, inventory))
    prepared = dict(profile='isolated_fresh_source_extract_prepared_v1', component_oid=domain['oid'], workbench_index=4,
        before=deepcopy(dump_native['actual']['after']), payload_bytes=deepcopy(dump_native['actual']['payload_bytes']),
        graph_objects=58, load_calls=0, finish_existing_load=False, persistent_write_calls=0, store_called=False, commit_called=False, full_delivery=False)
    actual = dict(profile='isolated_fresh_source_extract_result_v1', component_oid=domain['oid'], workbench_index=4,
        before=deepcopy(prepared['before']), after=deepcopy(prepared['before']), payload_bytes=deepcopy(prepared['payload_bytes']),
        load_calls=1, load_calls_this_dispatch=1, finish_existing_load=False, extracted_proxy_objects=1,
        loader_error=0, loaded_class='SGTopGraphicsBlockDB', loaded_objects=58,
        source_projection_equivalent=True, original_aliases=0, extracted_references=0, original_graph_preserved=True,
        original_config_preserved=True, owner_records_preserved=True, payload_preserved=True, loader_has_no_backend=True,
        persistent_write_calls=0, model_setters_called=0, store_called=False, commit_called=False, automatic_retry=False,
        production_inverse_authorized=False, cross_module_supported=False, full_delivery=False)
    native = dict(passed=True, complete_reply_received=True, extraction_dispatched=True, write_dispatched=False,
        process_epoch=domain['process_epoch'], database=domain['database'], component_oid=domain['oid'],
        dirty_before=0, dirty_after=0, prepared=prepared, actual=actual)
    return proof, inventory, confirmation, native


class ExtractionReceiptTests(unittest.TestCase):
    def test_success_only_allows_boundary_free_private_load(self):
        proof, inventory, confirmed, native = fixture()
        result = verify_extract(native, proof, inventory, confirmed)
        self.assertTrue(result['source_projection_equivalent'])
        self.assertTrue(result['independent_confirmation_required'])
        self.assertFalse(result['cross_module_supported']); self.assertFalse(result['production_inverse_authorized'])

    def test_unconfirmed_or_foreign_dump_rejected(self):
        for key, value in (('passed', False), ('pending_cleared_verified_original_state', False),
                ('native_calls', True), ('original_state_preserved', False), ('summary', {})):
            proof, inventory, confirmed, native = fixture(); confirmed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): validate_confirmed_dump(proof, inventory, confirmed)
        proof, inventory, confirmed, _ = fixture(); proof['domain']['process_epoch'] = 'foreign'
        with self.assertRaises(ValueError): validate_confirmed_dump(proof, inventory, confirmed)

    def test_payload_octets_identity_and_before_cannot_be_replaced(self):
        mutations = (lambda p: p['payload_bytes'].__setitem__(0, True),
            lambda p: p['payload_bytes'].__setitem__(0, p['payload_bytes'][0] ^ 1),
            lambda p: p.update(workbench_index=True), lambda p: p.update(graph_objects=57),
            lambda p: p.update(load_calls=True), lambda p: p.update(unreported_field=1),
            lambda p: p['before']['owners'][0]['allocated_bytes'].__setitem__(-1, 99))
        for mutate in mutations:
            proof, inventory, confirmed, native = fixture(); mutate(native['prepared'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate_prepared(native['prepared'], proof, inventory, confirmed)

    def test_aliasing_partial_coverage_side_effects_and_widened_claims_refused(self):
        fields = (('load_calls', 2), ('loader_error', True), ('original_aliases', 1), ('extracted_references', 1),
            ('loaded_objects', 57), ('loaded_class', 'Object'), ('source_projection_equivalent', False),
            ('original_graph_preserved', False), ('original_config_preserved', False), ('owner_records_preserved', False),
            ('loader_has_no_backend', False), ('payload_preserved', False), ('persistent_write_calls', 1),
            ('model_setters_called', 1), ('store_called', True), ('commit_called', True), ('automatic_retry', True),
            ('production_inverse_authorized', True), ('cross_module_supported', True), ('full_delivery', True))
        for key, value in fields:
            proof, inventory, confirmed, native = fixture(); native['actual'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): verify_extract(native, proof, inventory, confirmed)

    def test_unknown_epoch_dirty_and_cleanup_failures_refused(self):
        for key, value in (('complete_reply_received', False), ('extraction_dispatched', False), ('write_dispatched', True),
                ('process_epoch', 'foreign'), ('dirty_after', False), ('cleanup_error', 'unknown')):
            proof, inventory, confirmed, native = fixture(); native[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): verify_extract(native, proof, inventory, confirmed)

    def test_exact_readback_and_payload_required(self):
        for mutate in (lambda a: a['payload_bytes'].pop(), lambda a: a.update(hidden_writer=True),
                lambda a: a['after']['owners'][0]['allocated_bytes'].__setitem__(-1, 99)):
            proof, inventory, confirmed, native = fixture(); mutate(native['actual'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_extract(native, proof, inventory, confirmed)

    def test_parent_validation_precedes_exact_extraction_command(self):
        with tempfile.TemporaryDirectory() as directory:
            output = Path(directory); validated = []
            script = "import sys; print('BDE_FRESH_EXTRACT_READY',flush=True); assert sys.stdin.readline()=='EXTRACT_RETAINED_SOURCE_ONCE\\n'"
            result = run_handshake([sys.executable, '-c', script], environment=os.environ.copy(), output=output,
                authorize=lambda: validated.append(True), serializer_extract=True)
            self.assertEqual(result, 0); self.assertEqual(validated, [True])

    def test_conflicting_modes_rejected_before_child_launch(self):
        with tempfile.TemporaryDirectory() as directory, self.assertRaises(ValueError):
            run_handshake(['nonexistent.exe'], environment={}, output=Path(directory), authorize=lambda: None,
                serializer_extract=True, serializer_dump=True)

    def test_continuation_cannot_replay_native_load(self):
        proof, inventory, confirmed, native = fixture()
        native['prepared'].update(load_calls=1, finish_existing_load=True)
        native['actual'].update(load_calls_this_dispatch=0, finish_existing_load=True)
        self.assertEqual(verify_extract(native, proof, inventory, confirmed, finish=True)['load_calls_this_dispatch'], 0)
        native['actual']['load_calls_this_dispatch'] = 1
        with self.assertRaises(ValueError): verify_extract(native, proof, inventory, confirmed, finish=True)

    def test_continuation_requires_exact_known_failure_and_independent_full_read(self):
        from bd_edit_journal import fingerprint
        proof, inventory, confirmed, native = fixture(); proof.update(pid=123, port=32631)
        old_prepared = deepcopy(native['prepared']); del old_prepared['finish_existing_load']
        old = deepcopy(native); old.update(prepared=old_prepared,
            actual='BDE_FRESH_EXTRACT_EXECUTION_ERROR: Boundary-free dump unexpectedly extracted DB proxies')
        component = inventory['native']['module_read']['component']
        failed = dict(profile='bde_fresh_source_extract_experiment_v1', passed=False, parent_validated_original_before=True,
            native_exit_code=0, wire=dict(errors=[]), native=old, pid=123, port=32631, domain=proof['domain'], component=component)
        fresh = deepcopy(inventory)
        fresh['native']['module_read']['observations'] = deepcopy(inventory['native']['module_read']['observations'])
        self.assertEqual(validate_continuation(failed, proof, inventory, confirmed, fresh), proof['domain'])
        for mutate in (lambda f: f['native'].update(actual='timeout'),
                lambda f: f.update(native_exit_code=1), lambda f: f['native'].update(cleanup_error='unknown'),
                lambda f: f['native'].update(process_epoch='foreign')):
            bad = deepcopy(failed); mutate(bad)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate_continuation(bad, proof, inventory, confirmed, fresh)
        fresh['native']['module_read']['owner_observations'].pop()
        with self.assertRaises(ValueError): validate_continuation(failed, proof, inventory, confirmed, fresh)
        domain = proof['domain']; evidence = Path('retained'); frame = dict(prepared=old_prepared)
        pending = dict(domain=domain, command='research_fresh_source_extract_once', native_token='edit_' + fingerprint(domain),
            automatic_retry=False, managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'), original_sha256=fingerprint(frame)))
        verify_pending(pending, domain, evidence, frame)
        pending['managed_context']['original_sha256'] = 'foreign'
        with self.assertRaises(ValueError): verify_pending(pending, domain, evidence, frame)

    def test_finish_uses_a_different_fixed_command(self):
        with tempfile.TemporaryDirectory() as directory:
            script = "import sys; print('BDE_FRESH_FINISH_READY',flush=True); assert sys.stdin.readline()=='FINISH_EXISTING_LOADED_SOURCE_ONCE\\n'"
            self.assertEqual(run_handshake([sys.executable, '-c', script], environment=os.environ.copy(), output=Path(directory),
                authorize=lambda: None, serializer_finish=True), 0)

    def test_independent_confirmation_rejects_raw_drift_and_wrong_dispatch(self):
        proof, inventory, confirmed, native = fixture(); proof.update(pid=123, port=32631)
        domain = proof['domain']; component = inventory['native']['module_read']['component']
        original = dict(profile='bde_fresh_source_extract_experiment_v1', passed=True, native_exit_code=0,
            pending_retained_until_fresh_read=True, wire=dict(errors=[]), native=native, domain=domain,
            pid=123, port=32631, component=component)
        prepared = dict(process_epoch=domain['process_epoch'], database=domain['database'], component=component,
            component_oid=domain['oid'], prepared=native['prepared'])
        dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=4,
            command='isolated_fresh_source_extract_once', automatic_retry=False)
        fresh = deepcopy(inventory)
        result = verify_documents(original, native, proof, inventory, confirmed, fresh, prepared, dispatch)
        self.assertEqual(result['native_calls'], 0); self.assertFalse(result['production_inverse_authorized'])
        for mutate in (lambda f: f.update(pid=999), lambda f: f['native'].update(process_epoch='foreign'),
                lambda f: f['native']['module_read']['owner_observations'].pop(),
                lambda f: f['native']['module_read']['owner_observations'][0]['owners'][0]['allocated_bytes'].__setitem__(-1, 99)):
            bad = deepcopy(fresh); mutate(bad)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError):
                verify_documents(original, native, proof, inventory, confirmed, bad, prepared, dispatch)
        dispatch['command'] = 'isolated_fresh_source_finish_once'
        with self.assertRaises(ValueError): verify_documents(original, native, proof, inventory, confirmed, fresh, prepared, dispatch)


if __name__ == '__main__': unittest.main()
