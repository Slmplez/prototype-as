"""Bounded isolated owner-record patch requests, never native write authority."""
from copy import deepcopy

from bd_persistent_owner_records import validate


def project(expected, patches):
    result = validate(expected, component_oid=expected['component_oid'])
    if not isinstance(patches, list) or len(patches) > 2:
        raise ValueError('At most two owned search records required')
    seen = set()
    for patch in patches:
        if (not isinstance(patch, dict) or set(patch) != {'global_id', 'role', 'operation', 'current', 'candidate'}
                or patch['operation'] != 'write_existing_owner_record'):
            raise ValueError('Exact five-field existing owner patch required')
        index = next((i for i, r in enumerate(result['owners'])
            if r['role'] == patch['role'] and r['global_id'] == patch['global_id']), None)
        if index is None or index in seen:
            raise ValueError('Distinct exact owned search key required')
        seen.add(index); row = result['owners'][index]; candidate = patch['candidate']
        if patch['current'] != row:
            raise ValueError('Complete owner CURRENT conflict')
        if not isinstance(candidate, dict) or set(candidate) != set(row):
            raise ValueError('Complete original/candidate search fields required')
        mutable = {'allocated_bytes', 'bytes', 'allocated_size', 'logical_size', 'blob_size',
            'stored_version', 'stored_object_state', 'stored_reference_state'}
        if any(candidate[k] != row[k] for k in set(row) - mutable):
            raise ValueError('Owner immutable route or stored class/name differs')
        result['owners'][index] = deepcopy(candidate)
        validate(result, component_oid=result['component_oid'])
        a, b = row['allocated_bytes'], candidate['allocated_bytes']
        if a[:108] != b[:108] or a[120:126] != b[120:126]:
            raise ValueError('Owner immutable search header differs')
    return result


def inverse_request(before, actual_after, current):
    """Use original before/actual after; preserve other CURRENT owners exactly.

    Search payloads are serialized object graphs, so overlapping owner changes
    conflict rather than attempting an unsafe byte-wise three-way merge.
    """
    a = validate(before, component_oid=before['component_oid'])
    b = validate(actual_after, component_oid=a['component_oid'])
    c = validate(current, component_oid=a['component_oid'])
    if any([r['role'], r['oid'], r['global_id']] != [s['role'], s['oid'], s['global_id']]
            for r, s in zip(a['owners'], b['owners'])) or any(
            [r['role'], r['oid'], r['global_id']] != [s['role'], s['oid'], s['global_id']]
            for r, s in zip(a['owners'], c['owners'])):
        raise ValueError('Original/actual/CURRENT owner identities differ')
    if a['references'] != b['references']:
        raise ValueError('Changed references require separate original reciprocal closure')
    patches = []
    for original, after, now in zip(a['owners'], b['owners'], c['owners']):
        if original == after: continue
        if now == original: continue
        if now != after:
            raise ValueError('Overlapping serialized owner CURRENT conflict')
        patches.append(dict(global_id=now['global_id'], role=now['role'], operation='write_existing_owner_record',
            current=now, candidate=original))
    candidate = project(c, patches)
    return dict(profile='isolated_persistent_owner_inverse_request_v1', expected=c, patches=patches,
        candidate=candidate, native_calls=0, production_inverse_authorized=False, full_commit_resource_closure=False)
