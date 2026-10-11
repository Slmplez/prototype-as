"""Pure finite reference-membership plans from explicitly supplied before rows.

No database reads, persistence calls or capture-time inference occur here. The
caller must bind the supplied original rows to its retained edit/session before
using this plan. A current read cannot establish a missing original before image.

Outgoing order and duplicates are exact. Reciprocal membership is an OID set:
adding a target appends the owner once to that target's inbound list; removing a
target removes every occurrence of the owner; unchanged targets preserve every
entry. Self-reference requires the owner's separate DBReferencedByList row.
Absent records have no audited meaning here and are explicitly refused.
"""
from copy import deepcopy

from bd_persistent_references import decode


_PLAN_PROFILE = 'finite_reference_membership_plan_v1'
_PATCH_PROFILE = 'finite_reference_inbound_patch_plan_v1'


class ReferencePatchConflict(ValueError):
    """Current owner membership or restoration position overlaps this patch."""


def _key(value, *, owner=False):
    if owner and isinstance(value, (bytes, bytearray)):
        value = list(value)
    if (not isinstance(value, list) or len(value) != 20
            or any(type(part) is not int or not 0 <= part <= 255 for part in value)):
        raise ValueError('Exact 20-byte reference global ID required')
    return tuple(value)


def _entries(value):
    if not isinstance(value, list) or len(value) > 4096:
        raise ValueError('Complete bounded ordered reference entries required')
    result = []
    for entry in value:
        if (not isinstance(entry, dict) or set(entry) != {'tag', 'global_id'}
                or type(entry['tag']) is not int or entry['tag'] != 1):
            raise ValueError('Only audited tag-1 reference entries are supported')
        result.append({'tag': 1, 'global_id': list(_key(entry['global_id']))})
    return result


def _duplicates(entries):
    occurrences = {}
    for index, entry in enumerate(entries):
        occurrences.setdefault(tuple(entry['global_id']), []).append(index)
    return [{'global_id': list(key), 'entry_indexes': indexes}
            for key, indexes in occurrences.items() if len(indexes) > 1]


def plan(owner_key, old_outgoing_row, new_entries):
    """Plan all old/new reciprocal targets without replacing missing before data.

    ``new_entries`` is the complete proposed ordered tag-1 list, not a partial
    update. Reciprocal targets include unchanged members, so their original
    consistency is checked as well. Returned rows and byte arrays are copies.
    """
    owner = _key(owner_key, owner=True)
    if (not isinstance(old_outgoing_row, dict)
            or old_outgoing_row.get('role') != 'owner_references'
            or old_outgoing_row.get('read_status') != 'record'):
        raise ValueError('Original existing owner outgoing record required; absence cannot be inferred')
    original = decode(old_outgoing_row, list(owner))
    before = original['entries']
    after = _entries(new_entries)
    old_keys = {tuple(entry['global_id']) for entry in before}
    new_keys = {tuple(entry['global_id']) for entry in after}
    targets = old_keys | new_keys
    return {
        'profile': _PLAN_PROFILE, 'owner_key': list(owner),
        'old_outgoing_record': deepcopy(old_outgoing_row),
        'outgoing_before_entries': deepcopy(before), 'outgoing_after_entries': after,
        'outgoing_changed': before != after,
        'added_targets': [list(key) for key in sorted(new_keys - old_keys)],
        'removed_targets': [list(key) for key in sorted(old_keys - new_keys)],
        'unchanged_targets': [list(key) for key in sorted(old_keys & new_keys)],
        'reciprocal_targets': [list(key) for key in sorted(targets)],
        'before_duplicates': deepcopy(original['duplicates']), 'after_duplicates': _duplicates(after),
        'self_reference_before': owner in old_keys, 'self_reference_after': owner in new_keys,
        'outgoing_duplicates_preserved': True, 'reciprocal_membership_uses_oid_sets': True,
        'original_capture_provenance_verified': False,
        'persistent_write_performed': False, 'write_authorized': False, 'inverse_authorized': False,
    }


