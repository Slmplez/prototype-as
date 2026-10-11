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
        if type(image) is not dict or set(image) != set(FIELDS):
            invalid('Both loaded and database-record inbound reference sets required')
        for field in FIELDS:
            rows = image[field]
            if type(rows) is not list or len(rows) > 4096:
                invalid('Complete bounded inbound reference array required')
            for row in rows:
                if (type(row) is not list or len(row) != 2
                        or any(type(cell) is not str or not cell or len(cell) > 256 for cell in row)):
                    invalid('Exact OID/class pair required for each reference')
            if rows != sorted(rows) or len({row[0] for row in rows}) != len(rows):
                invalid('Reference sets must be sorted and unique by OID')
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
