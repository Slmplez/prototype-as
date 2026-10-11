"""Execute version-bound BDE acceptance scenarios without promoting partial studies.

Only fixed offline adapters are enabled initially. Every policy case appears in
the report; an unspecified scenario, missing adapter or evidence layer prevents
acceptance. This runner is separate from the historical partial evidence ledger.
"""
from __future__ import annotations

import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]
POLICY = ROOT / "docs/bde-tools-eval-policy.json"
GATES = ROOT / "docs/bde-tools-eval-gates.md"
FLOW = ROOT / "docs/bde-signal-flow-eval.md"
PLAN = ROOT / "docs/bde-core-function-delivery-plan-20261004.md"


def python_adapter(*tests):
    return {"kind": "python", "tests": list(tests)}


ADAPTERS = {
    "python_shapes": python_adapter(
        "test_bd_read_contract.ReadContractTests.test_shared_corpus_before_any_native_io",
        "test_bd_write_contract.WriteContractTests.test_shared_corpus"),
    "write_shape_before_io": python_adapter(
        "test_bd_write_contract.WriteContractTests.test_malformed_write_rejected_before_snapshot_or_native_io"),
    "unknown_transport": python_adapter(
        "test_bd_structure_conflicts.ConflictTransportTests.test_only_explicit_native_no_mutation_reply_is_safe_conflict",
        "test_bd_structure_conflicts.ConflictTransportTests.test_error_text_or_missing_mutation_proof_cannot_downgrade_unknown"),
    "python_paging": python_adapter(*[
        "test_bd_paging_acceptance.PagingAcceptanceTests." + name for name in (
            "test_utf8_exact_delivery_at_boundary_and_middle_budgets",
            "test_repeated_cursor_and_interleaved_documents_keep_identity",
            "test_missing_byte_ranges_never_claim_complete",
            "test_corrupt_and_missing_records_refuse_without_new_cursor",
            "test_invalid_offsets_and_budgets_refuse_without_new_cursor",
            "test_oversized_envelope_is_explicit_failure")]),
    "literal_journal": python_adapter(*[
        "test_bd_edit_journal.EditJournalTests." + name for name in (
            "test_real_local_side_effect_patch_replay_and_offline_diff",
            "test_reply_lost_after_write_never_retries",
            "test_disk_failure_before_started_blocks_write",
            "test_disk_failure_after_mutation_blocks_replay",
            "test_corrupt_journal_never_replays_native_write")]),
    "structural_persistence": python_adapter(
        "test_bd_structure_persistence.StructurePersistenceTests.test_prewrite_persistence_failure_discards_prepared_without_setter",
        "test_bd_structure_persistence.StructurePersistenceTests.test_after_write_disk_failure_returns_unknown_and_never_replays"),
    "group_persistence": python_adapter(*[
        "test_bd_group_journal.GroupJournalTests." + name for name in (
            "test_second_setter_reply_lost_stops_third_step_and_is_never_replayed",
            "test_group_outcome_disk_failure_retains_started_and_local_actual_patch",
            "test_preflight_record_disk_failure_occurs_before_any_setter")]),
    "doge_shapes": {
        "kind": "bun",
        "files": ["src/tools/BlockDiagramTool/BlockDiagramReadContract.test.ts",
                  "src/tools/BlockDiagramTool/BlockDiagramWriteContract.test.ts"],
        "tests": ["read argument shape corpus matches Python before any native calls",
                  "write argument shapes match the Python contract"]},
    "doge_paging": {
        "kind": "bun",
        "files": ["src/tools/BlockDiagramTool/BlockDiagramPaging.test.ts"],
        "tests": [
            "local continuation matches independent Python pages, UTF-8 bytes and delivery counts at every budget",
            "Python resumes durable cursors produced locally and repeated cursors keep the same byte range",
            "missing intermediate pages cannot become complete delivery",
            "session mismatch, corrupt records and missing records fall back to authoritative Python errors",
            "invalid offset, UTF-8 continuation and budget retain Python refusal without publishing cursors",
            "floating metadata and non-BMP key ordering use Python without reencoding the record",
            "write, malformed, combined and missing-session inputs never access the store"]},
}


