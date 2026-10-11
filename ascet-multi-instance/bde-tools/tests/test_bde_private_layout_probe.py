"""Synthetic private layout receipts and command guard tests, not live edits."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from test_bde_fresh_serializer_extract_probe import fixture as extract_fixture
from bde_fresh_serializer_extract_probe import verify_extract
from bde_private_layout_probe import validate_proof, validate_prepared, verify_layout
from bde_reference_leaf_noop_probe import run_handshake
from bde_private_layout_confirm import verify_documents, verify_pending
from bd_serialized_source_candidate import candidate_from_private_layout
from bd_persistent_owner_patch import inverse_request


def fixture():
    dump, inventory, dc, n = extract_fixture(); dump.update(pid=123, port=32631)
    proof = dict(profile='bde_fresh_source_extract_experiment_v1', passed=True, native_exit_code=0,
        pending_retained_until_fresh_read=True, wire=dict(errors=[]), native=n, domain=dump['domain'])
    confirmation = dict(profile='bde_fresh_source_extract_confirmation_v1', passed=True,
        pending_cleared_verified_original_state=True, original_state_preserved=True,
        complete_public_bookends_preserved=True, native_calls=0, summary=verify_extract(n, dump, inventory, dc))
    p = dict(profile='isolated_private_layout_after_prepared_v1', component_oid=n['component_oid'], workbench_index=4,
        before=deepcopy(n['actual']['after']), graph_objects=58, target_logic_id=3, target_class='SGOperatorGODB',
        before_position=[150, 80], after_position=[161, 80], private_field_writes=0, persistent_write_calls=0, full_delivery=False)
    payload = deepcopy(n['actual']['payload_bytes']); payload[0] ^= 1
    a = dict(profile='isolated_private_layout_after_result_v1', component_oid=n['component_oid'], workbench_index=4,
        before=deepcopy(p['before']), after=deepcopy(p['before']), target_logic_id=3, target_class='SGOperatorGODB',
        before_position=[150, 80], after_position=[161, 80], actual_diff=[dict(kind='private_source_coordinate',
            target_logic_id=3, field='position.x', before=150, after=161)], payload_bytes=payload,
        dump_calls=1, load_calls=1, dumper_error=0, loader_error=0, decoded_objects=58,
        changed_projection_equivalent=True, private_source_restored=True, original_graph_preserved=True,
        original_config_preserved=True, owner_records_preserved=True, private_field_writes=2,
        model_setters_called=0, persistent_write_calls=0, store_called=False, commit_called=False,
        production_inverse_authorized=False, full_delivery=False)
    native = dict(passed=True, complete_reply_received=True, layout_dispatched=True, write_dispatched=False,
        component_oid=n['component_oid'], process_epoch=n['process_epoch'], database=n['database'],
        dirty_before=0, dirty_after=0, prepared=p, actual=a)
    return proof, dump, inventory, dc, confirmation, native


class PrivateLayoutTests(unittest.TestCase):
    def test_changed_private_payload_is_never_production_move_authority(self):
        proof, dump, inventory, dc, confirmed, native = fixture()
        validate_proof(proof, dump, inventory, dc, confirmed)
        result = verify_layout(native, proof)
        self.assertEqual(result['scope'], 'private source only'); self.assertEqual(len(result['actual_diff']), 1)
        self.assertTrue(result['changed_projection_equivalent']); self.assertTrue(result['private_source_restored'])
        self.assertFalse(result['production_move_verified']); self.assertFalse(result['production_inverse_authorized'])

    def test_unknown_and_unconfirmed_prior_extraction_refused(self):
        for key, value in (('passed', False), ('pending_cleared_verified_original_state', False), ('native_calls', True),
                ('complete_public_bookends_preserved', False), ('summary', {})):
            proof, dump, inventory, dc, confirmed, _ = fixture(); confirmed[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): validate_proof(proof, dump, inventory, dc, confirmed)

    def test_target_epoch_delta_and_actual_diff_are_precise(self):
        for mutate in (lambda p: p.update(target_logic_id=True), lambda p: p.update(target_class='SGModule'),
                lambda p: p.update(after_position=[161, 81]), lambda p: p.update(after_position=[True, 80]),
                lambda p: p.update(before_position=[1000001, 80]), lambda p: p.update(graph_objects=57),
                lambda p: p.update(private_field_writes=1)):
            proof, _, _, _, _, native = fixture(); mutate(native['prepared'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate_prepared(native['prepared'], proof)
        proof, _, _, _, _, native = fixture(); native['actual']['actual_diff'][0]['field'] = 'position.y'
        with self.assertRaises(ValueError): verify_layout(native, proof)

    def test_partial_projection_restore_failure_or_live_writes_refused(self):
        for key, value in (('decoded_objects', 57), ('private_source_restored', False), ('original_graph_preserved', False),
                ('changed_projection_equivalent', False), ('private_field_writes', 1), ('model_setters_called', 1),
                ('persistent_write_calls', 1), ('dump_calls', 2), ('load_calls', True), ('dumper_error', 1),
                ('loader_error', 1), ('store_called', True), ('commit_called', True), ('full_delivery', True)):
            proof, _, _, _, _, native = fixture(); native['actual'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): verify_layout(native, proof)

    def test_full_bytes_before_after_and_distinct_changed_payload_required(self):
        for mutate in (lambda a: a.update(payload_bytes=[]), lambda a: a['payload_bytes'].__setitem__(0, True),
                lambda a: a.update(hidden_write=1),
                lambda a: a['after']['owners'][0]['allocated_bytes'].__setitem__(-1, 99)):
            proof, _, _, _, _, native = fixture(); mutate(native['actual'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_layout(native, proof)
        proof, _, _, _, _, native = fixture(); native['actual']['payload_bytes'] = proof['native']['actual']['payload_bytes']
        with self.assertRaises(ValueError): verify_layout(native, proof)

    def test_uncertain_cleanup_or_runtime_identity_rejected(self):
        for key, value in (('complete_reply_received', False), ('write_dispatched', True), ('layout_dispatched', False),
                ('process_epoch', 'foreign'), ('dirty_after', False), ('cleanup_error', 'unknown')):
            proof, _, _, _, _, native = fixture(); native[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError): verify_layout(native, proof)

    def test_private_layout_has_an_exclusive_fixed_command(self):
        with tempfile.TemporaryDirectory() as directory:
            script = "import sys; print('BDE_FRESH_LAYOUT_READY',flush=True); assert sys.stdin.readline()=='SERIALIZE_PRIVATE_LAYOUT_AFTER_ONCE\\n'"
            self.assertEqual(run_handshake([sys.executable, '-c', script], environment=os.environ.copy(), output=Path(directory),
                authorize=lambda: None, private_layout=True), 0)
        with tempfile.TemporaryDirectory() as directory, self.assertRaises(ValueError):
            run_handshake(['nonexistent.exe'], environment={}, output=Path(directory), authorize=lambda: None,
                private_layout=True, serializer_extract=True)

    def test_independent_confirmation_requires_full_unchanged_originals(self):
        proof, dump, inventory, _, _, native = fixture(); domain = proof['domain']
        original = dict(profile='bde_private_layout_after_experiment_v1', passed=True, native_exit_code=0,
            wire=dict(errors=[]), pending_retained_until_fresh_read=True, native=native, domain=domain,
            pid=123, port=32631, component=inventory['native']['module_read']['component'])
        frame = dict(process_epoch=domain['process_epoch'], database=domain['database'], component=original['component'],
            component_oid=domain['oid'], prepared=native['prepared'])
        dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=4,
            command='isolated_private_layout_after_once', automatic_retry=False)
        fresh = deepcopy(inventory)
        result = verify_documents(original, native, proof, dump, inventory, fresh, frame, dispatch)
        self.assertEqual(result['native_calls'], 0); self.assertTrue(result['original_state_preserved'])
        for mutate in (lambda f: f.update(pid=999), lambda f: f['native']['module_read']['owner_observations'].pop(),
                lambda f: f['native']['module_read']['owner_observations'][0]['owners'][0]['allocated_bytes'].__setitem__(-1, 99)):
            bad = deepcopy(fresh); mutate(bad)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError):
                verify_documents(original, native, proof, dump, inventory, bad, frame, dispatch)
        dispatch['command'] = 'other'
        with self.assertRaises(ValueError): verify_documents(original, native, proof, dump, inventory, fresh, frame, dispatch)

    def test_pending_binding_cannot_clear_other_operation(self):
        from bd_edit_journal import fingerprint
        proof, _, _, _, _, native = fixture(); domain = proof['domain']; evidence = Path('evidence'); frame = native['prepared']
        row = dict(domain=domain, command='research_private_layout_after_once', native_token='edit_' + fingerprint(domain),
            automatic_retry=False, managed_context=dict(evidence=str(evidence), original_material=str(evidence/'prepared.json'),
                original_sha256=fingerprint(frame)))
        verify_pending(row, domain, evidence, frame)
        row['command'] = 'research_fresh_source_extract_once'
        with self.assertRaises(ValueError): verify_pending(row, domain, evidence, frame)

    def test_raw_source_candidate_preserves_module_header_tail_and_exact_inverse(self):
        proof, _, _, _, _, native = fixture(); before = native['prepared']['before']
        result = candidate_from_private_layout(before, native, proof)
        source, candidate = before['owners'][1], result['candidate']['owners'][1]
        self.assertEqual(before['owners'][0], result['candidate']['owners'][0])
        self.assertEqual(source['allocated_bytes'][:126], candidate['allocated_bytes'][:126])
        self.assertEqual(candidate['bytes'][130:], native['actual']['payload_bytes'])
        self.assertEqual(candidate['allocated_bytes'][candidate['logical_size']:], source['allocated_bytes'][candidate['logical_size']:])
        self.assertEqual(result['offline_inverse']['candidate'], before)
        self.assertEqual(result['native_calls'], 0); self.assertFalse(result['production_write_authorized'])

    def test_source_extent_growth_and_shrink_are_complete_and_bounded(self):
        for extra in (-1, 20):
            proof, _, _, _, _, native = fixture()
            if extra < 0: native['actual']['payload_bytes'].pop()
            else: native['actual']['payload_bytes'].extend([7] * extra)
            result = candidate_from_private_layout(native['prepared']['before'], native, proof)
            row = result['candidate']['owners'][1]
            self.assertEqual(row['blob_size'], len(native['actual']['payload_bytes']))
            self.assertEqual(row['logical_size'], 130 + row['blob_size'])
            self.assertEqual(int.from_bytes(bytes(row['allocated_bytes'][126:130]), 'little'), row['blob_size'])
            self.assertEqual(len(row['allocated_bytes']), row['allocated_size'])
            self.assertEqual(result['offline_inverse']['candidate'], native['prepared']['before'])

    def test_inverse_preserves_unrelated_owner_change_and_rejects_source_overlap(self):
        proof, _, _, _, _, native = fixture(); before = native['prepared']['before']
        result = candidate_from_private_layout(before, native, proof); current = deepcopy(result['candidate'])
        row = current['owners'][0]; row['stored_version'] += 1
        row['allocated_bytes'][108:112] = list(row['stored_version'].to_bytes(4, 'little')); row['bytes'] = row['allocated_bytes'][:row['logical_size']]
        inverse = inverse_request(before, result['candidate'], current)
        self.assertEqual(inverse['candidate']['owners'][0], row)
        self.assertEqual(inverse['candidate']['owners'][1], before['owners'][1])
        current['owners'][1]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): inverse_request(before, result['candidate'], current)

    def test_foreign_original_record_cannot_use_this_payload(self):
        proof, _, _, _, _, native = fixture(); before = deepcopy(native['prepared']['before'])
        before['owners'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): candidate_from_private_layout(before, native, proof)


if __name__ == '__main__': unittest.main()
