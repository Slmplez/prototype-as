"""Native compatibility flags alone cannot prove complete runtime storage."""
from copy import deepcopy
import unittest

from bd_class_source_runtime import inspect_runtime
from test_bd_source_inverse_oracle import source_graph


class RuntimeSourceTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'a' * 64
        self.source = source_graph()
        self.value = {'profile': 'class_source_runtime_storage_v1', 'token': self.token,
                      'oid': 'owner', 'generation': 3, 'native_graph_clone_profile': 'native_graph_clone_v1',
                      'native_keyed_members': 2, 'copied_runtime_objects': 10, 'verified_runtime_fields': 30,
                      'private_graph_unchanged': True, 'native_private_create_storage_calls': 1,
                      'live_original_unchanged': True, 'native_source_matches': True,
                      'model_setters_called': 0, 'store_called': False, 'store_to_cache_called': False,
                      'spec_source_setter_called': False, 'write_authorized': False,
                      'native_merge_executor_available': False,
                      'private_normalization_changes': [], 'private_normalization_inverse_steps': 0,
                      'private_normalization_restored': True,
                      'expected_source_graph': deepcopy(self.source), 'generated_source_graph': deepcopy(self.source)}

    def check(self):
        return inspect_runtime(self.value, self.token, 'owner', 3, expected_source=self.source)

    def test_complete_equivalent_source_is_scoped_private_proof(self):
        proof = self.check()
        self.assertTrue(proof['complete_source_values_verified'])
        self.assertFalse(proof['native_merge_executor_available'])

    def test_native_match_flag_cannot_hide_changed_source_value(self):
        self.value['generated_source_graph'] = source_graph('forged')
        with self.assertRaisesRegex(ValueError, 'complete persisted source'):
            self.check()

    def test_two_matching_exports_cannot_substitute_another_baseline(self):
        self.value['generated_source_graph'] = source_graph('foreign')
        self.value['expected_source_graph'] = source_graph('foreign')
        with self.assertRaisesRegex(ValueError, 'retained candidate'):
            self.check()

    def test_missing_duplicate_or_unreachable_source_rows_refuse(self):
        for kind in ('missing', 'duplicate', 'unreachable'):
            with self.subTest(kind=kind):
                altered = deepcopy(self.value)
                rows = altered['generated_source_graph']['nodes']
                if kind == 'missing':
                    rows.pop()
                elif kind == 'duplicate':
                    rows[-1]['id'] = 1
                else:
                    rows.append({'id': 8, 'native_class': 'Array', 'kind': 'ordered', 'items': []})
                with self.assertRaises(ValueError):
                    inspect_runtime(altered, self.token, 'owner', 3, expected_source=self.source)

    def test_owner_generation_and_numeric_types_are_exact(self):
        for key, value in (('oid', 'foreign'), ('generation', True), ('generation', 4),
                           ('model_setters_called', False), ('native_private_create_storage_calls', True),
                           ('native_keyed_members', 0), ('verified_runtime_fields', True)):
            with self.subTest(key=key, value=value):
                altered = {**self.value, key: value}
                with self.assertRaises(ValueError):
                    inspect_runtime(altered, self.token, 'owner', 3, expected_source=self.source)

    def test_publication_claim_and_original_change_refuse(self):
        for key in ('write_authorized', 'native_merge_executor_available', 'store_to_cache_called',
                    'spec_source_setter_called', 'live_original_unchanged'):
            with self.subTest(key=key):
                altered = {**self.value, key: not self.value[key]}
                with self.assertRaises(ValueError):
                    inspect_runtime(altered, self.token, 'owner', 3, expected_source=self.source)

    def test_native_normalization_requires_an_actual_diff_and_inverse(self):
        for patch in ({'private_graph_unchanged': False}, {'private_normalization_restored': False},
                      {'private_normalization_inverse_steps': True}, {'private_normalization_inverse_steps': 1},
                      {'private_normalization_changes': [{'kind': 'fields'}]}):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                inspect_runtime({**self.value, **patch}, self.token, 'owner', 3, expected_source=self.source)

    def test_changed_private_field_with_exact_inverse_remains_private(self):
        self.value.update(private_graph_unchanged=False, private_normalization_inverse_steps=1,
                          private_normalization_changes=[{'kind': 'fields', 'native_class': 'SGDataGO',
                          'native_key': 'Main/n1', 'index': 3, 'field': 'storageCache',
                          'before_class': 'UndefinedObject', 'after_class': 'SGDataGODB'}])
        self.assertTrue(self.check()['private_normalization_restored'])


if __name__ == '__main__':
    unittest.main()
