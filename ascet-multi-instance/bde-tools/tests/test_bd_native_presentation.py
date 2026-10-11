"""Presentation isolation tests with a fake native runner; not visual evidence."""
from contextlib import nullcontext
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import bd_service as service
import bd_native_presentation as presentation
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from bd_edit_journal import fingerprint
from bd_edit_journal import EditJournal
from test_bd_structure_journal import Adapter
from bde_overlay_experiment import primitives


class PresentationTests(unittest.TestCase):
    def setUp(self):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.store = Path(temp.name)
        for folder in ('documents', 'pages', 'snapshots', 'edits', 'delivery'):
            (self.store/folder).mkdir()
        for patcher in (patch.object(service, 'STORE', self.store),
                        patch.object(service, 'live_lock', nullcontext),
                        patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'})):
            patcher.start()
            self.addCleanup(patcher.stop)
        adapter = Adapter()
        self.adapter = adapter
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
                        'request_id': 'r', 'component': 'BDE_Tool_Experiments\\Trial_test', 'diagram': 'Main',
                        'operation': 'set_transition_priority', 'arguments': [['t1'], 't1', 2],
                        'expect': fingerprint(adapter.state)}
        self.edit = StructureJournal(self.store/'edits').execute(self.request, adapter, nullcontext)
        binding(self.request, self.request['component'], 's_'+'a'*32)

    def args(self, mode):
        return {'change_id': self.edit['change_id'], 'presentation': mode}

    def test_stale_graph_refuses_overlay_before_runner(self):
        self.adapter.state['generation'] = 2
        with patch.object(presentation, 'primitives', return_value=['rect','255','0','0','10','10']), patch.object(presentation, 'NativeStructureAdapter') as native, patch.object(service, 'run_process') as run:
            native.return_value.__enter__.return_value = self.adapter
            with self.assertRaises(service.ToolError) as error:
                presentation.present(self.args('show'), 's', 12000)
            self.assertEqual(error.exception.code, 'PRECONDITION_CONFLICT')
            run.assert_not_called()

    def test_model_field_diff_without_geometry_refuses_empty_overlay(self):
        before=sorted((str(p),p.read_bytes()) for p in (self.store/'edits').rglob('*.json'))
        with patch.object(presentation,'primitives',return_value=[]), patch.object(presentation,'NativeStructureAdapter') as native, patch.object(service,'run_process') as run:
            with self.assertRaises(service.ToolError) as error:presentation.present(self.args('show'),'s',12000)
            self.assertEqual(error.exception.code,'PRESENTATION_UNAVAILABLE')
            native.assert_not_called();run.assert_not_called()
        self.assertEqual(before,sorted((str(p),p.read_bytes()) for p in (self.store/'edits').rglob('*.json')))

    def test_clear_has_no_model_read_and_no_model_journal_event(self):
        before = sorted((str(p), p.read_bytes()) for p in (self.store/'edits').rglob('*.json'))
        def fake_run(command, timeout):
            self.assertEqual(json.loads(Path(command[5]).read_text())['presentation_token'], self.edit['change_id'])
            Path(command[4]).write_text(json.dumps({'status': 'ok', 'presentation': 'cleared'}), encoding='utf-8')
        with patch.object(presentation, 'NativeStructureAdapter') as native, patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), patch.object(service, 'run_process', side_effect=fake_run):
            result = presentation.present(self.args('clear'), 's', 12000)
            native.assert_not_called()
            self.assertIn('native_call_succeeded_visual_unverified', result['content'])
        after = sorted((str(p), p.read_bytes()) for p in (self.store/'edits').rglob('*.json'))
        self.assertEqual(before, after)

    def test_wrong_session_and_disabled_gate(self):
        with self.assertRaises(service.ToolError) as error:
            presentation.present(self.args('show'), 'other', 12000)
        self.assertEqual(error.exception.code, 'IDENTITY_UNRESOLVED')
        with patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '0'}), self.assertRaises(service.ToolError) as error:
            presentation.present(self.args('show'), 's', 12000)
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')

    def test_recorded_child_scope_is_used_for_observation_and_native_routing(self):
        log = EditJournal(self.store/'edits')
        events = log.read(self.edit['change_id'])
        events[0]['payload']['diagram'] = 'Main/h12/h5'
        def fake_run(command, timeout):
            native_domain = json.loads(Path(command[5]).read_text())
            self.assertEqual(native_domain['diagram'], 'Main/h12/h5')
            Path(command[4]).write_text(json.dumps({'status': 'ok'}))
        with patch.object(presentation.StructureJournal, 'read', return_value=events), \
                patch.object(presentation, 'primitives', return_value=['rect','255','0','0','10','10']), \
                patch.object(presentation, 'NativeStructureAdapter') as native, \
                patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), \
                patch.object(service, 'run_process', side_effect=fake_run):
            native.return_value.__enter__.return_value = self.adapter
            value = presentation.present(self.args('show'), 's', 12000)
            native.assert_called_once_with(self.request['component'], 'Main/h12/h5')
            self.assertIn('Main/h12/h5', value['content'])
        self.assertEqual(self.adapter.calls, 1, 'Presentation must not replay a model edit')

    def test_presentation_timeout_preserves_unknown_and_stage(self):
        def fake_run(command, timeout):
            Path(command[4]).write_text(json.dumps({'status': 'started', 'stage': 'dispatch_clear'}), encoding='utf-8')
            service.fail('READ_TIMEOUT', 'Generic helper timeout')
        with patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), patch.object(service, 'run_process', side_effect=fake_run):
            with self.assertRaises(service.ToolError) as error:
                presentation.present(self.args('clear'), 's', 12000)
        self.assertEqual(error.exception.code, 'PRESENTATION_OUTCOME_UNKNOWN')
        saved = next((self.store/'presentations').glob('*/result.json'))
        self.assertFalse(json.loads(saved.read_text())['retry_model_edit'])


