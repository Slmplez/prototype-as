"""Offline history/unknown boundary tests; not native ASCET validation."""
from contextlib import nullcontext
import json
import os
import tempfile
import unittest
from unittest.mock import patch
import bd_instance_pending as pending
import bd_recovery as recovery
from bd_edit_journal import clone, fingerprint, JournalError, NativePreconditionConflict
from bd_structure_journal import StructureJournal
from test_bd_inverse_material import MaterialAdapter
from bd_field_execution import FLAGS, PROFILE


def field_proof(token, direction, sequence=1):
    raw = {'state': 'applied', 'completed_cells': 1, 'completed_primitives': 1,
           'cell_count': 1, 'direction': direction}
    normalization = {**raw, 'completed_cells': 0, 'completed_primitives': 0,
                     'cell_count': 0, 'direction': 'undo'}
    return {'profile': PROFILE, 'native_token': token, 'operation': 'set_literal',
            'execution_sequence': sequence, 'direction': direction, 'phase': 'terminal',
            'raw_patch': None if direction == 'forward' else raw,
            'normalization': None if direction == 'forward' else normalization,
            'source_patch': None if direction == 'forward' else {**normalization, 'direction': direction},
            'source_transaction_id': None,
            **{key: True for key in FLAGS}}


class ManagedAdapter(MaterialAdapter):
    managed_inverse_operations = frozenset(('set_literal',))
    field_execution_required = True

    def __init__(self, log):
        super().__init__(log)
        self.state = {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 1,
            'targets': ['n1'], 'lookup_nodes': 1, 'lookup_edges': 0,
            'entries': [{'ref': 'n1', 'kind': 'node', 'native_class': 'Literal', 'pins': [],
                'literal': '1', 'anchor': [0, 0], 'position': [0, 0], 'size': [9, 9]}]}
        self.head = None; self.native_state = 'prepared'; self.fail_model = self.fail_handoff = False
        self.managed_calls = self.handoffs = self.managed_confirms = 0
        self.field_confirms = 0; self.field_sequence = 0

    def apply(self, token):
        self.field_sequence += 1
        self.field_execution = field_proof(token, 'forward', self.field_sequence)
        self.state['entries'][0]['literal'] = '2'; self.after = clone(self.state)
        self.native_state = 'applied'; self.calls += 1
        return clone(self.state)

    def revert(self, domain, token, *, expected_operation=None):
        self.field_sequence += 1
        self.field_execution = field_proof(token, 'undo', self.field_sequence)
        self.state = clone(self.before); self.native_state = 'reverted'; self.calls += 1
        return clone(self.state)

    def confirm_field(self, domain, command, token):
        # Evidence must be in the WAL before a transport acknowledgement.
        candidates = [self.log.read(path.name) for path in self.log.root.iterdir() if path.is_dir()]
        assert any(events[-1]['kind'] == 'finished' and any(e['kind'] == 'observed'
            and e['payload'].get('field_execution') == self.field_execution for e in events) for events in candidates)
        self.field_confirms += 1

    def retain_inverse(self, domain, token, inverse_id):
        proof = super().retain_inverse(domain, token, inverse_id)
        self.head = inverse_id
        return proof

    def validate_managed_inverse(self, domain, token, head, state, result):
        if head != self.head or state != self.native_state:
            raise NativePreconditionConflict('Native current history head differs')
        return clone(self.state)

    def managed_inverse(self, domain, token, head, state, result):
        self.validate_managed_inverse(domain, token, head, state, result)
        self.managed_calls += 1
        self.field_sequence += 1
        self.field_execution = field_proof(token, 'redo' if state == 'reverted' else 'undo', self.field_sequence)
        self.state = clone(self.after if state == 'reverted' else self.before)
        self.native_state = 'applied' if state == 'reverted' else 'reverted'
        if self.fail_model:
            raise TimeoutError('Actual managed model completion hidden')
        return clone(self.state)

    def confirm_managed(self, domain, token, head, state, result, *, handoff=False):
        events = self.log.read(result)
        assert events[-1]['kind'] == ('recovery_handed_off' if handoff else 'finished')
        self.managed_confirms += 1

    def handoff_inverse(self, domain, token, head, state, result):
        assert self.log.read(result)[-1]['kind'] == 'recovery_handoff_started'
        assert self.log.receipt(result, self.log.read(result))['status'] == 'verified_local'
        self.handoffs += 1; self.head = result
        if self.fail_handoff:
            raise TimeoutError('Actual managed metadata completion hidden')
        return {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': token,
            'previous_owner_change_id': head, 'owner_change_id': result, 'state': state, 'model_setters_called': 0}


class ManagedHistoryTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory(); self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(temporary.name); self.adapter = ManagedAdapter(self.log)
        request = {'domain': {'session': 's', 'database': 'db', 'oid': 'o', 'process_epoch': 'epoch'},
            'request_id': 'edit', 'component': r'BDE_Tool_Experiments\Trial_test', 'diagram': 'Main',
            'operation': 'set_literal', 'arguments': [['n1'], 'n1', '2'], 'expect': fingerprint(self.adapter.state)}
        self.edit = self.log.execute(request, self.adapter, nullcontext)
        self.undo = self.log.revert(self.edit['change_id'], 'undo', self.adapter, nullcontext)

    def redo(self):
        return self.log.revert(self.undo['change_id'], 'redo', self.adapter, nullcontext)

    def test_three_inverse_directions_have_actual_journals_and_one_material_origin(self):
        redo = self.redo(); restored = self.log.revert(redo['change_id'], 'restore', self.adapter, nullcontext)
        self.assertEqual((self.undo['status'], redo['status'], restored['status']), ('verified_local',) * 3)
        self.assertEqual((self.adapter.managed_calls, self.adapter.handoffs, self.adapter.managed_confirms), (2, 2, 4))
        self.assertEqual(self.adapter.state, self.adapter.before)
        self.assertEqual(self.log.origin(restored['change_id'])['change_id'], self.edit['change_id'])
        self.assertTrue(restored['recovery_material']['revert_of_revert_available'])
        self.assertEqual(self.log.diff(redo['change_id'])['differences'][0]['after']['literal'], '2')

    def test_same_request_returns_durable_receipt_without_reexecuting(self):
        redo = self.redo(); self.assertEqual(self.redo(), redo)
        self.assertEqual(self.adapter.managed_calls, 1)

    def test_old_head_is_refused_before_model_setters(self):
        redo = self.redo(); self.log.revert(redo['change_id'], 'restore', self.adapter, nullcontext)
        result = self.log.revert(self.undo['change_id'], 'stale', self.adapter, nullcontext)
        self.assertEqual(result['status'], 'conflict'); self.assertFalse(result['setter_called'])
        self.assertEqual(self.adapter.managed_calls, 2)

    def test_changed_patch_conflicts_without_model_or_metadata_dispatch(self):
        self.adapter.state['entries'][0]['literal'] = '99'
        result = self.redo()
        self.assertEqual(result['status'], 'conflict')
        self.assertEqual((self.adapter.managed_calls, self.adapter.handoffs), (0, 0))

    def test_model_reply_loss_never_reexecutes_or_hands_off_unproven_result(self):
        self.adapter.fail_model = True; result = self.redo()
        self.assertEqual(result['status'], 'outcome_unknown'); self.assertEqual(self.redo(), result)
        self.assertEqual((self.adapter.managed_calls, self.adapter.handoffs), (1, 0))

    def test_metadata_reply_loss_preserves_actual_model_result_and_does_not_retry(self):
        self.adapter.fail_handoff = True; result = self.redo()
        self.assertEqual(result['status'], 'verified_local')
        self.assertEqual(result['recovery_material']['status'], 'ownership_unconfirmed')
        self.assertEqual(self.redo(), result); self.assertEqual(self.adapter.handoffs, 1)
        with self.assertRaises(JournalError):
            self.log.managed_context(result['change_id'])

    def test_missing_exact_ownership_proof_cannot_enable_replay(self):
        self.adapter.fail = True
        second = self.log.revert(self.edit['change_id'], 'missing_owner', self.adapter, nullcontext)
        with self.assertRaises(JournalError):
            self.log.managed_context(second['change_id'])


