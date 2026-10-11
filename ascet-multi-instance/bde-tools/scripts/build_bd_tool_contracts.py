"""Generate the proposed v0.3 MCP contracts. No ASCET calls are made."""
from __future__ import annotations

import copy
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "docs" / "block-diagram-tools"


def obj(properties, required=None, **extra):
    return {"type": "object", "properties": properties,
            "required": list(properties) if required is None else required,
            "additionalProperties": False, **extra}


def arr(items, maximum=100, minimum=0):
    return {"type": "array", "items": items, "minItems": minimum, "maxItems": maximum}


def enum(*values):
    return {"enum": list(values)}


def ref(name):
    return {"$ref": f"#/$defs/{name}"}


TEXT = {"type": "string", "maxLength": 8192}
ID = {"type": "string", "minLength": 1, "maxLength": 256}
BOOL = {"type": "boolean"}
COUNT = {"type": "integer", "minimum": 0}
STATE = enum("yes", "no", "unknown")
POINT = arr({"type": "integer", "minimum": -2147483648, "maximum": 2147483647}, 2, 2)
DEFS = {
    "blob": obj({"blob_ref": ID, "sha256": {"type": "string", "pattern": "^[a-f0-9]{64}$"}, "length": COUNT}),
    "value": {"oneOf": [TEXT, {"type": ["number", "boolean", "null"]}, ref("blob"), arr(ref("value"), 1000)]},
    "params": {"type": "object", "minProperties": 1, "maxProperties": 50,
               "propertyNames": {"pattern": "^[a-z][a-z0-9_.]*$"}, "additionalProperties": ref("value")},
    "budget": obj({"limit": {"type": "integer", "minimum": 1, "maximum": 100, "default": 30},
                   "max_bytes": {"type": "integer", "minimum": 2048, "maximum": 65536, "default": 16384}}, []),
    "coverage": obj({"complete": STATE, "scope": ID, "missing": arr(TEXT),
                     "consistency": enum("verified_exclusive", "best_effort", "immutable_export")}),
    "persistence": obj({"memory_verified": STATE, "cache_updated": STATE,
                        "database_committed": STATE, "reopen_verified": STATE}),
    "page": obj({"returned_count": COUNT, "total": {"type": ["integer", "null"], "minimum": 0},
                 "has_more": BOOL, "next_cursor": {"type": ["string", "null"]}, "bytes": COUNT}),
    "field": obj({"name": ID, "state": enum("known", "absent", "unread", "unsupported", "error"),
                  "value": ref("value"), "writable": BOOL, "source": TEXT}, ["name", "state"],
                 allOf=[{"if": {"properties": {"state": {"const": "known"}}},
                         "then": {"required": ["value"]}, "else": {"not": {"required": ["value"]}}}]),
    "entity": obj({"id": ID, "kind": ID, "name": TEXT, "native_type": TEXT,
                   "parent": ID, "identity_strength": enum("persistent_verified", "session", "snapshot_only", "ambiguous"),
                   "revision": ID, "fields": arr(ref("field")), "relations": arr(obj({"role": ID, "target": ID})),
                   "preview": TEXT}, ["id", "kind", "identity_strength", "fields"]),
    "capability": obj({"name": ID, "evidence": enum("designed", "source_confirmed", "runtime_verified"),
                       "availability": enum("enabled", "disabled", "unavailable"),
                       "route": enum("public_api", "cebra_selector", "native_graph", "editor_controller", "service"),
                       "reason": TEXT, "undo": enum("exact_fields", "native_step", "unavailable"),
                       "constraints": arr(TEXT)}),
    "diff": obj({"kind": enum("field_changed", "entity_added", "entity_removed", "connection_changed",
                                "sequence_changed", "geometry_changed", "identity_changed", "coverage_changed", "unresolved_match"),
                 "target": ID, "field": ID, "before": {}, "after": {},
                 "cause": enum("requested", "native_derived", "normalization", "external_or_unknown"),
                 "match": enum("exact", "unresolved")}, ["kind", "target", "cause", "match"]),
    "issue": obj({"code": ID, "severity": enum("error", "warning", "info"), "target": ID, "message": TEXT},
                 ["code", "severity", "message"]),
    "endpoint": {"oneOf": [obj({"pin": ID}), obj({"new_block": {"type": "string", "pattern": "^#[A-Za-z][A-Za-z0-9_]*$"}, "port_key": ID})]},
    "alias": {"type": "string", "pattern": "^[A-Za-z][A-Za-z0-9_]*$", "maxLength": 64},
    "target": {"type": "string", "minLength": 1, "maxLength": 256},
    "step": obj({"index": COUNT, "status": enum("planned", "verified", "failed", "not_started", "outcome_unknown", "compensated"),
                 "code": ID}, ["index", "status"]),
    "receipt": obj({"change_id": ID, "effect_state": enum("preview", "no_change", "verified", "partial_applied", "needs_recovery", "compensated_verified"),
                    "before_snapshot": ID, "after_snapshot": ID, "diff_ref": ID, "diff_summary": arr(ref("diff")),
                    "created": {"type": "object", "additionalProperties": ID},
                    "id_remap": arr(obj({"old": ID, "new": ID, "basis": enum("native_identity_verified", "ambiguous")})),
                    "steps": arr(ref("step"), 50), "undo": enum("exact_fields", "native_step", "unavailable"),
                    "atomic": BOOL, "persistence": ref("persistence"), "edit_token": ID},
                   ["effect_state", "diff_summary", "created", "id_remap", "steps", "undo", "atomic", "persistence"]),
}


