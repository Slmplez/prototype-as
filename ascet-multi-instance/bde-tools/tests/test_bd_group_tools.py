from contextlib import contextmanager, nullcontext
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_group_tools as tools
from test_bd_group_journal import Adapter


class GroupToolsTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.addCleanup(patch.stopall)
        patch.object(service, 'STORE', Path(self.temp.name)).start()
        patch.object(service, 'live_lock', nullcontext).start()
        patch.dict('os.environ', {'ASCET_BD_STRUCTURAL_WRITES': '1'}).start()
        self.adapters = [Adapter(), Adapter()]
        self.opens = 0
        @contextmanager
        def factory(request):
            self.opens += 1
            yield self.adapters[int(request['domain']['oid'])]
        patch.object(tools, 'adapters', factory).start()
        (service.STORE / 'snapshots').mkdir()
        steps = []
        for index, adapter in enumerate(self.adapters):
            adapter.state.update(targets=['n1'], diagram='Main')
            sid = 's_' + str(index) * 32
            record = {'snapshot': sid, 'session': 'test', 'database': 'db', 'oid': str(index),
                'ascet_process_epoch': 'epoch', 'component': 'BDE_Tool_Experiments\\Trial_' + str(index),
                'structure': {**adapter.observe({}, []), 'targets': []}}
            record['integrity_sha256'] = service.digest(record)
            service.write_once(service.STORE / 'snapshots' / (sid + '.json'), record)
            steps.append({'snapshot': sid, 'operations': [{'op': 'set_literal', 'target': 'Main/n1',
                'expect': {'text': '1'}, 'value': {'text': '2'}}]})
        self.args = {'request_id': 'group', 'steps': steps}

    def call(self, tool, args):
        output = service.handle(tool, args, 'test')
        failed = output['is_error']
        body = ''
        while True:
            head, chunk = output['content'].split('\n\n', 1)
            body += chunk
            meta = json.loads(head)
            if not meta['page']['has_more']:
                break
            output = service.handle('bd_read', {'cursor': meta['page']['next_cursor']}, 'test')
        return body, failed

    def test_preview_edit_cached_actual_diff_history_and_group_inverse(self):
        body, failed = self.call('bd_edit', {**self.args, 'preview': True})
        self.assertFalse(failed)
        self.assertEqual(json.loads(body)['status'], 'preview')
        self.assertEqual([adapter.calls for adapter in self.adapters], [[], []])
        body, failed = self.call('bd_edit', self.args)
        receipt = json.loads(body)
        self.assertFalse(failed)
        self.assertEqual(receipt['status'], 'completed')
        self.assertTrue(all(row['receipt']['after_snapshot'].startswith('s_') for row in receipt['steps']))
        self.assertEqual([row['receipt']['additional_ASCET_reads'] for row in receipt['steps']], [0, 0])
        opens = self.opens
        replay, _ = self.call('bd_edit', self.args)
        self.assertEqual(json.loads(replay), receipt)
        diff, _ = self.call('bd_diff', {'change_id': receipt['change_id'], 'max_bytes': 2048})
        self.assertEqual(len(json.loads(diff)['resource_differences']), 2)
        history, _ = self.call('bd_inspect', {'query': 'edits'})
        rows = [json.loads(row) for row in history.splitlines()]
        self.assertEqual(sum(row['record_type'] == 'resource_group' for row in rows), 1)
        self.assertFalse(any(row['record_type'] == 'edit_history_diagnostic' for row in rows))
        self.assertEqual(self.opens, opens)
        body, _ = self.call('bd_revert', {'change_id': receipt['change_id'], 'request_id': 'preview', 'preview': True})
        self.assertEqual(json.loads(body)['status'], 'preview')
        body, failed = self.call('bd_revert', {'change_id': receipt['change_id'], 'request_id': 'undo'})
        self.assertFalse(failed)
        inverse = json.loads(body)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual([adapter.state['entries'][0]['literal'] for adapter in self.adapters], ['1', '1'])
        self.assertEqual([row['receipt']['additional_ASCET_reads'] for row in inverse['steps']], [0, 0])
        history, _ = self.call('bd_inspect', {'query': 'edits', 'component': 'BDE_Tool_Experiments\\Trial_0'})
        rows = [json.loads(row) for row in history.splitlines()]
        self.assertFalse(any(row['record_type'] == 'edit_history_diagnostic' for row in rows))
        self.assertEqual(sum(row['record_type'] == 'resource_group' for row in rows), 2)

    def test_business_and_duplicate_component_refused_before_native_access(self):
        self.args['steps'][1]['snapshot'] = self.args['steps'][0]['snapshot']
        with self.assertRaises(service.ToolError) as error:
            self.call('bd_edit', self.args)
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertEqual(self.opens, 0)

    def test_presentation_failure_is_returned_per_resource_and_as_tool_error(self):
        body, _ = self.call('bd_edit', self.args)
        change = json.loads(body)['change_id']
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '0'}):
            body, failed = self.call('bd_diff', {'change_id': change, 'presentation': 'show'})
        self.assertTrue(failed)
        result = json.loads(body)
        self.assertEqual(len(result['resources']), 2)
        self.assertTrue(all(row['result']['is_error'] for row in result['resources']))
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], ['apply']])

    def test_resource_presentation_pages_are_drained_into_one_group_document(self):
        body, _ = self.call('bd_edit', self.args)
        change = json.loads(body)['change_id']
        def present(args, session, budget):
            return service.paged(service.dump({'presentation_status': 'native_call_succeeded_visual_unverified',
                'native': {'detail': 'x' * 5000}}), {'change_id': args['change_id']}, session, budget)
        with patch('bd_native_presentation.present', side_effect=present):
            body, failed = self.call('bd_diff', {'change_id': change, 'presentation': 'show', 'max_bytes': 2048})
        self.assertFalse(failed)
        result = json.loads(body)
        self.assertEqual([len(row['result']['native']['detail']) for row in result['resources']], [5000, 5000])
        self.assertTrue(all('content' not in row['result'] for row in result['resources']))


if __name__ == '__main__':
    unittest.main()
