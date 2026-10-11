import json
from pathlib import Path
import unittest

from bde_transaction_boundary_audit import audit


ROOT = Path(__file__).resolve().parents[1]
METHODS = ROOT / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"


class TransactionBoundaryAuditTests(unittest.TestCase):
    def test_commit_abort_and_post_write_shapes(self):
        result = audit(METHODS)
        self.assertTrue(result["transaction_shape_verified"])
        self.assertTrue(result["commit_forward_shape_verified"])
        self.assertTrue(result["abort_path_shape_verified"])
        self.assertTrue(result["write_post_state_shape_verified"])
        self.assertFalse(result["durable_inverse_verified"])
        self.assertFalse(result["cross_process_atomic_verified"])
        self.assertFalse(result["write_authorized"])
        self.assertFalse(result["inverse_authorized"])

    def test_result_is_json_serializable(self):
        json.dumps(audit(METHODS), ensure_ascii=False)


if __name__ == "__main__":
    unittest.main()
