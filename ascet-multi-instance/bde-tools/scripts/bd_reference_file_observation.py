"""Validate retained read-only CTree reference scans; never grant snapshot authority.

No file/native I/O is performed. The caller must independently validate the fixed
profile against original-image evidence and bind the process epoch. A matching
census is an observation, not proof of cross-process atomicity or verified EOF.
Header offsets follow CTreeAttributeRecord class>>initializeFieldOffsets:
global ID [2:22], attribute [22:55], blob size uint32 LE [56:60]. GV offsets
come from the fixed, initialized five pool bindings retained by profile v2.
"""
from __future__ import annotations

from collections.abc import Mapping
import json
import re
from typing import Any


class ReferenceFileObservationError(ValueError):
    """Evidence is malformed, contradictory, or claims unauthorized authority."""


MAX_RECORDS = 100_000
MAX_RECORD_BYTES = 4_194_304
MAX_PAYLOAD_BYTES = 134_217_728
GV_FIELDS = {
    "sisam_err": ("isam", "CTwngvSisamerrOffset", 172),
    "suerr_cod": ("uerr", "CTwngvSuerrcodOffset", 168),
    "ssysiocod": ("sysio", "CTwngvSsysiocodOffset", 170),
    "sisam_fil": ("file", "CTwngvSisamfilOffset", 176),
}
NATIVE_SELECTORS = {
    "firstRecord:recPtr:", "nextRecord:recPtr:", "firstKey:idxval:",
    "nextKey:idxval:", "getCTreeGV", "nbrOfKeyEntries:", "vRecordLength:",
    "rereadVRecord:recPtr:varLen:", "transformKey:target:", "switchCTree:",
}
EVENT_OPERATIONS = NATIVE_SELECTORS - {"getCTreeGV", "switchCTree:"} | {"leaf switchInstance"}
FALSE_FLAGS = ("complete_before_authorized", "write_authorized", "inverse_authorized",
               "cross_process_atomic", "terminal_semantics_verified", "store_called", "commit_called")


def _require(condition: bool, message: str) -> None:
    if not condition:
        raise ReferenceFileObservationError(message)


def _integer(value: Any, label: str, minimum: int | None = None, maximum: int | None = None) -> int:
    _require(type(value) is int, f"{label}: exact integer required (bool is not an integer)")
    _require(minimum is None or value >= minimum, f"{label}: below bound")
    _require(maximum is None or value <= maximum, f"{label}: above bound")
    return value


def _list(value: Any, label: str, limit: int = MAX_RECORDS) -> list[Any]:
    _require(type(value) is list and len(value) <= limit, f"{label}: complete bounded list required")
    return value


def _mapping(value: Any, label: str) -> Mapping[str, Any]:
    _require(isinstance(value, Mapping), f"{label}: object required")
    return value


def _bytes(value: Any, label: str, length: int | None = None, maximum: int = MAX_RECORD_BYTES) -> bytes:
    values = _list(value, label, maximum)
    _require(length is None or len(values) == length, f"{label}: exact byte extent required")
    _require(all(type(x) is int and 0 <= x <= 255 for x in values), f"{label}: exact octets required")
    return bytes(values)


def _same(left: Any, right: Any) -> bool:
    # JSON spelling keeps bool distinct from int, unlike Python container ==.
    return json.dumps(left, sort_keys=True, ensure_ascii=False, allow_nan=False) == json.dumps(
        right, sort_keys=True, ensure_ascii=False, allow_nan=False)


