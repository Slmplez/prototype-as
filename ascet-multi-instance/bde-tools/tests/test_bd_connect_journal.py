"""Offline coordinator/fault tests. These do not certify native execution."""
from contextlib import nullcontext, contextmanager
from pathlib import Path
from tempfile import TemporaryDirectory
from unittest.mock import patch
import os
import unittest

import bd_connect_journal as connect
import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import clone, fingerprint, JournalError, NativePreconditionConflict
from bd_structure_journal import StructureJournal
from bd_native_structure import NativeStructureAdapter
from test_bd_connect_history import prepared as history_template, actual as actual_template
from test_bd_connect_material import receipt as material_template


class Adapter:
    connect_history_capable = True

    def __init__(self):
        p = history_template()
        self.original, self.applied = p['expected'], p['before']
        self.state = clone(self.original)
        self.calls = []; self.sequence = 1
        self.parent_order_before = self.parent_order_expected = None
        self.library_effects = []; self.scope_effects = []; self.parent_order_effects = []
        self.lose_reply = False; self.terminal = None

    def observe(self, domain, targets):
        self.calls.append('observe')
        return clone(self.state)

    def write_preflight(self, domain):
        pending.check_restoration(domain)

    def material(self, token, phase, component_oid):
        value = material_template(phase); p = history_template()
        value.update(native_token=token, component_oid=component_oid, source='p1', target='p3',
            parent_before=clone(p['parent_expected']), drawing_before=clone(p['drawing_expected']))
        if phase != 'prepared':
            value.update(parent_after=clone(p['parent_before']), drawing_after=clone(p['drawing_before']),
                created_native_ref='o5')
        for key in ('parent_before', 'drawing_before', 'parent_after', 'drawing_after'):
            if value[key] is not None:
                value[key]['native_token'] = token
        return value

    def prepare(self, domain, token, operation, arguments):
        self.calls.append('prepare'); self.domain = domain; self.token = token
        self.connect_material_prepared = self.material(token, 'prepared', domain['oid'])
        return clone(self.state)

    def apply(self, token):
        self.calls.append('apply')
        pending.begin(self.domain, 'connect_apply', token)
        self.state = clone(self.applied)
        self.connect_material_actual = self.material(token, 'attached', self.domain['oid'])
        if self.lose_reply:
            raise TimeoutError('actual forward captured; receipt lost')
        return clone(self.state)

    def prepare_connect_history(self, domain, token, owner, state, result_id):
        self.calls.append('history_prepare')
        p = history_template(state)
        p.update(native_token=token, owner_change_id=owner, result_change_id=result_id,
            sequence=self.sequence, signature=token + '/c' + str(self.sequence))
        for key in ('parent_before', 'parent_expected', 'drawing_before', 'drawing_expected'):
            p[key]['native_token'] = token
        return p

    def execute_connect_history(self, domain, p):
        self.calls.append('history_execute')
        pending.begin(domain, 'connect_history', p['native_token'], context={
            k: p[k] for k in ('owner_change_id', 'state', 'result_change_id', 'signature')})
        a = actual_template(p)
        a['execution'].update(native_token=p['native_token'], head_change_id=p['owner_change_id'],
            result_change_id=p['result_change_id'], sequence=p['sequence'] + 1)
        self.state = clone(p['expected']); self.sequence += 1; self.terminal = clone(a)
        if self.lose_reply:
            raise TimeoutError('native terminal completed; reply lost')
        return a

    def connect_history_status(self, domain, p):
        self.calls.append('history_status')
        if self.terminal is None or self.state != self.terminal['observation']:
            raise NativePreconditionConflict('full current no longer terminal')
        return clone(self.terminal)

    def connect_material_status(self, domain, token):
        self.calls.append('material_status')
        if self.state != self.applied:
            raise NativePreconditionConflict('current differs from captured attached state')
        return clone(self.connect_material_actual)

    def confirm_connect(self, domain, command, token, *, context=None):
        NativeStructureAdapter.confirm_connect(self, domain, command, token, context=context)


class ConnectJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp = TemporaryDirectory(); self.addCleanup(self.temp.cleanup)
        self.env_patch = patch.dict(os.environ, {'LOCALAPPDATA': self.temp.name})
        self.env_patch.start(); self.addCleanup(self.env_patch.stop)
        self.store_patch = patch.object(service, 'STORE', Path(self.temp.name) / 'state')
        self.store_patch.start(); self.addCleanup(self.store_patch.stop)
        self.log = StructureJournal(service.STORE / 'edits'); self.adapter = Adapter()
        self.domain = dict(session='test', database=self.temp.name, oid='fixture_oid', process_epoch='test_epoch')
        self.request = dict(domain=self.domain, component='BDE_Tool_Experiments\\Trial_test', diagram='Main',
            operation='connect_data', request_id='connect', arguments=[[], 'p1', 'p3'], expect=fingerprint(self.adapter.original))

    def forward(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_formal_forward_and_three_inverses_have_complete_ancestry(self):
        first = self.forward()
        self.assertEqual(first['status'], 'applied_observed')
        self.assertEqual(connect.context(self.log, first['change_id'])['sequence'], 1)
        head = first
        for index in range(3):
            head = self.log.revert(head['change_id'], 'inverse' + str(index), self.adapter, nullcontext)
            self.assertEqual(head['status'], 'verified_local')
            self.assertEqual(connect.context(self.log, head['change_id'])['sequence'], index + 2)
            self.assertFalse(pending.pending_path(self.domain).exists())
        self.assertEqual(self.adapter.state, self.adapter.original)
        self.assertEqual(self.adapter.calls.count('apply'), 1)
        self.assertEqual(self.adapter.calls.count('history_execute'), 3)

    def test_duplicate_calls_are_offline_and_changed_request_is_refused(self):
        first = self.forward(); calls = clone(self.adapter.calls)
        self.assertEqual(self.forward(), first); self.assertEqual(self.adapter.calls, calls)
        changed = clone(self.request); changed['arguments'][2] = 'p2'
        with self.assertRaises(JournalError): self.log.execute(changed, self.adapter, nullcontext)
        head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext); calls = clone(self.adapter.calls)
        self.assertEqual(self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext), head)
        self.assertEqual(self.adapter.calls, calls)
        with self.assertRaises(JournalError): self.log.revert(head['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(self.adapter.calls, calls)

    def test_preview_has_no_durable_or_model_write(self):
        first = self.forward(); files = list(self.log.root.rglob('*.json')); state = clone(self.adapter.state)
        result = connect.preview(self.log, first['change_id'], 'preview', self.adapter, nullcontext)
        self.assertEqual(result['status'], 'preview')
        self.assertEqual(list(self.log.root.rglob('*.json')), files); self.assertEqual(self.adapter.state, state)
        self.assertNotIn('history_execute', self.adapter.calls)

    def test_stale_current_is_refused_before_dispatch(self):
        first = self.forward(); self.adapter.state['entries'][2]['size'] = [1, 2]
        head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(head['status'], 'conflict'); self.assertNotIn('history_execute', self.adapter.calls)

    def test_prewrite_wal_failure_never_dispatches_history(self):
        first = self.forward(); append = self.log._append
        def fail(path, events, kind, value):
            if kind == 'started': raise OSError('disk failed before dispatch')
            return append(path, events, kind, value)
        with patch.object(self.log, '_append', side_effect=fail):
            head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(head['status'], 'interrupted_before_apply')
        self.assertNotIn('history_execute', self.adapter.calls)
        self.assertFalse(pending.pending_path(self.domain).exists())

    def test_lost_history_reply_queries_terminal_and_never_replays(self):
        first = self.forward(); self.adapter.lose_reply = True
        head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(head['status'], 'outcome_unknown'); self.assertTrue(pending.pending_path(self.domain).exists())
        calls = clone(self.adapter.calls)
        self.assertEqual(self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext), head)
        self.assertEqual(self.adapter.calls, calls)
        original_files = list(self.log._path(head['change_id']).glob('*.json'))
        result = connect.reconcile(self.log, head['change_id'], self.adapter, nullcontext)
        self.assertFalse(result['reconciled']); self.assertTrue(result['instance_quarantined'])
        self.assertEqual(list(self.log._path(head['change_id']).glob('*.json')), original_files)
        result = connect.reconcile(self.log, head['change_id'], self.adapter, nullcontext, commit=True)
        self.assertEqual(result['receipt']['status'], 'verified_local'); self.assertFalse(result['instance_quarantined'])
        self.assertEqual(self.adapter.calls.count('history_execute'), 1)
        self.assertEqual(connect.context(self.log, head['change_id'])['sequence'], 2)

    def test_lost_forward_receipt_requires_already_captured_actual(self):
        self.adapter.lose_reply = True; first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown')
        result = connect.reconcile(self.log, first['change_id'], self.adapter, nullcontext, commit=True)
        self.assertEqual(result['receipt']['status'], 'applied_observed')
        self.assertFalse(result['instance_quarantined'])
        self.assertEqual(connect.context(self.log, first['change_id'])['sequence'], 1)
        self.assertEqual(self.adapter.calls.count('apply'), 1)

    def test_incomplete_capture_cannot_be_recovered_by_read_or_retry(self):
        self.adapter.lose_reply = True; first = self.forward()
        with patch.object(self.adapter, 'connect_material_status', side_effect=RuntimeError('capture not completed')):
            with self.assertRaises(RuntimeError):
                connect.reconcile(self.log, first['change_id'], self.adapter, nullcontext, commit=True)
        self.assertTrue(pending.pending_path(self.domain).exists())
        calls = clone(self.adapter.calls); self.assertEqual(self.forward(), first)
        self.assertEqual(self.adapter.calls, calls)

    def test_full_connect_is_not_enabled_by_empty_targets_alone(self):
        from bd_structure_journal import validate_request
        with self.assertRaises(JournalError): validate_request(self.request)
        validate_request(self.request, complete_connect=True)
        child = clone(self.request); child['diagram'] = 'Main/h1'
        with self.assertRaises(JournalError): validate_request(child, complete_connect=True)

    def test_unaccounted_terminal_or_foreign_marker_cannot_be_confirmed(self):
        first = self.forward(); self.adapter.lose_reply = True
        head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        self.adapter.terminal['execution']['head_change_id'] = 'edit_' + 'f' * 64
        with self.assertRaises(JournalError): connect.reconcile(self.log, head['change_id'], self.adapter, nullcontext, commit=True)
        self.assertTrue(pending.pending_path(self.domain).exists())
        pending.pending_path(self.domain).write_text(service.dump(dict(domain=self.domain, command='connect_apply',
            native_token=first['change_id'], automatic_retry=False)), encoding='utf-8')
        calls = clone(self.adapter.calls)
        with self.assertRaises(JournalError): connect.reconcile(self.log, head['change_id'], self.adapter, nullcontext, commit=True)
        self.assertEqual(self.adapter.calls, calls)
        self.assertTrue(pending.pending_path(self.domain).exists())

    def test_afterwrite_disk_failure_keeps_actual_and_quarantine(self):
        first = self.forward(); append = self.log._append
        def fail(path, events, kind, value):
            if kind == 'observed': raise OSError('disk failed after dispatch')
            return append(path, events, kind, value)
        with patch.object(self.log, '_append', side_effect=fail):
            head = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(head['status'], 'outcome_unknown')
        self.assertTrue(any(e['kind'] == 'connect_actual_reply' for e in self.log.read(head['change_id'])))
        self.assertTrue(pending.pending_path(self.domain).exists())
        connect.reconcile(self.log, head['change_id'], self.adapter, nullcontext, commit=True)
        self.assertFalse(pending.pending_path(self.domain).exists())
        self.assertEqual(self.adapter.calls.count('history_execute'), 1)

    def test_diff_keeps_complete_native_material_in_wal_only(self):
        first = self.forward(); undo = self.log.revert(first['change_id'], 'undo', self.adapter, nullcontext)
        for item, key in ((first, 'connect_material_actual'), (undo, 'connect_actual')):
            row = self.log.diff(item['change_id'])['observations'][0]
            self.assertNotIn(key, row); self.assertNotIn('graphical_current', row)
            self.assertNotIn('graphical_actual', row)
            self.assertIn(key, connect.one(self.log.read(item['change_id']), 'observed'))

    def test_missing_actual_proof_cannot_be_replaced_by_ready_boolean(self):
        first = self.forward(); events = clone(self.log.read(first['change_id']))
        next(e for e in events if e['kind'] == 'observed')['payload'].pop('connect_material_actual')
        real_read = self.log.read
        with patch.object(self.log, 'read', side_effect=lambda token: events if token == first['change_id'] else real_read(token)):
            with self.assertRaises(JournalError): connect.context(self.log, first['change_id'])

    def test_recovery_and_preview_take_journal_lock_before_live_lock(self):
        first = self.forward(); sequence = []
        @contextmanager
        def file(path):
            sequence.append('journal'); yield
        @contextmanager
        def live():
            self.assertEqual(sequence[-1], 'journal'); sequence.append('live'); yield
        with patch.object(connect, 'file_lock', file):
            connect.reconcile(self.log, first['change_id'], self.adapter, live)
            connect.preview(self.log, first['change_id'], 'preview', self.adapter, live)
        self.assertEqual(sequence, ['journal', 'live', 'journal', 'live'])


class ConnectPreparationCleanupTests(unittest.TestCase):
    def test_scoped_request_refuses_before_native_prepare(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test')
        adapter.connect_history_capable = True
        with patch.object(pending, 'check'), patch.object(adapter, '_ensure_open') as opened:
            with self.assertRaises(ValueError): adapter.prepare({}, 'edit_' + 'a' * 64, 'connect_data', [['p1'], 'p1', 'p2'])
        opened.assert_not_called()

    def test_bad_material_discards_exact_received_preparation(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test'); adapter.connect_history_capable = True
        token = 'edit_' + 'a' * 64
        with patch.object(pending, 'check'), patch.object(adapter, '_ensure_open'), \
                patch.object(adapter, '_exchange', side_effect=[dict(targets=[], entries=[]), {}]), \
                patch.object(adapter, 'discard_prepared', return_value={'discarded': True}) as discard:
            with self.assertRaises(JournalError): adapter.prepare({'oid': 'fixture_oid'}, token, 'connect_data', [[], 'p1', 'p2'])
        discard.assert_called_once_with({'oid': 'fixture_oid'}, token)


if __name__ == '__main__':
    unittest.main()
