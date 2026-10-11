"""Project a retained source record through the guarded revert-plan boundary.

This is an offline projection of the existing retained v6/source/configuration
evidence.  It performs no Cebra call and no ASCET mutation.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from bde_commit_revert_plan import RevertPlanError, build_revert_plan
from bde_commit_write_dispatch_audit import audit as dispatch_audit
from bd_commit_payload_diff import from_record


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--owners-audit", type=Path, required=True)
    parser.add_argument("--configuration", type=Path, required=True)
    parser.add_argument("--dispatch-audit", type=Path, required=True)
    parser.add_argument("--transaction-audit", type=Path, required=True)
    parser.add_argument("--savepoint-audit", type=Path, required=True)
    parser.add_argument("--recovered-root", type=Path, required=True)
    parser.add_argument("--methods", type=Path, required=True)
    parser.add_argument("--process-epoch", required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError("output already exists")
    owners = json.loads(args.owners_audit.read_text(encoding="utf-8"))
    configuration = json.loads(args.configuration.read_text(encoding="utf-8"))
    transaction = json.loads(args.transaction_audit.read_text(encoding="utf-8"))
    savepoint = json.loads(args.savepoint_audit.read_text(encoding="utf-8"))
    source = next(item for item in owners["persistent_owner_capture"]["owners"]
                  if item["role"] == "spec_source")
    before_row = next(row for row in source["records"] if row["role"] == "owner")
    before = from_record(before_row)
    after_row = dict(configuration["sourceRecordPreview"])
    after_row["role"] = "owner"
    after = from_record(after_row)
    # The retained configuration preview is the applied image for this
    # boundary projection.  It is not asserted to be a live post-edit image.
    try:
        plan = build_revert_plan(
            before, after, after, dispatch_audit(args.recovered_root, args.methods),
            transaction, savepoint, token=owners["native_token"],
            component_oid=owners["component_oid"], process_epoch=args.process_epoch,
            isolated_component=True)
    except RevertPlanError as error:
        if str(error) != "revert requires a non-empty original edit":
            raise
        # This retained serializer preview is intentionally a no-op.  Preserve
        # that evidence instead of manufacturing an edit merely to exercise the
        # inverse route.
        plan = {
            "status": "blocked", "native_token": owners["native_token"],
            "component_oid": owners["component_oid"], "process_epoch": args.process_epoch,
            "base_image": "after", "desired_image": "before",
            "payload_patch_profile": None, "logical_ranges": [],
            "allocation_tail_ranges": [], "candidate": before, "merged": False,
            "missing_gates": ["non_empty_original_edit"],
            "route_evidence": {"retained_preview_is_noop": True},
            "native_calls": 0, "write_authorized": False,
            "inverse_authorized": False,
        }
    result = {
        "passed": (plan["status"] == "blocked" and plan["native_calls"] == 0
                   and not plan["write_authorized"] and not plan["inverse_authorized"]),
        "profile": "retained_source_guarded_revert_plan_v1",
        "native_token": plan["native_token"],
        "component_oid": plan["component_oid"],
        "process_epoch": plan["process_epoch"],
        "record_class": before["record_class"],
        "logical_size_before": len(before["bytes"]),
        "logical_size_after": len(after["bytes"]),
        "status": plan["status"],
        "missing_gates": plan["missing_gates"],
        "logical_ranges": len(plan["logical_ranges"]),
        "allocation_tail_ranges": len(plan["allocation_tail_ranges"]),
        "base_image": plan["base_image"],
        "desired_image": plan["desired_image"],
        "route_evidence": plan["route_evidence"],
        "native_calls": plan["native_calls"],
        "write_authorized": plan["write_authorized"],
        "inverse_authorized": plan["inverse_authorized"],
        "owners_audit_sha256": hashlib.sha256(args.owners_audit.read_bytes()).hexdigest(),
        "configuration_sha256": hashlib.sha256(args.configuration.read_bytes()).hexdigest(),
        "dispatch_audit_sha256": hashlib.sha256(args.dispatch_audit.read_bytes()).hexdigest(),
        "transaction_audit_sha256": hashlib.sha256(args.transaction_audit.read_bytes()).hexdigest(),
        "savepoint_audit_sha256": hashlib.sha256(args.savepoint_audit.read_bytes()).hexdigest(),
        "full_delivery": False,
        "note": "Exact retained after-to-before inverse reached the agent plan boundary; no native inverse was dispatched.",
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
