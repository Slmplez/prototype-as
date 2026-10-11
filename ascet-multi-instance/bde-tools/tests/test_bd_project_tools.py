import copy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_project_tools as tools
from bd_project_messages import analyze_messages
from bd_interface_document import decode
from test_bd_project_messages import fixture


def record(data=None):
    data = data or fixture()
    value = {'snapshot': 's_' + 'a' * 32, 'session': 'test', 'database': 'db', 'oid': 'project',
        'component': 'Library\\Project', 'source': 'native_project_messages_v1', 'project_messages': data,
        'message_bindings': analyze_messages(data), 'scope': {'profile': 'project_messages_v1', 'messages': 'all'},
        'ascet_process_epoch': 'epoch', 'database_session_identity': 'not_verified',
        'observed_at_utc': 'now', 'counts': {key: len(data[key]) for key in ('modules', 'declarations', 'bindings')},
        'dirty_editors': [0, 0], 'unresolved_bindings': tools.UNCOLLECTED, 'document_format': tools.FORMAT}
    value['logic'] = tools.render(value)
    value['integrity_sha256'] = service.digest(value)
    return value


class ProjectToolsTests(unittest.TestCase):
    def test_nested_same_named_shared_class_instances_use_full_alias_chains(self):
        data = fixture()
        data['modules'].append({**data['modules'][0], 'alias': 'mi3'})
        data['instances'] = []
        for module in data['modules']:
            root = {'owner_oid': 'project', **module, 'chain': [module['alias']], 'name_chain': [module['name']],
                    'instance_kind': 'Module', 'expansion': 'expanded'}
            data['instances'].append(root)
            if module['definition_oid'] == 'module':
                data['instances'].append({'owner_oid': 'module', 'alias': 'shared-child', 'name': 'Stage',
                    'definition_oid': 'shared-class', 'chain': [module['alias'], 'shared-child'],
                    'name_chain': [module['name'], 'Stage'], 'instance_kind': 'Class', 'expansion': 'expanded'})
        entries = tools.entities(record(data))
        children = [row for row in entries.values() if row['ref'].startswith('component_instance:')]
        self.assertEqual(len(children), 2)
        self.assertNotEqual(children[0]['ref'], children[1]['ref'])
        self.assertNotEqual(children[0]['fields']['parent_ref'], children[1]['fields']['parent_ref'])
        binding = next(row['fields'] for row in entries.values() if row['ref'].startswith('message_binding:'))
        self.assertEqual(binding['instance_resolution'], 'multiple_owner_instances')
        self.assertEqual(len(binding['import_instance_refs']), 2)
        data['instances'][-1]['owner_oid'] = 'wrong-parent'
        with self.assertRaisesRegex(ValueError, 'parent identity'):
            record(data)

    def test_recursive_instance_stop_is_explicit_and_false_claim_is_rejected(self):
        data = fixture()
        data['instances'] = [{'owner_oid': 'project', **module, 'chain': [module['alias']],
            'name_chain': [module['name']], 'instance_kind': 'Module', 'expansion': 'expanded'} for module in data['modules']]
        recursive = {'owner_oid': 'module', 'alias': 'recur', 'name': 'Module', 'definition_oid': 'module',
            'chain': ['mi1', 'recur'], 'name_chain': ['Module', 'Module'], 'instance_kind': 'Module',
            'expansion': 'recursive_definition_stopped'}
        data['instances'].append(recursive)
        rows = decode(record(data)['logic'])
        self.assertIn('recursive_definition_stopped', [row.get('expansion') for row in rows])
        recursive['expansion'] = 'expanded'
        with self.assertRaisesRegex(ValueError, 'ancestry'):
            record(data)

    def test_ambiguous_export_candidates_and_reused_instances_stay_distinct(self):
        data = fixture()
        other = {**data['declarations'][1], 'alias': 'other', 'name': 'Other'}
        data['bindings'][0]['candidates'].append(other)
        data['bindings'][0]['label_candidates'].append(other)
        data['modules'].append({**data['modules'][1], 'alias': 'mi3', 'name': 'XPass'})
        entries = tools.entities(record(data))
        binding = next(row['fields'] for row in entries.values() if row['ref'].startswith('message_binding:'))
        self.assertEqual(binding['status'], 'ambiguous_declaration')
        self.assertEqual(binding['instance_resolution'], 'multiple_owner_instances')
        self.assertEqual(len(binding['candidate_refs']), 2)
        self.assertEqual([len(refs) for refs in binding['candidate_instance_refs']], [2, 2])
        self.assertEqual(len([row for row in entries if row.startswith('module_instance:')]), 3)
        self.assertFalse(binding['editable'])

    def test_mismatched_selection_and_label_only_candidate_are_not_lost(self):
        data = fixture()
        selected = {**data['declarations'][1], 'owner_oid': 'unseen', 'alias': 'not_compatible'}
        data['bindings'][0]['native_selected'] = selected
        scalar = {**selected, 'alias': 'scalar', 'message': False}
        data['bindings'][0]['label_candidates'].append(scalar)
        entries = tools.entities(record(data))
        binding = next(row['fields'] for row in entries.values() if row['ref'].startswith('message_binding:'))
        self.assertEqual(binding['status'], 'lookup_mismatch')
        self.assertTrue(binding['lookup_inconsistent'])
        self.assertNotIn(binding['native_selected_ref'], binding['candidate_refs'])
        self.assertEqual(entries[binding['native_selected_ref']]['fields']['membership'], 'lookup_evidence_only')
        self.assertEqual(entries[tools.declaration_ref(scalar)]['kind'], 'model')

    def test_conflicting_declaration_evidence_is_rejected(self):
        data = fixture()
        data['bindings'][0]['candidates'][0] = {**data['declarations'][1], 'send': True}
        with self.assertRaisesRegex(ValueError, 'Inconsistent declaration'):
            record(data)
        data = fixture()
        data['bindings'][0]['import'] = {**data['declarations'][0], 'receive': True}
        with self.assertRaisesRegex(ValueError, 'Invalid or duplicate import'):
            record(data)

    def test_reordered_collections_have_no_diff_but_candidate_loss_does(self):
        data = fixture()
        other = {**data['declarations'][1], 'alias': 'other'}
        data['bindings'][0]['candidates'].append(other)
        data['bindings'][0]['label_candidates'].append(other)
        before = record(data)
        reordered = copy.deepcopy(data)
        for key in ('modules', 'declarations', 'bindings'):
            reordered[key].reverse()
        reordered['bindings'][0]['candidates'].reverse()
        reordered['bindings'][0]['label_candidates'].reverse()
        after = record(reordered)
        after['snapshot'] = 's_' + 'b' * 32
        self.assertEqual(service.semantic_diff(before, after), [])
        reordered['bindings'][0]['candidates'].pop()
        lost = record(reordered)
        lost['snapshot'] = after['snapshot']
        self.assertTrue(service.semantic_diff(before, lost))

    def test_native_database_identity_mismatch_and_missing_proof_block_diff(self):
        before, after = record(), record()
        before['database_session_identity'] = '1' * 32
        after['database_session_identity'] = '1' * 32
        self.assertEqual(service.semantic_diff(before, after), [])
        for token in ('2' * 32, 'not_verified', None):
            after['database_session_identity'] = token
            with self.assertRaises(service.ToolError) as error:
                service.semantic_diff(before, after)
            self.assertEqual(error.exception.code, 'IDENTITY_UNRESOLVED')

    def test_column_document_refs_preserve_roles_and_complete_candidate_refs(self):
        value = record()
        rows = decode(value['logic'])
        columns = json.loads(value['logic'].splitlines()[0])['columns']
        self.assertIn('candidate_refs', columns['project_message_binding'])
        self.assertIn('definition_oid', columns['project_module_instance'])
        entries = tools.entities(value)
        for row in rows:
            self.assertIn(row['ref'], entries)
            for key, item in row.items():
                if key not in ('ref', 'name', 'kind'):
                    self.assertEqual(item, entries[row['ref']]['fields'][key])
        imported = next(row for row in rows if row.get('imported'))
        self.assertTrue(imported['send'])
        self.assertFalse(imported['receive'])
        selected = next(row for row in rows if row.get('native_selected_ref'))
        self.assertEqual(selected['candidate_refs'], [selected['native_selected_ref']])

    def test_cached_pagination_queries_and_edit_rejection_do_not_call_ascet(self):
        value = record()
        with tempfile.TemporaryDirectory() as directory, patch.object(service, 'STORE', Path(directory)), \
                patch.object(tools, 'capture', side_effect=AssertionError('No live capture')):
            (service.STORE / 'snapshots').mkdir()
            service.write_once(service.STORE / 'snapshots' / (value['snapshot'] + '.json'), value)
            output = service.handle('bd_read', {'snapshot': value['snapshot'], 'view': 'project_messages', 'max_bytes': 2048}, 'test')
            body = ''
            while True:
                self.assertLessEqual(len(output['content'].encode()), 2048)
                head, chunk = output['content'].split('\n\n', 1)
                meta = json.loads(head)
                self.assertFalse(meta['editable_refs'])
                body += chunk
                if not meta['page']['has_more']:
                    break
                output = service.handle('bd_read', {'cursor': meta['page']['next_cursor']}, 'test')
            self.assertEqual(body, value['logic'])
            found = service.handle('bd_find', {'snapshot': value['snapshot'], 'query': 'Signal', 'kind': 'message'}, 'test')
            self.assertEqual(json.loads(found['content'].split('\n\n')[0])['matches'], 2)
            ref = tools.declaration_ref(value['project_messages']['declarations'][0])
            result = service.handle('bd_inspect', {'snapshot': value['snapshot'], 'query': 'interface_binding', 'targets': [ref]}, 'test')
            self.assertIn('unique_declaration_candidate', result['content'])
            checks = service.handle('bd_inspect', {'snapshot': value['snapshot'], 'query': 'checks'}, 'test')
            self.assertIn('collected_project_message_evidence_only', checks['content'])
            with self.assertRaises(service.ToolError) as error:
                service.handle('bd_inspect', {'snapshot': value['snapshot'], 'query': 'signal_path', 'targets': [ref, ref]}, 'test')
            self.assertEqual(error.exception.code, 'INCOMPATIBLE_SCOPE')
            for operation in ({'op': 'connect_data', 'source': ref, 'target': ref},
                              {'op': 'set_literal', 'target': ref, 'expect': {'text': '1'}, 'value': {'text': '2'}}):
                with patch.dict('os.environ', ASCET_BD_SANDBOX_WRITES='1', ASCET_BD_STRUCTURAL_WRITES='1'), \
                        self.assertRaises(service.ToolError) as error:
                    service.handle('bd_edit', {'snapshot': value['snapshot'], 'request_id': 'read-only', 'operations': [operation]}, 'test')
                self.assertEqual(error.exception.code, 'INVALID_INPUT')
                self.assertFalse(error.exception.details['model_modified'])


if __name__ == '__main__':
    unittest.main()
