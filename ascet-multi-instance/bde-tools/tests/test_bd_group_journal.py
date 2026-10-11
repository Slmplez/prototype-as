from contextlib import contextmanager, nullcontext
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from bd_edit_journal import clone, fingerprint, JournalError, NativePreconditionConflict
from bd_group_journal import GroupJournal, validate_group
from bd_structure_journal import StructureJournal


class Adapter:
    def __init__(self):
        self.state = {'generation': 1, 'entries': [{'ref': 'n1', 'kind': 'node', 'literal': '1', 'pins': []}]}
        self.calls = []
        self.retained = {}
        self.fail_apply = False
        self.mismatch_apply = False
        self.mismatch_revert = False
        self.conflict_apply = False
        self.inverse_guard = True
        self.on_revert = None

    def observe(self, domain, targets):
        return clone(self.state)

    def validate(self, domain, operation, arguments):
        return clone(self.state)

    def prepare(self, domain, token, operation, arguments):
        self.retained[token] = {'before': clone(self.state), 'text': arguments[2]}
        return clone(self.state)

    def apply(self, token):
        if self.conflict_apply:
            raise NativePreconditionConflict('external change after all-resource preflight')
        self.calls.append('apply')
        self.state['entries'][0]['literal'] = self.retained[token]['text']
        if self.mismatch_apply:self.state['entries'][0]['literal'] += '?'
        self.retained[token]['after'] = clone(self.state)
        if self.fail_apply:
            raise TimeoutError('reply lost after setter')
        return clone(self.state)

    def validate_revert(self, domain, token):
        if not self.inverse_guard or self.state != self.retained[token]['after']:
            raise NativePreconditionConflict('raw inverse identity changed')
        return clone(self.state)

    def revert(self, domain, token):
        self.validate_revert(domain, token)
        self.calls.append('revert')
        self.state = clone(self.retained[token]['before'])
        if self.mismatch_revert:self.state['entries'][0]['literal'] += '?'
        if self.on_revert:
            self.on_revert()
        return clone(self.state)


class GroupJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        root = Path(self.temp.name)
        self.local = StructureJournal(root / 'edits')
        self.log = GroupJournal(root / 'groups', self.local)
        self.adapters = [Adapter(), Adapter(), Adapter()]
        self.order = []
        self.request = {'session': 'test', 'request_id': 'group', 'steps': []}
        for index, adapter in enumerate(self.adapters):
            request = {'domain': {'session': 'test', 'database': 'db', 'oid': str(index), 'process_epoch': 'epoch'},
                'request_id': 'group-step-' + str(index), 'component': 'BDE_Tool_Experiments\\Trial_' + str(index),
                'diagram': 'Main', 'operation': 'set_literal', 'arguments': [['n1'], 'n1', '2'],
                'expect': fingerprint(adapter.state)}
            self.request['steps'].append({'snapshot': 's_' + str(index) * 32, 'request': request})

    @contextmanager
    def factory(self, request):
        index = int(request['domain']['oid'])
        self.order.append(index)
        yield self.adapters[index]

    def execute(self):
        return self.log.execute(self.request, self.factory, nullcontext)

    def test_actual_resource_diff_idempotency_and_reverse_order_restore(self):
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'completed')
        self.assertFalse(receipt['atomic'])
        self.assertEqual(self.execute(), receipt)
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply']] * 3)
        delta = self.log.diff(receipt['change_id'])['resource_differences']
        self.assertEqual([row['differences'][0]['after']['literal'] for row in delta], ['2'] * 3)
        before = len(self.order)
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual(self.order[before:], [2, 1, 0, 2, 1, 0])
        self.assertEqual(self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext), inverse)
        self.assertEqual([adapter.state['entries'][0]['literal'] for adapter in self.adapters], ['1'] * 3)

    def test_last_preflight_conflict_prevents_every_setter(self):
        self.adapters[2].state['entries'][0]['literal'] = 'other'
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'rejected')
        self.assertFalse(receipt['setter_called'])
        self.assertEqual([adapter.calls for adapter in self.adapters], [[], [], []])

    def test_first_observed_mismatch_is_partial_and_recoverable(self):
        self.adapters[0].mismatch_apply = True
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'partial')
        self.assertEqual(receipt['steps'][0]['receipt']['status'], 'postcondition_mismatch')
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], [], []])
        self.assertEqual(self.log.diff(receipt['change_id'])['resource_differences'][0]['differences'][0]['after']['literal'], '2?')
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual(self.adapters[0].state['entries'][0]['literal'], '1')

    def test_first_inverse_mismatch_is_partial_and_stops_next_resource(self):
        receipt = self.execute()
        self.adapters[2].mismatch_revert = True
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'partial')
        self.assertEqual(inverse['steps'][0]['receipt']['status'], 'restore_mismatch')
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], ['apply'], ['apply', 'revert']])

    def test_native_inverse_identity_preflight_prevents_first_restoration(self):
        receipt = self.execute()
        self.adapters[0].inverse_guard = False
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply']] * 3)

    def test_external_change_between_restorations_returns_partial(self):
        receipt = self.execute()
        self.adapters[2].on_revert = lambda: self.adapters[1].state['entries'][0].update(literal='external')
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'partial')
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], ['apply'], ['apply', 'revert']])
        self.assertEqual(self.adapters[1].state['entries'][0]['literal'], 'external')

    def test_second_setter_reply_lost_stops_third_step_and_is_never_replayed(self):
        self.adapters[1].fail_apply = True
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual(self.execute(), receipt)
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], ['apply'], []])
        with self.assertRaises(JournalError):
            self.log.recovery_steps(receipt['change_id'])
        self.assertEqual(len(self.log.diff(receipt['change_id'])['resource_differences']), 2)

    def test_confirmed_second_rejection_allows_compensating_completed_first(self):
        self.adapters[1].conflict_apply = True
        receipt = self.execute()
        self.assertEqual(receipt['status'], 'partial')
        inverse = self.log.revert(receipt['change_id'], 'inverse', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply', 'revert'], [], []])

    def test_group_outcome_disk_failure_retains_started_and_local_actual_patch(self):
        append = self.log._append
        def fail_step(path, events, kind, payload):
            if kind in ('step_finished', 'finished'):
                raise OSError('journal disk unavailable')
            return append(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=fail_step):
            receipt = self.execute()
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual(len(receipt['unknown_steps']), 1)
        self.assertEqual([adapter.calls for adapter in self.adapters], [['apply'], [], []])
        self.assertEqual(self.log.diff(receipt['change_id'])['resource_differences'][0]['status'], 'applied_observed')
        self.assertEqual(self.execute(), receipt)

    def test_preflight_record_disk_failure_occurs_before_any_setter(self):
        append = self.log._append
        def fail_preflight(path, events, kind, payload):
            if kind == 'preflight':
                raise OSError('disk full')
            return append(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=fail_preflight):
            self.assertEqual(self.execute()['status'], 'rejected')
        self.assertEqual([adapter.calls for adapter in self.adapters], [[], [], []])

    def test_request_reuse_with_different_steps_and_duplicate_resources_rejected(self):
        self.execute()
        self.request['steps'][0]['request']['arguments'][2] = '3'
        with self.assertRaisesRegex(JournalError, 'different content'):
            self.execute()
        self.request['steps'][1]['request']['domain']['oid'] = '0'
        with self.assertRaisesRegex(JournalError, 'One patch per component'):
            validate_group(self.request)

    def test_other_session_database_or_process_cannot_be_grouped(self):
        for field in ('session', 'database', 'process_epoch'):
            request = clone(self.request)
            request['steps'][1]['request']['domain'][field] = 'other'
            with self.assertRaises(JournalError):
                validate_group(request)


if __name__ == '__main__':
    unittest.main()
