"""Conservative raw-reference three-way proposals; no native persistence executor.

Same-sized records merge only the original changed byte offsets. Resized
records require the exact actual after payload. Absent/existing transitions and
new reciprocal targets with no original capture are unsupported, never guessed.
Any conflict or unsupported record suppresses the whole finite candidate.
"""
from copy import deepcopy
import hashlib

from bd_module_persistent_references import validate, validate_receipt
from bd_persistent_references import decode


def _map(snapshot):
    rows = {}
    for owner in snapshot['owners']:
        for row in owner['records']:
            rows[('owner', owner['role'], tuple(owner['key']), row['role'])] = row
    for row in snapshot['reciprocal_records']:
        rows[('reciprocal', '', tuple(row['global_id']), row['role'])] = row
    return rows


def _raw_hash(row):
    return hashlib.sha256(bytes(row['allocated_bytes'])).hexdigest() if row and row['read_status'] == 'record' else None


def _payload(row):
    return {key: row[key] for key in ('read_status', 'length_profile', 'declared_size', 'record_class',
        'record_class_requested', 'fixed_size', 'blob_size', 'logical_size', 'allocated_size',
        'global_id', 'query_key', 'actual_file_key', 'bytes', 'allocated_bytes')}


def plan(receipt, current, *, token, component_oid, generation):
    return _plan(receipt, current, token=token, component_oid=component_oid, generation=generation, lifecycle=False)


def lifecycle_plan(receipt, current, *, token, component_oid, generation):
    """Finite lifecycle proposals after bounded leaf research, never dispatch.

    Exact actual CURRENT is mandatory for existence transitions. Duplicate
    owner/reciprocal observations coalesce to one physical record operation.
    This profile does not change the production preparation-only gate.
    """
    return _plan(receipt, current, token=token, component_oid=component_oid, generation=generation, lifecycle=True)


def _physical_map(snapshot):
    rows = {}
    for key, row in _map(snapshot).items():
        physical = ('physical_record', '', key[2], key[3])
        if physical in rows and rows[physical] != row:
            raise ValueError('Repeated physical reference observations differ')
        rows[physical] = row
    return rows


def _plan(receipt, current, *, token, component_oid, generation, lifecycle):
    receipt = validate_receipt(receipt, token=token, component_oid=component_oid, generation=generation, phase='attached')
    current = validate(current, component_oid=component_oid)
    required_targets = receipt['before'].get('requested_reciprocal_targets', [])
    if not all(target in current['reciprocal_targets'] for target in required_targets):
        raise ValueError('Current finite inverse omitted an original explicitly requested target')
    original_owners = [(row['role'], row['oid'], row['key']) for row in receipt['before']['owners']]
    if [(row['role'], row['oid'], row['key']) for row in current['owners']] != original_owners:
        raise ValueError('Current finite inverse replaced an original Module/source owner')
    mapper = _physical_map if lifecycle else _map
    before, after, now = mapper(receipt['before']), mapper(receipt['after']), mapper(current)
    proposals, conflicts, unsupported = [], [], []
    for key in sorted(set(before) | set(after)):
        left, right = before.get(key), after.get(key)
        if left == right:
            continue
        identity = dict(scope=key[0], owner_role=key[1], global_id=list(key[2]), role=key[3])
        if left is None or right is None:
            unsupported.append(dict(**identity, reason='missing_original_before_capture' if left is None else 'missing_actual_after_capture'))
            continue
        if left['read_status'] != 'record' or right['read_status'] != 'record':
            if lifecycle:
                present = now.get(key)
                if present == left:
                    # A known current original requires no write; not a success event.
                    continue
                if present != right:
                    conflicts.append(dict(**identity, reason='existence_transition_requires_exact_actual_after'))
                    continue
                if left['read_status'] == 'absent' and right['read_status'] == 'record':
                    operation = 'delete_record'
                elif left['read_status'] == 'record' and right['read_status'] == 'absent':
                    operation = 'create_original_record'
                else:
                    unsupported.append(dict(**identity, reason='absence_diagnostic_change_not_a_record_patch'))
                    continue
                proposals.append(dict(**identity, operation=operation, merge_mode='exact_existence_transition',
                    changed_byte_offsets=[], original_before_raw_sha256=_raw_hash(left),
                    actual_after_raw_sha256=_raw_hash(right), current_raw_sha256=_raw_hash(present),
                    candidate_raw_sha256=_raw_hash(left), current=deepcopy(present), candidate=deepcopy(left)))
                continue
            unsupported.append(dict(**identity, reason='absent_record_lifecycle_executor_unverified'))
            continue
        present = now.get(key)
        if present is None or present['read_status'] != 'record':
            conflicts.append(dict(**identity, reason='current_record_missing_or_absent'))
            continue
        original, actual, live = _payload(left), _payload(right), _payload(present)
        if original == actual:
            continue
        sizes = ('length_profile', 'declared_size', 'fixed_size', 'blob_size', 'logical_size', 'allocated_size')
        candidate = deepcopy(present); changed_offsets = []
        if any(original[name] != actual[name] for name in sizes):
            if live != actual:
                conflicts.append(dict(**identity, reason='resized_record_requires_exact_actual_after'))
                continue
            for name, value in original.items(): candidate[name] = deepcopy(value)
            mode = 'exact_resized_record'
        else:
            if any(live[name] != actual[name] for name in sizes):
                conflicts.append(dict(**identity, reason='current_record_extent_changed'))
                continue
            changed_offsets = [i for i, (old, new) in enumerate(zip(original['allocated_bytes'], actual['allocated_bytes'])) if old != new]
            overlaps = [i for i in changed_offsets if live['allocated_bytes'][i] != actual['allocated_bytes'][i]]
            if overlaps:
                conflicts.append(dict(**identity, reason='current_bytes_overlap_original_patch', byte_offsets=overlaps))
                continue
            raw = candidate['allocated_bytes']
            for i in changed_offsets: raw[i] = original['allocated_bytes'][i]
            candidate['bytes'] = raw[:candidate['logical_size']]
            mode = 'changed_byte_offsets_only'
        try:
            decode(candidate, list(key[2]))
        except ValueError as error:
            conflicts.append(dict(**identity, reason='merged_reference_payload_invalid', error=str(error)))
            continue
        proposal = dict(**identity, merge_mode=mode, changed_byte_offsets=changed_offsets,
            original_before_raw_sha256=_raw_hash(left), actual_after_raw_sha256=_raw_hash(right),
            current_raw_sha256=_raw_hash(present), candidate_raw_sha256=_raw_hash(candidate),
            candidate=candidate)
        if lifecycle: proposal.update(operation='write_original_or_merged_record', current=deepcopy(present))
        proposals.append(proposal)
    blocked = bool(conflicts or unsupported)
    result = dict(profile='finite_reference_lifecycle_inverse_plan_v1' if lifecycle else 'finite_reference_raw_inverse_plan_v1', native_token=token, component_oid=component_oid,
        generation=generation, status='conflict' if conflicts else 'unsupported' if unsupported else 'planned_only',
        patches=[] if blocked else proposals, conflicts=conflicts, unsupported=unsupported,
        candidate_suppressed=blocked, unrelated_current_records_preserved=True,
        native_calls=0, persistent_write_performed=False, epoch_binding_verified=False,
        full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False)
    if lifecycle:
        result.update(physical_records_coalesced=True, current_observation=deepcopy(current),
            automatic_retry=False, native_executor_implemented=False)
    return result
