"""Validate retained CTree control observations without transaction authority.

Native instance groups are object identity groups only. A transaction marker or
savepoint token does not prove rollback across an ASCET commit.
"""
from copy import deepcopy
import re


_IDENTITY_KEYS = {'class', 'ref'}
_CONTROL_FIELDS = {'ctInstance', 'ctIFIL', 'ctLockingIFIL', 'ctTransaction', 'ctSavePoint'}
_INTEGER_CLASSES = {'SmallInteger', 'Integer', 'LargeInteger', 'LargePositiveInteger', 'LargeNegativeInteger'}
_REF = re.compile(r'c[1-9][0-9]*\Z')
_INTEGER = re.compile(r'(?:0|-?[1-9][0-9]*)\Z')
_SUMMARY_KEYS = set(('profile component_oid generation interfaces leaves native_instance_groups '
                     'savepoint_tokens original_material_held captured_all_interfaces '
                     'reference_interface_included transaction_methods_called '
                     'native_transaction_semantics_verified full_commit_resource_closure '
                     'write_authorized inverse_authorized').split())


def _text(value):
    return isinstance(value, str) and bool(value)


def _identity(value, identities):
    if (not isinstance(value, dict) or set(value) != _IDENTITY_KEYS
            or not _text(value['class']) or not isinstance(value['ref'], str)
            or _REF.fullmatch(value['ref']) is None):
        raise ValueError('Exact CTree control identity required')
    previous = identities.setdefault(value['ref'], value['class'])
    if previous != value['class']:
        raise ValueError('CTree control identity has conflicting classes')


def _atom(value, allow_nil=False):
    if not isinstance(value, dict) or set(value) != {'class', 'atom'}:
        raise ValueError('Exact typed CTree control atom required')
    if allow_nil and value == {'class': 'UndefinedObject', 'atom': 'nil'}:
        return
    if (not isinstance(value['class'], str) or value['class'] not in _INTEGER_CLASSES
            or not isinstance(value['atom'], str) or _INTEGER.fullmatch(value['atom']) is None):
        raise ValueError('CTree control requires a typed integer atom')


def _binding(component_oid, generation):
    if not _text(component_oid) or type(generation) is not int or generation <= 0:
        raise ValueError('Exact CTree component and positive generation required')


def validate_image(image):
    """Return the complete leaf map; reject partial, aliased or ambiguous images."""
    if (not isinstance(image, dict) or set(image) != {
            'profile', 'component_oid', 'generation', 'interfaces', 'reference_interface', 'leaves'}
            or image['profile'] != 'native_ctree_control_image_v1'):
        raise ValueError('Complete fixed CTree control image required')
    _binding(image['component_oid'], image['generation'])
    interfaces, leaves = image['interfaces'], image['leaves']
    if not isinstance(interfaces, list) or not 1 <= len(interfaces) <= 64:
        raise ValueError('Complete ordered CTree interfaces required')
    if not isinstance(leaves, list) or not 1 <= len(leaves) <= 128:
        raise ValueError('Complete retained CTree leaves required')
    identities, mapped, collections = {}, {}, {}
    for member in interfaces:
        _identity(member, identities)
    _identity(image['reference_interface'], identities)
    for row in leaves:
        if not isinstance(row, dict) or set(row) != {'binding', 'field_names', 'fields'}:
            raise ValueError('Complete CTree control leaf required')
        _identity(row['binding'], identities)
        ref = row['binding']['ref']
        if ref in mapped:
            raise ValueError('Duplicate CTree control leaf identity')
        mapped[ref] = row
        names, fields = row['field_names'], row['fields']
        if (not isinstance(names, list) or not 1 <= len(names) <= 128
                or any(not _text(name) for name in names) or len(set(names)) != len(names)
                or not _CONTROL_FIELDS <= set(names)):
            raise ValueError('Complete unique ordered CTree direct schema required')
        if not isinstance(fields, dict) or set(fields) != _CONTROL_FIELDS | {'registerName'}:
            raise ValueError('Fixed CTree control fields required')
        for field in ('ctInstance', 'ctIFIL', 'ctLockingIFIL'):
            _identity(fields[field], identities)
        _atom(fields['ctTransaction'], allow_nil=True)
        savepoints = fields['ctSavePoint']
        if (not isinstance(savepoints, dict) or set(savepoints) != {'class', 'ref', 'values'}
                or savepoints['class'] != 'OrderedCollection'
                or not isinstance(savepoints['values'], list) or len(savepoints['values']) > 128):
            raise ValueError('Complete ordered CTree savepoints required')
        _identity({key: savepoints[key] for key in ('class', 'ref')}, identities)
        for token in savepoints['values']:
            _atom(token)
        previous = collections.setdefault(savepoints['ref'], savepoints['values'])
        if previous != savepoints['values']:
            raise ValueError('Shared CTree savepoint identity has conflicting contents')
        if not _text(fields['registerName']):
            raise ValueError('Exact CTree register name required')
    if list(mapped) != sorted(mapped):
        raise ValueError('CTree control leaves must be sorted by identity')
    for member in interfaces + [image['reference_interface']]:
        if member['ref'] not in mapped or mapped[member['ref']]['binding'] != member:
            raise ValueError('CTree registry member lacks its complete retained leaf')
    return mapped


