import json
import tempfile
import unittest
from pathlib import Path

from bde_persistent_owner_unchanged_plan import main


class PersistentOwnerUnchangedPlanTests(unittest.TestCase):
    def test_requires_new_output_and_reproduces_frozen_candidate(self):
        audit = Path("analysis/bde-experiments/2026-10-07/bde-persistent-owners-prepare-live-05/audit.json")
        if not audit.exists():
            audit = Path("analysis/bde-experiments/2026-10-07/bde-persistent-owners-prepare-live-03/audit.json")
        if not audit.exists():
            self.skipTest("frozen online audit is unavailable")
        with tempfile.TemporaryDirectory() as temp:
            output = Path(temp) / "candidate.json"
            import sys
            old = sys.argv
            try:
                sys.argv = ["bde_persistent_owner_unchanged_plan", "--audit", str(audit), "--output", str(output)]
                self.assertEqual(main(), 0)
            finally:
                sys.argv = old
            result = json.loads(output.read_text(encoding="utf-8"))
            self.assertTrue(result["passed"])
            self.assertEqual(result["outgoing_changed"], False)
            self.assertEqual(result["inbound_patches"], 0)
            self.assertFalse(result["write_authorized"])


if __name__ == "__main__":
    unittest.main()
