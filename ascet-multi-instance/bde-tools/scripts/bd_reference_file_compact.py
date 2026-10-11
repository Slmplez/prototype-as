"""Lossless GV-image catalog transport for fixed CTree reference observations.

This module performs no I/O or native calls. It does not validate a scan's EOF,
database binding or authority: pass expand(v3) to bd_reference_file_observation
after the driver's profile/epoch checks. Every original event and byte survives.
"""
from __future__ import annotations

from collections.abc import Mapping
from copy import deepcopy
import json
from typing import Any


class ReferenceFileCompactError(ValueError):
    """A GV catalog is malformed, lossy, ambiguous, or inconsistent."""


V2 = "native_reference_file_observation_v2"
V3 = "native_reference_file_observation_v3"
MAX_EVENTS = 600_006
GV_SIZE = 512
MAX_CATALOG_BYTES = 134_217_728
TERMINALS = ("first_key_terminal", "record_terminal", "second_key_terminal")
SECTIONS = ("events", "records", "keys_first", "keys_second", "failures")


def _require(condition: bool, message: str) -> None:
    if not condition:
        raise ReferenceFileCompactError(message)


def _image(value: Any, label: str) -> bytes:
    _require(type(value) is list and len(value) == GV_SIZE, label + ": exact 512-byte list required")
    _require(all(type(x) is int and 0 <= x <= 255 for x in value), label + ": exact octets required; bool forbidden")
    return bytes(value)


def _integer(value: Any, label: str, maximum: int) -> int:
    _require(type(value) is int and 1 <= value <= maximum, label + ": exact bounded one-based integer required")
    return value


def _exact(left: Any, right: Any) -> bool:
    return json.dumps(left, sort_keys=True, ensure_ascii=False, allow_nan=False) == json.dumps(
        right, sort_keys=True, ensure_ascii=False, allow_nan=False)


def _base(report: Mapping[str, Any], version: str) -> list[Mapping[str, Any]]:
    _require(isinstance(report, Mapping) and report.get("profile") == version, "Exact fixed observation version required")
    for section in SECTIONS:
        _require(type(report.get(section)) is list, "Complete report list required: " + section)
    events = report["events"]
    _require(len(events) <= MAX_EVENTS, "Complete event count exceeds fixed bound")
    for ordinal, event in enumerate(events, 1):
        _require(isinstance(event, Mapping), "Event object required")
        _require(_integer(event.get("sequence"), "event.sequence", len(events)) == ordinal, "Events must be contiguous and retained in order")
        _require(event.get("state") in ("sent", "returned", "observed"), "Known original event state required")
    for terminal_name in TERMINALS:
        if terminal_name not in report:
            continue
        terminal = report[terminal_name]
        _require(isinstance(terminal, Mapping), "Terminal must retain the original event object fields")
        index = _integer(terminal.get("sequence"), terminal_name + ".sequence", len(events))
        _require(_exact(terminal, events[index - 1]), "Terminal fields must exactly mirror their original event: " + terminal_name)
    return events


def _rows(report: Mapping[str, Any]):
    for index, event in enumerate(report["events"], 1):
        yield f"events[{index}]", event
    for terminal_name in TERMINALS:
        if terminal_name in report:
            yield terminal_name, report[terminal_name]


def _need_image(row: Mapping[str, Any]) -> bool:
    return row.get("state") == "observed" or row.get("gv_state") == "observed"


def compact(report: Mapping[str, Any]) -> dict[str, Any]:
    """Offline v2 -> v3 conversion, deduplicating only identical full GV bytes.

    The original mapping is untouched. reserved_payload_bytes and every other
    original field retain their v2 meanings; catalog memory is a separate cost.
    """
    try:
        _base(report, V2)
        _require("gv_images" not in report, "v2 input must not contain a v3 catalog")
        result = deepcopy(dict(report))
        result["profile"] = V3
        catalog: list[list[int]] = []
        indexes: dict[bytes, int] = {}
        # Deepcopy can preserve shared event/terminal dictionaries. Replace each
        # container row before modifying it, so aliases do not trigger double edits.
        result["events"] = [dict(event) for event in result["events"]]
        for terminal_name in TERMINALS:
            if terminal_name in result:
                result[terminal_name] = dict(result[terminal_name])
        for label, row in _rows(result):
            _require("gv_image_index" not in row, label + ": mixed v2/v3 encoding forbidden")
            if "gv_raw" not in row:
                _require(not _need_image(row), label + ": observed event lost its full GV image")
                continue
            raw = _image(row["gv_raw"], label + ".gv_raw")
            _require(row.get("gv_state") == "observed", label + ": raw GV must be an observed copy")
            image_index = indexes.get(raw)
            if image_index is None:
                _require((len(catalog) + 1) * GV_SIZE <= MAX_CATALOG_BYTES, "Complete unique GV catalog exceeds payload bound")
                catalog.append(list(raw))
                image_index = len(catalog)
                indexes[raw] = image_index
            del row["gv_raw"]
            row["gv_image_index"] = image_index
        result["gv_images"] = catalog
        # Independent inverse verifies unused/duplicate catalog and exact terminal mirrors.
        _require(_exact(expand(result), report), "Lossless v2/v3 roundtrip invariant failed")
        return result
    except ReferenceFileCompactError:
        raise
    except (KeyError, TypeError, IndexError, ValueError, OverflowError) as error:
        raise ReferenceFileCompactError(f"Malformed v2 observation: {error}") from error


def expand(report: Mapping[str, Any]) -> dict[str, Any]:
    """Strict v3 -> v2 expansion, preserving complete original event semantics."""
    try:
        _base(report, V3)
        catalog_values = report.get("gv_images")
        _require(type(catalog_values) is list and len(catalog_values) * GV_SIZE <= MAX_CATALOG_BYTES,
                 "Complete bounded GV image catalog required")
        catalog = [_image(value, f"gv_images[{index}]") for index, value in enumerate(catalog_values, 1)]
        _require(len(set(catalog)) == len(catalog), "Duplicate full GV images in catalog are forbidden")
        referenced: set[int] = set()
        result = deepcopy(dict(report))
        result["profile"] = V2
        del result["gv_images"]
        result["events"] = [dict(event) for event in result["events"]]
        for terminal_name in TERMINALS:
            if terminal_name in result:
                result[terminal_name] = dict(result[terminal_name])
        for label, row in _rows(result):
            _require("gv_raw" not in row, label + ": mixed v3/raw encoding forbidden")
            if "gv_image_index" not in row:
                _require(not _need_image(row), label + ": observed event lacks its catalog index")
                continue
            index = _integer(row["gv_image_index"], label + ".gv_image_index", len(catalog))
            _require(row.get("gv_state") == "observed", label + ": catalog image must be an observed GV copy")
            referenced.add(index)
            row["gv_raw"] = list(catalog[index - 1])
            del row["gv_image_index"]
        _require(referenced == set(range(1, len(catalog) + 1)), "Catalog contains an unreferenced image")
        _base(result, V2)
        return result
    except ReferenceFileCompactError:
        raise
    except (KeyError, TypeError, IndexError, ValueError, OverflowError) as error:
        raise ReferenceFileCompactError(f"Malformed v3 observation: {error}") from error

