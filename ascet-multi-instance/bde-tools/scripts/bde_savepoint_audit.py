"""Audit the recovered CTree/DB savepoint forward and restore route.

The route is a useful inverse candidate, but this audit deliberately keeps
the claims narrow: it proves the recovered dispatch shape and the presence of
the database write-before-savepoint step.  It does not prove cross-process
atomicity, crash durability, or that a savepoint restores every model and
reference resource required by a BDE edit.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from vast_bytecode import decode


PROFILE = "bde_savepoint_dispatch_audit_v1"
DEFAULT_METHODS = Path(__file__).resolve().parents[1] / (
    "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
)

EXPECTED = {
    ("CTreeInterface", "setSavePoint"): (
        "switchInstance", "isCTError", "isOpen", "setSavePoint", "addFirst:", "ctCritical",
    ),
    ("CTreeInterface", "restoreSavePoint"): (
        "switchInstance", "isCTError", "isOpen", "isEmpty", "first",
        "restoreSavePoint:", "isCTError", "removeFirst", "ctCritical",
    ),
    ("DBInterface32", "setSavePoint"): (
        "writeModifiedToDatabaseShowProgressOn:", "doWithInterfaces:", "isError",
    ),
    ("DBInterface32", "setSavePointWithoutCacheWrite"): (
        "doWithInterfaces:", "isError",
    ),
    ("DBInterface32", "restoreSavePoint"): (
        "etasDevHalt", "getDefaultInterface", "restoreSavePoint", "isError",
    ),
}


class SavepointAuditError(ValueError):
    pass


def _decode(row):
    raw = row.get("code_hex")
    if not isinstance(raw, str) or len(raw) < 8:
        raise SavepointAuditError("method bytecode/header is incomplete")
    result = decode({
        "bytecodes_hex": raw[8:],
        "code_header_hex": raw[:8],
        "literals": [{"text": x} if isinstance(x, str) else x
                      for x in row.get("literal_descriptions") or []],
    })
    if result.get("error") is not None:
        raise SavepointAuditError(result["error"]["reason"])
    return result


def _subsequence(actual, expected):
    position = 0
    for item in actual:
        if position < len(expected) and item == expected[position]:
            position += 1
    return position == len(expected)


def _collect(path: Path):
    rows = {key: [] for key in EXPECTED}
    for line_number, line in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        try:
            method = json.loads(line)
        except json.JSONDecodeError:
            continue
        for binding in method.get("bindings") or []:
            key = (binding.get("clazz"), binding.get("selector"))
            if key in rows:
                rows[key].append({
                    "line": line_number,
                    "address": method.get("address"),
                    "identity": method.get("identity"),
                    "code_hex": method.get("code_hex"),
                    "literal_descriptions": method.get("literal_descriptions") or [],
                })
    return rows


def audit(methods_path: Path = DEFAULT_METHODS) -> dict:
    methods_path = Path(methods_path)
    rows = _collect(methods_path)
    missing = [f"{clazz}>>{selector}" for (clazz, selector), values in rows.items() if not values]
    results = {}
    errors = []
    for key, values in rows.items():
        label = f"{key[0]}>>{key[1]}"
        results[label] = []
        for row in values:
            try:
                decoded = _decode(row)
                sends = [item["selector"] for item in decoded["instructions"] if item["op"] == "send"]
                results[label].append({
                    "line": row["line"],
                    "address": row["address"],
                    "identity": row["identity"],
                    "code_sha256": hashlib.sha256(bytes.fromhex(row["code_hex"])).hexdigest(),
                    "send_selectors": sends,
                    "required_selector_subsequence": list(EXPECTED[key]),
                    "shape_verified": _subsequence(sends, EXPECTED[key]),
                })
            except (SavepointAuditError, ValueError) as exc:
                errors.append({"label": label, "line": row["line"], "error": str(exc)})
    cardinality_ok = all(len(values) >= 2 for values in rows.values())
    shape_ok = bool(results) and all(
        values and all(item["shape_verified"] for item in values)
        for values in results.values()
    )
    forward = all(item["shape_verified"] for item in results.get("DBInterface32>>setSavePoint", []))
    restore = all(item["shape_verified"] for item in results.get("DBInterface32>>restoreSavePoint", []))
    return {
        "profile": PROFILE,
        "methods_jsonl": str(methods_path),
        "methods_sha256": hashlib.sha256(methods_path.read_bytes()).hexdigest(),
        "missing_methods": sorted(missing),
        "binding_cardinality_at_least_two": cardinality_ok,
        "decode_errors": errors,
        "methods": results,
        "savepoint_shape_verified": not missing and not errors and cardinality_ok and shape_ok,
        "savepoint_forward_shape_verified": forward,
        "savepoint_restore_shape_verified": restore,
        "savepoint_durable_write_route_verified": forward and all(
            "writeModifiedToDatabaseShowProgressOn:" in item["send_selectors"]
            for item in results.get("DBInterface32>>setSavePoint", [])
        ),
        "durable_inverse_verified": False,
        "cross_process_atomic_verified": False,
        "write_authorized": False,
        "inverse_authorized": False,
        "native_calls": 0,
        "full_delivery": False,
        "note": "Savepoint and restore dispatch are present, including a write-before-savepoint route; coverage of model/reference closure, crash durability, and cross-process inverse remains unproven.",
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--methods", type=Path, default=DEFAULT_METHODS)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError("output already exists")
    result = audit(args.methods)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["savepoint_shape_verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
