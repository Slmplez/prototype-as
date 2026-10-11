"""Scope effects and durable child snapshots; fixtures are not native evidence."""
from contextlib import nullcontext
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import bd_service as service
from bd_edit_journal import clone, fingerprint
from bd_scope_effects import inverse_effects, postcondition, scope_differences
from bd_structure_journal import StructureJournal
from bd_structural_tools import publish_after, plan


class HierarchyAdapter:
    def __init__(self):
        self.before = {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 1,
                       'targets': [], 'entries': [], 'lookup_nodes': 0, 'lookup_edges': 0}
        self.state = clone(self.before)
        self.child = {**clone(self.before), 'diagram': 'Main/h10', 'lookup_nodes': 1,
            'boundary_context': [{'external': 11, 'hierarchy': 10, 'input': True, 'output': False,
                                  'internal_node': 9, 'internal_pin': 9}],
            'entries': [{'kind': 'node', 'ref': 'n9', 'hierarchy_boundary': True, 'pins': ['p9'],
                         'position': [90, 80], 'size': [60, 20], 'anchor': [100, 100]},
                        {'kind': 'pin', 'ref': 'p9', 'name': 'get', 'owner': 'n9', 'input': False, 'output': True}]}
        self.effect = {'kind': 'hierarchy_scope', 'diagram': 'Main/h10', 'parent_ref': 'Main/n10',
                       'before': None, 'after': clone(self.child)}
        self.calls = 0
        self.bad_inverse = False
        self.released = False

    def observe(self, domain, targets):
        return clone(self.state)

    def prepare(self, *args):
        return clone(self.state)

    def apply(self, token):
        self.calls += 1
        self.state.update(lookup_nodes=1, entries=[
            {'kind': 'node', 'ref': 'n10', 'hierarchy_name': 'Stage', 'anchor': [100, 100], 'pins': ['p11']},
            {'kind': 'pin', 'ref': 'p11', 'name': 'Signal', 'owner': 'n10', 'input': True, 'output': False}])
        self.scope_effects = [clone(self.effect)]
        return clone(self.state)

    def revert(self, domain, token):
        self.calls += 1
        self.state = clone(self.before)
        self.scope_effects = [] if self.bad_inverse else inverse_effects([self.effect])
        return clone(self.state)

    def release(self, *args):
        self.released = True
        return {'released': True}


class ScopeEffectTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        override = patch.object(service, 'STORE', Path(self.temp.name) / 'store')
        override.start(); self.addCleanup(override.stop)
        self.adapter = HierarchyAdapter()
        self.log = StructureJournal(service.STORE / 'edits')
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'request_id': 'create', 'component': 'BDE_Tool_Experiments\\Trial_scope', 'diagram': 'Main',
            'operation': 'create_block', 'arguments': [[], 'hierarchy', 'Stage', 100, 100, 'Signal|'],
            'expect': fingerprint(self.adapter.state)}

    def execute(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_actual_scope_diff_replays_and_inverse_requires_removal_evidence(self):
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'applied_observed')
        self.assertEqual(receipt['scope_effects'], [self.adapter.effect])
        self.assertEqual(len(receipt['scope_differences'][0]['differences']), 2)
        self.assertEqual(self.execute(), receipt)
        self.assertEqual(self.adapter.calls, 1)
        self.assertEqual(self.log.diff(receipt['change_id'])['scope_differences'], receipt['scope_differences'])
        self.adapter.bad_inverse = True
        inverse = self.log.revert(receipt['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'restore_mismatch')
        self.assertFalse(self.adapter.released)

    def test_verified_inverse_has_exact_child_observation_and_can_release(self):
        receipt = self.execute()
        inverse = self.log.revert(receipt['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')
        self.assertEqual(inverse['scope_effects'], inverse_effects([self.adapter.effect]))
        self.assertFalse(inverse['scope_differences'][0]['scope_after_exists'])
        self.assertTrue(self.adapter.released)

    def test_child_snapshot_is_stable_and_editable_without_capture(self):
        receipt = self.execute()
        with patch.object(service, 'live_lock', side_effect=AssertionError('Unexpected live access')):
            result = publish_after(self.log, receipt, self.request['domain'], self.request['component'])
            replay = publish_after(self.log, receipt, self.request['domain'], self.request['component'])
        self.assertEqual(result, replay)
        self.assertEqual(result['additional_ASCET_reads'], 0)
        child, = result['scope_after_snapshots']
        record = service.load_record(child['snapshot'], 's_', 'snapshots')
        self.assertEqual(record['structure'], self.adapter.child)
        self.assertEqual(record['scope']['diagram'], 'Main/h10')
        action, _, _ = plan(record, {'op': 'create_block', 'kind': 'literal', 'name': '1', 'position': [100, 100]})
        self.assertEqual(action, 'create_block')

    def test_component_models_are_observations_not_new_scope_declarations(self):
        model = {'kind': 'model', 'ref': 'm_a', 'name': 'Existing'}
        self.adapter.before['entries'].append(model)
        self.adapter.state = clone(self.adapter.before)
        self.adapter.child['entries'].append(model)
        effect = {**self.adapter.effect, 'after': self.adapter.child}
        after = clone(self.adapter.before)
        after['entries'] += [
            {'kind': 'node', 'ref': 'n10', 'pins': ['p11']},
            {'kind': 'pin', 'ref': 'p11', 'input': True, 'output': False}]
        self.assertTrue(postcondition(self.request, [effect], self.adapter.before, after))
        delta, = scope_differences([effect])
        self.assertEqual({d['ref'] for d in delta['differences']}, {'n9', 'p9'})

    def test_wrong_pair_direction_missing_scope_and_duplicate_ids_fail(self):
        self.execute()
        for modification in ('direction', 'duplicate', 'missing'):
            effects = [clone(self.adapter.effect)]
            if modification == 'direction': effects[0]['after']['entries'][1]['input'] = True
            elif modification == 'duplicate': effects[0]['after']['entries'].append(effects[0]['after']['entries'][0])
            else: effects = []
            self.assertFalse(postcondition(self.request, effects, self.adapter.before, self.adapter.state))


if __name__ == '__main__':
    unittest.main()
