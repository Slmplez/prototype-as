"""Validate full native graphical images and compact actual-effect receipts."""
import re

from bd_edit_journal import fingerprint


def validate_current(current):
    if (not isinstance(current, dict) or current.get('profile') != 'native_graphical_current_v1'
            or current.get('complete') is not True or not isinstance(current.get('objects'), list)
            or not 1 <= len(current['objects']) <= 100000):
        raise ValueError('Complete bounded native CURRENT required')
    bindings = {}
    for row in current['objects']:
        if (not isinstance(row, dict) or set(row) != {'ref', 'class', 'kind', 'value'}
                or not isinstance(row['ref'], str) or not re.fullmatch(r'v[1-9][0-9]*', row['ref'])
                or row['ref'] in bindings or not isinstance(row['class'], str)
                or row['kind'] not in ('value', 'fields', 'collection', 'boundary')):
            raise ValueError('Invalid native CURRENT object descriptor')
        bindings[row['ref']] = row
    for row in bindings.values():
        _refs(row['value'], bindings)
    return bindings


def _refs(value, bindings):
    if isinstance(value, list):
        for item in value:
            _refs(item, bindings)
    elif isinstance(value, dict):
        if 'ref' in value and (value['ref'] not in bindings
                              or value.get('class') != bindings[value['ref']]['class']):
            raise ValueError('Actual native reference is unbound or changed class')
        for item in value.values():
            _refs(item, bindings)


def _same_image(row, left, right):
    if row['kind'] == 'collection' and row['class'] in ('Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet'):
        return (isinstance(left, list) and isinstance(right, list)
                and sorted(map(fingerprint, left)) == sorted(map(fingerprint, right)))
    return fingerprint(left) == fingerprint(right)


def same_current(left, right):
    """Compare complete identity images independent of dictionary enumeration.

    Field slots and ordered collections stay ordered; only the exported object
    table and native dictionary/set members have no meaningful order.
    """
    a, b = validate_current(left), validate_current(right)
    return a.keys() == b.keys() and all(
        a[key]['class'] == b[key]['class'] and a[key]['kind'] == b[key]['kind']
        and _same_image(a[key], a[key]['value'], b[key]['value']) for key in a)


def validate_actual_diff(current, actual):
    before = validate_current(current)
    if (not isinstance(actual, dict) or actual.get('profile') != 'native_graphical_diff_v1'
            or actual.get('complete') is not True or not isinstance(actual.get('new_objects'), list)
            or not isinstance(actual.get('changes'), list)):
        raise ValueError('Complete native CURRENT and actual diff required')
    added = {row['ref']: row for row in actual['new_objects']}
    if (len(added) != len(actual['new_objects']) or before.keys() & added.keys()
            or type(actual.get('after_object_count')) is not int
            or actual['after_object_count'] != len(before) + len(added)):
        raise ValueError('Actual native object roster differs')
    after = {**before, **added}
    if len(after) > 100000:
        raise ValueError('Actual native object bound exceeded')
    touched = set()
    for change in actual['changes']:
        row = before.get(change['object'])
        if row is None or change['kind'] != row['kind'] or row['kind'] == 'boundary':
            raise ValueError('Actual change is outside captured CURRENT')
        index = change.get('index')
        if row['kind'] == 'fields':
            if type(index) is not int or not 1 <= index <= len(row['value']):
                raise ValueError('Actual field index is outside captured CURRENT')
            original = row['value'][index - 1]
        else:
            if index is not None:
                raise ValueError('Unexpected actual collection/value field index')
            original = row['value']
        key = (change['object'], index)
        if (key in touched or not _same_image(row, change['before'], original)
                or _same_image(row, change['before'], change['after'])):
            raise ValueError('Actual change repeats or differs from captured CURRENT')
        touched.add(key)
        _refs(change['before'], before)
        _refs(change['after'], after)
    for row in added.values():
        if (set(row) != {'ref', 'class', 'kind', 'value'} or not isinstance(row['ref'], str)
                or not re.fullmatch(r'v[1-9][0-9]*', row['ref']) or not isinstance(row['class'], str)
                or row['kind'] not in ('value', 'fields', 'collection', 'boundary')):
            raise ValueError('Incomplete new native object descriptor')
        _refs(row['value'], after)
    return {'passed': True, 'changed_entries': len(touched), 'new_objects': len(added),
            'current_objects': len(before), 'after_objects': len(after)}


def summary(current, actual):
    result = validate_actual_diff(current, actual)
    result.pop('passed')
    result.update(profile='native_graphical_diff_v1', current_sha256=fingerprint(current),
                  actual_sha256=fingerprint(actual))
    return result