class ModelDrawingCommandsTests(unittest.TestCase):
    def test_added_node_has_exact_non_color_text(self):
        new = {'kind': 'node', 'ref': 'n12', 'native_class': 'SGNumericLiteralGO',
               'literal': '3.0', 'position': [300, 250], 'size': [40, 14]}
        commands = primitives([{'ref': 'n12', 'before': None, 'after': new}])
        self.assertIn('+ n12 SGNumericLiteralGO literal="3.0"', commands)
        text_rows = [commands[i:i+6] for i in range(0, len(commands), 6) if commands[i] == 'text']
        self.assertEqual(text_rows[0][1:4], ['32768', '300', '282'])

    def test_partial_visual_gate_cannot_pass(self):
        from bde_hierarchy_presentation_experiment import visual_gate_verified
        record = {'status': 'verified', 'evidence': ['observed.png'], 'not_verified': ['non-color added marker']}
        self.assertFalse(visual_gate_verified(record))
        self.assertFalse(visual_gate_verified({'status': 'verified'}))
        self.assertTrue(visual_gate_verified({**record, 'not_verified': []}))

    def test_deleted_node_name_and_type_survive_exact_wrapping(self):
        name = 'Deleted ' + '\u4e2d\u6587' * 30
        old = {'kind': 'node', 'ref': 'n12', 'native_class': 'SGDataGO', 'model_name': name,
               'position': [300, 200], 'size': [30, 10]}
        commands = primitives([{'ref': 'n12', 'before': old, 'after': None}])
        text_rows = [commands[i:i+6] for i in range(0, len(commands), 6) if commands[i] == 'text']
        expected = '- n12 SGDataGO model_name=' + json.dumps(name, ensure_ascii=True, separators=(',', ':'))
        self.assertEqual(''.join(row[4] for row in text_rows), expected)
        self.assertTrue(all(1 <= len(row[4]) <= 60 and all(32 <= ord(c) <= 126 for c in row[4]) for row in text_rows))
        self.assertEqual([(row[2], row[3]) for row in text_rows], [('300', str(228+i*16)) for i in range(len(text_rows))])

    def test_deleted_literal_operator_and_oversize_text(self):
        for field, value in (('literal', '2.0'), ('operator', '+')):
            row = {'kind': 'node', 'ref': 'n3', field: value, 'position': [80, 90], 'size': [40, 14]}
            commands = primitives([{'ref': 'n3', 'before': row, 'after': None}])
            self.assertIn('- n3 node ' + field + '=' + json.dumps(value), commands)
            self.assertNotIn('text', primitives([{'ref': 'n3', 'before': row, 'after': dict(row)}]))
        row['literal'] = 'x'*2048
        with self.assertRaisesRegex(ValueError, 'display limit'):
            primitives([{'ref': 'n3', 'before': row, 'after': None}])

    def test_moved_or_deleted_pin_sequence_has_old_geometry(self):
        old = {'kind': 'pin', 'ref': 'p1', 'sequence': {'position': [285, 218], 'size': [20, 12]}}
        new = {'kind': 'pin', 'ref': 'p1', 'sequence': {'position': [445, 338], 'size': [20, 12]}}
        before_commands = ['rect', '255', '281', '214', '28', '20']
        self.assertEqual(primitives([{'ref': 'p1', 'before': old, 'after': new}]),
                         before_commands + ['rect', '32768', '441', '334', '28', '20'])
        self.assertEqual(primitives([{'ref': 'p1', 'before': old, 'after': None}]), before_commands)

    def delta(self, old, new):
        ref = 'm_' + '01' * 20
        return {'ref': ref, 'before': {'ref': ref, 'kind': 'model', 'default_value': old},
                'after': {'ref': ref, 'kind': 'model', 'default_value': new}}

    def test_actual_field_values_and_exact_oid_are_preserved(self):
        delta = self.delta({'value': 1, 'configuration_oid': 'same'}, {'value': 2.5, 'configuration_oid': 'same'})
        commands = primitives([delta])
        self.assertEqual(commands, ['model', '255', delta['ref'], '0', '- default_value.value=1', '0',
                                    'model', '32768', delta['ref'], '1', '+ default_value.value=2.5', '0'])

    def test_boolean_and_number_difference_is_not_hidden(self):
        commands = primitives([self.delta({'value': False}, {'value': 0})])
        self.assertIn('- default_value.value=false', commands)
        self.assertIn('+ default_value.value=0', commands)

    def test_wrapped_text_is_exact_and_transport_is_printable_ascii(self):
        delta = self.delta({'values': list(range(24))}, {'values': list(range(24, 48))})
        commands = primitives([delta])
        for color, marker, values in (('255', '-', list(range(24))), ('32768', '+', list(range(24, 48)))):
            lines = [commands[i+4] for i in range(0, len(commands), 6) if commands[i+1] == color]
            self.assertEqual(''.join(lines), marker + ' default_value.values=' + json.dumps(values, separators=(',', ':')))
        self.assertTrue(all(0 < len(commands[i+4]) <= 60 for i in range(0, len(commands), 6)))
        self.assertTrue(all(32 <= ord(c) <= 126 for i in range(0, len(commands), 6) for c in commands[i+4]))

    def test_no_change_and_creation_do_not_create_model_text(self):
        self.assertEqual(primitives([self.delta({'value': 1}, {'value': 1})]), [])
        delta = self.delta({'value': 1}, {'value': 2})
        delta['before'] = None
        self.assertEqual(primitives([delta]), [])

    def test_changed_identity_and_oversize_fields_are_rejected(self):
        delta = self.delta({'value': 1}, {'value': 2})
        delta['after']['ref'] = 'm_' + '02' * 20
        with self.assertRaisesRegex(ValueError, 'identity'):
            primitives([delta])
        with self.assertRaisesRegex(ValueError, 'display limit'):
            primitives([self.delta({'value': ''}, {'value': 'a' * 2048})])


if __name__ == '__main__':
    unittest.main()
