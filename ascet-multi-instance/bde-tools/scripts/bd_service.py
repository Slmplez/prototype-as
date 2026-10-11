"""Block Diagram backend for Doge's native tools.

One JSON request on stdin, one bounded JSON result on stdout. ASCET process
output is captured, never forwarded as protocol output. Writes are explicitly
gated to isolated Trial_* components and recorded in durable edit journals.
"""
from __future__ import annotations

import hashlib
import json
import os
import re
from pathlib import Path
import subprocess
import sys
import uuid
from contextlib import contextmanager

# Lazy adapters import this module too; keep one protocol/error/store instance
# when this file is launched as a script by Doge.
if __name__ == '__main__':
    sys.modules.setdefault('bd_service', sys.modules[__name__])

from format_bd_api_read import build, render
import bd_scoped

ROOT = Path(__file__).resolve().parents[1]
STORE = Path(os.environ.get("ASCET_BD_STORE", ROOT / "analysis/bd-tool-state"))
MAX_BYTES = 16384


class ToolError(Exception):
    def __init__(self, code, message, **details):
        super().__init__(message)
        self.code, self.details = code, details


def fail(code, message, **details):
    raise ToolError(code, message, **details)


def dump(value):
    return json.dumps(value, ensure_ascii=False, separators=(",", ":"), sort_keys=True)


def digest(value):
    return hashlib.sha256(value if isinstance(value, bytes) else dump(value).encode()).hexdigest()


def write_once(path, value):
    temp = path.with_suffix('.' + uuid.uuid4().hex + '.tmp')
    try:
        with temp.open("x", encoding="utf-8", newline="\n") as stream:
            stream.write(dump(value))
            stream.flush()
            os.fsync(stream.fileno())
        # Linking publishes a complete file and refuses to replace an existing ID.
        os.link(temp, path)
    finally:
        temp.unlink(missing_ok=True)


def identifier(value, prefix):
    if not isinstance(value, str) or not value.startswith(prefix) or len(value) != len(prefix) + 32:
        fail("INVALID_REFERENCE", "Invalid snapshot/cursor reference")
    try:
        int(value[len(prefix):], 16)
    except ValueError:
        fail("INVALID_REFERENCE", "Invalid snapshot/cursor reference")
    return value


def load_record(ref, prefix, folder):
    identifier(ref, prefix)
    try:
        record = json.loads((STORE / folder / f"{ref}.json").read_text(encoding="utf-8"))
        if prefix in ('s_', 'chg_', 'c_', 'd_'):
            checksum = record.get('integrity_sha256')
            if checksum != digest({k: v for k, v in record.items() if k != 'integrity_sha256'}):
                fail('CURSOR_CORRUPT' if prefix == 'c_' else 'JOURNAL_CORRUPT' if prefix == 'chg_' else 'SNAPSHOT_CORRUPT', 'Stored record integrity check failed; read the snapshot again')
        return record
    except FileNotFoundError:
        fail({'s_': 'SNAPSHOT_NOT_FOUND', 'chg_': 'CHANGE_NOT_FOUND'}.get(prefix, 'CURSOR_EXPIRED'), "Reference no longer exists; read again")


@contextmanager
def live_lock():
    """Serialize local ASCET access across stores, including process restarts.

    The current bridge requires exactly one local ASCET process. A conservative
    per-user host lock therefore covers its entire lifetime, independent of
    journal directories and loopback counting-proxy ports.
    """
    lock_root = Path(os.environ.get('LOCALAPPDATA', Path.home() / '.local/share')) / 'AscetBdeTools'
    lock_root.mkdir(parents=True, exist_ok=True)
    path = lock_root / 'local-ascet.lock'
    with path.open("a+b") as stream:
        stream.seek(0, 2)
        if stream.tell() == 0:
            stream.write(b"0")
            stream.flush()
        stream.seek(0)
        try:
            if os.name == "nt":
                import msvcrt
                msvcrt.locking(stream.fileno(), msvcrt.LK_NBLCK, 1)
            else:
                import fcntl
                fcntl.flock(stream, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except OSError:
            fail("ASCET_BUSY", "Another live read is running; retry when it finishes")
        try:
            yield
        finally:
            stream.seek(0)
            if os.name == "nt":
                msvcrt.locking(stream.fileno(), msvcrt.LK_UNLCK, 1)
            else:
                fcntl.flock(stream, fcntl.LOCK_UN)


def run_process(command, timeout, build_step=False):
    try:
        result = subprocess.run(command, capture_output=True, timeout=timeout, shell=False)
    except subprocess.TimeoutExpired:
        fail("READ_TIMEOUT", "The read probe timed out; no model write was requested")
    except OSError as error:
        fail("BRIDGE_UNAVAILABLE", str(error))
    if result.returncode:
        if build_step:
            fail("BRIDGE_BUILD_FAILED", "Could not compile AscetReadProbe.cs; check the installed DLL and .NET compiler", exit_code=result.returncode)
        # Native probe writes detailed diagnostics to its raw result, not to the model.
        fail("BRIDGE_FAILED", "ASCET bridge failed; confirm ASCET is running with the intended database open", exit_code=result.returncode)


def ensure_probe(name='AscetReadProbe'):
    if name not in ('AscetReadProbe', 'AscetScopedProbe'):
        fail('INVALID_INPUT', 'Unknown built-in read probe')
    source = ROOT / f"scripts/{name}.cs"
    resources = [ROOT / 'scripts/bde_bulk_graph.st', ROOT / 'scripts/bde_bulk_full.st'] if name == 'AscetReadProbe' else []
    binary = ROOT / f"analysis/live-api/{name}.exe"
    dll = Path(os.environ.get("ASCET_BD_DLL", "E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll"))
    if not dll.is_file():
        fail("BRIDGE_UNAVAILABLE", "Set ASCET_BD_DLL to the installed Etas.AscetNET.dll")
    binary.parent.mkdir(parents=True, exist_ok=True)
    bundled = binary.parent / dll.name
    import shutil
    if not bundled.exists() or digest(bundled.read_bytes()) != digest(dll.read_bytes()):
        shutil.copyfile(dll, bundled)
    if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in [source, dll, *resources]):
        compiler = Path(os.environ.get("WINDIR", "C:/Windows")) / "Microsoft.NET/Framework/v4.0.30319/csc.exe"
        run_process([str(compiler), "/nologo", "/platform:x86", f"/r:{dll}", "/r:System.Web.Extensions.dll", f"/out:{binary}",
                     *[f"/resource:{p},{p.name}" for p in resources], str(source)], 30, build_step=True)
    return binary


def capture(component, session, scope=None):
    # Keep publication inside the same lock as the probe: observations cannot
    # overtake one another between native reading and journal commit.
    with live_lock():
        return capture_scoped_locked(component, session, scope) if scope is not None else capture_locked(component, session)


def capture_scoped_locked(component, session, scope):
    if not isinstance(component, str) or '\\' not in component or len(component) > 2048:
        fail('INVALID_INPUT', 'component must be a full ASCET component path')
    try:
        scope = bd_scoped.normalize_scope(scope)
    except ValueError as error:
        fail('INVALID_INPUT', str(error))
    sid = 's_' + uuid.uuid4().hex
    raw_path = STORE / 'raw' / f'{sid}.json'
    probe = ensure_probe('AscetScopedProbe')
    run_process([str(probe), component, str(raw_path), 'handles', ','.join(t[6:] for t in scope['targets']),
                 'layout' if scope['include_layout'] else 'semantic'], 20)
    raw_bytes = raw_path.read_bytes()
    raw = json.loads(raw_bytes)
    try:
        counts = bd_scoped.validate(raw, scope)
        if raw['component'].strip('\\') != component.strip('\\'):
            raise ValueError('Resolved component does not match requested path')
    except (ValueError, KeyError, TypeError) as error:
        fail('READ_INCOMPLETE', f'Scoped validation failed: {error}')
    record = {'snapshot': sid, 'session': session, 'source': 'native_scoped_topology',
        'database': raw['database'], 'component': raw['component'], 'oid': raw['oid'],
        'ascet_process_epoch': raw['ascet_process_epoch'], 'observed_at_utc': raw['observed_at_utc'],
        'raw_sha256': digest(raw_bytes), 'scope': scope, 'local_graph': raw['graph'], 'counts': counts,
        'unresolved_bindings': 'not_collected', 'dirty_editors': [raw.get('dirty_before'), raw.get('dirty_after')]}
    record['logic'] = bd_scoped.render(record)
    record['integrity_sha256'] = digest(record)
    commit_observation(record)
    return record


