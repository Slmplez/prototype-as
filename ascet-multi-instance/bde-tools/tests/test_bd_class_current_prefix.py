"""CURRENT forward receipts must match complete material and exactly one WAL prefix."""
from copy import deepcopy
import json
import unittest

from bd_class_current_prefix import inspect_forward_prefix
import test_bd_class_current_execution as preparation_fixture


class CurrentForwardPrefixTests(unittest.TestCase):
    def case(self, boundary=0, *, completed_unknown=True):
        fixture = preparation_fixture.CurrentExecutionPreflightTests()
        fixture.setUp()
        raw, current, prepared = fixture.ready_case()
        token, oid = fixture.token, 'definition'
        formal = {'alias': 'bytes:02', 'name': 'calc/CreatedInput', 'model_type': 'cont',
                  'in': True, 'out': False, 'in_out': False}
        signature = {'oid': oid, 'methods': [{'alias': 'bytes:10', 'name': 'calc', 'diagram': 'Main',
            'arguments': [{**formal, 'alias': 'bytes:01', 'name': 'calc/OldInput'}, formal], 'return': None}],
            'references': []}
        current['observation']['signature'] = signature
        candidate_signature = deepcopy(signature)
        candidate_signature['methods'][0]['arguments'].pop()
        prepared[0].update(token=token, definition_oid=oid, action='prepare', owner_state='prepared',
                           model_steps=0, generation=7)
        prepared[0]['runtime_patch'].update(no_graphical_target_required=False,
            selector=['Main', 'bytes:10', 'CreatedInput', 'cont'], created_formal_alias='bytes:02')
        publication = raw['current_execution_classification_preflight']['publication']
        publication.update(public_signature='complete-public', signature_values={
            'actual': signature, 'current': signature, 'candidate': None, 'native': signature, 'public': signature})
        initial = raw['current_execution_preflight'][0]
        row = raw['current_execution_classification_preflight']['owners'][0]
        row['actual_source_graph'] = prepared[0]['current_source_graph']
        native = {'owners': deepcopy(raw['current_execution_preflight']),
                  'identity': raw['current_identity_preflight'],
                  'classification': deepcopy(raw['current_execution_classification_preflight'])}
        origin = {'current_execution_study': True, 'model_publication_outstanding': True, 'oid': oid,
                  'database': 'isolated', 'ascet_process_epoch': 'epoch', 'database_session': 'session'}
        events = [{'kind': 'intent', 'payload': {'operation': 'class_current_execution_study', 'token': token,
            'domain': {'oid': oid, 'database': 'isolated', 'process_epoch': 'epoch'}, 'database_session': 'session',
            'current_observation': deepcopy(current), 'production_executor_available': False}},
            {'kind': 'prepared_all', 'payload': {'current_observation': deepcopy(current), 'owners': deepcopy(prepared)}},
            {'kind': 'native_prepared', 'payload': deepcopy(native)}]
        count = 0
        phase = 'ready'
        commands = ('signature_arguments', 'signature_commit', 'apply/1', 'apply/2', 'apply/3', 'publish_store', 'inspect')
        for index, command in enumerate(commands[:boundary], 1):
            step = f'apply/{oid}/{command}'
            events.append({'kind': 'step_started', 'payload': {'step': step, 'phase': 'apply', 'oid': oid,
                'component': current['owners'][0]['component'], 'command': command, 'database_session': 'session'}})
            if index == boundary and not completed_unknown:
                break
            count += int(command != 'inspect')
            if command in ('signature_arguments', 'signature_commit', 'inspect'):
                phase = {'signature_arguments': 'signature_arguments_set', 'signature_commit': 'publishing',
                         'inspect': 'published'}[command]
                receipt = {'profile': 'class_model_publication_study_v1', 'token': token, 'oid': oid,
                    'definition_oid': oid, 'action': command, 'model_steps': count, 'state': phase,
                    'write_authorized': False, 'production_executor_available': False}
            else:
                if command.startswith('apply/'):
                    number = int(command.split('/')[1])
                    effects = deepcopy(initial['forward_plan'][number - 1]['expected_native_changes'])
                    row['forward_completed'] = number
                else:
                    effects = []
                    row.update(entry_state='published', publish_stores=1, current_source_matches=False,
                               candidate_source_matches=True, actual_source_graph=prepared[0]['candidate_source_graph'])
                    publication['owners'][0].update(owner_state='published', publish_stores=1,
                        current_matches=False, candidate_matches=True,
                        actual_source_graph=prepared[0]['candidate_source_graph'])
                    member = row['native_context_guard']['owners'][0]
                    member.update(owner_state='published', current_source_matches=False,
                                  candidate_source_matches=True, required_source_role='candidate')
                row['actual_native_changes'].append([command, effects])
                row['full_native_original_restored'] = False
                receipt = deepcopy(row)
                receipt.update(action=command, group_state=phase, model_steps=count,
                    model_setters_called=1, action_completed=True, active_command=command,
                    active_kind='store' if command == 'publish_store' else 'primitive', active_accounted=True,
                    active_pending_after_return=False, step_actual_native_changes=effects)
                receipt['native_context_guard'].update(group_state=phase, signature_role='candidate')
            if index != boundary:
                events.append({'kind': 'step_completed', 'payload': {'step': step, 'native_result': json.dumps(receipt)}})
        row.update(group_state=phase, model_steps=count)
        row['native_context_guard'].update(group_state=phase, signature_role='current' if phase == 'ready' else 'candidate')
        publication.update(state=phase, model_steps=count, candidate_signature='complete-candidate' if count else None)
        actual_signature = signature if phase == 'ready' else candidate_signature
        publication['signature_values'] = {'actual': actual_signature, 'native': actual_signature, 'public': actual_signature,
                                           'current': signature, 'candidate': candidate_signature if count else None}
        for role in ('current', 'candidate'):
            matches = phase == 'ready' if role == 'current' else phase != 'ready'
            publication[role + '_signature_matches'] = matches
            publication[role + '_argument_identities_match'] = matches
        return origin, events, publication, [row]

    def test_actual_completion_loss_at_each_forward_boundary(self):
        for boundary in range(1, 8):
            with self.subTest(boundary=boundary):
                proof = inspect_forward_prefix(*self.case(boundary))
                self.assertEqual(proof['confirmed_dispatches'], boundary - 1)
                self.assertTrue(proof['unknown_native_action_completed'])
                self.assertFalse(proof['original_dispatch_replay_allowed'])
                self.assertFalse(proof['recovery_dispatch_authorized'])

    def test_undispatched_unknown_is_distinguished_without_replay(self):
        for boundary in range(1, 8):
            with self.subTest(boundary=boundary):
                proof = inspect_forward_prefix(*self.case(boundary, completed_unknown=False))
                self.assertFalse(proof['unknown_native_action_completed'])

    def test_ready_complete_preparation_has_no_write_authority(self):
        proof = inspect_forward_prefix(*self.case())
        self.assertIsNone(proof['unknown_step'])
        self.assertEqual(proof['state']['model_steps'], 0)
        self.assertFalse(proof['recovery_dispatch_authorized'])

    def test_diagnostic_reply_does_not_authorize_completion(self):
        args = list(self.case(4, completed_unknown=False))
        args[0]['injected_publication_completion_loss'] = {'native_result': 'pretend complete'}
        proof = inspect_forward_prefix(*args)
        self.assertFalse(proof['unknown_native_action_completed'])

    def test_missing_reordered_duplicate_or_retargeted_step_refuses(self):
        for kind in ('skip', 'duplicate', 'oid', 'command', 'phase'):
            args = list(self.case(5))
            started = args[1][-1]['payload']
            if kind == 'skip':
                del args[1][7:9]
            elif kind == 'duplicate':
                args[1].insert(-1, deepcopy(args[1][-1]))
            else:
                started[kind] = 'wrong'
            with self.subTest(kind=kind), self.assertRaises(ValueError):
                inspect_forward_prefix(*args)

    def test_confirmed_exact_native_effects_cannot_change(self):
        for field, value in (('field', 'manager'), ('native_ref', 'c99'), ('before', {})):
            args = list(self.case(5))
            receipt = json.loads(args[1][8]['payload']['native_result'])
            receipt['step_actual_native_changes'][0][field] = value
            args[1][8]['payload']['native_result'] = json.dumps(receipt)
            with self.subTest(field=field), self.assertRaises(ValueError):
                inspect_forward_prefix(*args)

    def test_full_source_native_prefix_counter_and_material_forgery_refuse(self):
        for field in ('source', 'counter', 'history', 'plan', 'material', 'configuration', 'active'):
            args = list(self.case(5))
            row = args[3][0]
            if field == 'source':
                row['actual_source_graph'] = args[2]['owners'][0]['candidate_source_graph']
            elif field == 'counter':
                row['forward_completed'] = True
            elif field == 'history':
                row['actual_native_changes'].pop()
            elif field == 'plan':
                row['forward_plan'].reverse()
            elif field == 'material':
                row['primitive_plan_sealed'] = False
            elif field == 'configuration':
                row['native_context_guard']['owners'][0]['configuration_matches'] = False
            else:
                row['active_command'] = 'apply/3'
            with self.subTest(field=field), self.assertRaises(ValueError):
                inspect_forward_prefix(*args)

    def test_successful_receipt_and_live_active_state_are_distinct(self):
        args = list(self.case(5))
        receipt = json.loads(args[1][8]['payload']['native_result'])
        self.assertEqual(receipt['active_command'], 'apply/1')
        self.assertFalse(receipt['active_pending_after_return'])
        inspect_forward_prefix(*args)
        receipt['active_pending_after_return'] = True
        args[1][8]['payload']['native_result'] = json.dumps(receipt)
        with self.assertRaises(ValueError):
            inspect_forward_prefix(*args)

    def test_inverse_events_are_not_certified_by_forward_only_audit(self):
        args = list(self.case(7))
        args[1].append({'kind': 'observed', 'payload': {'phase': 'published'}})
        with self.assertRaises(ValueError):
            inspect_forward_prefix(*args)

    def test_store_collection_inverse_count_is_dynamic_and_exact(self):
        from test_bd_class_current_inverse import CurrentCollateralInverseTests
        changes, plan = CurrentCollateralInverseTests().ordered()
        args = list(self.case(7))
        receipt = json.loads(args[1][14]['payload']['native_result'])
        receipt.update(step_actual_native_changes=changes, publish_store_undo_plan=plan, publish_store_undo_steps=2)
        args[1][14]['payload']['native_result'] = json.dumps(receipt)
        row = args[3][0]
        row.update(publish_store_undo_plan=plan, publish_store_undo_steps=2)
        row['actual_native_changes'][-1][1] = changes
        proof = inspect_forward_prefix(*args)
        self.assertEqual(proof['state']['owners']['definition']['publish_store_undo_steps'], 2)
        row['publish_store_undo_steps'] = 1
        with self.assertRaises(ValueError):
            inspect_forward_prefix(*args)

    def test_missing_store_return_uses_live_sealed_inverse_instead_of_diagnostic_reply(self):
        from test_bd_class_current_inverse import CurrentCollateralInverseTests
        changes, plan = CurrentCollateralInverseTests().ordered()
        args = list(self.case(6))
        row = args[3][0]
        row.update(publish_store_undo_plan=plan, publish_store_undo_steps=2)
        row['actual_native_changes'][-1][1] = changes
        proof = inspect_forward_prefix(*args)
        self.assertTrue(proof['unknown_native_action_completed'])
        row['publish_store_undo_plan'] = plan[:-1]
        row['publish_store_undo_steps'] = 1
        with self.assertRaises(ValueError):
            inspect_forward_prefix(*args)


if __name__ == '__main__':
    unittest.main()
