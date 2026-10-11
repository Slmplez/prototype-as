import copy
import unittest
from bd_signal_witnesses import component_witnesses


def fixture():
    imported = {'owner_oid': 'module', 'alias': 'import', 'name': 'Signal', 'scope': 'imported',
                'message': True, 'imported': True, 'exported': False,
                'send': True, 'receive': False, 'send_receive': False}
    exported = {**imported, 'owner_oid': 'xpass', 'alias': 'export', 'imported': False,
                'scope': 'exported', 'exported': True, 'send': False, 'receive': True}
    project = {'status': 'ok', 'database': 'db', 'ascet_process_epoch': 'epoch', 'project_oid': 'project',
        'structure': {'modules': [{'alias': 'mi1', 'name': 'module', 'definition_oid': 'module'}],
                      'declarations': [imported, exported],
                      'bindings': [{'import': imported, 'label_candidates': [exported],
                                    'candidates': [exported], 'native_selected': exported}]}}
    component = {'status': 'ok', 'database': 'db', 'ascet_process_epoch': 'epoch', 'oid': 'module',
        'structure': {'diagram_collected': True, 'models': [imported], 'formals': [], 'definitions': [],
            'nodes': [{'scope': 'Main', 'id': 1, 'model_alias': 'import'}, {'scope': 'Main', 'id': 3}],
            'pins': [{'scope': 'Main', 'id': 2, 'owner': 1, 'input': True, 'output': False, 'set_access': True},
                     {'scope': 'Main', 'id': 4, 'owner': 3, 'input': False, 'output': True}],
            'edges': [{'scope': 'Main', 'id': -1, 'source': 4, 'target': 2, 'type': 4}]}}
    return project, component


class SignalWitnessTests(unittest.TestCase):
    def test_imported_send_observes_class_side_to_message_direction(self):
        result = component_witnesses(*fixture())[0]
        self.assertEqual(result['status'], 'observed_local_segments')
        self.assertEqual(result['segments'][0]['message_access'], 'send')
        self.assertFalse(result['complete_signal_path'])
        self.assertFalse(result['editable'])

    def test_receive_observes_reverse_direction(self):
        project, component = fixture()
        project['structure']['declarations'][0].update(send=False, receive=True)
        component['structure']['pins'][0].update(input=False, output=True, set_access=False, get_access=True)
        component['structure']['pins'][1].update(input=True, output=False)
        component['structure']['edges'][0].update(source=2, target=4)
        self.assertEqual(component_witnesses(project, component)[0]['segments'][0]['message_access'], 'receive')

    def test_no_graph_is_different_from_no_occurrence(self):
        project, component = fixture()
        component['structure']['diagram_collected'] = False
        self.assertEqual(component_witnesses(project, component)[0]['status'], 'diagram_not_collected')
        component['structure']['diagram_collected'] = True
        component['structure']['nodes'][0]['model_alias'] = 'other'
        self.assertEqual(component_witnesses(project, component)[0]['status'], 'no_occurrence_in_collected_diagram')

    def test_stale_declaration_and_epoch_cannot_be_joined(self):
        project, component = fixture()
        component['ascet_process_epoch'] = 'other'
        with self.assertRaisesRegex(ValueError, 'ascet_process_epoch'):
            component_witnesses(project, component)
        project, component = fixture()
        component['structure']['models'] = copy.deepcopy(component['structure']['models'])
        component['structure']['models'][0]['receive'] = True
        with self.assertRaisesRegex(ValueError, 'declaration disagree'):
            component_witnesses(project, component)

    def test_duplicate_edges_remain_separate_evidence(self):
        project, component = fixture()
        component['structure']['edges'].append(copy.deepcopy(component['structure']['edges'][0]))
        result = component_witnesses(project, component)[0]
        self.assertEqual([row['edge_record_index'] for row in result['segments']], [0, 1])

    def test_database_name_and_epoch_do_not_prove_same_database_session(self):
        project, component = fixture()
        self.assertEqual(component_witnesses(project, component)[0]['database_session_identity'], 'not_verified')
        project['database_session'] = 'session-a'
        component['database_session'] = 'session-b'
        with self.assertRaisesRegex(ValueError, 'database_session'):
            component_witnesses(project, component)

    def test_no_implicit_role_from_pin_direction(self):
        project, component = fixture()
        component['structure']['pins'][0]['set_access'] = False
        self.assertEqual(component_witnesses(project, component)[0]['status'], 'no_matching_connection_in_collected_diagram')


if __name__ == '__main__':
    unittest.main()
