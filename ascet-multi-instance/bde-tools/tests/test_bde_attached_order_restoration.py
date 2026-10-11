"""Captured full-graph order-only recovery proof and exact effect rejection."""
from copy import deepcopy
import json
import unittest

import bd_service as service
from bde_attached_order_restoration import same_current, validate_probe, validate_actual
from bde_drawing_lineage_plan import attached_original_layout
from bd_native_graphical_effects import validate_current


class AttachedOrderTests(unittest.TestCase):
    def setUp(self):
        folder = service.ROOT / 'analysis/bde-experiments/2026-10-03'
        captured = folder / 'bde-attached-order-preview-03/result.json'
        if not captured.is_file():
            self.skipTest('Captured live attached-order proof not installed')
        result = json.loads(captured.read_text())
        source = folder / 'bde-independent-deletion-01'
        row = json.loads((source / 'result.json').read_text())['rounds'][-1]
        events = [json.loads(path.read_text()) for path in (source / 'journal' / row['edit']['change_id']).glob('*.json')]
        self.original = next(event['payload'] for event in events if event['kind'] == 'prepared')
        self.domain = next(event['payload']['domain'] for event in events if event['kind'] == 'intent')
        self.baseline = row['full_before']
        self.probe, self.current, self.prepared, self.plan = (
            result['probe'], result['native_before'], result['prepared'], result['plan'])

    def test_legacy_original_raw_image_proves_exact_attached_order(self):
        plan = attached_original_layout(self.original, self.baseline, self.probe, self.current)
        self.assertEqual(plan['physical'], ['n15', 'n1', 'n5', 'n9', 'n11', 'e1', 'e2', 'e3'])
        self.assertEqual(plan['drawing'], ['n15', 'e1', 'n1', 'n5', 'n9', 'e2', 'e3', 'n11'])
        self.assertIsNone(plan['original_drawing_sha256'])
        self.assertTrue(validate_probe(self.probe, self.domain, self.current)['passed'])

    def test_independent_membership_value_generation_or_alias_tamper_refuses(self):
        for mutation in ('value', 'generation', 'physical', 'drawing', 'binding'):
            current, probe = deepcopy(self.current), deepcopy(self.probe)
            if mutation == 'value':
                next(row for row in current['entries'] if row.get('literal'))['literal'] = '999.0'
            elif mutation == 'generation':
                current['generation'] += 1
            elif mutation == 'physical':
                probe['physical'].reverse()
            elif mutation == 'drawing':
                probe['drawing'].pop()
            else:
                probe['physical'][0]['class'] = 'SGOperatorGO'
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                attached_original_layout(self.original, self.baseline, probe, current)

    def test_read_only_probe_rejects_raw_drawing_and_wrapper_binding_tamper(self):
        for mutation in ('number', 'wrapper', 'parent'):
            probe = deepcopy(self.probe)
            raw = validate_current(probe['raw_current'])
            if mutation == 'number':
                probe['physical'][0]['drawing_order'] += 1
            elif mutation == 'wrapper':
                next(row for row in probe['physical'] if row['class'] == 'SGConnectionWrapperGO')['basic_raw_ref'] = probe['physical'][0]['raw_ref']
            else:
                raw[probe['children_raw_ref']]['value'].reverse()
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                validate_probe(probe, self.domain, self.current)

    def test_raw_object_and_unordered_pair_order_may_differ_but_fields_may_not(self):
        left = self.prepared['graphical_current']
        right = deepcopy(left)
        right['objects'].reverse()
        for row in right['objects']:
            if row['kind'] == 'collection' and row['class'] in ('Dictionary', 'Set'):
                row['value'].reverse()
        self.assertTrue(same_current(left, right))
        next(row for row in right['objects'] if row['kind'] == 'fields')['value'].reverse()
        self.assertFalse(same_current(left, right))

    def test_actual_diff_must_include_every_required_drawing_change(self):
        current = self.prepared['graphical_current']
        raw = validate_current(current)
        changes = []
        for row in self.probe['physical']:
            ref = row['basic_raw_ref']
            index = self.probe['schemas'][raw[ref]['class']].index('drawingOrder') + 1
            before = raw[ref]['value'][index - 1]
            after = {'class': 'SmallInteger', 'value': str(self.plan['drawing'].index(row['ref']) + 1)}
            if before != after:
                changes.append({'object': ref, 'kind': 'fields', 'index': index, 'before': before, 'after': after})
        actual = {'profile': 'native_graphical_diff_v1', 'complete': True, 'changes': changes,
                  'new_objects': [], 'after_object_count': len(raw)}
        self.assertTrue(validate_actual(self.prepared, actual, self.probe, self.plan)['passed'])
        actual['changes'].pop()
        with self.assertRaises(ValueError):
            validate_actual(self.prepared, actual, self.probe, self.plan)


if __name__ == '__main__':
    unittest.main()
