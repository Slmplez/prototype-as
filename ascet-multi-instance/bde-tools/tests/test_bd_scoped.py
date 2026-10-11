import copy
import json
from pathlib import Path
import tempfile
import unittest
from contextlib import nullcontext
from unittest.mock import patch

import bd_scoped
import bd_service as service


class ScopedServiceTests(unittest.TestCase):
    def setUp(self):
        lock = patch.object(service, 'live_lock', nullcontext)
        lock.start()
        self.addCleanup(lock.stop)
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.store = patch.object(service, 'STORE', Path(self.tmp.name))
        self.store.start()
        self.addCleanup(self.store.stop)
        self.raw = json.loads((service.ROOT / 'analysis/bde-experiments/2026-09-29/health-after-restart.json').read_text(encoding='utf-8'))
        self.scope = {'targets': ['Main/n15', 'Main/n176'], 'include_layout': True}

    def capture(self, scope=None):
        def probe(command, timeout):
            self.assertEqual(command[3:], ['handles', '15,176', 'layout'])
            self.assertNotIn('full', command)
            Path(command[2]).write_text(json.dumps(self.raw), encoding='utf-8')
        with patch.object(service, 'ensure_probe', return_value=Path('local.exe')) as build, patch.object(service, 'run_process', side_effect=probe):
            result = service.handle('bd_read', {'component': self.raw['component'], 'scope': scope or self.scope}, 'test')
            build.assert_called_once_with('AscetScopedProbe')
        envelope = json.loads(result['content'].split('\n\n')[0])
        return envelope, result

    def test_local_read_find_inspect_and_cached_replay(self):
        meta, result = self.capture()
        self.assertEqual(meta['counts']['nodes'], 2)
        self.assertIn('method bodies', meta['collected']['not_collected'])
        self.assertIn('Main/n15.p72', result['content'])
        self.assertNotEqual(meta['collected']['graph'], 'complete')
        with patch.object(service, 'capture', side_effect=AssertionError('unexpected native read')):
            cached = service.handle('bd_read', {'snapshot': meta['snapshot']}, 'test')
            found = service.handle('bd_find', {'snapshot': meta['snapshot'], 'query': 'AxCtrldFxDtPropFF'}, 'test')
            inspected = service.handle('bd_inspect', {'snapshot': meta['snapshot'], 'query': 'fields',
                'targets': ['Main/n176'], 'fields': ['position', 'formula']}, 'test')
            self.assertIn('Main/n15', found['content'])
            self.assertIn('not_collected', inspected['content'])
            self.assertEqual(cached['content'].split('\n\n')[1], result['content'].split('\n\n')[1])

    def test_layout_diff_and_scope_boundary(self):
        first, _ = self.capture()
        node = next(n for n in self.raw['graph']['nodes'] if n['id'] == 176)
        node['position'][0] += 12
        second, _ = self.capture({'targets': ['Main/n176', 'Main/n15'], 'include_layout': True})
        self.assertEqual(second['recording']['status'], 'changed')
        diff = service.handle('bd_diff', {'before': first['snapshot'], 'after': second['snapshot']}, 'test')
        self.assertIn('position', diff['content'])
        before = service.load_record(first['snapshot'], 's_', 'snapshots')
        different = copy.deepcopy(before)
        different['scope']['include_layout'] = False
        with self.assertRaises(service.ToolError) as caught:
            service.semantic_diff(before, different)
        self.assertEqual(caught.exception.code, 'INCOMPATIBLE_SCOPE')
        self.assertNotEqual(service.journal_key(before), service.journal_key(different))

    def test_boundary_integrity_and_parallel_geometry_multiset(self):
        broken = copy.deepcopy(self.raw)
        broken['graph']['pins'].pop()
        with self.assertRaises(ValueError):
            bd_scoped.validate(broken, self.scope)
        record = {'oid': 'test', 'local_graph': self.raw['graph']}
        edge = copy.deepcopy(self.raw['graph']['edges'][0])
        self.raw['graph']['edges'].append(edge)
        rows = bd_scoped.entities(record)
        group = next(e for e in rows.values() if e['kind'] == 'edge' and e['fields']['multiplicity'] == 2)
        self.assertEqual(len(group['fields']['geometry_occurrences']), 2)
        self.raw['graph']['edges'].reverse()
        self.assertEqual(rows, bd_scoped.entities(record))

    def test_invalid_scope_is_rejected_without_native_access(self):
        for scope in ({'targets': ['Main/n01']}, {'targets': ['Main/n15', 'Main/n15']}, {'targets': ['State/x']}, {'targets': ['Main/n15'], 'include_layout': 1}):
            with self.assertRaises(ValueError):
                bd_scoped.normalize_scope(scope)


if __name__ == '__main__':
    unittest.main()