def capture_locked(component, session):
    if not isinstance(component, str) or "\\" not in component or len(component) > 2048:
        fail("INVALID_INPUT", "component must be a full ASCET component path")
    sid = "s_" + uuid.uuid4().hex
    raw_path = STORE / "raw" / f"{sid}.json"
    probe = ensure_probe()
    # --current attaches only: never switch database or start ASCET implicitly.
    run_process([str(probe), component, str(raw_path), "--current", "full"], 35)
    raw_bytes = raw_path.read_bytes()
    raw = json.loads(raw_bytes)
    if any(d.get('diagram_kind') == 'state_machine' or d.get('wrapper_type', '').endswith('.StateMachineDiagram') for d in raw.get('diagrams', [])):
        fail('CAPABILITY_UNAVAILABLE', 'State-machine transitions require their own reader; this backend does not treat them as data-flow connections', diagram_kind='state_machine')
    if raw.get("status") != "ok":
        fail("READ_INCOMPLETE", "Native read did not complete; no snapshot was published")
    epoch = raw.get('ascet_process_epoch')
    if not isinstance(epoch, str) or not re.fullmatch(r'[1-9][0-9]*/[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}:[0-9]{2}\.[0-9]{7}Z', epoch):
        fail('IDENTITY_UNRESOLVED', 'Semantic read has no exact ASCET process generation; no snapshot was published')
    try:
        compact, counts, unresolved = build(raw)
    except (KeyError, ValueError, TypeError) as error:
        fail("READ_INCOMPLETE", f"Structural validation failed: {error}")
    sha = digest(raw_bytes)
    record = {
        "snapshot": sid, "session": session, "source": raw["source"],
        "database": raw["database"], "component": raw["path"], "oid": raw["oid"],
        "ascet_process_epoch": raw.get('ascet_process_epoch'),
        "observed_at_utc": raw["observed_at_utc"], "raw_sha256": sha,
        "counts": counts, "unresolved_bindings": unresolved,
        "sampling": raw.get('read_profile', {}).get('cache_lifetime', 'non_atomic_multi_call'),
        "read_strategy": 'full_native_bulk' if raw.get('read_profile', {}).get('bulk_full') else 'field_getters',
        "dirty_editors": [raw.get("dirty_editor_count_before"), raw.get("dirty_editor_count_after")],
        "compact": compact, "logic": render(compact, sha, detailed=False, metadata_note='Logic fields below. Use bd_inspect(query="fields", snapshot=..., targets=[...]) for comments, native identities and detailed metadata. Root mN refs stand alone; definition refs use definition:<component OID>/mN. Methods use definition:<OID>/method:<name>; main graph nodes/pins use Main/nN and Main/nN.pP.'),
    }
    record['integrity_sha256'] = digest(record)
    commit_observation(record)
    return record


