"""Fixed leaf request codec; does not dispatch or authorize production writes."""
from copy import deepcopy

from bd_edit_journal import fingerprint
from bd_finite_reference_inverse import lifecycle_plan, _physical_map
from bd_module_persistent_references import validate
from bd_persistent_references import decode


def check_raw_route(row):
    if row['read_status'] != 'record':
        return
    required = set(('role attribute global_id query_key actual_file_key record_class_requested read_status '
        'record_class record_attribute fixed_size blob_size logical_size allocated_size bytes allocated_bytes '
        'length_profile declared_size').split())
    if set(row) != required:
        raise ValueError('Exact existing candidate fields required')
    raw = row['allocated_bytes']
    attribute = row['attribute'].encode('ascii')
    if (raw[2:22] != row['global_id']
            or raw[22:56] != list(attribute + b'\0' * (34 - len(attribute)))
            or int.from_bytes(bytes(raw[56:60]), 'little') != row['blob_size']):
        raise ValueError('Complete raw header differs from physical record route')


def _members(row):
    return [] if row['read_status'] == 'absent' else [e['global_id'] for e in decode(row, row['global_id'])['entries']]


def project(current, patches):
    """Project all duplicate observations, independently recomputing membership."""
    current = validate(current, component_oid=current['component_oid'])
    if any(c['consistent'] is not True for c in current['membership_checks']):
        raise ValueError('Complete consistent CURRENT required')
    rows = _physical_map(current)
    owner_keys = {tuple(o['key']) for o in current['owners']}
    replacements = {}
    if not isinstance(patches, list) or len(patches) > 4:
        raise ValueError('At most four isolated owner physical patches required')
    for patch in patches:
        if not isinstance(patch, dict) or set(patch) != {'global_id', 'role', 'operation', 'current', 'candidate'}:
            raise ValueError('Exact fixed native patch fields required')
        key = ('physical_record', '', tuple(patch['global_id']), patch['role'])
        if key[2] not in owner_keys or key in replacements or key not in rows:
            raise ValueError('Distinct captured isolated Module/source physical record required')
        if fingerprint(patch['current']) != fingerprint(rows[key]):
            raise ValueError('Patch CURRENT differs from complete current observation')
        candidate = patch['candidate']
        if candidate['global_id'] != patch['global_id'] or candidate['role'] != patch['role']:
            raise ValueError('Candidate physical identity differs')
        left, right = patch['current']['read_status'], candidate['read_status']
        if left == right == 'absent' or fingerprint(patch['current']) == fingerprint(candidate):
            raise ValueError('Diagnostic/no-op is not a physical patch')
        operation = 'delete_record' if right == 'absent' else 'create_original_record' if left == 'absent' else 'write_original_or_merged_record'
        if patch['operation'] != operation:
            raise ValueError('Patch operation differs from existence transition')
        check_raw_route(patch['current']); check_raw_route(candidate)
        replacements[key] = deepcopy(candidate)
    result = deepcopy(current)
    for owner in result['owners']:
        owner['records'] = [deepcopy(replacements.get(('physical_record', '', tuple(owner['key']), r['role']), r)) for r in owner['records']]
    result['reciprocal_records'] = [deepcopy(replacements.get(('physical_record', '', tuple(r['global_id']), r['role']), r)) for r in result['reciprocal_records']]
    result['membership_checks'] = []
    for key, incoming in zip(result['reciprocal_targets'], result['reciprocal_records']):
        members = _members(incoming)
        for owner in result['owners']:
            member = key in _members(owner['records'][0]); count = members.count(owner['key'])
            if member != (count > 0):
                raise ValueError('Candidate reciprocal membership inconsistency')
            result['membership_checks'].append(dict(owner_key=owner['key'], target_key=key,
                outgoing_member=member, inbound_owner_count=count, consistent=True))
    return validate(result, component_oid=current['component_oid'])


def inverse_request(receipt, current, *, token, component_oid, generation):
    """Build immutable research-only arguments from a bound lifecycle proposal."""
    plan = lifecycle_plan(receipt, current, token=token, component_oid=component_oid, generation=generation)
    if plan['status'] != 'planned_only' or plan['candidate_suppressed']:
        raise ValueError('Finite inverse conflict/unsupported; no native request')
    patches = [{k: deepcopy(p[k]) for k in ('global_id', 'role', 'operation', 'current', 'candidate')} for p in plan['patches']]
    candidate = project(current, patches)
    return dict(profile='finite_reference_patch_request_v1', native_token=token,
        component_oid=component_oid, generation=generation, expected=deepcopy(current),
        patches=patches, candidate=candidate, current_sha256=fingerprint(current),
        candidate_sha256=fingerprint(candidate), native_calls=0, write_authorized=False,
        production_inverse_authorized=False, full_commit_resource_closure=False,
        automatic_retry=False)


def diagnostic_delta(candidate, actual):
    """Preserve exact observations; account for CTError101 sysio text separately.

    This is a post-operation assessment, never the native CURRENT comparator.
    All fields other than the OS diagnostic of a proved absent record stay exact.
    """
    candidate = validate(candidate, component_oid=candidate['component_oid'])
    actual = validate(actual, component_oid=candidate['component_oid'])
    original = _physical_map(candidate)
    normalized = deepcopy(actual); deltas = []
    for scope, rows in [('owner', [r for o in normalized['owners'] for r in o['records']]),
                        ('reciprocal', normalized['reciprocal_records'])]:
        for row in rows:
            key = ('physical_record', '', tuple(row['global_id']), row['role'])
            wanted = original.get(key)
            if wanted is not None and wanted['read_status'] == row['read_status'] == 'absent':
                if row['sysio_code'] != wanted['sysio_code']:
                    deltas.append(dict(scope=scope, global_id=row['global_id'], role=row['role'],
                        before=wanted['sysio_code'], after=row['sysio_code']))
                    row['sysio_code'] = wanted['sysio_code']
    if fingerprint(normalized) != fingerprint(candidate):
        raise ValueError('Complete persistent candidate/other observations differ')
    return deltas
