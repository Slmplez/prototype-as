"""Reject forged CURRENT preparation coverage, authority and durable evidence."""
from copy import deepcopy
import unittest
from unittest.mock import patch

from bd_class_current_execution import inspect_preflight, inspect_ready_classification
from test_bd_source_inverse_oracle import source_graph


class CurrentExecutionPreflightTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'a' * 64
        self.current = {'observation': {'signature': {'oid': 'definition'}}, 'owners': [
            {'oid': 'definition', 'component': '\\BDE_Tool_Experiments\\Trial_example',
             'scopes': {'Main': {'generation': 7}}}]}
        pin = {'native_key': 'Main/p2', 'connector_class': 'SGArgumentConnectorGO',
               'current': [10, 190], 'merged': [10, 180], 'restore_axes': ['y']}
        self.prepared = [{'oid': 'definition', 'runtime_patch': {'generation': 7,
            'targets': [{'native_key': 'Main/n1', 'kind': 'node'}], 'native_layout_audit': {'pins': [pin]}}}]
        identity = {'profile': 'class_current_identity_probe_v1', 'token': self.token,
            'definition_oid': 'definition', 'state': 'ready', 'model_setters_called': 0,
            'write_authorized': False, 'production_executor_available': False, 'owners': [{
                **self.current['owners'][0], 'profile': 'class_current_identity_plan_v1', 'token': self.token,
                'generation': 7, 'model_setters_called': 0, 'write_authorized': False,
                'production_executor_available': False, 'exact_current_targets': 1,
                'existing_live_pins': 1, 'planned_coordinate_setters': 1, 'observations': [
                    {'kind': 'node', 'native_key': 'Main/n1', 'native_class': 'SGElementGO',
                     'parent_binding': 'Main/children', 'parent_size': 3, 'parent_class': 'RBGraphicObjectCollection',
                     'exact_live_identity_verified': True},
                    {'kind': 'existing_pin', **pin, 'native_class': 'SGInterfaceGO',
                     'exact_live_identity_verified': True}]}]}
        row = {'profile': 'class_current_execution_study_v1', 'oid': 'definition', 'token': self.token,
               'action': 'prepare', 'state': 'prepared', 'entry_state': 'prepared', 'generation': 7,
               'forward_steps': 3, 'captured_native_objects': 100, 'candidate_source_matches': False,
               'actual_native_changes': [], 'write_authorized': False, 'production_executor_available': False}
        for name in ('forward_completed', 'inverse_completed', 'publish_store_undo_steps',
                     'publish_store_undo_completed', 'restore_store_undo_steps', 'restore_store_undo_completed',
                     'model_steps', 'publish_stores', 'restore_stores', 'model_setters_called'):
            row[name] = 0
        for name in ('current_diagram_identity_verified', 'physical_prefix_matches',
                     'full_native_original_restored', 'current_source_matches', 'execution_material_sealed',
                     'primitive_plan_sealed', 'inverse_plan_sealed', 'store_inverse_plans_sealed'):
            row[name] = True
        row.update(group_state='ready', last_command=None, active_command=None, active_kind=None, active_accounted=None,
                   unknown_before_matches=False, unknown_after_matches=False,
                   action_completed=False, active_pending_after_return=False)
        row['native_context_guard'] = {'profile': 'class_current_context_guard_v1', 'definition_oid': 'definition',
            'group_state': 'ready', 'signature_role': 'current', 'owner_count': 1, 'model_setters_called': 0,
            'owners': [{'oid': 'definition', 'owner_state': 'prepared', 'required_source_role': 'current',
                'owner_identity_matches': True, 'configuration_matches': True, 'candidate_material_sealed': True,
                'current_source_matches': True, 'candidate_source_matches': False,
                'required_source_matches': True, 'matches': True}]}
        for field in ('definition_identity_matches', 'argument_identities_match', 'return_identity_matches',
                      'complete_signature_matches', 'definition_configuration_matches', 'matches'):
            row['native_context_guard'][field] = True
        node = {'native_class': 'SGElementGO', 'native_key': 'Main/n1', 'native_ref': 'c5'}
        row['forward_plan'] = [
            {'command': 'apply/1', 'kind': 'position', 'expected_native_changes': [{
                'kind': 'field', 'native_class': 'SGArgumentConnectorGO', 'native_key': 'Main/p2/external',
                'native_ref': 'c1', 'index': 3, 'field': 'position',
                'before': {'native_class': 'Point', 'native_key': None, 'native_ref': 'c2', 'point': [10, 190]},
                'after': {'native_class': 'Point', 'native_key': None, 'native_ref': 'c3', 'point': [10, 180]}}]},
            {'command': 'apply/2', 'kind': 'remove', 'expected_native_changes': [{
                'kind': 'collection', 'native_class': 'OrderedCollection', 'native_key': None,
                'native_ref': 'c4', 'before_size': 1, 'after_size': 0, 'before_members': [node], 'after_members': []}]},
            {'command': 'apply/3', 'kind': 'manager', 'expected_native_changes': [{
                'kind': 'field', **node, 'index': 2, 'field': 'manager',
                'before': {'native_class': 'RBGraphicObjectCollection', 'native_key': 'Main', 'native_ref': 'c6'},
                'after': {'native_class': 'UndefinedObject', 'native_key': None, 'value': None}}]}]
        row['inverse_plan'] = []
        for index, forward in enumerate(reversed(row['forward_plan']), 1):
            change = deepcopy(forward['expected_native_changes'][0])
            for left, right in (('before', 'after'), ('before_size', 'after_size'), ('before_members', 'after_members')):
                if left in change:
                    change[left], change[right] = change[right], change[left]
            row['inverse_plan'].append({'command': f'undo_apply/{index}',
                'kind': 'insert' if forward['kind'] == 'remove' else forward['kind'],
                'expected_native_changes': [change]})
        row['publish_store_undo_plan'] = row['restore_store_undo_plan'] = []
        self.raw = {'database': 'isolated', 'database_session': 'session', 'ascet_process_epoch': 'epoch',
                    'current_identity_preflight': identity, 'current_execution_preflight': [row],
                    'current_execution_classification_preflight': {},
                    'current_execution_preflight_journal': 'preflight', 'model_publication_journal': 'publication'}
        self.events = [{'kind': 'intent', 'payload': {'operation': 'class_current_execution_preflight',
            'token': self.token, 'domain': {'session': 'journal', 'database': 'isolated', 'oid': 'definition',
                                           'process_epoch': 'epoch'}, 'database_session': 'session'}},
            {'kind': 'prepared_all', 'payload': {'current_observation': deepcopy(self.current), 'owners': [deepcopy(row)]}},
            {'kind': 'classification_observed', 'payload': {}},
            {'kind': 'finished', 'payload': {'status': 'prepared_only', 'model_setters_called': 0,
                                            'production_executor_available': False}}]

    def check(self, raw=None):
        with patch('bd_class_current_execution.read_events', side_effect=lambda path: self.events
                   if path == 'preflight' else [{'payload': {'domain': {'session': 'journal'}}}]):
            return inspect_preflight(self.raw if raw is None else raw, self.token, self.current, self.prepared)

    def test_full_node_and_coordinate_schedule(self):
        result = self.check()
        self.assertEqual(result['forward_steps'], 3)
        self.assertEqual(result['owners'][0]['primitive_effects_verified'], 3)
        self.assertFalse(result['production_executor_available'])
        self.assertIn('actual CURRENT primitive/store execution', result['not_verified'])

    def test_omitted_duplicate_unknown_owner(self):
        for rows in ([], self.raw['current_execution_preflight'] * 2, [{'oid': 'other'}]):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'] = rows
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_omitted_steps_or_stale_identity(self):
        for field, value in (('forward_steps', 2), ('forward_steps', True), ('generation', 8), ('token', 'other')):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_actual_mutation_cannot_be_preparation(self):
        for field in ('forward_completed', 'publish_stores', 'model_steps', 'model_setters_called'):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = 1
            with self.assertRaises(ValueError):
                self.check(raw)
        for field, value in (('action_completed', True), ('active_pending_after_return', True),
                             ('active_command', 'apply/1'), ('last_command', 'publish_store')):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_false_physical_or_seal_proofs(self):
        for field in ('current_diagram_identity_verified', 'physical_prefix_matches',
                      'full_native_original_restored', 'execution_material_sealed', 'primitive_plan_sealed',
                      'inverse_plan_sealed', 'store_inverse_plans_sealed'):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = False
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_atomic_context_guard_rejects_missing_false_identity_signature_and_configuration(self):
        raw = deepcopy(self.raw)
        del raw['current_execution_preflight'][0]['native_context_guard']
        with self.assertRaises(ValueError):
            self.check(raw)
        for field in ('definition_identity_matches', 'argument_identities_match', 'return_identity_matches',
                      'complete_signature_matches', 'definition_configuration_matches', 'matches'):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0]['native_context_guard'][field] = False
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_atomic_context_guard_rejects_owner_gaps_and_widened_source_roles(self):
        for field, value in (('owners', []), ('owner_count', True), ('signature_role', 'candidate')):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0]['native_context_guard'][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)
        for field, value in (('configuration_matches', False), ('owner_identity_matches', False),
                             ('candidate_material_sealed', False), ('current_source_matches', False),
                             ('required_source_role', 'candidate'), ('required_source_matches', False)):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0]['native_context_guard']['owners'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_widened_authority_or_missing_capture(self):
        for field, value in (('write_authorized', True), ('production_executor_available', True),
                             ('captured_native_objects', 0), ('actual_native_changes', [{'kind': 'field'}])):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_wal_snapshot_or_domain_cannot_change(self):
        for index, field, value in ((0, 'token', 'other'), (1, 'current_observation', {}), (3, 'model_setters_called', 1)):
            previous = deepcopy(self.events)
            self.events[index]['payload'][field] = value
            with self.assertRaises(ValueError):
                self.check()
            self.events = previous

    def test_full_primitive_effects_cannot_be_omitted_reordered_or_retargeted(self):
        for field, value in (('forward_plan', []), ('forward_plan', list(reversed(self.raw['current_execution_preflight'][0]['forward_plan'])))):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)
        for index, field, value in ((0, 'native_key', 'Main/p3/external'), (0, 'field', 'manager'),
                                   (1, 'after_members', [{'native_key': 'other'}]), (2, 'native_ref', 'c99')):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0]['forward_plan'][index]['expected_native_changes'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(raw)

    def test_coordinate_plan_must_keep_exact_values_types_and_point_identity(self):
        for value in ([10, 179], [10, True], [180, 10]):
            raw = deepcopy(self.raw)
            raw['current_execution_preflight'][0]['forward_plan'][0]['expected_native_changes'][0]['after']['point'] = value
            with self.assertRaises(ValueError):
                self.check(raw)
        raw = deepcopy(self.raw)
        raw['current_execution_preflight'][0]['forward_plan'][0]['expected_native_changes'][0]['after']['native_ref'] = 'c2'
        with self.assertRaises(ValueError):
            self.check(raw)

    def ready_case(self):
        raw, current, prepared = deepcopy(self.raw), deepcopy(self.current), deepcopy(self.prepared)
        oid = 'definition'
        for role in ('current', 'candidate'):
            prepared[0][role + '_source_graph'] = {**source_graph(role), 'oid': oid}
        signatures = {role: current['observation']['signature'] for role in ('actual', 'current', 'native', 'public')}
        signatures['candidate'] = None
        publication = {'profile': 'class_model_publication_study_v1', 'action': 'classify', 'state': 'ready',
            'token': self.token, 'definition_oid': oid, 'model_setters_called': 0, 'model_steps': 0,
            'write_authorized': False, 'production_executor_available': False, 'owner_count': 1,
            'signature_values': signatures, 'candidate_signature': None,
            'candidate_signature_matches': False, 'candidate_argument_identities_match': False,
            'owners': [{'oid': oid, 'component': current['owners'][0]['component'], 'owner_state': 'prepared',
                'publish_stores': 0, 'restore_stores': 0, 'current_matches': True, 'candidate_matches': False,
                'actual_source_graph': prepared[0]['current_source_graph'],
                **{role + '_source_graph': prepared[0][role + '_source_graph'] for role in ('current', 'candidate')}}]}
        for field in ('public_native_signature_matches', 'return_identity_matches', 'definition_configuration_matches',
                      'current_signature_matches', 'current_argument_identities_match'):
            publication[field] = True
        classification = deepcopy(raw['current_execution_preflight'][0])
        classification.update(action='classify', unknown_native_changes=[])
        raw['current_execution_classification_preflight'] = {'publication': publication, 'owners': [classification]}
        return raw, current, prepared

    def test_complete_ready_classification_has_no_recovery_authority(self):
        raw, current, prepared = self.ready_case()
        proof = inspect_ready_classification(raw, self.token, current, prepared)
        self.assertEqual(proof['complete_sources_verified'], 2)
        self.assertFalse(proof['partial_recovery_verified'])
        self.assertFalse(proof['production_executor_available'])

    def test_ready_classification_rejects_signature_configuration_and_source_changes(self):
        for field in ('return_identity_matches', 'definition_configuration_matches', 'current_argument_identities_match'):
            raw, current, prepared = self.ready_case()
            raw['current_execution_classification_preflight']['publication'][field] = False
            with self.assertRaises(ValueError):
                inspect_ready_classification(raw, self.token, current, prepared)
        raw, current, prepared = self.ready_case()
        raw['current_execution_classification_preflight']['publication']['signature_values']['actual'] = {'oid': 'other'}
        with self.assertRaises(ValueError):
            inspect_ready_classification(raw, self.token, current, prepared)
        raw, current, prepared = self.ready_case()
        raw['current_execution_classification_preflight']['publication']['owners'][0]['actual_source_graph'] = prepared[0]['candidate_source_graph']
        with self.assertRaises(ValueError):
            inspect_ready_classification(raw, self.token, current, prepared)

    def test_ready_classification_rejects_active_actions_and_owner_omissions(self):
        for field, value in (('active_command', 'apply/1'), ('active_accounted', True),
                             ('unknown_native_changes', [{'kind': 'field'}]), ('forward_completed', 1)):
            raw, current, prepared = self.ready_case()
            raw['current_execution_classification_preflight']['owners'][0][field] = value
            with self.assertRaises(ValueError):
                inspect_ready_classification(raw, self.token, current, prepared)
        for field in ('owners', 'publication'):
            raw, current, prepared = self.ready_case()
            if field == 'owners':
                raw['current_execution_classification_preflight']['owners'] = []
            else:
                raw['current_execution_classification_preflight']['publication']['owners'] = []
            with self.assertRaises(ValueError):
                inspect_ready_classification(raw, self.token, current, prepared)

    def test_wal_cannot_contain_missing_or_extra_action(self):
        for events in (self.events[:2], self.events + [{'kind': 'step_started', 'payload': {}}]):
            previous = self.events
            self.events = events
            with self.assertRaises(ValueError):
                self.check()
            self.events = previous


if __name__ == '__main__':
    unittest.main()
