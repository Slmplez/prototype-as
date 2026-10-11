import json
from pathlib import Path
import tempfile
import unittest

from bde_commit_write_dispatch_audit import audit


ROOT = Path(__file__).resolve().parents[1]
RECOVERED = ROOT / (
    "analysis/bde-experiments/2026-10-07/"
    "bde-commit-control-increment-01/archive/unpacked/smalltalk-source/ASDBase.ic"
)
METHODS = ROOT / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"


class WriteDispatchAuditTests(unittest.TestCase):
    def test_recovered_forwarders_and_leaf_metadata_are_found(self):
        result = audit(RECOVERED, METHODS)
        self.assertTrue(result["passed_static_dispatch"])
        self.assertTrue(result["method_table_evidence"]["passed"])
        self.assertTrue(result["leaf_bytecode_complete"])
        self.assertFalse(result["leaf_semantics_proven"])
        self.assertEqual(result["leaf_bytecode_evidence"]["missing"], [])
        self.assertEqual(result["leaf_bytecode_evidence"]["invalid"], [])
        self.assertFalse(result["ctfil_source_present"])
        self.assertFalse(result["leaf_body_complete"])
        self.assertTrue(result["commit_selector_present"])
        self.assertTrue(result["abort_selector_present"])
        self.assertFalse(result["rollback_selector_present"])
        self.assertFalse(result["transaction_inverse_complete"])
        self.assertFalse(result["write_authorized"])
        self.assertFalse(result["inverse_authorized"])
        self.assertEqual(result["native_calls"], 0)

    def test_missing_leaf_source_is_a_hard_unresolved_boundary(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            for name in ("ASDPersistenceController.st", "DBInterface32.st", "CTreeInterface.st"):
                (root / name).write_text((RECOVERED / name).read_text(encoding="utf-8"), encoding="utf-8")
            result = audit(root, METHODS)
            self.assertFalse(result["ctfil_source_present"])
            self.assertFalse(result["transaction_inverse_complete"])
            self.assertFalse(result["write_authorized"])

    def test_result_is_json_serializable(self):
        result = audit(RECOVERED, METHODS)
        json.dumps(result, ensure_ascii=False)


if __name__ == "__main__":
    unittest.main()
