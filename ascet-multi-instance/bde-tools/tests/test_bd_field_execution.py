"""Offline failure boundary tests; none proves live ASCET editing."""
from contextlib import nullcontext
from copy import deepcopy
import os
import tempfile
import unittest
from unittest.mock import patch

from bd_edit_journal import fingerprint
from bd_field_execution import FLAGS, validate
from bd_native_structure import NativeStructureAdapter
import bd_instance_pending as pending
from bd_structure_journal import StructureJournal
from test_bd_managed_inverse import ManagedAdapter, field_proof

TOKEN = 'edit_' + 'a' * 64
DOMAIN = {'session': 's', 'database': 'db', 'oid': 'o', 'process_epoch': 'epoch'}


class FieldProofTests(unittest.TestCase):
    def check(self, proof, **options):
        return validate(proof, token=TOKEN, operation='set_literal', direction=proof['direction'], **options)

    def test_exact_directions_require_raw_and_normalization_completion(self):
        for direction in ('forward', 'undo', 'redo'):
            proof = field_proof(TOKEN, direction)
            self.assertEqual(self.check(proof), proof)
        for key in FLAGS:
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.check({**field_proof(TOKEN, 'undo'), key: False})

    def test_semantic_success_does_not_authorize_partial_raw_or_store_execution(self):
        proof = field_proof(TOKEN, 'undo')
        for change in ({'normalization': None}, {'phase': 'store'},
                       {'raw_patch': {**proof['raw_patch'], 'state': 'started'}},
                       {'raw_patch': {**proof['raw_patch'], 'completed_cells': 0}},
                       {'raw_patch': {**proof['raw_patch'], 'cell_count': True}}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.check({**proof, **change})

    def test_wrong_bindings_extra_material_or_boolean_sequence_are_refused(self):
        proof = field_proof(TOKEN, 'undo')
        for change in ({'native_token': 'other'}, {'operation': 'delete_node'},
                       {'execution_sequence': True}, {'source_matches_terminal': 1}, {'objects': []}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.check({**proof, **change})

    def test_progress_can_be_reported_without_confirming_terminal(self):
        proof = field_proof(TOKEN, 'undo')
        proof.update(phase='store', normalization=None, store_completed=False, terminal_verified=False,
                     serialized_source_verified=False, native_matches_terminal=False, source_matches_terminal=False)
        self.assertEqual(self.check(proof, terminal=False), proof)
        with self.assertRaises(ValueError):
            self.check(proof)

    def test_source_sharing_progress_and_transaction_are_required_for_exact_inverse(self):
        proof = field_proof(TOKEN, 'undo')
        for change in ({'source_patch': None}, {'source_root_preserved': False},
                       {'source_patch': {**proof['source_patch'], 'state': 'prepared'}},
                       {'source_patch': {**proof['source_patch'], 'completed_primitives': 1}},
                       {'source_transaction_id': 'other'}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.check({**proof, **change})
        self.assertEqual(self.check({**proof, 'source_transaction_id': 'source_' + 'b' * 64})['direction'], 'undo')

    def test_historical_inverse_cannot_supply_new_source_identity_proof(self):
        proof = field_proof(TOKEN, 'undo')
        for key in ('source_patch', 'source_root_preserved', 'source_transaction_id'):
            proof.pop(key)
        proof['profile'] = 'native_field_execution_v1'
        self.assertEqual(self.check(proof, terminal=False), proof)
        with self.assertRaises(ValueError):
            self.check(proof)

    def test_v3_forward_requires_completed_source_normalization_without_relaxing_v2(self):
        proof = field_proof(TOKEN, 'forward')
        proof['profile'] = 'native_field_execution_v3'
        proof['source_patch'] = {'state': 'applied', 'completed_cells': 5,
                                 'completed_primitives': 5, 'cell_count': 5, 'direction': 'forward'}
        self.assertEqual(self.check(proof), proof)
        with self.assertRaises(ValueError):
            self.check({**proof, 'profile': 'native_field_execution_v2'})
        for change in ({'source_patch': None},
                       {'source_patch': {**proof['source_patch'], 'state': 'started'}},
                       {'source_patch': {**proof['source_patch'], 'direction': 'undo'}},
                       {'source_patch': {**proof['source_patch'], 'completed_primitives': 4}},
                       {'source_transaction_id': 'source_' + 'b' * 64}):
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.check({**proof, **change})

    def test_v3_incomplete_forward_remains_observation_not_terminal_confirmation(self):
        proof = field_proof(TOKEN, 'forward')
        proof.update(profile='native_field_execution_v3', phase='field_forward_source_normalization',
                     terminal_verified=False, serialized_source_verified=False, source_patch=None)
        self.assertEqual(self.check(proof, terminal=False), proof)
        with self.assertRaises(ValueError):
            self.check(proof)


class FieldTransportTests(unittest.TestCase):
    def adapter(self, proof):
        adapter = NativeStructureAdapter.__new__(NativeStructureAdapter)
        adapter.domain = deepcopy(DOMAIN)
        adapter.prepared_operation = 'set_literal'
        adapter._exchange = lambda request: {'observation': {'entries': []}, 'field_execution': proof}
        return adapter

    def test_received_result_remains_pending_until_durable_acknowledgement(self):
        with tempfile.TemporaryDirectory() as local, patch.dict(os.environ, LOCALAPPDATA=local):
            adapter = self.adapter(field_proof(TOKEN, 'forward'))
            self.assertEqual(adapter._mutate('apply', TOKEN), {'entries': []})
            self.assertTrue(pending.pending_path(DOMAIN).exists())
            adapter.confirm_field(DOMAIN, 'apply', TOKEN)
            self.assertFalse(pending.pending_path(DOMAIN).exists())

    def test_missing_or_bad_proof_keeps_pending(self):
        for proof in (None, {**field_proof(TOKEN, 'forward'), 'terminal_verified': False}):
            with self.subTest(proof=proof), tempfile.TemporaryDirectory() as local, patch.dict(os.environ, LOCALAPPDATA=local):
                adapter = self.adapter(proof)
                with self.assertRaises(ValueError):
                    adapter._mutate('apply', TOKEN)
                self.assertTrue(pending.pending_path(DOMAIN).exists())

    def test_fresh_inverse_adapter_cannot_clear_pending_without_native_proof(self):
        with tempfile.TemporaryDirectory() as local, patch.dict(os.environ, LOCALAPPDATA=local):
            adapter = self.adapter(None)
            del adapter.prepared_operation
            adapter.expected_operation = 'set_literal'
            adapter.parent_order_preflight_token = TOKEN; adapter.parent_order_before = None
            with self.assertRaises(ValueError):
                adapter._mutate('revert', TOKEN)
            self.assertTrue(pending.pending_path(DOMAIN).exists())


class FieldJournalTests(unittest.TestCase):
    def execute(self, mutate_log=None):
        temporary = tempfile.TemporaryDirectory(); self.addCleanup(temporary.cleanup)
        log = StructureJournal(temporary.name); adapter = ManagedAdapter(log)
        request = {'domain': DOMAIN, 'request_id': 'field-proof', 'component': r'BDE_Tool_Experiments\Trial_test',
                   'diagram': 'Main', 'operation': 'set_literal', 'arguments': [['n1'], 'n1', '2'],
                   'expect': fingerprint(adapter.state)}
        if mutate_log:
            original = log._append
            def append(path, events, kind, payload):
                if kind == 'finished' and payload.get('status') == 'applied_observed':
                    raise OSError('Completed result failed to reach durable WAL')
                return original(path, events, kind, payload)
            log._append = append
        result = log.execute(request, adapter, nullcontext)
        return result, log, adapter

    def test_actual_proof_persisted_and_receipt_replay_needs_no_online_read(self):
        result, log, adapter = self.execute()
        self.assertEqual(adapter.field_confirms, 1)
        self.assertEqual(result['field_execution'], adapter.field_execution)
        self.assertEqual(log.receipt(result['change_id'], log.read(result['change_id'])), result)

    def test_wal_completion_failure_never_acknowledges_native_result(self):
        result, log, adapter = self.execute(mutate_log=True)
        self.assertEqual(result['status'], 'outcome_unknown')
        self.assertEqual(adapter.field_confirms, 0)
        self.assertTrue(any(e['kind'] == 'observed' and 'field_execution' in e['payload']
                            for e in log.read(result['change_id'])))


if __name__ == '__main__':
    unittest.main()
