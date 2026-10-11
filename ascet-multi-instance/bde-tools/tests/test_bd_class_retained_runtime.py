"""History capture proofs must keep their original owner, phase and complete values."""
from copy import deepcopy
import unittest

from bd_class_source_runtime import inspect_retained_runtime
from test_bd_source_inverse_oracle import source_graph


class RetainedRuntimeTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'c' * 64
        self.sources = {'original': source_graph('before'), 'applied': source_graph('after')}
        self.generations = {'original': 1, 'applied': 2}
        self.value = {'profile': 'class_retained_runtime_audit_v1', 'token': self.token,
                      'oid': 'owner', 'generation': 3, 'current_baseline_verified': True,
                      'model_setters_called': 0, 'store_called': False,
                      'write_authorized': False, 'native_merge_executor_available': False,
                      'captures': []}
        for phase in ('original', 'applied'):
            self.value['captures'].append({'phase': phase, 'capture_generation': self.generations[phase],
                'material_binding': 'originalBindings' if phase == 'original' else 'afterBindings',
                'capture_state': 'prepared' if phase == 'original' else 'applied', 'seal_verified': True,
                'private_seal_negative_checks': 3, 'private_field_fault_detected': True,
                'private_mapping_fault_detected': True,
                'copied_graph_unchanged': True, 'historical_live_fields_match_capture': phase == 'original',
                'native_keyed_members': 2, 'copied_runtime_objects': 10, 'verified_runtime_fields': 30,
                'private_normalization_changes': [], 'private_normalization_inverse_steps': 0,
                'private_normalization_restored': True,
                'expected_source_graph': deepcopy(self.sources[phase]),
                'generated_source_graph': deepcopy(self.sources[phase])})

    def check(self, value=None):
        return inspect_retained_runtime(self.value if value is None else value, self.token, 'owner', 3,
                                        expected_sources=self.sources, expected_generations=self.generations)

    def test_changed_old_live_graph_does_not_replace_the_verified_private_capture(self):
        proof = self.check()
        self.assertTrue(proof['capture_time_sources_verified'])
        self.assertFalse(proof['captures'][1]['historical_live_fields_match_capture'])
        self.assertFalse(proof['native_merge_executor_available'])

    def test_swapped_duplicate_or_missing_phase_refuses(self):
        for indices in ((1, 0), (0, 0), (0,)):
            with self.subTest(indices=indices):
                value = deepcopy(self.value)
                value['captures'] = [value['captures'][index] for index in indices]
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_matching_foreign_exports_cannot_substitute_capture_time_source(self):
        value = deepcopy(self.value)
        value['captures'][0].update(expected_source_graph=source_graph('foreign'),
                                    generated_source_graph=source_graph('foreign'))
        with self.assertRaisesRegex(ValueError, 'baseline differs'):
            self.check(value)

    def test_phase_generation_and_binding_must_match_original_edit(self):
        for patch in ({'capture_generation': True}, {'capture_generation': 3},
                      {'material_binding': 'afterBindings'}, {'capture_state': 'applied'}):
            with self.subTest(patch=patch):
                value = deepcopy(self.value)
                value['captures'][0].update(patch)
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_mutable_image_requires_complete_unchanged_seal(self):
        for patch in ({'seal_verified': False}, {'copied_graph_unchanged': False},
                      {'private_field_fault_detected': False}, {'private_mapping_fault_detected': False},
                      {'private_seal_negative_checks': True}, {'private_seal_negative_checks': 2},
                      {'historical_live_fields_match_capture': 1}, {'verified_runtime_fields': 0}):
            with self.subTest(patch=patch):
                value = deepcopy(self.value)
                value['captures'][1].update(patch)
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_changed_generated_value_and_incomplete_exports_refuse(self):
        for kind in ('changed', 'missing'):
            with self.subTest(kind=kind):
                value = deepcopy(self.value)
                if kind == 'changed':
                    value['captures'][1]['generated_source_graph'] = source_graph('changed')
                else:
                    value['captures'][1]['generated_source_graph']['nodes'].pop()
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_missing_normalization_recovery_and_publication_claims_refuse(self):
        value = deepcopy(self.value)
        value['captures'][0]['private_normalization_restored'] = False
        with self.assertRaises(ValueError):
            self.check(value)
        for key in ('current_baseline_verified', 'write_authorized', 'store_called', 'native_merge_executor_available'):
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.check({**self.value, key: not self.value[key]})


if __name__ == '__main__':
    unittest.main()
