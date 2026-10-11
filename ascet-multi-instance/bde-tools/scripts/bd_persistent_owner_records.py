"""Complete isolated object-record observations, not serialization/inverse authority."""
from copy import deepcopy
import hashlib
import re

from bd_module_persistent_references import validate as reference_validate


def search_global_id(raw):
    """CTreeSearchObjectRecord: pcId at 3, ts at 11, transaction at 124.

    These are the recovered 1-based getter offsets, not the contiguous
    CTreeReferenceRecord layout. Preserve the first-version fields and header.
    """
    return raw[2:10] + raw[10:20] + raw[123:125]


def validate(value, *, component_oid):
    fields = set(('profile component_oid owners references complete model_setters_called '
        'store_called commit_called full_commit_resource_closure write_authorized inverse_authorized').split())
    if (not isinstance(value, dict) or set(value) != fields
            or value['profile'] != 'isolated_persistent_owner_records_v1'
            or value['component_oid'] != component_oid or value['complete'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'write_authorized', 'inverse_authorized'))):
        raise ValueError('Exact capture-only complete owner record observation required')
    references = reference_validate(value['references'], component_oid=component_oid)
    rows = value['owners']
    if not isinstance(rows, list) or len(rows) != 2:
        raise ValueError('Exactly two isolated owner records required')
    row_fields = set(('role model_class oid global_id query_key actual_file_key record_class_requested '
        'record_class read_status leaf_class file_class fixed_size blob_size logical_size allocated_size '
        'bytes allocated_bytes stored_class stored_name stored_version stored_object_state stored_reference_state').split())
    total = 0
    for index, row in enumerate(rows):
        owner = references['owners'][index]; model_class = ('SGModule', 'SGTopGraphicsBlockDB')[index]
        if (not isinstance(row, dict) or set(row) != row_fields or row['role'] != owner['role']
                or row['oid'] != owner['oid'] or row['model_class'] != model_class
                or row['global_id'] != owner['key'] or row['query_key'] != owner['key'] or row['actual_file_key'] != owner['key']
                or row['record_class_requested'] != 'CTreeSearchObjectRecord' or row['record_class'] != 'CTreeSearchObjectRecord'
                or row['leaf_class'] != 'CTreeLocalSearchInterface' or row['file_class'] != 'CTSpaceCheckingIFil'
                or row['read_status'] != 'record' or row['fixed_size'] != 130
                or any(type(row[k]) is not int or row[k] < 0 for k in ('fixed_size', 'blob_size', 'logical_size', 'allocated_size',
                    'stored_version', 'stored_object_state', 'stored_reference_state'))
                or row['logical_size'] != 130 + row['blob_size'] or not 130 <= row['allocated_size'] <= 4194304
                or row['logical_size'] > row['allocated_size']
                or any(not isinstance(row[k], str) for k in ('stored_class', 'stored_name'))):
            raise ValueError('Exact bounded original search owner identity/header required')
        for name in ('global_id', 'query_key', 'actual_file_key', 'bytes', 'allocated_bytes'):
            if not isinstance(row[name], list) or any(type(o) is not int or not 0 <= o <= 255 for o in row[name]):
                raise ValueError('Complete original owner octets required')
        raw = row['allocated_bytes']
        if (len(raw) != row['allocated_size'] or len(row['bytes']) != row['logical_size']
                or raw[:row['logical_size']] != row['bytes'] or search_global_id(raw) != owner['key']
                or int.from_bytes(bytes(raw[126:130]), 'little') != row['blob_size']
                or any(int.from_bytes(bytes(raw[offset:offset + 4]), 'little') != row[field] for offset, field in
                    ((108, 'stored_version'), (112, 'stored_object_state'), (116, 'stored_reference_state')))):
            raise ValueError('Complete original search raw/header/prefix differs')
        total += len(raw)
    if total > 16777216: raise ValueError('Original search record byte budget exceeded')
    return deepcopy(value)


def validate_receipt(value, *, token, component_oid, generation, phase):
    fields = set(('profile native_token component_oid generation phase before after '
        'prepared_native_record_bound model_setters_called store_called commit_called '
        'write_authorized inverse_authorized full_commit_resource_closure').split())
    if (type(value) is not dict or set(value) != fields
            or value['profile'] != 'native_connect_owner_records_v1'
            or not isinstance(token, str) or re.fullmatch(r'edit_[0-9a-f]{64}', token) is None
            or value['native_token'] != token or value['component_oid'] != component_oid
            or type(generation) is not int or generation < 1
            or type(value['generation']) is not int or value['generation'] != generation
            or phase not in ('prepared', 'attached') or value['phase'] != phase
            or value['prepared_native_record_bound'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[k] is not False for k in ('store_called', 'commit_called',
                'write_authorized', 'inverse_authorized', 'full_commit_resource_closure'))):
        raise ValueError('Exact original-preparation-bound connect owner receipt required')
    before = validate(value['before'], component_oid=component_oid)
    if phase == 'prepared':
        if value['after'] is not None:
            raise ValueError('Prepared owner records cannot invent actual after')
    else:
        after = validate(value['after'], component_oid=component_oid)
        for left, right in zip(before['owners'], after['owners']):
            if any(left[k] != right[k] for k in ('role', 'oid', 'global_id', 'model_class',
                    'query_key', 'actual_file_key', 'record_class_requested', 'record_class', 'stored_class', 'stored_name')):
                raise ValueError('Actual owner replaced an original identity or route')
        if before['references'].get('requested_reciprocal_targets', []) != after['references'].get('requested_reciprocal_targets', []):
            raise ValueError('Actual owner records replaced original explicit reference coverage')
    return deepcopy(value)


def differences(value):
    """Return compact actual raw deltas; complete before/after stays in WAL."""
    value = validate_receipt(value, token=value['native_token'], component_oid=value['component_oid'],
        generation=value['generation'], phase='attached')
    def describe(row):
        return dict(raw_sha256=hashlib.sha256(bytes(row['allocated_bytes'])).hexdigest(),
            payload_sha256=hashlib.sha256(bytes(row['bytes'][130:])).hexdigest(),
            tail_sha256=hashlib.sha256(bytes(row['allocated_bytes'][row['logical_size']:])).hexdigest(),
            raw_bytes=row['allocated_size'], payload_bytes=row['blob_size'],
            version=row['stored_version'], object_state=row['stored_object_state'], reference_state=row['stored_reference_state'])
    result = []
    for left, right in zip(value['before']['owners'], value['after']['owners']):
        if left == right:
            continue
        old, new = describe(left), describe(right)
        result.append(dict(kind='persistent_owner_record', role=left['role'], oid=left['oid'],
            global_id=left['global_id'], before=old, after=new,
            payload_changed=old['payload_sha256'] != new['payload_sha256'],
            raw_tail_changed=old['tail_sha256'] != new['tail_sha256'],
            changed_bytes=sum(a != b for a, b in zip(left['allocated_bytes'], right['allocated_bytes']))
                + abs(left['allocated_size'] - right['allocated_size']),
            original_before_captured=True, actual_after_captured=True,
            write_authorized=False, inverse_authorized=False))
    return result