def validate_summary(value, component_oid, generation, checked=False):
    """Validate a compact claim, without inferring native transaction semantics."""
    _binding(component_oid, generation)
    if type(checked) is not bool:
        raise ValueError('Explicit checked CTree summary mode required')
    keys = _SUMMARY_KEYS | ({'actual_change_count'} if checked else set())
    if (not isinstance(value, dict) or set(value) != keys
            or value['profile'] != 'native_ctree_control_summary_v1'
            or value['component_oid'] != component_oid or value['generation'] != generation
            or type(value['generation']) is not int):
        raise ValueError('Exact bound CTree control summary required')
    for field, maximum in [('interfaces', 64), ('leaves', 128), ('native_instance_groups', 128)]:
        if type(value[field]) is not int or not 1 <= value[field] <= maximum:
            raise ValueError('Complete CTree control census required')
    if (value['native_instance_groups'] > value['leaves']
            or type(value['savepoint_tokens']) is not int
            or not 0 <= value['savepoint_tokens'] <= 128 * value['leaves']):
        raise ValueError('CTree control census is inconsistent')
    for field in ('original_material_held', 'captured_all_interfaces', 'reference_interface_included'):
        if value[field] is not True:
            raise ValueError('Complete original CTree control coverage required')
    if type(value['transaction_methods_called']) is not int or value['transaction_methods_called'] != 0:
        raise ValueError('CTree observation cannot invoke transaction methods')
    for field in ('native_transaction_semantics_verified', 'full_commit_resource_closure',
                  'write_authorized', 'inverse_authorized'):
        if value[field] is not False:
            raise ValueError('CTree observation cannot grant transaction, closure or write authority')
    if checked and (type(value['actual_change_count']) is not int or not 0 <= value['actual_change_count'] <= 4096):
        raise ValueError('Complete bounded CTree actual change count required')
    return value


def validate_summary_image(summary, image):
    """Independently match a compact census to its complete retained image."""
    mapped = validate_image(image)
    validate_summary(summary, image['component_oid'], image['generation'],
                     checked=isinstance(summary, dict) and 'actual_change_count' in summary)
    expected = {
        'interfaces': len(image['interfaces']),
        'leaves': len(mapped),
        'native_instance_groups': len({row['fields']['ctInstance']['ref'] for row in mapped.values()}),
        # Count each leaf's observed sequence, even when the native collection is shared.
        'savepoint_tokens': sum(len(row['fields']['ctSavePoint']['values']) for row in mapped.values()),
    }
    if any(summary[field] != count for field, count in expected.items()):
        raise ValueError('CTree compact census differs from its complete image')
    return summary


def delta(before, after, category):
    """Return ordered actual observations; missing originals are not deletions."""
    if category not in ('since_preparation', 'query_read_effect'):
        raise ValueError('Fixed CTree delta category required')
    old, new = validate_image(before), validate_image(after)
    if (before['component_oid'], before['generation']) != (after['component_oid'], after['generation']):
        raise ValueError('CTree control observation was rebound')
    if not set(old) <= set(new):
        raise ValueError('Retained CTree leaf omitted from current image; not deletion proof')
    changes = []

    def add(locus, field, left, right):
        if left != right:
            changes.append(dict(category=category, locus=locus, field=field,
                                before=deepcopy(left), after=deepcopy(right)))

    for field in ('interfaces', 'reference_interface'):
        add('ctree_control_registry', field, before[field], after[field])
    for ref in sorted(set(old) | set(new)):
        left, right = old.get(ref), new.get(ref)
        locus = 'ctree_control/' + ref
        if left is None or right is None:
            add(locus, '$observed_leaf', left, right)
        elif left['binding'] != right['binding'] or left['field_names'] != right['field_names']:
            add(locus, '$identity_schema', left, right)
        else:
            for field in sorted(left['fields']):
                add(locus, field, left['fields'][field], right['fields'][field])
    return changes
