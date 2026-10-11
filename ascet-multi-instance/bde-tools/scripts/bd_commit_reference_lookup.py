"""Validate finite positive lookups in an original v5 reference observation.

No I/O, scan, current read, persistence or absence inference occurs here. The
caller must supply its original validated prepared receipt and bind the native
reply to that same session. Compact metadata alone is not native provenance.
Converted rows preserve all original record bytes, including the unparsed tail;
they do not invent per-record CTree before/after observations.
"""
from copy import deepcopy

from bd_commit_reference_baseline import validate_summary
from bd_commit_resources import validate as validate_prepared
from bd_persistent_references import decode


PROFILE = 'native_reference_baseline_lookup_v1'
SOURCE = 'retained_same_preparation_observation'
ATTRIBUTES = {'DBReferenceList': 'owner_references',
              'DBReferencedByList': 'owner_referenced_by'}
FALSE_FIELDS = ('new_scan_performed', 'current_read_performed', 'absence_proven',
                'write_authorized', 'inverse_authorized')
KEYS = frozenset(('profile', 'native_token', 'component_oid', 'generation',
                  'profile_index', 'reference_file_baseline', 'requests', 'rows', 'source') + FALSE_FIELDS)
RECORD_KEYS = frozenset(('allocated_length', 'attribute', 'cursor_event_sequence',
    'declared_blob_size', 'fixed_size', 'global_id', 'length_event_sequence', 'ordinal',
    'raw_bytes', 'record_class', 'reread_event_sequence', 'semantic_key', 'state',
    'transform_event_sequence', 'transformed_key'))
MAX_RECORD_BYTES = 4194304
MAX_TOTAL_RAW_BYTES = 1048576


def _bytes(value, label, length=None):
    if (not isinstance(value, list) or len(value) > MAX_RECORD_BYTES
            or (length is not None and len(value) != length)
            or any(type(part) is not int or not 0 <= part <= 255 for part in value)):
        raise ValueError('Exact bounded original byte array required: ' + label)
    return value


def _integer(value, label, low, high):
    if type(value) is not int or not low <= value <= high:
        raise ValueError('Exact bounded integer required: ' + label)
    return value


def validate_requests(requests):
    """Return an independent ordered set of 1..16 exact owner/attribute requests."""
    if not isinstance(requests, list) or not 1 <= len(requests) <= 16:
        raise ValueError('One to sixteen original reference lookup requests required')
    seen = set()
    for request in requests:
        if (not isinstance(request, dict) or set(request) != {'global_id', 'attribute'}
                or not isinstance(request['attribute'], str) or request['attribute'] not in ATTRIBUTES):
            raise ValueError('Only exact DBReferenceList/DBReferencedByList requests are supported')
        key = (tuple(_bytes(request['global_id'], 'request.global_id', 20)), request['attribute'])
        if key in seen:
            raise ValueError('Duplicate reference lookup request')
        seen.add(key)
    return deepcopy(requests)


def _record_row(record, request, baseline):
    if not isinstance(record, dict) or set(record) != RECORD_KEYS:
        raise ValueError('Complete unchanged original scan record required')
    if record['state'] != 'record_captured' or record['record_class'] != 'CTreeVariableAttributeRecord':
        raise ValueError('Only a successfully observed original reference record is supported')
    if type(record['fixed_size']) is not int or record['fixed_size'] != 60:
        raise ValueError('Audited fixed-60 original reference record required')
    size = _integer(record['allocated_length'], 'allocated_length', 64, MAX_RECORD_BYTES)
    raw = _bytes(record['raw_bytes'], 'raw_bytes', size)
    blob = _integer(record['declared_blob_size'], 'declared_blob_size', 0, MAX_RECORD_BYTES)
    if blob != int.from_bytes(bytes(raw[56:60]), 'little') or 60 + blob > size:
        raise ValueError('Original reference blob header and length disagree')
    owner = _bytes(record['global_id'], 'record.global_id', 20)
    if owner != request['global_id'] or owner != raw[2:22]:
        raise ValueError('Observed reference owner differs from its raw header or request')
    attribute = request['attribute']
    if record['attribute'] != attribute or bytes(raw[22:55]).split(b'\0', 1)[0] != attribute.encode('ascii'):
        raise ValueError('Observed reference attribute differs from its raw header or request')
    key = owner + list(attribute.encode('ascii'))
    if _bytes(record['semantic_key'], 'semantic_key', len(key)) != key:
        raise ValueError('Original reference semantic key differs')
    # Native transform output is preserved, not guessed to be identity/padding.
    _bytes(record['transformed_key'], 'transformed_key', 53)
    count = baseline['record_count']
    ordinal = _integer(record['ordinal'], 'ordinal', 1, count)
    cursor = count + 3 * ordinal + 1
    expected_events = {'cursor_event_sequence': cursor, 'length_event_sequence': cursor + 1,
                       'reread_event_sequence': cursor + 2,
                       'transform_event_sequence': 4 * count + ordinal + 4}
    for field, expected in expected_events.items():
        if _integer(record[field], field, 1, baseline['events']) != expected:
            raise ValueError('Original record event location differs: ' + field)
    entry_count = int.from_bytes(bytes(raw[60:64]), 'little')
    if entry_count > 4096 or blob != entry_count * 21:
        raise ValueError('Original reference count exceeds bounds or disagrees with blob length')
    semantic_size = 64 + entry_count * 21
    if semantic_size > size:
        raise ValueError('Original reference record truncates its complete semantic payload')
    row = dict(role=ATTRIBUTES[attribute], attribute=attribute, record_attribute=attribute,
               record_class='CTreeVariableAttributeRecord', read_status='record',
               fixed_size=60, blob_size=blob, declared_size=60 + blob,
               length_profile='reference_payload_v2', logical_size=semantic_size,
               allocated_size=size, global_id=owner, query_key=key, actual_file_key=key,
               bytes=raw[:semantic_size], allocated_bytes=raw,
               baseline_observation=dict(source=SOURCE, native_token=baseline['native_token'],
                   component_oid=baseline['component_oid'], generation=baseline['generation'],
                   profile_index=baseline['profile_index'], ordinal=ordinal,
                   **expected_events))
    decode(row, owner)  # Includes strict tag-1 parsing and ordered duplicate retention.
    return deepcopy(row)