def manifest(record):
    result = {
        "snapshot": record["snapshot"], "component": record["component"],
        "diagram_kind": "block_diagram",
        "database": record["database"], "observed_at_utc": record["observed_at_utc"],
        "consistency": "non_atomic_observation", "counts": record["counts"],
        "sampling": record.get('sampling', 'non_atomic_multi_call'),
        "read_strategy": record.get('read_strategy', 'field_getters'),
        "recording": recording_receipt(record),
        "collected": {"graph": "complete", "method_bodies": "complete", "formula_bindings": "partial" if record["unresolved_bindings"] else "complete", "effective_configuration": "unresolved", "numeric_implementation": "unresolved"},
        "capabilities": {"read": True, "find_in_snapshot": True, "inspect": True, "diff_in_session": True, "edit": False, "revert": False, "save": False},
    }
    if 'project_messages' in record:
        from bd_project_tools import UNCOLLECTED
        result['diagram_kind'] = 'project_message_bindings'
        result['scope'] = record['scope']
        result['editable_refs'] = False
        result['document_format'] = record['document_format']
        result['database_session_identity'] = record['database_session_identity']
        result['database_identity_basis'] = record.get('database_identity_basis', 'not_collected')
        result['database_reload_identity'] = record.get('database_reload_identity', 'not_verified')
        result['collected'] = {'module_instances': record['scope'].get('module_instances', 'top_level'), 'messages': 'all declarations in enumerated Module definitions',
            'binding_status_counts': record['message_bindings']['counts'], 'not_collected': UNCOLLECTED}
    elif 'class_interface' in record:
        result['scope'] = record['scope']
        result['database_session_identity'] = record['database_session']
        result['collected'] = {'graph': 'exact recorded Class definition and direct owner Main hierarchy scopes',
            'signature': 'method/formal aliases', 'layout': 'recorded scopes', 'configuration': 'persisted typed storage',
            'not_collected': ['effective instance values', 'external type content', 'method behavior', 'runtime scheduling']}
        result['capabilities']['class_interface_experiments_enabled'] = os.environ.get('ASCET_BD_CLASS_WRITES') == '1'
        result['capabilities']['inverse_policy'] = 'strict_all_owner_after_baseline'
        result['capabilities']['write_resource_error'] = record.get('write_resource_error')
        result['capabilities']['class_delete_preview'] = os.environ.get('ASCET_BD_CLASS_WRITES') == '1'
        from bd_class_creation import NATIVE_WRITE_ACCEPTED
        result['capabilities']['class_argument_create_preview'] = os.environ.get('ASCET_BD_CLASS_WRITES') == '1'
        result['capabilities']['class_argument_create_write'] = NATIVE_WRITE_ACCEPTED and os.environ.get('ASCET_BD_CLASS_WRITES') == '1'
        result['capabilities']['class_inverse_preview'] = os.environ.get('ASCET_BD_CLASS_WRITES') == '1'
    elif 'interfaces' in record:
        from bd_signal_tools import UNCOLLECTED
        result['scope'] = record['scope']
        result['editable_refs'] = False
        result['document_format'] = record.get('document_format', 'bde_interfaces_jsonl_v1')
        result['database_session_identity'] = record['database_session_identity']
        result['database_identity_basis'] = record.get('database_identity_basis', 'not_collected')
        result['database_reload_identity'] = record.get('database_reload_identity', 'not_verified')
        result['collected'] = {'graph': 'Main and bounded nested hierarchy nodes/pins/edges',
            'definitions': 'interfaces_only', 'hierarchy_pairs': record['interface_bindings']['hierarchy']['matched'],
            'unresolved_hierarchy_pairs': record['interface_bindings']['hierarchy']['unresolved'],
            'not_collected': UNCOLLECTED}
    elif 'structure' in record:
        from bd_structural_tools import UNCOLLECTED
        result['diagram_kind'] = record['structure']['diagram_kind']
        result['scope'] = record['scope']
        diagram = record['structure'].get('diagram', 'Main')
        result['collected'] = {'graph': diagram + ' nodes/pins/edges or states/transitions', 'layout': diagram + ' geometry', 'not_collected': UNCOLLECTED}
        result['collected']['ancestor_boundary_pairs'] = len(record['structure'].get('boundary_context', []))
        result['connection_type_source'] = record.get('connection_type_source', 'legacy observation')
    elif 'scope' in record:
        result['scope'] = record['scope']
        result['collected'] = {'graph': 'selected_nodes_pins_incident_edges_and_boundary_pins',
            'layout': 'selected_and_incident' if record['scope']['include_layout'] else 'not_collected',
            'not_collected': bd_scoped.UNCOLLECTED}
    from bd_sandbox_edit import enabled
    result['capabilities']['sandbox_literal_experiments_enabled'] = enabled()
    structural_enabled = os.environ.get('ASCET_BD_STRUCTURAL_WRITES') == '1'
    sandbox = bool(re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', record['component'].strip('\\')))
    result['capabilities']['structural_experiments_enabled'] = structural_enabled
    if sandbox and structural_enabled and 'structure' in record:
        result['capabilities'].update(edit=True,revert=True,
            write_conditions='experimental sandbox; original session/current native identity and per-operation validation required; revert requires change_id')
    if sandbox and 'class_interface' in record and not record.get('write_resource_error') and os.environ.get('ASCET_BD_CLASS_WRITES') == '1':
        result['capabilities'].update(edit=True, revert=True,
            write_conditions='experimental exact Class formal deletion; strict complete-owner inverse; read-only delete/inverse previews with observed native recovery guards, execution rechecks still required; presentation requires an already-open exact BDE editor and separate opt-in')
    from bd_instance_pending import restoration_holds
    from bd_edit_journal import JournalError
    try:
        holds = restoration_holds(record['database'])
        reason = 'DATABASE_RESTORATION_REQUIRED' if holds else None
    except JournalError as error:
        holds, reason = [], error.code
    if reason:
        result['capabilities'].update(edit=False, revert=False, database_restoration_blocked=True,
            write_block_reason=reason, restoration_records=[row['record'] for row in holds])
    return result


def journal_key(record):
    key = {'database': record['database'].casefold(), 'oid': record['oid']}
    if 'scope' in record:
        key['scope'] = record['scope']
    return digest(key)


def uncompared(record):
    if 'class_interface' in record:
        return ['effective instance values', 'external type content', 'method behavior', 'runtime scheduling']
    if 'project_messages' in record:
        from bd_project_tools import UNCOLLECTED
        return UNCOLLECTED
    if 'interfaces' in record:
        from bd_signal_tools import UNCOLLECTED
        return UNCOLLECTED
    if 'structure' in record:
        from bd_structural_tools import UNCOLLECTED
        return UNCOLLECTED
    if 'scope' in record:
        return ['outside selected incident scope'] + bd_scoped.UNCOLLECTED + ([] if record['scope']['include_layout'] else ['layout'])
    return ['layout', 'effective_configuration', 'numeric_implementation']


def journal_history(key=None):
    """Committed immutable entries are the index; no mutable head to recover."""
    rows = [load_record(p.stem, 'chg_', 'changes') for p in (STORE / 'changes').glob('chg_*.json')]
    heads = {}
    for row in sorted(rows, key=lambda r: r['sequence']):
        previous = heads.get(row['component_key'])
        if row['sequence'] != (previous['sequence'] + 1 if previous else 1) or row['previous_record'] != (previous['change_id'] if previous else None):
            fail('JOURNAL_CORRUPT', 'Observation history has a missing or conflicting predecessor')
        heads[row['component_key']] = row
    return sorted((r for r in rows if key is None or r['component_key'] == key), key=lambda r: (r['recorded_at_utc'], r['component_key'], r['sequence']))


def journal_summary(entry):
    return {k: v for k, v in entry.items() if k not in ('differences', 'integrity_sha256', 'component_key')}


def recording_receipt(record):
    if 'edit_origin' in record:
        return {'status': 'edit_observation', **record['edit_origin'], 'after': record['snapshot']}
    ref = 'chg_' + record['snapshot'][2:]
    if not (STORE / 'changes' / f'{ref}.json').exists():
        return {'status': 'not_recorded'}
    entry = load_record(ref, 'chg_', 'changes')
    return {k: entry[k] for k in ('change_id', 'status', 'before', 'after', 'changes')}


def commit_observation(record):
    """Caller holds live_lock. Journal publication is the commit point.

    A crash before it leaves only an uncommitted snapshot; a crash after it
    leaves a discoverable complete record. Retrying the same snapshot is safe.
    """
    from datetime import datetime, timezone
    folder = STORE / 'changes'
    folder.mkdir(exist_ok=True)
    change_id = 'chg_' + record['snapshot'][2:]
    target = folder / f'{change_id}.json'
    if target.exists():
        existing = load_record(record['snapshot'], 's_', 'snapshots')
        if existing != record:
            fail('JOURNAL_CONFLICT', 'Snapshot ID already committed with different contents')
        return load_record(change_id, 'chg_', 'changes')
    history = journal_history(journal_key(record))
    previous = max(history, key=lambda r: r['sequence']) if history else None
    before = load_record(previous['after'], 's_', 'snapshots') if previous else None
    differences, reason = [], None
    status = 'baseline'
    if before:
        try:
            differences = semantic_diff(before, record)
            status = 'changed' if differences else 'unchanged'
        except ToolError as error:
            if error.code != 'IDENTITY_UNRESOLVED':
                raise
            status, reason = 'continuity_gap', str(error)
    entry = {
        'change_id': change_id, 'status': status,
        'component_key': journal_key(record), 'component': record['component'],
        'database': record['database'], 'oid': record['oid'], 'session': record['session'],
        'sequence': previous['sequence'] + 1 if previous else 1,
        'previous_record': previous['change_id'] if previous else None,
        'before': before['snapshot'] if before else None, 'after': record['snapshot'],
        'observed_interval_utc': [before['observed_at_utc'] if before else None, record['observed_at_utc']],
        'recorded_at_utc': datetime.now(timezone.utc).isoformat(),
        'source': 'live_read_observation', 'actor': 'unknown',
        'changes': len(differences) if status in ('changed', 'unchanged') else None,
        'differences': differences, 'gap_reason': reason,
        'consistency': 'non_atomic_observations', 'revert_supported': False,
        'uncompared': uncompared(record),
    }
    if 'scope' in record:
        entry['scope'] = record['scope']
    entry['integrity_sha256'] = digest(entry)
    snapshot_path = STORE / 'snapshots' / f"{record['snapshot']}.json"
    try:
        if snapshot_path.exists():
            if load_record(record['snapshot'], 's_', 'snapshots') != record:
                fail('JOURNAL_CONFLICT', 'Snapshot ID already exists with different contents')
        else:
            write_once(snapshot_path, record)
        write_once(target, entry)
    except OSError as error:
        fail('RECORDING_FAILED', f'Could not commit automatic history: {error}', snapshot=record['snapshot'], model_modified=False)
    return entry


def paged(text, meta, session, budget=12288, document=None, offset=0):
    if not isinstance(budget, int) or isinstance(budget, bool) or not 2048 <= budget <= MAX_BYTES:
        fail("INVALID_INPUT", "max_bytes must be between 2048 and 16384")
    if document is None:
        document = "d_" + uuid.uuid4().hex
        value={"text": text, "meta": meta, "sha256": digest(text.encode()), "session":session}
        value['integrity_sha256']=digest(value)
        write_once(STORE / "documents" / f"{document}.json", value)
    encoded = text.encode("utf-8")
    if type(offset) is not int or not 0<=offset<=len(encoded) or (offset<len(encoded) and encoded[offset]&0xc0==0x80):
        fail('CURSOR_CORRUPT','Invalid UTF-8 document offset')
    # Bound the envelope with the longest status/boolean/cursor and byte counts.
    # This avoids wasting an entire page on a fixed metadata allowance.
    envelope_bound = {**meta, "document": document,
        "delivery": {"status": "complete", "meaning": "document bytes delivered, not proof of understanding",
                     "delivered_bytes": len(encoded), "total_bytes": len(encoded)},
        "page": {"start_byte": offset, "end_byte": len(encoded), "has_more": False,
                 "next_cursor": "c_" + "0" * 32}}
    available = budget - len(dump(envelope_bound).encode("utf-8")) - 2
    if available < 128:
        fail("BUDGET_TOO_SMALL", "Increase max_bytes for the result envelope")
    remaining = encoded[offset:]
    if len(remaining) <= available:
        chunk = remaining
    else:
        end = remaining.rfind(b"\n", 0, available)
        chunk = remaining[:end + 1] if end >= available // 2 else remaining[:available].decode("utf-8", errors="ignore").encode()
    stop = offset + len(chunk)
    more = stop < len(encoded)
    cursor = None
    if more:
        cursor = "c_" + uuid.uuid4().hex
        value={"document": document, "offset": stop, "budget": budget, "session": session}
        value['integrity_sha256']=digest(value)
        write_once(STORE / "cursors" / f"{cursor}.json", value)
    delivery_key = digest({"session": session, "document": document})
    state_file = STORE / "delivery" / f"{delivery_key}.json"
    ranges = json.loads(state_file.read_text()) if state_file.exists() else []
    ranges.append([offset, stop])
    merged = []
    for start, end in sorted(ranges):
        if merged and start <= merged[-1][1]:
            merged[-1][1] = max(merged[-1][1], end)
        else:
            merged.append([start, end])
    temp = state_file.with_suffix("." + uuid.uuid4().hex + ".tmp")
    temp.write_text(dump(merged), encoding="utf-8")
    os.replace(temp, state_file)
    complete = merged == [[0, len(encoded)]]
    result = {**meta, "document": document, "delivery": {"status": "complete" if complete else "partial", "meaning": "document bytes delivered, not proof of understanding", "delivered_bytes": sum(b-a for a, b in merged), "total_bytes": len(encoded)}, "page": {"start_byte": offset, "end_byte": stop, "has_more": more, "next_cursor": cursor}, "text": chunk.decode("utf-8")}
    # Both native and MCP-facing consumers get bounded text, never full hidden data.
    content = dump({k: v for k, v in result.items() if k != "text"}) + "\n\n" + result["text"]
    if len(content.encode()) > budget:
        fail("BUDGET_TOO_SMALL", "Result envelope exceeded budget; increase max_bytes")
    return {"content": content, "is_error": False}


def resume(cursor, session):
    page = load_record(cursor, "c_", "cursors")
    if page["session"] != session:
        fail("CURSOR_SESSION_MISMATCH", "Read the snapshot again in this session")
    doc = load_record(page["document"], "d_", "documents")
    if doc['session'] != session:
        fail('CURSOR_SESSION_MISMATCH','Document belongs to another session')
    if digest(doc["text"].encode()) != doc["sha256"]:
        fail("SNAPSHOT_CORRUPT", "Stored document integrity check failed")
    return paged(doc["text"], doc["meta"], session, page["budget"], page["document"], page["offset"])


def entities(record):
    """Stable semantic records; document-local mN aliases never become diff keys."""
    if 'class_interface' in record:
        from bd_class_tools import entities as class_entities
        return class_entities(record)
    if 'project_messages' in record:
        from bd_project_tools import entities as project_entities
        return project_entities(record)
    if 'interfaces' in record:
        from bd_signal_tools import entities as signal_entities
        return signal_entities(record)
    if 'structure' in record:
        from bd_structure_scope import qualify
        return {qualify(record, r['ref']): {'ref': qualify(record, r['ref']), 'key': record['oid']+'/'+qualify(record, r['ref']),
            'kind': r['kind'], 'name': str(next((r[k] for k in ('name','model_name','literal','operator','control','hierarchy_name') if r.get(k) is not None), r['ref'])), 'fields': r}
            for r in record['structure']['entries']}
    if 'scope' in record:
        return bd_scoped.entities(record)
    result = {}
    for ci, comp in enumerate(record["compact"]["components"]):
        prefix = "" if ci == 0 else f"definition:{comp['oid']}/"
        for entry in comp["models"]:
            m = entry["metadata"]
            native = m["native_model"]
            ref = prefix + f"m{entry['ref']}"
            fields = {k: v for k, v in m.items() if k not in ("native_model", "api_is_dependent_parameter_class")}
            fields["native_model"] = {k: v for k, v in native.items() if k not in ("oid", "oid_value_type", "formal_names")}
            fields["formula_bindings"] = [{k: v for k, v in b.items() if k != "actual_ref"} for b in entry.get("formula_bindings", [])]
            fields["formula_bindings"].sort(key=lambda b: b["formal_oid_hex"])
            result[ref] = {"ref": ref, "key": f"{comp['oid']}/model:{native['oid_hex']}", "kind": "model", "name": m["name"], "fields": fields}

        def add_methods(methods, scope):
            for method in methods:
                ref = scope + "method:" + method["name"]
                fields = {k: v for k, v in method.items() if k not in ("arguments", "return")}
                fields["arguments"] = [comp['models'][i]['metadata']['native_model']['oid_hex'] for i in method['arguments']]
                fields["return"] = None if method['return'] is None else comp['models'][method['return']]['metadata']['native_model']['oid_hex']
                result[ref] = {"ref": ref, "key": f"{comp['oid']}/{ref}", "kind": "method", "name": method["name"], "fields": fields}

        def add_graph(graph, scope):
            for node in graph["nodes"]:
                ref = f"{scope}/n{node['id']}"
                fields = {k: v for k, v in node.items() if k not in ("model_ref", "contents", "pins")}
                model = comp["models"][node["model_ref"]]["metadata"] if "model_ref" in node else None
                if model:
                    fields["model_oid"] = model["native_model"]["oid_hex"]
                result[ref] = {"ref": ref, "key": f"{comp['oid']}/{ref}", "kind": "node", "name": model["name"] if model else str(node.get("operator", node.get("literal", node["kind"]))), "fields": fields}
                for pin in node["pins"]:
                    pr = f"{ref}.p{pin['native_id']}"
                    result[pr] = {"ref": pr, "key": f"{comp['oid']}/{pr}", "kind": "pin", "name": pin['name'], "fields": pin}
                if "contents" in node:
                    add_graph(node["contents"], ref)
            for edge in graph["edges"]:
                ref = f"{scope}/edge:p{edge['output']}->p{edge['input']}:{edge['type']}"
                if ref in result:
                    result[ref]["fields"]["multiplicity"] += 1
                else:
                    result[ref] = {"ref": ref, "key": f"{comp['oid']}/{ref}", "kind": "edge", "name": ref, "fields": {k: v for k, v in edge.items() if k != "index"} | {"multiplicity": 1}}

        def add_processes(processes, scope):
            for process in processes:
                ref = scope + 'process:' + process['name']
                if ref in result:
                    fail('IDENTITY_UNRESOLVED', 'Duplicate process reference')
                result[ref] = {'ref': ref, 'key': f"{comp['oid']}/{ref}", 'kind': 'method',
                    'name': process['name'], 'fields': {**process, 'callable_kind': 'process'}}

        for diagram in comp["diagrams"]:
            scope = prefix + diagram["name"]
            add_graph(diagram["graph"], scope)
            add_methods(diagram["methods"], scope + "/")
            add_processes(diagram.get('processes', []), scope + '/')
        add_methods(comp["methods"], prefix)
        add_processes(comp.get('processes', []), prefix)
    return result


def semantic_diff(before, after):
    if before.get('scope') != after.get('scope'):
        fail('INCOMPATIBLE_SCOPE', 'Compare observations with identical collection scopes; missing coverage is not deletion')
    if before["database"].casefold() != after["database"].casefold() or before["oid"] != after["oid"]:
        fail("INCOMPATIBLE_SNAPSHOTS", "Snapshots must refer to the same database and component")
    if before["session"] != after["session"]:
        fail("IDENTITY_UNRESOLVED", "Cross-session graphical identity is not verified; compare observations from one Doge session")
    if 'class_interface' in before or 'class_interface' in after:
        def class_identity(record):
            return {owner['oid']: {name: graph['generation'] for name, graph in owner['scopes'].items()}
                for owner in record['class_interface']['owners']}
        if ('class_interface' not in before or 'class_interface' not in after or
                before['database_session'] != after['database_session'] or class_identity(before) != class_identity(after)):
            fail('IDENTITY_UNRESOLVED', 'Class database, owner scopes or runtime graph generations changed')
    native_before, native_after = before.get('database_session_identity'), after.get('database_session_identity')
    if ((isinstance(native_before, str) and re.fullmatch(r'[0-9a-f]{32}', native_before))
            or (isinstance(native_after, str) and re.fullmatch(r'[0-9a-f]{32}', native_after))):
        if native_before != native_after:
            fail('IDENTITY_UNRESOLVED', 'Native database identity changed or was not collected in one observation')
    if before.get('structure', {}).get('generation') != after.get('structure', {}).get('generation'):
        fail('IDENTITY_UNRESOLVED', 'Native structural graph was reloaded; runtime edge references expired')
    if before['snapshot'] != after['snapshot'] and (not before.get('ascet_process_epoch') or before.get('ascet_process_epoch') != after.get('ascet_process_epoch')):
        fail('IDENTITY_UNRESOLVED', 'ASCET process identity changed or is unknown; graphical identity cannot be matched precisely')
    left = {r['key']: r for r in entities(before).values()}
    right = {r['key']: r for r in entities(after).values()}
    changes = []
    for key in sorted(left.keys() | right.keys()):
        a, b = left.get(key), right.get(key)
        if a is None or b is None:
            item = b or a
            changes.append({"kind": "added" if a is None else "removed", "target": item['ref'], "entity_kind": item['kind'], "before": None if a is None else a['fields'], "after": None if b is None else b['fields']})
            continue
        for field in sorted(a['fields'].keys() | b['fields'].keys()):
            av, bv = a['fields'].get(field), b['fields'].get(field)
            if field not in a['fields'] or field not in b['fields']:
                changes.append({"kind": "coverage_changed", "target": b['ref'], "field": field, "before_present": field in a['fields'], "after_present": field in b['fields']})
            elif dump(av) != dump(bv):
                changes.append({"kind": "field_changed", "target": b['ref'], "field": field, "before": av, "after": bv})
    return changes


def handle(tool, args, session):
    for folder in ("raw", "snapshots", "documents", "cursors", "delivery"):
        (STORE / folder).mkdir(parents=True, exist_ok=True)
    if not isinstance(args, dict) or not isinstance(session, str) or not session:
        fail("INVALID_INPUT", "Missing tool input or session")
    from bd_read_contract import validate as validate_read_contract
    validate_read_contract(tool,args,fail)
    if tool in ('bd_edit','bd_revert'):
        from bd_write_contract import validate as validate_write_contract
        validate_write_contract(tool,args,fail)
    if args.get("cursor"):
        if set(args) != {"cursor"} or tool not in {"bd_read", "bd_find", "bd_inspect", "bd_diff"}:
            fail("INVALID_INPUT", "A cursor must be used alone with a read tool")
        return resume(args["cursor"], session)
    budget = args.get("max_bytes", 12288)
    if not isinstance(budget, int) or isinstance(budget, bool) or not 2048 <= budget <= MAX_BYTES:
        fail('INVALID_INPUT', 'max_bytes must be between 2048 and 16384')
    if tool in ("bd_edit", "bd_revert"):
        if tool == 'bd_edit' and os.environ.get('ASCET_BD_SANDBOX_WRITES') != '1' and os.environ.get('ASCET_BD_STRUCTURAL_WRITES') != '1' and os.environ.get('ASCET_BD_CLASS_WRITES') != '1':
            fail('CAPABILITY_UNAVAILABLE', 'Model writes are disabled', model_modified=False)
        if tool == 'bd_revert' and os.environ.get('ASCET_BD_SANDBOX_WRITES') != '1' and os.environ.get('ASCET_BD_STRUCTURAL_WRITES') != '1' and os.environ.get('ASCET_BD_CLASS_WRITES') != '1':
            fail('CAPABILITY_UNAVAILABLE', 'Model restoration is disabled', model_modified=False)
        from bd_class_tools import OPERATIONS as CLASS_OPERATIONS, owns as owns_class, execute as execute_class
        if (tool == 'bd_edit' and args.get('operations', [{}])[0].get('op') in CLASS_OPERATIONS or
                tool == 'bd_revert' and owns_class(args['change_id'])):
            from bd_edit_journal import JournalError
            try:
                return execute_class(tool, args, session, budget)
            except JournalError as error:
                fail(error.code, str(error), request_id=args.get('request_id'), automatic_retry=False,
                    recovery_query='bd_inspect(query=edits) locates the durable Class change; then query=recovery')
        if tool == 'bd_edit' and args.get('operations', [{}])[0].get('op') == 'connect_path':
            from bd_flow_plan import edit as edit_path
            return edit_path(args, session, budget)
        if (tool == 'bd_edit' and 'steps' in args) or (tool == 'bd_revert' and args['change_id'].startswith('flow_')):
            from bd_group_tools import execute as execute_group
            return execute_group(tool, args, session, budget)
        if tool == 'bd_edit':
            read_record = load_record(args.get('snapshot'), 's_', 'snapshots')
            if 'interfaces' in read_record or 'project_messages' in read_record:
                fail('INVALID_INPUT', 'Interface and Project snapshot references are read-only; use view=structure for supported sandbox editing', model_modified=False)
        from bd_structural_tools import OPERATIONS
        structural = tool == 'bd_edit' and any(isinstance(o, dict) and o.get('op') in OPERATIONS for o in args.get('operations', []))
        if structural and all(isinstance(o, dict) and o.get('op') == 'set_literal' for o in args.get('operations', [])):
            structural = 'structure' in load_record(args.get('snapshot'), 's_', 'snapshots')
        if tool == 'bd_revert':
            from bd_sandbox_edit import journal
            from bd_edit_journal import JournalError
            try:
                source = journal().origin(args.get('change_id'))['intent']
                structural = 'operation' in source
            except JournalError as error:
                fail(error.code, str(error))
        if structural:
            from bd_structural_tools import execute
            return execute(tool, args, session, budget)
        from bd_sandbox_edit import execute
        return execute(tool, args, session, budget)
    if tool == "bd_read":
        if bool(args.get("component")) == bool(args.get("snapshot")):
            fail("INVALID_INPUT", "Provide exactly one of component, snapshot or cursor")
        view = args.get('view', 'logic')
        if view not in ('logic', 'overview', 'structure', 'interfaces', 'project_messages', 'class_interface'):
            fail("CAPABILITY_UNAVAILABLE", "Unknown read view")
        if 'scope' in args and not args.get('component'):
            fail('INVALID_INPUT', 'scope is only valid with a live component read')
        if view == 'class_interface' and args.get('component'):
            from bd_class_tools import capture as capture_class
            from bd_edit_journal import JournalError
            try:
                record = capture_class(args['component'], session)
            except JournalError as error:
                fail(error.code, str(error))
        elif view == 'project_messages' and args.get('component'):
            if 'scope' in args:
                fail('INVALID_INPUT', 'Project message view captures all Module message declarations')
            from bd_project_tools import capture as capture_project
            record = capture_project(args['component'], session)
        elif view == 'interfaces' and args.get('component'):
            if 'scope' in args:
                fail('INVALID_INPUT', 'Interface view captures Main and bounded hierarchy contents')
            from bd_signal_tools import capture as capture_interfaces
            record = capture_interfaces(args['component'], session)
        elif view == 'structure' and args.get('component'):
            from bd_structural_tools import capture as capture_structure
            record = capture_structure(args['component'], session, args.get('scope', {}).get('diagram', 'Main'))
        else:
            record = capture(args['component'], session, args.get('scope')) if args.get('component') else load_record(args['snapshot'], 's_', 'snapshots')
        if view == 'interfaces' and 'interfaces' not in record:
            fail('INCOMPATIBLE_SCOPE', 'interfaces view requires an interface snapshot; capture the live component with this view')
        if view == 'project_messages' and 'project_messages' not in record:
            fail('INCOMPATIBLE_SCOPE', 'project_messages view requires a Project snapshot')
        if view == 'class_interface' and 'class_interface' not in record:
            fail('INCOMPATIBLE_SCOPE', 'class_interface view requires a Class complete-owner snapshot')
        meta = manifest(record) | {"view": view}
        text = record['logic'] if view in ('logic', 'structure', 'interfaces', 'project_messages', 'class_interface') else dump(meta) + "\nUse bd_read(snapshot=...) for the captured document."
        return paged(text, meta, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'class_callers':
        from bd_class_impact_tools import inspect as inspect_class_callers
        return inspect_class_callers(args, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'flow_plan':
        from bd_flow_plan import inspect as inspect_plan
        plan = inspect_plan(args, session)
        return paged(dump(plan), {'query': 'flow_plan', 'plan_ref': plan['plan_ref'], 'source': 'immutable observations; zero live reads'}, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'recovery':
        if str(args.get('change_id', '')).startswith('flow_'):
            from bd_group_recovery import inspect as inspect_recovery
        else:
            from bd_class_tools import owns as owns_class, recovery as class_recovery
            if owns_class(args.get('change_id')):
                from bd_edit_journal import JournalError
                try:
                    return class_recovery(args, session, budget)
                except JournalError as error:
                    fail(error.code, str(error), change_id=args.get('change_id'), automatic_retry=False)
            from bd_recovery import inspect as inspect_recovery
        return inspect_recovery(args, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'edits':
        from bd_edit_history import history
        return history(args, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'changes':
        key = journal_key(load_record(args['snapshot'], 's_', 'snapshots')) if args.get('snapshot') else None
        rows = [journal_summary(r) for r in reversed(journal_history(key))
                if (not args.get('component') or r['component'].casefold() == args['component'].casefold())
                and (not args.get('database') or r['database'].casefold() == args['database'].casefold())]
        return paged('\n'.join(dump(r) for r in rows) or 'No recorded observations.', {'query': 'changes', 'records': len(rows), 'scope': 'persistent history across Doge sessions; snapshot filters by database/component identity and collection scope'}, session, budget)
    if tool == 'bd_inspect' and args.get('query') == 'block_types':
        from bd_block_catalog import catalog
        data = catalog(block_kind=args.get('block_kind'), owner_kind=args.get('owner_kind'),
            diagram_scope=args.get('diagram_scope', 'Main'))
        return paged(dump(data), {'query': 'block_types', 'native_requests': 0,
            'source': 'current declared code routes; not live write eligibility',
            'native_inventory_complete': False}, session, budget)
    if tool == 'bd_inspect' and args.get('query') in ('capabilities', 'snapshots'):
        if args['query'] == 'capabilities':
            data = {"available": ["bd_read", "bd_read(scope: Main targets, topology and optional layout)", "bd_find (within snapshot)", "bd_inspect", "bd_diff (same session and scope, observed fields only)"], "disabled": ["bd_edit", "bd_revert", "save", "live catalog search", "full-model layout", "effective project/instance configuration", "business state-machine writes; trigger/boundary/hierarchy edits"], "live_read": "ASCET must already be running; current database only; no automatic launch or database switch"}
            data['native_presentation'] = {'enabled': os.environ.get('ASCET_BD_NATIVE_PRESENTATION') == '1', 'interface': 'bd_diff(change_id=edit_..., presentation=show|clear)', 'status': 'experimental ordinary Main overlay; scalar/table model-field and node/route samples visually checked; complete UI acceptance not certified', 'model_edit_replayed': False}
            data['block_type_catalog'] = {'inspect': 'query=block_types; optional block_kind, owner_kind=class|module, diagram_scope=Main|child',
                'native_requests': 0, 'scope': 'typed creation fields and declared per-context operations; not native inventory or live acceptance'}
            data['signal_interfaces'] = {'read': 'bd_read(view=interfaces); Main and bounded nested hierarchies',
                'inspect': ['signal_path: targets=[output_pin_ref,input_pin_ref]', 'interface_binding: exact interface/message/pin refs', 'project_signal_path: Project snapshot + exact instance/pin endpoints and component interface snapshots'],
                'source': 'fixed native block, bidirectional hierarchy object identity and Class method/formal aliases',
                'editable_refs': False, 'project_binding': 'bd_read(view=project_messages) and offline interface_binding; all Module message declarations, native lookup candidates and bounded Module/Class alias chains, max depth 16',
                'database_identity': 'native dbAccess/dbInterface object token sampled before/after; reopen lifecycle unverified',
                'class_body_entry': 'exact observed method/formal aliases join to argument/return occurrences and real body connections; no argument-to-return behavior inference',
                'not_collected': ['complete Class method behavior', 'execution schedule', 'runtime delivery', 'database reopen and graph reload lifecycle']}
            data['class_callers'] = {'interface': 'bd_inspect(query=class_callers, component=<full Class path>)',
                'live_read': True, 'editable_refs': False, 'model_setters_called': 0,
                'optional_selector': 'exact diagram/method_alias/formal_alias/slot; projects to selected formal and scope-qualified caller pins without reducing native discovery coverage',
                'coverage': 'direct persisted DBProxy SGClass/SGModule declarations; bounded recursive ordinary BDE occurrences and method/formal pin aliases',
                'requires': 'clean editors; unchanged endpoint epoch, native database token and twice-sampled signature/bindings',
                'bounds': {'references': 256, 'declarations': 8192, 'scopes': 1024, 'nodes': 8192, 'pins': 16384, 'depth': 16},
                'not_collected': ['full caller graphs/layout', 'transitive callers', 'runtime delivery', 'other reference backends']}
            from bd_class_creation import NATIVE_WRITE_ACCEPTED
            data['class_interface_tools'] = {'enabled': os.environ.get('ASCET_BD_CLASS_WRITES') == '1',
                'scope': 'isolated Trial_* Class definition and supported direct callers; opt-in experimental',
                'delete_preview': 'exact complete-owner re-observation; observed native keys/capacity; no allocation or request reservation',
                'argument_creation': {'operation': 'create_class_argument', 'preview': True,
                    'write_accepted': NATIVE_WRITE_ACCEPTED, 'selector': 'exact Main/method_alias; no pre-existing formal required',
                    'model_types': ['cont', 'sdisc', 'udisc', 'log'], 'direction': 'in',
                    'planned_effect': 'one new input pin per exact caller occurrence; identity assigned by actual native creation',
                    'requires': 'same complete owner baseline; native method/name/profile validation; no allocation or request reservation'},
                'inverse_preview': 'bd_revert(preview=true); planned actual-WAL inverse plus separate write_eligibility; held/expired/released refuses without Cebra',
                'inverse_policy': 'strict_all_owner_after_baseline; unrelated changes also refuse',
                'acceptance': 'native empty-record probe and expired refusal validated; positive retained-object/capacity exhaustion/partial states lack online evidence',
                'not_supported': ['Class output/in-out argument creation', 'Class enum/complex argument creation',
                    'Class redo', 'patch-preserving Class inverse', 'Class inverse across restart']}
            data['automatic_recording'] = {'trigger': 'bd_read records observations; bd_edit/bd_revert record each dispatched actual before/after patch',
                'observation_history': 'bd_inspect(query=changes)', 'edit_history': 'bd_inspect(query=edits)',
                'diff': 'bd_diff(change_id=edit_...|flow_...) is offline',
                'background_monitor': False, 'captures_external_GUI_edits': False,
                'unknown_outcome': 'durable intent/started retained; explicit recovery; no automatic setter replay'}
            data['commit_resource_preparation'] = {
                'profile': 'prepare_v1', 'enabled': os.environ.get('ASCET_BD_COMMIT_RESOURCE_CAPTURE') == 'prepare_v1',
                'scope': 'fixed staged Main preparation in isolated Trial_* Module/Class components',
                'capture': 'original owner logical records, complete cache membership, modified census and direct resource fields',
                'recording': 'same native preparation dispatch retains full material and records a compact original receipt in WAL',
                'check': 'bd_inspect(query=recovery) records complete actual resource values; bounded locations returned to agent',
                'offline_diff': 'bd_diff(change_id) returns all recorded resource check values without a native read',
                'write_authorized': False, 'inverse_authorized': False, 'reconcile_available': False,
                'full_commit_resource_closure': False, 'material_capacity': 32,
                'reference_record_comparison': {'profile':'complete_reference_payload_v2',
                    'coverage':'full count plus audited tag-1 OIDs; separate full raw record equality and unparsed tail actual diff',
                    'legacy_evidence':'old fixed+blob prefixes omitted four semantic bytes; recover only from retained original full buffers',
                    'unsupported_proxy_tags':'refused without truncation or write authorization'},
                'loaded_sg_before_capture': {'profile': 'loaded_sg_v1',
                    'enabled': os.environ.get('ASCET_BD_COMMIT_REGISTERED_MODELS') == 'loaded_sg_v1',
                    'receipt_profile': 'native_commit_prepare_v2',
                    'coverage': 'loaded registered SG root fields and audited mutable values; DB proxies remain boundaries',
                    'current_model_diff_available': True,
                    'current_model_diff_scope': 'all original retained loaded SG objects plus current reachable fields/values/collections; new observed references and cache root membership; no DB proxy resolution',
                    'persistent_inverse_available': False},
                'ctree_control_capture': {'profile':'ctree_v1',
                    'enabled':os.environ.get('ASCET_BD_COMMIT_CONTROL_CAPTURE')=='ctree_v1',
                    'receipt_profile':'native_commit_prepare_v3',
                    'coverage':'all backend interfaces plus separate reference interface; retained identities, register routes, transaction result markers and ordered savepoint tokens',
                    'current_control_diff_available':True,'transaction_methods_called':0,
                    'native_transaction_semantics_verified':False,'persistent_inverse_available':False},
                'original_reciprocal_capture': {'profile':'outgoing_v1',
                    'enabled':os.environ.get('ASCET_BD_COMMIT_RECIPROCAL_CAPTURE')=='outgoing_v1',
                    'receipt_profile':'native_commit_prepare_v4',
                    'coverage':'same-dispatch original inbound records for original outgoing targets; complete tag-1 references, direct leaf read effects, no target object resolution',
                    'current_inbound_diff_available':True,
                    'current_inbound_diff_scope':'original outgoing targets only; full semantic/raw records and direct CTree read effects retained in WAL',
                    'new_outgoing_targets_captured':False,
                    'full_persistent_write_set_captured':False,'persistent_inverse_available':False},
                'original_reference_file_baseline': {'profile':'reference_file_v1',
                    'enabled':os.environ.get('ASCET_BD_COMMIT_REFERENCE_BASELINE')=='reference_file_v1',
                    'receipt_profile':'native_commit_prepare_v5',
                    'coverage':'same-prepare observed whole reference-file raw records and two unique-key censuses; compact receipt and retained paged evidence',
                    'current_reference_file_checked':False, 'terminal_semantics_verified':False,
                    'cross_process_atomic':False, 'complete_before_authorized':False,
                    'persistent_inverse_available':False},
                'limits': ['registered model and transitive CTree closure incomplete',
                           'original native material does not survive process exit',
                           'dirty Project handling and persistent inverse not verified']}
            data['record_payload_revert_plan'] = {
                'profile': 'bde_native_revert_plan_v1',
                'available': True,
                'mode': 'offline-plan-only',
                'base': 'immutable after image',
                'desired': 'immutable before image',
                'preserves_unrelated_current_ranges': True,
                'overlap_conflict': True,
                'native_calls': 0,
                'inverse_authorized': False,
                'requires': ['complete before/after/current payloads', 'same owner key',
                             'isolated component and process epoch', 'durable native inverse proof'],
                'implementation': 'scripts/bde_commit_revert_plan.py',
                'status': 'planning boundary only; native record rewrite/restore remains blocked'}
            data['edit_groups'] = {'input': 'bd_edit(request_id,steps=[{snapshot,operations:[one operation]}])',
                'scope': '2..16 distinct sandbox component OIDs; no same-root dependent steps or new shared enum definitions',
                'atomic': False, 'journal': 'durable flow_ group plus actual local edit patches; unknown stops subsequent steps and is never replayed',
                'diff': 'bd_diff(change_id=flow_...) reads offline; presentation show/clear visits original windows',
                'revert': 'all resources and native inverse guards preflighted, then rechecked and restored in reverse order; preview supported',
                'live_faults': 'controlled adapter reply loss after actual native apply validated; OS crash/wire truncation/partial native execution not verified',
                'complete_visuals': 'not_verified across all scopes/types; Main fanout additions passed three rounds of screenshot zoom/scroll/close/reopen/clear gates in visual01',
                'connect_path': 'flow_plan existing pins or construction steps; repeated scopes/fan-out, actual dependencies, whole native/virtual inverse preflight; scope03 passed three rounds of hierarchy actual diff/child snapshot wiring/apply and inverse reply loss; shapes02 passed 13 creation kinds in three rounds on an isolated Module',
                'construction': {'kinds': ['literal', 'comment', 'operator', 'control', 'hierarchy', 'variable', 'parameter', 'constant',
                    'receive_message', 'send_message', 'send_receive_message', 'array', 'matrix', 'distribution',
                    'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed', 'resource', 'delta_t',
                    'implementation_cast', 'enumeration', 'component', 'oned_table_group', 'twod_table_group', 'existing_model'],
                    'created_endpoint': '{step: earlier creation index, direction: input|output, name?: exact pin name}; unique actual pin required in same scope',
                    'additional_agent_reads_between_steps': 0,
                    'model_effects': 'component-wide actual declarations propagated to other scopes of the same owner',
                    'created_definition': 'definition={step: earlier new enum creation}; same exact component owner; actual library OID/path; enum02 passes three rounds/12 controlled cases',
                    'created_models': 'x_distribution/y_distribution={step: earlier distribution}; existing_model uses model={step: earlier declaration}; actual model refs; models02 passes three rounds/9 cases including controlled real apply reply loss',
                    'scope_effects': 'actual hierarchy child diff and immutable child snapshot without extra capture; scope03 passes three rounds/9 cases',
                    'shape_acceptance': 'shapes02 passes 13 kinds in three rounds on an isolated Module fixture; not full AEB_Core acceptance',
                    'limits': ['explicit steps only; no automatic channel/interface inference', 'new Main hierarchy ports and single existing hierarchy port create/delete supported; Class interface edits, new child scope dependencies in one plan and cross-owner shared enum dependencies unavailable',
                        'future dependencies validate after actual creation; ambiguity stops in recoverable partial state']}}
            data['experimental_bulk_read'] = {'enabled': os.environ.get('ASCET_BD_BULK_FULL') == '1',
                'enable': 'ASCET_BD_BULK_FULL=1', 'source': 'fixed embedded native template; no caller code',
                'model_types': ['scalar', 'array', 'matrix', 'distribution', 'enumeration',
                                'one-dimensional table', 'two-dimensional table', 'complex class references',
                                'receive/send/send-receive message', 'resource'],
                'diagrams': 'discrete method and Module process diagrams; other kinds fail explicitly',
                'verified': 'Version-bound evidence in bde-experiments: AEB_dFxTar, scalar/array/matrix, enum/distribution, three Module messages and resource, empty Module process. Numeric ordinary/fixed table fields passed 36 multi-cell chains on one small fixture; nonempty process remains unverified. AEB_Core dependency sm enum resolution currently fails',
                'consistency': 'non_atomic_observation; no cross-call model cache'}
            from bd_sandbox_edit import enabled
            data['experimental_writes'] = {'enabled': enabled(), 'operations': ['single numeric set_literal', 'guarded literal revert'],
                'scope': 'BDE_Tool_Experiments/Trial_*; max20 literal nodes; no connections or sequences',
                'finalize': 'StoreToCache may rebuild logic and auto-commit', 'diff': 'bd_diff(change_id=edit_...) is offline',
                'history': 'bd_inspect(query=edits); offline, also when writes are disabled',
                'production_business_writes': False}
            from bd_structural_tools import OPERATIONS, UNCOLLECTED
            from bd_structure_journal import CREATION_KINDS, MODEL_CREATORS, OPERATOR_INPUTS
            from bd_structure_scope import CHILD_OPERATIONS, CHILD_CREATION_KINDS
            data['experimental_structure'] = {'read': 'bd_read(view=structure); scope.diagram=Main/h<ID>/h<ID> selects exact hierarchy',
                'child_operations': CHILD_OPERATIONS, 'child_creation_kinds': CHILD_CREATION_KINDS,
                'child_limits': 'complete selected scope for creation; ordinary occurrence deletion and explicit hierarchy port create/delete supported; hierarchy container deletion unavailable; experimental child overlay uses exact UI hierarchy ID chain and suspends drawing outside its scope, visual acceptance pending',
                'hierarchy_ports': {'operations': ['create_hierarchy_port', 'delete_hierarchy_port'],
                    'targets': 'existing hierarchy node for creation; exact external parent pin for deletion; complete parent structure scope required',
                    'effects': 'actual parent patch plus child topology/layout and every descendant boundary context; immutable affected scope snapshots without an extra agent read',
                    'inverse': 'checks all affected scopes and preserves original interface/child/parent objects and order; deletion retains incident edges on both sides',
                    'validation': 'ports08 passes three rounds/42 cases in two nested sandbox scopes, including child conflicts and real apply/inverse reply loss; all baselines restored',
                    'not_verified': ['Class interfaces', 'interface edit screenshots/lifecycle', 'reload', 'runtime delivery']},
                'write_enabled': os.environ.get('ASCET_BD_STRUCTURAL_WRITES') == '1', 'operations': OPERATIONS,
                'creation_kinds': CREATION_KINDS,
                'creation_contract': {'primitive_model_types': ['cont','sdisc','udisc','log'], 'typed_model_kinds': MODEL_CREATORS,
                    'operator_input_counts': OPERATOR_INPUTS, 'adjustable_operator_inputs': '2..16; null input count means adjustable',
                    'controls': ['Break','IfThen','Case','While','Switch','IfThenElse','MUX'],
                    'message_owner': 'Module only; Class such as AEB_Core rejects before mutation',
                    'message_configuration': 'message_scope local/imported/exported; model_type enum requires an existing definition path. global_label is declaration name; message roles/scope/label are included in actual patches. Message initial values and channel edits unavailable',
                    'resource_owner': 'Module only; Class placement was not retained by native reload and is rejected before mutation',
                    'grouped_tables': '1D/2D group tables require existing exact Main/m_ distribution refs',
                    'enum_and_component': 'component instantiates existing full-path library definitions; enumeration accepts existing definition or sandbox new_definition with ordered unique items; inverse guards native identity and later references',
                    'hierarchy': 'Hierarchy container placement only in Main with up to 16 unique input/output names per side; existing child scopes support listed child_operations/child_creation_kinds',
                    'declaration_configuration': 'primitive model_type; numeric tables cont/sdisc/udisc only; optional typed initial_value for variable/parameter/constant/enumeration; array/distribution/1D table max_size 1..256, matrix/2D table max_size [X,Y] each 1..16; message initial values and table resize/formula editing unavailable'},
                'scalar_defaults': {'read': 'existing component default configuration only; status/value/configuration_oid/source',
                    'edit': 'set_scalar_value; exact model ref and expect.value; independent local scalar or constant; preserves raw config for inverse',
                    'types': ['cont','sdisc','udisc','log','enum'], 'effective_values': 'not collected'},
                'sequence': 'set_sequence_number preserves assigned activator; set_sequence assigns or switches an existing call by exact owner method name plus number; shared pins observed; occupied numbers rejected; missing call creation unavailable',
                'sequence_node_edit': 'move_node/delete_node preserve ordinary selector call/label identities and bindings; separate execution connection pins rejected before mutation',
                'aggregate_defaults': 'set_array_values / set_matrix_values / set_distribution_values edit independent local defaults and resize within existing declared maxima; array/distribution 1..256, matrix 1..16 per axis in native values[x][y] order; distribution numeric axes strictly increase and grouped-table references rejected; exact previous values required; raw native configuration deep-copied for inverse',
                'table_defaults': 'set_table_values; independent local ordinary/fixed numeric 1D/2D defaults; exact expect.values and fixed dimensions; axes/interpolation/extrapolation preserved; retains original native value object and checks configuration owner/raw identity/current values for inverse; grouped tables and logical values rejected',
                'table_settings': 'set_table_axis edits one ordinary independent numeric x/y axis with exact expect.values and fixed size; strictly increasing values match model_type, and detached conversion must equal request. Fixed/grouped axes rejected. set_table_interpolation edits the declaration by exact declared_interpolation (null retained) and default flags, mode linear/rounded; ordinary/fixed independent numeric tables. It affects all configurations but only defaults are collected/verified. Model-field patches can display exact old/new text beside matched Main occurrences; declarations without occurrences cannot be displayed',
                'recovery_query': 'bd_inspect(query=recovery, change_id, reconcile=true) resolves confirmed native terminal observations without setters',
                'edit_after_snapshot': 'actual observation only; zero additional reads; explicit scope',
                'scope': 'Trial_* sandbox only; same process recovery; one operation per patch',
                'limits': UNCOLLECTED + ['bounded typed deep source checkpoint; unknown source classes rejected; not GUI transaction isolation',
                    'external saved graph changes expire retained inverses', 'native overlay available through bd_diff; bounded sample evidence does not certify every patch or UI lifecycle']}
        else:
            rows = []
            for path in (STORE / 'snapshots').glob('s_*.json'):
                r = json.loads(path.read_text(encoding='utf-8'))
                if r['session'] == session:
                    rows.append({k: r[k] for k in ('snapshot', 'component', 'database', 'observed_at_utc')})
            data = sorted(rows, key=lambda r: r['observed_at_utc'], reverse=True)
        return paged(dump(data), {"query": args['query']}, session, budget)
    if tool == 'bd_diff':
        from bd_class_tools import owns as owns_class, diff as class_diff
        if owns_class(args.get('change_id')):
            from bd_edit_journal import JournalError
            try:
                if 'presentation' in args:
                    from bd_class_presentation import present as present_class
                    return present_class(args, session, budget)
                value = class_diff(args['change_id'])
            except JournalError as error:
                fail(error.code, str(error))
            return paged(dump(value), {'change_id': args['change_id'], 'record_type': 'native_class_interface_v1',
                'status': value['status'], 'source': 'durable Class native WAL; zero live reads'}, session, budget)
        if args.get('change_id', '').startswith('flow_'):
            from bd_group_tools import diff as diff_group
            return diff_group(args, session, budget)
        if 'presentation' in args:
            from bd_native_presentation import present
            return present(args, session, budget)
        if args.get('change_id'):
            if args.get('before') or args.get('after'):
                fail('INVALID_INPUT', 'Use change_id or before + after, not both')
            if args['change_id'].startswith('edit_'):
                from bd_sandbox_edit import journal
                from bd_edit_journal import JournalError
                try:
                    log = journal()
                    source = log.origin(args['change_id'])['intent']
                    if 'operation' in source:
                        # Structural WALs retain full native recovery images.
                        # The agent receives actual local patches/order deltas;
                        # raw graphical objects stay in the recovery journal.
                        from bd_structure_journal import StructureJournal
                        edit = StructureJournal(STORE / 'edits').diff(args['change_id'])
                    else:
                        edit = log.diff(args['change_id'])
                except JournalError as error:
                    fail(error.code, str(error))
                return paged(dump(edit), {'change_id': args['change_id'], 'record_type': 'edit',
                    'status': edit['status'], 'source': 'durable edit journal; no native read'}, session, budget)
            entry = load_record(args['change_id'], 'chg_', 'changes')
            # Verify recovery material still exists and is intact.
            for ref in (entry['before'], entry['after']):
                if ref:
                    load_record(ref, 's_', 'snapshots')
            text = '\n'.join(dump(c) for c in entry['differences'])
            if not text:
                text = 'No differences in collected semantic fields.' if entry['status'] == 'unchanged' else 'No comparable before/after pair: ' + entry['status'] + '.'
            return paged(text, journal_summary(entry), session, budget)
        if not args.get('before') or not args.get('after'):
            fail('INVALID_INPUT', 'Provide change_id or both before and after')
        before = load_record(args.get('before'), 's_', 'snapshots')
        after = load_record(args.get('after'), 's_', 'snapshots')
        changes = semantic_diff(before, after)
        return paged('\n'.join(dump(c) for c in changes) or 'No differences in collected fields.', {"before": before['snapshot'], "after": after['snapshot'], "changes": len(changes), "uncompared": uncompared(after), "identity": "same-session IDs; deletion/recreation identity reuse cannot be excluded", "consistency": "non_atomic_observations"}, session, budget)
    record = load_record(args.get('snapshot'), 's_', 'snapshots')
    if tool == 'bd_inspect' and args.get('query') == 'project_signal_path':
        from bd_project_signal_paths import inspect as inspect_flow
        data = inspect_flow(record, args)
        return paged(dump(data), {'snapshot': record['snapshot'], 'query': args['query'],
            'source': 'immutable Project and interface observations; zero live reads', 'editable_refs': False}, session, budget)
    if tool == 'bd_inspect' and args.get('query') in ('signal_path', 'interface_binding'):
        if 'project_messages' in record:
            if args['query'] != 'interface_binding':
                fail('INCOMPATIBLE_SCOPE', 'Project message observations contain bindings, not BDE pin paths')
            from bd_project_tools import inspect as inspect_project
            data = inspect_project(record, args)
        else:
            from bd_signal_tools import inspect as inspect_signal
            data = inspect_signal(record, args)
        return paged(dump(data), {'snapshot': record['snapshot'], 'query': args['query'],
            'source': 'immutable interface observation; zero live reads', 'editable_refs': False}, session, budget)
    entries = entities(record)
    if tool == 'bd_find':
        query = args.get('query')
        if not isinstance(query, str) or not query:
            fail('INVALID_INPUT', 'query is a nonempty literal substring, not a regular expression')
        matches = [{k: r[k] for k in ('ref', 'kind', 'name')} for r in entries.values() if query.casefold() in (r['name'] + ' ' + r['ref']).casefold() and (not args.get('kind') or r['kind'] == args['kind'])]
        return paged('\n'.join(dump(r) for r in matches) or 'No matches.', {"snapshot": record['snapshot'], "matches": len(matches), "search_scope": record.get('scope', 'captured component and definitions')}, session, budget)
    if tool == 'bd_inspect':
        query = args.get('query')
        if query == 'checks':
            if 'class_interface' in record:
                text = dump({'validation': 'recorded_all_owner_scopes_only', 'counts': record['counts'],
                    'dirty_editors': record['dirty_editors'], 'not_collected': uncompared(record),
                    'inverse_policy': 'strict_all_owner_after_baseline', 'not_run': ['simulation', 'runtime scheduling', 'native Class patch display']})
            elif 'project_messages' in record:
                from bd_project_tools import UNCOLLECTED
                text = dump({'validation': 'collected_project_message_evidence_only', 'counts': record['counts'],
                    'binding_status_counts': record['message_bindings']['counts'],
                    'dirty_editors': record['dirty_editors'], 'editable_refs': False, 'not_collected': UNCOLLECTED,
                    'not_run': ['ASCET native diagnostics', 'simulation', 'current state revalidation']})
            elif 'interfaces' in record:
                from bd_signal_tools import UNCOLLECTED
                text = dump({'structural_validation': 'collected_graph_only', 'counts': record['counts'],
                    'class_bindings': {key: value for key, value in record['interface_bindings']['classes'].items() if key != 'bindings'},
                    'hierarchy_bindings': {key: value for key, value in record['interface_bindings']['hierarchy'].items() if key != 'bindings'},
                    'dirty_editors': record['dirty_editors'], 'editable_refs': False, 'not_collected': UNCOLLECTED,
                    'not_run': ['ASCET native diagnostics', 'simulation', 'current state revalidation']})
            else:
                text = dump({"structural_validation": "observed_scope_only" if 'structure' in record else "passed_at_capture", "counts": record['counts'], "dirty_editors": record.get('dirty_editors','not_collected_in_edit_observation'), "unresolved_formula_bindings": record['unresolved_bindings'], "not_run": ["ASCET native diagnostics", "simulation", "current state revalidation"]})
        elif query == 'configuration':
            defaults = [{"ref": item['ref'], "name": item['name'], **item['fields']['default_value']}
                for item in entries.values() if item['kind']=='model' and 'default_value' in item['fields']]
            text = dump({"status": "unresolved", "available": "captured component defaults" if defaults else "not_collected" if 'scope' in record else "class-default formulas, bindings and cached values are in model fields",
                "component_defaults": defaults, "missing": ["per-instance overrides", "project imports", "effective calibration"], "warning": "Default zero values are not effective runtime values"})
        elif query == 'fields':
            targets = args.get('targets')
            if not isinstance(targets, list) or not targets:
                fail('INVALID_INPUT', 'fields requires a nonempty targets array from bd_read/bd_find')
            rows = []
            for target in targets:
                if target not in entries:
                    fail('TARGET_NOT_FOUND', f'Unknown target: {target}')
                item = entries[target]
                fields = args.get('fields') or sorted(item['fields'])
                rows.append({"ref": target, "kind": item['kind'], "fields": {f: {"state": "known", "value": item['fields'][f], "writable": False} if f in item['fields'] else {"state": "not_collected"} for f in fields}})
            text = '\n'.join(dump(row) for row in rows)
        else:
            fail('CAPABILITY_UNAVAILABLE', 'Implemented inspect queries: capabilities, snapshots, changes, fields, checks, configuration')
        return paged(text, {"snapshot": record['snapshot'], "query": query, "source": "immutable observation, not a fresh live read"}, session, budget)
    fail('UNKNOWN_TOOL', f'Unknown tool: {tool}')


def main():
    sys.stdout.reconfigure(encoding='utf-8')
    try:
        request = json.loads(sys.stdin.buffer.read(1_048_577))
        result = handle(request['tool'], request.get('args', {}), request.get('session', ''))
    except ToolError as error:
        result = {"is_error": True, "content": dump({"code": error.code, "message": str(error), **error.details})}
    except Exception as error:
        # Keep protocol errors bounded; full local diagnostics remain on stderr.
        import traceback
        traceback.print_exc(file=sys.stderr)
        result = {"is_error": True, "content": dump({"code": "BACKEND_ERROR", "message": str(error)[:1000]})}
    print(dump(result))


if __name__ == '__main__':
    main()
