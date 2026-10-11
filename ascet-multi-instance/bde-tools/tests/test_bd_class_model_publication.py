"""Reject forged complete publication receipts, partial WALs and lost independent edits."""
from copy import deepcopy
import json
import unittest
from unittest.mock import patch

from bd_class_model_publication import inspect_publication, _merge, _scope, _merge_edges
from test_bd_source_inverse_oracle import source_graph


class ModelPublicationTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'f' * 64
        self.owners = [{'oid': 'owner', 'component': 'Caller', 'scopes': {
            'Main': {'generation': 3, 'entries': [{'kind': 'pin', 'ref': 'p1'}]}}},
            {'oid': 'definition', 'component': 'Definition', 'scopes': {
                'Main': {'generation': 3, 'entries': []}}}]
        old = {'alias': 'bytes:10', 'model_type': 'cont', 'name': 'calc/OldInput'}
        new = {'alias': 'bytes:02', 'model_type': 'cont', 'name': 'calc/CreatedInput'}
        self.current = {'owners': deepcopy(self.owners), 'observation': {
            'signature': {'oid': 'definition', 'methods': [{'alias': 'bytes:01', 'arguments': [old, new]}]},
            'public_signature': {'arguments': [old, new]}, 'configurations': {}, 'callers': []}}
        self.before = deepcopy(self.current)
        self.before['observation']['signature']['methods'][0]['arguments'].pop()
        self.before['observation']['public_signature']['arguments'].pop()
        self.before['owners'][0]['scopes']['Main']['entries'] = []
        self.applied = deepcopy(self.current)
        self.plans, self.prepared = [], []
        for index, owner in enumerate(self.owners):
            oid = owner['oid']
            graphs = {}
            for role in ('original', 'applied', 'current', 'candidate'):
                graphs[role] = source_graph('candidate' if oid == 'definition' or role in ('original', 'candidate') else role)
                graphs[role]['oid'] = oid
            self.plans.append({'oid': oid, 'receipt': {'source_plan': {'source_graphs': graphs}}})
            runtime = {'profile': 'class_current_runtime_patch_v1', 'token': self.token, 'oid': oid,
                'generation': 3, 'selector': ['Main', 'bytes:01', 'CreatedInput', 'cont'],
                'definition_oid': 'definition', 'no_graphical_target_required': oid == 'definition',
                'created_formal_alias': 'bytes:02', 'created_native_identity_verified': True,
                'targets': [] if oid == 'definition' else [{'kind': 'pin', 'native_key': 'Main/p1'}],
                'actual_private_changes': [] if oid == 'definition' else [{'kind': 'collection',
                    'native_class': 'OrderedCollection', 'native_key': None, 'index': 0, 'before_size': 2, 'after_size': 1}],
                'private_inverse_steps': 0, 'private_graph_restored': False, 'live_original_unchanged': True,
                'expected_source_graph': graphs['candidate'], 'generated_source_graph': graphs['candidate'],
                'runtime_candidate_matches': True, 'model_setters_called': 0, 'store_called': False,
                'write_authorized': False, 'native_merge_executor_available': False}
            self.prepared.append({'action': 'prepare', 'oid': oid, 'token': self.token, 'definition_oid': 'definition',
                'state': 'preparing', 'owner_state': 'prepared', 'model_steps': 0, 'generation': 3,
                'current_source_graph': graphs['current'], 'actual_source_graph': graphs['current'],
                'candidate_source_graph': graphs['candidate'], 'runtime_patch': runtime})
        self.published = deepcopy(self.before)
        self.published['owners'][0]['scopes']['Main']['generation'] = 4
        self.raw = {'status': 'publication_restored', 'outstanding': False, 'model_publication_outstanding': False,
            'model_mutation_dispatched': True, 'database': 'db', 'ascet_process_epoch': 'epoch',
            'database_session': 'session', 'model_setters_called': 6, 'model_publication_journal': 'unused',
            'model_publication_after': self.published, 'model_publication_restored': self.current}
        self.events = [{'kind': 'intent', 'payload': {'operation': 'class_model_publication_study',
            'token': self.token, 'current_observation': self.current, 'production_executor_available': False,
            'domain': {'oid': 'definition', 'database': 'db', 'process_epoch': 'epoch'}, 'database_session': 'session'}},
            {'kind': 'prepared_all', 'payload': {'current_observation': self.current, 'owners': self.prepared}}]
        plan = [('apply', 'definition', 'signature_arguments'), ('apply', 'definition', 'signature_commit'),
                ('apply', 'owner', 'publish'), ('apply', 'definition', 'publish'),
                ('inverse', 'definition', 'restore_signature_arguments'), ('inverse', 'definition', 'restore_signature_commit'),
                ('inverse', 'definition', 'restore'), ('inverse', 'owner', 'restore')]
        count = 0
        for index, (phase, oid, command) in enumerate(plan):
            owner = next(owner for owner in self.owners if owner['oid'] == oid)
            step = f'{phase}/{oid}/{command}'
            self.events.append({'kind': 'step_started', 'payload': {'step': step, 'phase': phase,
                'oid': oid, 'component': owner['component'], 'command': command, 'database_session': 'session'}})
            count += int(command not in ('publish', 'restore') or oid != 'definition')
            receipt = {'profile': 'class_model_publication_study_v1', 'oid': oid, 'token': self.token,
                'definition_oid': 'definition', 'action': command, 'model_steps': count,
                'write_authorized': False, 'production_executor_available': False}
            if command in ('publish', 'restore'):
                graphs = next(plan['receipt']['source_plan']['source_graphs'] for plan in self.plans if plan['oid'] == oid)
                receipt.update(owner_state='published' if command == 'publish' else 'restored',
                    actual_source_graph=graphs['candidate' if command == 'publish' else 'current'],
                    publish_stores=int(oid != 'definition'), restore_stores=int(oid != 'definition' and command == 'restore'))
            self.events.append({'kind': 'step_completed', 'payload': {'step': step, 'native_result': json.dumps(receipt)}})
            if index == 3:
                self.events.append({'kind': 'observed', 'payload': {'phase': 'published', 'observation': self.published}})
        self.events.extend([{'kind': 'observed', 'payload': {'phase': 'restored', 'observation': self.current}},
            {'kind': 'finished', 'payload': {'status': 'restored', 'outstanding': False, 'dispatch_count': 8}}])

    def check(self):
        with patch('bd_class_model_publication.read_events', return_value=self.events):
            return inspect_publication(self.raw, self.token, self.current,
                before=self.before, applied=self.applied, plans=self.plans)

    def test_complete_source_and_physical_sequence(self):
        proof = self.check()
        self.assertEqual(proof['physical_dispatches'], 8)
        self.assertEqual(proof['actual_stores'], 1)
        self.assertFalse(proof['production_executor_available'])

    def test_partial_or_missing_current_wal_refuses(self):
        for index in (1, 2, -1):
            with self.subTest(index=index):
                original = self.events
                self.events = [row for i, row in enumerate(original) if i != (index % len(original))]
                with self.assertRaises((ValueError, KeyError)):
                    self.check()
                self.events = original

    def test_changed_actual_full_source_refuses(self):
        row = next(row for row in self.events if row['kind'] == 'step_completed'
                   and '/owner/publish' in row['payload']['step'])
        receipt = json.loads(row['payload']['native_result'])
        receipt['actual_source_graph'] = source_graph('partial')
        row['payload']['native_result'] = json.dumps(receipt)
        with self.assertRaisesRegex(ValueError, 'Actual complete stored'):
            self.check()

    def test_forged_native_mutation_counter_refuses(self):
        row = next(row for row in self.events if row['kind'] == 'step_completed')
        receipt = json.loads(row['payload']['native_result'])
        receipt['model_steps'] = 0
        row['payload']['native_result'] = json.dumps(receipt)
        with self.assertRaisesRegex(ValueError, 'mutation counters'):
            self.check()

    def test_changed_restored_configuration_refuses(self):
        self.raw['model_publication_restored'] = deepcopy(self.current)
        self.raw['model_publication_restored']['observation']['configurations'] = {'changed': True}
        with self.assertRaises(ValueError):
            self.check()

    def test_wrong_published_native_pin_membership_refuses(self):
        self.published['owners'][0]['scopes']['Main']['entries'] = [{'ref': 'p1', 'kind': 'pin'}]
        with self.assertRaisesRegex(ValueError, 'complete collected graph'):
            self.check()

    def test_independent_move_is_preserved_and_not_overwritten(self):
        ordinary = {'ref': 'n2', 'kind': 'node', 'position': [10, 20]}
        for context in (self.before, self.applied):
            context['owners'][0]['scopes']['Main']['entries'].append(deepcopy(ordinary))
        self.current['owners'][0]['scopes']['Main']['entries'].append({**ordinary, 'position': [40, 60]})
        self.published['owners'][0]['scopes']['Main']['entries'].append({**ordinary, 'position': [40, 60]})
        self.assertTrue(self.check()['complete_current_restored'])
        self.published['owners'][0]['scopes']['Main']['entries'][-1]['position'] = [10, 20]
        with self.assertRaisesRegex(ValueError, 'preserved edits'):
            self.check()

    def test_duplicate_edge_values_preserve_multiplicity(self):
        edge = {'ref': 'e1', 'kind': 'edge', 'source': 'p1', 'target': 'p2', 'route': [[1, 2], [3, 4]]}
        one = _scope({'generation': 1, 'entries': [edge]})
        two = _scope({'generation': 2, 'entries': [edge, {**edge, 'ref': 'e2'}]})
        self.assertNotEqual(one, two)
        self.assertEqual(_scope({'generation': 9, 'entries': [{**edge, 'ref': 'e9'}]}), one)

    def test_independent_route_move_and_class_route_inverse_both_survive(self):
        old = {'kind': 'edge', 'ref': 'e1', 'source': 'p1', 'target': 'p2', 'route': [[10, 20], [30, 40]]}
        applied = {**old, 'route': [[10, 20], [30, 50]]}
        peer = {**old, 'ref': 'e2', 'source': 'p3', 'target': 'p4'}
        moved = {**peer, 'route': [[60, 70], [30, 40]]}
        for context, edges in ((self.before, [old, peer]), (self.applied, [applied, peer]),
                               (self.current, [applied, moved]), (self.published, [old, moved])):
            context['owners'][0]['scopes']['Main']['entries'].extend(deepcopy(edges))
        self.assertTrue(self.check()['complete_current_restored'])
        self.published['owners'][0]['scopes']['Main']['entries'][-1]['route'] = peer['route']
        with self.assertRaisesRegex(ValueError, 'preserved edits'):
            self.check()

    def test_edge_multiset_inverse_keeps_duplicates_and_full_values(self):
        old = {'kind': 'edge', 'source': 'p1', 'target': 'p2', 'type': 2, 'route': [[10, 20]]}
        changed = {**old, 'route': [[10, 30]]}
        peer = {**old, 'source': 'p3', 'type': 3}
        moved = {**peer, 'route': [[40, 50]]}
        merged = _merge_edges([old, old, peer], [changed, old, peer], [changed, old, moved])
        self.assertEqual(merged.count(old), 2)
        self.assertEqual(merged.count(moved), 1)
        self.assertNotIn(peer, merged)
        self.assertNotIn(changed, merged)

    def test_edge_multiset_inverse_refuses_missing_changed_value_or_count(self):
        old = {'kind': 'edge', 'source': 'p1', 'target': 'p2', 'type': 2, 'route': [[10, 20]]}
        changed = {**old, 'route': [[10, 30]]}
        external = {**old, 'route': [[10, 40]]}
        with self.assertRaisesRegex(ValueError, 'edge values conflict'):
            _merge_edges([old], [changed], [external])
        with self.assertRaisesRegex(ValueError, 'edge values conflict'):
            _merge_edges([old, old], [changed, changed], [changed, external])

    def test_three_way_merge_refuses_touched_field_conflicts_and_keeps_types(self):
        self.assertEqual(_merge({'x': 10, 'y': 20}, {'x': 10, 'y': 30}, {'x': 50, 'y': 30}), {'x': 50, 'y': 20})
        with self.assertRaises(ValueError):
            _merge({'x': 10}, {'x': 20}, {'x': 30})
        with self.assertRaises(ValueError):
            _merge(False, True, 1)


if __name__ == '__main__':
    unittest.main()
