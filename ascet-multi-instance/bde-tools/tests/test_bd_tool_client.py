"""Exercise resident Doge Tool.call paging on immutable offline documents."""
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
from bde_tool_client import PersistentToolClient


class ResidentDogeReadTests(unittest.TestCase):
    def setUp(self):
        self.folder = tempfile.TemporaryDirectory()
        self.store = Path(self.folder.name)
        self.store_patch = patch.object(service, 'STORE', self.store)
        self.store_patch.start()
        for name in ('documents', 'cursors', 'delivery'):
            (self.store / name).mkdir()
        self.calls = []
        self.client = PersistentToolClient(self.store, 'resident-offline', self.calls.append)
        self.client.env['LOCALAPPDATA'] = str(self.store / 'isolated-native-state')
        self.client.start()

    def tearDown(self):
        self.client.close()
        self.store_patch.stop()
        self.folder.cleanup()

    def page(self, text, budget=2048):
        result = service.paged(text, {'fixture': 'offline_only'}, self.client.session, budget)
        head, part = result['content'].split('\n\n', 1)
        return json.loads(head), part

    def test_full_unicode_paging_and_duplicate_cursor_reuse_one_doge_process(self):
        text = ('long ' + '\u4fe1\u53f7' * 350 + '\n') * 12
        for budget in (2048, 16384):
            with self.subTest(budget=budget):
                head, first = self.page(text, budget)
                start = len(self.calls)
                cursor = head['page']['next_cursor']
                meta, rest, error = self.client.call('bd_read', {'cursor': cursor})
                self.assertFalse(error)
                self.assertEqual(first + rest, text)
                self.assertEqual(head['document'], meta['document'])
                for call in self.calls[start:]:
                    self.assertLessEqual(len(call['response']['content'].encode('utf-8')), budget)
                last = json.loads(self.calls[-1]['response']['content'].split('\n\n', 1)[0])
                self.assertEqual(last['delivery']['status'], 'complete')
                self.assertEqual(last['delivery']['delivered_bytes'], len(text.encode('utf-8')))
                _, again, error = self.client.call('bd_read', {'cursor': cursor})
                self.assertFalse(error)
                self.assertEqual(again, rest)
                self.assertEqual(self.client.startup['pid'], self.client.process.pid)
                self.assertIsNone(self.client.process.poll())

    def test_session_and_document_integrity_checks_still_reach_backend(self):
        head, _ = self.page('x' * 6000)
        cursor = head['page']['next_cursor']
        self.client.session = 'other-session'
        _, body, error = self.client.call('bd_read', {'cursor': cursor})
        self.assertTrue(error)
        self.assertEqual(json.loads(body)['code'], 'CURSOR_SESSION_MISMATCH')
        self.client.session = 'resident-offline'
        path = self.store / 'documents' / (head['document'] + '.json')
        record = json.loads(path.read_text(encoding='utf-8'))
        record['text'] += 'tampered'
        path.write_text(json.dumps(record), encoding='utf-8')
        _, body, error = self.client.call('bd_read', {'cursor': cursor})
        self.assertTrue(error)
        self.assertEqual(json.loads(body)['code'], 'SNAPSHOT_CORRUPT')

    def test_read_eval_never_dispatches_edit_revert_presentation_or_reconcile(self):
        for tool, args in (('bd_edit', {}), ('bd_revert', {}),
                           ('bd_diff', {'presentation': 'show'}), ('bd_inspect', {'reconcile': True})):
            with self.subTest(tool=tool), self.assertRaises(RuntimeError):
                self.client.call(tool, args)
        self.assertEqual(self.calls, [])
        self.assertFalse((self.store / 'isolated-native-state').exists())

    def test_local_continuation_succeeds_without_a_python_executable(self):
        head, first = self.page('x' * 6000)
        self.client.close()
        self.client = PersistentToolClient(self.store, 'resident-offline', self.calls.append)
        self.client.env['ASCET_BD_PYTHON'] = str(self.store / 'missing-python.exe')
        self.client.env['LOCALAPPDATA'] = str(self.store / 'isolated-native-state')
        self.client.start()
        _, rest, error = self.client.call('bd_read', {'cursor': head['page']['next_cursor']})
        self.assertFalse(error)
        self.assertEqual(first + rest, 'x' * 6000)
        self.client.close()
        self.client = PersistentToolClient(self.store, 'resident-offline', self.calls.append)
        self.client.env['ASCET_BD_PYTHON'] = str(self.store / 'missing-python.exe')
        self.client.env['ASCET_BD_LOCAL_PAGING'] = '0'
        self.client.start()
        _, body, error = self.client.call('bd_read', {'cursor': head['page']['next_cursor']})
        self.assertTrue(error)
        self.assertEqual(json.loads(body)['code'], 'BACKEND_UNAVAILABLE')


if __name__ == '__main__':
    unittest.main()