def _validate_plan(value):
    if not isinstance(value, dict):
        raise ValueError('Original finite reference plan required')
    try:
        expected = plan(value['owner_key'], value['old_outgoing_record'], value['outgoing_after_entries'])
    except KeyError as exc:
        raise ValueError('Complete original finite reference plan required') from exc
    if value != expected or set(value) != set(expected):
        raise ValueError('Finite reference plan was changed or granted unverified authority')
    # Equality alone accepts 0/1 in place of booleans; keep the plan contract exact.
    for name, item in expected.items():
        if type(item) is bool and value[name] is not item:
            raise ValueError('Exact finite reference plan boolean required')
    return expected


def check_inbound(write_set, captured_rows):
    """Validate every required original inbound row, then plan owner-only patches.

    ``captured_rows`` is a list of the original existing DBReferencedByList rows,
    one per exact target OID. Missing, extra, duplicate or inconsistent rows fail
    closed. Only owner entries can change. Unrelated entries and their order are
    preserved. Duplicate owner occurrences are preserved for unchanged targets
    and all removed when that reciprocal membership is removed.
    """
    expected = _validate_plan(write_set)
    owner = tuple(expected['owner_key'])
    targets = {tuple(key) for key in expected['reciprocal_targets']}
    old_keys = {tuple(entry['global_id']) for entry in expected['outgoing_before_entries']}
    new_keys = {tuple(entry['global_id']) for entry in expected['outgoing_after_entries']}
    if not isinstance(captured_rows, list) or len(captured_rows) != len(targets):
        raise ValueError('Complete original reciprocal inbound capture census required')
    mapped = {}
    for row in captured_rows:
        if (not isinstance(row, dict) or row.get('role') != 'owner_referenced_by'
                or row.get('read_status') != 'record'):
            raise ValueError('Original existing inbound record required; absent records are unsupported')
        target = _key(row.get('global_id'))
        if target not in targets:
            raise ValueError('Inbound capture belongs to an unplanned target')
        if target in mapped:
            raise ValueError('Duplicate original reciprocal inbound capture')
        decoded = decode(row, list(target))
        mapped[target] = (row, decoded['entries'])
    if set(mapped) != targets:
        raise ValueError('A required original reciprocal inbound record is missing')
    patches, checks = [], []
    for target in sorted(targets):
        row, before = mapped[target]
        count_before = sum(tuple(entry['global_id']) == owner for entry in before)
        old_member, new_member = target in old_keys, target in new_keys
        if (count_before > 0) != old_member:
            raise ValueError('Original reciprocal owner membership is inconsistent; no repair is authorized')
        after = deepcopy(before)
        operation = 'unchanged'
        if old_member and not new_member:
            after = [entry for entry in after if tuple(entry['global_id']) != owner]
            operation = 'remove_owner'
        elif not old_member and new_member:
            if len(after) >= 4096:
                raise ValueError('Adding the owner would exceed the audited inbound reference bound')
            after.append({'tag': 1, 'global_id': list(owner)})
            operation = 'append_owner'
        count_after = sum(tuple(entry['global_id']) == owner for entry in after)
        checks.append(dict(target_key=list(target), old_owner_expected=old_member,
                           new_owner_expected=new_member, owner_count_before=count_before,
                           owner_count_after=count_after, operation=operation))
        if before != after:
            patches.append(dict(target_key=list(target), operation=operation,
                                original_inbound_record=deepcopy(row), before_entries=deepcopy(before),
                                after_entries=after, owner_count_before=count_before,
                                owner_count_after=count_after))
    return {'profile': _PATCH_PROFILE, 'owner_key': list(owner),
            'checked_targets': checks, 'patches': patches,
            'self_reference_included': owner in targets,
            'unrelated_entries_preserved': True, 'original_capture_provenance_verified': False,
            'persistent_write_performed': False, 'write_authorized': False, 'inverse_authorized': False}


