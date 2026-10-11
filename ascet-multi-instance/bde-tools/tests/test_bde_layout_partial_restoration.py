"""Strict store-effect checks on captured native outcomes, offline only."""
from copy import deepcopy
import json
import unittest

import bd_service as service
from bde_layout_partial_restoration import validate_store_actual


class CompletedStoreValidationTests(unittest.TestCase):
    def setUp(self):
        path = service.ROOT / 'analysis/bde-experiments/2026-10-03/bde-layout-partial-completion-01/result.json'
        if not path.is_file():
            self.skipTest('Captured completed-store evidence not installed')
        source = json.loads(path.read_text())
        self.prepared = source['completion_prepared']
        self.actual = source['completion_observed']['graphical_actual']
        self.fields = ['controller', 'children', 'tabOrder', 'sortChildren', 'lastChildrenNumber', 'owner']

    def validate(self):
        return validate_store_actual(self.prepared, self.actual, {'SGBlockDiagram': self.fields}, 7)

    def test_real_rebuilt_counter_is_the_only_permitted_store_effect(self):
        self.assertEqual(self.validate()['changed_entries'], 1)

    def test_missing_or_wrong_terminal_counter_refuses(self):
        original = deepcopy(self.actual)
        for value in ('8', '7.0', 'true'):
            self.actual = deepcopy(original)
            self.actual['changes'][0]['after']['value'] = value
            with self.subTest(value=value), self.assertRaises(ValueError):
                self.validate()
        self.actual = deepcopy(original)
        self.actual['changes'] = []
        with self.assertRaises(ValueError):
            self.validate()

    def test_extra_graphical_field_change_refuses(self):
        node = next(row for row in self.prepared['graphical_current']['objects'] if row['class'] == 'SGLiteralGO')
        self.actual['changes'].append({'object': node['ref'], 'kind': 'fields', 'index': 11,
                                      'before': node['value'][10], 'after': {'class': 'SmallInteger', 'value': '99'}})
        with self.assertRaises(ValueError):
            self.validate()

    def test_new_raw_graphical_allocation_refuses(self):
        self.actual['new_objects'] = [{'ref': 'v99999', 'class': 'String', 'kind': 'value', 'value': [65]}]
        self.actual['after_object_count'] += 1
        with self.assertRaises(ValueError):
            self.validate()


if __name__ == '__main__':
    unittest.main()
