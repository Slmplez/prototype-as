"""Distinct storage returns must remain distinct even when edge values are identical."""
from copy import deepcopy
import unittest

from bd_storage_witness import inspect_storage_witness
from bd_source_inverse_oracle import Node
from test_bd_source_dependencies import array, encode, number


class StorageWitnessTests(unittest.TestCase):
    def setUp(self):
        basic = Node('SGHierarchyGODB', 'fields', {'own': array([number(-1)])}, -1)
        node = lambda identifier: Node('SGLiteralGODB', 'fields', {'own': array([number(identifier)])}, identifier)
        edge = lambda: Node('SGConnectionGODB', 'fields', {'info': array([number(1), number(2), number(3), number(4)])})
        root = Node('SGTopGraphicsBlockDB', 'fields', {'graphicBlock': basic, 'blocks': array([node(1), node(2)]),
                    'connections': array([edge(), edge()]), 'others': array([])})
        self.graph = encode(root)
        self.scopes = {'Main': {'entries': [{'kind': kind, 'ref': ref, 'native_class': native}
                       for kind, ref, native in (('node', 'n1', 'SGLiteralGO'), ('node', 'n2', 'SGLiteralGO'),
                                                ('edge', 'e1', 'SGConnectionWrapperGO'), ('edge', 'e2', 'SGConnectionWrapperGO'))]}}
        self.value = {'profile': 'native_storage_return_witness_v1', 'oid': 'owner', 'generation': 7,
            'scope_count': 1, 'member_count': 4, 'native_storage_return_calls': 5,
            'expected_members': [{'scope': 'Main', 'native_key': 'Main/' + row['ref'],
                                  'kind': row['kind'], 'native_class': row['native_class']}
                                 for row in self.scopes['Main']['entries']],
            'source_graph': deepcopy(self.graph), 'complete_native_members': True, 'live_original_unchanged': True,
            'native_bindings_sealed': True,
            'model_setters_called': 0, 'store_called': False, 'write_authorized': False,
            'native_merge_executor_available': False, 'private_normalization_changes': [],
            'private_normalization_inverse_steps': 0, 'private_normalization_restored': True, 'witnesses': []}
        table = {row['id']: row for row in self.graph['nodes']}
        root_fields = dict(table[1]['fields'])
        cohorts = [('graphicBlock', [root_fields['graphicBlock']])]
        cohorts += [(key, table[root_fields[key][1]]['items']) for key in ('blocks', 'connections', 'others')]
        for cohort, refs in cohorts:
            for index, ref in enumerate(refs, 1):
                kind = 'scope_root' if cohort == 'graphicBlock' else 'edge' if cohort == 'connections' else 'node'
                native = 'SGHierarchyGO' if kind == 'scope_root' else 'SGConnectionWrapperGO' if kind == 'edge' else 'SGLiteralGO'
                key = None if kind == 'scope_root' else 'Main/' + ('e' if kind == 'edge' else 'n') + str(index)
                self.value['witnesses'].append({'scope': 'Main', 'cohort': cohort, 'origin': 'native_storage_return',
                    'kind': kind, 'native_key': key, 'native_class': native, 'storage_class': table[ref[1]]['native_class'],
                    'source_ref': ref[1], 'parent_ref': 1, 'native_parent_verified': True})

    def check(self, value=None):
        return inspect_storage_witness(self.value if value is None else value, 'owner', 7,
                                       expected_source=self.graph, expected_scopes=self.scopes)

    def test_identical_edge_values_keep_two_distinct_observed_returns(self):
        proof = self.check()
        self.assertEqual(proof['edge_witnesses'], 2)
        self.assertTrue(proof['complete_storage_return_correspondence_verified'])
        self.assertFalse(proof['native_merge_executor_available'])

    def test_equal_edge_values_cannot_replace_actual_return_identity(self):
        rows = [row for row in self.value['witnesses'] if row['kind'] == 'edge']
        rows[1]['source_ref'] = rows[0]['source_ref']
        with self.assertRaisesRegex(ValueError, 'duplicate or foreign'):
            self.check()

    def test_missing_return_and_foreign_parent_refuse(self):
        value = deepcopy(self.value)
        value['witnesses'].pop()
        with self.assertRaises(ValueError):
            self.check(value)
        value = deepcopy(self.value)
        value['witnesses'][-1]['parent_ref'] = 2
        with self.assertRaisesRegex(ValueError, 'parent differs'):
            self.check(value)

    def test_node_returns_must_match_the_audited_graphical_id(self):
        rows = [row for row in self.value['witnesses'] if row['kind'] == 'node']
        rows[0]['source_ref'], rows[1]['source_ref'] = rows[1]['source_ref'], rows[0]['source_ref']
        with self.assertRaisesRegex(ValueError, 'graphical identifier'):
            self.check()

    def test_foreign_member_native_class_and_cohort_refuse(self):
        for patch in ({'native_key': 'Main/e9'}, {'native_class': 'SGLiteralGO'}, {'cohort': 'blocks'}):
            with self.subTest(patch=patch):
                value = deepcopy(self.value)
                value['witnesses'][-1].update(patch)
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_native_catalog_must_match_independent_scope_observation(self):
        for patch in ({'native_key': 'Main/e9'}, {'native_class': 'UnknownGO'}, {'scope': 'Main/h1'}):
            with self.subTest(patch=patch):
                value = deepcopy(self.value)
                value['expected_members'][-1].update(patch)
                with self.assertRaises(ValueError):
                    self.check(value)

    def test_boolean_counts_and_generation_mismatch_refuse(self):
        for key, item in (('generation', 8), ('generation', True), ('scope_count', True),
                          ('member_count', True), ('native_storage_return_calls', True)):
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.check({**self.value, key: item})

    def test_source_equivalence_is_complete_and_not_a_native_boolean(self):
        self.value['source_graph']['nodes'][-1]['items'][-1] = list(number(5))
        with self.assertRaisesRegex(ValueError, 'complete source differs'):
            self.check()

    def test_normalization_without_actual_inverse_and_write_claim_refuse(self):
        for patch in ({'private_normalization_inverse_steps': 1}, {'private_normalization_restored': False},
                      {'native_bindings_sealed': False}, {'write_authorized': True},
                      {'native_merge_executor_available': True}, {'store_called': True}):
            with self.subTest(patch=patch), self.assertRaises(ValueError):
                self.check({**self.value, **patch})

    def test_hierarchy_assembly_cannot_claim_a_direct_native_return(self):
        self.value['witnesses'][-1]['origin'] = 'audited_hierarchy_storage'
        with self.assertRaisesRegex(ValueError, 'distinguished'):
            self.check()

    def test_retained_native_pairs_require_fault_checks_after_a_real_history_change(self):
        from test_bd_class_retained_runtime import RetainedRuntimeTests
        history = RetainedRuntimeTests()
        history.setUp()
        for row in history.value['captures']:
            phase = row['phase']
            history.sources[phase] = deepcopy(self.graph)
            row.update(expected_source_graph=deepcopy(self.graph), generated_source_graph=deepcopy(self.graph),
                       storage_witness={**deepcopy(self.value), 'generation': row['capture_generation']},
                       private_storage_binding_negative_checks=4, private_storage_binding_faults_restored=True)
        self.assertFalse(history.check()['captures'][1]['historical_live_fields_match_capture'])
        for patch in ({'private_storage_binding_negative_checks': True}, {'private_storage_binding_negative_checks': 3},
                      {'private_storage_binding_faults_restored': False}):
            with self.subTest(patch=patch):
                value = deepcopy(history.value)
                value['captures'][1].update(patch)
                with self.assertRaisesRegex(ValueError, 'actual private faults'):
                    history.check(value)


if __name__ == '__main__':
    unittest.main()
