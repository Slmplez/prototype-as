"""Recovery must identify the exact interrupted prefix without replaying writes."""
from copy import deepcopy
import json
import unittest

from bd_class_publication_recovery_plan import plan_recovery
from test_bd_source_inverse_oracle import source_graph


class PublicationRecoveryPlanTests(unittest.TestCase):
    def case(self, interrupted):
        token = 'cand_' + 'a' * 64
        owners = [{'oid': oid, 'component': oid, 'scopes': {'Main': {'generation': 3}}}
                  for oid in ('caller', 'definition')]
        old = {'alias': 'bytes:01', 'name': 'calc/OldInput', 'model_type': 'cont',
               'in': True, 'out': False, 'in_out': False}
        created = {**old, 'alias': 'bytes:02', 'name': 'calc/CreatedInput'}
        current_signature = {'oid': 'definition', 'methods': [{'alias': 'bytes:10', 'name': 'calc',
            'diagram': 'Main', 'arguments': [old, created], 'return': None}], 'references': []}
        candidate_signature = deepcopy(current_signature)
        candidate_signature['methods'][0]['arguments'].pop()
        current = {'owners': owners, 'observation': {'signature': current_signature}}
        prepared = []
        for owner in owners:
            sources = {role: {**source_graph(role), 'oid': owner['oid']} for role in ('current', 'candidate')}
            prepared.append({'oid': owner['oid'], 'token': token, 'definition_oid': 'definition',
                'action': 'prepare', 'owner_state': 'prepared', 'model_steps': 0, 'generation': 3,
                'runtime_patch': {'no_graphical_target_required': owner['oid'] == 'definition',
                    'selector': ['Main', 'bytes:10', 'CreatedInput', 'cont'], 'created_formal_alias': 'bytes:02'},
                **{role + '_source_graph': value for role, value in sources.items()}})
        origin = {'model_publication_outstanding': True, 'database': 'db', 'ascet_process_epoch': 'epoch',
                  'database_session': 'session', 'oid': 'definition'}
        events = [{'kind': 'intent', 'payload': {'operation': 'class_model_publication_study', 'token': token,
            'domain': {'oid': 'definition', 'database': 'db', 'process_epoch': 'epoch'},
            'database_session': 'session', 'current_observation': current, 'production_executor_available': False}},
            {'kind': 'prepared_all', 'payload': {'current_observation': current, 'owners': prepared}}]
        steps = [('apply', 'definition', 'signature_arguments'), ('apply', 'definition', 'signature_commit'),
                 ('apply', 'caller', 'publish'), ('apply', 'definition', 'publish'),
                 ('inverse', 'definition', 'restore_signature_arguments'), ('inverse', 'definition', 'restore_signature_commit'),
                 ('inverse', 'definition', 'restore'), ('inverse', 'caller', 'restore')]
        rows = {row['oid']: {'oid': row['oid'], 'component': row['oid'], 'owner_state': 'prepared',
            'current_matches': True, 'candidate_matches': False, 'publish_stores': 0, 'restore_stores': 0,
            'actual_source_graph': row['current_source_graph'],
            **{role + '_source_graph': row[role + '_source_graph'] for role in ('current', 'candidate')}} for row in prepared}
        state, count, signature = 'ready', 0, 'current'
        for index, (phase, oid, command) in enumerate(steps[:interrupted], 1):
            step = f'{phase}/{oid}/{command}'
            events.append({'kind': 'step_started', 'payload': {'step': step, 'phase': phase,
                'oid': oid, 'component': oid, 'command': command, 'database_session': 'session'}})
            count += int(command not in ('publish', 'restore') or oid == 'caller')
            if command in ('publish', 'restore'):
                role = 'candidate' if command == 'publish' else 'current'
                rows[oid].update(owner_state='published' if command == 'publish' else 'restored',
                    actual_source_graph=rows[oid][role + '_source_graph'],
                    current_matches=role == 'current', candidate_matches=role == 'candidate')
                rows[oid]['publish_stores' if command == 'publish' else 'restore_stores'] = int(oid == 'caller')
                if command == 'restore':
                    state = 'restored' if all(row['owner_state'] == 'restored' for row in rows.values()) else 'restoring'
            else:
                state = {'signature_arguments': 'signature_arguments_set', 'signature_commit': 'publishing',
                    'restore_signature_arguments': 'restore_signature_arguments_set',
                    'restore_signature_commit': 'restoring'}[command]
                signature = 'candidate' if phase == 'apply' else 'current'
            if index != interrupted:
                receipt = {'profile': 'class_model_publication_study_v1', 'token': token, 'oid': oid,
                    'definition_oid': 'definition', 'action': command, 'model_steps': count,
                    'write_authorized': False, 'production_executor_available': False}
                if command in ('publish', 'restore'):
                    receipt['actual_source_graph'] = rows[oid]['actual_source_graph']
                events.append({'kind': 'step_completed', 'payload': {'step': step, 'native_result': json.dumps(receipt)}})
            if index == 4 and index != interrupted:
                events.append({'kind': 'observed', 'payload': {'phase': 'published', 'observation': {}}})
                state = 'published'
        actual_signature = current_signature if signature == 'current' else candidate_signature
        classification = {'profile': 'class_model_publication_study_v1', 'token': token,
            'definition_oid': 'definition', 'action': 'classify', 'model_setters_called': 0,
            'write_authorized': False, 'production_executor_available': False, 'owners': list(rows.values()),
            'owner_count': 2, 'state': state, 'model_steps': count,
            'current_signature_matches': signature == 'current', 'candidate_signature_matches': signature == 'candidate',
            'current_argument_identities_match': signature == 'current',
            'candidate_argument_identities_match': signature == 'candidate',
            'return_identity_matches': True, 'definition_configuration_matches': True,
            'public_native_signature_matches': True, 'public_signature': 'encoded-public-signature',
            'signature_values': {'actual': actual_signature, 'native': actual_signature, 'public': actual_signature,
                                 'current': current_signature, 'candidate': candidate_signature}}
        return origin, events, classification

    def test_every_signature_publish_and_restore_completion_loss(self):
        for boundary in range(1, 9):
            with self.subTest(boundary=boundary):
                proof = plan_recovery(*self.case(boundary))
                self.assertEqual(proof['confirmed_dispatches'], boundary - 1)
                self.assertTrue(proof['unknown_native_action_completed'])
                self.assertFalse(proof['original_dispatch_replay_allowed'])
                self.assertFalse(proof['production_executor_available'])
                if boundary == 8:
                    self.assertEqual(proof['steps'], [])

    def test_partial_publication_only_restores_written_owner(self):
        proof = plan_recovery(*self.case(3))
        self.assertEqual([s['command'] for s in proof['steps']],
                         ['abort_signature_arguments', 'restore_signature_commit', 'reconcile_untouched', 'restore'])
        self.assertEqual(proof['model_recovery_steps'], 3)

    def test_current_graph_already_restored_reconciles_only_metadata(self):
        origin, events, classified = self.case(8)
        classified['state'] = 'restoring'
        classified['owners'][0]['owner_state'] = 'restore_started'
        proof = plan_recovery(origin, events, classified)
        self.assertEqual([s['command'] for s in proof['steps']], ['reconcile_restore'])
        self.assertEqual(proof['model_recovery_steps'], 0)

    def test_changed_full_source_refuses(self):
        origin, events, classified = self.case(3)
        classified['owners'][0]['actual_source_graph'] = {**source_graph('other'), 'oid': 'caller'}
        with self.assertRaisesRegex(ValueError, 'complete source'):
            plan_recovery(origin, events, classified)

    def test_changed_durable_source_refuses(self):
        origin, events, classified = self.case(3)
        classified['owners'][0]['current_source_graph'] = {**source_graph('other'), 'oid': 'caller'}
        with self.assertRaisesRegex(ValueError, 'durable CURRENT'):
            plan_recovery(origin, events, classified)

    def test_counter_owner_state_and_signature_forgery_refuse(self):
        for field in ('model_steps', 'owner_state', 'signature', 'stores'):
            origin, events, classified = self.case(3)
            if field == 'model_steps':
                classified['model_steps'] += 1
            elif field == 'owner_state':
                classified['owners'][0]['owner_state'] = 'prepared'
            elif field == 'signature':
                classified['candidate_signature_matches'] = False
            else:
                classified['owners'][0]['publish_stores'] = 0
            with self.subTest(field=field), self.assertRaises(ValueError):
                plan_recovery(origin, events, classified)

    def test_transient_public_type_error_requires_complete_native_signature(self):
        origin, events, classified = self.case(5)
        classified['signature_values']['public'] = None
        classified['public_signature'] = 'BDE_CLASS_PROBE_ERROR: Formal model type unavailable'
        classified['public_native_signature_matches'] = False
        proof = plan_recovery(origin, events, classified)
        self.assertTrue(proof['unknown_native_action_completed'])
        self.assertEqual(proof['steps'][0]['command'], 'restore_signature_commit')
        classified['signature_values']['actual'] = deepcopy(classified['signature_values']['actual'])
        classified['signature_values']['actual']['methods'][0]['arguments'][0]['model_type'] = 'log'
        with self.assertRaisesRegex(ValueError, 'Complete native signature'):
            plan_recovery(origin, events, classified)

    def test_full_signature_fields_and_native_identity_changes_refuse(self):
        for field in ('current', 'candidate', 'public', 'actual', 'return', 'configuration', 'identity', 'missing'):
            origin, events, classified = self.case(3)
            if field in ('current', 'candidate', 'public', 'actual'):
                classified['signature_values'][field] = deepcopy(classified['signature_values'][field])
                classified['signature_values'][field]['references'] = [{'oid': 'different-owner'}]
            elif field == 'return':
                classified['return_identity_matches'] = False
            elif field == 'configuration':
                classified['definition_configuration_matches'] = False
            elif field == 'identity':
                classified['candidate_argument_identities_match'] = False
            else:
                del classified['signature_values']
            with self.subTest(field=field), self.assertRaises(ValueError):
                plan_recovery(origin, events, classified)

    def test_arbitrary_public_error_cannot_substitute_native_signature(self):
        origin, events, classified = self.case(5)
        classified['signature_values']['public'] = None
        classified['public_signature'] = 'BDE_CLASS_PROBE_ERROR: other error'
        classified['public_native_signature_matches'] = False
        with self.assertRaisesRegex(ValueError, 'exact transient'):
            plan_recovery(origin, events, classified)

    def test_duplicate_or_missing_owner_refuses(self):
        for duplicate in (True, False):
            origin, events, classified = self.case(3)
            classified['owners'][-1] = deepcopy(classified['owners'][0]) if duplicate else classified['owners'].pop()
            with self.assertRaises(ValueError):
                plan_recovery(origin, events, classified)

    def test_wrong_dispatch_path_and_completed_counter_refuse(self):
        for target in ('step', 'receipt'):
            origin, events, classified = self.case(3)
            if target == 'step':
                events[-1]['payload']['oid'] = 'wrong'
            else:
                event = next(e for e in events if e['kind'] == 'step_completed')
                receipt = json.loads(event['payload']['native_result'])
                receipt['model_steps'] = 99
                event['payload']['native_result'] = json.dumps(receipt)
            with self.assertRaises(ValueError):
                plan_recovery(origin, events, classified)

    def test_terminal_and_incomplete_current_refuse(self):
        origin, events, classified = self.case(3)
        with self.assertRaises(ValueError):
            plan_recovery(origin, events + [{'kind': 'finished', 'payload': {}}], classified)
        with self.assertRaises(ValueError):
            plan_recovery(origin, events[:1] + events[2:], classified)


if __name__ == '__main__':
    unittest.main()
