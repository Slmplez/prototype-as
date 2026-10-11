"""Validate detached finite current records, never historical restoration proof."""
from copy import deepcopy
import re
import hashlib

from bd_persistent_references import decode

PROFILE = 'native_module_persistent_reference_snapshot_v1'
KEYS = frozenset(('profile component_oid owners reciprocal_targets reciprocal_records '
    'membership_checks complete model_setters_called store_called commit_called '
    'original_edit_before_bound cross_process_atomic full_commit_resource_closure '
    'write_authorized inverse_authorized').split())
FALSE_KEYS = ('store_called', 'commit_called', 'original_edit_before_bound', 'cross_process_atomic',
              'full_commit_resource_closure', 'write_authorized', 'inverse_authorized')


def _key(value):
    if (not isinstance(value, list) or len(value) != 20
            or any(type(byte) is not int or not 0 <= byte <= 255 for byte in value)):
        raise ValueError('Exact finite 20-byte reference key required')
    return tuple(value)


def _record(row, key, role):
    if not isinstance(row, dict) or row.get('role') != role:
        raise ValueError('Exact finite reference record role required')
    if row.get('read_status') in ('error', 'absent'):
        fields = {'role', 'attribute', 'global_id', 'query_key', 'actual_file_key',
            'record_class_requested', 'read_status', 'error_class', 'error_number', 'uerr_code', 'sysio_code'}
        attribute = 'DBReferenceList' if role == 'owner_references' else 'DBReferencedByList'
        expected_key = list(key) + list(attribute.encode('ascii'))
        absent = row['read_status'] == 'absent'
        if absent:
            fields.add('absence_profile')
        if (set(row) != fields or row['attribute'] != attribute or _key(row['global_id']) != key
                or row['query_key'] != expected_key or row['actual_file_key'] != expected_key
                or any(not isinstance(row[name], list)
                    or any(type(byte) is not int or not 0 <= byte <= 255 for byte in row[name])
                    for name in ('query_key', 'actual_file_key'))
                or row['record_class_requested'] != 'CTreeVariableAttributeRecord' or row['error_class'] != 'CTError'
                or type(row['error_number']) is not int
                or any(not isinstance(row[name], str) or not 0 < len(row[name]) <= 256 for name in ('uerr_code', 'sysio_code'))):
            raise ValueError('Exact bounded failed finite read evidence required')
        if absent:
            if row['absence_profile'] != 'exact_reference_undefined_v1' or row['error_number'] != 101:
                raise ValueError('Absent reference requires the exact undefined-record result')
            return {'read_status': 'absent', 'record': deepcopy(row)}
        if row['error_number'] == 101:
            raise ValueError('Exact undefined-record result must retain its absence profile')
        return None
    if row.get('length_profile') != 'reference_payload_v2':
        raise ValueError('Explicit v2 finite owner record required')
    fields = {'role', 'attribute', 'record_attribute', 'record_class', 'record_class_requested', 'read_status',
        'fixed_size', 'blob_size', 'logical_size', 'allocated_size', 'global_id', 'query_key', 'actual_file_key',
        'bytes', 'allocated_bytes', 'length_profile', 'declared_size'}
    if set(row) != fields or type(row['allocated_size']) is not int or not 0 <= row['allocated_size'] <= 4194304:
        raise ValueError('Exact bounded detached finite raw-record schema required')
    return decode(row, list(key))


