"""Preview routing tests; fake native validation, not online proof."""
from contextlib import nullcontext
from unittest.mock import patch
import unittest

import bd_service as service
import bd_structural_tools as structural
from bd_edit_journal import clone


class PreviewTests(unittest.TestCase):
    def setUp(self):
        self.record = {'session': 'test', 'database': 'db', 'oid': 'oid', 'ascet_process_epoch': 'epoch',
                      'component': 'BDE_Tool_Experiments\\Trial_test', 'snapshot': 's_test',
                      'structure': {'generation': 1, 'targets': [], 'entries': [
                          {'kind': 'pin', 'ref': 'p1', 'input': False, 'output': True},
                          {'kind': 'pin', 'ref': 'p2', 'input': True, 'output': False}]}}
        self.op = {'op': 'connect_data', 'source': 'Main/p1', 'target': 'Main/p2'}
        _, _, self.before = structural.plan(self.record, self.op)
        for mocker in (patch.object(service, 'load_record', return_value=self.record),
                       patch.object(service, 'live_lock', nullcontext),
                       patch.object(service, 'paged', side_effect=lambda text, meta, session, budget: {'content': text}),
                       patch.dict('os.environ', {'ASCET_BD_STRUCTURAL_WRITES': '1'})):
            mocker.start()
            self.addCleanup(mocker.stop)

    def invoke(self):
        return structural.execute('bd_edit', {'snapshot': 's_test', 'request_id': 'preview',
            'operations': [self.op], 'preview': True}, 'test', 12000)

    def test_native_constraint_failure_is_not_successful_preview(self):
        with patch.object(structural, 'NativeStructureAdapter') as native:
            adapter = native.return_value
            adapter.observe.return_value = clone(self.before)
            adapter.validate.side_effect = RuntimeError('Input occupied')
            result = self.invoke()
            self.assertTrue(result['is_error'])
            self.assertIn('Input occupied', result['content'])
            adapter.prepare.assert_not_called()
            adapter.apply.assert_not_called()
            adapter.close.assert_called_once()

    def test_changed_observation_does_not_run_semantic_validation(self):
        with patch.object(structural, 'NativeStructureAdapter') as native:
            adapter = native.return_value
            adapter.observe.return_value = {**clone(self.before), 'generation': 2}
            self.assertTrue(self.invoke()['is_error'])
            adapter.validate.assert_not_called()

    def test_valid_preview_does_not_prepare_or_apply(self):
        with patch.object(structural, 'NativeStructureAdapter') as native:
            adapter = native.return_value
            adapter.observe.return_value = clone(self.before)
            adapter.validate.return_value = clone(self.before)
            result = self.invoke()
            self.assertFalse(result['is_error'])
            self.assertIn('"native_constraints":"passed"', result['content'])
            adapter.validate.assert_called_once()
            adapter.prepare.assert_not_called()
            adapter.apply.assert_not_called()


if __name__ == '__main__':
    unittest.main()
