"""Compare two retained source-record exports with the exact payload diff contract.

Both inputs are immutable evidence already collected from the same isolated
token.  This script performs no Cebra call and cannot publish a model edit.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from bd_commit_payload_diff import record_payload_diffs


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", type=Path, required=True)
    parser.add_argument("--configuration", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError("output already exists")
    audit = json.loads(args.audit.read_text(encoding="utf-8"))
    config = json.loads(args.configuration.read_text(encoding="utf-8"))
    owners = audit["persistent_owner_capture"]["owners"]
    source = next(owner for owner in owners if owner["role"] == "spec_source")
    before = next(row for row in source["records"] if row["role"] == "owner")
    after = dict(config["sourceRecordPreview"])
    after["role"] = "owner"
    changes = record_payload_diffs([before], [after])
    delta = changes[0]
    result = {
        "passed": (
            audit["native_token"] == audit["persistent_owner_capture"]["native_token"]
            and delta["logical_changed"] is False
            and delta["allocation_tail_changed"] is False
            and delta["write_authorized"] is False
            and delta["inverse_authorized"] is False
        ),
        "profile": "retained_source_payload_exact_projection_v1",
        "native_token": audit["native_token"],
        "record_class": delta["record_class"],
        "owner_key_checked": delta["owner_key"] == before["global_id"],
        "before_logical_size": delta["before_logical_size"],
        "after_logical_size": delta["after_logical_size"],
        "before_allocated_size": delta["before_allocated_size"],
        "after_allocated_size": delta["after_allocated_size"],
        "logical_range_count": len(delta["logical_ranges"]),
        "allocation_tail_range_count": len(delta["allocation_tail_ranges"]),
        "logical_changed": delta["logical_changed"],
        "allocation_tail_changed": delta["allocation_tail_changed"],
        "before_logical_sha256": delta["before_logical_sha256"],
        "after_logical_sha256": delta["after_logical_sha256"],
        "audit_sha256": hashlib.sha256(args.audit.read_bytes()).hexdigest(),
        "configuration_sha256": hashlib.sha256(args.configuration.read_bytes()).hexdigest(),
        "native_calls": 0,
        "write_authorized": False,
        "inverse_authorized": False,
        "full_delivery": False,
        "note": "Two retained read exports compare equal; this is not an after-edit image or persistence proof."
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
