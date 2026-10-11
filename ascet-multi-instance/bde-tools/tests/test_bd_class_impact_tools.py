"""Class caller publication must keep stable identities and signature bindings."""
from copy import deepcopy
import json
import unittest
from unittest.mock import patch

import bd_service as service
from bd_class_impact_tools import project_formal, validate_observation
from bd_class_selector import legacy_selector


class ClassImpactTests(unittest.TestCase):
    def baseline(self):
        study = json.loads((service.ROOT / 'analysis/bde-experiments/2026-10-02/'
            'bde-class-closed-delete-argument-04/study-0.json').read_text(encoding='utf-8'))
        return {'status': 'ok', 'component': study['component'], 'oid': study['oid'],
            'database': study['database'], 'ascet_process_epoch': study['ascet_process_epoch'],
            'database_session': 'test-token', 'signature': study['before']['signature'],
            'discovery': study['before']['discovery'], 'model_setters_called': 0,
            'dirty_before': 0, 'dirty_after': 0}

    def test_native_baseline_has_two_callers_three_exact_occurrences(self):
        raw = self.baseline()
        discovered = validate_observation(raw, raw['component'])
        self.assertEqual(len(discovered['callers']), 2)
        self.assertEqual(sum(len(s['occurrences']) for c in discovered['callers'] for s in c['scopes']), 3)

    def test_missing_or_mismatched_identity_refused(self):
        for key in ('oid', 'database', 'database_session', 'ascet_process_epoch'):
            raw = self.baseline()
            raw[key] = ''
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_observation(raw, raw['component'])
        raw = self.baseline()
        raw['signature']['oid'] = 'foreign'
        with self.assertRaises(ValueError):
            validate_observation(raw, raw['component'])

    def test_dirty_or_setter_result_refused(self):
        for key in ('dirty_before', 'dirty_after', 'model_setters_called'):
            raw = self.baseline()
            raw[key] = 1
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_observation(raw, raw['component'])

    def test_unstored_or_duplicate_pin_refused(self):
        for bad in (None, -1, True):
            raw = self.baseline()
            raw['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins'][0]['id'] = bad
            with self.subTest(value=bad), self.assertRaises(ValueError):
                validate_observation(raw, raw['component'])
        raw = self.baseline()
        pins = raw['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins']
        pins.append(deepcopy(pins[0]))
        with self.assertRaises(ValueError):
            validate_observation(raw, raw['component'])

    def test_noncaller_and_duplicate_owner_refused(self):
        for kind in ('SGLibrary', 'SGClassImplConfig'):
            raw = self.baseline()
            raw['discovery']['callers'][0]['native_class'] = kind
            with self.subTest(kind=kind), self.assertRaises(ValueError):
                validate_observation(raw, raw['component'])
        raw = self.baseline()
        raw['discovery']['callers'].append(deepcopy(raw['discovery']['callers'][0]))
        with self.assertRaises(ValueError):
            validate_observation(raw, raw['component'])

    def test_formal_and_method_alias_mismatch_refused(self):
        for key in ('method_alias', 'formal_alias'):
            raw = self.baseline()
            raw['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins'][0][key] = 'bytes:foreign'
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_observation(raw, raw['component'])

    def test_service_routes_query_without_whole_graph_capture(self):
        with patch('bd_class_impact_tools.inspect', return_value={'ok': True}) as query, \
                patch.object(service, 'capture') as full:
            args = {'query': 'class_callers', 'component': 'Library\\Class'}
            self.assertEqual(service.handle('bd_inspect', args, 'session'), {'ok': True})
            query.assert_called_once()
            full.assert_not_called()

    def test_real_void_method_call_pin_is_distinct_from_a_formal(self):
        path = service.ROOT / 'analysis/bde-experiments/2026-10-02/bde-class-general-fixture-01/diagnostic-store/raw/class_impact_d8ab33fa90374acca07afd161c5a8b20.json'
        raw = json.loads(path.read_text(encoding='utf-8'))
        validate_observation(raw, raw['component'])
        pin = raw['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins'][0]
        self.assertEqual(pin['formal_alias'], pin['method_alias'])
        for field in ('input', 'output'):
            altered = deepcopy(raw)
            altered['discovery']['callers'][0]['scopes'][0]['occurrences'][0]['pins'][0][field] = True
            with self.assertRaisesRegex(ValueError, 'does not bind'):
                validate_observation(altered, altered['component'])

    def test_projection_retains_exact_formal_and_scoped_targets(self):
        raw = self.baseline()
        selector = legacy_selector(raw['signature'], 'argument')
        selected = project_formal(raw, selector)
        self.assertEqual(len(selected['caller_pin_targets']), 3)
        self.assertEqual(selected['formal']['alias'], selector['formal_alias'])
        self.assertEqual(selected['observed_callers'], selected['matched_callers'])
        changed = deepcopy(raw)
        changed['discovery']['callers'][0]['scopes'][0]['diagram'] = 'Main/h12'
        later = project_formal(changed, selector)
        self.assertEqual(later['signature_observation_sha256'], selected['signature_observation_sha256'])
        self.assertNotEqual(later['caller_observation_sha256'], selected['caller_observation_sha256'])

    def test_duplicate_pin_across_occurrences_and_formal_across_methods_refused(self):
        raw = self.baseline()
        occurrences = raw['discovery']['callers'][0]['scopes'][0]['occurrences']
        occurrences[1]['pins'][0]['id'] = occurrences[0]['pins'][0]['id']
        with self.assertRaisesRegex(ValueError, 'duplicated'):
            validate_observation(raw, raw['component'])
        raw = self.baseline()
        other = deepcopy(raw['signature']['methods'][0])
        other['alias'] = 'bytes:0102'
        raw['signature']['methods'].append(other)
        with self.assertRaisesRegex(ValueError, 'formal identities duplicated'):
            validate_observation(raw, raw['component'])


if __name__ == '__main__':
    unittest.main()
