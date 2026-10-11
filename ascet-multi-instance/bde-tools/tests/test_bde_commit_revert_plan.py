import copy
from pathlib import Path
import unittest

from bd_commit_payload_diff import PayloadPatchConflict
from bde_commit_revert_plan import RevertPlanError, build_revert_plan
from bde_commit_write_dispatch_audit import audit


ROOT = Path(__file__).resolve().parents[1]
RECOVERED = ROOT / (
    "analysis/bde-experiments/2026-10-07/"
    "bde-commit-control-increment-01/archive/unpacked/smalltalk-source/ASDBase.ic"
)
METHODS = ROOT / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
TOKEN = "edit_" + "b" * 64


def payload(data=(0, 1, 2, 3)):
    raw = list(data)
    return {"read_status": "record", "record_class": "CTreeSearchObjectRecord",
            "record_class_requested": "CTreeSearchObjectRecord", "fixed_size": 2,
            "blob_size": len(raw) - 2, "logical_size": len(raw), "allocated_size": len(raw) + 2,
            "global_id": [1] * 20, "query_key": [1] * 20, "actual_file_key": [1] * 20,
            "bytes": raw, "allocated_bytes": raw + [9, 9]}


class RevertPlanTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.audit = audit(RECOVERED, METHODS)
        cls.transaction = {"transaction_shape_verified": True,
                           "durable_inverse_verified": False,
                           "cross_process_atomic_verified": False}
        cls.savepoint = {"savepoint_shape_verified": True,
                         "savepoint_restore_shape_verified": True,
                         "durable_inverse_verified": False}

    def test_inverse_uses_after_as_base_and_preserves_unrelated_change(self):
        before = payload()
        after = payload((0, 8, 2, 3))
        current = payload((0, 8, 7, 3))
        result = build_revert_plan(before, after, current, self.audit,
                                   self.transaction, self.savepoint,
                                   token=TOKEN, component_oid="component-test",
                                   process_epoch="47348/test", isolated_component=True)
        self.assertEqual(result["status"], "blocked")
        self.assertEqual(result["candidate"]["bytes"], [0, 1, 7, 3])
        self.assertEqual(result["logical_ranges"][0]["offset"], 1)
        self.assertIn("durable_rollback_or_inverse_selector", result["missing_gates"])
        self.assertEqual(result["native_calls"], 0)
        self.assertFalse(result["inverse_authorized"])

    def test_inverse_conflicts_when_current_overlaps_edit(self):
        with self.assertRaises(PayloadPatchConflict):
            build_revert_plan(payload(), payload((0, 8, 2, 3)), payload((0, 6, 2, 3)),
                              self.audit, self.transaction, self.savepoint,
                              token=TOKEN, component_oid="component-test",
                              process_epoch="47348/test", isolated_component=True)

    def test_requires_isolation_and_nonempty_edit(self):
        with self.assertRaises(RevertPlanError):
            build_revert_plan(payload(), payload((0, 8, 2, 3)), payload((0, 8, 2, 3)),
                              self.audit, self.transaction, self.savepoint,
                              token=TOKEN, component_oid="component-test",
                              process_epoch="47348/test", isolated_component=False)
        with self.assertRaises(RevertPlanError):
            build_revert_plan(payload(), payload(), payload(), self.audit,
                              self.transaction, self.savepoint,
                              token=TOKEN, component_oid="component-test",
                              process_epoch="47348/test", isolated_component=True)

    def test_audits_never_grant_inverse_authorization(self):
        transaction = {"transaction_shape_verified": True,
                       "durable_inverse_verified": True,
                       "cross_process_atomic_verified": True}
        savepoint = {"savepoint_shape_verified": True,
                     "savepoint_restore_shape_verified": True,
                     "durable_inverse_verified": True}
        result = build_revert_plan(payload(), payload((0, 8, 2, 3)), payload((0, 8, 2, 3)),
                                   self.audit, transaction, savepoint,
                                   token=TOKEN, component_oid="component-test",
                                   process_epoch="47348/test", isolated_component=True)
        self.assertEqual(result["status"], "blocked")
        self.assertIn("audit_inverse_authorization", result["missing_gates"])
        self.assertFalse(result["inverse_authorized"])


if __name__ == "__main__":
    unittest.main()