def _validate_patches(value):
    keys = {'profile', 'owner_key', 'checked_targets', 'patches', 'self_reference_included',
            'unrelated_entries_preserved', 'original_capture_provenance_verified',
            'persistent_write_performed', 'write_authorized', 'inverse_authorized'}
    if not isinstance(value, dict) or set(value) != keys or value['profile'] != _PATCH_PROFILE:
        raise ValueError('Complete original finite inbound patch plan required')
    owner = _key(value['owner_key'])
    if value['unrelated_entries_preserved'] is not True:
        raise ValueError('Original inbound plan must preserve unrelated entries')
    for name in ('original_capture_provenance_verified', 'persistent_write_performed',
                 'write_authorized', 'inverse_authorized'):
        if value[name] is not False:
            raise ValueError('Pure inbound patch plan cannot grant persistence or provenance authority')
    rows, patches = value['checked_targets'], value['patches']
    if (not isinstance(rows, list) or len(rows) > 8192
            or not isinstance(patches, list) or len(patches) > len(rows)):
        raise ValueError('Complete finite inbound patch census required')
    checks, mapped = {}, {}
    check_keys = {'target_key', 'old_owner_expected', 'new_owner_expected',
                  'owner_count_before', 'owner_count_after', 'operation'}
    for check in rows:
        if not isinstance(check, dict) or set(check) != check_keys:
            raise ValueError('Complete original inbound membership check required')
        target = _key(check['target_key'])
        if target in checks:
            raise ValueError('Duplicate checked inbound target')
        for name in ('owner_count_before', 'owner_count_after'):
            if type(check[name]) is not int or not 0 <= check[name] <= 4096:
                raise ValueError('Exact bounded owner membership count required')
        for name in ('old_owner_expected', 'new_owner_expected'):
            if type(check[name]) is not bool:
                raise ValueError('Exact owner membership boolean required')
        old_count, new_count = check['owner_count_before'], check['owner_count_after']
        if (check['old_owner_expected'] != (old_count > 0)
                or check['new_owner_expected'] != (new_count > 0)):
            raise ValueError('Inbound membership and owner count disagree')
        operation = check['operation']
        if ((operation == 'append_owner' and (old_count != 0 or new_count != 1))
                or (operation == 'remove_owner' and (old_count < 1 or new_count != 0))
                or (operation == 'unchanged' and (old_count < 1 or old_count != new_count))
                or operation not in ('append_owner', 'remove_owner', 'unchanged')):
            raise ValueError('Inbound owner operation and counts disagree')
        checks[target] = check
    if list(checks) != sorted(checks) or value['self_reference_included'] is not (owner in checks):
        raise ValueError('Exact sorted inbound target census and self-reference flag required')
    patch_keys = {'target_key', 'operation', 'original_inbound_record', 'before_entries',
                  'after_entries', 'owner_count_before', 'owner_count_after'}
    for patch in patches:
        if not isinstance(patch, dict) or set(patch) != patch_keys:
            raise ValueError('Complete original before/after inbound patch required')
        target = _key(patch['target_key'])
        if target in mapped or target not in checks or checks[target]['operation'] == 'unchanged':
            raise ValueError('Inbound patch target is duplicate, unplanned or unchanged')
        original = patch['original_inbound_record']
        if not isinstance(original, dict) or original.get('role') != 'owner_referenced_by':
            raise ValueError('Original inbound record required; no current-row substitution')
        before = decode(original, list(target))['entries']
        if _entries(patch['before_entries']) != before:
            raise ValueError('Inbound patch before differs from the retained original record')
        after = _entries(patch['after_entries'])
        count_before = sum(tuple(entry['global_id']) == owner for entry in before)
        operation = patch['operation']
        if operation == 'append_owner' and count_before == 0:
            expected_after = before + [{'tag': 1, 'global_id': list(owner)}]
        elif operation == 'remove_owner' and count_before > 0:
            expected_after = [entry for entry in before if tuple(entry['global_id']) != owner]
        else:
            raise ValueError('Inbound patch operation contradicts the original owner membership')
        if after != expected_after:
            raise ValueError('Inbound patch changed more than its original owner membership')
        count_after = sum(tuple(entry['global_id']) == owner for entry in after)
        for name, count in (('owner_count_before', count_before), ('owner_count_after', count_after)):
            if type(patch[name]) is not int or patch[name] != count or checks[target][name] != count:
                raise ValueError('Inbound patch owner count differs from original before/after entries')
        if checks[target]['operation'] != operation:
            raise ValueError('Inbound patch operation differs from its original membership check')
        mapped[target] = patch
    required = {target for target, check in checks.items() if check['operation'] != 'unchanged'}
    if set(mapped) != required or list(mapped) != sorted(mapped):
        raise ValueError('Complete sorted changed inbound patch census required')
    return owner, mapped


