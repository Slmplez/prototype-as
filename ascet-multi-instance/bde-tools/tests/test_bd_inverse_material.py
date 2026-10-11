"""Retained inverse ownership/durability faults; native objects here are fixtures."""
from contextlib import nullcontext
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_instance_pending as pending
import bd_recovery as recovery
import bd_service as service
from bd_edit_journal import JournalError, clone, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from test_bd_structure_journal import Adapter


class MaterialAdapter(Adapter):
    retained_inverse_material_capable = True

    def __init__(self, log):
        super().__init__()
        self.log, self.retains, self.confirms = log, 0, 0
        self.fail, self.wrong_owner = False, False

    def retain_inverse(self, domain, token, inverse_id):
        self.retains += 1
        events = self.log.read(inverse_id)
        assert events[-1]['kind'] == 'recovery_retention_started'
        assert self.log.receipt(inverse_id, events)['status'] == 'verified_local'
        if self.fail:
            raise TimeoutError('metadata completion lost after ownership changed')
        return {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': token,
            'owner_change_id': 'edit_' + 'e' * 64 if self.wrong_owner else inverse_id,
            'state': 'reverted', 'model_setters_called': 0}

    def confirm_retention(self, domain, token, inverse_id):
        assert self.log.read(inverse_id)[-1]['kind'] == 'recovery_retained'
        self.confirms += 1

    def release(self, *args, **kwargs):
        raise AssertionError('Retained material must not be released')


class InverseMaterialTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(temporary.name)
        self.adapter = MaterialAdapter(self.log)
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'o', 'process_epoch': 'epoch'},
            'request_id': 'original', 'component': r'BDE_Tool_Experiments\Trial_test', 'diagram': 'Main',
            'operation': 'set_transition_priority', 'arguments': [['t1'], 't1', 2],
            'expect': fingerprint(self.adapter.state)}
        self.edit = self.log.execute(self.request, self.adapter, nullcontext)

    def inverse(self):
        return self.log.revert(self.edit['change_id'], 'undo', self.adapter, nullcontext)

    def test_handoff_is_journaled_before_dispatch_and_before_pending_confirmation(self):
        receipt = self.inverse()
        self.assertEqual(receipt['status'], 'verified_local')
        self.assertEqual((self.adapter.retains, self.adapter.confirms), (1, 1))
        self.assertEqual(receipt['recovery_material']['native_token'], self.edit['change_id'])
        self.assertEqual(receipt['recovery_material']['owner_change_id'], receipt['change_id'])
        self.assertFalse(receipt['recovery_material']['revert_of_revert_available'])

    def test_lost_handoff_reply_keeps_known_model_inverse_and_never_replays(self):
        self.adapter.fail = True
        receipt = self.inverse()
        self.assertEqual(receipt['status'], 'verified_local')
        self.assertEqual(receipt['recovery_material']['status'], 'ownership_unconfirmed')
        self.assertEqual(self.inverse(), receipt)
        self.assertEqual((self.adapter.retains, self.adapter.confirms), (1, 0))

    def test_wrong_native_owner_is_not_committed_or_confirmed(self):
        self.adapter.wrong_owner = True
        receipt = self.inverse()
        self.assertEqual(receipt['recovery_material']['status'], 'ownership_unconfirmed')
        self.assertEqual(self.adapter.confirms, 0)
        self.assertFalse(any(e['kind'] == 'recovery_retained' for e in self.log.read(receipt['change_id'])))

    def test_pre_dispatch_durable_failure_does_not_call_handoff(self):
        original = self.log._append
        def append(path, events, kind, payload):
            if kind == 'recovery_retention_started':
                raise OSError('before handoff WAL unavailable')
            return original(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=append):
            receipt = self.inverse()
        self.assertEqual(receipt['status'], 'verified_local')
        self.assertEqual((self.adapter.retains, self.adapter.confirms), (0, 0))
        failure = self.log.read(receipt['change_id'])[-1]['payload']
        self.assertFalse(failure['dispatch_attempted'])

    def test_post_handoff_durable_failure_does_not_clear_pending(self):
        original = self.log._append
        def append(path, events, kind, payload):
            if kind == 'recovery_retained':
                raise OSError('after handoff WAL unavailable')
            return original(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=append):
            receipt = self.inverse()
        self.assertEqual(receipt['recovery_material']['status'], 'ownership_unconfirmed')
        self.assertEqual((self.adapter.retains, self.adapter.confirms), (1, 0))

    def test_native_pending_marker_survives_reply_until_durable_commit(self):
        with tempfile.TemporaryDirectory() as local, patch.dict(os.environ, LOCALAPPDATA=local):
            native = NativeStructureAdapter(self.request['component'])
            domain, source = self.request['domain'], self.edit['change_id']
            inverse_id = 'edit_' + 'a' * 64
            proof = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': source,
                'owner_change_id': inverse_id, 'state': 'reverted', 'model_setters_called': 0}
            with patch.object(native, '_ensure_open'), patch.object(native, '_exchange', return_value=proof):
                self.assertEqual(native.retain_inverse(domain, source, inverse_id), proof)
                self.assertTrue(pending.pending_path(domain).exists())
                native.confirm_retention(domain, source, inverse_id)
                self.assertFalse(pending.pending_path(domain).exists())


class MaterialReconciliationTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        for item in (patch.dict(os.environ, LOCALAPPDATA=temporary.name),
                patch.object(service, 'STORE', Path(temporary.name) / 'store'),
                patch.object(service, 'live_lock', nullcontext)):
            item.start(); self.addCleanup(item.stop)
        self.log = StructureJournal(service.STORE / 'edits')
        adapter = MaterialAdapter(self.log)
        self.domain = {'session': 's', 'database': 'db', 'oid': 'o', 'process_epoch': 'epoch'}
        self.request = {'domain': self.domain, 'request_id': 'original', 'component': r'BDE_Tool_Experiments\Trial_test',
            'diagram': 'Main', 'operation': 'set_transition_priority', 'arguments': [['t1'], 't1', 2],
            'expect': fingerprint(adapter.state)}
        self.edit = self.log.execute(self.request, adapter, nullcontext)
        original = self.log.read(self.edit['change_id'])
        adapter.fail = True
        self.inverse = self.log.revert(self.edit['change_id'], 'undo', adapter, nullcontext)
        self.token = self.inverse['change_id']
        binding({'domain': self.domain, 'request_id': 'undo', 'reverts': self.edit['change_id']},
            self.request['component'], 's_' + '1' * 32)
        before = next(e['payload']['before'] for e in original if e['kind'] == 'prepared')
        self.owner = {'profile': 'retained_inverse_v1', 'native_token': self.edit['change_id'], 'owner_change_id': self.token}
        self.native = {'state': 'reverted', 'before': before, 'after': before, 'current': before, 'material_ownership': self.owner}
        self.marker = pending.begin(self.domain, 'retain_inverse', self.edit['change_id'])
        self.native_patch = patch.object(recovery, 'NativeStructureAdapter')
        self.mock = self.native_patch.start(); self.addCleanup(self.native_patch.stop)
        self.mock.return_value.__enter__.return_value.recovery_status.side_effect = lambda *a: clone(self.native)

    def invoke(self):
        response = service.handle('bd_inspect', {'query': 'recovery', 'change_id': self.token, 'reconcile': True}, 's')
        return json.loads(response['content'].split('\n\n', 1)[1])

    def test_lost_completed_reply_reconciles_without_a_second_handoff(self):
        result = self.invoke()
        self.assertTrue(result['reconciled'])
        self.assertEqual(result['material_state'], 'retained')
        self.assertFalse(self.marker.exists())
        self.mock.return_value.__enter__.return_value.retain_inverse.assert_not_called()
        self.mock.return_value.__enter__.return_value.release.assert_not_called()
        self.assertTrue(any(e['kind'] == 'recovery_retention_failed' for e in self.log.read(self.token)))

    def test_not_dispatched_handoff_classifies_absence_without_retry(self):
        self.native['material_ownership'] = None
        result = self.invoke()
        self.assertEqual(result['material_state'], 'not_retained')
        self.assertEqual(result['receipt']['recovery_material']['status'], 'not_retained')
        self.assertFalse(self.marker.exists())
        self.mock.return_value.__enter__.return_value.retain_inverse.assert_not_called()

    def test_other_owner_or_changed_terminal_preserves_quarantine(self):
        for changed in ({**self.native, 'material_ownership': {**self.owner, 'owner_change_id': self.edit['change_id']}},
                {**self.native, 'current': {'changed': True}}):
            with self.subTest(changed=changed):
                with patch.dict(self.native, changed), self.assertRaises(service.ToolError):
                    self.invoke()
                self.assertTrue(self.marker.exists())

    def test_missing_native_presence_evidence_cannot_clear_quarantine(self):
        del self.native['material_ownership']
        with self.assertRaises(service.ToolError):
            self.invoke()
        self.assertTrue(self.marker.exists())

    def test_reconciliation_wal_failure_preserves_quarantine(self):
        original = StructureJournal._append
        def append(log, path, events, kind, payload):
            if kind == 'recovery_retention_reconciled':
                raise OSError('reconciliation WAL unavailable')
            return original(log, path, events, kind, payload)
        with patch.object(StructureJournal, '_append', new=append), self.assertRaises(OSError):
            self.invoke()
        self.assertTrue(self.marker.exists())


if __name__ == '__main__':
    unittest.main()