class ManagedRecoveryTests(unittest.TestCase):
    setUp = ManagedHistoryTests.setUp
    redo = ManagedHistoryTests.redo

    def native(self, token, *, owned_after):
        events = self.log.read(token)
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        context = prepared['managed_inverse']
        return {'state': 'applied', 'before': clone(self.adapter.before), 'after': clone(self.adapter.after),
            'current': clone(self.adapter.after), 'material_ownership': {'profile': 'retained_inverse_v1',
                'native_token': self.edit['change_id'], 'owner_change_id': token if owned_after else self.undo['change_id']},
            'field_execution': clone(self.adapter.field_execution),
            'managed_execution': {'head_change_id': self.undo['change_id'], 'result_change_id': token,
                'expected_state': 'reverted', 'after_state': 'applied'}}, context

    def reconcile(self, token, native, context, command):
        with tempfile.TemporaryDirectory() as local, patch.dict(os.environ, LOCALAPPDATA=local):
            domain = self.log.read(token)[0]['payload']['domain']
            marker_context = {k: context[k] for k in ('head_change_id', 'expected_state', 'result_change_id')}
            if command == 'handoff_inverse':
                marker_context['expected_state'] = 'applied'
            marker_path = pending.begin(domain, command, self.edit['change_id'], context=marker_context)
            marker = json.loads(marker_path.read_text())
            return recovery.managed_status(self.log, token, self.log.read(token), self.log.read(self.edit['change_id']),
                self.edit['change_id'], native, {'domain': domain, 'component': r'BDE_Tool_Experiments\Trial_test'},
                marker, marker_path, True)

    def test_lost_completed_handoff_is_reconciled_without_any_redispatch(self):
        self.adapter.fail_handoff = True; redo = self.redo()
        native, context = self.native(redo['change_id'], owned_after=True)
        with patch.object(recovery, 'NativeStructureAdapter') as bridge:
            result = self.reconcile(redo['change_id'], native, context, 'handoff_inverse')
            bridge.assert_not_called()
        self.assertEqual((result['dispatch_count'], result['model_setters_called']), (0, 0))
        self.assertTrue(result['reconciled']); self.assertFalse(result['instance_quarantined'])
        self.assertTrue(result['receipt']['recovery_material']['revert_of_revert_available'])
        self.assertTrue(any(e['kind'] == 'recovery_handoff_failed' for e in self.log.read(redo['change_id'])))

    def test_lost_model_completion_observes_then_hands_off_once_without_model_replay(self):
        self.adapter.fail_model = True; redo = self.redo()
        native, context = self.native(redo['change_id'], owned_after=False)
        with patch.object(recovery, 'NativeStructureAdapter') as bridge, patch.object(recovery, 'publish_after', side_effect=lambda log, receipt, domain, component: receipt):
            bridge.return_value.__enter__.return_value = self.adapter
            result = self.reconcile(redo['change_id'], native, context, 'managed_inverse')
        self.assertEqual(result['dispatch_count'], 1)
        self.assertEqual((self.adapter.managed_calls, self.adapter.handoffs), (1, 1))
        self.assertEqual(result['receipt']['status'], 'verified_local')

    def test_partial_native_state_retains_quarantine_and_dispatches_nothing(self):
        self.adapter.fail_model = True; redo = self.redo()
        native, context = self.native(redo['change_id'], owned_after=False)
        native['state'] = 'started'
        with patch.object(recovery, 'NativeStructureAdapter') as bridge:
            with self.assertRaises(JournalError):
                self.reconcile(redo['change_id'], native, context, 'managed_inverse')
            bridge.assert_not_called()

    def test_semantic_terminal_cannot_hide_missing_or_partial_native_patch(self):
        self.adapter.fail_model = True; redo = self.redo()
        native, context = self.native(redo['change_id'], owned_after=False)
        for proof in (None, {**native['field_execution'], 'normalization': None},
                      {**native['field_execution'], 'native_matches_terminal': False}):
            with self.subTest(proof=proof), patch.object(recovery, 'NativeStructureAdapter') as bridge:
                with self.assertRaises(JournalError):
                    self.reconcile(redo['change_id'], {**native, 'field_execution': proof}, context, 'managed_inverse')
                bridge.assert_not_called()
        self.assertEqual((self.adapter.managed_calls, self.adapter.handoffs), (1, 0))


if __name__ == '__main__':
    unittest.main()
