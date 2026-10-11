import copy
from pathlib import Path
import unittest

from bd_commit_payload_diff import PayloadPatchConflict
from bde_commit_write_dispatch_audit import audit
from bde_commit_write_plan import WritePlanError, build_plan


ROOT = Path(__file__).resolve().parents[1]
RECOVERED = ROOT / (
    "analysis/bde-experiments/2026-10-07/"
    "bde-commit-control-increment-01/archive/unpacked/smalltalk-source/ASDBase.ic"
)
METHODS = ROOT / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
TOKEN = "edit_" + "a" * 64


def payload(data=(0, 1, 2, 3)):
    raw = list(data)
    return {"read_status": "record", "record_class": "CTreeSearchObjectRecord",
            "record_class_requested": "CTreeSearchObjectRecord", "fixed_size": 2,
            "blob_size": len(raw) - 2, "logical_size": len(raw), "allocated_size": len(raw) + 2,
            "global_id": [1] * 20, "query_key": [1] * 20, "actual_file_key": [1] * 20,
            "bytes": raw, "allocated_bytes": raw + [9, 9]}


class WritePlanTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.audit = audit(RECOVERED, METHODS)

    def test_plan_is_blocked_by_missing_native_proof(self):
        result = build_plan(payload(), payload((0, 8, 2, 3)), payload(), self.audit,
                            token=TOKEN, component_oid="component-test",
                            process_epoch="47348/test", isolated_component=True)
        self.assertEqual(result["status"], "blocked")
        self.assertIn("ctfil_leaf_semantics_proven", result["missing_gates"])
        self.assertIn("transaction_inverse_complete", result["missing_gates"])
        self.assertEqual(result["logical_ranges"][0]["offset"], 1)
        self.assertFalse(result["write_authorized"])
        self.assertEqual(result["native_calls"], 0)

    def test_plan_requires_isolation_and_epoch(self):
        with self.assertRaises(WritePlanError):
            build_plan(payload(), payload(), payload(), self.audit, token=TOKEN,
                       component_oid="component-test", process_epoch="47348/test",
                       isolated_component=False)
        with self.assertRaises(WritePlanError):
            build_plan(payload(), payload(), payload(), self.audit, token=TOKEN,
                       component_oid="component-test", process_epoch="",
                       isolated_component=True)

    def test_plan_preserves_three_way_conflict_failure(self):
        current = payload((0, 6, 2, 3))
        with self.assertRaises(PayloadPatchConflict):
            build_plan(payload(), payload((0, 8, 2, 3)), current, self.audit,
                       token=TOKEN, component_oid="component-test",
                       process_epoch="47348/test", isolated_component=True)

    def test_plan_rejects_untrusted_audit(self):
        bad = copy.deepcopy(self.audit)
        bad["profile"] = "other"
        with self.assertRaises(WritePlanError):
            build_plan(payload(), payload(), payload(), bad, token=TOKEN,
                       component_oid="component-test", process_epoch="47348/test",
                       isolated_component=True)


if __name__ == "__main__":
    unittest.main()