def validate(value, *, component_oid, require_complete=True):
    """Require all finite records and independently recompute reciprocal checks.

    Inconsistent membership is reported, not repaired or presented as full
    resource closure. Missing/failed records are retained by the native probe
    but do not pass this complete snapshot contract.
    """
    if (not isinstance(value, dict) or set(value) != KEYS or value['profile'] != PROFILE
            or not isinstance(component_oid, str) or not component_oid
            or value['component_oid'] != component_oid or type(value['complete']) is not bool
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[name] is not False for name in FALSE_KEYS)):
        raise ValueError('Complete read-only finite current snapshot required; no write or original-before authority')
    if type(require_complete) is not bool or (require_complete and value['complete'] is not True):
        raise ValueError('Complete finite snapshot required; failed reads cannot be treated as empty lists')
    owners = value['owners']
    if not isinstance(owners, list) or len(owners) != 2:
        raise ValueError('Exact distinct Module and source owners required')
    keys, oids, outgoing, inbound = [], [], {}, {}
    for role, owner in zip(('component', 'spec_source'), owners):
        if (not isinstance(owner, dict) or set(owner) != {'role', 'oid', 'key', 'records'}
                or owner['role'] != role or not isinstance(owner['oid'], str) or not 0 < len(owner['oid']) <= 256):
            raise ValueError('Complete ordered finite owner required')
        key = _key(owner['key'])
        if key in keys or owner['oid'] in oids:
            raise ValueError('Module and source must have distinct key/OID identities')
        if role == 'component' and owner['oid'] != component_oid:
            raise ValueError('Module key belongs to a different component')
        keys.append(key); oids.append(owner['oid'])
        if not isinstance(owner['records'], list) or len(owner['records']) != 2:
            raise ValueError('Both ordered outgoing and inbound owner records required')
        for expected_role, row in zip(('owner_references', 'owner_referenced_by'), owner['records']):
            parsed = _record(row, key, expected_role)
            (outgoing if expected_role == 'owner_references' else inbound)[key] = parsed
    expected_targets = sorted({tuple(entry['global_id'])
        for parsed in outgoing.values() if parsed is not None for entry in parsed.get('entries', [])})
    targets, records = value['reciprocal_targets'], value['reciprocal_records']
    if (not isinstance(targets, list) or len(targets) > 8192
            or [_key(key) for key in targets] != expected_targets
            or not isinstance(records, list) or len(records) != len(targets)):
        raise ValueError('Exact complete sorted finite reciprocal census required')
    checks = []
    for key, row in zip(expected_targets, records):
        parsed = _record(row, key, 'owner_referenced_by')
        if key in inbound and parsed != inbound[key]:
            raise ValueError('Repeated owner/reciprocal read differs within the finite observation')
        if parsed is None:
            continue
        for owner_key in keys:
            if outgoing[owner_key] is None:
                continue
            expected = any(tuple(entry['global_id']) == key for entry in outgoing[owner_key].get('entries', []))
            count = sum(tuple(entry['global_id']) == owner_key for entry in parsed.get('entries', []))
            checks.append(dict(owner_key=list(owner_key), target_key=list(key), outgoing_member=expected,
                inbound_owner_count=count, consistent=expected == (count > 0)))
    actual_checks = value['membership_checks']
    if not isinstance(actual_checks, list) or len(actual_checks) != len(checks):
        raise ValueError('Complete finite membership checks required')
    for actual, expected in zip(actual_checks, checks):
        if not isinstance(actual, dict) or set(actual) != set(expected) or actual != expected:
            raise ValueError('Finite reciprocal membership check differs from raw records')
        for name in ('outgoing_member', 'consistent'):
            if type(actual[name]) is not bool:
                raise ValueError('Exact membership boolean required')
        if type(actual['inbound_owner_count']) is not int:
            raise ValueError('Exact membership count required')
        _key(actual['owner_key']); _key(actual['target_key'])
    rows = [row for owner in owners for row in owner['records']] + records
    if value['complete'] is not all(row['read_status'] in ('record', 'absent') for row in rows):
        raise ValueError('Finite completeness flag contradicts retained read statuses')
    if sum(row.get('allocated_size', 0) for row in rows) > 16777216:
        raise ValueError('Finite complete raw-byte capture budget exceeded')
    return deepcopy(value)


def summarize(value, *, component_oid, require_complete=True):
    value = validate(value, component_oid=component_oid, require_complete=require_complete)
    rows = [row for owner in value['owners'] for row in owner['records']] + value['reciprocal_records']
    return dict(profile='finite_module_reference_summary_v1', component_oid=component_oid,
        owners=len(value['owners']), record_reads=len(rows), reciprocal_targets=len(value['reciprocal_targets']),
        complete=value['complete'], failed_record_reads=sum(row['read_status'] == 'error' for row in rows),
        absent_record_reads=sum(row['read_status'] == 'absent' for row in rows),
        existing_record_reads=sum(row['read_status'] == 'record' for row in rows),
        semantic_bytes=sum(row.get('logical_size', 0) for row in rows),
        raw_bytes=sum(row.get('allocated_size', 0) for row in rows),
        inconsistent_checks=sum(not row['consistent'] for row in value['membership_checks']),
        original_edit_before_bound=False, cross_process_atomic=False,
        full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False)


