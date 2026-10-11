"""Fixed absent source reference leaf create/delete research, not durable inverse.

Shares the no-replay connection, fsynced original, WAL and parent handshake.
An empty record carries no new model references. Full finite after must equal
the original before, including unrelated raw tails and exact CTError absence.
"""
from copy import deepcopy

from bd_module_persistent_references import validate, summarize
from bd_persistent_references import decode


def verify_no_writer_refusal(native, domain):
    """Terminal typed refusal proves zero leaf calls; never confirms a writer."""
    actual = native.get('actual')
    required = {'profile', 'write_dispatched', 'persistent_leaf_write_calls',
        'persistent_leaf_delete_calls', 'error', 'automatic_retry'}
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('typed_no_writer_refusal') is not True
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or native.get('component_oid') != domain['oid']
            or native.get('dirty_before') != 0 or native.get('dirty_after') != 0
            or not isinstance(actual, dict) or set(actual) != required
            or actual['profile'] != 'finite_reference_leaf_lifecycle_failure_v1'
            or actual['write_dispatched'] is not False or actual['automatic_retry'] is not False
            or not isinstance(actual['error'], str) or not actual['error']
            or any(type(actual[k]) is not int or actual[k] != 0 for k in
                ('persistent_leaf_write_calls', 'persistent_leaf_delete_calls'))):
        raise ValueError('Exact complete zero-leaf typed refusal required')
    return validate(native['before'], component_oid=domain['oid'])


def verify_lifecycle(native, domain, component):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or native.get('dirty_before') != 0 or native.get('dirty_after') != 0):
        raise ValueError('Complete same-instance clean lifecycle reply required')
    before = validate(native['before'], component_oid=domain['oid'])
    actual = native['actual']
    required = {'profile', 'before', 'inserted', 'after', 'owner_key', 'candidate_bytes', 'created_raw_bytes',
        'outcome', 'delete_outcome', 'owner_source_backend_preserved', 'persistent_leaf_write_calls',
        'persistent_leaf_delete_calls', 'model_setters_called', 'store_called', 'commit_called',
        'flush_called', 'durable_inverse_verified'}
    if (not isinstance(actual, dict) or set(actual) != required
            or actual['profile'] != 'finite_reference_leaf_lifecycle_result_v1'
            or actual['owner_key'] != before['owners'][1]['key']
            or actual['owner_source_backend_preserved'] is not True
            or any(type(actual[k]) is not int or actual[k] != n for k, n in
                (('persistent_leaf_write_calls', 1), ('persistent_leaf_delete_calls', 1), ('model_setters_called', 0)))
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'flush_called', 'durable_inverse_verified'))):
        raise ValueError('Exact fixed empty lifecycle contract required')
    for key in ('outcome', 'delete_outcome'):
        allowed_class = 'CTSpaceCheckingIFil' if key == 'outcome' else 'SmallInteger'
        if (not isinstance(actual[key], dict) or set(actual[key]) != {'returned_class', 'is_ct_error'}
                or actual[key]['is_ct_error'] is not False
                or actual[key]['returned_class'] != allowed_class):
            raise ValueError('Exact non-error leaf outcome required')
    inserted = validate(actual['inserted'], component_oid=domain['oid'])
    after = validate(actual['after'], component_oid=domain['oid'])
    row = inserted['owners'][1]['records'][0]
    original = before['owners'][1]['records'][0]
    if original['read_status'] != 'absent' or row['read_status'] != 'record':
        raise ValueError('Original absence and actual inserted record required')
    decoded = decode(row, before['owners'][1]['key'])
    candidate = actual['candidate_bytes']
    if (not isinstance(candidate, list) or len(candidate) != 64
            or any(type(b) is not int or not 0 <= b <= 255 for b in candidate)
            or candidate[0:2] != [0, 60] or candidate[2:22] != before['owners'][1]['key']
            or candidate[22:56] != list(b'DBReferenceList' + b'\0' * (34 - len(b'DBReferenceList')))
            or candidate[56:64] != [0] * 8 or decoded['entries'] != []
            or row['blob_size'] != 0 or row['logical_size'] != 64
            or actual['created_raw_bytes'] != row['allocated_bytes']
            or row['allocated_bytes'][:64] != candidate):
        raise ValueError('Exact empty native factory header/count/full raw readback required')
    unchanged = deepcopy(inserted)
    unchanged['owners'][1]['records'][0] = deepcopy(original)
    if actual['before'] != before or unchanged != before or after != before:
        raise ValueError('Unrelated finite records changed or exact original absence not restored')
    return dict(**summarize(after, component_oid=domain['oid']),
        empty_record_created_and_removed=True, original_absence_restored=True,
        unrelated_finite_raw_records_preserved=True, durable_reference_inverse_verified=False)


if __name__ == '__main__':
    from bde_reference_leaf_noop_probe import main
    raise SystemExit(main(lifecycle=True))
