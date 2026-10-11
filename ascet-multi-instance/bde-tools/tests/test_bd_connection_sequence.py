from contextlib import contextmanager, nullcontext
from pathlib import Path
import tempfile
import unittest

from bd_edit_journal import clone, fingerprint, JournalError, NativePreconditionConflict
from bd_connection_sequence import preflight_inverse, resolved_patch, validate_baselines
from bd_structural_tools import select
from bd_structure_journal import StructureJournal
from bd_group_journal import GroupJournal


class Adapter:
    def __init__(self, state):
        self.state = clone(state)
        self.tokens = {}
        self.guarded = []
        self.calls = []
        self.fail_apply = False

    def observe(self, domain, targets):
        return select(self.state, targets)

    def prepare(self, domain, token, op, args):
        self.tokens[token] = {'args': clone(args), 'before': self.observe(domain, args[0])}
        return self.observe(domain, args[0])

    def validate(self, domain, op, args):
        return self.observe(domain, args[0])

    def apply(self, token):
        args = self.tokens[token]['args']
        self.calls.append('apply')
        self.state['entries'].append({'ref': 'e' + str(len(self.tokens)), 'kind': 'edge',
                                     'source': args[1], 'target': args[2], 'type': 2, 'route': [[0, 0], [10, 0]]})
        self.state['entries'].sort(key=lambda row: row['ref'])
        self.state['lookup_edges'] += 1
        result = self.observe(None, args[0])
        self.tokens[token]['after'] = clone(result)
        self.tokens[token]['edge'] = 'e' + str(len(self.tokens))
        if self.fail_apply:
            raise TimeoutError('reply lost after actual connection addition')
        return result

    def validate_connection_group(self, domain, tokens):
        self.guarded.append(tokens)

    def revert(self, domain, token):
        record = self.tokens[token]
        if self.observe(domain, record['args'][0]) != record['after']:
            raise NativePreconditionConflict('Immediate inverse conflict')
        self.calls.append('revert')
        self.state['entries'] = [row for row in self.state['entries'] if row['ref'] != record['edge']]
        self.state['lookup_edges'] -= 1
        return self.observe(domain, record['args'][0])


