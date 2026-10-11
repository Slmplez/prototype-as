"""Ensure latency reporting cannot hide failures in the complete functional scope."""
import json
from pathlib import Path
import unittest

from bde_eval_report import assemble


class FunctionalDeliveryPolicyTests(unittest.TestCase):
    def setUp(self):
        self.policy = json.loads((Path(__file__).resolve().parents[1] /
            'docs/bde-tools-eval-policy.json').read_text(encoding='utf-8'))

    def test_historical_latency_failure_is_reported_without_blocking_case(self):
        result = assemble(self.policy, {'PERF-02': {'status': 'fail',
            'missing_required': ['Historical sample exceeds 1000ms']}})
        self.assertFalse(result['performance_limits_block_delivery'])
        self.assertEqual(result['reporting_statuses']['fail'], 1)
        self.assertEqual(result['delivery_statuses']['fail'], 0)
        self.assertFalse(next(row for row in result['cases']
            if row['case_id'] == 'PERF-02')['required_for_delivery'])
        self.assertFalse(result['complete'])

    def test_functional_failure_remains_blocking_despite_latency_policy(self):
        result = assemble(self.policy, {'EDIT-01': {'status': 'fail',
            'missing_required': ['Wrong input pin']}, 'REVERT-03': {'status': 'blocked',
            'missing_required': ['Original object remains unrestored']}})
        self.assertEqual(result['delivery_statuses']['fail'], 1)
        self.assertEqual(result['delivery_statuses']['blocked'], 1)
        self.assertFalse(result['complete'])
        with self.assertRaises(ValueError):
            assemble(self.policy, {'EDIT-01': {'status': 'pass'}})

    def test_full_user_functional_scope_is_required_not_just_ordinary_edits(self):
        rows = {row['case_id']: row for row in assemble(self.policy, {})['cases']}
        for case in ('COST-01', 'FLOW-CREATE-01', 'FLOW-CLASS-01', 'FLOW-HIER-01',
                     'FLOW-BIND-01', 'FLOW-REVERT-01', 'FLOW-UI-01',
                     'CORE-COVERAGE-01', 'DOGE-01', 'AEB-CORE-01', 'PACKAGE-01'):
            with self.subTest(case=case):
                self.assertTrue(rows[case]['required_for_delivery'])
                self.assertEqual(rows[case]['status'], 'not_run')
        for case in ('PERF-01', 'PERF-02', 'PERF-03'):
            self.assertFalse(rows[case]['required_for_delivery'])


if __name__ == '__main__':
    unittest.main()
