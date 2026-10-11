"""Private runtime patch proofs must expose partial source matches and refuse false authority."""
from copy import deepcopy
import unittest

from bd_class_runtime_patch import inspect_runtime_patch, created_formal_alias
from test_bd_source_inverse_oracle import source_graph


class RuntimePatchTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'd' * 64
        self.source = source_graph('candidate')
        self.scopes = {'Main': {'entries': [{'ref': 'p1', 'kind': 'pin'}]}}
        self.value = {'profile': 'class_current_runtime_patch_v1', 'token': self.token, 'oid': 'owner',
            'generation': 3, 'selector': ['Main', 'bytes:01', 'CreatedInput', 'cont'],
            'definition_oid': 'definition', 'no_graphical_target_required': False,
            'created_formal_alias': 'bytes:02', 'created_native_identity_verified': True,
            'targets': [{'kind': 'pin', 'native_key': 'Main/p1'}],
            'actual_private_changes': [{'kind': 'collection', 'native_class': 'OrderedCollection',
                'native_key': None, 'index': 0, 'before_size': 3, 'after_size': 2}],
            'private_inverse_steps': 1, 'private_graph_restored': True, 'live_original_unchanged': True,
            'expected_source_graph': deepcopy(self.source), 'generated_source_graph': deepcopy(self.source),
            'runtime_candidate_matches': True, 'model_setters_called': 0, 'store_called': False,
            'write_authorized': False, 'native_merge_executor_available': False}

    def check(self, value=None):
        return inspect_runtime_patch(self.value if value is None else value, self.token, 'owner', 3,
                                     expected_source=self.source, expected_scopes=self.scopes)

    def test_complete_values_and_exact_targets_are_checked(self):
        proof = self.check()
        self.assertTrue(proof['complete_candidate_source_matches'])
        self.assertFalse(proof['native_merge_executor_available'])

    def test_partial_native_patch_is_reported_as_incomplete(self):
        self.value.update(generated_source_graph=source_graph('different'), runtime_candidate_matches=False)
        self.assertFalse(self.check()['complete_candidate_source_matches'])

    def test_native_match_flag_cannot_replace_complete_value_comparison(self):
        self.value['generated_source_graph'] = source_graph('different')
        with self.assertRaisesRegex(ValueError, 'disagrees'):
            self.check()

    def test_matching_foreign_candidate_cannot_replace_expected_source(self):
        self.value.update(expected_source_graph=source_graph('foreign'), generated_source_graph=source_graph('foreign'))
        with self.assertRaisesRegex(ValueError, 'independent merged candidate'):
            self.check()

    def test_duplicate_foreign_and_wrong_kind_targets_refuse(self):
        for targets in (self.value['targets'] * 2, [{'kind': 'pin', 'native_key': 'Main/p2'}],
                        [{'kind': 'edge', 'native_key': 'Main/e1'}], [{'kind': 'node', 'native_key': 'Main/p1'}]):
            with self.subTest(targets=targets), self.assertRaises(ValueError):
                self.check({**self.value, 'targets': targets})

    def test_missing_diff_inverse_and_restoration_refuse(self):
        for patch in ({'actual_private_changes': []}, {'private_inverse_steps': True},
                      {'private_inverse_steps': 0}, {'private_graph_restored': False}, {'live_original_unchanged': False}):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                self.check({**self.value, **patch})

    def test_retained_patch_is_explicit_and_does_not_claim_private_restoration(self):
        self.value.update(private_graph_restored=False, private_inverse_steps=0)
        with self.assertRaises(ValueError):
            self.check()
        proof = inspect_runtime_patch(self.value, self.token, 'owner', 3,
            expected_source=self.source, expected_scopes=self.scopes, retained=True)
        self.assertFalse(proof['private_graph_restored'])
        self.assertFalse(proof['write_authorized'])
        self.value['private_inverse_steps'] = 1
        with self.assertRaises(ValueError):
            inspect_runtime_patch(self.value, self.token, 'owner', 3,
                expected_source=self.source, expected_scopes=self.scopes, retained=True)

    def test_retained_patch_still_requires_complete_source_and_actual_effects(self):
        self.value.update(private_graph_restored=False, private_inverse_steps=0)
        for fields in ({'actual_private_changes': []}, {'generated_source_graph': source_graph('different')},
                       {'store_called': True}, {'private_graph_restored': True}):
            with self.subTest(fields=fields), self.assertRaises(ValueError):
                inspect_runtime_patch({**self.value, **fields}, self.token, 'owner', 3,
                    expected_source=self.source, expected_scopes=self.scopes, retained=True)

    def test_undrawn_definition_requires_independent_complete_noop_proof(self):
        self.value.update(definition_oid='owner', no_graphical_target_required=True, targets=[],
                          actual_private_changes=[], private_inverse_steps=0)
        proof = inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source,
                                      expected_current_source=self.source, expected_definition_oid='owner')
        self.assertTrue(proof['no_graphical_target_required'])
        self.assertTrue(proof['complete_candidate_source_matches'])
        for fields in ({'expected_definition_oid': 'foreign', 'expected_current_source': self.source},
                       {'expected_definition_oid': 'owner'},
                       {'expected_definition_oid': 'owner', 'expected_current_source': source_graph('changed')}):
            with self.subTest(fields=fields), self.assertRaises(ValueError):
                inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source, **fields)

    def test_caller_cannot_skip_required_targets_with_a_noop_flag(self):
        self.value.update(no_graphical_target_required=True, targets=[], actual_private_changes=[], private_inverse_steps=0)
        with self.assertRaisesRegex(ValueError, 'Empty patch'):
            inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source,
                                  expected_current_source=self.source, expected_definition_oid='definition')

    def test_definition_noop_still_records_and_restores_native_cache_side_effects(self):
        self.value.update(definition_oid='owner', no_graphical_target_required=True, targets=[])
        proof = inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source,
                                      expected_current_source=self.source, expected_definition_oid='owner')
        self.assertEqual(proof['private_inverse_steps'], 1)
        self.value['private_inverse_steps'] = 0
        with self.assertRaisesRegex(ValueError, 'Actual private'):
            inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source,
                                  expected_current_source=self.source, expected_definition_oid='owner')

    def test_wrong_generation_slot_and_publication_claim_refuse(self):
        for patch in ({'generation': True}, {'generation': 4}, {'selector': ['a', 'b', 'c', 'return']},
                      {'created_native_identity_verified': False}, {'created_formal_alias': 'invalid'},
                      {'write_authorized': True}, {'store_called': True}, {'native_merge_executor_available': True}):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                self.check({**self.value, **patch})

    def test_created_alias_must_match_the_actual_edit_observation(self):
        with self.assertRaisesRegex(ValueError, 'selector required'):
            inspect_runtime_patch(self.value, self.token, 'owner', 3, expected_source=self.source,
                                  expected_scopes=self.scopes, expected_formal_alias='bytes:03')

    def test_creation_wal_rejects_replacement_of_an_existing_formal(self):
        old = {'alias': 'bytes:10', 'model_type': 'cont', 'name': 'calc/OldInput'}
        new = {'alias': 'bytes:02', 'model_type': 'cont', 'name': 'calc/CreatedInput'}
        before = {'observation': {'signature': {'methods': [{'alias': 'bytes:01', 'arguments': [old]}]}}}
        applied = {'observation': {'signature': {'methods': [{'alias': 'bytes:01', 'arguments': [old, new]}]}}}
        self.assertEqual(created_formal_alias(before, applied, self.value['selector']), 'bytes:02')
        applied['observation']['signature']['methods'][0]['arguments'] = [new]
        with self.assertRaisesRegex(ValueError, 'original edit WAL'):
            created_formal_alias(before, applied, self.value['selector'])


if __name__ == '__main__':
    unittest.main()
