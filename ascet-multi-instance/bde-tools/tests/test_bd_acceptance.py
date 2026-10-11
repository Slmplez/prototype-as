"""Acceptance must reject partial, stale, skipped and incorrectly layered evidence."""
import copy
import json
from pathlib import Path
import tempfile
import unittest

import bde_acceptance as acceptance
from bde_acceptance_worker import RecordedResult


class AcceptanceVerdictTests(unittest.TestCase):
    def setUp(self):
        self.case = {"complete_specification": True, "unimplemented": [], "scenarios": [
            {"id": "ordinary", "adapter": "python_paging", "evidence_level": "live",
             "trials_required": 3}]}
        self.trials = [{"scenario": "ordinary", "trial_id": "trial-" + str(n),
                        "status": "pass", "evidence_level": "live"} for n in range(3)]

    def test_complete_case_needs_all_trials_and_exact_evidence_layer(self):
        self.assertEqual(acceptance.case_verdict(self.case, self.trials)[0], "pass")
        self.assertEqual(acceptance.case_verdict(self.case, self.trials[:2])[0], "not_run")
        for trial in self.trials:
            trial["evidence_level"] = "offline"
        self.assertEqual(acceptance.case_verdict(self.case, self.trials)[0], "not_run")

    def test_partial_definition_missing_adapter_and_stale_candidate_cannot_pass(self):
        self.case["complete_specification"] = False
        self.assertEqual(acceptance.case_verdict(self.case, self.trials)[0], "not_run")
        self.case["complete_specification"] = True
        self.case["scenarios"][0]["adapter"] = None
        self.assertEqual(acceptance.case_verdict(self.case, self.trials)[0], "not_run")
        self.assertEqual(acceptance.case_verdict(self.case, self.trials, False)[0], "not_run")

    def test_duplicate_trials_and_failed_extra_attempt_remain_failures(self):
        self.assertEqual(acceptance.case_verdict(self.case, [*self.trials, self.trials[0]])[0], "fail")
        failed = {**self.trials[0], "trial_id": "failed-fourth", "status": "fail"}
        self.assertEqual(acceptance.case_verdict(self.case, [*self.trials, failed])[0], "fail")

    def test_skips_empty_missing_and_zero_assertion_tests_cannot_pass(self):
        row = {"id": "required", "status": "pass", "assertion_count": 2}
        raw = {"kind": "python", "tests": [row], "exit_code": 0}
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "pass")
        self.assertEqual(acceptance.trial_verdict(["other"], raw)[0], "not_run")
        row["status"] = "skip"
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "not_run")
        row["status"], row["assertion_count"] = "pass", 0
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "not_run")
        raw["tests"] = []
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "not_run")

    def test_native_attempt_process_failure_and_duplicate_test_never_pass(self):
        raw = {"kind": "python", "tests": [{"id": "required", "status": "pass", "assertion_count": 1}]}
        raw["native_io_attempts"] = 1
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "fail")
        raw["native_io_attempts"], raw["exit_code"] = 0, 1
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "fail")
        raw["exit_code"] = 0
        raw["tests"].append(copy.deepcopy(raw["tests"][0]))
        self.assertEqual(acceptance.trial_verdict(["required"], raw)[0], "fail")

    def test_policy_ids_are_all_present_without_granting_unconnected_cases(self):
        policy = json.loads(acceptance.POLICY.read_text(encoding="utf-8"))
        spec = acceptance.specification(policy)
        self.assertEqual(sum(case["required"] for case in spec["cases"].values()), 43)
        self.assertEqual(sum(not case["required"] for case in spec["cases"].values()), 3)
        report = acceptance.recompute(spec, {}, True)
        self.assertFalse(report["complete"])
        self.assertEqual(report["required_statuses"]["not_run"], 43)
        for identifier in ("CONTRACT-01", "CONTRACT-02", "CONTRACT-03"):
            self.assertTrue(spec["cases"][identifier]["complete_specification"])
            self.assertTrue(spec["cases"][identifier]["scenarios"])
        self.assertFalse(spec["cases"]["AEB-CORE-01"]["complete_specification"])

    def test_reporting_failure_never_substitutes_for_functional_completion(self):
        cases = {"FUNCTION": {**self.case, "required": True},
                 "PERFORMANCE": {**self.case, "required": False}}
        failed = [{**trial, "status": "fail"} for trial in self.trials]
        report = acceptance.recompute({"policy": "fixture", "cases": cases},
                                      {"FUNCTION": self.trials, "PERFORMANCE": failed}, True)
        self.assertTrue(report["complete"])
        report = acceptance.recompute({"policy": "fixture", "cases": cases},
                                      {"PERFORMANCE": self.trials}, True)
        self.assertFalse(report["complete"])

    def test_junit_failures_skips_and_empty_file_are_not_silent_success(self):
        with tempfile.TemporaryDirectory() as directory:
            target = Path(directory) / "tests.xml"
            target.write_text('<testsuites><testsuite><testcase name="a"/><testcase name="b"><skipped/></testcase><testcase name="c"><failure>wrong pin</failure></testcase></testsuite></testsuites>', encoding="utf-8")
            rows = acceptance.junit_rows(target)
            self.assertEqual([row["status"] for row in rows], ["pass", "skip", "fail"])
            self.assertEqual(acceptance.trial_verdict(["a", "b", "c"], {"tests": rows})[0], "fail")


class WorkerEvidenceTests(unittest.TestCase):
    def test_subtest_failure_and_skip_are_preserved(self):
        class Example(unittest.TestCase):
            def test_subtests(self):
                for index in range(2):
                    with self.subTest(index=index):
                        self.assertEqual(index, 0)
            @unittest.skip("missing fixture")
            def test_skipped(self):
                pass
        result = RecordedResult()
        unittest.defaultTestLoader.loadTestsFromTestCase(Example).run(result)
        statuses = {row["id"].rsplit(".", 1)[-1]: row for row in result.rows}
        self.assertEqual(statuses["test_skipped"]["status"], "skip")
        self.assertEqual(statuses["test_subtests"]["status"], "fail")
        self.assertEqual([row["status"] for row in statuses["test_subtests"]["subtests"]], ["pass", "fail"])


if __name__ == "__main__":
    unittest.main()
