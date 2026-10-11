"""Offline causal-history and failure regressions, never live ASCET acceptance."""
from contextlib import nullcontext
from copy import deepcopy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch, Mock

from bd_edit_journal import JournalError, NativePreconditionConflict, fingerprint
from bd_structure_journal import StructureJournal
from bd_collection_merge import merge_order
from bd_topology_inverse import plan
from bd_topology_execution import FLAGS
from bd_managed_topology import prepare, observed
from bd_native_structure import NativeStructureAdapter
import bd_recovery as recovery
from test_bd_topology_head_snapshot import snapshot, TOKEN, OWNER, NEXT, DOMAIN


class Adapter:
    managed_topology_operations = topology_head_snapshot_operations = frozenset(('disconnect_data', 'delete_node'))
    managed_inverse_operations = frozenset()
    def __init__(self, log):
        self.log, self.head = log, snapshot()
        self.current = deepcopy(self.head['after'])
        self.executions = self.handoffs = self.confirms = 0
        self.fail_reply = self.fail_handoff = self.bad_proof = False

    def observe(self, domain, targets):
        assert targets == []
        return deepcopy(self.current)

    def validate_managed_topology_inverse(self, domain, token, owner, state, result, operation):
        if (token, owner, state) != (TOKEN, self.head['owner_change_id'], self.head['state']):
            raise NativePreconditionConflict('Wrong actual native owner')
        self.inverse_expected = plan(self.head['before'], self.head['after'], self.current, operation=operation)['expected']
        self.parent_order_before = deepcopy(self.head['parent_after'])
        self.parent_order_expected = deepcopy(self.parent_order_before)
        self.parent_order_expected['members'] = merge_order(self.head['parent_before']['members'],
            self.head['parent_after']['members'], self.parent_order_before['members'])['merged']
        self.drawing_order_before = deepcopy(self.head['drawing_after'])
        self.drawing_order_expected = deepcopy(self.parent_order_expected)
        self.drawing_order_expected.update(profile='native_drawing_order_v1',
            numbers=list(range(1, len(self.parent_order_expected['members']) + 1)))
        self.drawing_order_witness = None
        self.graphical_current = dict(profile='native_graphical_current_v1', complete=True,
            objects=[dict(ref='v1', **{'class': 'Cell'}, kind='fields', value=[self.head['sequence']])])
        self.graphical_signature = TOKEN + '/g1'
        return deepcopy(self.current)

    def managed_topology_inverse(self, domain, token, owner, state, result, operation):
        self.executions += 1
        before, self.current = self.current, deepcopy(self.inverse_expected)
        sequence = self.head['sequence'] + 1
        self.parent_order_effects = [dict(kind='parent_order', before=self.parent_order_before, after=self.parent_order_expected)]
        self.drawing_order_effects = [dict(kind='drawing_order', before=self.drawing_order_before, after=self.drawing_order_expected)]
        self.graphical_actual = dict(profile='native_graphical_diff_v1', complete=True, new_objects=[],
            after_object_count=1, changes=[dict(object='v1', kind='fields', index=1, before=sequence - 1, after=sequence)])
        terminal = 'applied' if state == 'reverted' else 'reverted'
        self.topology_execution = dict(profile='native_topology_execution_v1', native_token=token, operation=operation,
            head_change_id=owner, result_change_id=result, execution_sequence=sequence,
            expected_state=state, after_state=terminal, direction='redo' if state == 'reverted' else 'undo',
            phase='terminal', model_operations=1, drawing_assignments=len(self.parent_order_expected['members']),
            normalization=dict(state='restored', native_primitives=1, source_primitives=1), **dict.fromkeys(FLAGS, True))
        self.executed_head = {**self.head, 'owner_change_id': result, 'previous_owner_change_id': owner,
            'sequence': sequence, 'before_state': state, 'state': terminal,
            'direction': 'forward' if terminal == 'applied' else 'undo', 'before': deepcopy(before), 'after': deepcopy(self.current),
            'parent_before': deepcopy(self.parent_order_before), 'parent_after': deepcopy(self.parent_order_expected),
            'drawing_before': deepcopy(self.drawing_order_before), 'drawing_after': deepcopy(self.drawing_order_expected),
            'before_endpoint_mode': 'attached' if terminal == 'applied' else 'detached',
            'after_endpoint_mode': 'detached' if terminal == 'applied' else 'attached'}
        if self.bad_proof:
            self.topology_execution['source_root_preserved'] = False
        if self.fail_reply:
            raise TimeoutError('terminal response lost')
        return deepcopy(self.current)

    def confirm_managed(self, domain, token, owner, state, result, *, handoff=False):
        events = self.log.read(result)
        assert any(e['kind'] == 'observed' and e['payload'].get('topology_execution') == self.topology_execution for e in events)
        assert events[-1]['kind'] == ('topology_head_retained' if handoff else 'finished')
        self.confirms += 1

    def handoff_inverse(self, domain, token, owner, state, result):
        self.handoffs += 1; self.head = self.executed_head
        if self.fail_handoff:
            raise TimeoutError('metadata response lost')
        return dict(retained=True, profile='retained_inverse_v1', native_token=token,
            previous_owner_change_id=owner, owner_change_id=result, state=state, model_setters_called=0)

    def topology_owned_head_snapshot(self, *args):
        return deepcopy(self.head)


class ManagedTopologyTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory(); self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(temporary.name)
        def seed(token, intent, before, after, status):
            path = self.log._path(token); path.mkdir(); events = []
            for kind, payload in (('intent', intent), ('prepared', {'before': before}),
                    ('observed', {'after': after}), ('finished', {'status': status})):
                self.log._append(path, events, kind, payload)
            return path, events
        self.source = dict(operation='disconnect_data', domain=DOMAIN, diagram='Main', component='sandbox',
            request_id='original', arguments=[['e1'], 'e1'], expect=fingerprint(snapshot()['after']))
        seed(TOKEN, self.source, snapshot()['after'], snapshot()['before'], 'applied_observed')
        self.path, self.events = seed(OWNER, dict(reverts=TOKEN, domain=DOMAIN), snapshot()['before'],
            snapshot()['after'], 'verified_local')
        self.log._append(self.path, self.events, 'recovery_retained', dict(retained=True,
            profile='retained_inverse_v1', native_token=TOKEN, owner_change_id=OWNER, state='reverted', model_setters_called=0))
        self.log._append(self.path, self.events, 'topology_head_retained', snapshot())
        self.adapter = Adapter(self.log)

    def context(self):
        return self.log.managed_context(OWNER) | {'result_change_id': NEXT}

    def test_only_unique_complete_owned_head_authorizes_planning(self):
        self.assertEqual(self.context()['before'], snapshot()['before'])
        # Scoped prepared/observed data must never replace the full frozen head.
        with patch.object(self.log, 'read', side_effect=lambda token:
                [e for e in self.events if e['kind'] != 'topology_head_retained'] if token == OWNER else
                StructureJournal.read(self.log, token)):
            with self.assertRaises(JournalError): self.context()
        for field, value in (('sequence', 3), ('previous_owner_change_id', NEXT), ('owner_change_id', NEXT)):
            invalid = deepcopy(self.events)
            next(e for e in invalid if e['kind'] == 'topology_head_retained')['payload'][field] = value
            with patch.object(self.log, 'read', side_effect=lambda token:
                    invalid if token == OWNER else StructureJournal.read(self.log, token)):
                with self.subTest(field=field), self.assertRaises(JournalError): self.context()

    def test_default_capability_refuses_before_live_observation(self):
        self.adapter.managed_topology_operations = frozenset()
        with patch.object(self.adapter, 'observe') as observe:
            with self.assertRaises(JournalError): self.log._managed_revert(OWNER, 'redo', self.adapter, nullcontext)
        observe.assert_not_called()

    def test_native_managed_capability_requires_every_retained_profile(self):
        environment = dict(ASCET_BD_MANAGED_TOPOLOGY_INVERSE='native_source_v1',
            ASCET_BD_TOPOLOGY_LOCAL_INVERSE='native_source_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
            ASCET_BD_TOPOLOGY_EXACT_INVERSE='native_source_v1', ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION='identity_v1',
            ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1', ASCET_BD_OPERATION_EXECUTOR='staged_v1')
        for key in environment:
            if key == 'ASCET_BD_MANAGED_TOPOLOGY_INVERSE': continue
            with self.subTest(missing=key), self.assertRaises(ValueError):
                NativeStructureAdapter('sandbox', environment={k: v for k, v in environment.items() if k != key})
        adapter = NativeStructureAdapter('sandbox', environment=environment)
        self.assertEqual(adapter.managed_topology_operations, {'disconnect_data', 'delete_node'})
        self.assertFalse(adapter.managed_inverse_operations & adapter.managed_topology_operations)
        with self.assertRaises(ValueError): NativeStructureAdapter('sandbox', 'Main/h1', environment=environment)
        with self.assertRaises(ValueError): NativeStructureAdapter('sandbox', environment=environment | {'ASCET_BD_MANAGED_TOPOLOGY_INVERSE': 'unknown'})

    def test_redo_then_inverse_preserves_unrelated_fields_and_journals_each_actual_head(self):
        next(r for r in self.adapter.current['entries'] if r['ref'] == 'n3')['comment'] = 'independent'
        original = deepcopy(self.adapter.current)
        redo = self.log._managed_revert(OWNER, 'redo', self.adapter, nullcontext)
        self.assertEqual(redo['status'], 'verified_local')
        self.assertTrue(redo['recovery_material']['revert_of_revert_available'])
        undo = self.log._managed_revert(redo['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(undo['status'], 'verified_local')
        self.assertEqual(self.adapter.current, original)
        self.assertEqual(self.log.managed_context(undo['change_id'])['topology_head']['sequence'], 4)
        self.assertEqual(self.adapter.executions, 2)
        duplicate = self.log._managed_revert(OWNER, 'redo', self.adapter, nullcontext)
        self.assertEqual(duplicate['change_id'], redo['change_id']); self.assertEqual(self.adapter.executions, 2)

    def test_changed_owned_edge_refuses_before_execution(self):
        current = self.adapter.current
        next(row for row in current['entries'] if row['ref'] == 'e1')['route'][0][0] += 1
        receipt = self.log._managed_revert(OWNER, 'conflict', self.adapter, nullcontext)
        self.assertEqual(receipt['status'], 'conflict'); self.assertEqual(self.adapter.executions, 0)

    def test_native_target_and_order_disagreement_refuses_before_execution(self):
        validate = self.adapter.validate_managed_topology_inverse
        for fault in ('typed', 'physical', 'drawing', 'graphical'):
            def bad(*args):
                value = validate(*args)
                if fault == 'typed': self.adapter.inverse_expected['generation'] += 1
                if fault == 'physical': self.adapter.parent_order_expected['members'].reverse()
                if fault == 'drawing': self.adapter.drawing_order_expected['members'].reverse()
                if fault == 'graphical': self.adapter.graphical_signature = NEXT + '/g1'
                return value
            with patch.object(self.adapter, 'validate_managed_topology_inverse', side_effect=bad):
                receipt = self.log._managed_revert(OWNER, fault, self.adapter, nullcontext)
            self.assertIn(receipt['status'], ('conflict', 'rejected')); self.assertEqual(self.adapter.executions, 0)

    def test_bad_terminal_source_proof_preserves_unknown_without_confirmation(self):
        self.adapter.bad_proof = True
        receipt = self.log._managed_revert(OWNER, 'bad-source', self.adapter, nullcontext)
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual((self.adapter.executions, self.adapter.confirms, self.adapter.handoffs), (1, 0, 0))

    def test_disk_failure_after_native_execution_never_confirms_or_replays(self):
        append = self.log._append
        def fail(path, events, kind, payload):
            if kind == 'observed': raise OSError('disk unavailable')
            return append(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=fail):
            receipt = self.log._managed_revert(OWNER, 'disk', self.adapter, nullcontext)
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.log._managed_revert(OWNER, 'disk', self.adapter, nullcontext)
        self.assertEqual((self.adapter.executions, self.adapter.confirms, self.adapter.handoffs), (1, 0, 0))

    def test_lost_metadata_reply_is_not_redispatched(self):
        self.adapter.fail_handoff = True
        receipt = self.log._managed_revert(OWNER, 'metadata', self.adapter, nullcontext)
        self.assertEqual(receipt['status'], 'verified_local')
        self.assertFalse(receipt['recovery_material']['revert_of_revert_available'])
        self.log._managed_revert(OWNER, 'metadata', self.adapter, nullcontext)
        self.assertEqual((self.adapter.executions, self.adapter.handoffs), (1, 1))

    def test_lost_reply_can_only_reconcile_from_full_fresh_terminal_proof(self):
        self.adapter.fail_reply = True
        receipt = self.log._managed_revert(OWNER, 'lost', self.adapter, nullcontext)
        self.assertEqual(receipt['status'], 'outcome_unknown')
        token, events = receipt['change_id'], self.log.read(receipt['change_id'])
        preparation = next(e['payload'] for e in events if e['kind'] == 'prepared')
        execution = preparation['managed_inverse']
        native = dict(state='applied', before=snapshot()['after'], current=self.adapter.current,
            after=self.adapter.current, managed_execution={**{k: execution[k] for k in
                ('head_change_id', 'result_change_id', 'expected_state')}, 'after_state': 'applied'},
            material_ownership=dict(profile='retained_inverse_v1', native_token=TOKEN, owner_change_id=OWNER),
            topology_execution=self.adapter.topology_execution, parent_order_effects=self.adapter.parent_order_effects,
            drawing_order_effects=self.adapter.drawing_order_effects, graphical_started=self.adapter.graphical_current,
            graphical_actual=self.adapter.graphical_actual, parent_order_current=self.adapter.parent_order_expected,
            parent_order_started=self.adapter.parent_order_before, drawing_order_current=self.adapter.drawing_order_expected,
            drawing_order_started=self.adapter.drawing_order_before,
            **dict.fromkeys(('current_topology_native_matches_terminal', 'current_topology_source_matches_terminal',
                'current_parent_order_matches_terminal', 'current_drawing_order_matches_terminal',
                'current_edge_dependencies_match_terminal', 'current_graphical_matches_terminal'), True))
        marker = dict(domain=DOMAIN, command='managed_inverse', native_token=TOKEN, automatic_retry=False,
            managed_context={k: execution[k] for k in ('head_change_id', 'expected_state', 'result_change_id')})
        confirmed = Mock()
        def reconcile(value):
            return recovery.managed_status(self.log, token, events, self.log.read(TOKEN), TOKEN, value,
                dict(domain=DOMAIN, component='sandbox'), marker, Path('pending'), True)
        with patch.object(recovery.pending, 'confirmed', confirmed):
            with self.assertRaises(JournalError): reconcile(native | {'current_topology_source_matches_terminal': False})
            confirmed.assert_not_called()
            with patch.object(recovery, 'NativeStructureAdapter') as factory, patch.object(recovery, 'publish_after', side_effect=lambda log, value, *args: value):
                factory.return_value.__enter__.return_value = self.adapter
                result = reconcile(native)
        self.assertTrue(result['reconciled']); self.assertEqual(self.adapter.executions, 1)
        self.assertEqual(self.adapter.handoffs, 1)
        self.assertTrue(result['receipt']['recovery_material']['revert_of_revert_available'])


if __name__ == '__main__':
    unittest.main()
