"""Coverage guards for the full-read benchmark, using saved native evidence."""
import copy
import json
import unittest

from bde_experiments import ROOT
from bde_full_read_experiment import verify
from format_bd_api_read import build, render
from bd_service import entities


class FullCoverageTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.reference = json.loads((ROOT / 'analysis/bde-experiments/2026-09-30/cleanup-01/full-after.json').read_text(encoding='utf-8'))

    def test_measurement_metadata_may_change_without_losing_semantics(self):
        candidate = copy.deepcopy(self.reference)
        candidate.update(elapsed_ms=1, read_profile={'strategy': 'test'}, cleanup={'elapsed_ms': 0})
        self.assertTrue(verify(self.reference, candidate)['raw_all_semantic_fields_equal'])

    def test_missing_definition_or_changed_method_body_rejected(self):
        for field in ('definition', 'method'):
            with self.subTest(field=field):
                candidate = copy.deepcopy(self.reference)
                if field == 'definition':
                    candidate['definitions'].pop()
                else:
                    candidate['definitions'][0]['methods'][0]['code'] += '\nchanged'
                with self.assertRaisesRegex(ValueError, 'mismatch'):
                    verify(self.reference, candidate)

    def test_changed_binding_or_edge_occurrence_rejected(self):
        for field in ('binding', 'edge'):
            with self.subTest(field=field):
                candidate = copy.deepcopy(self.reference)
                if field == 'binding':
                    candidate['default_formula_bindings'] = {}
                else:
                    candidate['diagrams'][0]['graph']['edges'].pop()
                with self.assertRaisesRegex(ValueError, 'mismatch'):
                    verify(self.reference, candidate)

    def test_dirty_or_restarted_model_not_a_valid_comparison(self):
        for key, value in [('dirty_editor_count_after', 1), ('ascet_process_epoch', 'different')]:
            candidate = copy.deepcopy(self.reference)
            candidate[key] = value
            with self.assertRaises(ValueError):
                verify(self.reference, candidate)

    def test_process_bodies_are_delivered_and_indexed_separately(self):
        raw = copy.deepcopy(self.reference)
        process = {'name': 'execute', 'alias_name': 'native_process', 'code': 'void execute(void) { /* process */ }'}
        raw['diagrams'][0]['processes'] = [process]
        compact, counts, _ = build(raw)
        self.assertEqual(counts['processes'], 1)
        text = render(compact, 'test', detailed=False)
        self.assertIn(process['code'], text)
        ref = raw['diagrams'][0]['name'] + '/process:execute'
        self.assertEqual(entities({'compact': compact})[ref]['fields']['callable_kind'], 'process')
        self.assertEqual(entities({'compact': compact})[ref]['fields']['code'], process['code'])
        missing = copy.deepcopy(raw)
        missing['diagrams'][0]['processes'] = []
        with self.assertRaisesRegex(ValueError, 'mismatch'):
            verify(raw, missing)
        raw['diagrams'][0]['processes'][0]['code'] = ''
        self.assertEqual(build(raw)[1]['processes'], 1)
        raw['diagrams'][0]['processes'][0]['code'] = None
        with self.assertRaisesRegex(ValueError, 'process source'):
            build(raw)

    def test_inline_enum_keeps_items_without_a_library_identity(self):
        raw = copy.deepcopy(self.reference)
        model = raw['model_elements'][0]
        model.update(model_type='enum', enum_source='inline_type', enum_values=['idle', 'brake'],
                     definition=None, definition_status='not_applicable_inline')
        native_oid = model['native_model']['oid_hex']
        def update_occurrences(value):
            if isinstance(value, dict):
                if value.get('native_model', {}).get('oid_hex') == native_oid:
                    value.update(model)
                else:
                    for child in value.values(): update_occurrences(child)
            elif isinstance(value, list):
                for child in value: update_occurrences(child)
        update_occurrences(raw)
        compact, _, _ = build(raw)
        text = render(compact, 'test', detailed=False)
        self.assertIn('enum_source="inline_type"', text)
        self.assertIn('enum_values=["idle","brake"]', text)
        field = next(v['fields'] for v in entities({'compact': compact}).values()
                     if v['kind'] == 'model' and v['fields'].get('enum_source') == 'inline_type')
        self.assertIsNone(field['definition'])
        for changes in ({'enum_values': None}, {'enum_values': [1]},
                        {'definition': {'oid': 'invented'}}, {'enum_source': 'library_definition'}):
            with self.subTest(changes=changes):
                bad = copy.deepcopy(raw)
                bad['model_elements'][0].update(changes)
                with self.assertRaises(ValueError): build(bad)


if __name__ == '__main__':
    unittest.main()
