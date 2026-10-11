import copy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_signal_tools as tools
from bd_signal_interfaces import IDENTITY_CHECKS, hierarchy_bindings, signal_path
from bd_interface_document import encode, decode


def fixture():
    data = {'models': [], 'formals': [], 'definitions': [], 'nodes': [], 'pins': [],
            'edges': [], 'boundaries': [], 'diagram_collected': True}

    def node(scope, native_id, hierarchy=False, internal=False):
        data['nodes'].append({'scope': scope, 'id': native_id, 'hierarchy': hierarchy,
                             'hierarchy_pin': internal, 'native_class': 'fixture', 'name': 'Stage'})

    def pin(scope, owner, native_id, input):
        data['pins'].append({'scope': scope, 'owner': owner, 'id': native_id,
                            'input': input, 'output': not input, 'name': 'Signal'})

    for parent in ('Main', 'Main/h1'):
        child = parent + '/h1'
        node(parent, 1, hierarchy=True)
        pin(parent, 1, 2, True)
        pin(parent, 1, 3, False)
        node(child, 4, internal=True)
        node(child, 5, internal=True)
        pin(child, 4, 4, False)
        pin(child, 5, 5, True)
        data['boundaries'].append({'kind': 'hierarchy', 'parent_scope': parent,
                                  'node_id': 1, 'child_scope': child})
        for external, internal in ((2, 4), (3, 5)):
            data['boundaries'].append({'kind': 'hierarchy_boundary', 'parent_scope': parent,
                'node_id': 1, 'child_scope': child, 'external_pin_id': external,
                'internal_pin_id': internal, 'internal_node_id': internal,
                'status': 'native_pairing_collected', **dict.fromkeys(IDENTITY_CHECKS, True)})
    node('Main', 10)
    node('Main', 12)
    pin('Main', 10, 11, False)
    pin('Main', 12, 13, True)
    data['edges'] = [{'scope': scope, 'source': source, 'target': target, 'type': 0, 'id': -1}
                     for scope, source, target in [('Main', 11, 2), ('Main', 3, 13),
                         ('Main/h1', 4, 2), ('Main/h1', 3, 5), ('Main/h1/h1', 4, 5)]]
    return data