def _restore_single_owner_index(before, current, owner):
    positions = [index for index, entry in enumerate(before) if tuple(entry['global_id']) == owner]
    if len(positions) != 1:
        raise ReferencePatchConflict('Repeated removed owner positions have no unique local restoration policy')
    index = positions[0]
    old_other = [tuple(entry['global_id']) for entry in before if tuple(entry['global_id']) != owner]
    current_keys = [tuple(entry['global_id']) for entry in current]
    left = tuple(before[index - 1]['global_id']) if index > 0 else None
    right = tuple(before[index + 1]['global_id']) if index + 1 < len(before) else None
    if left is None and right is None:
        if current_keys:
            raise ReferencePatchConflict('New unrelated entries make the original owner-only position ambiguous')
        return 0
    for anchor in (left, right):
        if anchor is not None and (old_other.count(anchor) != 1 or current_keys.count(anchor) != 1):
            raise ReferencePatchConflict('Original owner position anchor is missing or duplicated')
    if left is None:
        if current_keys[0] != right:
            raise ReferencePatchConflict('Original first-position owner anchor is no longer at the boundary')
        return 0
    if right is None:
        if current_keys[-1] != left:
            raise ReferencePatchConflict('Original last-position owner anchor is no longer at the boundary')
        return len(current_keys)
    left_index = current_keys.index(left)
    if left_index + 1 >= len(current_keys) or current_keys[left_index + 1] != right:
        raise ReferencePatchConflict('Original owner position anchors are no longer adjacent and ordered')
    return left_index + 1


def check_revert_inbound(patch_plan, current_rows):
    """Plan a conservative owner-only inverse while preserving current unrelated OIDs.

    This compares retained original before, forward after, and explicit current
    rows. It never replaces the original before with current state. A forward
    append can be undone only when exactly one owner entry remains. A forward
    removal can restore only one original owner, using unique adjacent original
    neighbor anchors that remain adjacent (or at the original list boundary).
    Duplicate owner restoration and ambiguous anchors are conflicts, not guesses.

    Only changed patch targets are supplied in ``current_rows``. Returned
    ``reverted_entries`` are semantic proposals, not whole-record writes.
    """
    owner, patches = _validate_patches(patch_plan)
    if not isinstance(current_rows, list) or len(current_rows) != len(patches):
        raise ValueError('Complete current capture for changed inbound patch targets required')
    current = {}
    for row in current_rows:
        if (not isinstance(row, dict) or row.get('role') != 'owner_referenced_by'
                or row.get('read_status') != 'record'):
            raise ValueError('Existing current inbound record required; absence is not a membership proof')
        target = _key(row.get('global_id'))
        if target not in patches or target in current:
            raise ValueError('Current inbound target is unexpected or duplicated')
        current[target] = (row, decode(row, list(target))['entries'])
    if set(current) != set(patches):
        raise ValueError('A changed inbound target lacks its current capture')
    result = []
    for target in sorted(patches):
        patch = patches[target]
        row, entries = current[target]
        count = sum(tuple(entry['global_id']) == owner for entry in entries)
        if count != patch['owner_count_after']:
            raise ReferencePatchConflict('Current owner membership overlaps the patch after state')
        restore_index = None
        if patch['operation'] == 'append_owner':
            reverted = [deepcopy(entry) for entry in entries if tuple(entry['global_id']) != owner]
            operation = 'remove_added_owner'
        else:
            if len(entries) >= 4096:
                raise ReferencePatchConflict('Restoring the owner would exceed the audited inbound bound')
            restore_index = _restore_single_owner_index(patch['before_entries'], entries, owner)
            reverted = deepcopy(entries)
            reverted.insert(restore_index, {'tag': 1, 'global_id': list(owner)})
            operation = 'restore_removed_owner'
        result.append(dict(target_key=list(target), operation=operation,
                           original_inbound_record=deepcopy(patch['original_inbound_record']),
                           forward_before_entries=deepcopy(patch['before_entries']),
                           forward_after_entries=deepcopy(patch['after_entries']),
                           current_inbound_record=deepcopy(row), current_entries=deepcopy(entries),
                           reverted_entries=reverted, restore_index=restore_index))
    return {'profile': 'finite_reference_inbound_revert_plan_v1', 'owner_key': list(owner),
            'patches': result, 'unrelated_entries_preserved': True,
            'original_capture_provenance_verified': False, 'persistent_write_performed': False,
            'write_authorized': False, 'inverse_authorized': False}
