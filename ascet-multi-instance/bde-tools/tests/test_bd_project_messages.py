import copy
import unittest
from bd_project_messages import analyze_messages, compare_project


def fixture():
    imported = {'owner_oid': 'module', 'alias': 'import', 'name': 'Signal', 'scope': 'imported',
                'message': True, 'imported': True, 'exported': False,
                'send': True, 'receive': False, 'send_receive': False}
    exported = {**imported, 'owner_oid': 'xpass', 'alias': 'export', 'scope': 'exported',
                'imported': False, 'exported': True, 'send': False, 'receive': True}
    return {'modules': [{'alias': 'mi1', 'name': 'Module', 'definition_oid': 'module'},
                        {'alias': 'mi2', 'name': 'XPass', 'definition_oid': 'xpass'}],
            'declarations': [imported, exported],
            'bindings': [{'import': imported, 'label_candidates': [exported],
                          'candidates': [exported], 'native_selected': exported}]}


class ProjectMessageTests(unittest.TestCase):
    def test_exported_receiver_is_not_assumed_to_send(self):
        result = analyze_messages(fixture())['bindings'][0]
        self.assertEqual(result['status'], 'unique_declaration_candidate')
        self.assertTrue(result['import']['send'])
        self.assertTrue(result['candidates'][0]['receive'])
        self.assertFalse(result['editable'])

    def test_first_match_does_not_resolve_two_candidates(self):
        data = fixture()
        data['bindings'][0]['candidates'].append({**data['declarations'][1], 'alias': 'other'})
        self.assertEqual(analyze_messages(data)['bindings'][0]['status'], 'ambiguous_declaration')

    def test_reused_definition_preserves_instances(self):
        data = fixture()
        data['modules'].append({**data['modules'][0], 'alias': 'mi3'})
        row = analyze_messages(data)['bindings'][0]
        self.assertEqual(row['import_owner_instances'], ['mi1', 'mi3'])
        self.assertEqual(row['instance_path'], 'not_expanded')

    def test_missing_or_inconsistent_lookup_is_explicit(self):
        data = fixture()
        data['bindings'][0]['native_selected'] = None
        self.assertEqual(analyze_messages(data)['bindings'][0]['status'], 'lookup_mismatch')
        data['bindings'][0]['candidates'] = []
        self.assertEqual(analyze_messages(data)['bindings'][0]['status'], 'unresolved')

    def test_duplicate_identity_and_missing_binding_are_rejected(self):
        data = fixture()
        data['modules'].append(copy.deepcopy(data['modules'][0]))
        with self.assertRaisesRegex(ValueError, 'Duplicate Module'):
            analyze_messages(data)
        data = fixture()
        data['bindings'] = []
        with self.assertRaisesRegex(ValueError, 'Missing imported'):
            analyze_messages(data)

    def test_public_projection_keeps_duplicate_instance_multiplicity(self):
        data = fixture()
        public = copy.deepcopy(data)
        public['modules'].append(copy.deepcopy(public['modules'][0]))
        self.assertFalse(compare_project(data, public)['fields']['modules'])

    def test_public_projection_checks_scope_and_communication_separately(self):
        data = fixture()
        public = copy.deepcopy(data)
        public['declarations'][0]['send'] = False
        self.assertFalse(compare_project(data, public)['fields']['declarations'])


if __name__ == '__main__':
    unittest.main()