def scenario(identifier, adapter, requirement):
    return {"id": identifier, "adapter": adapter, "requirement": requirement,
            "evidence_level": "offline", "trials_required": 1,
            "fixture": "isolated deterministic offline fixture; no native validation"}


G0_SCENARIOS = {
    "CONTRACT-01": [
        scenario("python_shapes", "python_shapes", "Python accepts/rejects every saved read/write corpus row"),
        scenario("doge_shapes", "doge_shapes", "Doge schemas agree with independent corpus expectations"),
        scenario("write_shape_before_io", "write_shape_before_io", "Malformed write refuses before lookup/native I/O"),
        scenario("unknown_transport", "unknown_transport", "Only explicit no-mutation evidence permits safe rejection"),
        scenario("all_native_applicable_shapes", None, "Close all declared tools/op/type/owner/scope shapes, including unsupported hierarchy/sequence; finite corpus is not exhaustive schema coverage"),
    ],
    "CONTRACT-02": [
        scenario("python_paging", "python_paging", "Exact independent UTF-8 bytes/budgets, retries, gaps, integrity, document/session isolation and explicit overflow refusal"),
        scenario("doge_paging", "doge_paging", "Doge/Python durable cursor interoperability, every prescribed rejection and fallback"),
    ],
    "CONTRACT-03": [
        scenario("literal_journal", "literal_journal", "Literal journal idempotency, changed intent, started/after persistence and corruption"),
        scenario("structural_persistence", "structural_persistence", "Structural prepared/started and after-write durability refusal/unknown"),
        scenario("group_persistence", "group_persistence", "Group prewrite/afterwrite/lost completion durability and no replay"),
        scenario("all_formal_journal_routes", None, "Cover formal ordinary/creation/hierarchy/Class/group routes and status queries at every required durable boundary; adapter fixtures alone do not close every route"),
    ],
}


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def canonical(value):
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"), allow_nan=False)


def save_new(path, value):
    with path.open("x", encoding="utf-8", newline="\n") as stream:
        stream.write(json.dumps(value, ensure_ascii=False, indent=2) + "\n")


def specification(policy):
    """Keep uncovered complete-case definitions explicitly unavailable."""
    clauses = {}
    for path in (GATES, FLOW, PLAN):
        for line in path.read_text(encoding="utf-8").splitlines():
            if not line.startswith("| "):
                continue
            cells = [cell.strip() for cell in line.strip("|").split("|")]
            key = cells[0].split(":", 1)[0].split("：", 1)[0]
            if key not in clauses:
                clauses[key] = {"source": str(path.relative_to(ROOT)), "clause": line}
    cases = {}
    for group, definition in policy["groups"].items():
        required = definition.get("cases", definition.get("required_cases", []))
        for identifier in [*required, *definition.get("reporting_cases", [])]:
            if identifier in cases:
                raise ValueError("Duplicate policy case " + identifier)
            cases[identifier] = {
                "id": identifier, "group": group, "required": identifier in required,
                "complete_specification": identifier in G0_SCENARIOS,
                "requirement": clauses.get(identifier, {"source": str(PLAN.relative_to(ROOT)),
                    "clause": "See complete case definition and full scope in the functional delivery plan"}),
                "scenarios": G0_SCENARIOS.get(identifier, []),
                "unimplemented": ([] if identifier in G0_SCENARIOS else [
                    "Detailed executable scenarios/fixtures/oracles for this complete case are not yet connected"]),
            }
    return {"format": "bde-complete-case-spec-v1", "policy": policy["id"], "cases": cases}


