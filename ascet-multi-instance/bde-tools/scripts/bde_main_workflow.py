"""Formal isolated Main Tool.call workflow; preflight is not complete-case acceptance."""
from __future__ import annotations

import argparse
from collections import Counter
import json
import os
from pathlib import Path
import shutil
import subprocess
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_attached_order_restoration import validate_probe
import bde_experiments as bench
from bde_isolated_order_experiment import build_fixture
from bde_isolated_runtime import live_manifest
from bde_public_oracle import compare
from bde_tool_client import ToolClient

VARIANTS = ("literal_fanout", "operator_chain", "operator_fanout")


def save_new(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("x", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def json_lines(text):
    return [json.loads(line) for line in text.splitlines() if line]


def verify_pages(calls, body, budget, *, expected_error=False):
    """Independently check actual Tool.call bytes/ranges; do not trust a summary flag."""
    offset, document, total, chunks = 0, None, None, []
    for index, row in enumerate(calls):
        reply = row["response"]
        # A rejected operation can return a paged document. Its initial reply
        # carries the error bit; cursor-only reads successfully deliver the
        # remaining immutable bytes and must not repeat the operation.
        if (reply["is_error"] is not (expected_error and index == 0)
                or reply.get("tool_dispatched") is not True):
            raise ValueError("Formal tool dispatch failed")
        if len(reply["content"].encode("utf-8")) > budget:
            raise ValueError("Actual tool content exceeded byte budget")
        header, chunk = reply["content"].split("\n\n", 1)
        meta = json.loads(header)
        page, delivery = meta["page"], meta["delivery"]
        document = document or meta["document"]
        total = delivery["total_bytes"] if total is None else total
        if (meta["document"] != document or delivery["total_bytes"] != total
                or page["start_byte"] != offset or page["end_byte"] - offset != len(chunk.encode("utf-8"))
                or page["has_more"] != (index < len(calls) - 1)):
            raise ValueError("Document identity or complete contiguous byte ranges differ")
        offset = page["end_byte"]
        chunks.append(chunk)
        if page["has_more"] and (calls[index + 1]["tool"] != "bd_read"
                or calls[index + 1]["args"] != {"cursor": page["next_cursor"]}):
            raise ValueError("Continuation did not use exactly the previous cursor")
    if (not calls or "".join(chunks) != body or offset != total
            or delivery["status"] != "complete" or delivery["delivered_bytes"] != total):
        raise ValueError("Tool client did not deliver the complete exact document")
    return {"passed": True, "pages": len(calls), "bytes": total, "document": document,
            "body_sha256": service.digest(body.encode("utf-8")), "budget": budget}


def build_oracle(output, *, scope_lifecycle=False):
    """Fixed eval-only observer; the public six tools cannot dispatch these commands."""
    scripts = service.ROOT / "scripts"
    names = ("AscetStructureRead.cs", "AscetStructureSession.cs", "AscetStructureExperiment.cs",
             "bde_structure_read.st", "bde_session_guard.st", "bde_native_graph_current.st",
             "bde_recovery_status.st", "bde_recovery_release.st", "bde_managed_inverse_handoff.st",
             "bde_attached_drawing_order.st", "bde_main_workflow_witness.st", "bde_class_configuration_read.st",
             "bde_overlay.st", "bde_field_material_probe.st", "bde_native_field_patch.st",
             "bde_native_field_patch_private.st", "bde_native_field_order_plan.st", "bde_field_execution_status.st",
             "bde_registered_model_patch.st", "bde_registered_model_patch_preflight.st", "bde_registered_model_patch_private.st",
             "bde_cache_membership_patch.st", "bde_cache_membership_preflight.st", "bde_cache_membership_private.st",
             "bde_cache_state_patch.st", "bde_cache_state_private.st",
             "bde_field_source_probe.st", "bde_persisted_source_graph.st",
             "bde_field_source_alias_private.st", "bde_field_source_alias_plan.st",
             "bde_field_inverse_values.st", "bde_field_inverse_values_private.st", "bde_observation_copy.st",
             "bde_topology_inverse_values.st", "bde_topology_inverse_values_private.st",
             "bde_topology_native_capture.st", "bde_topology_material_probe.st", "bde_topology_current_context.st",
             "bde_connect_material.st", "bde_module_reference_snapshot.st", "bde_module_persistent_references.st", "bde_create_material.st", "bde_create_declaration_probe.st",
             "bde_enum_history_failure_probe.st", "bde_message_declaration_inventory.st",
             "bde_message_declaration_capture.st", "bde_message_before_study.st", "bde_message_creation_capture.st", "bde_message_history_guard.st", "bde_message_material_diagnostic.st",
             "bde_enum_reference_sync.st",
             "bde_enum_history_terminal_certificate.st",
             "bde_create_declaration_images_probe.st", "bde_enum_definition_inventory.st", "bde_enum_declaration_capture.st", "bde_enum_creation_capture.st", "bde_enum_history_guard.st", "bde_enum_before_study.st", "bde_declaration_capture.st", "bde_declaration_cache_guard.st", "bde_create_history.st", "bde_create_finalize.st", "bde_connect_history.st",
             "bde_connect_local_plan.st", "bde_connect_local_plan_probe.st",
             "bde_connect_source_images.st",
             "bde_connect_source_repair.st",
             "bde_connect_source_repair_certify.st",
             "bde_topology_terminal_fidelity.st",
             "bde_topology_exact_inverse.st",
             "bde_topology_local_inverse.st",
             "bde_topology_head_handoff.st", "bde_topology_owned_head_snapshot.st",
             "bde_topology_owned_inverse.st", "bde_topology_owned_plan_probe.st", "bde_topology_managed_inverse.st",
             "bde_topology_managed_inspect.st", "bde_topology_managed_terminal.st",
             "bde_topology_terminal_recovery.st",
             "bde_topology_unstarted_recovery.st",
             "bde_frozen_source_evidence.st",
             "bde_native_collection_merge.st", "bde_parent_order_inverse.st", "bde_parent_order_evidence.st",
             "bde_edge_restore_guard.st", "bde_delete_inverse_values.st", "bde_drawing_order_evidence.st",
             "bde_native_source_images.st", "bde_source_material_private.st", "bde_field_native_capture.st",
             "bde_field_local_inverse.st", "bde_field_source_identity_restore.st",
             "bde_source_identity_normalization.st", "bde_source_identity_normalization_private.st",
             "bde_source_structural_correspondence.st", "bde_topology_source_normalization_private.st",
             "bde_source_logical_images.st", "bde_frozen_image_merge.st",
             "bde_topology_forward_source_normalization.st",
             "bde_local_literal_terminal_recovery.st",
             "bde_retained_field_failure_probe.st",
             "bde_rewire_inverse_inspect.st",
             "bde_field_failure_compensation.st",
             "bde_local_handoff_finish.st",
             "bde_source_graph_equal.st", "bde_field_source_restore.st", "bde_field_source_compensation.st",
             "bde_main_current_source.st", "bde_structure_edit.st",
             "bde_commit_resources.st", "bde_commit_prepare.st", "bde_commit_status.st", "bde_commit_attempt.st", "bde_commit_registered_models.st", "bde_commit_registered_models_current.st", "bde_commit_model_diff_private.st", "bde_commit_control.st", "bde_commit_control_diff_private.st", "bde_commit_serializer_profile.st", "bde_serializer_configuration.st", "bde_commit_reference_record.st", "bde_commit_reference_private.st", "bde_commit_reciprocal.st", "bde_commit_reciprocal_current.st", "bde_reference_file_profile.st", "bde_reference_file_scan.st", "bde_reference_file_query.st", "bde_reference_file_prepare.st", "bde_reference_baseline_lookup.st", "bde_commit_persistent_owners.st",
             "bde_structure_stage_common.st", "bde_structure_stage_prepare.st",
             "bde_structure_stage_guard.st", "bde_structure_stage_apply.st",
             "bde_structure_stage_terminal.st", "bde_structure_dispatch.st")
    if scope_lifecycle:
        names += ("bde_scope_inventory.st",)
    from bde_structure_stages import build
    staged_sources, _ = build()
    for name, expected in staged_sources.items():
        if (scripts / name).read_text(encoding='utf-8-sig') != expected:
            raise ValueError('Generated fixed structural phase differs: ' + name)
    binary = output / "AscetMainWorkflowOracle.exe"
    for name in names:
        destination = output / "oracle-source" / name
        destination.parent.mkdir(exist_ok=True)
        shutil.copyfile(scripts / name, destination)
    from bde_declaration_images import build as build_declaration_images, build_enum, build_message
    declaration_source = output / 'oracle-source' / 'bde_declaration_images.st'
    declaration_source.write_text(build_declaration_images(), encoding='utf-8')
    enum_declaration_source = output / 'oracle-source' / 'bde_enum_declaration_images.st'
    enum_declaration_source.write_text(build_enum(), encoding='utf-8')
    message_declaration_source = output / 'oracle-source' / 'bde_message_declaration_images.st'
    message_declaration_source.write_text(build_message(), encoding='utf-8')
    dll = Path("E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll")
    reply = subprocess.run(["C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe", "/nologo", "/platform:x86",
        "/main:AscetStructureSession", "/define:BDE_MAIN_WORKFLOW_EVAL;BDE_DRAWING_LINEAGE_EVAL" +
            (";BDE_SCOPE_LIFECYCLE_EVAL" if scope_lifecycle else ""),
        "/r:" + str(dll), "/r:System.Web.Extensions.dll", "/out:" + str(binary),
        *["/resource:" + str(scripts / name) + "," + name for name in names if name.endswith(".st")],
        '/resource:' + str(declaration_source) + ',bde_declaration_images.st',
        '/resource:' + str(enum_declaration_source) + ',bde_enum_declaration_images.st',
        '/resource:' + str(message_declaration_source) + ',bde_message_declaration_images.st',
        *[str(scripts / name) for name in names if name.endswith(".cs")]],
        capture_output=True, text=True, errors='replace', timeout=30)
    save_new(output / "oracle-build.json", {"exit_code": reply.returncode,
        "stdout": reply.stdout, "stderr": reply.stderr})
    if reply.returncode:
        raise ValueError("Fixed Main observer build failed")
    shutil.copyfile(dll, output / dll.name)
    return binary


def wire_result(wire):
    return {"connections": wire["connections"], "request": wire["request"].result(),
            "response": wire["response"].result(), "errors": wire["errors"]}


def preflight(fixture, output, domain, environment, port, binary, record_result):
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    token = "main_" + fingerprint({"domain": domain, "output": str(output)})
    order_token = "edit_" + fingerprint({"domain": domain, "observation": str(output)})
    result = {"passed": False, "scope": "MAIN-01 formal Main read/find/inspect preflight only",
              "model_setters_called": 0, "complete_case_pass": False, "witness_token": token}
    output.mkdir()
    logs = []
    captured = released = False

    def observe(action):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=port) as wire:
            native_environment = {**environment, "ASCET_BD_PROBE_PORT": str(wire["port"])}
            with Observer(fixture["component"], environment=native_environment, timeout=30) as adapter:
                native = adapter.observe(domain, [])
                public = adapter.observe_public(domain)
                tree = adapter._exchange({"cmd": "observe_public_tree"})
                order = adapter._exchange({"cmd": "attached_drawing_order", "action": "probe",
                    "restoration_token": order_token})
                order_check = validate_probe(order, domain, native)
                witness = adapter._exchange({"cmd": "main_readonly_witness", "action": action, "token": token})
        return {"native": native, "public": public, "public_tree": tree, "order": order,
                "order_validation": order_check, "witness": witness, "wire": wire_result(wire)}

    def call(client, tool, arguments, budget=4096):
        start = len(logs)
        meta, body, error = client.call(tool, {**arguments, "max_bytes": budget})
        if error:
            raise ValueError("Formal " + tool + " rejected: " + body)
        check = verify_pages(logs[start:], body, budget)
        result.setdefault("documents", []).append({"tool": tool, "arguments": arguments, **check})
        return meta, body

    def append(row):
        save_new(output / "tool-calls" / (str(len(logs)).zfill(3) + ".json"), row)
        logs.append(row)

    try:
        before = observe("capture")
        captured = True
        save_new(output / "before.json", before)
        if not before["witness"]["unchanged"]:
            raise ValueError("Native witness baseline differs")
        independent = compare(before["native"]["entries"], before["public"])
        if not independent["passed"] or before["public_tree"] != {"Main": before["public"]}:
            raise ValueError("Independent complete public graph differs")
        result["public_oracle"] = independent
        with bench.proxy(upstream_port=port) as wire:
            client = ToolClient(output, domain["session"], append)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire["port"]))
            client.env["ASCET_BD_STRUCTURAL_WRITES"] = "0"
            meta, body = call(client, "bd_read", {"component": fixture["component"], "view": "structure"})
            snapshot = meta["snapshot"]
            record = service.load_record(snapshot, "s_", "snapshots")
            if (record["session"] != domain["session"] or record["database"].casefold() != domain["database"].casefold()
                    or record["ascet_process_epoch"] != domain["process_epoch"] or record["oid"] != domain["oid"]
                    or record["component"].strip("\\") != fixture["component"].strip("\\")
                    or record["dirty_editors"] != [0, 0] or record["structure"] != before["native"]):
                raise ValueError("Formal read identity/coverage differs from native baseline")
            expected_rows = [{**row, "ref": "Main/" + row["ref"]} for row in before["native"]["entries"]]
            if json_lines(body) != expected_rows:
                raise ValueError("Formal delivered graph omitted or changed rows")
            result["snapshot"] = snapshot
            result["counts"] = dict(Counter(row["kind"] for row in expected_rows))
            frozen_frames = wire["request"].frames
            _, repeated_body = call(client, "bd_read", {"snapshot": snapshot})
            if repeated_body != body:
                raise ValueError("Immutable snapshot delivery changed")
            for kind in ("node", "pin", "edge"):
                _, found_body = call(client, "bd_find", {"snapshot": snapshot, "query": "Main/", "kind": kind})
                found = json_lines(found_body)
                expected = [row for row in expected_rows if row["kind"] == kind]
                if {row["ref"] for row in found} != {row["ref"] for row in expected} or len(found) != len(expected):
                    raise ValueError("Formal find omitted or duplicated " + kind)
                refs = [row["ref"] for row in found]
                if refs:
                    _, inspected_body = call(client, "bd_inspect", {"snapshot": snapshot, "query": "fields", "targets": refs})
                    inspected = json_lines(inspected_body)
                    by_ref = {row["ref"]: row for row in before["native"]["entries"]}
                    for row in inspected:
                        expected_fields = by_ref[row["ref"].removeprefix("Main/")]
                        if row["fields"] != {key: {"state": "known", "value": value, "writable": False}
                            for key, value in expected_fields.items()}:
                            raise ValueError("Formal inspection changed a field")
                    if [row["ref"] for row in inspected] != refs:
                        raise ValueError("Formal inspection omitted or reordered requested targets")
            if wire["request"].frames != frozen_frames:
                raise ValueError("Snapshot read/find/inspect unexpectedly accessed ASCET")
            result["offline_queries_additional_frames"] = 0
        result["tool_wire"] = wire_result(wire)
        after = observe("check")
        save_new(output / "after.json", after)
        if (not after["witness"]["unchanged"] or not compare(after["native"]["entries"], after["public"])["passed"]
                or before["native"] != after["native"] or before["public"] != after["public"]
                or before["public_tree"] != after["public_tree"]
                or before["witness"]["physical"] != after["witness"]["physical"]
                or before["witness"]["drawing"] != after["witness"]["drawing"]):
            raise ValueError("Actual Tool.call reads changed baseline object identity/order/fields/source")
        result["passed"] = True
    except Exception as error:
        result["error"] = str(error)
        result["traceback"] = traceback.format_exc()
    finally:
        if captured:
            try:
                release = observe("release")
                save_new(output / "release.json", release)
                released = release["witness"]["released"]
                if not release["witness"]["unchanged"]:
                    result["passed"] = False
                    result["release_baseline_changed"] = True
            except Exception as error:
                result["passed"] = False
                result["release_error"] = str(error)
        result["witness_released"] = released
        result["tool_calls"] = len(logs)
        save_new(output / "result.json", result)
        record_result(result)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--fixture", choices=(*VARIANTS, "all"), default="literal_fanout")
    parser.add_argument("--repeats", type=int, choices=(1, 3), default=1)
    parser.add_argument("--prepare-editor", action="store_true",
                        help="Open the exact isolated editor and record setup/configuration effects before preflight witnesses")
    args = parser.parse_args()
    output = args.output.resolve()
    if not output.is_relative_to(service.ROOT / "analysis/bde-experiments") or output.exists():
        raise ValueError("Fresh owned BDE experiment output required")
    manifest_path = args.manifest.resolve()
    manifest, process, epoch = live_manifest(manifest_path)
    check_pending({"database": manifest["database"], "process_epoch": epoch})
    output.mkdir(parents=True)
    service.STORE = output / "store"
    for name in ("snapshots", "raw", "documents", "cursors", "journals"):
        (service.STORE / name).mkdir(parents=True, exist_ok=True)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest["port"]),
        ASCET_BD_PROBE_PORT=str(manifest["port"]), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL="1")
    result = {"passed": False, "scope": "MAIN-01 isolated formal Tool.call preflight only",
        "executor_profile": os.environ.get("ASCET_BD_OPERATION_EXECUTOR", "legacy_monolithic"),
        "manifest": str(manifest_path), "database": manifest["database"], "process_epoch": epoch,
        "source_manifest": source_manifest(), "rounds": [], "complete_case_pass": False,
        "full_delivery": False, "original_restoration": False, "automatic_retry": False,
        "not_verified": ["edit/wire/delete and automatic actual edit diff", "exact inverse/inverse-of-inverse",
            "native visual lifecycle/Undo purity", "all native families/owner scopes", "cross-resource FLOW/Class",
            "complete required-case acceptance", "original recovery/real agent/package"]}
    save = lambda: (output / "result.json").write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8")
    save()
    logs = Path(manifest["logs"]) / "crash.log"
    crash_before = logs.read_bytes() if logs.exists() else b""
    try:
        binary = build_oracle(output)
        result["oracle_binary_sha256"] = service.digest(binary.read_bytes())
        fixture_binary = build_fixture()
        for variant in VARIANTS if args.fixture == "all" else (args.fixture,):
            fixture_output = output / ("fixture-" + variant)
            result["stage"] = "fixture_started_" + variant
            save()
            with patch.dict(os.environ, environment), service.live_lock():
                reply = subprocess.run([str(fixture_binary), str(manifest_path), str(fixture_output), epoch, variant],
                    capture_output=True, text=True, encoding="utf-8", env=environment, timeout=60)
            save_new(output / ("fixture-process-" + variant + ".json"), {"exit_code": reply.returncode,
                "stdout": reply.stdout, "stderr": reply.stderr})
            records = sorted(fixture_output.glob("*.json"))
            if reply.returncode or not records:
                raise ValueError("Fixture failed; preserve staged records without automatic retry")
            fixture = json.loads(records[-1].read_text(encoding="utf-8"))
            if fixture.get("passed") is not True:
                raise ValueError("Fixture was not verified")
            if args.prepare_editor:
                from bde_editor_preparation import prepare_editor
                setup = prepare_editor(manifest_path, records[-1], output / ("editor-" + variant))
                result.setdefault("editor_preparations", {})[variant] = setup
                save()
                if setup.get("passed") is not True:
                    raise ValueError("Exact editor setup failed; no formal edit baseline captured")
            domain = {"session": output.name, "database": manifest["database"], "process_epoch": epoch, "oid": fixture["oid"]}
            for index in range(args.repeats):
                result["stage"] = variant + "_preflight_" + str(index)
                save()
                row = preflight(fixture, output / (variant + "-" + str(index)), domain,
                    environment, manifest["port"], binary, lambda item: (result["rounds"].append(item), save()))
                if row["passed"] is not True:
                    raise ValueError("Formal Main preflight failed; inspect raw evidence")
        result["sources_match"] = result["source_manifest"] == source_manifest()
        crash_after = logs.read_bytes() if logs.exists() else b""
        save_new(output / "crash-growth.json", {"before_bytes": len(crash_before), "after_bytes": len(crash_after),
            "unchanged": crash_before == crash_after})
        if not result["sources_match"] or crash_before != crash_after:
            raise ValueError("Candidate sources or native crash log changed")
        result["passed"] = True
    except Exception as error:
        result["error"] = str(error)
        result["traceback"] = traceback.format_exc()
    save()
    print(json.dumps({"passed": result["passed"], "rounds": len(result["rounds"]),
        "complete_case_pass": False, "output": str(output), "error": result.get("error")}, ensure_ascii=False))
    return 0 if result["passed"] else 1


if __name__ == "__main__":
    raise SystemExit(main())