class ConnectionSequenceTests(unittest.TestCase):
    def setUp(self):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.local = StructureJournal(Path(temp.name) / 'edits')
        self.group = GroupJournal(Path(temp.name) / 'groups', self.local)
        self.baseline = {'diagram': 'Main', 'generation': 1, 'targets': [], 'lookup_nodes': 3, 'lookup_edges': 0, 'entries': [
            {'ref': 'n1', 'kind': 'node', 'pins': ['p1']},
            {'ref': 'n2', 'kind': 'node', 'pins': ['p2', 'p3']},
            {'ref': 'n9', 'kind': 'node', 'literal': 'external', 'pins': []},
            {'ref': 'p1', 'kind': 'pin', 'owner': 'n1', 'input': False, 'output': True},
            {'ref': 'p2', 'kind': 'pin', 'owner': 'n2', 'input': True, 'output': False},
            {'ref': 'p3', 'kind': 'pin', 'owner': 'n2', 'input': True, 'output': False}]}
        self.adapter = Adapter(self.baseline)
        domain = {'session': 'test', 'database': 'db', 'oid': 'owner', 'process_epoch': 'epoch'}
        self.request = {'session': 'test', 'request_id': 'sequence', 'mode': 'connection_sequence', 'steps': []}
        for index, target in enumerate(('p2', 'p3')):
            args = [['p1', target], 'p1', target]
            patch = {'domain': domain, 'request_id': str(index), 'component': 'BDE_Tool_Experiments\\Trial_Sequence',
                     'diagram': 'Main', 'operation': 'connect_data', 'arguments': args,
                     'expect': fingerprint(select(self.baseline, args[0]))}
            self.request['steps'].append({'snapshot': 's_' + 'a' * 32, 'request': patch, 'baseline': clone(self.baseline)})
        self.completed = []
        self.steps = []

    def execute(self):
        validate_baselines(self.request)
        for index in range(2):
            patch = resolved_patch(self.request, index, self.completed, self.local)
            receipt = self.local.execute(patch, self.adapter, nullcontext)
            self.assertEqual(receipt['status'], 'applied_observed')
            self.completed.append({'index': index, 'receipt': receipt})
            events = self.local.read(receipt['change_id'])
            after = next(event['payload']['after'] for event in events if event['kind'] == 'observed')
            self.steps.insert(0, (index, receipt['change_id'], patch, after))

    @contextmanager
    def factory(self, patch):
        yield self.adapter

    def test_fan_out_updates_expected_closure_from_actual_prior_patch(self):
        self.execute()
        self.assertNotEqual(self.steps[0][2]['expect'], self.request['steps'][1]['request']['expect'])
        self.assertEqual(preflight_inverse(self.steps, self.factory, self.local), self.steps)
        self.assertEqual(len(self.adapter.guarded[0]), 2)

    def test_later_external_route_change_blocks_before_restoration(self):
        self.execute()
        next(row for row in self.adapter.state['entries'] if row['ref'] == 'e1')['route'] = [[0, 0], [20, 0]]
        with self.assertRaisesRegex(JournalError, 'conflicts before any restoration'):
            preflight_inverse(self.steps, self.factory, self.local)

    def test_unrelated_component_content_is_preserved_and_not_a_false_conflict(self):
        self.execute()
        unrelated = next(row for row in self.adapter.state['entries'] if row['ref'] == 'n9')
        unrelated['literal'] = 'changed outside the patch'
        preflight_inverse(self.steps, self.factory, self.local)
        self.assertEqual(unrelated['literal'], 'changed outside the patch')

    def test_duplicate_input_and_mixed_baselines_are_rejected(self):
        duplicate = clone(self.request)
        duplicate['steps'][1] = clone(duplicate['steps'][0])
        with self.assertRaisesRegex(JournalError, 'same input twice'):
            validate_baselines(duplicate)
        mixed = clone(self.request)
        mixed['steps'][1]['baseline']['generation'] = 2
        with self.assertRaisesRegex(JournalError, 'same immutable baseline'):
            validate_baselines(mixed)

    def test_changed_prior_actual_patch_cannot_be_used_to_predict_dependencies(self):
        self.execute()
        token = self.completed[0]['receipt']['change_id']
        events = self.local.read(token)
        self.local._append(self.local._path(token), events, 'finished', {'status': 'postcondition_mismatch'})
        with self.assertRaises(JournalError):
            resolved_patch(self.request, 1, self.completed, self.local)

    def test_actual_group_execute_idempotency_dependency_inverse_and_no_extra_apply(self):
        receipt = self.group.execute(self.request, self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'completed')
        self.assertEqual(self.group.execute(self.request, self.factory, nullcontext), receipt)
        self.assertEqual(self.adapter.calls, ['apply', 'apply'])
        inverse = self.group.revert(receipt['change_id'], 'undo', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual(self.adapter.state, self.baseline)
        self.assertEqual(self.adapter.calls, ['apply', 'apply', 'revert', 'revert'])

    def test_group_conflict_on_first_edge_prevents_every_inverse(self):
        receipt = self.group.execute(self.request, self.factory, nullcontext)
        next(row for row in self.adapter.state['entries'] if row['ref'] == 'e1')['type'] = 99
        inverse = self.group.revert(receipt['change_id'], 'conflict', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertEqual(self.adapter.calls, ['apply', 'apply'])

    def test_unknown_connection_is_not_replayed_or_used_for_next_dependency(self):
        self.adapter.fail_apply = True
        receipt = self.group.execute(self.request, self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual(self.group.execute(self.request, self.factory, nullcontext), receipt)
        self.assertEqual(self.adapter.calls, ['apply'])


if __name__ == '__main__':
    unittest.main()
