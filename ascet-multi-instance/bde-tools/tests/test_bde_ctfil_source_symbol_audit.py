import json
import tempfile
import unittest
from pathlib import Path

from bde_ctfil_source_symbol_audit import audit


class CtfilSourceSymbolAuditTests(unittest.TestCase):
    def test_real_evidence_is_split_into_provenance_layers(self):
        root = Path(__file__).resolve().parents[1]
        result = audit(
            root / "unpacked/smalltalk-source/ASDBase.ic/CTIFil.st",
            root / "analysis/strings/ASDBase.ic.tsv",
        )
        self.assertTrue(result["recovered_source_dispatch_shape_verified"])
        self.assertTrue(result["native_symbol_table_presence_verified"])
        self.assertFalse(result["native_leaf_semantics_proven"])
        self.assertFalse(result["write_authorized"])

    def test_missing_symbol_or_source_is_not_silent(self):
        root = Path(__file__).resolve().parents[1]
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / "CTIFil.st"
            strings = Path(tmp) / "strings.tsv"
            source.write_text("!CTIFil methodsFor: 'recovered'!\naddRecord:recPtr:\n^self\n! !\n", encoding="utf-8")
            strings.write_text("file_offset_hex\tascii_string\n0x00731bf8\taddRecord:recPtr:\n", encoding="utf-8")
            result = audit(source, strings)
        self.assertFalse(result["recovered_source_dispatch_shape_verified"])
        self.assertFalse(result["native_symbol_table_presence_verified"])


if __name__ == "__main__":
    unittest.main()