def _profile(profile: Mapping[str, Any]) -> dict[str, int]:
    _require(profile.get("profile") == "native_reference_file_profile_v2", "Fixed profile v2 required")
    for flag in ("gv_pool_bindings_rechecked", "method_identity_rechecked", "function_bytes_unchanged"):
        _require(profile.get(flag) is True, f"profile.{flag}: true required")
    for flag in ("scan_executed", "store_called", "commit_called", "write_authorized", "inverse_authorized",
                 "complete_before_authorized", "atomic_snapshot_verified", "key_duplicates"):
        _require(profile.get(flag) is False, f"profile.{flag}: false required")
    _require(_integer(profile.get("model_setters_called"), "profile.model_setters_called") == 0, "Profile setter claim")
    _require(isinstance(profile.get("native_token"), str) and
             re.fullmatch(r"edit_[0-9a-f]{64}", profile["native_token"]) is not None, "Exact native edit token required")
    _require(isinstance(profile.get("component_oid"), str) and bool(profile["component_oid"]), "Component OID required")
    _integer(profile.get("generation"), "profile.generation", 0)
    _integer(profile.get("profile_index"), "profile.profile_index", 1, 16)
    for field, expected in (("unique_number", 0), ("key_length", 53), ("gv_size", 512)):
        _require(_integer(profile.get(field), "profile." + field) == expected, "Fixed profile dimension differs: " + field)
    _integer(profile.get("data_number"), "profile.data_number", 0)
    _require(_integer(profile.get("index_number"), "profile.index_number", 1) == profile["data_number"] + 1,
             "Original unique index/data number relation differs")
    for field, expected in (("library_class", "CTreestdFputFgetDLL"), ("gv_class", "CTGVCTreestdFputFget"),
                            ("leaf_class", "CTreeLocalVariableAttributeInterface"), ("file_class", "CTSpaceCheckingIFil")):
        _require(profile.get(field) == expected, "Fixed profile class differs: " + field)
    functions = _list(profile.get("functions"), "profile.functions", 10)
    _require(len(functions) == 10 and {r.get("selector") for r in functions if isinstance(r, Mapping)} == NATIVE_SELECTORS,
             "All ten distinct fixed native dispatches required")
    for function in functions:
        _mapping(function, "profile.function")
        _bytes(function.get("platform_function_bytes"), "profile.PlatformFunction", maximum=65536)
        _bytes(function.get("bytecodes"), "profile.bytecodes", maximum=65536)
        _integer(function.get("method_slot"), "profile.method_slot", 1)
        _require(_integer(function.get("selector_index"), "profile.selector_index", 1, 65535) % 2 == 1,
                 "Original compact selector slot must be odd")
    methods = _list(profile.get("gv_methods"), "profile.gv_methods", 5)
    _require(len(methods) == 5 and {r.get("selector") for r in methods if isinstance(r, Mapping)} == set(GV_FIELDS) | {"fixedSize"},
             "Five unique fixed GV getters required")
    offsets: dict[str, int] = {}
    for method in methods:
        selector = method["selector"]
        expected_name, expected_value = (("CTwngvFixedSize", 512) if selector == "fixedSize" else GV_FIELDS[selector][1:])
        literals = _list(method.get("literals"), "profile.GV literals", 2)
        _require(len(literals) == (1 if selector == "fixedSize" else 2), "Complete fixed GV literal list required")
        literal = _mapping(literals[0], "profile.GV pool binding")
        _require(literal.get("kind") == "association" and literal.get("class") == "EsPoolAssociation" and
                 literal.get("key") == expected_name and
                 _integer(literal.get("value"), "profile.GV offset") == expected_value,
                 "Fixed initialized GV binding differs")
        if selector != "fixedSize":
            _require(_same(literals[1], {"kind": "atom", "class": "Symbol", "value": "#uint16At:"}), "GV accessor differs")
            offsets[GV_FIELDS[selector][0]] = expected_value
    return offsets


def validate(report: Mapping[str, Any], profile: Mapping[str, Any]) -> dict[str, Any]:
    """Return bounded observational proof or raise ReferenceFileObservationError.

    Valid failed/incomplete captures return passed=False and cannot be upgraded by
    matched prefixes. A complete traversal with matching census returns passed=True
    only for observational consistency; every authority/EOF/atomicity flag is false.
    The driver is responsible for epoch and original-image profile validation.
    """
    try:
        return _validate(_mapping(report, "report"), _mapping(profile, "profile"))
    except ReferenceFileObservationError:
        raise
    except (KeyError, TypeError, IndexError, UnicodeError, OverflowError, ValueError) as error:
        raise ReferenceFileObservationError(f"Malformed reference observation: {error}") from error


