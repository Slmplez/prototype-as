"""Offline controls for census evidence. Synthetic records are NOT online proof."""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import unittest

from bd_reference_file_observation import ReferenceFileObservationError, validate


ROOT = Path(__file__).resolve().parents[1]
PROFILE_PATH = ROOT / "analysis/bde-experiments/2026-10-07/bde-reference-file-profile-live-07/profile.json"
PROFILE_HASH = "fbb8924e007877800d7c60363d6aadb7125220a926a7dab1d3b32e960cd97f26"
FAILED_PATH = ROOT / "analysis/bde-experiments/2026-10-07/bde-reference-file-capture-live-01/report.json"
FAILED_HASH = "48155e07f6eb9fa3f8fd8e236327115e2e48e0d3f862ca575c7b95e8dfc3ab24"
OFFSETS = {"isam": 172, "uerr": 168, "sysio": 170, "file": 176}


def gv_field(event, field, value):
    event[field] = value
    offset = OFFSETS[field]
    event["gv_raw"][offset:offset + 2] = list(value.to_bytes(2, "little"))


def synthetic_report(profile, count=2):
    """A self-consistent fabricated call transcript; no native scan is executed."""
    report = {
        "profile": "native_reference_file_observation_v1", "phase": "observational_census_match",
        "complete_before_authorized": False, "write_authorized": False, "inverse_authorized": False,
        "cross_process_atomic": False, "terminal_semantics_verified": False, "store_called": False,
        "commit_called": False, "model_setters_called": 0, "identity_before_checked": True,
        "identity_after_checked": True, "census_matches": True,
        "max_records": 100000, "max_record_bytes": 4194304, "max_total_payload_bytes": 134217728,
        "functions": deepcopy(profile["functions"]), "events": [], "records": [],
        "keys_first": [], "keys_second": [], "failures": [], "count_before": count,
        "count_after": count, "switch_result_is_original_instance": True,
    }
    for field in ("native_token", "component_oid", "generation", "library_class", "leaf_class", "file_class",
                  "unique_number", "key_length", "data_number", "index_number"):
        report[field] = profile[field]
    events = report["events"]

    def event(operation, result=0, stage="synthetic-offline"):
        entry = {"operation": operation, "sequence": len(events) + 1, "stage": stage,
                 "state": "observed", "gv_state": "observed", "gv_pointer": 4096,
                 "gv_pointer_class": "SmallInteger", "gv_raw": [0] * 512,
                 "isam": 0, "uerr": 0, "sysio": 0, "file": 0}
        if operation == "leaf switchInstance":
            entry["wrapper_return_class"] = "CTGVCTreestdFputFget"
        else:
            entry.update(native_return=result, return_class="SmallInteger")
        events.append(entry)
        return entry

    def terminal(entry, key):
        entry.update(terminal_kind="observed_zero_key_return" if key else "observed_nonzero_record_return",
                     terminal_semantics_verified=False)
        gv_field(entry, "uerr", 101 if key else 39)
        gv_field(entry, "isam", 101 if key else 39)
        return entry

    material = []
    for i in range(count):
        oid = bytes([i + 1]) + bytes(range(1, 20))
        attribute = "DBReferenceList" if i % 2 == 0 else "UnknownAttribute"
        name = attribute.encode("ascii")
        if attribute == "DBReferenceList":
            blob = 21
            payload = (1).to_bytes(4, "little") + b"\1" + bytes(range(20)) + b"\x81\x82\x83"
        else:
            blob = 4
            payload = b"\xff\xfe\x01\x02"
        raw = bytearray(60)
        raw[2:22] = oid
        raw[22:22 + len(name)] = name
        raw[56:60] = blob.to_bytes(4, "little")
        raw.extend(payload)
        semantic = oid + name
        # Fabricated transform output. This does not purport to implement TFRMKEY.
        key = semantic + bytes(53 - len(semantic))
        material.append((raw, oid, attribute, semantic, key, blob))
    event("leaf switchInstance")
    event("nbrOfKeyEntries:", count)

    def keys(pass_name):
        rows = report["keys_" + pass_name]
        for i, (_, _, _, _, key, _) in enumerate(material):
            read = event("firstKey:idxval:" if i == 0 else "nextKey:idxval:", 100 + i)
            read["pass"] = pass_name
            rows.append({"ordinal": i + 1, "position": 100 + i,
                         "event_sequence": read["sequence"], "key_bytes": list(key)})
        end = event("nextKey:idxval:" if count else "firstKey:idxval:")
        end["pass"] = pass_name
        return terminal(end, True)

    report["first_key_terminal"] = keys("first")
    cursor = event("firstRecord:recPtr:", 0 if count else 39)
    for i, (raw, oid, attribute, semantic, _, blob) in enumerate(material):
        length = event("vRecordLength:", len(raw))
        reread = event("rereadVRecord:recPtr:varLen:")
        report["records"].append({
            "ordinal": i + 1, "state": "record_captured", "allocated_length": len(raw),
            "cursor_event_sequence": cursor["sequence"], "length_event_sequence": length["sequence"],
            "reread_event_sequence": reread["sequence"], "raw_bytes": list(raw),
            "record_class": "CTreeVariableAttributeRecord", "fixed_size": 60,
            "declared_blob_size": blob, "global_id": list(oid), "attribute": attribute,
            "semantic_key": list(semantic),
        })
        cursor = event("nextRecord:recPtr:", 39 if i + 1 == count else 0)
    report["record_terminal"] = terminal(cursor, False)
    for row, (_, _, _, _, key, _) in zip(report["records"], material):
        transform = event("transformKey:target:", 8192)
        row.update(transformed_key=list(key), transform_event_sequence=transform["sequence"])
    report["second_key_terminal"] = keys("second")
    event("nbrOfKeyEntries:", count)
    report.update(records_observed=count, first_keys_observed=count, second_keys_observed=count,
                  reserved_payload_bytes=len(events) * 512 + count * 3 * 53 +
                  sum(len(raw) + len(semantic) for raw, _, _, semantic, _, _ in material))
    return report


class ReferenceFileObservationTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.inputs = {}
        for name, path, wanted in (("profile", PROFILE_PATH, PROFILE_HASH), ("failed", FAILED_PATH, FAILED_HASH)):
            raw = path.read_bytes()
            if hashlib.sha256(raw).hexdigest() != wanted:
                raise AssertionError("Sealed evidence changed: " + str(path))
            cls.inputs[name] = json.loads(raw)

    def setUp(self):
        self.profile = deepcopy(self.inputs["profile"])
        self.report = synthetic_report(self.profile)

    def rejected(self, report=None, profile=None):
        with self.assertRaises(ReferenceFileObservationError):
            validate(self.report if report is None else report, self.profile if profile is None else profile)

    def test_synthetic_complete_census_retains_every_authority_limit_and_inputs(self):
        before = deepcopy((self.report, self.profile))
        result = validate(self.report, self.profile)
        self.assertTrue(result["passed"])
        self.assertEqual(result["records"], 2)
        self.assertEqual(result["tag1_reference_payload_records"], 1)
        self.assertEqual(result["opaque_attribute_names"], ["UnknownAttribute"])
        for field in ("terminal_semantics_verified", "complete_before_authorized", "write_authorized",
                      "inverse_authorized", "cross_process_atomic", "epoch_verified_by_this_validator",
                      "transform_algorithm_independently_verified"):
            self.assertIs(result[field], False)
        self.assertEqual((self.report, self.profile), before)

    def test_empty_synthetic_census_is_observation_not_authoritative_absence(self):
        result = validate(synthetic_report(self.profile, 0), self.profile)
        self.assertTrue(result["passed"])
        self.assertEqual(result["events"], 6)
        self.assertFalse(result["complete_before_authorized"])

    def test_actual_frozen_switch_failure_is_valid_failure_and_never_pass(self):
        result = validate(deepcopy(self.inputs["failed"]), self.profile)
        self.assertFalse(result["passed"])
        self.assertEqual(result["phase"], "failed_incomplete")
        self.assertEqual(result["events"], 0)

    def test_raw_oid_and_attribute_corruption_are_rejected(self):
        for index in (2, 22):
            report = deepcopy(self.report); report["records"][0]["raw_bytes"][index] ^= 1
            with self.subTest(index=index): self.rejected(report)

    def test_declared_blob_header_and_semantic_key_must_match(self):
        for field in ("declared_blob_size", "semantic_key"):
            report = deepcopy(self.report)
            if field == "declared_blob_size": report["records"][0][field] += 1
            else: report["records"][0][field][0] ^= 1
            with self.subTest(field=field): self.rejected(report)

    def test_full_reference_length_is_count_based_not_declared_prefix(self):
        report = deepcopy(self.report)
        row = report["records"][0]
        old = row["allocated_length"]
        row["raw_bytes"] = row["raw_bytes"][:60 + row["declared_blob_size"]]
        row["allocated_length"] = len(row["raw_bytes"])
        report["events"][row["length_event_sequence"] - 1]["native_return"] = row["allocated_length"]
        report["reserved_payload_bytes"] -= old - row["allocated_length"]
        self.rejected(report)

    def test_reference_count_cannot_overrun_raw_bytes(self):
        self.report["records"][0]["raw_bytes"][60:64] = list((10000).to_bytes(4, "little"))
        self.rejected()

    def test_unknown_reference_tag_stays_opaque_with_full_raw_bytes(self):
        self.report["records"][0]["raw_bytes"][64] = 99
        result = validate(self.report, self.profile)
        self.assertTrue(result["passed"])
        self.assertIn("DBReferenceList", result["opaque_attribute_names"])
        self.assertEqual(result["tag1_reference_payload_records"], 0)

    def test_duplicated_original_unique_key_rejected(self):
        self.report["keys_first"][1]["key_bytes"] = self.report["keys_first"][0]["key_bytes"][:]
        self.rejected()

    def test_genuine_census_mismatch_report_is_retained_as_failed_observation(self):
        self.report["keys_second"][1]["key_bytes"][0] ^= 16
        self.report.update(phase="observational_census_mismatch", census_matches=False)
        result = validate(self.report, self.profile)
        self.assertFalse(result["passed"])
        self.assertFalse(result["census_matches"])

    def test_census_match_claim_cannot_hide_missing_or_changed_key(self):
        for mode in ("changed", "missing"):
            report = deepcopy(self.report)
            if mode == "changed": report["keys_second"][1]["key_bytes"][0] ^= 16
            else: report["keys_second"].pop()
            with self.subTest(mode=mode): self.rejected(report)

    def test_event_sequence_gap_and_wrong_row_event_reference_rejected(self):
        report = deepcopy(self.report); report["events"][3]["sequence"] += 1; self.rejected(report)
        report = deepcopy(self.report)
        report["records"][1]["length_event_sequence"] = report["records"][0]["length_event_sequence"]
        self.rejected(report)

    def test_duplicate_transform_or_failure_cannot_supply_two_rows(self):
        report = deepcopy(self.report)
        report["records"][1]["transform_event_sequence"] = report["records"][0]["transform_event_sequence"]
        self.rejected(report)
        report = deepcopy(self.report)
        report["events"][report["records"][0]["transform_event_sequence"] - 1]["native_return"] = 0
        self.rejected(report)

    def test_failed_reread_is_not_a_complete_record(self):
        row = self.report["records"][0]
        self.report["events"][row["reread_event_sequence"] - 1]["native_return"] = 101
        self.rejected()

    def test_unknown_inflight_event_cannot_be_complete(self):
        self.report["events"][-1]["state"] = "sent"
        self.rejected()

    def test_immediate_gv_fields_must_equal_raw_struct_bytes(self):
        for field in OFFSETS:
            report = deepcopy(self.report)
            report["events"][0]["gv_raw"][OFFSETS[field]] ^= 1
            with self.subTest(field=field): self.rejected(report)

    def test_all_zero_gv_termination_cannot_become_finished_v1(self):
        for name in ("first_key_terminal", "record_terminal", "second_key_terminal"):
            report = deepcopy(self.report)
            for field in ("isam", "uerr", "sysio"): gv_field(report[name], field, 0)
            with self.subTest(name=name): self.rejected(report)

    def test_non_eof_error_remains_unclassified_even_if_census_matches(self):
        gv_field(self.report["record_terminal"], "isam", 42)
        gv_field(self.report["record_terminal"], "uerr", 42)
        self.report["record_terminal"]["native_return"] = 42
        result = validate(self.report, self.profile)
        self.assertTrue(result["census_matches"])
        self.assertFalse(result["terminal_semantics_verified"])
        self.assertFalse(result["complete_before_authorized"])

    def test_v2_unknown_zero_gv_allows_only_observational_census(self):
        self.report["profile"] = "native_reference_file_observation_v2"
        for name in ("first_key_terminal", "record_terminal", "second_key_terminal"):
            terminal = self.report[name]
            for field in ("isam", "uerr", "sysio"): gv_field(terminal, field, 0)
            terminal["terminal_diagnostic"] = "unclassified_zero_gv"
        result = validate(self.report, self.profile)
        self.assertTrue(result["census_matches"])
        self.assertEqual(result["unknown_terminal_count"], 3)
        self.assertEqual(result["zero_gv_terminal_count"], 3)
        self.assertFalse(result["complete_before_authorized"])
        self.assertFalse(result["terminal_semantics_verified"])

    def test_v2_terminal_diagnostic_cannot_disagree_with_bytes(self):
        self.report["profile"] = "native_reference_file_observation_v2"
        for name in ("first_key_terminal", "record_terminal", "second_key_terminal"):
            self.report[name]["terminal_diagnostic"] = "unclassified_zero_gv"
        self.rejected()

    def test_complete_transcript_with_postguard_failure_preserves_census_but_fails(self):
        self.report.update(phase="failed_incomplete", identity_after_checked=False,
                           failures=[{"stage": "post-identity", "message": "Original PF dynamic bytes changed"}])
        result = validate(self.report, self.profile)
        self.assertFalse(result["passed"])
        self.assertTrue(result["census_matches"])
        self.assertEqual(result["unknown_terminal_count"], 3)

    def test_unknown_and_missing_lists_rejected(self):
        for field in ("events", "records", "keys_first", "keys_second", "failures"):
            report = deepcopy(self.report); del report[field]
            with self.subTest(field=field): self.rejected(report)

    def test_bool_is_not_int_in_counts_bytes_slots_or_limits(self):
        mutations = [
            lambda r: r.update(generation=True),
            lambda r: r.update(count_before=True),
            lambda r: r.update(max_records=True),
            lambda r: r["events"][0].update(sequence=True),
            lambda r: r["events"][0]["gv_raw"].__setitem__(0, False),
            lambda r: r["events"][0].update(gv_pointer=True),
            lambda r: r["records"][0]["raw_bytes"].__setitem__(0, False),
            lambda r: r["functions"][0]["platform_function_bytes"].__setitem__(0, False),
        ]
        for mutation in mutations:
            report = deepcopy(self.report); mutation(report)
            with self.subTest(mutation=mutation): self.rejected(report)

    def test_all_unauthorized_authority_flags_rejected(self):
        for flag in ("complete_before_authorized", "write_authorized", "inverse_authorized", "cross_process_atomic",
                     "terminal_semantics_verified", "store_called", "commit_called"):
            report = deepcopy(self.report); report[flag] = True
            with self.subTest(flag=flag): self.rejected(report)

    def test_token_oid_and_generation_binding_rejected(self):
        for field, value in (("native_token", "edit_" + "1" * 64), ("component_oid", "foreign"), ("generation", 999)):
            report = deepcopy(self.report); report[field] = value
            with self.subTest(field=field): self.rejected(report)

    def test_gv_profile_pool_offset_changes_rejected(self):
        self.profile["gv_methods"][1]["literals"][0]["value"] += 2
        self.rejected()

    def test_dynamic_native_function_bytes_cannot_be_normalized_away(self):
        self.report["functions"][0]["platform_function_bytes"][0] = 123
        self.rejected()

    def test_capacity_and_reserved_payload_claims_rejected(self):
        for value in (0, self.report["reserved_payload_bytes"] + 1, 134217729):
            report = deepcopy(self.report); report["reserved_payload_bytes"] = value
            with self.subTest(value=value): self.rejected(report)

    def test_partial_cannot_be_promoted_by_changing_only_phase(self):
        report = deepcopy(self.inputs["failed"])
        report.update(phase="observational_census_match", census_matches=True)
        self.rejected(report)


if __name__ == "__main__":
    unittest.main()
