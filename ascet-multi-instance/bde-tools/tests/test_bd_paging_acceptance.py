"""Independent byte/identity oracles for offline Python paging acceptance."""
import json
from pathlib import Path
import tempfile
import unittest
import uuid
from unittest.mock import patch

import bd_service as service


class PagingAcceptanceTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.store = Path(temporary.name)
        for folder in ("documents", "cursors", "delivery"):
            (self.store / folder).mkdir()
        mocker = patch.object(service, "STORE", self.store)
        mocker.start()
        self.addCleanup(mocker.stop)
        for name in ("capture", "capture_locked", "run_process"):
            mocker = patch.object(service, name, side_effect=AssertionError("Paging cannot dispatch native I/O"))
            mocker.start()
            self.addCleanup(mocker.stop)

    @staticmethod
    def unpack(response):
        head, text = response["content"].split("\n\n", 1)
        return json.loads(head), text

    def cursor(self, original, **fields):
        row = service.load_record(original, "c_", "cursors")
        row.update(fields)
        row.pop("integrity_sha256")
        row["integrity_sha256"] = service.digest(row)
        ref = "c_" + uuid.uuid4().hex
        service.write_once(self.store / "cursors" / (ref + ".json"), row)
        return ref

    def test_utf8_exact_delivery_at_boundary_and_middle_budgets(self):
        texts = ["", "ASCII\n" * 3000, "信号🚀\\\"\r\n" * 2500,
                 "single-line-" + "💡" * 9000]
        for budget in (2048, 4096, 8192, 12288, 16384):
            for index, expected in enumerate(texts):
                with self.subTest(budget=budget, text=index):
                    page = service.paged(expected, {"observation": f"text-{index}"}, "session", budget)
                    chunks, stop, document = [], 0, None
                    while True:
                        self.assertLessEqual(len(page["content"].encode("utf-8")), budget)
                        header, chunk = self.unpack(page)
                        document = document or header["document"]
                        self.assertEqual(header["document"], document)
                        self.assertEqual(header["page"]["start_byte"], stop)
                        stop += len(chunk.encode("utf-8"))
                        self.assertEqual(header["page"]["end_byte"], stop)
                        self.assertEqual(header["observation"], f"text-{index}")
                        chunks.append(chunk)
                        if not header["page"]["has_more"]:
                            self.assertIsNone(header["page"]["next_cursor"])
                            self.assertEqual(header["delivery"]["status"], "complete")
                            self.assertEqual(header["delivery"]["delivered_bytes"], len(expected.encode("utf-8")))
                            break
                        page = service.resume(header["page"]["next_cursor"], "session")
                    self.assertEqual("".join(chunks).encode("utf-8"), expected.encode("utf-8"))

    def test_repeated_cursor_and_interleaved_documents_keep_identity(self):
        first, _ = self.unpack(service.paged("甲" * 5000, {"snapshot": "A"}, "session", 2048))
        other, _ = self.unpack(service.paged("乙" * 5000, {"snapshot": "B"}, "session", 2048))
        cursor = first["page"]["next_cursor"]
        second, text = self.unpack(service.resume(cursor, "session"))
        service.resume(other["page"]["next_cursor"], "session")
        repeated, repeated_text = self.unpack(service.resume(cursor, "session"))
        self.assertEqual(text, repeated_text)
        self.assertEqual(second["document"], first["document"])
        self.assertNotEqual(second["document"], other["document"])
        self.assertEqual(repeated["snapshot"], "A")
        for field in ("start_byte", "end_byte"):
            self.assertEqual(second["page"][field], repeated["page"][field])
        self.assertEqual(second["delivery"]["delivered_bytes"], repeated["delivery"]["delivered_bytes"])
        with self.assertRaises(service.ToolError) as caught:
            service.resume(cursor, "different-session")
        self.assertEqual(caught.exception.code, "CURSOR_SESSION_MISMATCH")

    def test_missing_byte_ranges_never_claim_complete(self):
        text = "x" * 16000
        first, _ = self.unpack(service.paged(text, {}, "session", 2048))
        last, chunk = self.unpack(service.resume(self.cursor(first["page"]["next_cursor"], offset=15900), "session"))
        self.assertFalse(last["page"]["has_more"])
        self.assertEqual(chunk, "x" * 100)
        self.assertEqual(last["delivery"]["status"], "partial")
        self.assertEqual(last["delivery"]["delivered_bytes"], first["page"]["end_byte"] + 100)
        self.assertLess(last["delivery"]["delivered_bytes"], last["delivery"]["total_bytes"])

    def test_corrupt_and_missing_records_refuse_without_new_cursor(self):
        for folder in ("cursors", "documents"):
            for missing in (False, True):
                with self.subTest(folder=folder, missing=missing):
                    head, _ = self.unpack(service.paged("🚀" * 5000, {}, "session", 2048))
                    ref = head["page"]["next_cursor"] if folder == "cursors" else head["document"]
                    target = self.store / folder / (ref + ".json")
                    if missing:
                        target.unlink()
                    else:
                        value = json.loads(target.read_text(encoding="utf-8"))
                        value["session"] = "tampered"
                        target.write_text(json.dumps(value), encoding="utf-8")
                    count = len(list((self.store / "cursors").iterdir()))
                    with self.assertRaises(service.ToolError):
                        service.resume(head["page"]["next_cursor"], "session")
                    self.assertEqual(len(list((self.store / "cursors").iterdir())), count)

    def test_invalid_offsets_and_budgets_refuse_without_new_cursor(self):
        head, _ = self.unpack(service.paged("信" * 6000, {}, "session", 2048))
        fields = [{"offset": -1}, {"offset": 1}, {"offset": 18001}, {"offset": True},
                  {"budget": 2047}, {"budget": 16385}, {"budget": True}]
        for changes in fields:
            with self.subTest(changes=changes):
                bad = self.cursor(head["page"]["next_cursor"], **changes)
                count = len(list((self.store / "cursors").iterdir()))
                with self.assertRaises(service.ToolError):
                    service.resume(bad, "session")
                self.assertEqual(len(list((self.store / "cursors").iterdir())), count)

    def test_oversized_envelope_is_explicit_failure(self):
        with self.assertRaises(service.ToolError) as caught:
            service.paged("payload", {"large_metadata": "信" * 3000}, "session", 2048)
        self.assertEqual(caught.exception.code, "BUDGET_TOO_SMALL")
        self.assertEqual(list((self.store / "cursors").iterdir()), [])


if __name__ == "__main__":
    unittest.main()
