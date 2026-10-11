"""Build an exact record-level revert plan without calling ASCET.

The forward write-plan and this inverse plan share the same retained payload
contract.  A revert is calculated as an independent three-way patch whose
base is the committed ``after`` image and whose desired image is the original
``before`` image.  The current image may contain unrelated changes; those are
preserved.  Any overlap with the original edit is a hard conflict.

This module deliberately does not invoke a native setter, store, commit or
savepoint restore.  It is the agent-facing calculation boundary until the
native leaf semantics, durable inverse selector and authorization proofs are
complete.
"""
from __future__ import annotations

from copy import deepcopy
import re

from bd_commit_payload_diff import PayloadPatchConflict, three_way_patch, validate_payload


PROFILE = "bde_native_revert_plan_v1"


class RevertPlanError(ValueError):
    pass


def _token(token):
    if not isinstance(token, str) or not re.fullmatch(r"edit_[0-9a-f]{64}", token):
        raise RevertPlanError("exact edit token required")
    return token


def _audit_summary(dispatch_audit, transaction_audit, savepoint_audit):
    """Return evidence flags without treating any flag as authorization."""
    if not isinstance(dispatch_audit, dict):
        raise RevertPlanError("write-dispatch audit required")
    if not isinstance(transaction_audit, dict):
        raise RevertPlanError("transaction audit required")
    if not isinstance(savepoint_audit, dict):
        raise RevertPlanError("savepoint audit required")
    return {
        "dispatch_profile": dispatch_audit.get("profile"),
        "passed_static_dispatch": dispatch_audit.get("passed_static_dispatch") is True,
        "leaf_semantics_proven": (
            dispatch_audit.get("leaf_semantics_proven") is True
            or dispatch_audit.get("ctfil_source_present") is True
            and dispatch_audit.get("leaf_body_complete") is True
        ),
        "transaction_shape_verified": transaction_audit.get("transaction_shape_verified") is True,
        "durable_inverse_verified": transaction_audit.get("durable_inverse_verified") is True,
        "cross_process_atomic_verified": transaction_audit.get("cross_process_atomic_verified") is True,
        "savepoint_shape_verified": savepoint_audit.get("savepoint_shape_verified") is True,
        "savepoint_restore_shape_verified": savepoint_audit.get("savepoint_restore_shape_verified") is True,
        "savepoint_durable_inverse_verified": savepoint_audit.get("durable_inverse_verified") is True,
        # Audit inputs are observations only. They never grant permission to
        # dispatch an inverse; authorization is a separate gate.
        "inverse_authorization_verified": False,
    }


def build_revert_plan(before, after, current, dispatch_audit, transaction_audit,
                      savepoint_audit, *, token, component_oid, process_epoch,
                      isolated_component=False):
    """Return an exact inverse candidate and a guarded status.

    ``before`` and ``after`` are the immutable images recorded for one edit;
    ``current`` is a fresh image.  The returned candidate is detached and may
    be serialized by the caller, but it is never sent to Cebra here.
    """
    _token(token)
    if not isinstance(component_oid, str) or not component_oid:
        raise RevertPlanError("component OID required")
    if not isinstance(process_epoch, str) or not process_epoch:
        raise RevertPlanError("ASCET process epoch required")
    if isolated_component is not True:
        raise RevertPlanError("persistent revert plan requires an isolated component")
    old = validate_payload(before)
    applied = validate_payload(after, expected_key=old["global_id"])
    now = validate_payload(current, expected_key=old["global_id"])
    if old == applied:
        raise RevertPlanError("revert requires a non-empty original edit")
    evidence = _audit_summary(dispatch_audit, transaction_audit, savepoint_audit)
    # The inverse is based on the applied image, not the original image.  This
    # is what lets a later independent change survive the revert.
    patch = three_way_patch(applied, old, now, expected_key=applied["global_id"])
    missing = []
    if not evidence["leaf_semantics_proven"]:
        missing.append("ctfil_leaf_semantics_proven")
    if not evidence["transaction_shape_verified"]:
        missing.append("transaction_shape_verified")
    if not evidence["durable_inverse_verified"]:
        missing.append("transaction_inverse_complete")
    if not evidence["savepoint_shape_verified"]:
        missing.append("savepoint_shape_verified")
    if not evidence["savepoint_durable_inverse_verified"]:
        missing.append("durable_rollback_or_inverse_selector")
    if not evidence["cross_process_atomic_verified"]:
        missing.append("cross_process_atomic_verified")
    if not evidence["inverse_authorization_verified"]:
        missing.append("audit_inverse_authorization")
    return {
        "profile": PROFILE,
        "status": "ready" if not missing else "blocked",
        "native_token": token,
        "component_oid": component_oid,
        "process_epoch": process_epoch,
        "base_image": "after",
        "desired_image": "before",
        "payload_patch_profile": patch["profile"],
        "logical_ranges": deepcopy(patch["logical_ranges"]),
        "allocation_tail_ranges": deepcopy(patch["allocation_tail_ranges"]),
        "candidate": deepcopy(patch["candidate"]),
        "merged": patch["merged"],
        "missing_gates": missing,
        "route_evidence": evidence,
        "native_calls": 0,
        "write_authorized": False,
        "inverse_authorized": False,
    }


__all__ = ["PROFILE", "RevertPlanError", "build_revert_plan"]
