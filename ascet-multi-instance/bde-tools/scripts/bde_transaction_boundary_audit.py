"""Audit recovered commit/abort bytecode shapes without executing ASCET."""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from vast_bytecode import decode


PROFILE = "bde_transaction_boundary_bytecode_audit_v1"
DEFAULT_METHODS = Path(__file__).resolve().parents[1] / (
    "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
)

EXPECTED = {
    ("CTreeInterface", "commitTransaction"): (
        "switchInstance", "isCTError", "isOpen", "defaultTransactionCommitMode",
        "commit:", "beginTransaction", "ctCritical",
    ),
    ("CTreeInterface", "abortTransaction"): (
        "switchInstance", "isCTError", "isOpen", "abort", "beginTransaction", "ctCritical",
    ),
    ("DBInterface32", "commit"): (
        "isOpen", "isCommitted", "lowDiskSpaceWarning", "incCommit",
        "writeModifiedToDatabaseShowProgressOn:", "commitTransaction",
        "doWithInterfaces:", "initializeModifiedFlag", "cleanupInstances",
    ),
    ("DBInterface32", "writeToDatabase:"): (
        "incWrite", "isReadOnly", "dumpObject:", "write:record:",
        "clearModified", "setWritten", "setCommited",
    ),
}


class TransactionAuditError(ValueError):
    pass


def _literals(descriptions):
    return [{"text": value} if isinstance(value, str) else value for value in descriptions]


def _decode(row):
    raw = row.get("code_hex")
    if not isinstance(raw, str) or len(raw) < 8:
        raise TransactionAuditError("method bytecode/header is incomplete")
    decoded = decode({
        "bytecodes_hex": raw[8:],
        "code_header_hex": raw[:8],
        "literals": _literals(row.get("literal_descriptions") or []),
    })
    if decoded.get("error") is not None:
        raise TransactionAuditError(decoded["error"]["reason"])
    return decoded


def _subsequence(actual, expected):
    position = 0
    for item in actual:
        if position < len(expected) and item == expected[position]:
            position += 1
    return position == len(expected)


def _collect(methods_path: Path):
    rows = {key: [] for key in EXPECTED}
    for line_number, line in enumerate(methods_path.read_text(encoding="utf-8").splitlines(), 1):
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
                expected = EXPECTED[key]
                results[label].append({
                    "line": row["line"],
                    "address": row["address"],
                    "identity": row["identity"],
                    "code_sha256": hashlib.sha256(bytes.fromhex(row["code_hex"])).hexdigest(),
                    "send_selectors": sends,
                    "required_selector_subsequence": list(expected),
                    "shape_verified": _subsequence(sends, expected),
                })
            except (TransactionAuditError, ValueError) as exc:
                errors.append({"label": label, "line": row["line"], "error": str(exc)})
    cardinality_ok = all(len(values) >= 2 for values in rows.values())
    shape_ok = bool(results) and all(
        values and all(item["shape_verified"] for item in values)
        for values in results.values()
    )
    return {
        "profile": PROFILE,
        "methods_jsonl": str(methods_path),
        "methods_sha256": hashlib.sha256(methods_path.read_bytes()).hexdigest(),
        "missing_methods": sorted(missing),
        "binding_cardinality_at_least_two": cardinality_ok,
        "decode_errors": errors,
        "methods": results,
        "commit_forward_shape_verified": all(
            item["shape_verified"] for item in results.get("CTreeInterface>>commitTransaction", [])
        ),
        "abort_path_shape_verified": all(
            item["shape_verified"] for item in results.get("CTreeInterface>>abortTransaction", [])
        ),
        "write_post_state_shape_verified": all(
            item["shape_verified"] for item in results.get("DBInterface32>>writeToDatabase:", [])
        ),
        "transaction_shape_verified": not missing and not errors and cardinality_ok and shape_ok,
        "durable_inverse_verified": False,
        "cross_process_atomic_verified": False,
        "write_authorized": False,
        "inverse_authorized": False,
        "native_calls": 0,
        "full_delivery": False,
        "note": "Commit/abort bytecode shapes are present; abort is not treated as a durable inverse proof.",
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
    return 0 if result["transaction_shape_verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
