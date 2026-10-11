"""Build a guarded native-record write plan without issuing a native call.

The plan is the boundary between agent-facing payload diffs and a future
persistent writer.  It always computes the exact three-way candidate first,
then reports which independently audited gates are still missing.  A plan is
never an authorization token and never invokes ASCET.
"""
from __future__ import annotations

import re
from copy import deepcopy

from bd_commit_payload_diff import PayloadPatchConflict, three_way_patch


PROFILE = "bde_native_write_plan_v1"
CHAIN = (
    "ASDPersistenceController>>writeRecord:",
    "DBInterface32>>writeRecord:",
    "DBInterface32>>write:record:",
    "CTreeInterface>>write:record:",
    "CTIFil>>write:target:fixedRecord:(vRecord|record):",
)


class WritePlanError(ValueError):
    pass


def _token(token):
    if not isinstance(token, str) or not re.fullmatch(r"edit_[0-9a-f]{64}", token):
        raise WritePlanError("exact edit token required")
    return token


def _audit_gates(audit):
    if not isinstance(audit, dict) or audit.get("profile") != "bde_native_write_dispatch_audit_v1":
        raise WritePlanError("matching native write-dispatch audit required")
    missing = []
    if audit.get("passed_static_dispatch") is not True:
        missing.append("passed_static_dispatch")
    if "leaf_semantics_proven" in audit:
        if audit.get("leaf_semantics_proven") is not True:
            missing.append("ctfil_leaf_semantics_proven")
    elif audit.get("ctfil_source_present") is not True or audit.get("leaf_body_complete") is not True:
        # Compatibility with audit-01 artifacts that predate the explicit
        # source-semantics field.  New audits always use the precise gate.
        missing.append("ctfil_leaf_body_complete")
    if audit.get("transaction_inverse_complete") is not True:
        missing.append("transaction_inverse_complete")
    if audit.get("rollback_selector_present") is not True:
        missing.append("durable_rollback_or_inverse_selector")
    if audit.get("write_authorized") is not True:
        missing.append("audit_write_authorization")
    if audit.get("inverse_authorized") is not True:
        missing.append("audit_inverse_authorization")
    return missing


def build_plan(before, desired, current, audit, *, token, component_oid,
               process_epoch, isolated_component=False):
    """Return a compact agent plan and exact candidate; never write.

    `candidate` is retained only in the caller's process and is not sent to
    Cebra.  The returned plan is blocked unless every native proof gate is
    explicitly true, including a durable rollback/inverse path.
    """
    _token(token)
    if not isinstance(component_oid, str) or not component_oid:
        raise WritePlanError("component OID required")
    if not isinstance(process_epoch, str) or not process_epoch:
        raise WritePlanError("ASCET process epoch required")
    if isolated_component is not True:
        raise WritePlanError("persistent write plan requires an isolated component")
    missing = _audit_gates(audit)
    try:
        patch = three_way_patch(before, desired, current, expected_key=before["global_id"])
    except PayloadPatchConflict:
        raise
    ready = not missing
    result = {
        "profile": PROFILE,
        "status": "ready" if ready else "blocked",
        "native_token": token,
        "component_oid": component_oid,
        "process_epoch": process_epoch,
        "dispatch_chain": list(CHAIN),
        "missing_gates": missing,
        "payload_patch_profile": patch["profile"],
        "logical_ranges": deepcopy(patch["logical_ranges"]),
        "allocation_tail_ranges": deepcopy(patch["allocation_tail_ranges"]),
        "candidate": deepcopy(patch["candidate"]),
        "merged": patch["merged"],
        "native_calls": 0,
        "write_authorized": False,
        "inverse_authorized": False,
    }
    return result


__all__ = ["PROFILE", "CHAIN", "WritePlanError", "build_plan"]
