"""Regression against captured full original images; never live ASCET calls."""
from copy import deepcopy
import json
import unittest

import bd_service as service
from bde_drawing_lineage_plan import original_layout


class OriginalLayoutTests(unittest.TestCase):
    def setUp(self):
        folder = service.ROOT / 'analysis/bde-experiments/2026-10-03'
        source = folder / 'bde-independent-deletion-03'
        if not (source / 'result.json').is_file():
            self.skipTest('Captured independent-deletion evidence not installed')
        row = json.loads((source / 'result.json').read_text())['rounds'][-1]
        self.prepared = json.loads((source / 'journal' / row['edit']['change_id'] / '000001.json').read_text())['payload']
        self.baseline = row['full_before']
        snapshot = json.loads((folder / 'bde-drawing-lineage-07/result.json').read_text())
        self.probe = snapshot['probe']
        self.current = snapshot['native_before']

    def plan(self):
        return original_layout(self.prepared, self.baseline, self.probe, self.current)

    def test_complete_original_physical_and_drawing_orders_reconstructed(self):
        result = self.plan()
        self.assertEqual(result['physical'], ['n15', 'n1', 'n5', 'n9', 'n11', 'e1', 'e2'])
        self.assertEqual(result['drawing'], ['n15', 'e1', 'n1', 'n5', 'n9', 'e2', 'n11'])
        self.assertEqual(result['retained_ref'], 'n15')
        self.assertEqual(len(result['bindings']), 7)

    def test_ambiguous_original_edge_identity_refuses(self):
        edge = next(row for row in self.baseline['entries'] if row['kind'] == 'edge')
        self.baseline['entries'].append({**deepcopy(edge), 'ref': 'e999'})
        with self.assertRaises(ValueError):
            self.plan()

    def test_forged_original_raw_drawing_numbers_refuse(self):
        raw = next(row for row in self.prepared['graphical_current']['objects'] if row['class'] == 'SGLiteralGO')
        raw['value'][self.probe['schemas']['SGLiteralGO'].index('drawingOrder')]['value'] = '7'
        with self.assertRaises(ValueError):
            self.plan()

    def test_independent_reorder_or_missing_member_refuses(self):
        original = deepcopy(self.probe)
        for target in ('physical', 'drawing'):
            self.probe = deepcopy(original)
            self.probe[target].reverse()
            with self.subTest(target=target), self.assertRaises(ValueError):
                self.plan()
        self.probe = deepcopy(original)
        self.probe['physical'].pop()
        with self.assertRaises(ValueError):
            self.plan()

    def test_different_generation_schema_or_parent_binding_refuses(self):
        original = deepcopy(self.prepared)
        self.current['generation'] += 1
        with self.assertRaises(ValueError):
            self.plan()
        self.current['generation'] -= 1
        self.prepared['drawing_order_before']['parent'] = 'o999'
        with self.assertRaises(ValueError):
            self.plan()
        self.prepared = original
        self.probe['schemas']['SGLiteralGO'].pop()
        with self.assertRaises(ValueError):
            self.plan()


if __name__ == '__main__':
    unittest.main()