def source_manifest():
    # Document provenance is in specification.json. Its normative clauses are
    # compared separately, so a progress/header edit does not invalidate code.
    paths = {POLICY, Path(__file__), ROOT / "scripts/bde_acceptance_worker.py"}
    for path in (ROOT / "scripts").glob("*"):
        if path.suffix in (".py", ".st", ".cs", ".json") and path.name.startswith(
                ("bd", "test_bd", "Ascet", "format_bd", "current_class", "CurrentClass")):
            paths.add(path)
    paths.update((ROOT / "Doge/src/tools/BlockDiagramTool").glob("*.ts"))
    paths.update(ROOT / path for path in ("Doge/src/bootstrapMacro.ts",
        "Doge/src/Tool.ts", "Doge/src/bootstrap/state.ts"))
    paths.update((ROOT / "Doge" / name) for name in ("package.json", "bun.lock"))
    paths.add(ROOT / "analysis/live-api/AEB_dFxTar.full.json")
    return {str(path.relative_to(ROOT)).replace("\\", "/"): sha(path)
            for path in sorted(paths) if path.is_file()}


def trial_verdict(required_tests, raw):
    """Only executed, non-skipped, nonempty assertion results can pass."""
    rows = raw.get("tests", [])
    names = [row.get("id") for row in rows]
    if len(names) != len(set(names)):
        return "fail", ["Duplicate test identity"]
    missing = sorted(set(required_tests) - set(names))
    reasons = ["Missing required test: " + name for name in missing]
    if raw.get("exit_code", 0) or any(row.get("status") in ("fail", "error", "unexpected_success") for row in rows):
        return "fail", reasons + ["Execution or assertion failed; raw failure retained"]
    if raw.get("native_io_attempts", 0):
        return "fail", reasons + ["Offline adapter attempted native I/O"]
    if any(row.get("status") != "pass" for row in rows):
        reasons.append("Skipped, expected failure or unexecuted test is not acceptance")
    if not rows:
        reasons.append("No tests executed")
    if raw.get("kind") == "python" and any(row.get("assertion_count", 0) < 1 for row in rows):
        reasons.append("A Python test executed no recorded assertions")
    return ("not_run", reasons) if reasons else ("pass", [])


def case_verdict(case, trials, sources_match=True):
    if not sources_match:
        return "not_run", ["Candidate/source dependencies changed during execution or since recording"]
    reasons = list(case.get("unimplemented", []))
    if not case["complete_specification"] or not case["scenarios"]:
        reasons.append("Complete executable case specification is unavailable")
    failed = False
    for item in case["scenarios"]:
        if item["adapter"] is None:
            reasons.append(item["id"] + ": required execution adapter is not implemented")
        found = [row for row in trials if row.get("scenario") == item["id"]]
        identifiers = [row.get("trial_id") for row in found]
        if len(identifiers) != len(set(identifiers)):
            failed = True
            reasons.append(item["id"] + ": duplicate trial identity")
        if any(row.get("status") == "fail" for row in found):
            failed = True
            reasons.append(item["id"] + ": assertion/execution failure")
        valid = [row for row in found if row.get("status") == "pass"
                 and row.get("evidence_level") == item["evidence_level"]]
        if len(valid) < item["trials_required"]:
            reasons.append(item["id"] + ": missing required execution/count/evidence layer")
    return ("fail" if failed else "not_run" if reasons else "pass"), reasons


def junit_rows(path):
    """JUnit presence, exact test names and process exit are all required."""
    root = ET.parse(path).getroot()
    rows = []
    for node in root.iter("testcase"):
        bad = node.find("failure")
        error = node.find("error")
        skipped = node.find("skipped")
        status = "fail" if bad is not None else "error" if error is not None else "skip" if skipped is not None else "pass"
        rows.append({"id": node.attrib.get("name", ""), "status": status,
                     "details": "".join(node.itertext()) if status != "pass" else ""})
    return rows


