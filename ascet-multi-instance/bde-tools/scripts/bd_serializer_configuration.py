"""Strict offline validator for the read-only serializer configuration witness."""
from __future__ import annotations
from collections.abc import Mapping

PROFILE = "native_serializer_configuration_v1"
ROLES = ("owner", "source", "serializer", "swapper", "dumper", "loader")
FORBIDDEN_TRUE = ("serialization_called", "store_called", "commit_called",
                  "write_authorized", "inverse_authorized", "serialization_authorized",
                  "call_closure_complete")

class ConfigurationError(ValueError):
    pass

def _mapping(v, path):
    if not isinstance(v, Mapping): raise ConfigurationError(f"{path}: mapping required")
    return v
def _bool(v, path):
    if type(v) is not bool: raise ConfigurationError(f"{path}: bool required")
    return v
def _int(v, path):
    if type(v) is not int: raise ConfigurationError(f"{path}: integer required")
    return v
def _text(v, path):
    if not isinstance(v, str): raise ConfigurationError(f"{path}: string required")
    return v

def _descriptor(v, path):
    d = _mapping(v, path); kind = _text(d.get("kind"), path+".kind")
    if kind in ("nil",): return
    if kind in ("boolean", "number"):
        if kind == "boolean": _bool(d.get("value"), path+".value")
        else: _int(d.get("value"), path+".value")
        return
    if kind == "reference":
        _text(d.get("ref"), path+".ref"); _text(d.get("class"), path+".class"); return
    if kind == "value":
        _text(d.get("class"), path+".class")
        if not isinstance(d.get("value"), list): raise ConfigurationError(f"{path}.value: array required")
        return
    raise ConfigurationError(f"{path}: unknown descriptor kind {kind!r}")

def _array(v, path):
    d = _mapping(v, path); kind = _text(d.get("kind"), path+".kind")
    if kind == "nil": return 0
    if kind != "array": raise ConfigurationError(f"{path}: array snapshot required")
    n = _int(d.get("size"), path+".size")
    if n < 0 or n != len(d.get("items", [])): raise ConfigurationError(f"{path}: size mismatch")
    for i, x in enumerate(d["items"]): _descriptor(x, f"{path}.items[{i}]")
    return n

def _table(v, path):
    d = _mapping(v, path); kind = _text(d.get("kind"), path+".kind")
    if kind == "nil": return 0
    if kind != "table": raise ConfigurationError(f"{path}: table snapshot required")
    _text(d.get("class"), path+".class"); n = _int(d.get("count"), path+".count")
    entries = d.get("entries")
    if n < 0 or not isinstance(entries, list) or n != len(entries): raise ConfigurationError(f"{path}: count mismatch")
    for i, e in enumerate(entries):
        e = _mapping(e, f"{path}.entries[{i}]"); _descriptor(e.get("key"), f"{path}.entries[{i}].key"); _descriptor(e.get("value"), f"{path}.entries[{i}].value")
    return n