def _validated(value, *, prepared, requests):
    requests = validate_requests(requests)
    if not isinstance(prepared, dict) or prepared.get('profile') not in ('native_commit_prepare_v5', 'native_commit_prepare_v6'):
        raise ValueError('Original complete baseline preparation receipt required for lookup')
    prepared = validate_prepared(prepared, token=prepared.get('native_token'), component_oid=prepared.get('component_oid'))
    if not isinstance(value, dict) or set(value) != KEYS or value['profile'] != PROFILE or value['source'] != SOURCE:
        raise ValueError('Complete fixed original reference baseline lookup receipt required')
    for field in ('native_token', 'component_oid', 'generation'):
        if value[field] != prepared[field] or type(value[field]) is not type(prepared[field]):
            raise ValueError('Reference lookup differs from original preparation namespace: ' + field)
    baseline = validate_summary(value['reference_file_baseline'], token=prepared['native_token'],
        component_oid=prepared['component_oid'], generation=prepared['generation'])
    if baseline != prepared['reference_file_baseline']:
        raise ValueError('Reference lookup baseline differs from original preparation')
    if type(value['profile_index']) is not int or value['profile_index'] != baseline['profile_index']:
        raise ValueError('Reference lookup requires the exact original profile index')
    for field in FALSE_FIELDS:
        if value[field] is not False:
            raise ValueError('Retained lookup cannot scan, infer absence or grant write authority: ' + field)
    if validate_requests(value['requests']) != requests:
        raise ValueError('Reference lookup requests differ or were reordered')
    if not isinstance(value['rows'], list) or len(value['rows']) != len(requests):
        raise ValueError('One ordered reference result per original request required')
    converted, ordinals, transformed, total_raw = [], set(), set(), 0
    for result, request in zip(value['rows'], requests):
        if not isinstance(result, dict) or set(result) != {'global_id', 'attribute', 'status', 'record'}:
            raise ValueError('Complete original reference lookup result required')
        if (_bytes(result['global_id'], 'result.global_id', 20) != request['global_id']
                or result['attribute'] != request['attribute']):
            raise ValueError('Reference lookup result differs from its ordered request')
        if result['status'] == 'not_observed':
            if result['record'] is not None:
                raise ValueError('A not-observed result cannot contain an original record')
            converted.append(None)
        elif result['status'] == 'observed_record':
            row = _record_row(result['record'], request, baseline)
            total_raw += row['allocated_size']
            if total_raw > MAX_TOTAL_RAW_BYTES:
                raise ValueError('Finite baseline lookup exceeds its complete one-MiB raw-byte bound')
            ordinal, key = result['record']['ordinal'], tuple(result['record']['transformed_key'])
            if ordinal in ordinals or key in transformed:
                raise ValueError('Distinct requests cannot share an original record ordinal or transformed key')
            ordinals.add(ordinal); transformed.add(key); converted.append(row)
        else:
            raise ValueError('Unknown reference lookup status; no absence inference is supported')
    return deepcopy(value), converted


def validate(value, *, prepared, requests):
    """Validate an exact reply against the caller's original v5 receipt/requests."""
    return _validated(value, prepared=prepared, requests=requests)[0]


def record_rows(value, *, prepared, requests):
    """Return compatible original v2 rows only when *all* requests were observed.

    A not-observed result is not an empty reference record and cannot supply the
    original before image required by a finite inbound patch plan. These rows
    remain observations; the planner retains its false provenance/write flags.
    """
    _, rows = _validated(value, prepared=prepared, requests=requests)
    if any(row is None for row in rows):
        raise ValueError('Not-observed records cannot supply original before data or prove absence')
    return rows
