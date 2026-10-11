"""Validate and render an ASCET live probe snapshot; never reads offline AXL files."""
import argparse
import hashlib
import json
from pathlib import Path


def encoded(value):
    return json.dumps(value, ensure_ascii=False, separators=(",", ":"))


def require(condition, message):
    if not condition:
        raise ValueError(message)


def build(raw):
    require(raw.get("status") == "ok" and not raw.get("issues"), "Probe reported incomplete reads")
    compact = {key: raw[key] for key in ("source", "database", "path", "oid", "started_at_utc", "observed_at_utc", "elapsed_ms", "limitations")}
    compact["schema"] = "ascet.read.research.v1"
    compact["identity_scope"] = "component OID + diagram path + native node/pin ID; revalidate before edits"
    checks = {"nodes": 0, "pins": 0, "edges": 0, "pagination_pages": 0, "definitions": len(raw["definitions"]), "definition_methods": 0, "processes": 0, "dependent_parameters": 0, "formal_bindings": 0}
    unresolved = []
    components = []
    for component in [raw] + raw["definitions"]:
        models, seen = [], {}

        def intern(model):
            if model is None:
                return None
            native = model["native_model"]
            require(native and native.get("oid_hex"), "Missing native model identity")
            require(bytes(native["oid"]).hex() == native["oid_hex"], "OID byte/hex mismatch")
            oid = native["oid_hex"]
            if model.get('enum_source') is not None:
                require(model.get('model_type') == 'enum', 'Enum source on a non-enum model')
                items = model.get('enum_values')
                require(isinstance(items, list) and len(items) <= 4096 and all(isinstance(v, str) for v in items), 'Missing or invalid enumeration values')
                source = model['enum_source']
                if source == 'inline_type':
                    require(model.get('definition') is None and model.get('definition_status') == 'not_applicable_inline', 'Invalid inline enum definition')
                else:
                    require(source == 'library_definition' and model.get('definition_status') == 'resolved'
                            and isinstance(model.get('definition'), dict) and model['definition'].get('oid')
                            and model['definition'].get('path'), 'Missing enumeration library identity')
            if oid in seen:
                require(models[seen[oid]]["metadata"] == model, f"Model changed within observation: {model['name']}")
                return seen[oid]
            index = len(models)
            seen[oid] = index
            models.append({"ref": index, "metadata": model})
            return index

        for model in component["model_elements"]:
            intern(model)
        methods = []
        def process_rows(source):
            result = []
            for process in source:
                require(isinstance(process.get('code'), str), 'Missing process source')
                require(isinstance(process.get('alias_name'), str), 'Missing process alias identity')
                result.append({k: process[k] for k in ('name', 'alias_name', 'code')})
                checks['processes'] += 1
            return result
        processes = process_rows(component.get('processes', []))
        diagrams = []
        for method in component.get("methods", []):
            require(isinstance(method.get("code"), str) and method["code"].strip(), "Missing definition source")
            methods.append({"name": method["name"], "arguments": [intern(m) for m in method["arguments"]], "return": intern(method["return_element"]), "code": method["code"]})
            checks["definition_methods"] += 1

        def graph(source):
            nodes, edges, ids, pins = [], [], set(), {}
            for node in source["nodes"]:
                require(node["id"] not in ids, "Duplicate node ID")
                ids.add(node["id"])
                out = {k: v for k, v in node.items() if k not in ("model", "contents")}
                if "model" in node:
                    out["model_ref"] = intern(node["model"])
                if "contents" in node:
                    out["contents"] = graph(node["contents"])
                for pin in node["pins"]:
                    require(pin["native_id"] is not None and pin["native_id"] not in pins, "Missing/duplicate pin ID")
                    require(pin["node_id"] == node["id"], "Pin owner mismatch")
                    pins[pin["native_id"]] = pin
                nodes.append(out)
            edge_ids = set()
            for edge in source["edges"]:
                require(isinstance(edge['type'], int) and edge['type'] >= 0, "Unavailable connection type")
                require(edge["index"] not in edge_ids, "Duplicate edge index")
                edge_ids.add(edge["index"])
                for field, direction in (("output", "output"), ("input", "input")):
                    endpoint = edge[field]
                    require(pins.get(endpoint["native_id"]) == endpoint, "Edge endpoint does not match unique declared pin")
                    require(endpoint[direction], "Edge endpoint direction mismatch")
                edges.append({"index": edge["index"], "type": edge["type"], "output": edge["output"]["native_id"], "input": edge["input"]["native_id"]})
            checks["nodes"] += len(nodes)
            checks["pins"] += len(pins)
            checks["edges"] += len(edges)
            return {"nodes": nodes, "edges": edges}

        for diagram in component.get("diagrams", []):
            require("graph" in diagram, "Unsupported main diagram")
            g = graph(diagram["graph"])
            require(len(g["nodes"]) == diagram["node_count"] and len(g["edges"]) == diagram["edge_count"], "Graph count mismatch")
            paging = diagram["remote_pagination"]
            page_ids = []
            for page in paging["pages"]:
                require(page["start"] == len(page_ids) + 1, "Pagination gap")
                require(len(page["ids"]) == page["end"] - page["start"] + 1 <= paging["page_size"], "Invalid page bounds")
                page_ids.extend(page["ids"])
            require(page_ids == [n["id"] for n in g["nodes"]] and len(page_ids) == paging["total"], "Paginated collection changed")
            checks["pagination_pages"] += len(paging["pages"])
            signatures = [{"name": m["name"], "arguments": [intern(a) for a in m["arguments"]], "return": intern(m["return_element"])} for m in diagram["methods"]]
            diagrams.append({"name": diagram["name"], "api_oid": diagram["oid"], "methods": signatures,
                             "processes": process_rows(diagram.get('processes', [])), "graph": g})
        bindings = component.get("default_formula_bindings") or {}
        for entry in models:
            model = entry["metadata"]
            native = model["native_model"]
            if native["is_dependent"]:
                checks["dependent_parameters"] += 1
                require([f['name'] for f in native['formals']] == native['formal_names'], "Formula formal collection mismatch")
                resolved = []
                for formal in native["formals"]:
                    actual = bindings.get(native["oid_hex"], {}).get(formal["oid_hex"])
                    target = seen.get(actual)
                    resolved.append({"formal": formal["name"], "formal_oid_hex": formal["oid_hex"], "actual_oid_hex": actual, "actual_ref": target})
                    if target is None:
                        unresolved.append({"component": component["path"], "parameter": model["name"], "formal": formal["name"], "reason": "no binding in class default config"})
                    else:
                        checks["formal_bindings"] += 1
                entry["formula_bindings"] = resolved
        components.append({"oid": component["oid"], "path": component["path"], "default_data_configuration": component.get("default_data_configuration"), "models": models, "diagrams": diagrams, "methods": methods, "processes": processes})
    compact["components"] = components
    return compact, checks, unresolved


