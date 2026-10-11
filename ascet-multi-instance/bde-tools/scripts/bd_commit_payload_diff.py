"""Exact byte-range diffs and three-way conflict checks for retained BDE records.

This module only computes an immutable patch proposal.  It never resolves a
native record, calls a serializer, publishes a model, or grants inverse/write
authority.  The caller must retain the complete before image and bind all
three images to the same edit token/generation before using the result.
"""
from __future__ import annotations

from copy import deepcopy
import hashlib


PROFILE = "bde_payload_patch_v1"
PATCH_KEYS = frozenset((
    "read_status", "record_class", "record_class_requested", "fixed_size",
    "blob_size", "logical_size", "allocated_size", "global_id", "query_key",
    "actual_file_key", "bytes", "allocated_bytes",
))


class PayloadDiffError(ValueError):
    """Malformed or rebound payload; no patch may be produced."""


class PayloadPatchConflict(PayloadDiffError):
    """The retained before image no longer matches the live current image."""

    def __init__(self, conflicts):
        self.conflicts = deepcopy(conflicts)
        super().__init__("current payload overlaps the requested patch")


def _bytes(value, path, *, length=None):
    if (not isinstance(value, list) or (length is not None and len(value) != length)
            or len(value) > 4_194_304
            or any(type(item) is not int or not 0 <= item <= 255 for item in value)):
        raise PayloadDiffError(f"{path}: complete byte array required")
    return list(value)


def _key(value, path):
    if (not isinstance(value, list) or len(value) != 20
            or any(type(item) is not int or not 0 <= item <= 255 for item in value)):
        raise PayloadDiffError(f"{path}: exact 20-byte key required")
    return list(value)


def validate_payload(value, *, expected_key=None):
    """Validate a complete CTree record payload and return a detached copy."""
    if not isinstance(value, dict) or set(value) != PATCH_KEYS:
        raise PayloadDiffError("complete fixed payload schema required")
    if value["read_status"] != "record":
        raise PayloadDiffError("only an existing record can be patched")
    for name in ("record_class", "record_class_requested"):
        if not isinstance(value[name], str) or not value[name]:
            raise PayloadDiffError(f"{name}: record class required")
    if value["record_class_requested"] != value["record_class"]:
        raise PayloadDiffError("requested and actual record classes differ")
    for name in ("fixed_size", "blob_size", "logical_size", "allocated_size"):
        if type(value[name]) is not int or not 0 <= value[name] <= 4_194_304:
            raise PayloadDiffError(f"{name}: bounded integer required")
    if value["logical_size"] != value["fixed_size"] + value["blob_size"]:
        raise PayloadDiffError("logical size must equal fixed plus blob size")
    if value["allocated_size"] < value["logical_size"]:
        raise PayloadDiffError("allocated size cannot be smaller than logical size")
    keys = [_key(value[name], name) for name in ("global_id", "query_key", "actual_file_key")]
    if keys[0] != keys[1] or keys[0] != keys[2]:
        raise PayloadDiffError("record owner/query/file keys differ")
    if expected_key is not None and keys[0] != _key(expected_key, "expected_key"):
        raise PayloadDiffError("record is bound to another owner")
    raw = _bytes(value["bytes"], "bytes", length=value["logical_size"])
    allocated = _bytes(value["allocated_bytes"], "allocated_bytes", length=value["allocated_size"])
    if allocated[:len(raw)] != raw:
        raise PayloadDiffError("allocated payload does not contain the logical prefix")
    result = deepcopy(value)
    for name, key in zip(("global_id", "query_key", "actual_file_key"), keys):
        result[name] = key
    result["bytes"], result["allocated_bytes"] = raw, allocated
    return result


def from_record(row):
    """Project a retained resource row to the exact payload schema.

    Resource receipts carry CTree observations and role metadata beside the
    bytes.  The patch contract deliberately ignores those fields here; their
    independent validators remain responsible for CTree and role coverage.
    """
    if not isinstance(row, dict):
        raise PayloadDiffError("record row required")
    missing = PATCH_KEYS.difference(row)
    if missing:
        raise PayloadDiffError("record row missing payload fields: " + ",".join(sorted(missing)))
    return validate_payload({key: row[key] for key in PATCH_KEYS})


def record_payload_diffs(before_rows, after_rows):
    """Compute per-role exact payload diffs from complete resource rows."""
    if not isinstance(before_rows, list) or not isinstance(after_rows, list):
        raise PayloadDiffError("complete before/after record lists required")
    old = {row.get("role"): row for row in before_rows if isinstance(row, dict)}
    new = {row.get("role"): row for row in after_rows if isinstance(row, dict)}
    if set(old) != set(new) or not old:
        raise PayloadDiffError("before/after record role census differs")
    result = []
    for role in sorted(old):
        left, right = from_record(old[role]), from_record(new[role])
        change = diff_payload(left, right, expected_key=left["global_id"])
        change["role"] = role
        result.append(change)
    return result


def _identity(before, after):
    fields = ("record_class", "record_class_requested", "fixed_size",
              "global_id", "query_key", "actual_file_key")
    for field in fields:
        if before[field] != after[field]:
            raise PayloadDiffError(f"payload identity differs at {field}")


