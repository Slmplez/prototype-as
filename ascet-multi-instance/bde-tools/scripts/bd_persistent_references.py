"""Decode the audited tag-1 persistent reference-list record format.

The legacy record length is fixed_size + blob_size. Reference lists additionally
store a four-byte count before their entries, so their semantic extent includes
four bytes omitted by that legacy length. The v2 profile includes this count.
CTree vRecordLength is the complete original record-read length; bytes beyond
the parsed semantic extent are unparsed record tail, not proven nonpersistent
allocation slack. This decoder retains that tail separately and does not infer
other proxy formats or grant write/inverse authority.
"""
from copy import deepcopy


_ATTRIBUTES = {'owner_references': 'DBReferenceList', 'owner_referenced_by': 'DBReferencedByList'}
_REQUIRED = {'role', 'attribute', 'record_attribute', 'record_class', 'read_status',
             'fixed_size', 'blob_size', 'logical_size', 'allocated_size', 'global_id',
             'query_key', 'actual_file_key', 'bytes', 'allocated_bytes'}


def _bytes(value, label, *, owner=False):
    if owner and isinstance(value, (bytes, bytearray)):
        value = list(value)
    if (not isinstance(value, list)
            or any(type(item) is not int or not 0 <= item <= 255 for item in value)):
        raise ValueError('Complete byte sequence required: ' + label)
    if owner and len(value) != 20:
        raise ValueError('Exact 20-byte owner global ID required')
    return value


def decode(row, owner_key):
    """Return complete tag-1 entries and byte extents; never deduplicate entries.

``owner_key`` accepts a 20-byte list, bytes or bytearray. Input row byte fields
must be complete JSON byte arrays. Duplicate entry indexes are zero-based and
reported in first-occurrence order. Unsupported tags fail closed. Rows without
``length_profile`` use the legacy truncated prefix; ``reference_payload_v2``
requires the complete semantic prefix and an explicit legacy declared size.
"""
    owner = _bytes(owner_key, 'owner_key', owner=True)
    if not isinstance(row, dict) or not _REQUIRED <= set(row):
        raise ValueError('Complete retained persistent reference record required')
    role = row['role']
    if not isinstance(role, str) or role not in _ATTRIBUTES:
        raise ValueError('Only audited owner reference-list roles are supported')
    attribute = _ATTRIBUTES[role]
    if row['attribute'] != attribute or row['record_attribute'] != attribute:
        raise ValueError('Reference role and stored attribute differ')
    if (row['record_class'] != 'CTreeVariableAttributeRecord'
            or row.get('record_class_requested', 'CTreeVariableAttributeRecord') != 'CTreeVariableAttributeRecord'
            or row['read_status'] != 'record'):
        raise ValueError('A successfully read audited reference record is required')
    global_id = _bytes(row['global_id'], 'global_id', owner=True)
    if global_id != owner:
        raise ValueError('Persistent reference owner differs from the retained owner')
    expected_key = owner + list(attribute.encode('ascii'))
    for field in ('query_key', 'actual_file_key'):
        if _bytes(row[field], field) != expected_key:
            raise ValueError('Exact owner-plus-attribute reference key required: ' + field)
    for field in ('fixed_size', 'blob_size', 'logical_size', 'allocated_size'):
        if type(row[field]) is not int or row[field] < 0:
            raise ValueError('Exact nonnegative reference record length required: ' + field)
    if row['fixed_size'] != 60:
        raise ValueError('Audited fixed-60 reference record required')
    declared_size = row['fixed_size'] + row['blob_size']
    payload_v2 = 'length_profile' in row
    if payload_v2:
        if row['length_profile'] != 'reference_payload_v2':
            raise ValueError('Unknown persistent reference length profile')
        if type(row.get('declared_size')) is not int or row['declared_size'] != declared_size:
            raise ValueError('Exact v2 legacy declared size required')
    elif row['logical_size'] != declared_size:
        raise ValueError('Exact legacy fixed-plus-blob declared length required')
    logical = _bytes(row['bytes'], 'bytes')
    allocated = _bytes(row['allocated_bytes'], 'allocated_bytes')
    if (len(logical) != row['logical_size'] or len(allocated) != row['allocated_size']
            or row['logical_size'] > row['allocated_size'] or allocated[:len(logical)] != logical):
        raise ValueError('Complete logical prefix and original record-read bytes required')
    if len(allocated) < 64:
        raise ValueError('Reference record is missing the complete four-byte count')
    count = int.from_bytes(bytes(allocated[60:64]), byteorder='little', signed=False)
    if count > 4096:
        raise ValueError('Reference count exceeds the audited bound of 4096')
    if row['blob_size'] != count * 21:
        raise ValueError('Reference blob length differs from the audited tag-1 entry count')
    semantic_size = 64 + count * 21
    if semantic_size > row['allocated_size']:
        raise ValueError('Original reference record-read buffer truncates the full semantic extent')
    if payload_v2 and row['logical_size'] != semantic_size:
        raise ValueError('Exact v2 full semantic logical size required')
    entries, occurrences = [], {}
    for index in range(count):
        offset = 64 + index * 21
        tag = allocated[offset]
        if tag != 1:
            raise ValueError('Unsupported persistent reference tag ' + str(tag)
                             + ' at entry ' + str(index) + '; no unreviewed format is skipped')
        key = allocated[offset + 1:offset + 21]
        entries.append({'tag': 1, 'global_id': key})
        occurrences.setdefault(tuple(key), []).append(index)
    duplicates = [{'global_id': list(key), 'entry_indexes': indexes.copy()}
                  for key, indexes in occurrences.items() if len(indexes) > 1]
    return {
        'profile': 'persistent_reference_list_tag1_v1',
        'role': role, 'attribute': attribute, 'owner_key': owner.copy(),
        'declared_size': declared_size, 'fixed_size': 60, 'declared_blob_size': row['blob_size'],
        'count_size': 4, 'entry_count': count, 'semantic_size': semantic_size,
        'allocated_size': row['allocated_size'], 'semantic_bytes': allocated[:semantic_size],
        'entries': entries, 'tail_bytes': allocated[semantic_size:], 'duplicates': duplicates,
        'legacy_omitted_byte_count': semantic_size - row['logical_size'],
    }


def delta(before_row, after_row, owner_key):
    """Compare parsed semantics only; callers must record unparsed-tail changes.

    None means the parsed semantic bytes match. It does not establish equality
    of the complete original record-read bytes or their unparsed tail.
    """
    before, after = decode(before_row, owner_key), decode(after_row, owner_key)
    if before['role'] != after['role'] or before['attribute'] != after['attribute']:
        raise ValueError('Persistent reference comparison must use the same role and attribute')
    if before['semantic_bytes'] == after['semantic_bytes']:
        return None
    return {'role': before['role'], 'attribute': before['attribute'],
            'before': deepcopy(before['semantic_bytes']), 'after': deepcopy(after['semantic_bytes']),
            'before_entries': deepcopy(before['entries']), 'after_entries': deepcopy(after['entries'])}