def validate_receipt(value, *, token, component_oid, generation, phase):
    keys = {'profile', 'native_token', 'component_oid', 'generation', 'phase', 'before', 'after',
        'prepared_native_record_bound', 'model_setters_called', 'store_called', 'commit_called',
        'write_authorized', 'inverse_authorized', 'full_commit_resource_closure'}
    if (not isinstance(value, dict) or set(value) != keys
            or value['profile'] != 'native_module_persistent_references_v1'
            or not isinstance(token, str) or re.fullmatch(r'edit_[0-9a-f]{64}', token) is None
            or type(generation) is not int or generation < 1
            or value['native_token'] != token or value['component_oid'] != component_oid
            or type(value['generation']) is not int or value['generation'] != generation
            or phase not in ('prepared', 'attached') or value['phase'] != phase
            or value['prepared_native_record_bound'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[name] is not False for name in ('store_called', 'commit_called',
                'write_authorized', 'inverse_authorized', 'full_commit_resource_closure'))):
        raise ValueError('Exact prepared-record-bound finite receipt required; no inverse authority')
    validate(value['before'], component_oid=component_oid)
    if phase == 'prepared':
        if value['after'] is not None:
            raise ValueError('Prepared finite references cannot invent an after image')
    else:
        validate(value['after'], component_oid=component_oid)
        if [(o['role'], o['oid'], o['key']) for o in value['before']['owners']] != [
                (o['role'], o['oid'], o['key']) for o in value['after']['owners']]:
            raise ValueError('Finite after image replaced an original Module/source identity')
    return deepcopy(value)


def differences(value):
    """Compact actual finite-record delta, including raw tails and missing sides.

    New reciprocal targets have no captured original row here. That gap remains
    explicit and is never filled with an invented absence or a current read.
    """
    value = validate_receipt(value, token=value['native_token'], component_oid=value['component_oid'],
        generation=value['generation'], phase='attached')
    def mapped(snapshot):
        result = {}
        for owner in snapshot['owners']:
            for row in owner['records']:
                result[('owner', owner['role'], tuple(owner['key']), row['role'])] = row
        for row in snapshot['reciprocal_records']:
            result[('reciprocal', '', tuple(row['global_id']), row['role'])] = row
        return result
    before, after = mapped(value['before']), mapped(value['after'])
    result = []
    def describe(row):
        if row is None:
            return dict(read_status='not_captured', entry_count=None, raw_sha256=None, semantic_sha256=None,
                tail_sha256=None, raw_bytes=None)
        if row['read_status'] == 'absent':
            return dict(read_status='absent', entry_count=None, raw_sha256=None, semantic_sha256=None,
                tail_sha256=None, raw_bytes=None)
        parsed = decode(row, row['global_id'])
        def sha(data): return hashlib.sha256(bytes(data)).hexdigest()
        return dict(read_status='record', entry_count=parsed['entry_count'], raw_sha256=sha(row['allocated_bytes']),
            semantic_sha256=sha(parsed['semantic_bytes']), tail_sha256=sha(parsed['tail_bytes']),
            raw_bytes=parsed['allocated_size'])
    for key in sorted(set(before) | set(after)):
        left, right = before.get(key), after.get(key)
        if left == right:
            continue
        old, new = describe(left), describe(right)
        result.append(dict(kind='module_persistent_reference_record', scope=key[0], owner_role=key[1],
            global_id=list(key[2]), role=key[3], before=old, after=new,
            original_before_captured=left is not None, actual_after_captured=right is not None,
            semantic_changed=old['read_status'] != new['read_status'] or old['semantic_sha256'] != new['semantic_sha256'],
            raw_tail_changed=old['tail_sha256'] != new['tail_sha256'],
            write_authorized=False, inverse_authorized=False))
    return result
