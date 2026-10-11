"""Oracle coverage/refusal tests using a captured read-only native projection."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_class_tools import observation
from bde_class_detached_projection_experiment import compare_projection


class DetachedProjectionOracleTests(unittest.TestCase):
    def setUp(self):
        path = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-class-detached-oracle-01/raw-0.json'
        raw = json.loads(path.read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.projections = deepcopy(raw['detached_projection_observed'])

    def test_complete_recorded_projection_matches_all_public_and_collected_fields(self):
        self.assertEqual(compare_projection(self.observed, self.projections),
            {'owners': 4, 'scopes': 7, 'nodes': 31, 'pins': 59, 'edges': 23, 'comments': 0})

    def test_geometry_pin_order_and_alias_changes_refuse(self):
        for change in ('geometry', 'order', 'alias'):
            projections = deepcopy(self.projections)
            node = projections[0]['scopes'][0]['nodes'][0]
            if change == 'geometry':
                node['anchor'][0] += 1
            elif change == 'order':
                node = next(row for row in projections[0]['scopes'][0]['nodes'] if len(row['pins']) > 1)
                node['pins'].reverse()
            else:
                node = next(row for row in projections[0]['scopes'][0]['nodes'] if 'element_alias' in row)
                node['element_alias'][1][0] ^= 1
            with self.subTest(change=change), self.assertRaises(ValueError):
                compare_projection(self.observed, projections)

    def test_pin_native_class_and_numeric_boolean_substitution_refuse(self):
        pin = self.projections[0]['scopes'][0]['nodes'][0]['pins'][0]
        for key, value in (('class', 'ForeignPin'), ('output', int(pin['output']))):
            projections = deepcopy(self.projections)
            projections[0]['scopes'][0]['nodes'][0]['pins'][0][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                compare_projection(self.observed, projections)

    def test_missing_nested_scope_and_duplicate_owner_refuse(self):
        projections = deepcopy(self.projections)
        projections[1]['scopes'].pop()
        with self.assertRaises(ValueError):
            compare_projection(self.observed, projections)
        projections = deepcopy(self.projections)
        projections[-1] = deepcopy(projections[0])
        with self.assertRaises(ValueError):
            compare_projection(self.observed, projections)

    def test_replaced_route_and_extra_node_refuse(self):
        projections = deepcopy(self.projections)
        projections[0]['scopes'][0]['edges'][0]['route'][0][0] += 1
        with self.assertRaises(ValueError):
            compare_projection(self.observed, projections)
        projections = deepcopy(self.projections)
        projections[0]['scopes'][0]['nodes'].append(deepcopy(projections[0]['scopes'][0]['nodes'][0]))
        with self.assertRaises(ValueError):
            compare_projection(self.observed, projections)


if __name__ == '__main__':
    unittest.main()
