"""Audit recovered CTIFil source and native symbol-table evidence.

This is a static provenance audit.  It separates three claims that are easy
to conflate: the recovered CTIFil wrapper body contains the expected calls,
the image string table contains the corresponding native entry names, and the
native implementation semantics are proven.  Only the first two can be
checked here; no ASCET process is contacted and no write gate is opened.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import re
from pathlib import Path


PROFILE = "bde_ctfil_source_symbol_audit_v1"
ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOURCE = ROOT / "unpacked/smalltalk-source/ASDBase.ic/CTIFil.st"
DEFAULT_STRINGS = ROOT / "analysis/strings/ASDBase.ic.tsv"

REQUIRED = {
    "getRecord:target:recPtr:": {
        "source_calls": ("getRecord:target:recPtr:",),
        "offset": "0x00806a84",
    },
    "addRecord:recPtr:": {
        "source_calls": ("addRecord:recPtr:",),
        "offset": "0x00731bf8",
    },
    "rewriteRecord:recPtr:": {
        "source_calls": ("rewriteRecord:recPtr:",),
        "offset": "0x0089cbb0",
    },
    "addVRecord:recPtr:varLen:": {
        "source_calls": ("addVRecord:recPtr:varLen:",),
        "offset": "0x007f21c4",
    },
    "rewriteVRecord:recPtr:varLen:": {
        "source_calls": ("rewriteVRecord:recPtr:varLen:",),
        "offset": "0x0087388c",
    },
}

SOURCE_TOKENS = {
    "getRecord:target:recPtr:": ("getRecord:", "target:", "recPtr:"),
    "addRecord:recPtr:": ("addRecord:", "recPtr:"),
    "rewriteRecord:recPtr:": ("rewriteRecord:", "recPtr:"),
    "addVRecord:recPtr:varLen:": ("addVRecord:", "recPtr:", "varLen:"),
    "rewriteVRecord:recPtr:varLen:": ("rewriteVRecord:", "recPtr:", "varLen:"),
}

WRAPPER_BODIES = {
    "getRecord:target:recPtr:": ("getRecordIntResult:",),
    "addRecord:recPtr:": ("add: recoveredArg1 target: recoveredArg2 record:",),
    "rewriteRecord:recPtr:": ("update: recoveredArg1 target: recoveredArg2 record:",),
    "addVRecord:recPtr:varLen:": ("add: recoveredArg1 target: recoveredArg2 vRecord:",),
    "rewriteVRecord:recPtr:varLen:": ("update: recoveredArg1 target: recoveredArg2 vRecord:",),
}


class AuditError(ValueError):
    pass


def _source_bodies(text: str) -> dict[str, str]:
    # Recovered source uses a stable method delimiter and a selector line.  A
    # non-greedy block keeps this parser independent of generated local names.
    pattern = re.compile(
        r"!CTIFil methodsFor:.*?!\n(?P<selector>[^\n]+)\n(?P<body>.*?\n)! !",
        re.S,
    )
    return {m.group("selector").strip(): m.group(0) for m in pattern.finditer(text)}


def _symbol_rows(path: Path) -> dict[str, dict]:
    rows = {}
    with path.open(encoding="utf-8", newline="") as stream:
        for row in csv.DictReader(stream, delimiter="\t"):
            value = row.get("ascii_string", "")
            selector = next((item for item in REQUIRED if value.startswith(item)), None)
            if selector:
                rows[selector] = {
                    "file_offset_hex": row.get("file_offset_hex"),
                    "ascii_string": value,
                }
    return rows


def audit(source_path: Path = DEFAULT_SOURCE, strings_path: Path = DEFAULT_STRINGS) -> dict:
    source_path = Path(source_path)
    strings_path = Path(strings_path)
    source = source_path.read_text(encoding="utf-8")
    bodies = _source_bodies(source)
    symbols = _symbol_rows(strings_path)
    method_results = {}
    for selector, expected in REQUIRED.items():
        body = "\n".join(
            block for key, block in bodies.items()
            if any(marker in block for marker in WRAPPER_BODIES[selector])
        )
        calls = [call for call in expected["source_calls"]
                 if all(token in body for token in SOURCE_TOKENS[call])]
        method_results[selector] = {
            "source_method_present": bool(body),
            "expected_calls": list(expected["source_calls"]),
            "calls_present": calls,
            "source_dispatch_shape_verified": bool(body) and len(calls) == len(expected["source_calls"]),
            "symbol_table_row": symbols.get(selector),
            "symbol_table_offset_expected": expected["offset"],
            "symbol_table_offset_verified": symbols.get(selector, {}).get("file_offset_hex") == expected["offset"],
        }
    source_shape = all(item["source_dispatch_shape_verified"] for item in method_results.values())
    symbols_ok = all(item["symbol_table_offset_verified"] for item in method_results.values())
    return {
        "profile": PROFILE,
        "source": str(source_path),
        "source_sha256": hashlib.sha256(source_path.read_bytes()).hexdigest(),
        "strings": str(strings_path),
        "strings_sha256": hashlib.sha256(strings_path.read_bytes()).hexdigest(),
        "recovered_source_banner_present": source.startswith(
            '"Statically reconstructed from ASCET image; generated names; not original source.'
        ),
        "methods": method_results,
        "recovered_source_dispatch_shape_verified": source_shape,
        "native_symbol_table_presence_verified": symbols_ok,
        "native_symbol_table_rows": len(symbols),
        "native_leaf_semantics_proven": False,
        "original_source_verified": False,
        "write_authorized": False,
        "inverse_authorized": False,
        "native_calls": 0,
        "full_delivery": False,
        "note": "Recovered wrapper calls and image string-table entries are present; native implementation semantics, durability, and inverse remain unproven.",
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--strings", type=Path, default=DEFAULT_STRINGS)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError("output already exists")
    result = audit(args.source, args.strings)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["recovered_source_dispatch_shape_verified"] and result["native_symbol_table_presence_verified"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