def _validate(report: Mapping[str, Any], profile: Mapping[str, Any]) -> dict[str, Any]:
    offsets = _profile(profile)
    report_version = report.get("profile")
    _require(report_version in ("native_reference_file_observation_v1", "native_reference_file_observation_v2"),
             "Fixed scanner report v1/v2 required")
    phase = report.get("phase")
    _require(phase in ("failed_incomplete", "incomplete", "observational_census_match", "observational_census_mismatch"),
             "Unknown observation phase")
    finished = phase.startswith("observational_")
    traversed = finished or all(field in report for field in (
        "count_after", "first_key_terminal", "record_terminal", "second_key_terminal"))
    for flag in FALSE_FLAGS:
        _require(report.get(flag) is False, f"{flag}: observation cannot authorize writes, EOF or atomicity")
    for flag in ("identity_before_checked", "identity_after_checked", "census_matches"):
        _require(type(report.get(flag)) is bool, flag + ": exact bool required")
    _require(_integer(report.get("model_setters_called"), "model_setters_called") == 0, "Model setter forbidden")
    for field in ("native_token", "component_oid", "generation", "library_class", "leaf_class", "file_class",
                  "unique_number", "key_length", "data_number", "index_number"):
        _require(_same(report.get(field), profile[field]), "Original profile binding differs: " + field)
    _require(_same(report.get("functions"), profile["functions"]), "Original full native function evidence differs")
    for field, expected in (("max_records", MAX_RECORDS), ("max_record_bytes", MAX_RECORD_BYTES),
                            ("max_total_payload_bytes", MAX_PAYLOAD_BYTES)):
        _require(_integer(report.get(field), field) == expected, "Fixed resource limit differs: " + field)
    reserved = _integer(report.get("reserved_payload_bytes"), "reserved_payload_bytes", 0, MAX_PAYLOAD_BYTES)
    events = _list(report.get("events"), "events", MAX_RECORDS * 6 + 6)
    records = _list(report.get("records"), "records")
    first = _list(report.get("keys_first"), "keys_first")
    second = _list(report.get("keys_second"), "keys_second")
    failures = _list(report.get("failures"), "failures", 32)
    for failure in failures:
        _mapping(failure, "failure")
        _require(isinstance(failure.get("stage"), str) and isinstance(failure.get("message"), str), "Complete failure reason required")
    for field, values in (("records_observed", records), ("first_keys_observed", first), ("second_keys_observed", second)):
        if finished or field in report:
            _require(_integer(report.get(field), field, 0, MAX_RECORDS) == len(values), "Observed count differs: " + field)
    payload = 0
    for index, event in enumerate(events, 1):
        _mapping(event, "event")
        _require(_integer(event.get("sequence"), "event.sequence", 1) == index, "Non-contiguous event sequence")
        _require(event.get("operation") in EVENT_OPERATIONS, "Unapproved primitive event")
        _require(isinstance(event.get("stage"), str), "Event stage required")
        _require(event.get("state") in ("sent", "returned", "observed"), "Unknown primitive state")
        if traversed:
            _require(event["state"] == "observed" and event.get("gv_state") == "observed", "Complete observation has unknown primitive")
        if "native_return" in event:
            _integer(event["native_return"], "event.native_return")
            _require(event.get("return_class") in ("SmallInteger", "LargePositiveInteger", "LargeNegativeInteger"), "Native integer class required")
        elif event["operation"] != "leaf switchInstance":
            _require(not traversed and event["state"] == "sent", "Returned primitive lacks native result")
        if "gv_raw" in event:
            raw = _bytes(event["gv_raw"], "GV raw", 512)
            payload += len(raw)
            _integer(event.get("gv_pointer"), "GV pointer")
            _require(event["gv_pointer"] != 0 and event.get("gv_state") == "observed", "Copied GV lacks valid observed pointer")
            for field, offset in offsets.items():
                _require(_integer(event.get(field), "GV " + field, 0, 65535) == int.from_bytes(raw[offset:offset + 2], "little"),
                         "GV field contradicts raw bytes: " + field)
        else:
            _require(not traversed, "Complete event lacks full GV bytes")

    def ref(value: Any, operation: str | tuple[str, ...]) -> Mapping[str, Any]:
        number = _integer(value, "row event reference", 1, len(events))
        event = events[number - 1]
        wanted = (operation,) if isinstance(operation, str) else operation
        _require(event["operation"] in wanted and event["state"] == "observed", "Row references wrong/incomplete primitive")
        return event

    def key_rows(rows: list[Any], pass_name: str) -> tuple[set[bytes], list[int]]:
        nonlocal payload
        found: set[bytes] = set()
        refs: list[int] = []
        for ordinal, key_row in enumerate(rows, 1):
            _mapping(key_row, "key row")
            _require(_integer(key_row.get("ordinal"), "key.ordinal", 1) == ordinal, "Key ordinals are not contiguous")
            key = _bytes(key_row.get("key_bytes"), "unique key", 53)
            payload += len(key)
            _require(key not in found, "Duplicate original unique key")
            found.add(key)
            event = ref(key_row.get("event_sequence"), "firstKey:idxval:" if ordinal == 1 else "nextKey:idxval:")
            position = _integer(key_row.get("position"), "key.position")
            _require(position != 0 and position == event.get("native_return") and event.get("pass") == pass_name,
                     "Key position/pass contradicts primitive")
            refs.append(event["sequence"])
        _require(refs == sorted(set(refs)), "Duplicate/out-of-order key event reference")
        return found, refs

    first_keys, first_refs = key_rows(first, "first")
    second_keys, second_refs = key_rows(second, "second")
    semantic_keys: set[bytes] = set()
    transformed_keys: set[bytes] = set()
    record_refs: list[tuple[int, int, int]] = []
    transform_refs: list[int] = []
    opaque_attributes: set[str] = set()
    reference_payloads = 0
    for ordinal, record in enumerate(records, 1):
        _mapping(record, "record")
        _require(_integer(record.get("ordinal"), "record.ordinal", 1) == ordinal, "Record ordinals are not contiguous")
        length = _integer(record.get("allocated_length"), "physical record length", 60, MAX_RECORD_BYTES)
        cursor = ref(record.get("cursor_event_sequence"), "firstRecord:recPtr:" if ordinal == 1 else "nextRecord:recPtr:")
        length_event = ref(record.get("length_event_sequence"), "vRecordLength:")
        _require(cursor.get("native_return") == 0 and length_event.get("native_return") == length,
                 "Record cursor/length contradicts primitive")
        _require(length_event["sequence"] == cursor["sequence"] + 1, "Length is not immediate cursor successor")
        if "raw_bytes" not in record:
            _require(not traversed and record.get("state") in ("allocated", "native_returned"), "Complete record raw payload missing")
            continue
        reread = ref(record.get("reread_event_sequence"), "rereadVRecord:recPtr:varLen:")
        _require(reread.get("native_return") == 0 and reread["sequence"] == length_event["sequence"] + 1,
                 "Full record reread failed or reordered")
        raw = _bytes(record["raw_bytes"], "full physical record", length)
        payload += len(raw)
        _require(record.get("record_class") == "CTreeVariableAttributeRecord" and
                 _integer(record.get("fixed_size"), "fixed_size") == 60, "Record schema differs")
        blob = _integer(record.get("declared_blob_size"), "declared blob size", 0, MAX_RECORD_BYTES)
        _require(blob == int.from_bytes(raw[56:60], "little") and 60 + blob <= length, "Raw blob-size header differs or extends beyond record")
        global_id = _bytes(record.get("global_id"), "record global ID", 20)
        _require(global_id == raw[2:22], "Record global ID contradicts raw header")
        attribute = record.get("attribute")
        _require(isinstance(attribute, str), "Raw attribute String required")
        attribute_bytes = attribute.encode("latin-1")
        _require(len(attribute_bytes) <= 33 and attribute_bytes == raw[22:55].split(b"\0", 1)[0], "Record attribute contradicts raw header")
        semantic = _bytes(record.get("semantic_key"), "semantic key", 20 + len(attribute_bytes))
        payload += len(semantic)
        _require(semantic == global_id + attribute_bytes and semantic not in semantic_keys, "Duplicate/incorrect physical scope key")
        semantic_keys.add(semantic)
        record_refs.append((cursor["sequence"], length_event["sequence"], reread["sequence"]))
        if attribute in ("DBReferenceList", "DBReferencedByList"):
            _require(len(raw) >= 64, "Reference count prefix missing")
            count = int.from_bytes(raw[60:64], "little")
            _require(count * 21 == blob and 64 + count * 21 <= length, "Count-based complete reference payload missing")
            if all(raw[64 + position * 21] == 1 for position in range(count)):
                reference_payloads += 1
            else:
                opaque_attributes.add(attribute)
        else:
            opaque_attributes.add(attribute)
        if "transformed_key" in record:
            transformed = _bytes(record["transformed_key"], "transformed key", 53)
            payload += len(transformed)
            _require(transformed not in transformed_keys, "Duplicate transformed key")
            transformed_keys.add(transformed)
            transform = ref(record.get("transform_event_sequence"), "transformKey:target:")
            _require(transform.get("native_return") != 0, "Failed transform cannot associate a key")
            transform_refs.append(transform["sequence"])
        else:
            _require(not traversed, "Complete record lacks its one native key transform")
        _require(record.get("state") == "record_captured", "Decoded record state differs")
    _require(transform_refs == sorted(set(transform_refs)), "Duplicate/out-of-order transform event reference")
    _require(payload <= reserved, "Reserved payload undercounts retained bytes")
    computed_match = False
    terminal_proof: dict[str, Any] = {}
    if traversed:
        _require(report["identity_before_checked"] is True, "Traversed observation lacks successful before identity guard")
        if finished:
            _require(report["identity_after_checked"] is True and not failures,
                     "Finished observation lacks successful after identity guard")
        _require(report.get("switch_result_is_original_instance") is True, "Original instance switch guard failed")
        before = _integer(report.get("count_before"), "count_before", 0, MAX_RECORDS)
        after = _integer(report.get("count_after"), "count_after", 0, MAX_RECORDS)
        expected_operations = ["leaf switchInstance", "nbrOfKeyEntries:"]
        expected_operations += ["firstKey:idxval:"] + ["nextKey:idxval:"] * len(first)
        expected_operations += ["firstRecord:recPtr:"]
        for _ in records:
            expected_operations += ["vRecordLength:", "rereadVRecord:recPtr:varLen:", "nextRecord:recPtr:"]
        expected_operations += ["transformKey:target:"] * len(records)
        expected_operations += ["firstKey:idxval:"] + ["nextKey:idxval:"] * len(second)
        expected_operations += ["nbrOfKeyEntries:"]
        _require([event["operation"] for event in events] == expected_operations, "Full primitive ordering/count differs")
        _require(events[1].get("native_return") == before and events[-1].get("native_return") == after, "Count evidence contradicts native returns")
        for count, event in ((before, events[1]), (after, events[-1])):
            if count == 0:
                _require(not any(event[field] for field in ("isam", "uerr", "sysio")), "Zero count with native error")
        first_end = 3 + len(first)
        record_start = first_end + 1
        record_end = record_start + 3 * len(records)
        transform_start = record_end + 1
        second_start = transform_start + len(records)
        second_end = second_start + len(second)
        _require(first_refs == list(range(3, first_end)), "First key row/primitive map differs")
        _require(record_refs == [(record_start + i * 3, record_start + i * 3 + 1, record_start + i * 3 + 2)
                                 for i in range(len(records))], "Record rows do not exhaust physical primitive reads")
        _require(transform_refs == list(range(transform_start, second_start)), "Transforms are not exactly once after all record reads")
        _require(second_refs == list(range(second_start, second_end)), "Second key row/primitive map differs")
        for name, number, is_key in (("first_key_terminal", first_end, True), ("record_terminal", record_end, False),
                                     ("second_key_terminal", second_end, True)):
            terminal = _mapping(report.get(name), name)
            event = events[number - 1]
            _require(_same(terminal, event), "Terminal is not the exact retained primitive event: " + name)
            _require(event.get("terminal_semantics_verified") is False and
                     event.get("terminal_kind") == ("observed_zero_key_return" if is_key else "observed_nonzero_record_return"),
                     "Terminal cannot claim verified EOF")
            _require((event["native_return"] == 0) == is_key, "Wrong native termination convention")
            zero_gv = not any(event[field] != 0 for field in ("isam", "uerr", "sysio"))
            if report_version == "native_reference_file_observation_v1":
                _require(not zero_gv, "All-zero GV termination cannot finish frozen v1")
            else:
                _require(event.get("terminal_diagnostic") == (
                    "unclassified_zero_gv" if zero_gv else "unclassified_nonzero_gv"),
                    "v2 terminal diagnostic contradicts observed raw GV")
            terminal_proof[name] = {key: event[key] for key in ("sequence", "native_return", "isam", "uerr", "sysio", "file")}
        _require(payload == reserved, "Finished reserved payload differs from complete exported evidence")
        computed_match = before == after == len(first) == len(second) == len(records) and first_keys == second_keys == transformed_keys
        _require(report["census_matches"] is computed_match, "Reported census match contradicts actual coverage")
        if finished:
            _require(phase == ("observational_census_match" if computed_match else "observational_census_mismatch"), "Reported phase contradicts census")
        else:
            _require(phase == "failed_incomplete" and report["identity_after_checked"] is False and bool(failures),
                     "A traversed failed capture requires its retained post-guard failure")
    else:
        _require(report["census_matches"] is False or (phase == "failed_incomplete" and report["identity_after_checked"] is False),
                 "Incomplete capture cannot claim census match without a failed post-guard")
        _require(bool(failures) or isinstance(report.get("outer_failure"), str) or phase == "incomplete", "Failed capture lacks failure evidence")
    return {
        "passed": finished and computed_match, "phase": phase, "census_matches": computed_match,
        "native_token": profile["native_token"], "component_oid": profile["component_oid"],
        "generation": profile["generation"], "profile_index": profile["profile_index"],
        "records": len(records), "first_keys": len(first), "second_keys": len(second), "events": len(events),
        "validated_payload_bytes": payload, "reserved_payload_bytes": reserved,
        "tag1_reference_payload_records": reference_payloads, "opaque_attribute_names": sorted(opaque_attributes),
        "observed_terminals": terminal_proof, "terminal_semantics_verified": False,
        "unknown_terminal_count": len(terminal_proof),
        "zero_gv_terminal_count": sum(not any(row[field] for field in ("isam", "uerr", "sysio"))
                                      for row in terminal_proof.values()),
        "complete_before_authorized": False, "write_authorized": False, "inverse_authorized": False,
        "cross_process_atomic": False, "epoch_verified_by_this_validator": False,
        "transform_algorithm_independently_verified": False,
        "limitations": ["EOF codes remain observed, not authorized", "Epoch and original-image profile audit belong to the driver",
                        "Native transform association is checked; proprietary transformation is not reimplemented",
                        "Equal key/count census does not prove unchanged payloads under external writers"],
    }


validate_reference_file_observation = validate
