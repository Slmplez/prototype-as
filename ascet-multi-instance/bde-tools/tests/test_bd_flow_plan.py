import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import clone
import bd_flow_plan as flow
import test_bd_connection_sequence as sequence_tests


class FlowPlanTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.addCleanup(patch.stopall)
        patch.object(service, 'STORE', Path(self.temp.name)).start()
        patch.object(service, 'run_process', side_effect=AssertionError('Offline plan must not open ASCET')).start()
        patch.object(service, 'live_lock', side_effect=AssertionError('Offline plan must not open ASCET')).start()
        fixture = sequence_tests.ConnectionSequenceTests()
        fixture.setUp()
        self.addCleanup(fixture.doCleanups)
        self.sid = 's_' + '1' * 32
        self.record = {'snapshot': self.sid, 'session': 'test', 'component': 'BDE_Tool_Experiments\\Trial_Plan',
            'database': 'db', 'oid': 'owner', 'ascet_process_epoch': 'epoch', 'structure': clone(fixture.baseline)}
        patch.object(service, 'load_record', side_effect=lambda *args: clone(self.record)).start()
        self.args = {'query': 'flow_plan', 'segments': [
            {'snapshot': self.sid, 'source': 'Main/p1', 'target': 'Main/p2'},
            {'snapshot': self.sid, 'source': 'Main/p1', 'target': 'Main/p3'}]}

    def test_immutable_repeatable_plan_and_translation_to_connection_sequence(self):
        value = flow.inspect(self.args, 'test')
        self.assertEqual(value, flow.inspect(self.args, 'test'))
        self.assertEqual(value, flow.load(value['plan_ref'], 'test'))
        self.assertFalse(value['complete_signal_path'])
        self.assertEqual(len(list((service.STORE / 'flow-plans').glob('*.json'))), 1)
        with patch('bd_group_tools.execute', return_value='sent') as execute:
            self.assertEqual(flow.edit({'request_id': 'path', 'operations': [
                {'op': 'connect_path', 'plan_ref': value['plan_ref']}], 'preview': True}, 'test', 4096), 'sent')
        request = execute.call_args.args[1]
        self.assertEqual(request['mode'], 'connection_sequence')
        self.assertEqual(request['steps'], value['steps'])
        self.assertTrue(request['preview'])

    def test_session_checksum_and_absent_plan_fail_closed(self):
        value = flow.inspect(self.args, 'test')
        with self.assertRaises(service.ToolError):
            flow.load(value['plan_ref'], 'other-session')
        with self.assertRaises(service.ToolError):
            flow.load('plan_' + '0' * 64, 'test')
        path = service.STORE / 'flow-plans' / (value['plan_ref'] + '.json')
        value['steps'][0]['operations'][0]['target'] = 'Main/p3'
        path.write_text(json.dumps(value), encoding='utf-8')
        with self.assertRaises(service.ToolError) as error:
            flow.load(value['plan_ref'], 'test')
        self.assertEqual(error.exception.code, 'JOURNAL_CORRUPT')

    def test_duplicate_input_wrong_direction_and_occupied_input_rejected_offline(self):
        duplicate = clone(self.args)
        duplicate['segments'][1] = duplicate['segments'][0]
        with self.assertRaises(service.ToolError):
            flow.inspect(duplicate, 'test')
        reverse = clone(self.args)
        reverse['segments'][0]['source'] = 'Main/p2'
        with self.assertRaises(service.ToolError):
            flow.inspect(reverse, 'test')
        self.record['structure']['entries'].append({'kind': 'edge', 'ref': 'e1', 'source': 'p1', 'target': 'p2'})
        with self.assertRaises(service.ToolError):
            flow.inspect(self.args, 'test')


if __name__ == '__main__':
    unittest.main()
