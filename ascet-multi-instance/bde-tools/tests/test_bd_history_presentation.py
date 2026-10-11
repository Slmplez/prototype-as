"""History presentation uses immutable ancestry and actual terminal; no visual certification."""
from contextlib import nullcontext
import json
from pathlib import Path
import unittest
from unittest.mock import patch

import bd_native_presentation as presentation
import bd_service as service
from bd_edit_journal import clone
from bd_sandbox_edit import binding
import test_bd_connect_journal as fixtures


class HistoryPresentationTests(unittest.TestCase):
    def setUp(self):
        fixtures.ConnectJournalTests.setUp(self)
        for directory in ('documents', 'pages', 'delivery'):
            (service.STORE / directory).mkdir(exist_ok=True)
        self.first = self.log.execute(self.request, self.adapter, nullcontext)
        binding(self.request, self.request['component'], 's_' + 'a' * 32)
        for patcher in (patch.object(service, 'live_lock', nullcontext),
                        patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'})):
            patcher.start()
            self.addCleanup(patcher.stop)

    def inverse(self, owner, name):
        return self.log.revert(owner, name, self.adapter, nullcontext)

    def fake_run(self, command, timeout):
        self.assertEqual(json.loads(Path(command[5]).read_text())['presentation_token'], self.head['change_id'])
        Path(command[4]).write_text(json.dumps({'status': 'ok', 'presentation': command[2]}), encoding='utf-8')

    def fake_primitives(self, differences):
        self.drawn_differences = clone(differences)
        return ['line', '255', '0', '0', '10', '10']

    def present(self, action):
        with patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), \
             patch.object(presentation, 'primitives', side_effect=self.fake_primitives), \
             patch.object(service, 'run_process', side_effect=self.fake_run), \
             patch.object(presentation, 'NativeStructureAdapter') as native:
            native.return_value.__enter__.return_value = self.adapter
            return presentation.present(dict(change_id=self.head['change_id'], presentation=action), 'test', 12288)

    def test_three_inverse_heads_display_actual_patch_using_original_binding(self):
        owner = self.first['change_id']
        for name in ('undo', 'redo', 'undo-again'):
            self.head = self.inverse(owner, name)
            calls = list(self.adapter.calls)
            wal = {str(p): p.read_bytes() for p in self.log.root.rglob('*.json')}
            value = self.present('show')
            self.assertFalse(value.get('is_error', False))
            self.assertEqual(self.adapter.calls, calls + ['observe'])
            folder = max((service.STORE / 'presentations').iterdir(), key=lambda p: p.stat().st_mtime_ns)
            intent = json.loads((folder / 'intent.json').read_text())
            self.assertEqual(intent['source_change_id'], self.first['change_id'])
            self.assertEqual(intent['change_id'], self.head['change_id'])
            observed = self.log.receipt(self.head['change_id'], self.log.read(self.head['change_id']))
            self.assertEqual(self.drawn_differences, observed['differences'])
            self.assertEqual(wal, {str(p): p.read_bytes() for p in self.log.root.rglob('*.json')})
            owner = self.head['change_id']

    def test_inverse_clear_has_no_model_read_or_edit(self):
        self.head = self.inverse(self.first['change_id'], 'undo')
        calls = list(self.adapter.calls)
        state = clone(self.adapter.state)
        self.present('clear')
        self.assertEqual(self.adapter.calls, calls)
        self.assertEqual(self.adapter.state, state)

    def test_stale_inverse_terminal_refuses_before_drawing(self):
        self.head = self.inverse(self.first['change_id'], 'undo')
        self.adapter.state['entries'][0]['size'] = [1, 1]
        with patch.object(service, 'run_process') as run, \
             patch.object(presentation, 'primitives', side_effect=self.fake_primitives), \
             patch.object(presentation, 'NativeStructureAdapter') as native:
            native.return_value.__enter__.return_value = self.adapter
            with self.assertRaises(service.ToolError) as error:
                presentation.present(dict(change_id=self.head['change_id'], presentation='show'), 'test', 12288)
            self.assertEqual(error.exception.code, 'PRECONDITION_CONFLICT')
            run.assert_not_called()

    def test_corrupt_connect_ownership_refuses_clear_before_native_call(self):
        self.head = self.inverse(self.first['change_id'], 'undo')
        path = self.log._path(self.head['change_id'])
        events = self.log.read(self.head['change_id'])
        self.log._append(path, events, 'connect_history_ready', {'owner_change_id': self.first['change_id']})
        with patch.object(service, 'run_process') as run:
            with self.assertRaises(service.ToolError):
                presentation.present(dict(change_id=self.head['change_id'], presentation='clear'), 'test', 12288)
            run.assert_not_called()


if __name__ == '__main__':
    unittest.main()
