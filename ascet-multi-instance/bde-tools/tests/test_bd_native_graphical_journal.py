"""Durable raw graphical evidence/fault checks with no ASCET connection."""
from contextlib import nullcontext
from copy import deepcopy
import tempfile
import unittest
from pathlib import Path

from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from test_bd_parent_order_effects import SelectedDeletionAdapter


class GraphicalAdapter(SelectedDeletionAdapter):
    graphical_evidence_required = True

    def prepare(self, domain, token, operation, arguments):
        result = super().prepare(domain, token, operation, arguments)
        self.graphical_current = self.image([1, 2])
        self.graphical_signature = token + '/g1'
        return result

    @staticmethod
    def image(values):
        return {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': [
            {'ref': 'v1', 'class': 'OrderedCollection', 'kind': 'collection', 'value': values}]}

    def apply(self, token):
        result = super().apply(token)
        self.graphical_actual = self.actual([1, 2], [2])
        return result

    @staticmethod
    def actual(before, after):
        return {'profile': 'native_graphical_diff_v1', 'complete': True, 'after_object_count': 1,
                'changes': [{'object': 'v1', 'kind': 'collection', 'before': before, 'after': after}],
                'new_objects': []}

    def validate_revert(self, domain, token):
        result = super().validate_revert(domain, token)
        self.graphical_current = self.image([2])
        self.graphical_signature = token + '/g2'
        return result

    def revert(self, domain, token):
        result = super().revert(domain, token)
        self.graphical_actual = self.actual([2], [1, 2])
        return result


class GraphicalJournalTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(Path(temporary.name))
        self.adapter = GraphicalAdapter()
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
                        'component': 'BDE_Tool_Experiments\\Trial_raw', 'diagram': 'Main', 'request_id': 'delete',
                        'operation': 'delete_node', 'arguments': [['n1'], 'n1'], 'expect': fingerprint(self.adapter.state)}

    def execute(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_original_current_actual_durable_agent_receipts_compact(self):
        edit = self.execute()
        self.assertEqual(edit['status'], 'applied_observed')
        events = self.log.read(edit['change_id'])
        prepared = next(event['payload'] for event in events if event['kind'] == 'prepared')
        observed = next(event['payload'] for event in events if event['kind'] == 'observed')
        self.assertEqual(prepared['graphical_current'], observed['graphical_current'])
        self.assertEqual(observed['graphical_actual']['changes'][0]['after'], [2])
        self.assertNotIn('graphical_current', edit)
        self.assertNotIn('graphical_actual', self.log.diff(edit['change_id'])['observations'][0])
        inverse = self.log.revert(edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')
        inverse_events = self.log.read(inverse['change_id'])
        inverse_current = next(event['payload'] for event in inverse_events if event['kind'] == 'prepared')
        self.assertEqual(inverse_current['graphical_current']['objects'][0]['value'], [2])
        self.assertTrue(self.adapter.released)
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 2)

    def test_missing_before_material_refuses_without_setter(self):
        prepare = self.adapter.prepare
        def missing(*args):
            result = prepare(*args)
            self.adapter.graphical_current = None
            return result
        self.adapter.prepare = missing
        self.assertEqual(self.execute()['status'], 'rejected')
        self.assertEqual(self.adapter.calls, 0)

    def test_incorrect_actual_before_is_unknown_and_not_replayed(self):
        apply = self.adapter.apply
        def corrupted(*args):
            result = apply(*args)
            self.adapter.graphical_actual['changes'][0]['before'] = [2, 1]
            return result
        self.adapter.apply = corrupted
        edit = self.execute()
        self.assertEqual(edit['status'], 'outcome_unknown')
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 1)

    def test_current_wal_failure_prevents_inverse_dispatch(self):
        edit = self.execute()
        append = self.log._append
        def fail(path, events, kind, payload):
            if kind == 'prepared' and 'native_token' not in payload:
                raise OSError('Injected inverse CURRENT persistence failure')
            return append(path, events, kind, payload)
        self.log._append = fail
        inverse = self.log.revert(edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'rejected')
        self.assertEqual(self.adapter.calls, 1)
        self.assertFalse(self.adapter.released)

    def test_invalid_inverse_actual_does_not_release_originals(self):
        edit = self.execute()
        revert = self.adapter.revert
        def missing(*args):
            result = revert(*args)
            self.adapter.graphical_actual = deepcopy(self.adapter.graphical_actual)
            self.adapter.graphical_actual['complete'] = False
            return result
        self.adapter.revert = missing
        inverse = self.log.revert(edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'outcome_unknown')
        self.assertFalse(self.adapter.released)


if __name__ == '__main__':
    unittest.main()
