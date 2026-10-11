"""A complete CURRENT lifecycle must independently prove every inverse and release."""
from copy import deepcopy
import json
import unittest

from bd_class_current_prefix import inspect_current_prefix
import test_bd_class_current_prefix as forward_fixture
import test_bd_class_current_inverse as inverse_fixture
from test_bd_class_current_inverse import collection, point, step


class CurrentProtocolTests(unittest.TestCase):
    def case(self):
        origin, events, publication, rows = forward_fixture.CurrentForwardPrefixTests().case(7)
        row = rows[0]
        oid, token = row['oid'], row['token']
        current = events[0]['payload']['current_observation']
        current['observation'].update(public_signature=current['observation']['signature'], configurations={}, callers=[])
        current['owners'][0]['scopes']['Main']['entries'] = []
        events[1]['payload']['current_observation'] = deepcopy(current)
        before_public = deepcopy(current)
        for field in ('signature', 'public_signature'):
            before_public['observation'][field] = deepcopy(publication['signature_values']['candidate'])
        events[0]['payload']['public_inverse_context'] = {'before': before_public, 'applied': deepcopy(current)}
        prepared = events[1]['payload']['owners'][0]
        collateral, plan = inverse_fixture.CurrentCollateralInverseTests().ordered()
        row.update(publish_store_undo_steps=2, publish_store_undo_plan=plan)
        row['actual_native_changes'][-1][1] = deepcopy(collateral)
        receipt = json.loads(events[14]['payload']['native_result'])
        receipt.update(publish_store_undo_steps=2, publish_store_undo_plan=plan, step_actual_native_changes=collateral)
        events[14]['payload']['native_result'] = json.dumps(receipt)
        events.append({'kind': 'step_completed', 'payload': {'step': events[-1]['payload']['step'],
            'native_result': json.dumps({'profile': 'class_model_publication_study_v1', 'token': token,
                'oid': oid, 'definition_oid': oid, 'action': 'inspect', 'state': 'published',
                'model_steps': 6, 'write_authorized': False, 'production_executor_available': False})}})
        events.append({'kind': 'observed', 'payload': {'phase': 'published', 'observation': deepcopy(before_public),
            'classification': {'publication': deepcopy(publication), 'owners': deepcopy(rows)}}})
        count = 6
        restored_collateral = collection('Array', [point(11), point(12)], [point(13), point(14)])
        restored_collateral['native_ref'] = 'c200'
        middle = [point(11), point(14)]
        restore_plan = [step(1, 'put', collection('Array', [point(13), point(14)], middle)),
                        step(2, 'put', collection('Array', middle, [point(11), point(12)]))]
        for index, item in enumerate(restore_plan, 1):
            item['command'] = f'undo_restore_store/{index}'
            item['expected_native_changes'][0]['native_ref'] = 'c200'
        commands = ('restore_signature_arguments', 'restore_signature_commit', 'undo_publish_store/1',
            'undo_publish_store/2', 'undo_apply/1', 'undo_apply/2', 'undo_apply/3', 'restore_store',
            'undo_restore_store/1', 'undo_restore_store/2', 'finish_restore', 'reconcile_restore', 'release')
        snapshots = []
        for command in commands:
            before = deepcopy((publication, rows))
            started = {'kind': 'step_started', 'payload': {'step': f'inverse/{oid}/{command}', 'phase': 'inverse',
                'oid': oid, 'component': current['owners'][0]['component'], 'command': command, 'database_session': 'session'}}
            events.append(started)
            control = command in ('restore_signature_arguments', 'restore_signature_commit', 'reconcile_restore', 'release')
            metadata = command in ('finish_restore', 'reconcile_restore', 'release')
            count += int(not metadata)
            if command.startswith('restore_signature'):
                phase = 'restore_signature_arguments_set' if command.endswith('arguments') else 'restoring'
                signature = current['observation']['signature']
                publication.update(state=phase, current_signature_matches=True, current_argument_identities_match=True,
                    candidate_signature_matches=False, candidate_argument_identities_match=False)
                publication['signature_values'].update(actual=signature, native=signature, public=signature)
            elif command.startswith('undo_'):
                name, number = command.split('/')
                index = int(number) - 1
                if name == 'undo_apply':
                    effects = deepcopy(row['inverse_plan'][index]['expected_native_changes'])
                    row['inverse_completed'] = index + 1
                else:
                    effects = deepcopy(row[name[5:] + '_undo_plan'][index]['expected_native_changes'])
                    row[name[5:] + '_undo_completed'] = index + 1
                row['actual_native_changes'].append([command, effects])
                row['state'] = 'primitive_completed'
            elif command == 'restore_store':
                effects = [deepcopy(restored_collateral)]
                row.update(entry_state='source_restored', restore_stores=1, restore_store_undo_steps=2,
                    restore_store_undo_plan=restore_plan, current_source_matches=True, candidate_source_matches=False,
                    actual_source_graph=prepared['current_source_graph'], state='store_completed')
                publication['owners'][0].update(owner_state='source_restored', restore_stores=1,
                    current_matches=True, candidate_matches=False, actual_source_graph=prepared['current_source_graph'])
                row['native_context_guard']['owners'][0].update(owner_state='source_restored', required_source_role='current',
                    current_source_matches=True, candidate_source_matches=False)
                row['actual_native_changes'].append([command, effects])
            elif command == 'finish_restore':
                row.update(state='restored', full_native_original_restored=True)
            elif command == 'reconcile_restore':
                publication.update(state='restored')
                publication['owners'][0]['owner_state'] = 'restored'
                row['entry_state'] = 'restored'
                row['native_context_guard']['owners'][0]['owner_state'] = 'restored'
            publication['model_steps'] = count
            row.update(group_state=publication['state'], model_steps=count)
            row['native_context_guard'].update(group_state=publication['state'], signature_role='current')
            if control:
                receipt = {'profile': 'class_model_publication_study_v1', 'token': token, 'oid': oid,
                    'definition_oid': oid, 'action': command, 'state': 'released' if command == 'release' else publication['state'],
                    'model_steps': count, 'write_authorized': False, 'production_executor_available': False}
            else:
                receipt = deepcopy(row)
                receipt.update(action=command, model_setters_called=int(not metadata), action_completed=not metadata,
                    active_command=None if metadata else command,
                    active_kind=None if metadata else 'store' if command == 'restore_store' else 'primitive',
                    active_accounted=None if metadata else True, active_pending_after_return=False)
                if not metadata:
                    receipt['step_actual_native_changes'] = effects
            snapshots.append((deepcopy(events), deepcopy(publication), deepcopy(rows), before, command))
            events.append({'kind': 'step_completed', 'payload': {'step': started['payload']['step'], 'native_result': json.dumps(receipt)}})
            if command == 'reconcile_restore':
                events.append({'kind': 'observed', 'payload': {'phase': 'restored', 'observation': deepcopy(current),
                    'classification': {'publication': deepcopy(publication), 'owners': deepcopy(rows)}}})
        events.append({'kind': 'finished', 'payload': {'status': 'current_restored', 'outstanding': False, 'dispatch_count': 20}})
        origin['model_publication_outstanding'] = False
        return origin, events, publication, rows, snapshots

    def test_complete_dynamic_inverse_and_metadata_costs(self):
        origin, events, publication, rows, _ = self.case()
        proof = inspect_current_prefix(origin, events, publication, rows)
        self.assertTrue(proof['terminal'])
        self.assertEqual(proof['confirmed_dispatches'], 20)
        self.assertEqual(proof['state']['model_steps'], 16)
        self.assertTrue(proof['state']['release_completed'])
        self.assertFalse(proof['recovery_dispatch_authorized'])

    def test_unknown_completed_inverse_is_unique_at_each_boundary(self):
        origin, _, _, _, snapshots = self.case()
        origin['model_publication_outstanding'] = True
        for events, publication, rows, _, command in snapshots:
            if command == 'release':
                with self.assertRaisesRegex(ValueError, 'fresh absence'):
                    inspect_current_prefix(origin, events, publication, rows)
                continue
            with self.subTest(command=command):
                proof = inspect_current_prefix(origin, events, publication, rows)
                self.assertTrue(proof['unknown_native_action_completed'])
                self.assertFalse(proof['terminal'])

    def test_unknown_undispatched_inverse_is_not_replayed(self):
        origin, _, _, _, snapshots = self.case()
        origin['model_publication_outstanding'] = True
        for events, _, _, before, command in snapshots:
            if command == 'release':
                continue
            with self.subTest(command=command):
                proof = inspect_current_prefix(origin, events, *before)
                self.assertFalse(proof['unknown_native_action_completed'])
                self.assertFalse(proof['original_dispatch_replay_allowed'])

    def test_inverse_public_and_native_omissions_refuse(self):
        for fault in ('effect', 'step', 'cost', 'public', 'observation', 'native', 'finish', 'terminal', 'extra'):
            origin, events, publication, rows, _ = self.case()
            inverse = next(event for event in events if event['kind'] == 'step_completed'
                and event['payload']['step'].endswith('/undo_apply/2'))
            receipt = json.loads(inverse['payload']['native_result'])
            if fault == 'effect':
                receipt['step_actual_native_changes'][0]['after_members'] = []
            elif fault == 'step':
                next(event for event in events if event['kind'] == 'step_started'
                     and event['payload']['command'] == 'undo_apply/2')['payload']['command'] = 'undo_apply/3'
            elif fault == 'cost':
                receipt['model_setters_called'] = 0
            elif fault == 'public':
                next(event for event in events if event['kind'] == 'observed' and event['payload']['phase'] == 'restored')['payload']['observation'] = {}
            elif fault == 'observation':
                events[:] = [event for event in events if event['kind'] != 'observed']
            elif fault == 'native':
                rows[0]['full_native_original_restored'] = False
            elif fault == 'finish':
                rows[0]['state'] = 'store_completed'
            elif fault == 'terminal':
                events[-1]['payload']['dispatch_count'] += 1
            else:
                events.append(deepcopy(events[-1]))
            inverse['payload']['native_result'] = json.dumps(receipt)
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_current_prefix(origin, events, publication, rows)


if __name__ == '__main__':
    unittest.main()
