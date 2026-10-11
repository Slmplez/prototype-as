import copy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
from bd_project_messages import analyze_messages
from bd_project_signal_paths import project_signal_path
from bd_project_tools import entities
from test_bd_project_messages import fixture


def observations():
    data = fixture()
    data['instance_depth_limit'] = 16
    data['instances'] = [{'owner_oid': 'project', **module, 'definition_path': 'Library\\' + module['name'],
        'chain': [module['alias']], 'name_chain': [module['name']], 'instance_kind': 'Module',
        'expansion': 'expanded'} for module in data['modules']]
    project = {'snapshot': 's_' + 'a' * 32, 'session': 'test', 'database': 'db', 'oid': 'project',
        'ascet_process_epoch': 'epoch', 'database_session_identity': '1' * 32,
        'database_identity_basis': 'native_dbAccess_and_dbInterface_object_identity',
        'project_messages': data, 'message_bindings': analyze_messages(data)}
    instance_refs = {row['fields']['definition_oid']: ref for ref, row in entities(project).items()
                     if ref.startswith('module_instance:')}
    components = []
    for index, declaration in enumerate(data['declarations']):
        input = declaration['send']
        graph = {'models': [copy.deepcopy(declaration)], 'formals': [], 'definitions': [],
            'boundaries': [], 'diagram_collected': True,
            'nodes': [{'scope': 'Main', 'id': native_id, 'hierarchy': False, 'hierarchy_pin': False,
                       'native_class': 'fixture', **({'model_alias': declaration['alias']} if native_id == 3 else {})}
                      for native_id in (1, 3)],
            'pins': [{'scope': 'Main', 'owner': 1, 'id': 2, 'input': not input, 'output': input, 'name': 'Signal'},
                     {'scope': 'Main', 'owner': 3, 'id': 4, 'input': input, 'output': not input, 'name': 'Signal',
                      'set_access': input, 'get_access': not input}],
            'edges': [{'scope': 'Main', 'source': 2 if input else 4, 'target': 4 if input else 2, 'type': 4, 'id': -1}]}
        record = {key: value for key, value in project.items() if key not in ('project_messages', 'message_bindings')}
        record.update(snapshot='s_' + str(index + 2) * 32, oid=declaration['owner_oid'], interfaces=graph)
        components.append((instance_refs[record['oid']], record))
    source = {'instance': components[0][0], 'ref': 'Main/n1.p2'}
    target = {'instance': components[1][0], 'ref': 'Main/n1.p2'}
    return project, components, source, target


