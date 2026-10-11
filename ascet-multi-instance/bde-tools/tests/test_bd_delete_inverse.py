"""Three-way deletion tests and durable journal negatives; no native acceptance."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

from bd_delete_inverse import expected_from_preparation, plan, same, summary
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from test_bd_parent_order_effects import image, effect


def graph():
    return {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 1,
            'identity': 'current_native_registry', 'targets': [], 'lookup_nodes': 2, 'lookup_edges': 1,
            'entries': [
                {'ref': 'e1', 'kind': 'edge', 'native_class': 'SGConnectionWrapperGO', 'source': 'p1', 'target': 'p2'},
                {'ref': 'n1', 'kind': 'node', 'native_class': 'SGLiteralGO', 'literal': '1.0', 'pins': ['p1']},
                {'ref': 'n2', 'kind': 'node', 'native_class': 'SGOperatorGO', 'operator': '+', 'pins': ['p2']},
                {'ref': 'p1', 'kind': 'pin', 'owner': 'n1', 'input': False, 'output': True},
                {'ref': 'p2', 'kind': 'pin', 'owner': 'n2', 'input': True, 'output': False}]}


def deleted(before, operation='delete_node'):
    after = deepcopy(before)
    removed = {'e1', 'n1', 'p1'} if operation == 'delete_node' else {'e1'}
    after['entries'] = [row for row in after['entries'] if row['ref'] not in removed]
    after['lookup_nodes'] -= operation == 'delete_node'
    after['lookup_edges'] -= 1
    return after


class DeleteInverseTests(unittest.TestCase):
    def setUp(self):
        self.before = graph()
        self.after = deleted(self.before)

    def test_exact_delete_and_disconnect_restore_typed_observation(self):
        for operation in ('delete_node', 'disconnect_data'):
            after = deleted(self.before, operation)
            value = plan(self.before, after, after)
            self.assertTrue(value['compatible'])
            self.assertEqual(value['expected'], self.before)

    def test_surviving_value_and_added_node_preserved_with_global_counts(self):
        current = deepcopy(self.after)
        current['entries'][0]['operator'] = '-'
        current['entries'].append({'ref': 'n3', 'kind': 'node', 'native_class': 'SGLiteralGO', 'literal': '2.0', 'pins': []})
        current['lookup_nodes'] += 1
        expected = deepcopy(self.before)
        expected['entries'][2]['operator'] = '-'
        expected['entries'].insert(3, deepcopy(current['entries'][-1]))
        expected['lookup_nodes'] += 1
        originals = deepcopy((self.before, self.after, current))
        value = plan(self.before, self.after, current)
        self.assertTrue(value['compatible'])
        self.assertEqual(value['expected'], expected)
        self.assertEqual(value['preserved_refs'], ['n2', 'n3'])
        self.assertEqual((self.before, self.after, current), originals)

    def test_independent_deletion_outside_restore_dependency_survives(self):
        for g in (self.before, self.after):
            g['entries'].append({'ref': 'n3', 'kind': 'node', 'native_class': 'SGCommentGO', 'pins': []})
            g['lookup_nodes'] += 1
        current = deepcopy(self.after)
        current['entries'] = [row for row in current['entries'] if row['ref'] != 'n3']
        current['lookup_nodes'] -= 1
        value = plan(self.before, self.after, current)
        self.assertTrue(value['compatible'])
        self.assertEqual(value['expected'], graph())

    def test_occupied_input_and_reappeared_deleted_ref_conflict(self):
        current = deepcopy(self.after)
        current['entries'].append({'ref': 'e2', 'kind': 'edge', 'source': 'p9', 'target': 'p2'})
        value = plan(self.before, self.after, current)
        self.assertFalse(value['compatible'])
        self.assertIn('RESTORED_INPUT_OCCUPIED', {row['code'] for row in value['conflicts']})
        current = deepcopy(self.after)
        current['entries'].append(deepcopy(self.before['entries'][1]))
        self.assertIn('DELETED_REFERENCE_REAPPEARED', {row['code'] for row in plan(self.before, self.after, current)['conflicts']})

    def test_endpoint_owner_direction_and_model_dependency_refuse(self):
        for mutate in (lambda g: g['entries'].pop(),
                       lambda g: g['entries'][-1].update(input=False),
                       lambda g: g['entries'][0].update(pins=[])):
            current = deepcopy(self.after)
            mutate(current)
            self.assertFalse(plan(self.before, self.after, current)['compatible'])
        self.before['entries'][1]['model_ref'] = 'm1'
        self.assertFalse(plan(self.before, self.after, self.after)['compatible'])

    def test_stale_metadata_or_row_identity_conflict(self):
        for field, value in (('generation', 2), ('diagram', 'Main/h1'), ('targets', ['n2'])):
            current = deepcopy(self.after)
            current[field] = value
            self.assertFalse(plan(self.before, self.after, current)['compatible'])
        current = deepcopy(self.after)
        current['entries'][0]['native_class'] = 'SGLiteralGO'
        self.assertFalse(plan(self.before, self.after, current)['compatible'])

    def test_actual_patch_damage_and_invalid_counts_cannot_be_deletion(self):
        for mutate in (lambda g: g['entries'][0].update(operator='-'),
                       lambda g: g.update(lookup_nodes=True),
                       lambda g: g.update(lookup_edges=1),
                       lambda g: g['entries'].append(deepcopy(g['entries'][0]))):
            after = deepcopy(self.after)
            mutate(after)
            with self.assertRaises(ValueError):
                plan(self.before, after, after)

    def test_float_bits_and_json_types_are_not_coerced(self):
        self.assertFalse(same({'value': 1}, {'value': 1.0}))
        self.assertFalse(same({'value': True}, {'value': 1}))
        self.assertFalse(same({'value': 0.0}, {'value': -0.0}))

    def test_durable_expectation_must_match_recomputed_plan(self):
        expected = plan(self.before, self.after, self.after)['expected']
        preparation = {'before': self.after, 'inverse_expected': expected}
        self.assertEqual(expected_from_preparation(self.before, self.after, preparation), self.before)
        preparation['inverse_expected'] = self.after
        with self.assertRaises(ValueError):
            expected_from_preparation(self.before, self.after, preparation)
        self.assertEqual(expected_from_preparation(self.before, self.after, {}), self.before)
        with self.assertRaises(ValueError):
            expected_from_preparation(self.before, self.after, {'inverse_analysis': {}})
        preparation['inverse_expected'] = expected
        preparation['inverse_analysis'] = {'profile': 'forged'}
        with self.assertRaises(ValueError):
            expected_from_preparation(self.before, self.after, preparation)


class ThreeWayAdapter:
    local_delete_inverse_capable = True

    def __init__(self):
        self.state = graph()
        self.state['targets'] = [row['ref'] for row in self.state['entries']]
        self.calls = 0
        self.released = False
        self.corrupt_expected = False
        self.overwrite_current = False

    def observe(self, domain, targets):
        return deepcopy(self.state)

    def prepare(self, domain, token, operation, arguments):
        self.before = deepcopy(self.state)
        self.order_before = image(['o3', 'o4'], token)
        self.order_after = image(['o4'], token)
        self.parent_order_before, self.parent_order_expected = self.order_before, self.order_after
        return deepcopy(self.state)

    def apply(self, token):
        self.calls += 1
        self.state = deleted(self.state)
        self.after = deepcopy(self.state)
        self.parent_order_effects = [effect(self.order_before, self.order_after)]
        return deepcopy(self.state)

    def validate_revert(self, domain, token):
        self.parent_order_before, self.parent_order_expected = self.order_after, self.order_before
        self.inverse_expected = plan(self.before, self.after, self.state)['expected']
        if self.corrupt_expected:
            self.inverse_expected = deepcopy(self.before)
        return deepcopy(self.state)

    def revert(self, domain, token):
        self.calls += 1
        self.state = deepcopy(self.before if self.overwrite_current else self.inverse_expected)
        self.parent_order_effects = [effect(self.order_after, self.order_before)]
        return deepcopy(self.state)

    def release(self, domain, token):
        self.released = True
        return {'released': True}


class ThreeWayJournalTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(Path(temporary.name))
        self.adapter = ThreeWayAdapter()
        request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
                   'component': 'BDE_Tool_Experiments\\Trial_merge', 'diagram': 'Main', 'request_id': 'delete',
                   'operation': 'delete_node', 'arguments': [self.adapter.state['targets'], 'n1'],
                   'expect': fingerprint(self.adapter.state)}
        self.edit = self.log.execute(request, self.adapter, nullcontext)
        self.assertEqual(self.edit['status'], 'applied_observed')
        self.adapter.state['entries'][0]['operator'] = '-'

    def test_revert_records_current_diff_and_preserves_later_value(self):
        inverse = self.log.revert(self.edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')
        self.assertEqual(self.adapter.state['entries'][2]['operator'], '-')
        self.assertTrue(self.adapter.released)
        preparation = next(e['payload'] for e in self.log.read(inverse['change_id']) if e['kind'] == 'prepared')
        self.assertEqual(preparation['inverse_expected'], self.adapter.state)
        self.assertEqual(preparation['inverse_analysis']['preserved_refs'], ['n2'])
        self.assertEqual(self.log.revert(self.edit['change_id'], 'inverse', self.adapter, nullcontext), inverse)
        self.assertEqual(self.adapter.calls, 2)

    def test_native_expectation_disagreement_refuses_before_dispatch(self):
        self.adapter.corrupt_expected = True
        inverse = self.log.revert(self.edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertEqual(self.adapter.calls, 1)
        self.assertFalse(self.adapter.released)

    def test_actual_overwrite_is_mismatch_and_keeps_native_material(self):
        self.adapter.overwrite_current = True
        inverse = self.log.revert(self.edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'restore_mismatch')
        self.assertFalse(self.adapter.released)

    def test_input_occupied_refuses_without_native_preflight(self):
        self.adapter.state['entries'].append({'ref': 'e2', 'kind': 'edge', 'source': 'p9', 'target': 'p2'})
        inverse = self.log.revert(self.edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertEqual(self.adapter.calls, 1)
        self.assertFalse(hasattr(self.adapter, 'inverse_expected'))


class ThreeWayPreviewTests(unittest.TestCase):
    def setUp(self):
        import bd_service as service
        import bd_structural_tools as structural
        from bd_sandbox_edit import binding
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.adapter = ThreeWayAdapter()
        self.adapter.close = Mock()
        for mocker in (patch.object(service, 'STORE', Path(temporary.name) / 'store'),
                       patch.object(service, 'live_lock', nullcontext),
                       patch.object(structural, 'NativeStructureAdapter', return_value=self.adapter),
                       patch.dict(os.environ, {'ASCET_BD_STRUCTURAL_WRITES': '1', 'LOCALAPPDATA': temporary.name})):
            mocker.start()
            self.addCleanup(mocker.stop)
        request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
                   'component': 'BDE_Tool_Experiments\\Trial_preview', 'diagram': 'Main', 'request_id': 'original',
                   'operation': 'delete_node', 'arguments': [self.adapter.state['targets'], 'n1'],
                   'expect': fingerprint(self.adapter.state)}
        self.log = StructureJournal(service.STORE / 'edits')
        self.edit = self.log.execute(request, self.adapter, nullcontext)
        binding(request, request['component'], 's_' + '1' * 32)
        self.adapter.state['entries'][0]['operator'] = '-'
        self.invoke = lambda: service.handle('bd_revert', {'change_id': self.edit['change_id'],
            'request_id': 'preview', 'preview': True}, 's')

    def test_actual_preview_route_accepts_three_way_change_without_write(self):
        events = self.log.read(self.edit['change_id'])
        result = self.invoke()
        receipt = json.loads(result['content'].split('\n\n', 1)[1])
        self.assertFalse(result['is_error'])
        self.assertEqual(receipt['status'], 'preview')
        self.assertIs(receipt['validation']['original_after_matches'], False)
        self.assertIs(receipt['validation']['inverse_expected_matches'], True)
        self.assertEqual(self.adapter.calls, 1)
        self.assertEqual(self.log.read(self.edit['change_id']), events)
        self.adapter.close.assert_called_once()

    def test_preview_native_expectation_disagreement_is_conflict(self):
        self.adapter.corrupt_expected = True
        result = self.invoke()
        receipt = json.loads(result['content'].split('\n\n', 1)[1])
        self.assertTrue(result['is_error'])
        self.assertEqual(receipt['status'], 'conflict')
        self.assertIs(receipt['validation']['inverse_expected_matches'], False)
        self.assertEqual(self.adapter.calls, 1)


if __name__ == '__main__':
    unittest.main()
