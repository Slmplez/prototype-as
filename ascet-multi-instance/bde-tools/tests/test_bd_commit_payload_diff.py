import copy
import unittest

from bd_commit_payload_diff import (PayloadDiffError, PayloadPatchConflict,
                                    diff_payload, from_record, range_summaries,
                                    record_payload_diffs, three_way_patch, validate_payload)


def payload(data=(0, 1, 2, 3), tail=(9, 9)):
    raw = list(data)
    return {"read_status": "record", "record_class": "CTreeSearchObjectRecord",
            "record_class_requested": "CTreeSearchObjectRecord", "fixed_size": 2,
            "blob_size": len(raw) - 2, "logical_size": len(raw),
            "allocated_size": len(raw) + len(tail), "global_id": [1] * 20,
            "query_key": [1] * 20, "actual_file_key": [1] * 20,
            "bytes": raw, "allocated_bytes": raw + list(tail)}


class PayloadDiffTests(unittest.TestCase):
    def test_zero_diff_keeps_tail_out_of_logical_changes(self):
        row = diff_payload(payload(), payload())
        self.assertFalse(row["logical_changed"])
        self.assertFalse(row["allocation_tail_changed"])
        self.assertFalse(row["write_authorized"])

    def test_contiguous_ranges_are_exact(self):
        after = payload((0, 8, 7, 3))
        row = diff_payload(payload(), after)
        self.assertEqual(row["logical_ranges"], [{"offset": 1, "before": [1, 2],
            "after": [8, 7], "structural": False}])

    def test_length_change_is_structural_suffix(self):
        row = diff_payload(payload((0, 1, 2)), payload((0, 1, 2, 4)))
        self.assertEqual(row["logical_ranges"][-1], {"offset": 3, "before": [],
            "after": [4], "structural": True})

    def test_disjoint_current_edit_is_preserved(self):
        before = payload(); desired = payload((0, 8, 2, 3)); current = payload((7, 1, 2, 3))
        merged = three_way_patch(before, desired, current)
        self.assertEqual(merged["candidate"]["bytes"], [7, 8, 2, 3])
        self.assertTrue(merged["merged"])

    def test_overlapping_current_edit_fails_closed(self):
        before = payload(); desired = payload((0, 8, 2, 3)); current = payload((0, 6, 2, 3))
        with self.assertRaises(PayloadPatchConflict) as error:
            three_way_patch(before, desired, current)
        self.assertEqual(error.exception.conflicts[0]["code"], "PAYLOAD_RANGE_CONFLICT")

    def test_tail_change_is_separate_and_conflicts_when_current_tail_changed(self):
        before = payload(); desired = payload(tail=(4, 5)); current = payload(tail=(7, 8))
        with self.assertRaises(PayloadPatchConflict) as error:
            three_way_patch(before, desired, current)
        self.assertEqual(error.exception.conflicts[0]["code"], "PAYLOAD_ALLOCATION_TAIL_CONFLICT")

    def test_unrequested_current_tail_change_is_preserved(self):
        before = payload(); desired = payload((0, 8, 2, 3)); current = payload(tail=(7, 8))
        merged = three_way_patch(before, desired, current)
        self.assertEqual(merged["candidate"]["allocated_bytes"][-2:], [7, 8])

    def test_identity_and_schema_are_closed(self):
        changed = payload(); changed["global_id"] = [2] * 20
        with self.assertRaises(PayloadDiffError): diff_payload(payload(), changed)
        malformed = payload(); malformed["allocated_bytes"][0] = 10
        with self.assertRaises(PayloadDiffError): validate_payload(malformed)

    def test_candidate_is_detached_and_inverse_is_read_only(self):
        before = payload(); desired = payload((0, 8, 2, 3)); current = payload()
        merged = three_way_patch(before, desired, current)
        merged["candidate"]["bytes"][0] = 99
        self.assertEqual(current["bytes"], [0, 1, 2, 3])
        self.assertFalse(merged["inverse_authorized"])

    def test_resource_rows_project_to_per_role_exact_ranges(self):
        before = payload(); before["role"] = "owner"
        after = copy.deepcopy(before); after["bytes"][2] = 8; after["allocated_bytes"][2] = 8
        rows = record_payload_diffs([before], [after])
        self.assertEqual(rows[0]["role"], "owner")
        self.assertEqual(rows[0]["logical_ranges"][0]["offset"], 2)

    def test_resource_row_missing_payload_is_rejected(self):
        row = payload(); row.pop("bytes")
        with self.assertRaises(PayloadDiffError): from_record(row)

    def test_range_summary_omits_raw_values_but_keeps_exact_hashes(self):
        rows = range_summaries([0, 1, 2, 3], [0, 8, 2, 3])
        self.assertEqual(rows[0]["offset"], 1)
        self.assertEqual(rows[0]["before_length"], 1)
        self.assertNotIn("before", rows[0])


if __name__ == "__main__":
    unittest.main()
