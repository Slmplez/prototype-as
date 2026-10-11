"""Audit the recovered CTIFil write-wrapper bytecode without executing ASCET.

The method table retains Smalltalk bytecode for the CTIFil bridge even though
the readable CTIFil source is absent.  This audit decodes only that retained
bytecode and verifies the dispatch shape (lookup -> add/update -> status
return).  It does not infer the underlying file/transaction semantics and
never calls Cebra or grants write permission.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from vast_bytecode import decode


PROFILE = "bde_ctfil_leaf_bytecode_dispatch_audit_v1"
DEFAULT_METHODS = Path(__file__).resolve().parents[1] / (
    "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
)

WRITE_WRAPPERS = {
    "write:target:fixedRecord:vRecord:": {
        "lookup": "getRecordIntResult:target:record:",
        "add": "add:target:vRecord:",
        "update": "update:target:vRecord:",
    },
    "write:target:fixedRecord:record:": {
        "lookup": "getRecordIntResult:target:record:",
        "add": "add:target:record:",
        "update": "update:target:record:",
    },
}

LEAF_OPERATIONS = {
    "add:target:vRecord:": "addVRecord:recPtr:varLen:",
    "update:target:vRecord:": "rewriteVRecord:recPtr:varLen:",
    "add:target:record:": "addRecord:recPtr:",
    "update:target:record:": "rewriteRecord:recPtr:",
}
NATIVE_LEAF_SELECTORS = (
    "getRecord:target:recPtr:",
    "addRecord:recPtr:",
    "rewriteRecord:recPtr:",
    "addVRecord:recPtr:varLen:",
    "rewriteVRecord:recPtr:varLen:",
)


class LeafAuditError(ValueError):
    pass


def _literals(descriptions):
    result = []
    for item in descriptions:
        if isinstance(item, str):
            result.append({"text": item})
        else:
            # Push-binding only needs an opaque literal slot.  The decoder
            # resolves selectors from strings, so retain the original object
            # for provenance without inventing a selector name.
            result.append(item)
    return result


def _method_object(row):
    raw = row.get("code_hex")
    if not isinstance(raw, str) or len(raw) < 8:
        raise LeafAuditError("method bytecode/header is incomplete")
    return {
        "bytecodes_hex": raw[8:],
        "code_header_hex": raw[:8],
        "literals": _literals(row.get("literal_descriptions") or []),
    }


def _ir(decoded):
    if decoded.get("error") is not None:
        raise LeafAuditError(decoded["error"]["reason"])
    return [
        {
            "op": item["op"],
            **({"selector": item["selector"]} if "selector" in item else {}),
            **({"condition": item["condition"]} if "condition" in item else {}),
            **({"argc": item["argc"]} if "argc" in item else {}),
        }
        for item in decoded["instructions"]
    ]


def _rows(methods_path: Path):
    wanted = set(WRITE_WRAPPERS) | set(LEAF_OPERATIONS)
    rows = {selector: [] for selector in wanted}
    native_rows = {selector: [] for selector in NATIVE_LEAF_SELECTORS}
    for line_number, line in enumerate(methods_path.read_text(encoding="utf-8").splitlines(), 1):
        try:
            row = json.loads(line)
        except json.JSONDecodeError:
            continue
        if not isinstance(row.get("code_hex"), str):
            continue
        for binding in row.get("bindings") or []:
            selector = binding.get("selector")
            if binding.get("clazz") == "CTIFil" and selector in rows:
                rows[selector].append({
                    "line": line_number,
                    "identity": row.get("identity"),
                    "address": row.get("address"),
                    "code_hex": row["code_hex"],
                    "code_bytes": row.get("code_bytes"),
                    "literal_descriptions": row.get("literal_descriptions") or [],
                })
            if binding.get("clazz") == "CTIFil" and selector in native_rows:
                native_rows[selector].append({"line": line_number, "address": row.get("address")})
    return rows, native_rows


def _audit_wrapper(selector, row):
    decoded = decode(_method_object(row))
    ir = _ir(decoded)
    sends = [item["selector"] for item in ir if item["op"] == "send"]
    return {
        "selector": selector,
        "line": row["line"],
        "address": row["address"],
        "code_sha256": hashlib.sha256(bytes.fromhex(row["code_hex"])).hexdigest(),
        "decoded_instruction_count": len(ir),
        "send_selectors": sends,
        "branch_shape": [item for item in ir if item["op"] in {"binary", "jump"}],
        "dispatch_shape_verified": (
            sends == [WRITE_WRAPPERS[selector]["lookup"],
                      WRITE_WRAPPERS[selector]["add"],
                      WRITE_WRAPPERS[selector]["update"]]
            and any(item["op"] == "binary" and item.get("selector") == "~=" for item in ir)
        ),
    }


def _audit_leaf(selector, row):
    decoded = decode(_method_object(row))
    ir = _ir(decoded)
    sends = [item["selector"] for item in ir if item["op"] == "send"]
    expected = LEAF_OPERATIONS[selector]
    return {
        "selector": selector,
        "line": row["line"],
        "address": row["address"],
        "code_sha256": hashlib.sha256(bytes.fromhex(row["code_hex"])).hexdigest(),
        "decoded_instruction_count": len(ir),
        "send_selectors": sends,
        "dispatch_shape_verified": expected in sends and "create:location:" in sends,
    }


def audit(methods_path: Path = DEFAULT_METHODS) -> dict:
    methods_path = Path(methods_path)
    rows, native_rows = _rows(methods_path)
    missing = [selector for selector, values in rows.items() if not values]
    # Two image bindings are expected for each selector.  Duplicate bindings
    # must decode identically; a single image must not silently stand in for
    # the other.
    cardinality_ok = all(len(values) >= 2 for values in rows.values())
    wrapper_results, leaf_results = {}, {}
    decode_errors = []
    for selector, values in rows.items():
        for row in values:
            try:
                result = (_audit_wrapper(selector, row) if selector in WRITE_WRAPPERS
                          else _audit_leaf(selector, row))
            except (LeafAuditError, ValueError) as exc:
                decode_errors.append({"selector": selector, "line": row["line"], "error": str(exc)})
                continue
            target = wrapper_results if selector in WRITE_WRAPPERS else leaf_results
            target.setdefault(selector, []).append(result)
    shapes_ok = all(all(item["dispatch_shape_verified"] for item in values)
                    for values in [*wrapper_results.values(), *leaf_results.values()])
    result = {
        "profile": PROFILE,
        "methods_jsonl": str(methods_path),
        "methods_sha256": hashlib.sha256(methods_path.read_bytes()).hexdigest(),
        "selectors": sorted(rows),
        "missing_selectors": sorted(missing),
        "underlying_native_selectors": list(NATIVE_LEAF_SELECTORS),
        "underlying_native_selector_metadata_present": {
            selector: bool(values) for selector, values in native_rows.items()
        },
        "missing_underlying_native_selectors": [
            selector for selector, values in native_rows.items() if not values
        ],
        "binding_cardinality_at_least_two": cardinality_ok,
        "decode_errors": decode_errors,
        "write_wrapper_results": wrapper_results,
        "leaf_operation_results": leaf_results,
        "wrapper_dispatch_shape_verified": bool(wrapper_results) and all(
            all(item["dispatch_shape_verified"] for item in values)
            for values in wrapper_results.values()),
        "leaf_dispatch_shape_verified": bool(leaf_results) and all(
            all(item["dispatch_shape_verified"] for item in values)
            for values in leaf_results.values()),
        "leaf_bytecode_semantics_pattern_verified": (
            not missing and cardinality_ok and not decode_errors and shapes_ok
        ),
        "source_semantics_proven": False,
        "native_leaf_semantics_proven": False,
        "write_authorized": False,
        "inverse_authorized": False,
        "native_calls": 0,
        "full_delivery": False,
        "note": "Bytecode dispatch shape is verified; underlying CTIFil file durability, error codes, and transaction inverse remain unproven.",
    }
    return result


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
    return 0 if result["leaf_bytecode_semantics_pattern_verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
