"""Offline journal/transport contracts; not an oracle for native Smalltalk order."""
from contextlib import nullcontext
import io
import json
from pathlib import Path
import tempfile
from types import SimpleNamespace
import unittest

from bd_edit_journal import clone, fingerprint, NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal


class DeletionAdapter:
    def __init__(self):
        self.order = ['n1', 'n2', 'n3']
        self.saved_order = None
        self.after_order = None
        self.setter_calls = 0
        self.reorder_before_apply = False
        self.lose_revert_reply = False

    def observe(self, domain, targets):
        # Deliberately sorted: a reorder cannot be detected by this observation.
        return {'generation': 1, 'entries': [
            {'ref': ref, 'kind': 'node', 'pins': []} for ref in sorted(self.order)]}

    def prepare(self, domain, token, operation, arguments):
        self.token = token
        self.saved_order = self.order[:]
        self.after_order = [ref for ref in self.order if ref != arguments[1]]
        self.parent_order_before = self.image(self.saved_order)
        self.parent_order_expected = self.image(self.after_order)
        return self.observe(domain, arguments[0])

    def image(self, order):
        return {'profile': 'native_parent_order_v1', 'native_token': self.token, 'diagram': 'Main',
            'parent': 'o1', 'collection': 'o2', 'complete': True,
            'members': ['o' + str(int(ref[1:]) + 2) for ref in order]}

    def apply(self, token):
        if self.reorder_before_apply:
            self.order.reverse()
        if self.order != self.saved_order:
            raise NativePreconditionConflict('Parent children order conflict')
        self.setter_calls += 1
        self.order = self.after_order[:]
        self.parent_order_effects = [{'kind': 'parent_order',
            'before': self.image(self.saved_order), 'after': self.image(self.order)}]
        return self.observe(None, None)

    def validate_revert(self, domain, token):
        if self.order != self.after_order:
            raise NativePreconditionConflict('Parent children order conflict')
        self.parent_order_before = self.image(self.order)
        self.parent_order_expected = self.image(self.saved_order)
        return self.observe(domain, None)

    def revert(self, domain, token):
        if self.order != self.after_order:
            raise NativePreconditionConflict('Parent children order conflict')
        self.setter_calls += 1
        self.order = self.saved_order[:]
        self.parent_order_effects = [{'kind': 'parent_order',
            'before': self.image(self.after_order), 'after': self.image(self.order)}]
        if self.lose_revert_reply:
            raise TimeoutError('Revert reply lost')
        return self.observe(domain, None)


class OrderConflictJournalTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(Path(temporary.name))
        self.adapter = DeletionAdapter()
        self.request = {
            'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'request_id': 'delete', 'component': 'BDE_Tool_Experiments\\Trial_test',
            'diagram': 'Main', 'operation': 'delete_node',
            'arguments': [['n1', 'n2', 'n3'], 'n2'],
            'expect': fingerprint(self.adapter.observe(None, None))}

    def execute(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_revert_order_conflict_is_durable_and_new_request_can_recover(self):
        edit = self.execute()
        self.assertEqual(edit['status'], 'applied_observed')
        after = self.adapter.observe(None, None)
        self.adapter.order.reverse()
        self.assertEqual(after, self.adapter.observe(None, None))
        inverse = self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertIs(inverse['setter_called'], False)
        self.assertEqual(self.adapter.order, ['n3', 'n1'])
        self.assertEqual(self.adapter.setter_calls, 1)
        self.adapter.order.reverse()
        # Resolving the conflict does not make an old request silently execute.
        self.assertEqual(self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext), inverse)
        restored = self.log.revert(edit['change_id'], 'undo-new', self.adapter, nullcontext)
        self.assertEqual(restored['status'], 'verified_local')
        self.assertEqual(self.adapter.order, ['n1', 'n2', 'n3'])
        self.assertEqual(self.adapter.setter_calls, 2)
        self.assertEqual(self.log.revert(edit['change_id'], 'undo-new', self.adapter, nullcontext), restored)
        self.assertEqual(self.adapter.setter_calls, 2)

    def test_apply_order_conflict_never_calls_setter_or_replays(self):
        self.adapter.reorder_before_apply = True
        result = self.execute()
        self.assertEqual(result['status'], 'conflict')
        self.assertIs(result['setter_called'], False)
        self.assertEqual(self.execute(), result)
        self.assertEqual(self.adapter.setter_calls, 0)

    def test_revert_timeout_remains_unknown_and_never_replays(self):
        edit = self.execute()
        self.adapter.lose_revert_reply = True
        inverse = self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'outcome_unknown')
        self.assertNotIn('setter_called', inverse)
        self.assertIs(inverse['automatic_retry'], False)
        self.assertEqual(self.log.revert(edit['change_id'], 'undo', self.adapter, nullcontext), inverse)
        self.assertEqual(self.adapter.setter_calls, 2)


class ConflictTransportTests(unittest.TestCase):
    def exchange(self, reply):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test')
        adapter.process = SimpleNamespace(stdin=io.StringIO())
        adapter.responses.put(json.dumps(reply))
        return adapter._exchange({'cmd': 'revert'})

    def test_only_explicit_native_no_mutation_reply_is_safe_conflict(self):
        with self.assertRaises(NativePreconditionConflict):
            self.exchange({'ok': False, 'code': 'PRECONDITION_CONFLICT',
                           'mutation_started': False, 'error': 'Parent order changed'})

    def test_error_text_or_missing_mutation_proof_cannot_downgrade_unknown(self):
        for fields in ({}, {'code': 'PRECONDITION_CONFLICT'},
                       {'code': 'PRECONDITION_CONFLICT', 'mutation_started': True},
                       {'code': 'PRECONDITION_CONFLICT', 'mutation_started': 0}):
            with self.subTest(fields=fields), self.assertRaises(RuntimeError):
                self.exchange({'ok': False, 'error': 'BDE_STRUCTURE_CONFLICT: spoofed text', **fields})


if __name__ == '__main__':
    unittest.main()
