"""Real WAL failure/no-replay tests with an offline source adapter; not live proof."""
from copy import deepcopy
import tempfile
import unittest

from bd_edit_journal import JournalError
from bd_source_compensation import advance, transaction_id
from bd_structure_journal import StructureJournal
from test_bd_managed_inverse import field_proof
from test_bd_source_inverse_oracle import source_graph

ROOT_TOKEN = 'edit_' + 'a' * 64
FAILED = 'edit_' + 'b' * 64
DOMAIN = {'session': 's', 'database': 'db', 'oid': 'owner', 'process_epoch': 'epoch'}
REQUEST = {'domain': DOMAIN, 'operation': 'set_literal'}
MARKER = {'domain': DOMAIN, 'command': 'revert', 'native_token': ROOT_TOKEN, 'automatic_retry': False}


def alias_graph(shared):
    graph = source_graph()
    graph['nodes'][3]['items'].append(['ref', 8])
    graph['nodes'][5]['items'].append(['ref', 8 if shared else 10])
    for first in (8,) if shared else (8, 10):
        graph['nodes'].extend([
            {'id': first, 'native_class': 'RBAreaStyle', 'kind': 'fields', 'fields': [['color', ['ref', first + 1]]]},
            {'id': first + 1, 'native_class': 'CgRGBColor', 'kind': 'fields',
             'fields': [[name, ['integer', 'SmallInteger', '0']] for name in ('red', 'green', 'blue')]}])
    graph['reference_count'] = 17 if shared else 21
    return graph


class SourceAdapter:
    def __init__(self, log, events):
        self.log, self.events = log, events
        self.compensation = None
        self.applies = self.prepares = 0
        self.lost_reply = False
        self.partial = False

    def source_recovery(self, domain, token, action, transaction, failed, sequence=0):
        if action == 'prepare':
            assert self.events[-1]['kind'] == 'source_compensation_intent'
            self.prepares += 1
            self.compensation = {'profile': 'native_field_source_compensation_v1', 'transaction_id': transaction,
                'native_token': token, 'failed_change_id': failed, 'execution_sequence': sequence, 'direction': 'undo',
                'state': 'prepared', 'source_before': alias_graph(True), 'expected_source': alias_graph(False),
                'source_root_preserved': True, 'native_desired_verified': True, 'source_desired_verified': False,
                'progress': {'state': 'prepared', 'direction': 'undo', 'cell_count': 1,
                             'completed_cells': 0, 'completed_primitives': 0}}
        elif action == 'apply':
            assert self.events[-1]['kind'] == 'source_compensation_started'
            assert self.compensation['state'] == 'prepared'
            self.applies += 1
            self.compensation.update(state='started' if self.partial else 'applied', source_after=alias_graph(False),
                source_desired_verified=not self.partial)
            self.compensation['progress'].update(state=self.compensation['state'], completed_cells=1, completed_primitives=1)
            if self.lost_reply:
                self.lost_reply = False
                raise TimeoutError('Apply completed; exact reply hidden')
        terminal = self.compensation is not None and self.compensation['state'] == 'applied'
        field = field_proof(ROOT_TOKEN, 'undo', 2)
        if self.compensation is None:
            field['source_patch'] = None
            field['source_root_preserved'] = False
        else:
            field['source_patch'] = deepcopy(self.compensation['progress'])
            field['source_transaction_id'] = transaction
        if not terminal:
            field.update(phase='field_store_normalization', terminal_verified=False,
                         serialized_source_verified=False, native_matches_terminal=False, source_matches_terminal=False)
        return {'profile': 'native_field_source_recovery_v1', 'native_token': token,
            'native_state': 'reverted' if terminal else 'revert_started', 'eligible': self.compensation is None,
            'field_execution': field, 'compensation': deepcopy(self.compensation), 'model_setters_called': 0, 'store_called': False}