def operation(name, properties, required=None):
    return obj({"op": {"const": name}, **properties},
               ["op", *(list(properties) if required is None else required)])


DEFS["operation"] = {"oneOf": [
    operation("configure", {"target": ref("target"), "expect": ref("params"), "params": ref("params")}),
    operation("replace_text", {"target": ref("target"), "field": ID, "old_text": {**TEXT, "minLength": 1},
                               "new_text": TEXT, "expected_occurrences": {"const": 1}}),
    operation("move", {"target": ref("target"), "expect_position": POINT, "position": POINT}),
    operation("add_block", {"template": ID, "ref": ref("alias"), "name": TEXT, "params": ref("params"), "position": POINT}, ["template", "ref", "position"]),
    operation("connect", {"source": ref("endpoint"), "destination": ref("endpoint"), "expect_incoming": arr(ID, 100),
                           "replace_edges": arr(ID, 100), "route": arr(POINT, 1000, 2)}, ["source", "destination", "expect_incoming"]),
    operation("disconnect", {"target": ID, "expect_source": ID, "expect_destination": ID}),
    operation("delete", {"target": ID, "expect_incident_edges": arr(ID, 100), "cascade": enum("reject", "listed_edges")}),
    operation("create_hierarchy", {"ref": ref("alias"), "name": TEXT, "position": POINT,
                                    "ports": arr(obj({"key": ID, "name": TEXT, "direction": enum("input", "output")}), 100)}, ["ref", "name", "position", "ports"]),
    operation("resize", {"target": ID, "expect_size": POINT, "size": POINT}),
    operation("reroute", {"target": ID, "expect_points": arr(POINT, 1000, 2), "points": arr(POINT, 1000, 2)}),
    operation("set_sequence", {"target": ID, "expect_activator": ID, "expect_number": COUNT, "activator": ID, "number": COUNT}),
    operation("replace_block", {"target": ID, "template": ID, "expect_incident_edges": arr(ID),
                                 "port_map": arr(obj({"old_pin": ID, "new_port_key": ID}), 100), "params": ref("params")},
              ["target", "template", "expect_incident_edges", "port_map"]),
]}

TOOLS = []


def tool(name, description, inputs, output, read_only=True):
    error = obj({"code": ID, "message": TEXT, "retryable": BOOL,
                 "native_writes_started": BOOL, "change_id": ID, "conflicts": arr(ref("issue")),
                 "details_ref": ID, "next_action": TEXT},
                ["code", "message", "retryable", "native_writes_started", "next_action"])
    envelope = obj({"api_version": {"const": "0.3"}, "request_id": ID,
                    "status": enum("ok", "partial", "error", "pending"),
                    "source": enum("live", "cache", "export", "history", "service"),
                    "snapshot_id": ID, "edit_token": ID, "coverage": ref("coverage"), "page": ref("page"),
                    "data": output, "error": error}, ["api_version", "request_id", "status", "source"],
                   allOf=[
                       {"if": {"properties": {"status": {"enum": ["ok", "partial", "pending"]}}}, "then": {"required": ["data"]}},
                       {"if": {"properties": {"status": {"const": "error"}}}, "then": {"required": ["error"]}},
                   ])
    # Attach only reachable definitions: self-contained schemas without inflating every tool.
    def standalone(schema):
        schema = copy.deepcopy(schema)
        needed, queue = {}, reffed(schema)
        while queue:
            key = queue.pop()
            if key in needed:
                continue
            needed[key] = copy.deepcopy(DEFS[key])
            queue.extend(reffed(needed[key]))
        schema["$schema"] = "https://json-schema.org/draft/2020-12/schema"
        if needed:
            schema["$defs"] = needed
        return schema
    TOOLS.append({"name": name, "description": description,
                  "annotations": {"readOnlyHint": read_only, "destructiveHint": not read_only,
                                  "idempotentHint": read_only, "openWorldHint": False},
                  "inputSchema": standalone(inputs), "outputSchema": standalone(envelope)})


