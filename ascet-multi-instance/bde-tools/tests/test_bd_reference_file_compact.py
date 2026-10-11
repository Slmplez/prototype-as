"""Lossless catalog controls using explicitly synthetic scan transcripts."""
from copy import deepcopy
import hashlib
import json
import unittest

from bd_reference_file_compact import ReferenceFileCompactError, compact, expand
from bd_reference_file_observation import validate
from test_bd_reference_file_observation import PROFILE_HASH, PROFILE_PATH, synthetic_report


class ReferenceFileCompactTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = PROFILE_PATH.read_bytes()
        if hashlib.sha256(raw).hexdigest() != PROFILE_HASH:
            raise AssertionError("Sealed native profile fixture changed")
        cls.profile = json.loads(raw)

    def setUp(self):
        self.original = synthetic_report(self.profile)
        self.original["profile"] = "native_reference_file_observation_v2"
        for field in ("first_key_terminal", "record_terminal", "second_key_terminal"):
            self.original[field]["terminal_diagnostic"] = "unclassified_nonzero_gv"
        self.value = compact(self.original)

    def rejected(self, value=None):
        with self.assertRaises(ReferenceFileCompactError):
            expand(self.value if value is None else value)

    def test_roundtrip_preserves_every_byte_field_and_event_without_mutation(self):
        before = deepcopy(self.original)
        value_before = deepcopy(self.value)
        restored = expand(self.value)
        self.assertEqual(restored, self.original)
        self.assertEqual(self.original, before)
        self.assertEqual(self.value, value_before)
        self.assertEqual(len(self.value["events"]), len(self.original["events"]))
        self.assertEqual(self.value["reserved_payload_bytes"], self.original["reserved_payload_bytes"])
        self.assertEqual(len(self.value["gv_images"]), 3)
        result = validate(restored, self.profile)
        self.assertTrue(result["census_matches"])
        self.assertFalse(result["complete_before_authorized"])

    def test_full_image_difference_outside_gv_error_offsets_stays_distinct(self):
        self.original["events"][0]["gv_raw"][500] = 123
        value = compact(self.original)
        self.assertEqual(len(value["gv_images"]), 4)
        self.assertEqual(expand(value), self.original)

    def test_duplicate_catalog_image_is_rejected_even_with_distinct_index(self):
        self.value["gv_images"].append(self.value["gv_images"][0][:])
        self.value["events"][0]["gv_image_index"] = len(self.value["gv_images"])
        self.rejected()

    def test_unreferenced_unique_catalog_image_is_rejected(self):
        image = self.value["gv_images"][0][:]; image[500] = 97
        self.value["gv_images"].append(image)
        self.rejected()

    def test_bool_zero_negative_and_out_of_range_indices_rejected(self):
        for index in (True, False, 0, -1, len(self.value["gv_images"]) + 1, 1.0, "1"):
            value = deepcopy(self.value); value["events"][0]["gv_image_index"] = index
            with self.subTest(index=index): self.rejected(value)

    def test_strict_catalog_extent_and_octets(self):
        for mutation in (lambda v: v["gv_images"][0].pop(),
                         lambda v: v["gv_images"][0].append(0),
                         lambda v: v["gv_images"][0].__setitem__(0, False),
                         lambda v: v["gv_images"][0].__setitem__(0, -1),
                         lambda v: v["gv_images"][0].__setitem__(0, 256)):
            value = deepcopy(self.value); mutation(value)
            with self.subTest(mutation=mutation): self.rejected(value)

    def test_raw_index_mix_and_missing_index_rejected(self):
        value = deepcopy(self.value); value["events"][0]["gv_raw"] = [0] * 512; self.rejected(value)
        value = deepcopy(self.value); del value["events"][0]["gv_image_index"]; self.rejected(value)
        original = deepcopy(self.original); original["events"][0]["gv_image_index"] = 1
        with self.assertRaises(ReferenceFileCompactError): compact(original)

    def test_different_terminal_index_or_dropped_field_rejected(self):
        value = deepcopy(self.value); value["first_key_terminal"]["gv_image_index"] = 1; self.rejected(value)
        value = deepcopy(self.value); del value["first_key_terminal"]["uerr"]; self.rejected(value)

    def test_terminals_and_events_can_share_objects_without_loss(self):
        terminal = self.original["first_key_terminal"]
        self.assertIs(terminal, self.original["events"][terminal["sequence"] - 1])
        restored = expand(compact(self.original))
        self.assertEqual(restored, self.original)

    def test_complete_section_cannot_be_omitted(self):
        for section in ("events", "records", "keys_first", "keys_second", "failures", "gv_images"):
            value = deepcopy(self.value); del value[section]
            with self.subTest(section=section): self.rejected(value)

    def test_event_order_and_bool_sequence_rejected(self):
        value = deepcopy(self.value); value["events"][0]["sequence"] = True; self.rejected(value)
        value = deepcopy(self.value); value["events"][0], value["events"][1] = value["events"][1], value["events"][0]; self.rejected(value)

    def test_partial_sent_event_requires_no_invented_gv_image(self):
        original = deepcopy(self.original)
        original["events"] = [{"sequence": 1, "operation": "firstRecord:recPtr:", "state": "sent", "stage": "records"}]
        original["records"] = []; original["keys_first"] = []; original["keys_second"] = []
        original["phase"] = "failed_incomplete"
        for terminal in ("first_key_terminal", "record_terminal", "second_key_terminal"): del original[terminal]
        value = compact(original)
        self.assertEqual(value["gv_images"], [])
        self.assertEqual(expand(value), original)

    def test_catalog_cannot_be_reused_after_different_byte_is_silently_merged(self):
        self.original["events"][0]["gv_raw"][500] = 42
        value = compact(self.original)
        first_index = value["events"][0]["gv_image_index"]
        # Force the unique first image to another image; the abandoned catalog entry detects the loss.
        value["events"][0]["gv_image_index"] = first_index + 1
        self.rejected(value)

    def test_version_boundary_is_explicit_and_not_an_implicit_upgrade(self):
        original = deepcopy(self.original); original["profile"] = "native_reference_file_observation_v1"
        with self.assertRaises(ReferenceFileCompactError): compact(original)
        value = deepcopy(self.value); value["profile"] = "native_reference_file_observation_v2"
        self.rejected(value)


if __name__ == "__main__":
    unittest.main()
