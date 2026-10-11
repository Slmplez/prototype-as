import tempfile
import unittest
from pathlib import Path

from bde_savepoint_audit import audit


class SavepointAuditTests(unittest.TestCase):
    def test_real_savepoint_route_is_present_but_not_authorized(self):
        root = Path(__file__).resolve().parents[1]
        result = audit(root / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl")
        self.assertTrue(result["savepoint_shape_verified"])
        self.assertTrue(result["savepoint_forward_shape_verified"])
        self.assertTrue(result["savepoint_restore_shape_verified"])
        self.assertTrue(result["savepoint_durable_write_route_verified"])
        self.assertFalse(result["durable_inverse_verified"])
        self.assertFalse(result["inverse_authorized"])

    def test_missing_method_blocks_audit(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "methods.jsonl"
            path.write_text("{}\n", encoding="utf-8")
            result = audit(path)
        self.assertFalse(result["savepoint_shape_verified"])
        self.assertTrue(result["missing_methods"])


if __name__ == "__main__":
    unittest.main()
