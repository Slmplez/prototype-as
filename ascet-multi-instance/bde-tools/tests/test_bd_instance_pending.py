"""Database restoration barriers must survive a process/STORE change."""
from copy import deepcopy
from contextlib import nullcontext
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_instance_pending as pending
from bd_edit_journal import JournalError
from bd_edit_journal import EditJournal
from bd_native_literal import NativeLiteralAdapter
import bd_service as service


class RestorationHoldTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.path = Path(self.temp.name)
        self.domain = {'session': 'original', 'database': 'D:\\Data\\TestDatabase',
            'oid': 'original-component', 'process_epoch': 'old-process'}
        self.change = 'edit_' + 'a' * 64
        patcher = patch.dict('os.environ', {'LOCALAPPDATA': str(self.path)})
        patcher.start()
        self.addCleanup(patcher.stop)

    def hold(self):
        return pending.retain_unrestored(self.domain, self.change, self.path / 'original.wal',
            'b' * 64, 'c' * 64, 'd' * 64)

    def test_new_process_and_store_in_same_database_cannot_write(self):
        self.hold()
        current = {**self.domain, 'process_epoch': 'new-process', 'oid': 'another-component', 'session': 'another-store'}
        with patch.object(service, 'STORE', self.path / 'another-store'):
            with self.assertRaises(JournalError) as error:
                pending.begin(current, 'apply', 'new-write')
        self.assertEqual(error.exception.code, 'DATABASE_RESTORATION_REQUIRED')
        self.assertFalse(pending.pending_path(current).exists())

    def test_other_database_and_no_hold_remain_available(self):
        pending.check(self.domain)
        self.hold()
        pending.check({**self.domain, 'database': 'D:\\Data\\OtherDatabase'})

    def test_windows_path_case_and_separators_cannot_bypass_guard(self):
        self.hold()
        with self.assertRaises(JournalError):
            pending.check({**self.domain, 'database': 'd:/data/testdatabase/'})

    def test_pending_confirmation_does_not_clear_restoration_guard(self):
        marker = pending.begin(self.domain, 'apply', 'old-call')
        held = self.hold()
        pending.confirmed(marker)
        self.assertTrue(held.exists())
        with self.assertRaises(JournalError):
            pending.check(self.domain)

    def test_registration_is_immutable_and_idempotent(self):
        path = self.hold()
        before = path.read_bytes()
        self.assertEqual(self.hold(), path)
        self.assertEqual(path.read_bytes(), before)
        with self.assertRaises(JournalError) as error:
            pending.retain_unrestored(self.domain, self.change, self.path / 'changed.wal',
                'b' * 64, 'c' * 64, 'd' * 64)
        self.assertEqual(error.exception.code, 'JOURNAL_CONFLICT')

    def test_corrupt_guard_fails_closed(self):
        path = self.hold()
        row = json.loads(path.read_text())
        row['actual_after_sha256'] = 'e' * 64
        path.write_text(json.dumps(row))
        with self.assertRaises(JournalError) as error:
            pending.check(self.domain)
        self.assertEqual(error.exception.code, 'RESTORATION_HOLD_CORRUPT')

    def test_numeric_literal_bridge_refuses_before_native_exchange(self):
        self.hold()
        adapter = NativeLiteralAdapter('BDE_Tool_Experiments\\Trial_data')
        adapter.domain = deepcopy(self.domain)
        adapter.before = {'17': {'literal': '1.0'}}
        with patch.object(adapter, '_exchange', side_effect=AssertionError('must not dispatch')):
            with self.assertRaises(JournalError) as error:
                adapter.apply_literal(self.domain, '17', '2.0')
        self.assertEqual(error.exception.code, 'DATABASE_RESTORATION_REQUIRED')
        self.assertIn('17', adapter.before)

    def test_read_manifest_withholds_writes_without_blocking_read(self):
        self.hold()
        record = {'database': self.domain['database'], 'component': 'BDE_Tool_Experiments\\Trial_data',
            'oid': 'owner', 'snapshot': 's_' + '0' * 32, 'observed_at_utc': '2026-10-02T00:00:00Z',
            'counts': {}, 'unresolved_bindings': [], 'source': 'test', 'read_strategy': 'test'}
        value = service.manifest(record)
        self.assertTrue(value['capabilities']['read'])
        self.assertFalse(value['capabilities']['edit'])
        self.assertFalse(value['capabilities']['revert'])
        self.assertEqual(value['capabilities']['write_block_reason'], 'DATABASE_RESTORATION_REQUIRED')

    def test_new_literal_request_refuses_before_intent_or_started_record(self):
        self.hold()
        adapter = NativeLiteralAdapter('BDE_Tool_Experiments\\Trial_data')
        log = EditJournal(self.path / 'edits')
        request = {'domain': self.domain, 'request_id': 'held', 'target': 'Main/n17',
            'expect': {'literal': '1.0'}, 'value': '2.0'}
        with patch.object(adapter, 'observe', side_effect=AssertionError('must reject before observation')):
            with self.assertRaises(JournalError) as error:
                log.execute_literal(request, adapter, nullcontext)
        self.assertEqual(error.exception.code, 'DATABASE_RESTORATION_REQUIRED')
        self.assertEqual(list(log.root.glob('edit_*')), [])

    def test_confirmed_request_replay_stays_offline_after_hold(self):
        from test_bd_edit_journal import LocalAdapter
        adapter = LocalAdapter()
        adapter.write_preflight = lambda domain: pending.check_restoration(domain)
        log = EditJournal(self.path / 'edits')
        request = {'domain': self.domain, 'request_id': 'known', 'target': 'Main/n3',
            'expect': {'literal': '0.0'}, 'value': '2.0'}
        first = log.execute_literal(request, adapter, nullcontext)
        self.hold()
        self.assertEqual(log.execute_literal(request, adapter, nullcontext), first)
        self.assertEqual(adapter.writes, 1)
