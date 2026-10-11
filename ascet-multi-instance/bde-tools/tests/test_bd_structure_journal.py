"""Offline fault tests, not native validation."""
from contextlib import nullcontext
from pathlib import Path
import tempfile
import unittest
from bd_edit_journal import clone, fingerprint, JournalError
from bd_structure_journal import StructureJournal, postcondition


class Adapter:
    def __init__(self):
        self.state = {'generation': 1, 'entries': [{'ref': 't1', 'kind': 'transition', 'priority': 1}]}
        self.calls = 0
        self.fail = False
        self.wrong = False

    def observe(self, domain, targets):
        return clone(self.state)

    def prepare(self, domain, token, operation, arguments):
        self.before = clone(self.state)
        return clone(self.state)

    def apply(self, token):
        self.calls += 1
        self.state['entries'][0]['priority'] = 3 if self.wrong else 2
        if self.fail:
            raise TimeoutError('receipt lost after setter')
        return clone(self.state)

    def revert(self, domain, token):
        self.calls += 1
        self.state = clone(self.before)
        return clone(self.state)


class EnumAdapter(Adapter):
    def __init__(self):
        super().__init__()
        self.state = {'generation': 1, 'entries': []}
        self.effect = {'kind': 'enumeration_definition', 'path': 'BDE_Tool_Experiments\\EvalMode',
                       'oid': 'enum_oid', 'before': None, 'after': {'items': ['Off', 'On']}}
        self.bad_inverse = False
        self.released = False

    def apply(self, token):
        self.calls += 1
        self.state['entries'] = [
            {'kind': 'model', 'ref': 'm_123', 'name': 'mode', 'model_type': 'enum', 'native_class': 'EtasAPIModelScalar',
             'enum_values': ['Off', 'On'], 'definition': {'path': self.effect['path'], 'oid': 'enum_oid'}},
            {'kind': 'node', 'ref': 'n1', 'anchor': [1, 2], 'pins': [], 'model_ref': 'm_123'}]
        self.library_effects = [clone(self.effect)]
        return clone(self.state)

    def revert(self, domain, token):
        self.calls += 1
        self.state = clone(self.before)
        self.library_effects = [] if self.bad_inverse else [{**clone(self.effect), 'before': self.effect['after'], 'after': None}]
        return clone(self.state)

    def release(self, domain, token):
        self.released = True
        return {'released': True}


class StructuralJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.log = StructureJournal(Path(self.temp.name))
        self.adapter = Adapter()
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
                        'request_id': 'r', 'component': 'BDE_Tool_Experiments\\Trial_test', 'diagram': 'Main',
                        'operation': 'set_transition_priority', 'arguments': [['t1'], 't1', 2],
                        'expect': fingerprint(self.adapter.state)}

    def execute(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_actual_patch_replay_and_inverse(self):
        edit = self.execute()
        self.assertTrue(edit['requested_effect_verified'])
        self.assertEqual(edit['differences'][0]['after']['priority'], 2)
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 1)
        inverse = self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')

    def enum_request(self):
        self.adapter = EnumAdapter()
        self.request.update(operation='create_block', arguments=[[], 'enumeration', 'mode', 1, 2, 'NEWENUM|EvalMode|Off,On'],
                            expect=fingerprint(self.adapter.state))

    def test_enum_library_diff_survives_replay_and_is_inverted(self):
        self.enum_request()
        edit = self.execute()
        self.assertEqual(edit['status'], 'applied_observed')
        self.assertEqual(edit['library_effects'], [self.adapter.effect])
        self.assertEqual(self.log.diff(edit['change_id'])['library_effects'], edit['library_effects'])
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 1)
        inverse = self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')
        self.assertEqual(inverse['library_effects'][0]['before'], self.adapter.effect['after'])
        self.assertIsNone(inverse['library_effects'][0]['after'])
        self.assertTrue(self.adapter.released)

    def test_restored_graph_without_type_removal_evidence_retains_recovery(self):
        self.enum_request()
        edit = self.execute()
        self.adapter.bad_inverse = True
        inverse = self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(self.adapter.state, self.adapter.before)
        self.assertEqual(inverse['status'], 'restore_mismatch')
        self.assertFalse(self.adapter.released)

    def test_stale_before_and_revert_conflict(self):
        self.adapter.state['generation'] = 2
        self.assertEqual(self.execute()['status'], 'conflict')
        self.assertEqual(self.adapter.calls, 0)
        self.request['request_id'] = 'new'
        self.request['expect'] = fingerprint(self.adapter.state)
        edit = self.execute()
        self.adapter.state['entries'][0]['priority'] = 5
        self.assertEqual(self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)['status'], 'conflict')
        self.assertEqual(self.adapter.calls, 1)

    def test_unknown_never_replays(self):
        self.adapter.fail = True
        edit = self.execute()
        self.assertEqual(edit['status'], 'outcome_unknown')
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 1)
        with self.assertRaises(JournalError):
            self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)

    def test_wrong_after_is_not_success_and_can_be_recovered(self):
        self.adapter.wrong = True
        edit = self.execute()
        self.assertEqual(edit['status'], 'postcondition_mismatch')
        self.assertEqual(edit['differences'][0]['after']['priority'], 3)
        self.assertEqual(self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)['status'], 'verified_local')

    def test_corrupt_journal_and_changed_intent_are_rejected(self):
        edit = self.execute()
        self.request['arguments'][-1] = 4
        with self.assertRaises(JournalError):
            self.execute()
        path = self.log._path(edit['change_id'])/'000000.json'
        path.write_text('{}', encoding='utf-8')
        with self.assertRaises(JournalError):
            self.log.diff(edit['change_id'])

    def test_invalid_domain_never_opens_adapter(self):
        self.request['domain'].pop('oid')
        with self.assertRaises(JournalError):
            self.execute()
        self.assertEqual(self.adapter.calls, 0)

    def test_delete_must_preserve_boundary_pin(self):
        before = {'entries': [{'ref': 'n1', 'kind': 'node', 'pins': ['p1']},
                             {'ref': 'p1', 'kind': 'pin'}, {'ref': 'p2', 'kind': 'pin'},
                             {'ref': 'e1', 'kind': 'edge', 'source': 'p1', 'target': 'p2'}]}
        request = {'operation': 'delete_node', 'arguments': [[], 'n1']}
        self.assertTrue(postcondition(request, before, {'entries': [before['entries'][2]]}))
        self.assertFalse(postcondition(request, before, {'entries': []}))
        self.assertFalse(postcondition(request, before, {'entries': [before['entries'][2], {'ref': 'n9', 'kind': 'node'}]}))

    def test_data_operations_reject_unrequested_structural_damage(self):
        pins = [{'ref': ref, 'kind': 'pin'} for ref in ('p1', 'p2', 'p3')]
        edge = {'ref': 'e1', 'kind': 'edge', 'source': 'p1', 'target': 'p2', 'type': 2}
        before = {'entries': pins + [edge]}
        disconnect = {'operation': 'disconnect_data', 'arguments': [[], 'e1']}
        self.assertTrue(postcondition(disconnect, before, {'entries': pins}))
        self.assertFalse(postcondition(disconnect, before, {'entries': pins[:-1]}))
        rewire = {'operation': 'rewire_data', 'arguments': [[], 'e1', 'p3']}
        changed = {**edge, 'source': 'p3'}
        self.assertTrue(postcondition(rewire, before, {'entries': pins + [changed]}))
        self.assertFalse(postcondition(rewire, before, {'entries': pins[1:] + [changed]}))
        self.assertFalse(postcondition(rewire, before, {'entries': pins + [changed, {**edge, 'ref': 'e2'}]}))

    def test_connect_preserves_existing_rows_and_adds_only_one_edge(self):
        pins = [{'ref': ref, 'kind': 'pin'} for ref in ('p1', 'p2')]
        request = {'operation': 'connect_data', 'arguments': [[], 'p1', 'p2']}
        edge = {'ref': 'e1', 'kind': 'edge', 'source': 'p1', 'target': 'p2'}
        before = {'entries': pins}
        self.assertTrue(postcondition(request, before, {'entries': pins + [edge]}))
        self.assertFalse(postcondition(request, before, {'entries': [pins[0], edge]}))
        self.assertFalse(postcondition(request, before, {'entries': pins + [edge, {'ref': 'n9', 'kind': 'node'}]}))


if __name__ == '__main__':
    unittest.main()