def reffed(value):
    if isinstance(value, dict):
        return ([value["$ref"].split("/")[-1]] if "$ref" in value else []) + [r for v in value.values() for r in reffed(v)]
    if isinstance(value, list):
        return [r for v in value for r in reffed(v)]
    return []


def read_input(extra, required):
    return obj({"session": ID, "diagram": ID, "scope": {**ID, "default": "root"},
                **extra, "cursor": ID, "budget": ref("budget")}, ["session", "diagram", *required])


def mutation_input(extra, required):
    return obj({"session": ID, **extra, "preview": {**BOOL, "default": False}, "request_key": ID},
               ["session", *required],
               allOf=[{"if": {"properties": {"preview": {"const": True}}, "required": ["preview"]},
                       "then": {}, "else": {"required": ["request_key"]}}])


tool("bd_session", "Attach to the current ASCET database, inspect job/change status, refresh bindings or detach without saving. No model writes.",
     obj({"action": enum("attach", "status", "refresh", "detach"), "session": ID, "database": ID,
          "lookup": obj({"kind": enum("request", "change", "job"), "id": ID})}, ["action"],
         allOf=[{"if": {"properties": {"action": {"enum": ["status", "refresh", "detach"]}}}, "then": {"required": ["session"]}}]),
     obj({"session": ID, "epoch": ID, "state": enum("attached", "detached", "indexing", "needs_recovery"),
          "database": ID, "dirty": STATE, "write_mode": enum("read_only", "verified_exclusive"),
          "job_ref": ID, "lookup_state": TEXT, "receipt": ref("receipt")}, ["session", "epoch", "state", "write_mode"]))
tool("bd_catalog", "Discover diagrams, supported templates, writable parameter descriptors and verified capabilities. Static evidence does not enable a write.",
     obj({"session": ID, "kind": enum("diagrams", "templates", "parameters", "capabilities"), "target": ID,
          "query": TEXT, "cursor": ID, "budget": ref("budget")}, ["session", "kind"]),
     obj({"items": arr(obj({"id": ID, "label": TEXT, "kind": ID, "capability": ref("capability"),
                             "descriptor": {"type": "object"}}, ["id", "kind"]))}))
tool("bd_overview", "Read hierarchy and interfaces first. Counts and completeness reflect observed coverage only.",
     read_input({"detail": {**enum("tree", "interfaces", "full"), "default": "tree"},
                 "depth": {"type": "integer", "minimum": 0, "maximum": 4, "default": 1}}, []),
     obj({"items": arr(ref("entity")), "summary": TEXT}))
tool("bd_search", "Find named objects, native search references or exported text. Export hits are not live edit targets.",
     obj({"session": ID, "diagram": ID, "scope": ID, "query": {**TEXT, "minLength": 1},
          "match": {**enum("exact", "contains", "regex"), "default": "contains"},
          "domain": enum("components", "nodes", "comments", "component_references", "method_declarations", "method_references",
                         "method_element_declarations", "element_declarations", "element_references", "message_senders", "message_receivers", "code_text"),
          "source": enum("live", "cache", "export"), "cursor": ID, "budget": ref("budget")}, ["session", "query", "domain", "source"]),
     obj({"items": arr(obj({"target": ID, "kind": ID, "context": TEXT, "reason": TEXT, "editable": BOOL})),
          "match_complete": STATE}))
tool("bd_read", "Read one model scope or selected entities with compact semantic fields; use blob mode for exact long text. Returns a token only when live identity and baseline are usable.",
     {"oneOf": [read_input({"targets": arr(ID, 100, 1), "depth": {"type": "integer", "minimum": 0, "maximum": 4, "default": 0},
                             "groups": arr(enum("identity", "behavior", "connections", "sequence", "geometry", "annotations", "native"), 7, 1),
                             "freshness": {**enum("live", "cached"), "default": "live"}, "snapshot": ID}, []),
                obj({"session": ID, "blob_ref": ID, "offset": COUNT,
                     "length": {"type": "integer", "minimum": 1, "maximum": 8192}}, ["session", "blob_ref"])]},
     {"oneOf": [obj({"items": arr(ref("entity")), "text": TEXT}, ["items"]),
                obj({"blob_ref": ID, "text": TEXT, "offset": COUNT, "next_offset": {"type": ["integer", "null"], "minimum": 0}})]})
