"""Build a read-only unchanged reference-list rewrite candidate from retained v6 evidence."""
import argparse
import hashlib
import json
from pathlib import Path

from bd_commit_persistent_owners import validate_capture
from bd_commit_reference_write_set import check_inbound, plan
from bd_persistent_references import decode


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--audit", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError("output already exists")
    audit = json.loads(args.audit.read_text(encoding="utf-8"))
    owner_capture = validate_capture(audit["persistent_owner_capture"])
    reciprocal = audit["original_reciprocal_capture"]
    owner_key = reciprocal["owner_key"]
    outgoing = reciprocal["outgoing_record"]
    decoded = decode(outgoing, owner_key)
    write_set = plan(owner_key, outgoing, decoded["entries"])
    inbound = check_inbound(write_set, reciprocal["records"])
    result = {
        "passed": (
            owner_capture["phase"] == "captured"
            and write_set["outgoing_changed"] is False
            and inbound["patches"] == []
            and inbound["unrelated_entries_preserved"] is True
            and inbound["persistent_write_performed"] is False
            and inbound["write_authorized"] is False
            and inbound["inverse_authorized"] is False
        ),
        "profile": "read_only_unchanged_reference_list_candidate_v1",
        "native_token": audit["native_token"],
        "component_oid": audit["component_oid"],
        "generation": audit["generation"],
        "owner_key": owner_key,
        "target_count": len(write_set["reciprocal_targets"]),
        "outgoing_before_count": len(write_set["outgoing_before_entries"]),
        "outgoing_after_count": len(write_set["outgoing_after_entries"]),
        "outgoing_changed": write_set["outgoing_changed"],
        "inbound_checked_targets": len(inbound["checked_targets"]),
        "inbound_patches": len(inbound["patches"]),
        "self_reference_included": inbound["self_reference_included"],
        "unrelated_entries_preserved": inbound["unrelated_entries_preserved"],
        "original_capture_provenance_verified": inbound["original_capture_provenance_verified"],
        "persistent_write_performed": inbound["persistent_write_performed"],
        "write_authorized": inbound["write_authorized"],
        "inverse_authorized": inbound["inverse_authorized"],
        "full_delivery": False,
        "audit_sha256": hashlib.sha256(args.audit.read_bytes()).hexdigest(),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
