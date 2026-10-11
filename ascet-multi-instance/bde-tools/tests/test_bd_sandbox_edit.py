import json
from pathlib import Path
import tempfile
import unittest
from contextlib import nullcontext
from unittest.mock import patch

import bd_service as service
import bd_sandbox_edit as sandbox
from test_bd_edit_journal import LocalAdapter


class SandboxRouteTests(unittest.TestCase):
    def setUp(self):
        # LocalAdapter is an in-memory fake, so the real instance lock is wrong.
        lock = patch.object(service, 'live_lock', nullcontext)
        lock.start()
        self.addCleanup(lock.stop)
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.store_patch = patch.object(service, 'STORE', Path(self.temp.name))
        self.store_patch.start()
        self.addCleanup(self.store_patch.stop)
        self.env = patch.dict('os.environ', {'ASCET_BD_SANDBOX_WRITES': '1'})
        self.env.start()
        self.addCleanup(self.env.stop)
        (service.STORE / 'snapshots').mkdir()
        self.record = {'snapshot': 's_' + 'a'*32, 'session': 'test', 'database': 'db', 'oid': 'test-oid',
            'component': 'BDE_Tool_Experiments\\Trial_fixture', 'ascet_process_epoch': 'test-process',
            'scope': {'targets': ['Main/n3'], 'include_layout': True}, 'local_graph': {'nodes': [
                {'id': 3, 'kind': 'BlockDiagramLiteral', 'literal': '0.0', 'pins': []}], 'pins': [], 'edges': []}}
        self.publish()
        self.adapter = LocalAdapter()
        self.adapter.close = lambda: None
        self.native = patch.object(sandbox, 'NativeLiteralAdapter', return_value=self.adapter)
        self.native.start()
        self.addCleanup(self.native.stop)
        self.args = {'snapshot': self.record['snapshot'], 'request_id': 'one', 'operations': [
            {'op': 'set_literal', 'target': 'Main/n3', 'expect': {'text': '0.0'}, 'value': {'text': '123456789012345.125'}}]}

    def publish(self):
        self.record.pop('integrity_sha256', None)
        self.record['integrity_sha256'] = service.digest(self.record)
        (service.STORE / 'snapshots' / (self.record['snapshot'] + '.json')).write_text(json.dumps(self.record), encoding='utf-8')

    @staticmethod
    def body(result):
        return json.loads(result['content'].split('\n\n', 1)[1])

    def test_preview_edit_replay_offline_diff_and_revert(self):
        preview = service.handle('bd_edit', dict(self.args, preview=True), 'test')
        self.assertEqual(self.body(preview)['status'], 'preview')
        self.assertEqual(self.adapter.writes, 0)
        result = service.handle('bd_edit', self.args, 'test')
        change = self.body(result)['change_id']
        self.assertFalse(result['is_error'])
        count = self.adapter.reads
        with patch.object(sandbox, 'NativeLiteralAdapter', side_effect=AssertionError('must not connect')):
            diff = service.handle('bd_diff', {'change_id': change}, 'different-session')
        self.assertEqual(self.body(diff)['status'], 'verified_local')
        replay = service.handle('bd_edit', self.args, 'test')
        self.assertEqual(self.body(replay), self.body(result))
        self.assertEqual((self.adapter.reads, self.adapter.writes), (count, 1))
        restored = service.handle('bd_revert', {'change_id': change, 'request_id': 'inverse'}, 'test')
        self.assertEqual(self.body(restored)['status'], 'verified_local')
        self.assertEqual(self.adapter.fields['literal'], '0.0')

    def test_business_path_and_cross_session_rejected_before_observe(self):
        self.record['component'] = 'PlatformLibrary\\Business'
        self.publish()
        with self.assertRaises(service.ToolError) as caught:
            service.handle('bd_edit', self.args, 'test')
        self.assertEqual(caught.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertEqual(self.adapter.reads, 0)
        with self.assertRaises(service.ToolError) as caught:
            service.handle('bd_edit', self.args, 'another-session')
        self.assertEqual(caught.exception.code, 'IDENTITY_UNRESOLVED')

    def test_conflict_marked_error_and_no_setter(self):
        self.adapter.fields['literal'] = 'external'
        result = service.handle('bd_edit', self.args, 'test')
        self.assertTrue(result['is_error'])
        self.assertEqual(self.body(result)['status'], 'conflict')
        self.assertEqual(self.adapter.writes, 0)

    def history(self, **args):
        result = service.handle('bd_inspect', {'query': 'edits', 'max_bytes': 2048, **args}, 'later-session')
        meta = json.loads(result['content'].split('\n\n', 1)[0])
        chunks = []
        while True:
            self.assertLessEqual(len(result['content'].encode('utf-8')), 2048)
            header, chunk = result['content'].split('\n\n', 1)
            chunks.append(chunk)
            cursor = json.loads(header)['page']['next_cursor']
            if not cursor:
                break
            result = service.handle('bd_inspect', {'cursor': cursor}, 'later-session')
        text = ''.join(chunks)
        return meta, [json.loads(line) for line in text.splitlines()] if meta['records'] + meta['diagnostics'] else []

    def test_edit_history_offline_filters_reverts_and_actual_fields(self):
        applied = self.body(service.handle('bd_edit', self.args, 'test'))
        service.handle('bd_revert', {'change_id': applied['change_id'], 'request_id': 'undo'}, 'test')
        with patch.dict('os.environ', {'ASCET_BD_SANDBOX_WRITES': '0'}), \
             patch.object(sandbox, 'NativeLiteralAdapter', side_effect=AssertionError('native forbidden')), \
             patch.object(service, 'capture', side_effect=AssertionError('full read forbidden')):
            meta, rows = self.history(snapshot=self.record['snapshot'])
            self.assertEqual(meta['records'], 2)
            self.assertEqual(rows[0]['reverts'], applied['change_id'])
            self.assertEqual(rows[0]['changed_fields'], ['literal', 'position', 'size'])
            self.assertEqual(self.history(database='different')[0]['records'], 0)
            self.assertEqual(self.history(component=self.record['component'].upper())[0]['records'], 2)

    def test_history_unknown_conflict_and_corruption_are_not_success(self):
        self.adapter.fields['literal'] = 'external'
        conflicted = self.body(service.handle('bd_edit', self.args, 'test'))
        row = self.history()[1][0]
        self.assertEqual(row['status'], 'conflict')
        self.assertEqual(row['conflict_fields'], ['literal'])
        change = conflicted['change_id']
        path = service.STORE / 'edits' / change
        # Simulate a crash after durable started but without a final receipt.
        (path / '000001.json').unlink()
        log = sandbox.journal()
        events = log.read(change)
        log._append(path, events, 'started', {'target': 'Main/n3'})
        self.assertEqual(self.history()[1][0]['status'], 'outcome_unknown')
        (service.STORE / 'edit-bindings' / (change + '.json')).write_text('{}', encoding='utf-8')
        meta, rows = self.history(database='different')
        self.assertEqual((meta['records'], meta['diagnostics']), (0, 1))
        self.assertEqual(rows[0]['filter_match'], 'unknown')
        self.assertFalse(rows[0]['automatic_retry'])

    def test_history_no_change_interrupted_intent_and_orphan_binding(self):
        self.adapter.fields['literal'] = self.args['operations'][0]['value']['text']
        self.args['operations'][0]['expect']['text'] = self.adapter.fields['literal']
        result = self.body(service.handle('bd_edit', self.args, 'test'))
        self.assertEqual(self.history()[1][0]['status'], 'no_change')
        path = service.STORE / 'edits' / result['change_id']
        (path / '000001.json').unlink()
        self.assertEqual(self.history()[1][0]['status'], 'interrupted_before_apply')
        (path / '000000.json').unlink()
        self.assertEqual(self.history()[1][0]['code'], 'JOURNAL_INCOMPLETE')
        path.rmdir()
        meta, rows = self.history()
        self.assertEqual((meta['records'], meta['diagnostics']), (0, 1))
        self.assertEqual(rows[0]['code'], 'CHANGE_NOT_FOUND')

    def test_history_cursor_is_frozen_while_journal_changes(self):
        applied = self.body(service.handle('bd_edit', self.args, 'test'))
        service.handle('bd_revert', {'change_id': applied['change_id'], 'request_id': 'prepare-history'}, 'test')
        applied = self.body(service.handle('bd_edit', {**self.args, 'request_id': 'second-edit'}, 'test'))
        expected_changes = {row['change_id'] for row in self.history()[1]}
        result = service.handle('bd_inspect', {'query': 'edits', 'max_bytes': 2048}, 'test')
        header, text = result['content'].split('\n\n', 1)
        cursor = json.loads(header)['page']['next_cursor']
        self.assertIsNotNone(cursor)
        service.handle('bd_revert', {'change_id': applied['change_id'], 'request_id': 'later'}, 'test')
        while cursor:
            result = service.handle('bd_inspect', {'cursor': cursor}, 'test')
            header, chunk = result['content'].split('\n\n', 1)
            text += chunk
            cursor = json.loads(header)['page']['next_cursor']
        rows = [json.loads(line) for line in text.splitlines()]
        self.assertEqual(len(rows), 3)
        self.assertEqual({row['change_id'] for row in rows}, expected_changes)
        self.assertEqual(self.history()[0]['records'], 4)


if __name__ == '__main__':
    unittest.main()
