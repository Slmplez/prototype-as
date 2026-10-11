"""Class patch routing and rejection contracts; no live or visual acceptance."""
from copy import deepcopy
import unittest
from unittest.mock import patch

import bd_service as service
import bd_class_tools as tools
import bd_class_presentation as presentation
from bd_edit_journal import JournalError
import test_bd_class_tools as harness


class ClassPresentationTests(unittest.TestCase):
    def setUp(self):
        self.harness = harness.ClassToolsTests()
        self.harness.setUp()
        self.addCleanup(self.harness.doCleanups)
        self.receipt = self.harness.body(service.handle('bd_edit', self.harness.args, 'test'))
        self.change_id = self.receipt['change_id']
        self.intent, self.raw, _ = tools.terminal_raw(self.change_id)

    def test_exact_owners_and_scopes_and_formal_ghosts_use_actual_patch(self):
        rows = presentation.resources(self.change_id, self.intent, self.raw)
        self.assertEqual(len(rows), 4)
        self.assertEqual(len({row['component'] for row in rows}), 4)
        self.assertTrue(any('/h' in row['diagram'] for row in rows))
        for row in rows:
            owner = next(owner for owner in tools.observation(self.raw, 'after')['owners'] if owner['component'] == row['component'])
            self.assertEqual(row['domain']['oid'], owner['oid'])
            self.assertEqual(row['change_ids'], [self.change_id])
        ghosts = [delta for row in rows for delta in row['differences']
            if (delta.get('before') or {}).get('native_class') == 'ClassFormalPin']
        self.assertTrue(ghosts)
        self.assertTrue(any((delta.get('before') or {}).get('model_name') == 'aggregate/Acceleration' for delta in ghosts))

    def test_missing_caller_anchor_refuses_before_any_window(self):
        raw = deepcopy(self.raw)
        raw['before']['callers'][0]['public_connected_pin_positions'] = {}
        with self.assertRaises(JournalError) as error:
            presentation.resources(self.change_id, self.intent, raw)
        self.assertEqual(error.exception.code, 'PRESENTATION_UNAVAILABLE')

    def test_rematerialized_edge_multiset_only_suppresses_exact_pairs(self):
        edge = {'kind': 'edge', 'ref': 'e1', 'source': 'p1', 'target': 'p2', 'type': 2,
            'route': [[0, 0], [10, 0]]}
        old = [{'ref': 'e1', 'before': edge, 'after': None},
            {'ref': 'e2', 'before': {**edge, 'ref': 'e2'}, 'after': None}]
        new = {'ref': 'e3', 'before': None, 'after': {**edge, 'ref': 'e3'}}
        moved = {'ref': 'e4', 'before': None,
            'after': {**edge, 'ref': 'e4', 'route': [[0, 0], [20, 0]]}}
        data = old + [new, moved]
        baseline = deepcopy(data)
        self.assertEqual(presentation.graphical_differences(data), [old[1], moved])
        self.assertEqual(data, baseline, 'Actual patch must remain unchanged')

    def test_identical_route_with_different_endpoint_or_type_remains_visible(self):
        before = {'kind': 'edge', 'ref': 'e1', 'source': 'p1', 'target': 'p2', 'type': 2,
            'route': [[0, 0], [10, 0]]}
        for fields in ({'target': 'p3'}, {'type': 3}, {'native_class': 'DifferentGO'}):
            data = [{'ref': 'e1', 'before': before, 'after': None},
                {'ref': 'e2', 'before': None, 'after': {**before, 'ref': 'e2', **fields}}]
            self.assertEqual(presentation.graphical_differences(data), data)

    def test_disabled_gate_and_wrong_session_never_open_a_window(self):
        args = {'change_id': self.change_id, 'presentation': 'show'}
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '0'}), self.assertRaises(JournalError):
            presentation.present(args, 'test', 16384)
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'}), self.assertRaises(JournalError) as error:
            presentation.present(args, 'foreign', 16384)
        self.assertEqual(error.exception.code, 'IDENTITY_UNRESOLVED')

    def test_show_checks_complete_current_baseline_and_clear_does_not_read(self):
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'}):
            with patch('bd_connection_presentation.invoke', return_value={'is_error': False}) as draw:
                before = len(self.harness.dispatches)
                result = presentation.present({'change_id': self.change_id, 'presentation': 'show'}, 'test', 16384)
                self.assertFalse(result['is_error'])
                self.assertEqual(len(self.harness.dispatches), before)
                self.assertEqual(draw.call_count, 4)
            with patch('bd_connection_presentation.invoke', return_value={'is_error': False}), \
                    patch.object(tools, 'invoke', side_effect=AssertionError('clear must not read model')):
                result = presentation.present({'change_id': self.change_id, 'presentation': 'clear'}, 'test', 16384)
                self.assertFalse(result['is_error'])

    def test_later_owner_edit_blocks_all_drawing(self):
        self.harness.current['after']['body']['nodes'][0]['position'][0] += 1
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'}), \
                patch('bd_connection_presentation.invoke') as draw, self.assertRaises(JournalError) as error:
            presentation.present({'change_id': self.change_id, 'presentation': 'show'}, 'test', 16384)
        self.assertEqual(error.exception.code, 'PRECONDITION_CONFLICT')
        draw.assert_not_called()


if __name__ == '__main__':
    unittest.main()