class SourceRecoveryTests(unittest.TestCase):
    def setup(self):
        directory = tempfile.TemporaryDirectory(); self.addCleanup(directory.cleanup)
        log = StructureJournal(directory.name)
        path = log._path(FAILED); path.mkdir()
        events = []
        for kind, value in (('intent', {'domain': DOMAIN, 'reverts': ROOT_TOKEN}),
                            ('prepared', {'before': {'entries': []}}), ('started', {'native_token': ROOT_TOKEN})):
            log._append(path, events, kind, value)
        adapter = SourceAdapter(log, events)
        return log, events, adapter

    def run_recovery(self, log, events, adapter, **kwargs):
        return advance(log, FAILED, events, REQUEST, ROOT_TOKEN, kwargs.pop('marker', MARKER), adapter,
                       reconcile=kwargs.pop('reconcile', True))

    def test_read_only_status_does_not_prepare_write_or_append(self):
        log, events, adapter = self.setup()
        result = self.run_recovery(log, events, adapter, reconcile=False)
        self.assertFalse(result['reconciled'])
        self.assertEqual(len(events), 3)
        self.assertEqual((adapter.prepares, adapter.applies), (0, 0))

    def test_success_persists_source_actual_and_requires_fresh_terminal_before_ack(self):
        log, events, adapter = self.setup()
        result = self.run_recovery(log, events, adapter)
        self.assertTrue(result['requires_fresh_terminal'])
        self.assertEqual(adapter.applies, 1)
        self.assertEqual(log.receipt(FAILED, events)['status'], 'outcome_unknown')
        self.assertEqual(log.read(FAILED), events)
        observed = next(e['payload'] for e in events if e['kind'] == 'source_compensation_observed')
        self.assertEqual(observed['compensation']['progress']['completed_primitives'], 1)
        self.assertEqual(observed['field_execution']['source_transaction_id'], transaction_id(DOMAIN, ROOT_TOKEN, FAILED))

    def test_repeated_reconcile_classifies_complete_outcome_without_redispatch(self):
        log, events, adapter = self.setup()
        first = self.run_recovery(log, events, adapter)
        count = len(events)
        self.assertEqual(self.run_recovery(log, events, adapter), first)
        self.assertEqual((adapter.prepares, adapter.applies, len(events)), (1, 1, count))

    def test_intent_or_started_persistence_failure_prevents_live_apply(self):
        for boundary in ('source_compensation_intent', 'source_compensation_started'):
            log, events, adapter = self.setup()
            append = log._append
            def fail(path, target, kind, payload):
                if kind == boundary:
                    raise OSError('Injected WAL failure')
                return append(path, target, kind, payload)
            log._append = fail
            with self.subTest(boundary=boundary), self.assertRaises(OSError):
                self.run_recovery(log, events, adapter)
            self.assertEqual(adapter.applies, 0)

    def test_observed_disk_failure_recovers_without_second_apply(self):
        log, events, adapter = self.setup()
        append = log._append
        def fail(path, target, kind, payload):
            if kind == 'source_compensation_observed':
                raise OSError('After-write WAL failure')
            return append(path, target, kind, payload)
        log._append = fail
        with self.assertRaises(OSError):
            self.run_recovery(log, events, adapter)
        self.assertEqual(adapter.applies, 1)
        log._append = append
        self.assertTrue(self.run_recovery(log, events, adapter)['requires_fresh_terminal'])
        self.assertEqual(adapter.applies, 1)

    def test_lost_completed_reply_is_classified_without_second_apply(self):
        log, events, adapter = self.setup(); adapter.lost_reply = True
        with self.assertRaises(TimeoutError):
            self.run_recovery(log, events, adapter)
        self.assertTrue(self.run_recovery(log, events, adapter)['requires_fresh_terminal'])
        self.assertEqual(adapter.applies, 1)

    def test_partial_or_unverified_sharing_never_finishes_or_replays(self):
        log, events, adapter = self.setup(); adapter.partial = True
        for _ in range(2):
            with self.assertRaises((JournalError, ValueError)):
                self.run_recovery(log, events, adapter)
        self.assertEqual(adapter.applies, 1)
        self.assertFalse(any(e['kind'] == 'source_compensation_finished' for e in events))

    def test_wrong_pending_owner_refuses_before_preparation(self):
        log, events, adapter = self.setup()
        with self.assertRaises(JournalError):
            self.run_recovery(log, events, adapter, marker={**MARKER, 'native_token': FAILED})
        self.assertEqual((adapter.prepares, adapter.applies), (0, 0))


if __name__ == '__main__':
    unittest.main()