def validate(report, *, expected_token=None, expected_generation=None):
    r = _mapping(report, "report")
    if r.get("profile") != PROFILE: raise ConfigurationError("report.profile: unsupported profile")
    token = _text(r.get("nativeToken"), "nativeToken")
    if expected_token is not None and token != expected_token: raise ConfigurationError("nativeToken mismatch")
    gen = _int(r.get("generation"), "generation")
    if expected_generation is not None and gen != expected_generation: raise ConfigurationError("generation mismatch")
    for key in FORBIDDEN_TRUE:
        if _bool(r.get(key), key): raise ConfigurationError(f"{key}: must remain false")
    if r.get("omission_replacement_strategy_complete") is not True: raise ConfigurationError("finite config is incomplete")
    if r.get("source_witness_held") is not True: raise ConfigurationError("source witness missing")
    _text(r.get("ownerClass"), "ownerClass");
    if r["ownerClass"] not in ("SGClass", "SGModule"): raise ConfigurationError("unsupported owner class")
    if r.get("sourceClass") != "SGTopGraphicsBlockDB": raise ConfigurationError("source route is not SGTopGraphicsBlockDB")
    source_record = _mapping(r.get("sourceRecordPreview"), "sourceRecordPreview")
    if source_record.get("read_status") != "record" or source_record.get("record_class") != "CTreeSearchObjectRecord":
        raise ConfigurationError("sourceRecordPreview: exact owner record required")
    if source_record.get("record_class_requested") != "CTreeSearchObjectRecord":
        raise ConfigurationError("sourceRecordPreview: requested class mismatch")
    fixed = _int(source_record.get("fixed_size"), "sourceRecordPreview.fixed_size")
    blob = _int(source_record.get("blob_size"), "sourceRecordPreview.blob_size")
    logical = _int(source_record.get("logical_size"), "sourceRecordPreview.logical_size")
    allocated = _int(source_record.get("allocated_size"), "sourceRecordPreview.allocated_size")
    if fixed != 130 or logical != fixed + blob or allocated < logical:
        raise ConfigurationError("sourceRecordPreview: length contract mismatch")
    for name in ("global_id", "query_key", "actual_file_key"):
        if not isinstance(source_record.get(name), list) or len(source_record[name]) != 20:
            raise ConfigurationError(f"sourceRecordPreview.{name}: 20-byte key required")
    if source_record["global_id"] != source_record["query_key"] or source_record["global_id"] != source_record["actual_file_key"]:
        raise ConfigurationError("sourceRecordPreview: owner key mismatch")
    for name, size in (("bytes", logical), ("allocated_bytes", allocated)):
        raw = source_record.get(name)
        if not isinstance(raw, list) or len(raw) != size or any(type(x) is not int or not 0 <= x <= 255 for x in raw):
            raise ConfigurationError(f"sourceRecordPreview.{name}: complete bytes required")
    roles = _mapping(r.get("roles"), "roles")
    for role in ROLES:
        if role not in roles: raise ConfigurationError(f"roles.{role}: missing")
        _descriptor(roles[role], f"roles.{role}")
    fields = _mapping(r.get("fields"), "fields")
    for role in ROLES:
        f = _mapping(fields.get(role), f"fields.{role}")
        _text(f.get("class"), f"fields.{role}.class"); names = f.get("names"); vals = f.get("values")
        if not isinstance(names, list) or not isinstance(vals, list) or len(names) != len(vals): raise ConfigurationError(f"fields.{role}: schema mismatch")
        for i, x in enumerate(vals): _descriptor(x, f"fields.{role}.values[{i}]")
    omissions = _mapping(r.get("dumperOmissions"), "dumperOmissions")
    omission_sizes = {k: _array(omissions.get(k), f"dumperOmissions.{k}") for k in ("classes", "indices", "classesForIndices")}
    class_count = _table(r.get("classReplacementTable"), "classReplacementTable")
    inst_count = _table(r.get("instVarReplacementTable"), "instVarReplacementTable")
    identity_count = _table(r.get("identityReplacementTable"), "identityReplacementTable")
    loading = _mapping(r.get("loadingReplacement"), "loadingReplacement")
    relink = _array(loading.get("relinkArray"), "loadingReplacement.relinkArray")
    remap = _table(loading.get("remappedClassReferences"), "loadingReplacement.remappedClassReferences")
    mutated = _table(loading.get("mutatedClasses"), "loadingReplacement.mutatedClasses")
    return {"valid": True, "profile": PROFILE, "native_token": token,
            "generation": gen, "owner_class": r["ownerClass"],
            "source_class": r["sourceClass"], "omission_sizes": omission_sizes,
            "source_record_logical_size": logical, "source_record_allocated_size": allocated,
            "class_replacement_entries": class_count,
            "instvar_replacement_entries": inst_count,
            "identity_replacement_entries": identity_count,
            "loading_relink_size": relink, "loading_remap_entries": remap,
            "loading_mutated_entries": mutated,
            "serialization_authorized": False, "write_authorized": False,
            "inverse_authorized": False}

def validate_or_error(report, **kwargs):
    try: return validate(report, **kwargs)
    except (TypeError, KeyError) as exc: raise ConfigurationError(str(exc)) from exc
