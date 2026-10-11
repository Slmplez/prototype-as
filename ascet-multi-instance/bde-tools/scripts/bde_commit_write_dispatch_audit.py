"""Audit the recovered ASCET write dispatch before any native write is enabled.

This is deliberately a read-only audit.  It checks the recovered Smalltalk
forwarders and the method-table evidence for the CTIFil leaf.  A selector being
present is not treated as a complete write proof: the leaf implementation,
transaction boundary, cache effects, and inverse path must all be closed before
the production bridge may issue a write.
"""
from __future__ import annotations

import hashlib
import json
from pathlib import Path
import re


PROFILE = "bde_native_write_dispatch_audit_v1"
LEAF_SELECTORS = (
    "write:target:fixedRecord:vRecord:",
    "write:target:fixedRecord:record:",
    "add:target:vRecord:",
    "update:target:vRecord:",
    "add:target:record:",
    "update:target:record:",
)
DEFAULT_ROOT = Path(__file__).resolve().parents[1] / (
    "analysis/bde-experiments/2026-10-07/"
    "bde-commit-control-increment-01/archive/unpacked/smalltalk-source/ASDBase.ic"
)
DEFAULT_METHODS = Path(__file__).resolve().parents[1] / (
    "analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl"
)


class WriteDispatchAuditError(ValueError):
    pass


def _read(path: Path) -> str:
    if not path.is_file():
        raise WriteDispatchAuditError(f"missing recovered source: {path}")
    return path.read_text(encoding="utf-8")


def _sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def _source(root: Path, name: str) -> tuple[Path, str]:
    path = root / name
    return path, _read(path)


def _require(text: str, snippets: tuple[str, ...], label: str) -> dict:
    missing = [snippet for snippet in snippets if snippet not in text]
    return {"label": label, "passed": not missing, "missing": missing}


def _method_table_evidence(methods_path: Path) -> dict:
    wanted = {
        ("CTIFil", "write:target:fixedRecord:vRecord:"),
        ("CTIFil", "write:target:fixedRecord:record:"),
        ("DBInterface32", "write:record:"),
        ("CTreeInterface", "write:record:"),
        ("CTreeInterface", "commitTransaction"),
    }
    found: dict[tuple[str, str], list[dict]] = {key: [] for key in wanted}
    for line_number, line in enumerate(methods_path.read_text(encoding="utf-8").splitlines(), 1):
        try:
            row = json.loads(line)
        except json.JSONDecodeError:
            continue
        bindings = row.get("bindings") or []
        for binding in bindings:
            key = (binding.get("clazz"), binding.get("selector"))
            if key in found:
                found[key].append({
                    "line": line_number,
                    "identity": row.get("identity"),
                    "address": row.get("address"),
                    "code_bytes": row.get("code_bytes"),
                    "code_hex": row.get("code_hex"),
                    "literal_descriptions": row.get("literal_descriptions", []),
                })
    missing = [list(key) for key, rows in found.items() if not rows]
    return {
        "passed": not missing,
        "missing": missing,
        "found": {f"{clazz}>>{selector}": rows for (clazz, selector), rows in found.items()},
    }


def _leaf_bytecode_evidence(methods_path: Path) -> dict:
    """Check that the CTIFil leaf selectors have retained bytecode metadata.

    The recovered method table contains two bindings for most methods
    (ASDBase.ic and ascet.icx).  We keep both provenance rows but judge a
    selector complete only when every binding has a non-empty hex body whose
    decoded length equals ``code_bytes``.  This proves a bytecode artifact is
    retained; it does not prove the native file operation's semantics.
    """
    rows = {selector: [] for selector in LEAF_SELECTORS}
    for line_number, line in enumerate(methods_path.read_text(encoding="utf-8").splitlines(), 1):
        try:
            method = json.loads(line)
        except json.JSONDecodeError:
            continue
        for binding in method.get("bindings") or []:
            selector = binding.get("selector")
            if binding.get("clazz") == "CTIFil" and selector in rows:
                code_hex = method.get("code_hex")
                code_bytes = method.get("code_bytes")
                valid_hex = isinstance(code_hex, str) and bool(code_hex) and not bool(re.search(r"[^0-9a-fA-F]", code_hex))
                decoded_bytes = len(code_hex) // 2 if valid_hex and len(code_hex) % 2 == 0 else None
                rows[selector].append({
                    "line": line_number,
                    "identity": method.get("identity"),
                    "address": method.get("address"),
                    "code_bytes": code_bytes,
                    "code_hex": code_hex,
                    "decoded_code_bytes": decoded_bytes,
                    "bytecode_complete": bool(valid_hex and isinstance(code_bytes, int)
                                               and decoded_bytes == code_bytes),
                    "literal_descriptions": method.get("literal_descriptions", []),
                })
    missing = [selector for selector, values in rows.items() if not values]
    invalid = [selector for selector, values in rows.items()
               if values and not all(row["bytecode_complete"] for row in values)]
    return {
        "selectors": list(LEAF_SELECTORS),
        "missing": missing,
        "invalid": invalid,
        "found": rows,
        "bytecode_complete": not missing and not invalid,
        "semantic_source_complete": False,
    }