def execute_adapter(name, output, env):
    adapter = ADAPTERS[name]
    started = time.perf_counter()
    raw = {"kind": adapter["kind"], "tests": []}
    if adapter["kind"] == "python":
        command = [sys.executable, str(ROOT / "scripts/bde_acceptance_worker.py"),
                   "--adapter", name, "--output", str(output / "tests.json")]
        cwd = ROOT
    else:
        bun = Path.home() / ".bun/bin/bun.exe"
        command = [str(bun), "test", *adapter["files"], "--reporter=junit",
                   "--reporter-outfile=" + str(output / "tests.xml")]
        cwd = ROOT / "Doge"
    try:
        completed = subprocess.run(command, cwd=cwd, env=env, capture_output=True,
                                   encoding="utf-8", timeout=120)
        raw["exit_code"] = completed.returncode
        stdout, stderr = completed.stdout, completed.stderr
        if adapter["kind"] == "python" and (output / "tests.json").is_file():
            raw.update(json.loads((output / "tests.json").read_text(encoding="utf-8")))
            raw["exit_code"] = completed.returncode
        elif adapter["kind"] == "bun" and (output / "tests.xml").is_file():
            raw["tests"] = junit_rows(output / "tests.xml")
    except (OSError, subprocess.TimeoutExpired, ET.ParseError, ValueError) as error:
        raw["exit_code"] = -1
        stdout, stderr = "", str(error)
    (output / "stdout.txt").write_text(stdout, encoding="utf-8")
    (output / "stderr.txt").write_text(stderr, encoding="utf-8")
    raw.update({"command": command, "cwd": str(cwd),
                "elapsed_ms": (time.perf_counter() - started) * 1000})
    raw["status"], raw["reasons"] = trial_verdict(adapter["tests"], raw)
    save_new(output / "raw.json", raw)
    return raw


def run(output, selected):
    policy = json.loads(POLICY.read_text(encoding="utf-8"))
    spec = specification(policy)
    if set(selected) - set(spec["cases"]):
        raise ValueError("Unknown case ID")
    output.mkdir(parents=True, exist_ok=False)
    candidate = source_manifest()
    save_new(output / "specification.json", spec)
    save_new(output / "source-manifest.json", candidate)
    env = dict(os.environ, ASCET_BD_PYTHON=sys.executable,
               ASCET_BD_STORE=str(output / "isolated-tool-store"),
               LOCALAPPDATA=str(output / "isolated-native-state"),
               ASCET_BD_HISTORY_TEST="0", ASCET_BD_NATIVE_PRESENTATION="0")
    for key in list(env):
        if key.startswith("ASCET_BD_") and ("LIVE_TEST" in key or "WRITES" in key):
            env[key] = "0"
    trials = {identifier: [] for identifier in spec["cases"]}
    for identifier in selected:
        for item in spec["cases"][identifier]["scenarios"]:
            if item["adapter"] is None:
                continue
            for number in range(item["trials_required"]):
                trial_id = f"{identifier}-{item['id']}-{number + 1}"
                folder = output / trial_id
                folder.mkdir()
                raw = execute_adapter(item["adapter"], folder, env)
                files = {str(path.relative_to(output)).replace("\\", "/"): sha(path)
                         for path in folder.iterdir() if path.is_file()}
                trials[identifier].append({"trial_id": trial_id, "scenario": item["id"],
                    "evidence_level": "offline", "status": raw["status"], "reasons": raw["reasons"],
                    "tests_run": len(raw["tests"]), "artifacts": files})
                print(json.dumps({"trial": trial_id, "status": raw["status"],
                                  "tests": len(raw["tests"])}), flush=True)
    report = recompute(spec, trials, candidate == source_manifest())
    report.update({"selected_cases": selected, "at_utc": datetime.now(timezone.utc).isoformat(),
                   "source_manifest_sha256": sha(output / "source-manifest.json"),
                   "specification_sha256": sha(output / "specification.json")})
    save_new(output / "report.json", report)
    print(json.dumps({"output": str(output), "complete": report["complete"],
                      "required_statuses": report["required_statuses"]}), flush=True)
    return report