def render(compact, sha, detailed=True, metadata_note=None):
    name = compact['path'].split('\\')[-1]
    lines = [f"# {name} — live API complete graph read", "", f"Source SHA256: `{sha}`", f"Observed UTC: `{compact['observed_at_utc']}`", f"Database: `{compact['database']}`", "", "This is a full graph and referenced method-body reading view. Project calibration, per-instance data overrides and numeric implementation are unresolved. Default values must not be treated as effective runtime values.", "", "Identity: component OID + diagram path + native node/pin IDs. `mN` is a document-local model reference; use its OID to re-resolve. Edge indices are observation-local, not persistent edit IDs.", ""]
    for component in compact["components"]:
        description = "Full metadata retains types, scopes, comments, formulas, definition references and default values." if detailed else "Logic fields retain types, scopes, units, formulas, definition references and default values. Comments and native model/formal OIDs are in the matching .compact.json and .read.md files; resolve mN within its component. This is a field projection, not a lossless serialization of all metadata."
        if not detailed and metadata_note:
            description = metadata_note
        lines += [f"## {component['path']}", "", f"Component OID: `{component['oid']}`", f"Default config: `{encoded(component['default_data_configuration'])}`", "", "### Model dictionary", "", "One row per model, shared by all graphical occurrences. " + description, "", "```text"]
        for entry in component["models"]:
            m = entry["metadata"]
            meta = {k: v for k, v in m.items() if k != "native_model"}
            meta["native_model"] = {k: v for k, v in m["native_model"].items() if k not in ("oid", "oid_value_type")}
            if detailed:
                lines.append(f"m{entry['ref']} {encoded(meta)}")
            else:
                fields = [f"m{entry['ref']} {m['name']}", m.get('model_type', m['wrapper_type']), m.get('scope') or 'method']
                if m.get('unit'):
                    fields.append('unit=' + encoded(m['unit']))
                if m['is_parameter']:
                    fields.append('parameter')
                if m.get('definition'):
                    fields.append('definition=' + m['definition']['oid'])
                if m.get('enum_values') is not None:
                    fields.append('enum_source=' + encoded(m.get('enum_source', 'unspecified')))
                    fields.append('enum_values=' + encoded(m['enum_values']))
                if m.get('default_value') is not None:
                    fields.append('default=' + encoded({k: v for k, v in m['default_value'].items() if k != 'source'}))
                if m['native_model']['is_dependent']:
                    fields.append('formula=' + encoded(m['native_model'].get('formula')))
                lines.append(' | '.join(fields))
            if "formula_bindings" in entry:
                for binding in entry["formula_bindings"]:
                    ref = binding["actual_ref"]
                    target = "UNRESOLVED" if ref is None else f"m{ref} {component['models'][ref]['metadata']['name']}"
                    lines.append(f"  bind {binding['formal']} -> {target}")
        lines += ["```", ""]

        def signature(method):
            models = component["models"]
            args = ", ".join(f"m{ref}:{models[ref]['metadata'].get('model_type', '?')}" for ref in method["arguments"])
            return f"{method['name']}({args}) -> " + ("void" if method["return"] is None else f"m{method['return']}")

        def graph_lines(g, scope):
            out = [f"### Graph {scope}", "", "```text"]
            pin_map = {}
            for node in g["nodes"]:
                label = f"m{node['model_ref']} {component['models'][node['model_ref']]['metadata']['name']}" if "model_ref" in node else encoded({k: v for k, v in node.items() if k not in ('id', 'pins', 'contents')})
                out.append(f"n{node['id']} {label}")
                for pin in node["pins"]:
                    pin_map[pin["native_id"]] = pin
                    direction = ("I" if pin["input"] else "") + ("O" if pin["output"] else "")
                    seq = " seq=" + encoded(pin["sequence"]) if "sequence" in pin else ""
                    out.append(f"  p{pin['native_id']} {direction or '-'} {pin['name']}{seq}")
            for edge in g["edges"]:
                a, b = pin_map[edge["output"]], pin_map[edge["input"]]
                out.append(f"e{edge['index']} n{a['node_id']}.p{a['native_id']} -> n{b['node_id']}.p{b['native_id']} type={edge['type']}")
            out += ["```", "", "Execution annotations, grouped by activator/sequence/node/method (all pins retained above):", "", "```text"]
            calls = {}
            for node in g["nodes"]:
                for pin in node["pins"]:
                    if "sequence" in pin:
                        s = pin["sequence"]
                        key = (s['activator'] or "", s['number'], node['id'], pin['name'].split('/')[0])
                        calls.setdefault(key, []).append(pin['native_id'])
            for (act, seq, node, method), pins in sorted(calls.items()):
                out.append(f"{act} [{seq}] n{node}.{method} pins={','.join('p'+str(p) for p in pins)}")
            out += ["```", ""]
            for node in g["nodes"]:
                if "contents" in node:
                    out += graph_lines(node["contents"], f"{scope}/n{node['id']}")
            return out

        for diagram in component["diagrams"]:
            lines += ["Methods: " + "; ".join(signature(m) for m in diagram["methods"]), ""]
            lines += graph_lines(diagram["graph"], diagram["name"])
            for process in diagram.get('processes', []):
                lines += [f"### Process {diagram['name']}/{process['name']}", "",
                          "alias=" + encoded(process['alias_name']), "", "```c", process['code'], "```", ""]
        for process in component.get('processes', []):
            lines += [f"### Process {process['name']}", "", "alias=" + encoded(process['alias_name']),
                      "", "```c", process['code'], "```", ""]
        for method in component["methods"]:
            lines += [f"### {signature(method)}", "", "```c", method["code"].replace("\r\r\n", "\n").replace("\r\n", "\n").replace("\r", "\n"), "```", ""]
    lines += ["## Read boundaries", ""] + [f"- {item}" for item in compact["limitations"]]
    return "\n".join(lines) + "\n"


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("snapshot", type=Path)
    args = parser.parse_args()
    source = args.snapshot.read_bytes()
    raw = json.loads(source)
    compact, counts, unresolved = build(raw)
    sha = hashlib.sha256(source).hexdigest()
    compact["source_sha256"] = sha
    stem = args.snapshot.name.removesuffix(".full.json")
    out = args.snapshot.parent
    payload = encoded(compact).encode("utf-8")
    read = render(compact, sha).encode("utf-8")
    logic = render(compact, sha, detailed=False).encode("utf-8")
    (out / f"{stem}.compact.json").write_bytes(payload)
    (out / f"{stem}.read.md").write_bytes(read)
    (out / f"{stem}.logic.md").write_bytes(logic)
    report = {"structural_validation": "passed", "counts": counts, "unresolved_formula_bindings": unresolved, "raw_sha256": sha, "raw_bytes": len(source), "compact_bytes": len(payload), "read_markdown_bytes": len(read), "size_metric": "local UTF-8 artifact bytes; not wire bytes or token counts", "semantic_completeness": "graph and method bodies covered; project/instance calibration and implementation unresolved", "dirty_editors": [raw.get("dirty_editor_count_before"), raw.get("dirty_editor_count_after")]}
    root = Path(__file__).resolve().parent.parent
    report["provenance_sha256"] = {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest() for path in (root / "scripts/AscetReadProbe.cs", root / "analysis/live-api/Etas.AscetNET.dll")}
    report["logic_markdown_bytes"] = len(logic)
    (out / f"{stem}.validation.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=True, indent=2))


if __name__ == "__main__":
    main()