def audit(root: Path = DEFAULT_ROOT, methods_path: Path = DEFAULT_METHODS) -> dict:
    root = Path(root)
    methods_path = Path(methods_path)
    files = {}
    for name in ("ASDPersistenceController.st", "DBInterface32.st", "CTreeInterface.st"):
        path, text = _source(root, name)
        files[name] = {"path": str(path), "sha256": _sha(path), "text": text}

    checks = [
        _require(files["ASDPersistenceController.st"]["text"],
                 ("writeRecord: recoveredArg1", "internalLibraryLegacy", "writeRecord: (recoveredValue1)"),
                 "ASDPersistenceController>>writeRecord:"),
        _require(files["DBInterface32.st"]["text"],
                 ("writeRecord: recoveredArg1", "asProxy", "write: (recoveredValue1) record: (recoveredValue2)"),
                 "DBInterface32>>writeRecord:"),
        _require(files["DBInterface32.st"]["text"],
                 ("write: recoveredArg1 record: recoveredArg2", "clearKeyCacheValid",
                  "getInterfaceForProxy:", "write: (recoveredStack1) record: (recoveredStack2)",
                  "isWriteError", "showError:"),
                 "DBInterface32>>write:record:"),
        _require(files["CTreeInterface.st"]["text"],
                 ("write: recoveredArg1 record: recoveredArg2", "isVariable",
                  "write: (recoveredStack2) vRecord: (recoveredStack3)",
                  "write: (recoveredStack2) fixedRecord: (recoveredStack3)",
                  "CTWriteExistingRecord", "autoRepairCompact:"),
                 "CTreeInterface>>write:record:"),
        _require(files["CTreeInterface.st"]["text"],
                 ("write: recoveredArg1 vRecord: recoveredArg2",
                  "createKey: (recoveredBlock4Stack1) forKey: (recoveredBlock4Stack2) in: (recoveredBlock4Stack3)",
                  "write: (recoveredBlock4Stack1) target: (recoveredBlock4Stack2) fixedRecord: (recoveredBlock4Stack3) vRecord: (recoveredBlock4Stack4)"),
                 "CTreeInterface>>write:vRecord:"),
        _require(files["CTreeInterface.st"]["text"],
                 ("write: recoveredArg1 fixedRecord: recoveredArg2",
                  "createKey: (recoveredBlock4Stack1) forKey: (recoveredBlock4Stack2) in: (recoveredBlock4Stack3)",
                  "write: (recoveredBlock4Stack1) target: (recoveredBlock4Stack2) fixedRecord: (recoveredBlock4Stack3) record: (recoveredBlock4Stack4)"),
                 "CTreeInterface>>write:fixedRecord:"),
        _require(files["DBInterface32.st"]["text"],
                 ("writeToDatabase: recoveredArg1", "write: (recoveredBlock6Stack1) record: (recoveredBlock6Stack2)",
                  "clearModified", "setWritten", "setCommited"),
                 "DBInterface32>>writeToDatabase: post-write state"),
        _require(files["DBInterface32.st"]["text"],
                 ("commit\n", "writeModifiedToDatabaseShowProgressOn:", "commitTransaction", "initializeModifiedFlag"),
                 "DBInterface32>>commit"),
        _require(files["CTreeInterface.st"]["text"],
                 ("commitTransaction\n", "defaultTransactionCommitMode", "beginTransaction", "commit:"),
                 "CTreeInterface>>commitTransaction"),
        _require(files["CTreeInterface.st"]["text"],
                 ("abortTransaction\n", "(recoveredBlock4Stack0) abort"),
                 "CTreeInterface>>abortTransaction"),
    ]
    evidence = _method_table_evidence(methods_path)
    leaf_bytecode = _leaf_bytecode_evidence(methods_path)
    ctfil_source = root / "CTIFil.st"
    source_text = files["CTreeInterface.st"]["text"]
    commit_selector_present = "commitTransaction\n" in source_text
    abort_selector_present = "abortTransaction\n" in source_text
    rollback_selector_present = bool(re.search(r"\brollback\b", source_text, re.IGNORECASE))
    unresolved = [
        "CTIFil leaf body is absent from the recovered Smalltalk source tree",
        "CTIFil write return/error semantics are only represented by method-table metadata",
        "no durable inverse/replay method is proven by this audit",
        "writeToDatabase: mutates modified/written/committed flags after the database call",
    ]
    passed = all(row["passed"] for row in checks) and evidence["passed"]
    return {
        "profile": PROFILE,
        "source_root": str(root),
        "methods_jsonl": str(methods_path),
        "source_hashes": {name: row["sha256"] for name, row in files.items()},
        "checks": checks,
        "method_table_evidence": evidence,
        "leaf_bytecode_evidence": leaf_bytecode,
        "ctfil_source_present": ctfil_source.is_file(),
        "leaf_body_complete": False,
        "leaf_bytecode_complete": leaf_bytecode["bytecode_complete"],
        "leaf_semantics_proven": leaf_bytecode["semantic_source_complete"],
        "commit_selector_present": commit_selector_present,
        "abort_selector_present": abort_selector_present,
        "rollback_selector_present": rollback_selector_present,
        "transaction_inverse_complete": False,
        "passed_static_dispatch": passed,
        "write_authorized": False,
        "inverse_authorized": False,
        "full_delivery": False,
        "unresolved": unresolved + ([
            "CTIFil bytecode is present but no recovered source/semantic proof maps file return codes and transaction effects",
        ] if leaf_bytecode["bytecode_complete"] else [
            "one or more CTIFil write leaf bytecode records are incomplete",
        ]),
        "native_calls": 0,
    }


def main() -> int:
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=DEFAULT_ROOT)
    parser.add_argument("--methods", type=Path, default=DEFAULT_METHODS)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    result = audit(args.root, args.methods)
    encoded = json.dumps(result, ensure_ascii=False, indent=2) + "\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(encoded, encoding="utf-8")
    else:
        print(encoded, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