def recompute(spec, trials, sources_match):
    rows = []
    for identifier, case in spec["cases"].items():
        status, reasons = case_verdict(case, trials.get(identifier, []), sources_match)
        rows.append({"case_id": identifier, "required_for_delivery": case["required"],
                     "status": status, "reasons": reasons, "trials": trials.get(identifier, [])})
    required = [row for row in rows if row["required_for_delivery"]]
    return {"format": "bde-complete-case-report-v1", "policy": spec["policy"],
            "complete": bool(required) and all(row["status"] == "pass" for row in required),
            "required_statuses": {status: sum(row["status"] == status for row in required)
                                  for status in ("pass", "fail", "not_run", "blocked")},
            "sources_match": sources_match, "cases": rows}


def verify(output):
    recorded = json.loads((output / "report.json").read_text(encoding="utf-8"))
    spec = json.loads((output / "specification.json").read_text(encoding="utf-8"))
    candidate = json.loads((output / "source-manifest.json").read_text(encoding="utf-8"))
    if sha(output / "specification.json") != recorded["specification_sha256"] or sha(output / "source-manifest.json") != recorded["source_manifest_sha256"]:
        raise ValueError("Recorded specification/candidate integrity mismatch")
    trials = {}
    current_policy = json.loads(POLICY.read_text(encoding="utf-8"))
    specs_match = canonical(spec) == canonical(specification(current_policy))
    for row in recorded["cases"]:
        found = []
        for trial in row["trials"]:
            trial_folder = (output / trial["trial_id"]).resolve()
            if not trial_folder.is_relative_to(output.resolve()):
                raise ValueError("Invalid trial path")
            for name, checksum in trial["artifacts"].items():
                path = (output / name).resolve()
                if not path.is_relative_to(output.resolve()) or not path.is_file() or sha(path) != checksum:
                    raise ValueError("Raw artifact missing/changed: " + name)
            raw = json.loads((trial_folder / "raw.json").read_text(encoding="utf-8"))
            item = next(item for item in spec["cases"][row["case_id"]]["scenarios"] if item["id"] == trial["scenario"])
            adapter = ADAPTERS[item["adapter"]]
            if adapter["kind"] == "python":
                original = json.loads((trial_folder / "tests.json").read_text(encoding="utf-8"))
                if raw["tests"] != original["tests"] or raw.get("native_io_attempts") != original.get("native_io_attempts"):
                    raise ValueError("Raw assertions differ from worker evidence")
            elif raw["tests"] != junit_rows(trial_folder / "tests.xml"):
                raise ValueError("Raw assertions differ from JUnit evidence")
            status, reasons = trial_verdict(adapter["tests"], raw)
            found.append({**trial, "status": status, "reasons": reasons})
        trials[row["case_id"]] = found
    result = recompute(spec, trials, candidate == source_manifest() and specs_match)
    print(json.dumps({"complete": result["complete"], "sources_match": result["sources_match"],
        "required_statuses": result["required_statuses"], "cases": [
            {"case_id": row["case_id"], "status": row["status"]} for row in result["cases"]]}, ensure_ascii=False))
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path)
    parser.add_argument("--case", action="append", dest="cases")
    parser.add_argument("--verify", type=Path)
    args = parser.parse_args()
    if args.verify:
        result = verify(args.verify.resolve())
    elif args.output:
        result = run(args.output.resolve(), args.cases or list(G0_SCENARIOS))
    else:
        parser.error("Provide --output for a fresh run or --verify for read-only recomputation")
    return 0 if result["complete"] else 1 if result["required_statuses"]["fail"] else 2


if __name__ == "__main__":
    raise SystemExit(main())