class ProjectSignalPathTests(unittest.TestCase):
    def test_imported_sender_exported_receiver_follow_roles_and_native_alias(self):
        result = project_signal_path(*observations())
        self.assertEqual(result['status'], 'observed_declared_static_path')
        self.assertEqual([row['kind'] for row in result['segments']],
                         ['diagram_connection', 'message_binding', 'diagram_connection'])
        message = result['segments'][1]
        self.assertEqual(message['sender_declaration'], ['module', 'import'])
        self.assertEqual(message['receiver_declaration'], ['xpass', 'export'])
        self.assertFalse(result['complete_signal_path'])
        self.assertFalse(result['editable'])
        self.assertEqual(message['runtime_delivery'], 'not_verified')

    def test_exported_sender_imported_receiver_is_the_opposite_route(self):
        project, components, source, target = observations()
        for declaration in project['project_messages']['declarations']:
            declaration['send'], declaration['receive'] = declaration['receive'], declaration['send']
        for _, record in components:
            model = record['interfaces']['models'][0]
            model['send'], model['receive'] = model['receive'], model['send']
            for pin in record['interfaces']['pins']:
                pin['input'], pin['output'] = pin['output'], pin['input']
                if 'set_access' in pin:
                    pin['set_access'], pin['get_access'] = pin['get_access'], pin['set_access']
            edge = record['interfaces']['edges'][0]
            edge['source'], edge['target'] = edge['target'], edge['source']
        result = project_signal_path(project, components, target, source)
        self.assertEqual(result['segments'][1]['sender_declaration'], ['xpass', 'export'])

    def test_ambiguous_candidate_cannot_be_resolved_by_first_match(self):
        project, components, source, target = observations()
        binding = project['project_messages']['bindings'][0]
        binding['candidates'].append({**binding['candidates'][0], 'alias': 'other-export'})
        result = project_signal_path(project, components, source, target)
        self.assertEqual(result['status'], 'no_path_in_collected_relations')
        self.assertEqual(result['blocked_bindings'][0]['status'], 'ambiguous_declaration')

    def test_same_definition_multiple_instances_do_not_imply_transport_pairing(self):
        project, components, source, target = observations()
        data = project['project_messages']
        data['modules'].append({**data['modules'][0], 'alias': 'mi3'})
        data['instances'].append({**data['instances'][0], 'alias': 'mi3', 'chain': ['mi3']})
        result = project_signal_path(project, components, source, target)
        self.assertEqual(result['status'], 'no_path_in_collected_relations')
        self.assertEqual(result['blocked_bindings'][0]['instance_resolution'], 'multiple_owner_instances')

    def test_changed_database_session_epoch_or_agent_session_cannot_be_joined(self):
        for field, value in [('database_session_identity', '2' * 32), ('ascet_process_epoch', 'other'),
                             ('database', 'other'), ('session', 'other')]:
            project, components, source, target = observations()
            components[0][1][field] = value
            with self.assertRaisesRegex(ValueError, 'Incomparable'):
                project_signal_path(project, components, source, target)
        project, components, source, target = observations()
        project['database_session_identity'] = 'not_verified'
        with self.assertRaisesRegex(ValueError, 'identity is required'):
            project_signal_path(project, components, source, target)

    def test_wrong_definition_missing_access_and_missing_graph_are_explicit(self):
        project, components, source, target = observations()
        components[0][1]['oid'] = 'other'
        with self.assertRaisesRegex(ValueError, 'instance definition'):
            project_signal_path(project, components, source, target)
        project, components, source, target = observations()
        components[0][1]['interfaces']['pins'][1]['set_access'] = False
        result = project_signal_path(project, components, source, target)
        self.assertEqual(result['blocked_bindings'][0]['reason'], 'complementary_message_access_not_collected')
        components[0][1]['interfaces']['diagram_collected'] = False
        with self.assertRaisesRegex(ValueError, 'not collected'):
            project_signal_path(project, components, source, target)

    def test_project_and_local_declaration_drift_is_rejected(self):
        project, components, source, target = observations()
        components[0][1]['interfaces']['models'][0]['scope'] = 'local'
        with self.assertRaisesRegex(ValueError, 'declarations disagree'):
            project_signal_path(project, components, source, target)

    def test_multiplicity_and_path_bound_are_preserved(self):
        project, components, source, target = observations()
        components[0][1]['interfaces']['edges'] *= 2
        result = project_signal_path(project, components, source, target)
        self.assertEqual(result['segments'][0]['multiplicity'], 2)
        self.assertEqual(project_signal_path(project, components, source, target, max_segments=2)['status'],
                         'path_limit_reached')

    def test_duplicates_and_unobserved_endpoints_are_rejected(self):
        project, components, source, target = observations()
        with self.assertRaisesRegex(ValueError, 'Duplicate component'):
            project_signal_path(project, components * 2, source, target)
        target['ref'] = 'Main/n1.p999'
        with self.assertRaisesRegex(ValueError, 'exact instance pin'):
            project_signal_path(project, components, source, target)

    def test_real_backend_query_and_pagination_are_offline(self):
        project, components, source, target = observations()
        with tempfile.TemporaryDirectory() as directory, patch.object(service, 'STORE', Path(directory)), \
                patch.object(service, 'live_lock', side_effect=AssertionError('No live query')):
            (service.STORE / 'snapshots').mkdir()
            for value in [project, *[record for _, record in components]]:
                value['integrity_sha256'] = service.digest(value)
                service.write_once(service.STORE / 'snapshots' / (value['snapshot'] + '.json'), value)
            args = {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                    'components': [{'instance': ref, 'snapshot': record['snapshot']} for ref, record in components],
                    'source': source, 'target': target, 'max_bytes': 2048}
            output = service.handle('bd_inspect', args, 'test')
            body = ''
            while True:
                self.assertLessEqual(len(output['content'].encode()), 2048)
                head, chunk = output['content'].split('\n\n', 1)
                head = json.loads(head)
                body += chunk
                if not head['page']['has_more']:
                    break
                output = service.handle('bd_inspect', {'cursor': head['page']['next_cursor']}, 'test')
            self.assertEqual(json.loads(body)['status'], 'observed_declared_static_path')


if __name__ == '__main__':
    unittest.main()
