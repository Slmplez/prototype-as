"""Frozen-history and journal fault tests; these are not live ASCET evidence."""
from copy import deepcopy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from bd_edit_journal import JournalError, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
import bd_recovery as recovery
from bd_topology_head_snapshot import PROFILE, summary, validate
from test_bd_topology_inverse import graph, remove

TOKEN, OWNER, NEXT = ('edit_' + letter * 64 for letter in ('a', 'b', 'c'))
DOMAIN = {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'}


def snapshot():
    after = graph()
    before = remove(after, {'e1'})
    def physical(members):
        return dict(profile='native_parent_order_v1', native_token=TOKEN, diagram='Main',
                    parent='o1', collection='o2', complete=True, members=members)
    def drawn(value):
        return {**deepcopy(value), 'profile': 'native_drawing_order_v1',
                'numbers': list(range(1, len(value['members']) + 1))}
    parent_before, parent_after = physical(['o3', 'o4', 'o5', 'o6']), physical(['o3', 'o4', 'o5', 'o6', 'o7'])
    return dict(profile=PROFILE, native_token=TOKEN, owner_change_id=OWNER,
        previous_owner_change_id=TOKEN, component_oid=DOMAIN['oid'], diagram='Main',
        operation='disconnect_data', sequence=2, before_state='applied', state='reverted', direction='undo',
        before=before, after=after, parent_before=parent_before, parent_after=parent_after,
        drawing_before=drawn(parent_before), drawing_after=drawn(parent_after),
        before_endpoint_mode='detached', after_endpoint_mode='attached', native_source_material_retained=True,
        model_setters_called=0, store_called=False, write_authorized=False, managed_inverse_enabled=False)


def checked(value, **options):
    return validate(value, domain=DOMAIN, token=TOKEN, owner=OWNER, state='reverted',
                    operation='disconnect_data', previous_owner=TOKEN, **options)


class SnapshotTests(unittest.TestCase):
    def test_full_actual_history_is_independent_and_summary_is_bounded(self):
        original = snapshot()
        result = checked(original)
        self.assertEqual(result, original)
        result['after']['entries'][0]['name'] = 'changed-copy'
        self.assertNotEqual(result, original)
        info = summary(original)
        self.assertEqual(info['sha256'], fingerprint(original))
        self.assertNotIn('before', info)
        self.assertFalse(info['managed_inverse_enabled'])

    def test_wrong_owner_component_sequence_and_types_refused(self):
        for fields in ({'owner_change_id': NEXT}, {'component_oid': 'another'},
                {'previous_owner_change_id': NEXT}, {'sequence': 1}, {'sequence': True},
                {'state': 'applied'}, {'direction': 'forward'}, {'model_setters_called': False},
                {'native_source_material_retained': False}, {'write_authorized': True},
                {'managed_inverse_enabled': True}, {'store_called': True}):
            with self.subTest(fields=fields), self.assertRaises(JournalError):
                checked(snapshot() | fields)

    def test_scoped_current_or_mismatched_generation_cannot_replace_frozen_history(self):
        for key, field, value in (('before', 'targets', ['n1']), ('after', 'generation', 2),
                                  ('before', 'diagram', 'Main/child')):
            candidate = snapshot(); candidate[key][field] = value
            with self.subTest(key=key, field=field), self.assertRaises(JournalError):
                checked(candidate)
        candidate = snapshot(); candidate['before'] = deepcopy(candidate['after'])
        with self.assertRaises(JournalError):
            checked(candidate)
        for bad in (None, [], False, 'current'):
            candidate = snapshot(); candidate['after'] = bad
            with self.subTest(bad=bad), self.assertRaises(JournalError):
                checked(candidate)

    def test_wrong_roster_numbers_or_actual_direction_refused(self):
        candidates = []
        wrong = snapshot(); wrong['drawing_after']['numbers'][-1] = 19; candidates.append(wrong)
        wrong = snapshot(); wrong['drawing_before']['members'][0] = 'o99'; candidates.append(wrong)
        wrong = snapshot(); wrong['parent_after']['native_token'] = NEXT; candidates.append(wrong)
        wrong = snapshot(); wrong['parent_before'], wrong['parent_after'] = wrong['parent_after'], wrong['parent_before']
        wrong['drawing_before'], wrong['drawing_after'] = wrong['drawing_after'], wrong['drawing_before']; candidates.append(wrong)
        for index, candidate in enumerate(candidates):
            with self.subTest(index=index), self.assertRaises(JournalError):
                checked(candidate)


class JournalSnapshotTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory(); self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(temporary.name)
        self.source = self.log._path(TOKEN); self.source.mkdir()
        events = []
        self.log._append(self.source, events, 'intent', {'operation': 'disconnect_data', 'domain': DOMAIN,
            'diagram': 'Main', 'component': 'sandbox'})
        self.log._append(self.source, events, 'prepared', {'before': snapshot()['after']})
        self.log._append(self.source, events, 'observed', {'after': snapshot()['before']})
        self.path = self.log._path(OWNER); self.path.mkdir(); self.events = []
        self.log._append(self.path, self.events, 'intent', {'reverts': TOKEN, 'domain': DOMAIN})
        self.log._append(self.path, self.events, 'prepared', {'before': snapshot()['before']})
        self.log._append(self.path, self.events, 'observed', {'after': snapshot()['after'], 'parent_order_effects': []})
        self.log._append(self.path, self.events, 'finished', {'status': 'verified_local'})
        outer = self
        class Adapter:
            topology_head_snapshot_operations = frozenset(('disconnect_data', 'delete_node'))
            managed_inverse_operations = frozenset()
            calls = confirms = 0
            reply = snapshot()
            def retain_inverse(self, domain, token, owner):
                self.calls += 1
                return dict(retained=True, profile='retained_inverse_v1', native_token=token,
                            owner_change_id=owner, state='reverted', model_setters_called=0)
            def topology_owned_head_snapshot(self, *args):
                return deepcopy(self.reply)
            def confirm_retention(self, *args):
                persisted = outer.log.read(OWNER)
                assert persisted[-1]['kind'] == 'topology_head_retained'
                assert persisted[-1]['payload'] == self.reply
                self.confirms += 1
        self.adapter = Adapter()

    def retain(self):
        self.log.retain_inverse_material(self.path, self.events, self.adapter, DOMAIN, TOKEN, OWNER)

    def test_full_head_persisted_before_confirmation_without_enabling_redo(self):
        self.retain()
        self.assertEqual(self.adapter.confirms, 1)
        kinds = [e['kind'] for e in self.events]
        self.assertLess(kinds.index('topology_head_snapshot_required'), kinds.index('recovery_retention_started'))
        self.assertLess(kinds.index('recovery_retained'), kinds.index('topology_head_retained'))
        self.assertNotIn('managed_inverse_ready', kinds)
        receipt = self.log.receipt(OWNER, self.events)
        self.assertFalse(receipt['recovery_material']['revert_of_revert_available'])
        self.assertEqual(receipt['topology_history'], summary(snapshot()))
        self.assertNotIn('after', receipt['topology_history'])

    def test_invalid_full_head_preserves_unconfirmed_material(self):
        self.adapter.reply = snapshot() | {'owner_change_id': NEXT}
        self.retain()
        self.assertEqual((self.adapter.calls, self.adapter.confirms), (1, 0))
        self.assertEqual(self.events[-1]['kind'], 'recovery_retention_failed')
        self.assertNotIn('topology_head_retained', [e['kind'] for e in self.events])
        self.assertNotIn('managed_inverse_ready', [e['kind'] for e in self.events])

    def test_lost_snapshot_read_never_confirms_or_repeats_ownership(self):
        with patch.object(self.adapter, 'topology_owned_head_snapshot', side_effect=TimeoutError('read lost')):
            self.retain()
        self.assertEqual((self.adapter.calls, self.adapter.confirms), (1, 0))
        self.assertEqual(self.events[-1]['kind'], 'recovery_retention_failed')
        self.assertEqual(self.events[-1]['payload']['automatic_retry'], False)

    def test_failed_snapshot_disk_write_does_not_clear_confirmation(self):
        append = self.log._append
        def fail(path, events, kind, value):
            if kind == 'topology_head_retained':
                raise OSError('disk unavailable')
            return append(path, events, kind, value)
        with patch.object(self.log, '_append', side_effect=fail):
            self.retain()
        self.assertEqual(self.adapter.confirms, 0)
        self.assertEqual(self.events[-1]['kind'], 'recovery_retention_failed')

    def reconcile(self, pending_confirmed):
        native = dict(state='reverted', before=snapshot()['after'], after=snapshot()['after'],
            current=snapshot()['after'], material_ownership=dict(profile='retained_inverse_v1',
                native_token=TOKEN, owner_change_id=OWNER), current_parent_order_matches_terminal=True,
            current_edge_dependencies_match_terminal=True, parent_order_effects=[])
        marker = dict(domain=DOMAIN, command='retain_inverse', native_token=TOKEN, automatic_retry=False)
        with patch.object(recovery, 'NativeStructureAdapter') as native_adapter, \
                patch.object(recovery, 'graphical_observation', return_value={}), \
                patch.object(recovery.drawing, 'recovery'), \
                patch.object(recovery.pending, 'confirmed', pending_confirmed):
            native_adapter.return_value.__enter__.return_value = self.adapter
            return recovery.retention_status(self.log, OWNER, self.events, self.log.read(TOKEN), TOKEN,
                native, dict(domain=DOMAIN, component='sandbox'), marker, Path('pending.json'), True)

    def test_reconciliation_recovers_snapshot_by_read_without_repeating_retention(self):
        with patch.object(self.adapter, 'topology_owned_head_snapshot', side_effect=TimeoutError('read lost')):
            self.retain()
        from unittest.mock import Mock
        confirmed = Mock()
        result = self.reconcile(confirmed)
        self.assertTrue(result['reconciled'])
        self.assertEqual(self.adapter.calls, 1)
        self.assertEqual(self.adapter.confirms, 0)
        confirmed.assert_called_once_with(Path('pending.json'))
        self.assertIn('topology_head_retained', [event['kind'] for event in self.events])
        self.assertFalse(result['receipt']['recovery_material']['revert_of_revert_available'])

    def test_reconciliation_cannot_clear_pending_with_another_actual_owner(self):
        self.adapter.reply = snapshot() | {'owner_change_id': NEXT}
        self.retain()
        from unittest.mock import Mock
        confirmed = Mock()
        with self.assertRaises(JournalError):
            self.reconcile(confirmed)
        confirmed.assert_not_called()
        self.assertEqual(self.adapter.calls, 1)
        self.assertNotIn('topology_head_retained', [event['kind'] for event in self.events])

    def test_fresh_read_cannot_replace_an_already_frozen_durable_head(self):
        self.retain()
        self.adapter.reply = snapshot() | {'sequence': 3}
        with self.assertRaises(JournalError):
            self.log.record_topology_head(self.path, self.events, self.adapter, DOMAIN, TOKEN, OWNER,
                                         'reverted', 'disconnect_data', TOKEN)

    def test_adapter_fixed_read_does_not_open_managed_topology_gate(self):
        adapter = NativeStructureAdapter('sandbox', environment={})
        self.assertEqual(adapter.topology_head_snapshot_operations, frozenset())
        self.assertFalse(adapter.managed_inverse_operations & {'disconnect_data', 'delete_node'})
        with patch.object(adapter, '_ensure_open') as opened, patch.object(adapter, '_exchange', return_value=snapshot()) as exchange:
            self.assertEqual(adapter.topology_owned_head_snapshot(DOMAIN, TOKEN, OWNER, 'reverted'), snapshot())
        opened.assert_called_once_with(DOMAIN)
        exchange.assert_called_once_with(dict(cmd='topology_owned_head_snapshot', token=TOKEN, owner=OWNER, state='reverted'))


if __name__ == '__main__':
    unittest.main()
