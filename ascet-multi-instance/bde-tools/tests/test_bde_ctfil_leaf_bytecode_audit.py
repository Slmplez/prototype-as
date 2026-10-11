import json
from pathlib import Path
import unittest

from bde_ctfil_leaf_bytecode_audit import audit


ROOT = Path(__file__).resolve().parents[1]
METHODS = ROOT / "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"


class CTIFilLeafBytecodeAuditTests(unittest.TestCase):
    def test_all_leaf_bindings_and_dispatch_shapes_are_verified(self):
        result = audit(METHODS)
        self.assertTrue(result["leaf_bytecode_semantics_pattern_verified"])
        self.assertTrue(result["wrapper_dispatch_shape_verified"])
        self.assertTrue(result["leaf_dispatch_shape_verified"])
        self.assertFalse(result["source_semantics_proven"])
        self.assertFalse(result["native_leaf_semantics_proven"])
        self.assertEqual(set(result["missing_underlying_native_selectors"]), set(result["underlying_native_selectors"]))
        self.assertFalse(result["write_authorized"])
        self.assertFalse(result["inverse_authorized"])
        self.assertEqual(result["decode_errors"], [])

    def test_result_is_json_serializable(self):
        json.dumps(audit(METHODS), ensure_ascii=False)


if __name__ == "__main__":
    unittest.main()
