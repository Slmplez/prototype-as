"""Agent diff keeps actual data and excludes private native recovery images."""
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import EditJournal
from bd_structure_journal import StructureJournal


class StructuralDiffRouteTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.store = Path(temporary.name)
        for name in ('documents', 'cursors', 'edits'):
            (self.store / name).mkdir()
        self.addCleanup(patch.stopall)
        patch.object(service, 'STORE', self.store).start()
        self.log = EditJournal(self.store / 'edits')

    def journal(self, identifier, intent, before, after):
        path = self.log._path(identifier)
        path.mkdir()
        events = []
        self.log._append(path, events, 'intent', intent)
        self.log._append(path, events, 'prepared', {'before': before})
        self.log._append(path, events, 'observed', {'after': after, 'graphical_current': {'private': 'x' * 20000},
            'graphical_actual': {'private': 'y' * 20000}, 'parent_order_effects': [], 'drawing_order_effects': []})
        self.log._append(path, events, 'finished', {'status': 'verified_local' if 'reverts' in intent else 'applied_observed',
            'differences': [{'ref': 'n1', 'before': before['entries'][0], 'after': after['entries'][0]}]})

    def test_edit_and_inverse_project_actual_fields_without_native_io(self):
        original, inverse = 'edit_' + '1' * 64, 'edit_' + '2' * 64
        before = {'entries': [{'ref': 'n1', 'kind': 'node', 'literal': '1', 'size': [20, 14]}]}
        after = {'entries': [{'ref': 'n1', 'kind': 'node', 'literal': '123456', 'size': [60, 14]}]}
        self.journal(original, {'operation': 'set_literal', 'component': r'BDE_Tool_Experiments\Trial_test', 'diagram': 'Main'}, before, after)
        self.journal(inverse, {'reverts': original}, after, before)
        with patch.object(service, 'run_process', side_effect=AssertionError('No native I/O for diff')):
            for identifier in (original, inverse):
                with self.subTest(identifier=identifier):
                    response = service.handle('bd_diff', {'change_id': identifier}, 'session')
                    text = response['content'].split('\n\n', 1)[1]
                    actual = json.loads(text)
                    self.assertEqual(actual, StructureJournal(self.store / 'edits').diff(identifier))
                    self.assertNotIn('private', text)
                    self.assertNotIn('graphical_current', actual['observations'][0])
                    self.assertNotIn('graphical_actual', actual['observations'][0])
                    self.assertEqual(actual['differences'][0]['qualified_ref'], 'Main/n1')
                    self.assertEqual(actual['observations'][0]['after'], after if identifier == original else before)
                    self.assertFalse(actual['native_graphical_evidence']['complete_native_graphical_field_details_in_response'])
                    self.assertLess(len(text.encode('utf-8')), 4000)

    def test_inverse_is_routed_to_structural_guard_before_literal_gate(self):
        original, inverse = 'edit_' + '3' * 64, 'edit_' + '4' * 64
        graph = {'entries': [{'ref': 'n1', 'kind': 'node'}]}
        self.journal(original, {'operation': 'set_literal', 'component': r'BDE_Tool_Experiments\Trial_test', 'diagram': 'Main'}, graph, graph)
        self.journal(inverse, {'reverts': original}, graph, graph)
        with patch.dict(os.environ, ASCET_BD_STRUCTURAL_WRITES='1', ASCET_BD_SANDBOX_WRITES='0'), \
                patch.object(service, 'run_process', side_effect=AssertionError('Must reject before native I/O')):
            with self.assertRaises(service.ToolError) as raised:
                service.handle('bd_revert', {'change_id': inverse, 'request_id': 'redo', 'preview': True}, 'session')
            self.assertEqual(raised.exception.code, 'REVERT_UNAVAILABLE')

    def test_multi_inverse_diff_uses_structural_projection_and_qualified_identity(self):
        original, inverse, repeated = ['edit_' + digit * 64 for digit in ('5', '6', '7')]
        graph = {'entries': [{'ref': 'n1', 'kind': 'node'}]}
        domain = {'session': 'session', 'database': 'db', 'oid': 'o', 'process_epoch': 'epoch'}
        self.journal(original, {'domain': domain, 'operation': 'set_literal',
            'component': r'BDE_Tool_Experiments\Trial_test', 'diagram': 'Main'}, graph, graph)
        self.journal(inverse, {'domain': domain, 'reverts': original}, graph, graph)
        self.journal(repeated, {'domain': domain, 'reverts': inverse}, graph, graph)
        with patch.object(service, 'run_process', side_effect=AssertionError('No native I/O')):
            response = service.handle('bd_diff', {'change_id': repeated}, 'session')
        text = response['content'].split('\n\n', 1)[1]
        actual = json.loads(text)
        self.assertNotIn('private', text)
        self.assertEqual(actual['differences'][0]['qualified_ref'], 'Main/n1')
        self.assertEqual(self.log.origin(repeated)['chain'], [repeated, inverse, original])

    def test_cycle_and_cross_domain_ancestry_reject_before_native_io(self):
        left, right = 'edit_' + '8' * 64, 'edit_' + '9' * 64
        graph = {'entries': [{'ref': 'n1', 'kind': 'node'}]}
        self.journal(left, {'reverts': right}, graph, graph)
        self.journal(right, {'reverts': left}, graph, graph)
        with patch.object(service, 'run_process', side_effect=AssertionError('No native I/O')):
            with self.assertRaises(service.ToolError) as raised:
                service.handle('bd_diff', {'change_id': left}, 'session')
            self.assertEqual(raised.exception.code, 'JOURNAL_CORRUPT')
        original, inverse = 'edit_' + 'a' * 64, 'edit_' + 'b' * 64
        self.journal(original, {'domain': {'database': 'db1'}, 'operation': 'set_literal',
            'component': 'test', 'diagram': 'Main'}, graph, graph)
        self.journal(inverse, {'domain': {'database': 'db2'}, 'reverts': original}, graph, graph)
        with patch.dict(os.environ, ASCET_BD_STRUCTURAL_WRITES='1', ASCET_BD_SANDBOX_WRITES='0'), \
                self.assertRaises(service.ToolError) as raised:
            service.handle('bd_revert', {'change_id': inverse, 'request_id': 'r', 'preview': True}, 'session')
        self.assertEqual(raised.exception.code, 'IDENTITY_MISMATCH')

    def test_ancestry_depth_is_bounded(self):
        def linked(identifier):
            index = int(identifier[5:], 16)
            return [{'kind': 'intent', 'payload': {'reverts': 'edit_' + format(index + 1, '064x')}}]
        with patch.object(self.log, 'read', side_effect=linked):
            from bd_edit_journal import JournalError
            with self.assertRaises(JournalError) as raised:
                self.log.origin('edit_' + '0' * 64)
            self.assertEqual(raised.exception.code, 'JOURNAL_CORRUPT')


if __name__ == '__main__':
    unittest.main()
