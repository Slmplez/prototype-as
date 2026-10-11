"""Project a retained source record through the guarded write-plan boundary.

The inputs are existing read-only v6 and serializer artifacts.  This command
does not call Cebra, mutate a model, or open/close ASCET; it proves that the
agent-facing plan can carry the exact payload while remaining blocked by the
unclosed native write gates.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path

from bde_commit_write_dispatch_audit import audit as dispatch_audit
from bd_commit_payload_diff import from_record
from bde_commit_write_plan import build_plan


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--owners-audit", type=Path, required=True)
    parser.add_argument("--configuration", type=Path, required=True)
    parser.add_argument("--dispatch-audit", type=Path, required=True)
    parser.add_argument("--leaf-audit", type=Path, required=True)
    parser.add_argument("--transaction-audit", type=Path, required=True)
    parser.add_argument("--source-audit", type=Path, required=True)
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
    static = json.loads(args.dispatch_audit.read_text(encoding="utf-8"))
    leaf = json.loads(args.leaf_audit.read_text(encoding="utf-8"))
    transaction = json.loads(args.transaction_audit.read_text(encoding="utf-8"))
    source_audit = json.loads(args.source_audit.read_text(encoding="utf-8"))
    savepoint_audit = json.loads(args.savepoint_audit.read_text(encoding="utf-8"))
    source = next(item for item in owners["persistent_owner_capture"]["owners"]
                  if item["role"] == "spec_source")
    before_row = next(row for row in source["records"] if row["role"] == "owner")
    before = from_record(before_row)
    desired_row = dict(configuration["sourceRecordPreview"])
    desired_row["role"] = "owner"
    desired = from_record(desired_row)
    # A no-op current image is intentional: this is a plan-boundary projection,
    # not an after-edit image or a persistence proof.
    plan = build_plan(before, desired, before, static,
                      token=owners["native_token"],
                      component_oid=owners["component_oid"],
                      process_epoch=args.process_epoch,
                      isolated_component=True)
    result = {
        "passed": (plan["status"] == "blocked" and plan["native_calls"] == 0
                   and not plan["write_authorized"] and not plan["inverse_authorized"]),
        "profile": "retained_source_payload_guarded_write_plan_v1",
        "native_token": plan["native_token"],
        "component_oid": plan["component_oid"],
        "process_epoch": plan["process_epoch"],
        "record_class": before["record_class"],
        "logical_size": len(before["bytes"]),
        "allocated_size": len(before["allocated_bytes"]),
        "payload_logical_ranges": len(plan["logical_ranges"]),
        "payload_allocation_tail_ranges": len(plan["allocation_tail_ranges"]),
        "status": plan["status"],
        "missing_gates": plan["missing_gates"],
        "dispatch_chain": plan["dispatch_chain"],
        "leaf_bytecode_semantics_pattern_verified": leaf.get("leaf_bytecode_semantics_pattern_verified") is True,
        "leaf_source_semantics_proven": leaf.get("source_semantics_proven") is True,
        "recovered_source_dispatch_shape_verified": source_audit.get("recovered_source_dispatch_shape_verified") is True,
        "native_symbol_table_presence_verified": source_audit.get("native_symbol_table_presence_verified") is True,
        "native_leaf_semantics_proven": source_audit.get("native_leaf_semantics_proven") is True,
        "original_source_verified": source_audit.get("original_source_verified") is True,
        "transaction_shape_verified": transaction.get("transaction_shape_verified") is True,
        "durable_inverse_verified": transaction.get("durable_inverse_verified") is True,
        "cross_process_atomic_verified": transaction.get("cross_process_atomic_verified") is True,
        "savepoint_shape_verified": savepoint_audit.get("savepoint_shape_verified") is True,
        "savepoint_forward_shape_verified": savepoint_audit.get("savepoint_forward_shape_verified") is True,
        "savepoint_restore_shape_verified": savepoint_audit.get("savepoint_restore_shape_verified") is True,
        "savepoint_durable_write_route_verified": savepoint_audit.get("savepoint_durable_write_route_verified") is True,
        "savepoint_durable_inverse_verified": savepoint_audit.get("durable_inverse_verified") is True,
        "native_calls": plan["native_calls"],
        "write_authorized": plan["write_authorized"],
        "inverse_authorized": plan["inverse_authorized"],
        "owners_audit_sha256": hashlib.sha256(args.owners_audit.read_bytes()).hexdigest(),
        "configuration_sha256": hashlib.sha256(args.configuration.read_bytes()).hexdigest(),
        "dispatch_audit_sha256": hashlib.sha256(args.dispatch_audit.read_bytes()).hexdigest(),
        "leaf_audit_sha256": hashlib.sha256(args.leaf_audit.read_bytes()).hexdigest(),
        "transaction_audit_sha256": hashlib.sha256(args.transaction_audit.read_bytes()).hexdigest(),
        "source_audit_sha256": hashlib.sha256(args.source_audit.read_bytes()).hexdigest(),
        "savepoint_audit_sha256": hashlib.sha256(args.savepoint_audit.read_bytes()).hexdigest(),
        "full_delivery": False,
        "note": "Exact retained payload reached the agent write-plan boundary; blocked before native write because CTIFil and inverse gates are incomplete.",
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
