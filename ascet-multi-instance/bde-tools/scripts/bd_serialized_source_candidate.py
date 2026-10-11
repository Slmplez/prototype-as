"""Assemble a raw source record from verified private changed bytes, offline.

This is a research candidate. It neither writes ASCET nor proves live
model/source/cache closure or a production inverse. The entire generated
payload comes from the typed private-layout receipt, not caller binary data.
"""
from copy import deepcopy
import hashlib

from bd_persistent_owner_records import validate
from bd_persistent_owner_patch import project, inverse_request
from bde_private_layout_probe import verify_layout


def candidate_from_private_layout(original, native, extraction):
    summary = verify_layout(native, extraction)
    before = validate(original, component_oid=native['component_oid'])
    if before != native['prepared']['before'] or before != native['actual']['after']:
        raise ValueError('Complete original raw records must belong to this private layout receipt')
    source = before['owners'][1]; payload = native['actual']['payload_bytes']
    row = deepcopy(source); logical_size = 130 + len(payload)
    allocated_size = max(source['allocated_size'], logical_size)
    if allocated_size > 4194304: raise ValueError('Candidate source record exceeds native record bound')
    # Preserve fixed identity/class/name/version/state and all trailing physical
    # bytes beyond the new logical extent. Extend with zeros only if necessary.
    raw = source['allocated_bytes'][:] + [0] * (allocated_size - source['allocated_size'])
    raw[126:130] = list(len(payload).to_bytes(4, 'little'))
    raw[130:logical_size] = payload
    row.update(allocated_bytes=raw, bytes=raw[:logical_size], blob_size=len(payload),
        logical_size=logical_size, allocated_size=allocated_size)
    patch = dict(global_id=row['global_id'], role=row['role'], operation='write_existing_owner_record',
        current=deepcopy(source), candidate=row)
    candidate = project(before, [patch])
    inverse = inverse_request(before, candidate, candidate)
    if inverse['candidate'] != before: raise ValueError('Offline exact raw source inverse projection differs')
    return dict(profile='isolated_private_layout_source_candidate_v1', expected=before, patches=[patch],
        candidate=candidate, offline_inverse=inverse, actual_private_diff=summary['actual_diff'],
        payload_sha256=hashlib.sha256(bytes(payload)).hexdigest(), source_record_only=True,
        native_calls=0, production_write_authorized=False, production_inverse_authorized=False,
        full_commit_resource_closure=False, full_delivery=False)