class SignalPathTests(unittest.TestCase):
    def test_two_levels_duplicate_names_ids_and_reversed_directions(self):
        data = fixture()
        result = hierarchy_bindings(data)
        self.assertEqual((result['matched'], result['unresolved']), (4, 0))
        path = signal_path(data, 'Main/n10.p11', 'Main/n12.p13')
        self.assertEqual(path['status'], 'observed_static_path')
        self.assertEqual([row['kind'] for row in path['segments']],
                         ['diagram_connection', 'hierarchy_boundary'] * 4 + ['diagram_connection'])
        self.assertEqual([row['direction'] for row in path['segments'] if row['kind'] == 'hierarchy_boundary'],
                         ['enter', 'enter', 'leave', 'leave'])
        self.assertFalse(path['editable'])
        self.assertEqual(path['coverage']['runtime_delivery'], 'not_verified')

    def test_broken_identity_each_blocks_the_route(self):
        for check in IDENTITY_CHECKS:
            data = fixture()
            data['boundaries'][1][check] = False
            self.assertEqual(hierarchy_bindings(data)['unresolved'], 1)
            self.assertEqual(signal_path(data, 'Main/n10.p11', 'Main/n12.p13')['status'],
                             'no_path_in_collected_relations')

    def test_wrong_direction_pairing_cannot_be_used(self):
        data = fixture()
        data['boundaries'][1].update(internal_pin_id=5, internal_node_id=5)
        result = hierarchy_bindings(data)
        self.assertEqual(result['bindings'][0]['reason'], 'boundary_direction_not_opposite')

    def test_wrong_child_owner_and_duplicate_pairing_rejected(self):
        data = fixture()
        data['boundaries'][1]['child_scope'] = 'Main/h1/h1'
        with self.assertRaisesRegex(ValueError, 'child scope'):
            hierarchy_bindings(data)
        data = fixture()
        data['boundaries'].append(copy.deepcopy(data['boundaries'][1]))
        with self.assertRaisesRegex(ValueError, 'Duplicate hierarchy'):
            hierarchy_bindings(data)
        data = fixture()
        data['pins'].append(copy.deepcopy(data['pins'][0]))
        with self.assertRaisesRegex(ValueError, 'Duplicate scoped'):
            signal_path(data, 'Main/n10.p11', 'Main/n12.p13')

    def test_no_inferred_dataflow_through_class_or_operator(self):
        data = fixture()
        data['edges'] = data['edges'][:-1]
        self.assertFalse(signal_path(data, 'Main/n10.p11', 'Main/n12.p13')['complete_for_requested_pin_endpoints'])

    def test_not_collected_graph_does_not_mean_empty(self):
        data = fixture()
        data['diagram_collected'] = False
        with self.assertRaisesRegex(ValueError, 'not collected'):
            signal_path(data, 'Main/n10.p11', 'Main/n12.p13')

    def test_missing_boundary_and_depth_limit_are_explicit(self):
        data = fixture()
        data['boundaries'].pop(1)
        self.assertEqual(hierarchy_bindings(data)['unresolved'], 1)
        self.assertEqual(signal_path(fixture(), 'Main/n10.p11', 'Main/n12.p13', max_segments=2)['status'],
                         'path_limit_reached')

    def test_semantic_multiedges_preserved_without_editable_ids(self):
        data = fixture()
        data['edges'].append(copy.deepcopy(data['edges'][0]))
        record = self.record(data)
        edges = [row for row in tools.entities(record).values() if row['kind'] == 'edge']
        self.assertEqual(sum(row['fields']['multiplicity'] for row in edges), 6)
        self.assertTrue(all(row['fields']['editable'] is False for row in edges))

    def test_same_name_message_occurrences_link_by_alias(self):
        data = fixture()
        data['models'] = [{'alias': 'message-a', 'name': 'Signal', 'message': True, 'scope': 'imported', 'send': True},
                          {'alias': 'message-b', 'name': 'Signal', 'message': True, 'scope': 'exported', 'receive': True}]
        data['nodes'][-2]['model_alias'] = 'message-b'
        record = self.record(data)
        entries = tools.entities(record)
        occurrence = entries['Main/n10']
        declaration = entries[occurrence['fields']['model_ref']]
        self.assertEqual(declaration['fields']['alias'], 'message-b')
        delivered = decode(tools.render(record))
        self.assertEqual(next(row for row in delivered if row['ref'] == 'Main/n10')['model_ref'], declaration['ref'])

    def test_column_document_preserves_null_false_absence_and_unicode_names(self):
        rows = [{'kind': 'pin', 'ref': 'Main/n1.p2', 'name': 'Signal', 'input': True, 'output': False, 'method': None},
                {'kind': 'pin', 'ref': 'Main/n3.p4', 'name': '\u4fe1\u53f7', 'input': False, 'output': True}]
        self.assertEqual(decode(encode(rows)), rows)
        self.assertNotIn('method', decode(encode(rows))[1])
        self.assertIsNone(decode(encode(rows))[0]['method'])

    def record(self, data=None):
        data = data or fixture()
        return {'snapshot': 's_' + 'a' * 32, 'session': 'test', 'database': 'database', 'oid': 'component',
                'component': 'Library\\Module', 'source': 'native_signal_interfaces_v1', 'interfaces': data,
                'scope': {'profile': 'signal_interfaces_v1'}, 'ascet_process_epoch': 'epoch',
                'database_session_identity': 'not_verified', 'observed_at_utc': '2026-10-01T00:00:00Z',
                'dirty_editors': [0, 0],
                'counts': {}, 'unresolved_bindings': tools.UNCOLLECTED, 'logic': 'captured',
                'interface_bindings': {'classes': {'bindings': []}, 'hierarchy': hierarchy_bindings(data)}}

    def test_interface_diff_ignores_enumeration_and_keeps_multiplicity(self):
        before = self.record()
        after = copy.deepcopy(before)
        after['snapshot'] = 's_' + 'b' * 32
        for field in ('nodes', 'pins', 'edges', 'boundaries'):
            after['interfaces'][field].reverse()
        self.assertEqual(service.semantic_diff(before, after), [])
        after['interfaces']['edges'].append(copy.deepcopy(after['interfaces']['edges'][0]))
        changes = service.semantic_diff(before, after)
        self.assertEqual(len(changes), 1)
        self.assertEqual(changes[0]['field'], 'multiplicity')

    def test_queries_paginate_without_live_reads_and_freeze_the_observation(self):
        record = self.record()
        record['integrity_sha256'] = service.digest(record)
        with tempfile.TemporaryDirectory() as directory, patch.object(service, 'STORE', Path(directory)), \
                patch.object(service, 'capture', side_effect=AssertionError('No live read')), \
                patch.object(tools, 'capture', side_effect=AssertionError('No live interface read')):
            (service.STORE / 'snapshots').mkdir()
            service.write_once(service.STORE / 'snapshots' / (record['snapshot'] + '.json'), record)
            output = service.handle('bd_inspect', {'snapshot': record['snapshot'], 'query': 'signal_path',
                                    'targets': ['Main/n10.p11', 'Main/n12.p13'], 'max_bytes': 2048}, 'test')
            body = ''
            while True:
                self.assertLessEqual(len(output['content'].encode()), 2048)
                head, chunk = output['content'].split('\n\n', 1)
                meta = json.loads(head)
                body += chunk
                if not meta['page']['has_more']:
                    break
                output = service.handle('bd_read', {'cursor': meta['page']['next_cursor']}, 'test')
            self.assertEqual(len(json.loads(body)['segments']), 9)
            result = service.handle('bd_inspect', {'snapshot': record['snapshot'], 'query': 'interface_binding',
                                    'targets': ['Main/h1/n4.p4']}, 'test')
            self.assertIn('matched_native_identity', result['content'])
            result = service.handle('bd_inspect', {'snapshot': record['snapshot'], 'query': 'checks'}, 'test')
            checks = json.loads(result['content'].split('\n\n', 1)[1])
            self.assertEqual(checks['hierarchy_bindings']['matched'], 4)
            self.assertNotIn('unresolved_formula_bindings', checks)
            for operation in ({'op': 'connect_data', 'source': 'Main/n10.p11', 'target': 'Main/n12.p13'},
                              {'op': 'set_literal', 'target': 'Main/n10', 'expect': {'text': '1'}, 'value': {'text': '2'}}):
                with patch.dict('os.environ', ASCET_BD_SANDBOX_WRITES='1', ASCET_BD_STRUCTURAL_WRITES='1'), \
                        self.assertRaises(service.ToolError) as error:
                    service.handle('bd_edit', {'snapshot': record['snapshot'], 'request_id': 'read-only', 'operations': [operation]}, 'test')
                self.assertEqual(error.exception.code, 'INVALID_INPUT')
                self.assertFalse(error.exception.details['model_modified'])


if __name__ == '__main__':
    unittest.main()
