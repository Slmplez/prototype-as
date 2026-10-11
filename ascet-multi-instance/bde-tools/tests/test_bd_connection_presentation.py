from pathlib import Path
import unittest
from unittest.mock import patch

import bd_service as service
import bd_connection_presentation as presentation
from bd_sandbox_edit import binding
import test_bd_connection_sequence as sequence_tests


class ConnectionPresentationTests(unittest.TestCase):
    def setUp(self):
        self.fixture = sequence_tests.ConnectionSequenceTests()
        self.fixture.setUp()
        self.addCleanup(self.fixture.doCleanups)
        self.addCleanup(patch.stopall)
        patch.object(service, 'STORE', self.fixture.local.root.parent).start()
        patch.object(service, 'live_lock', sequence_tests.nullcontext).start()
        patch.dict('os.environ', {'ASCET_BD_NATIVE_PRESENTATION': '1'}).start()
        receipt = self.fixture.group.execute(self.fixture.request, self.fixture.factory, sequence_tests.nullcontext,
            lambda req, snapshot, component: binding(req, component, snapshot))
        self.args = {'change_id': receipt['change_id'], 'presentation': 'show'}

    def test_fanout_coalesces_one_canvas_after_all_dependency_guards(self):
        seen = []
        def invoke(resource, mode, token):
            self.assertTrue(self.fixture.adapter.guarded)
            seen.append(resource)
            return {'is_error': False}
        with patch.object(presentation, 'invoke', side_effect=invoke):
            value = presentation.present(self.fixture.group, self.args, 'test', self.fixture.factory)
        self.assertEqual(len(seen), 1)
        self.assertEqual(len(seen[0]['change_ids']), 2)
        self.assertEqual(len(seen[0]['differences']), 2)
        self.assertTrue(value['coalesced_same_scope'])
        self.assertEqual(self.fixture.adapter.calls, ['apply', 'apply'])

    def test_stale_first_edge_blocks_every_canvas_before_drawing(self):
        next(row for row in self.fixture.adapter.state['entries'] if row['ref'] == 'e1')['type'] = 99
        with patch.object(presentation, 'invoke') as invoke:
            with self.assertRaises(sequence_tests.JournalError):
                presentation.present(self.fixture.group, self.args, 'test', self.fixture.factory)
            invoke.assert_not_called()

    def test_clear_does_not_read_model_or_change_edit_journal(self):
        files = {str(p): p.read_bytes() for p in self.fixture.local.root.rglob('*.json')}
        with patch.object(self.fixture.group, 'preflight_revert') as preflight, \
                patch.object(presentation, 'invoke', return_value={'is_error': False}):
            presentation.present(self.fixture.group, {**self.args, 'presentation': 'clear'}, 'test', self.fixture.factory)
            preflight.assert_not_called()
        self.assertEqual(files, {str(p): p.read_bytes() for p in self.fixture.local.root.rglob('*.json')})

    def test_edge_marker_contains_exact_endpoints_and_type(self):
        edge = {'ref': 'e1', 'kind': 'edge', 'source': 'p2', 'target': 'p3', 'type': 2, 'route': [[10, 20], [30, 40]]}
        commands = presentation.primitives([{'ref': 'e1', 'before': None, 'after': edge}])
        self.assertIn('+ e1 p2 -> p3 type=2', commands)

    def test_created_child_effect_has_exact_separate_canvas_and_no_model_primitives(self):
        from test_bd_scope_effects import HierarchyAdapter
        from bd_scope_effects import scope_differences
        fixture = HierarchyAdapter()
        fixture.apply('fixture')
        receipt = {'change_id': 'edit_scope', 'scope_differences': scope_differences(fixture.scope_effects)}
        source = {'domain': {'oid': 'oid'}, 'component': 'Trial', 'diagram': 'Main'}
        resources = {}
        presentation.add_scope_effects(resources, source, receipt)
        child, = resources.values()
        self.assertEqual(child['diagram'], 'Main/h10')
        self.assertEqual(child['change_ids'], ['edit_scope'])
        self.assertTrue(presentation.primitives(child['differences']))
        self.assertEqual({row['qualified_ref'] for row in child['differences']}, {'Main/h10/n9', 'Main/h10/p9'})
        self.assertEqual(source['diagram'], 'Main')

    def test_native_dispatch_carries_group_ownership_and_never_replays_model(self):
        resource = presentation.scope_patches(self.fixture.group, self.args['change_id'], 'test')[0]
        def run(command, timeout):
            import json
            domain = json.loads(Path(command[5]).read_text())
            self.assertEqual(command[2], 'group_clear')
            self.assertEqual(domain['presentation_token'], self.args['change_id'])
            Path(command[4]).write_text(json.dumps({'status': 'ok'}))
        with patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), \
                patch.object(service, 'run_process', side_effect=run):
            presentation.invoke(resource, 'clear', self.args['change_id'])
        self.assertEqual(self.fixture.adapter.calls, ['apply', 'apply'])

    def test_native_owner_rejection_survives_bridge_process_error(self):
        import json
        resource = presentation.scope_patches(self.fixture.group, self.args['change_id'], 'test')[0]
        detail = {'status': 'error', 'presentation': 'BDE_OVERLAY_ERROR: PRESENTATION_OWNER_MISMATCH: another diff'}
        def run(command, timeout):
            Path(command[4]).write_text(json.dumps(detail))
            service.fail('BRIDGE_FAILED', 'Native helper exit1')
        with patch.object(presentation, 'compile_overlay', return_value=Path('fake.exe')), \
                patch.object(service, 'run_process', side_effect=run), self.assertRaises(service.ToolError) as error:
            presentation.invoke(resource, 'clear', self.args['change_id'])
        self.assertEqual(error.exception.code, 'PRESENTATION_OWNER_MISMATCH')
        self.assertEqual(error.exception.details['detail'], detail)
        self.assertEqual(self.fixture.adapter.calls, ['apply', 'apply'])


if __name__ == '__main__':
    unittest.main()
