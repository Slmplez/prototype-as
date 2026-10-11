import copy
import json
from pathlib import Path
import tempfile
import unittest
import uuid
from contextlib import nullcontext
from unittest.mock import patch

import bd_service as service
from format_bd_api_read import build


class BlockDiagramServiceTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = json.loads((service.ROOT / 'analysis/live-api/AEB_dFxTar.full.json').read_text(encoding='utf-8'))
        cls.raw = raw
        compact, counts, unresolved = build(raw)
        cls.fixture = {
            'snapshot': 's_' + '1' * 32, 'session': 'test', 'database': raw['database'],
            'component': raw['path'], 'oid': raw['oid'], 'ascet_process_epoch': 'test-process',
            'compact': compact, 'counts': counts, 'unresolved_bindings': unresolved,
            'logic': '逻辑\n' * 4000, 'observed_at_utc': raw['observed_at_utc'], 'dirty_editors': [0, 0],
        }

    def setUp(self):
        # These tests use saved observations only; never contend with ASCET.
        lock = patch.object(service, 'live_lock', nullcontext)
        lock.start()
        self.addCleanup(lock.stop)
        self.tmp = tempfile.TemporaryDirectory()
        self.previous_store = service.STORE
        service.STORE = Path(self.tmp.name)
        for name in ('snapshots', 'documents', 'cursors', 'delivery'):
            (service.STORE / name).mkdir()
        record = copy.deepcopy(self.fixture)
        record['integrity_sha256'] = service.digest(record)
        service.write_once(service.STORE / 'snapshots' / f"{record['snapshot']}.json", record)

    def tearDown(self):
        service.STORE = self.previous_store
        self.tmp.cleanup()

    def test_unicode_pagination_and_retry_are_complete_without_duplicate_delivery(self):
        text = self.fixture['logic']
        result = service.paged(text, {'snapshot': self.fixture['snapshot']}, 'test', 4096)
        all_text = ''
        first_cursor = None
        while True:
            self.assertLessEqual(len(result['content'].encode()), 4096)
            header, chunk = result['content'].split('\n\n', 1)
            envelope = json.loads(header)
            all_text += chunk
            cursor = envelope['page']['next_cursor']
            if not cursor:
                self.assertEqual(envelope['delivery']['status'], 'complete')
                self.assertEqual(envelope['delivery']['delivered_bytes'], len(text.encode()))
                break
            first_cursor = first_cursor or cursor
            result = service.resume(cursor, 'test')
        self.assertEqual(all_text, text)
        retry = json.loads(service.resume(first_cursor, 'test')['content'].split('\n\n', 1)[0])
        self.assertEqual(retry['delivery']['delivered_bytes'], len(text.encode()))
        with self.assertRaisesRegex(service.ToolError, 'session'):
            service.resume(first_cursor, 'other-session')

    def test_exact_pin_fields_and_scope(self):
        out = service.handle('bd_inspect', {'snapshot': self.fixture['snapshot'], 'query': 'fields', 'targets': ['Main/n15.p72'], 'fields': ['sequence', 'missing']}, 'test')
        row = json.loads(out['content'].split('\n\n', 1)[1])
        self.assertEqual(row['fields']['sequence']['value']['number'], 321)
        self.assertEqual(row['fields']['missing']['state'], 'not_collected')
        self.assertFalse(row['fields']['sequence']['writable'])

    def test_structure_occurrence_search_and_default_configuration(self):
        record = copy.deepcopy(self.fixture)
        record['scope'] = {'targets': []}
        default = {'status': 'read', 'source': 'component_default_configuration',
                   'configuration_oid': 'config', 'value': False}
        record['structure'] = {'entries': [
            {'ref':'n1','kind':'node','model_name':'BrakeEnabled','model_ref':'m_abc'},
            {'ref':'m_abc','kind':'model','name':'BrakeEnabled','default_value':default},
            {'ref':'m_def','kind':'model','name':'NoDefault','default_value':{'status':'absent'}},
        ]}
        with patch.object(service, 'load_record', return_value=record), patch.object(service, 'capture', side_effect=AssertionError('Cached query only')):
            output = service.handle('bd_find', {'snapshot':record['snapshot'],'query':'BrakeEnabled','kind':'node'}, 'test')
            self.assertEqual(json.loads(output['content'].split('\n\n',1)[1])['ref'], 'Main/n1')
            output = service.handle('bd_inspect', {'snapshot':record['snapshot'],'query':'configuration'}, 'test')
            body = json.loads(output['content'].split('\n\n',1)[1])
            self.assertEqual(body['available'], 'captured component defaults')
            self.assertIs(body['component_defaults'][0]['value'], False)
            self.assertEqual(body['component_defaults'][1]['status'], 'absent')
            self.assertNotIn('value', body['component_defaults'][1])
            self.assertIn('effective calibration', body['missing'])

    def test_diff_preserves_sequence_and_ignores_enumeration_order(self):
        changed = copy.deepcopy(self.fixture)
        changed['snapshot'] = 's_' + '2' * 32
        graph = changed['compact']['components'][0]['diagrams'][0]['graph']
        graph['nodes'].reverse()
        graph['edges'].reverse()
        self.assertEqual(service.semantic_diff(self.fixture, changed), [])
        node = next(n for n in graph['nodes'] if n['id'] == 15)
        pin = next(p for p in node['pins'] if p['native_id'] == 72)
        pin['sequence']['number'] = 999
        differences = service.semantic_diff(self.fixture, changed)
        self.assertEqual(len(differences), 1)
        self.assertEqual(differences[0]['target'], 'Main/n15.p72')
        self.assertEqual(differences[0]['field'], 'sequence')

    def test_diff_rejects_process_restart_and_cross_database(self):
        changed = copy.deepcopy(self.fixture)
        changed['snapshot'] = 's_' + '2' * 32
        changed['ascet_process_epoch'] = 'new-process'
        with self.assertRaises(service.ToolError) as context:
            service.semantic_diff(self.fixture, changed)
        self.assertEqual(context.exception.code, 'IDENTITY_UNRESOLVED')
        changed['database'] = 'another-database'
        with self.assertRaises(service.ToolError) as context:
            service.semantic_diff(self.fixture, changed)
        self.assertEqual(context.exception.code, 'INCOMPATIBLE_SNAPSHOTS')

    def test_multiedges_and_missing_fields_not_silently_lost(self):
        changed = copy.deepcopy(self.fixture)
        graph = changed['compact']['components'][0]['diagrams'][0]['graph']
        graph['edges'].append(copy.deepcopy(graph['edges'][0]))
        changes = service.semantic_diff(self.fixture, changed)
        self.assertEqual(changes[0]['field'], 'multiplicity')
        self.assertEqual(changes[0]['after'], 2)
        changed = copy.deepcopy(self.fixture)
        del changed['compact']['components'][0]['models'][0]['metadata']['scope']
        changes = service.semantic_diff(self.fixture, changed)
        self.assertTrue(any(c['kind'] == 'coverage_changed' for c in changes))

    def test_snapshot_integrity_and_path_traversal(self):
        ref = self.fixture['snapshot']
        path = service.STORE / 'snapshots' / f'{ref}.json'
        value = json.loads(path.read_text(encoding='utf-8'))
        value['logic'] = 'changed'
        path.write_text(json.dumps(value), encoding='utf-8')
        with self.assertRaises(service.ToolError) as context:
            service.load_record(ref, 's_', 'snapshots')
        self.assertEqual(context.exception.code, 'SNAPSHOT_CORRUPT')
        with self.assertRaises(service.ToolError):
            service.load_record('../../outside', 's_', 'snapshots')

    def test_unverified_write_never_creates_change(self):
        for name, args in (
            ('bd_edit', {'snapshot':'s_unused','request_id':'disabled','operations':[{'op':'delete_node','target':'Main/n1'}]}),
            ('bd_revert', {'change_id':'edit_unused','request_id':'disabled'})):
            with self.assertRaises(service.ToolError) as context:
                service.handle(name, args, 'test')
            self.assertEqual(context.exception.code, 'CAPABILITY_UNAVAILABLE')
            self.assertFalse(context.exception.details['model_modified'])
        self.assertFalse((service.STORE / 'changes').exists())

    def test_state_machine_is_not_published_as_an_empty_data_graph(self):
        def state_probe(command, timeout):
            Path(command[2]).write_text(json.dumps({'status': 'ok', 'diagrams': [{'diagram_kind': 'state_machine'}]}), encoding='utf-8')
        before = list((service.STORE / 'snapshots').glob('*.json'))
        with patch.object(service, 'ensure_probe', return_value=Path('probe.exe')), patch.object(service, 'run_process', side_effect=state_probe):
            with self.assertRaises(service.ToolError) as context:
                service.handle('bd_read', {'component': '\\Library\\StateMachine'}, 'test')
        self.assertEqual(context.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertEqual(context.exception.details['diagram_kind'], 'state_machine')
        self.assertEqual(list((service.STORE / 'snapshots').glob('*.json')), before)

    def observation(self, **overrides):
        record = copy.deepcopy(self.fixture)
        record.update(snapshot='s_' + uuid.uuid4().hex, **overrides)
        return record

    def commit(self, record):
        record.pop('integrity_sha256', None)
        record['integrity_sha256'] = service.digest(record)
        with service.live_lock():
            return service.commit_observation(record)

    def test_automatic_baseline_change_unchanged_history_and_saved_diff(self):
        before = self.observation()
        baseline = self.commit(before)
        self.assertEqual(baseline['status'], 'baseline')
        after = self.observation()
        graph = after['compact']['components'][0]['diagrams'][0]['graph']
        node = next(n for n in graph['nodes'] if n['id'] == 15)
        next(p for p in node['pins'] if p['native_id'] == 72)['sequence']['number'] = 999
        literal = next(n for n in graph['nodes'] if n['id'] == 176)
        literal['literal'] = '0.1'
        edge = next(e for e in graph['edges'] if e['input'] == 72 and e['output'] == 265)
        edge['output'] = 86
        change = self.commit(after)
        self.assertEqual(change['status'], 'changed')
        self.assertEqual(change['before'], before['snapshot'])
        sequence = next(c for c in change['differences'] if c.get('field') == 'sequence')
        self.assertEqual(sequence['before']['number'], 321)
        self.assertEqual(sequence['after']['number'], 999)
        self.assertTrue(any(c['kind'] == 'removed' and 'p265->p72:' in c['target'] for c in change['differences']))
        self.assertTrue(any(c['kind'] == 'added' and 'p86->p72:' in c['target'] for c in change['differences']))
        again = copy.deepcopy(after)
        again['snapshot'] = 's_' + uuid.uuid4().hex
        unchanged = self.commit(again)
        self.assertEqual(unchanged['status'], 'unchanged')
        self.assertEqual(unchanged['changes'], 0)
        self.assertEqual(self.commit(again), unchanged)
        self.assertEqual(len(service.journal_history()), 3)
        result = service.handle('bd_diff', {'change_id': change['change_id']}, 'later-session')
        self.assertIn('Main/n15.p72', result['content'])
        self.assertIn('999', result['content'])
        self.assertFalse(result['is_error'])
        with self.assertRaises(service.ToolError):
            service.handle('bd_diff', {'change_id': change['change_id'], 'before': before['snapshot']}, 'test')
        result = service.handle('bd_inspect', {'query': 'changes', 'snapshot': before['snapshot'], 'max_bytes': 4096}, 'later-session')
        output = ''
        while True:
            self.assertLessEqual(len(result['content'].encode()), 4096)
            header, text = result['content'].split('\n\n', 1)
            output += text
            cursor = json.loads(header)['page']['next_cursor']
            if not cursor:
                break
            result = service.resume(cursor, 'later-session')
        rows = [json.loads(line) for line in output.splitlines()]
        self.assertEqual([r['status'] for r in rows], ['unchanged', 'changed', 'baseline'])
        self.assertNotIn('differences', rows[0])

    def test_live_read_automatically_records_but_snapshot_and_cursor_do_not(self):
        def probe(command, timeout):
            raw = copy.deepcopy(self.raw)
            raw['ascet_process_epoch'] = '123/2026-10-02T08:23:11.2491625Z'
            Path(command[2]).write_text(json.dumps(raw), encoding='utf-8')
        with patch.object(service, 'ensure_probe', return_value=Path('probe.exe')), patch.object(service, 'run_process', side_effect=probe):
            result = service.handle('bd_read', {'component': self.fixture['component']}, 'test')
            first = json.loads(result['content'].split('\n\n', 1)[0])
            self.assertEqual(first['recording']['status'], 'baseline')
            service.handle('bd_read', {'snapshot': first['snapshot']}, 'test')
            service.handle('bd_read', {'cursor': first['page']['next_cursor']}, 'test')
            self.assertEqual(len(service.journal_history()), 1)
            result = service.handle('bd_read', {'component': self.fixture['component'], 'view': 'overview'}, 'test')
            second = json.loads(result['content'].split('\n\n', 1)[0])
            self.assertEqual(second['recording']['status'], 'unchanged')
            self.assertEqual(second['recording']['before'], first['snapshot'])

    def test_identity_gaps_and_database_component_isolation(self):
        self.commit(self.observation())
        gap = self.commit(self.observation(session='other'))
        self.assertEqual(gap['status'], 'continuity_gap')
        self.assertIsNone(gap['changes'])
        gap = self.commit(self.observation(session='other', ascet_process_epoch='new'))
        self.assertEqual(gap['status'], 'continuity_gap')
        stable = self.commit(self.observation(session='other', ascet_process_epoch='new'))
        self.assertEqual(stable['status'], 'unchanged')
        self.assertEqual(self.commit(self.observation(database='other-db'))['status'], 'baseline')
        self.assertEqual(self.commit(self.observation(oid='other-oid'))['status'], 'baseline')
        out = service.handle('bd_diff', {'change_id': gap['change_id']}, 'test')
        self.assertIn('No comparable before/after pair', out['content'])

    def test_failed_journal_publish_does_not_advance_baseline_and_retry_recovers(self):
        first = self.commit(self.observation())
        pending = self.observation()
        original = service.write_once
        def fail_journal(path, value):
            if path.parent.name == 'changes':
                raise OSError('simulated disk failure')
            original(path, value)
        with patch.object(service, 'write_once', side_effect=fail_journal):
            with self.assertRaises(service.ToolError) as error:
                self.commit(pending)
        self.assertEqual(error.exception.code, 'RECORDING_FAILED')
        self.assertEqual(len(service.journal_history()), 1)
        self.assertEqual(service.recording_receipt(pending)['status'], 'not_recorded')
        result = self.commit(pending)
        self.assertEqual(result['previous_record'], first['change_id'])
        self.assertEqual(result['sequence'], 2)
        self.assertEqual(self.commit(pending), result)
        self.assertEqual(len(service.journal_history()), 2)

    def test_journal_corruption_or_missing_predecessor_blocks_new_recording(self):
        first = self.commit(self.observation())
        second = self.commit(self.observation())
        path = service.STORE / 'changes' / f"{first['change_id']}.json"
        saved = path.read_bytes()
        path.unlink()
        with self.assertRaises(service.ToolError) as error:
            self.commit(self.observation())
        self.assertEqual(error.exception.code, 'JOURNAL_CORRUPT')
        path.write_bytes(saved)
        path = service.STORE / 'changes' / f"{second['change_id']}.json"
        entry = json.loads(path.read_text())
        entry['status'] = 'changed'
        path.write_text(json.dumps(entry))
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_diff', {'change_id': second['change_id']}, 'test')
        self.assertEqual(error.exception.code, 'JOURNAL_CORRUPT')


if __name__ == '__main__':
    unittest.main()
