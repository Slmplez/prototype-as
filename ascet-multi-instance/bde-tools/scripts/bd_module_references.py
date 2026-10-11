"""Frozen Module inbound references, separate from declaration-body evidence.

These receipts record what was read. They cannot authorize a persistent
reference inverse or claim closure over all resources touched by a commit.
"""
import re

from bd_edit_journal import JournalError, clone, fingerprint

PROFILE = 'native_module_inbound_references_v1'
FIELDS = ('owner_references', 'owner_database_record_references')
KEYS = frozenset(('profile', 'native_token', 'component_oid', 'generation', 'before', 'after',
    'complete', 'model_setters_called', 'store_called', 'inverse_authorized', 'full_commit_resource_closure'))
SNAPSHOT_PROFILE = 'native_module_inbound_snapshot_v1'
SNAPSHOT_KEYS = frozenset(('profile', 'component_oid', 'image', 'complete',
    'model_setters_called', 'store_called', 'inverse_authorized', 'full_commit_resource_closure'))


def validate_image(image):
    if type(image) is not dict or set(image) != set(FIELDS):
        raise JournalError('MODULE_REFERENCES_INVALID', 'Both loaded and database-record inbound reference sets required')
    for field in FIELDS:
        rows = image[field]
        if type(rows) is not list or len(rows) > 4096:
            raise JournalError('MODULE_REFERENCES_INVALID', 'Complete bounded inbound reference array required')
        for row in rows:
            if (type(row) is not list or len(row) != 2
                    or any(type(cell) is not str or not cell or len(cell) > 256 for cell in row)):
                raise JournalError('MODULE_REFERENCES_INVALID', 'Exact OID/class pair required for each reference')
        if rows != sorted(rows) or len({row[0] for row in rows}) != len(rows):
            raise JournalError('MODULE_REFERENCES_INVALID', 'Reference sets must be sorted and unique by OID')
    return clone(image)


def validate_snapshot(value, *, component_oid):
    if (type(value) is not dict or set(value) != SNAPSHOT_KEYS
            or value['profile'] != SNAPSHOT_PROFILE or type(component_oid) is not str or not component_oid
            or value['component_oid'] != component_oid or value['complete'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[key] is not False for key in ('store_called', 'inverse_authorized', 'full_commit_resource_closure'))):
        raise JournalError('MODULE_REFERENCES_INVALID', 'Exact same-owner observation-only Module snapshot required')
    validate_image(value['image'])
    return clone(value)


def validate(value, *, token, component_oid, phase):
    def invalid(message):
        raise JournalError('MODULE_REFERENCES_INVALID', message)
    if type(value) is not dict or set(value) != KEYS:
        invalid('Exact frozen Module reference receipt required')
    if (phase not in ('prepared', 'attached') or not isinstance(token, str)
            or not re.fullmatch(r'edit_[0-9a-f]{64}', token) or not isinstance(component_oid, str)
            or not component_oid or value['profile'] != PROFILE or value['native_token'] != token
            or value['component_oid'] != component_oid or type(value['generation']) is not int
            or value['generation'] < 1 or value['complete'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[k] is not False for k in ('store_called', 'inverse_authorized', 'full_commit_resource_closure'))):
        invalid('Original Module reference identity or observation-only authority differs')
    for when in ('before', 'after'):
        image = value[when]
        if when == 'after' and phase == 'prepared':
            if image is not None:
                invalid('Preparation cannot invent an actual reference head')
            continue
        validate_image(image)
    return clone(value)


def differences(value):
    """Recompute actual deltas; never trust a native supplied delta summary."""
    value = validate(value, token=value['native_token'], component_oid=value['component_oid'], phase='attached')
    result = []
    for field in FIELDS:
        before = {tuple(row) for row in value['before'][field]}
        after = {tuple(row) for row in value['after'][field]}
        result.append(dict(kind='module_inbound_references', field=field,
            component_oid=value['component_oid'], added=[list(row) for row in sorted(after - before)],
            removed=[list(row) for row in sorted(before - after)]))
    return result


def summary(value):
    delta = differences(value)
    return dict(profile=PROFILE, sha256=fingerprint(value), generation=value['generation'],
        changed=any(row['added'] or row['removed'] for row in delta),
        added_count=sum(len(row['added']) for row in delta), removed_count=sum(len(row['removed']) for row in delta),
        full_commit_resource_closure=False, inverse_authorized=False)


def plan_inverse(value, current, *, token, component_oid):
    """Compute an OID/class three-way candidate, never a persistent inverse.

    Only memberships changed by this edit are eligible. Every touched OID
    must still match its frozen after class (or absence); an unrelated current
    membership or removal survives. A conflict in either set suppresses the
    complete candidate. This has no epoch, raw-record, reciprocal or serializer
    closure proof and cannot authorize a writer or make history ready.
    """
    original = validate(value, token=token, component_oid=component_oid, phase='attached')
    now = validate_snapshot(current, component_oid=component_oid)
    candidate = clone(now['image']); patches, conflicts = [], []
    for field in FIELDS:
        before = dict(original['before'][field]); after = dict(original['after'][field])
        actual = dict(now['image'][field]); merged = actual.copy()
        for oid in sorted(before.keys() | after.keys()):
            old_class, new_class = before.get(oid), after.get(oid)
            if old_class == new_class:
                continue
            row = dict(field=field, oid=oid, before_class=old_class,
                after_class=new_class, current_class=actual.get(oid), reverted_class=old_class)
            if actual.get(oid) != new_class:
                conflicts.append(row)
                continue
            patches.append(row)
            if old_class is None:
                merged.pop(oid)
            else:
                merged[oid] = old_class
        if len(merged) > 4096:
            conflicts.append(dict(field=field, reason='candidate_reference_bound_exceeded', count=len(merged)))
        candidate[field] = [list(pair) for pair in sorted(merged.items())]
    if not conflicts:
        validate_image(candidate)
    return dict(profile='module_inbound_semantic_inverse_plan_v1',
        status='conflict' if conflicts else 'planned_only', native_token=token, component_oid=component_oid,
        original_generation=original['generation'], original_receipt_sha256=fingerprint(original),
        current_snapshot_sha256=fingerprint(now), patches=patches, conflicts=conflicts,
        candidate=None if conflicts else candidate, unrelated_memberships_preserved=True,
        epoch_binding_verified=False, raw_record_closure_verified=False,
        reciprocal_closure_verified=False, full_commit_resource_closure=False,
        native_calls=0, write_authorized=False, inverse_authorized=False)