def _ranges(before, after):
    """Return contiguous logical byte changes, including a length change."""
    rows = []
    common = min(len(before), len(after))
    start = None
    for index in range(common):
        if before[index] != after[index]:
            if start is None:
                start = index
        elif start is not None:
            rows.append({"offset": start, "before": before[start:index],
                         "after": after[start:index], "structural": False})
            start = None
    if start is not None:
        rows.append({"offset": start, "before": before[start:common],
                     "after": after[start:common], "structural": False})
    if len(before) != len(after):
        rows.append({"offset": common, "before": before[common:],
                     "after": after[common:], "structural": True})
    return rows


def range_summaries(before, after):
    """Bounded metadata for agent-facing journals; raw bytes stay in WAL."""
    result = []
    for row in _ranges(list(before), list(after)):
        result.append({
            "offset": row["offset"],
            "before_length": len(row["before"]),
            "after_length": len(row["after"]),
            "before_sha256": hashlib.sha256(bytes(row["before"])).hexdigest(),
            "after_sha256": hashlib.sha256(bytes(row["after"])).hexdigest(),
            "structural": row["structural"],
        })
    return result


def diff_payload(before, after, *, expected_key=None):
    """Compute exact logical and allocation-tail byte ranges."""
    old, new = validate_payload(before, expected_key=expected_key), validate_payload(after, expected_key=expected_key)
    _identity(old, new)
    logical = _ranges(old["bytes"], new["bytes"])
    tail_old, tail_new = old["allocated_bytes"][old["logical_size"]:], new["allocated_bytes"][new["logical_size"]:]
    tail = _ranges(tail_old, tail_new)
    return {
        "profile": PROFILE,
        "record_class": old["record_class"],
        "owner_key": old["global_id"],
        "before_logical_size": old["logical_size"],
        "after_logical_size": new["logical_size"],
        "before_allocated_size": old["allocated_size"],
        "after_allocated_size": new["allocated_size"],
        "before_logical_sha256": hashlib.sha256(bytes(old["bytes"])).hexdigest(),
        "after_logical_sha256": hashlib.sha256(bytes(new["bytes"])).hexdigest(),
        "logical_ranges": logical,
        "allocation_tail_ranges": tail,
        "logical_changed": bool(logical),
        "allocation_tail_changed": bool(tail),
        "write_authorized": False,
        "inverse_authorized": False,
    }


def _range_conflicts(before, current, ranges, *, current_size):
    conflicts = []
    if current_size != len(before):
        conflicts.append({"code": "PAYLOAD_LENGTH_CONFLICT", "before": len(before), "current": current_size})
        return conflicts
    for row in ranges:
        offset = row["offset"]
        old = row["before"]
        now = current[offset:offset + len(old)]
        if now != old:
            conflicts.append({"code": "PAYLOAD_RANGE_CONFLICT", "offset": offset,
                              "before": old, "current": now, "desired": row["after"]})
    return conflicts


def three_way_patch(before, desired, current, *, expected_key=None):
    """Merge a retained before→desired patch onto current, or fail closed.

    Unchanged current bytes outside changed ranges are preserved.  A logical
    length change touches the complete suffix and therefore conflicts with any
    current length change or suffix edit.  Allocation slack is observed and
    reported separately; it is never treated as logical model data.
    """
    old = validate_payload(before, expected_key=expected_key)
    target = validate_payload(desired, expected_key=expected_key)
    now = validate_payload(current, expected_key=expected_key)
    _identity(old, target)
    _identity(old, now)
    logical_ranges = _ranges(old["bytes"], target["bytes"])
    conflicts = _range_conflicts(old["bytes"], now["bytes"], logical_ranges,
                                 current_size=len(now["bytes"]))
    # A changed allocation tail is only safe when the current tail still equals
    # the retained before tail.  It is diagnostic evidence, not logical data.
    old_tail = old["allocated_bytes"][old["logical_size"]:]
    now_tail = now["allocated_bytes"][now["logical_size"]:]
    target_tail = target["allocated_bytes"][target["logical_size"]:]
    tail_ranges = _ranges(old_tail, target_tail)
    if tail_ranges and now_tail != old_tail:
        conflicts.append({"code": "PAYLOAD_ALLOCATION_TAIL_CONFLICT",
                          "before": old_tail, "current": now_tail, "desired": target_tail})
    if conflicts:
        raise PayloadPatchConflict(conflicts)
    candidate = deepcopy(now)
    # Apply structural range last; all ranges are non-overlapping and ordered.
    for row in reversed(logical_ranges):
        offset = row["offset"]
        if row["structural"]:
            candidate["bytes"] = candidate["bytes"][:offset] + list(row["after"])
        else:
            end = offset + len(row["before"])
            candidate["bytes"][offset:end] = row["after"]
    candidate["blob_size"] = len(candidate["bytes"]) - candidate["fixed_size"]
    candidate["logical_size"] = len(candidate["bytes"])
    # Preserve current allocation slack except for an explicitly changed tail.
    candidate_tail = target_tail if tail_ranges else now_tail
    candidate["allocated_bytes"] = list(candidate["bytes"]) + list(candidate_tail)
    candidate["allocated_size"] = len(candidate["allocated_bytes"])
    result = diff_payload(old, candidate, expected_key=expected_key)
    result.update({"current_logical_sha256": hashlib.sha256(bytes(now["bytes"])).hexdigest(),
                   "current_allocation_tail_sha256": hashlib.sha256(bytes(now_tail)).hexdigest(),
                   "candidate": candidate, "conflicts": [], "merged": True})
    return result
