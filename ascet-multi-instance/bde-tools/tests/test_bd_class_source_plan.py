"""Refuse incomplete or misbound native source plans without authorizing writes."""
from copy import deepcopy
import unittest

from bd_class_tools import validate_source_plans
from bd_edit_journal import JournalError
from test_bd_source_inverse_oracle import source_graph, source_result


class SourcePlanContractTests(unittest.TestCase):
    def setUp(self):
        self.current = {'owners': [{'oid': 'owner', 'component': 'Trial_Owner',
                                   'scopes': {'Main': {'generation': 7}}}]}
        self.result = {'profile': 'class_persisted_source_inverse_plan_v1', 'mode': 'plan',
                       'oid': 'owner', 'component': 'Trial_Owner', 'generation': 7,
                       'model_setters_called': 0, 'store_called': False, 'write_authorized': False,
                       'native_merge_executor_available': False,
                       'schema': [{'native_class': 'SGTopGraphicsBlockDB'}],
                       'source_classes': {'SGTopGraphicsBlockDB': 1},
                       'plan': {'compatible': True, 'inputs_unchanged': True, 'conflicts': [],
                                'changed_paths': ['root/blocks/id:1'], 'preserved_paths': ['root/connections'],
                                'block_order_plans': [], 'merged_equals_original': False, 'merged_equals_current': False}}
        self.result['source_graphs'] = source_result()['source_graphs']
        self.raw = {'native_class_source_plans': [{'oid': 'owner', 'component': 'Trial_Owner', 'result': self.result}]}

    def refusal(self):
        with self.assertRaises(JournalError) as error:
            validate_source_plans(self.raw, self.current)
        self.assertEqual(error.exception.code, 'READ_INCOMPLETE')

    def test_compatible_plan_never_authorizes_model_mutation(self):
        before = deepcopy((self.raw, self.current))
        value = validate_source_plans(self.raw, self.current)
        self.assertTrue(value['all_sources_compatible'])
        self.assertFalse(value['write_authorized'])
        self.assertFalse(value['native_merge_executor_available'])
        self.assertEqual((self.raw, self.current), before)

    def test_real_conflict_is_returned_as_unavailable_candidate(self):
        self.result['source_graphs']['current'] = self.result['source_graphs']['candidate'] = source_graph('third_party', 'moved')
        self.result['plan'].update(compatible=False, conflicts=[{'code': 'SOURCE_TOUCHED_VALUE_OR_ORDER_CONFLICT'}],
                                  merged_equals_current=True)
        self.assertFalse(validate_source_plans(self.raw, self.current)['all_sources_compatible'])

    def test_null_result_cannot_be_reported_as_success(self):
        self.raw['native_class_source_plans'][0]['result'] = None
        self.refusal()

    def test_missing_duplicate_and_foreign_owners_refuse(self):
        for rows in ([], [deepcopy(self.raw['native_class_source_plans'][0])] * 2,
                     [{'oid': 'foreign', 'component': 'Trial_Owner', 'result': self.result}]):
            with self.subTest(rows=rows):
                self.raw['native_class_source_plans'] = rows
                self.refusal()

    def test_nonhashable_owner_oids_refuse_with_a_typed_error(self):
        for wrong in ([], {}, True, None):
            with self.subTest(wrong=wrong):
                saved = self.raw['native_class_source_plans'][0]['oid']
                self.raw['native_class_source_plans'][0]['oid'] = wrong
                self.refusal()
                self.raw['native_class_source_plans'][0]['oid'] = saved
                saved = self.current['owners'][0]['oid']
                self.current['owners'][0]['oid'] = wrong
                self.refusal()
                self.current['owners'][0]['oid'] = saved

    def test_generation_owner_and_mode_rebinding_refuse(self):
        for field, wrong in (('generation', 8), ('generation', True), ('oid', 'foreign'),
                             ('component', 'Other'), ('component', 42), ('component', None), ('mode', 'schema')):
            with self.subTest(field=field, wrong=wrong):
                saved = self.result[field]
                self.result[field] = wrong
                self.refusal()
                self.result[field] = saved

    def test_full_graphs_stay_in_raw_evidence_and_only_fingerprints_reach_agent(self):
        value = validate_source_plans(self.raw, self.current)
        result = value['owners'][0]['result']
        self.assertNotIn('source_graphs', result)
        self.assertEqual(set(result['source_graph_sha256']), {'original', 'applied', 'current', 'candidate'})
        self.assertTrue(result['complete_source_oracle']['complete_values_verified'])

    def test_mutation_claims_and_missing_readonly_proofs_refuse(self):
        for field in ('model_setters_called', 'store_called', 'write_authorized', 'native_merge_executor_available'):
            with self.subTest(field=field):
                saved = self.result[field]
                self.result[field] = True
                self.refusal()
                self.result[field] = saved

    def test_partial_or_self_contradicting_candidate_refuses(self):
        plan = self.result['plan']
        for field, wrong in (('inputs_unchanged', False), ('conflicts', [{'code': 'CONFLICT'}]),
                             ('compatible', 1), ('changed_paths', [None]), ('block_order_plans', None),
                             ('merged_equals_original', 0)):
            with self.subTest(field=field):
                saved = plan[field]
                plan[field] = wrong
                self.refusal()
                plan[field] = saved


if __name__ == '__main__':
    unittest.main()