tool("bd_query_params", "Query exact named fields and type/writability metadata; raw and resolved values are separate. No arbitrary expression evaluation.",
     read_input({"targets": arr(ID, 100, 1), "params": arr(ID, 50, 1),
                 "resolve": {**BOOL, "default": False}}, ["targets", "params"]),
     obj({"items": arr(ref("entity"))}))
tool("bd_edit", "Apply typed operations within one scope, with a prior read token and exact preconditions. preview is optional; unsupported operations fail before writes. Native failures stop the batch; atomicity is not assumed.",
     mutation_input({"diagram": ID, "scope": ID, "edit_token": ID, "operations": arr(ref("operation"), 50, 1),
                     "require_undo": {**enum("exact_fields", "native_step", "any_verified", "none"), "default": "any_verified"}},
                    ["diagram", "scope", "edit_token", "operations"]), ref("receipt"), False)
tool("bd_check", "Run targeted structural checks or read existing native diagnostics. Does not compile, simulate or save the model.",
     read_input({"checks": arr(enum("connectivity", "pin_direction", "references", "sequence", "identity", "geometry", "native_diagnostics"), 7, 1)}, ["checks"]),
     obj({"issues": arr(ref("issue")), "executed": arr(ID), "skipped": arr(obj({"check": ID, "reason": TEXT})),
          "diagnostics_freshness": enum("current_verified", "stale", "unknown", "not_requested")}))
tool("bd_diff", "Read actual or preview differences for a change or two snapshots. Unknown coverage and unresolved identity are never treated as equality.",
     obj({"session": ID, "change_id": ID, "before": ID, "after": ID, "scope": ID,
          "kinds": arr(ID), "cursor": ID, "budget": ref("budget")}, ["session"],
         oneOf=[{"required": ["change_id"], "not": {"anyOf": [{"required": ["before"]}, {"required": ["after"]}]}},
                {"required": ["before", "after"], "not": {"required": ["change_id"]}}]),
     obj({"items": arr(ref("diff")), "basis": enum("predicted", "observed"), "complete": STATE}))
tool("bd_history", "Read edit/save/undo/redo receipts, ownership and native-history eligibility without changing the model.",
     obj({"session": ID, "diagram": ID, "cursor": ID, "budget": ref("budget")}, ["session"]),
     obj({"items": arr(obj({"change_id": ID, "kind": enum("edit", "undo", "redo", "save"), "state": ID,
                             "undo_eligible": BOOL, "redo_eligible": BOOL, "reason": TEXT,
                             "related_change": ID}, ["change_id", "kind", "state", "undo_eligible", "redo_eligible", "reason"]))}))
tool("bd_undo", "Undo a specific tool change. Native undo requires the owned top history step; older field changes use conflict-checked inverse patches. No force or arbitrary stack traversal.",
     mutation_input({"change_id": ID, "strategy": {**enum("auto", "native", "inverse"), "default": "auto"}}, ["change_id"]), ref("receipt"), False)
tool("bd_redo", "Redo a specific undo receipt after conflict checks. Native redo is invalid after an intervening edit or history reset.",
     mutation_input({"undo_change_id": ID}, ["undo_change_id"]), ref("receipt"), False)
save_input = mutation_input({"level": enum("finalize_diagram", "commit_database"), "diagram": ID, "save_token": ID}, ["level"])
save_input["allOf"].extend([
    {"if": {"properties": {"preview": {"const": True}}, "required": ["preview"]},
     "then": {}, "else": {"required": ["save_token"]}},
    {"if": {"properties": {"level": {"const": "finalize_diagram"}}}, "then": {"required": ["diagram"]}},
])
tool("bd_save", "Explicitly finalize a diagram or commit a database. Preview returns a save_token identifying all affected state; execution requires it. No implicit save in bd_edit or detach.",
     save_input,
     obj({"change_id": ID, "effect_state": enum("preview", "verified", "needs_recovery"),
          "affected_diagrams": arr(ID), "persistence": ref("persistence"), "diff_ref": ID,
          "save_token": ID, "scope_complete": STATE}, ["effect_state", "affected_diagrams", "persistence", "scope_complete"]), False)


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    manifest = {"designVersion": "0.3", "implementationStatus": "design_only", "tools": TOOLS}
    (OUT / "tools.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    edit_schema = next(t["inputSchema"] for t in TOOLS if t["name"] == "bd_edit")
    (OUT / "edit.schema.json").write_text(json.dumps(edit_schema, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Generated {len(TOOLS)} tool contracts and edit.schema.json (design only)")


if __name__ == "__main__":
    main()
