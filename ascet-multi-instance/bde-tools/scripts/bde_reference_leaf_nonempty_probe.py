"""Fixed isolated reciprocal 1/2/1/absent lifecycle, not a production inverse."""
from copy import deepcopy

from bd_module_persistent_references import validate, summarize
from bd_persistent_references import decode


def entries(row, key):
    return [] if row['read_status'] == 'absent' else [e['global_id'] for e in decode(row, key)['entries']]


def validate_original(before, domain):
    before = validate(before, component_oid=domain['oid'])
    module, source = before['owners']
    if (before.get('requested_reciprocal_targets') != sorted([module['key'], source['key']])
            or source['records'][0]['read_status'] != 'absent'
            or any(o['records'][1]['read_status'] != 'record' for o in (module, source))
            or any(source['key'] in entries(o['records'][1], o['key']) for o in (module, source))
            or any(c['consistent'] is not True for c in before['membership_checks'])):
        raise ValueError('Original absence, both original inbound records and explicit isolated owner coverage required')
    return before


def verify_nonempty(native, domain, component):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or native.get('dirty_before') != 0 or native.get('dirty_after') != 0):
        raise ValueError('Complete same-runtime clean nonempty lifecycle reply required')
    before = validate_original(native['before'], domain)
    actual = native['actual']
    required = set(('profile before stages outcomes after owner_source_backend_preserved '
        'persistent_leaf_write_calls persistent_leaf_delete_calls model_setters_called '
        'store_called commit_called flush_called durable_inverse_verified').split())
    if (not isinstance(actual, dict) or set(actual) != required
            or actual['profile'] != 'finite_reference_leaf_nonempty_result_v1'
            or actual['before'] != before or actual['after'] != before
            or actual['owner_source_backend_preserved'] is not True
            or any(type(actual[k]) is not int or actual[k] != n for k, n in
                (('persistent_leaf_write_calls', 7), ('persistent_leaf_delete_calls', 1), ('model_setters_called', 0)))
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'flush_called', 'durable_inverse_verified'))
            or not isinstance(actual['stages'], list) or len(actual['stages']) != 4
            or not isinstance(actual['outcomes'], list) or len(actual['outcomes']) != 8):
        raise ValueError('Exact reciprocal resize/restoration contract required')
    return _verify_sequence(actual, before, domain)


def absence_diagnostic_delta(before, after, domain):
    """Separate CTError sysio diagnostics from absent-record identity, never bytes.

    Both full observations remain untouched. Only exact CTError101 source
    absence can differ in sysio_code. All existing raw bytes, other errors,
    uerr codes, identities, requested targets and membership remain exact.
    """
    validate(before, component_oid=domain['oid'])
    validate(after, component_oid=domain['oid'])
    left = before['owners'][1]['records'][0]
    right = after['owners'][1]['records'][0]
    if left['read_status'] != 'absent' or right['read_status'] != 'absent':
        raise ValueError('Exact source absence required for diagnostic comparison')
    normalized = deepcopy(after)
    normalized['owners'][1]['records'][0]['sysio_code'] = left['sysio_code']
    if normalized != before:
        raise ValueError('Persistent bytes, absence identity or other finite observations differ')
    return [] if left['sysio_code'] == right['sysio_code'] else [dict(
        path='/owners/1/records/0/sysio_code', before=left['sysio_code'], after=right['sysio_code'],
        classification='cterror_os_diagnostic', error_number=101)]


def _verify_sequence(actual, before, domain, terminal_sysio=False):
    module_key, source_key = [o['key'] for o in before['owners']]
    expected_operations = [('write', 1), ('write', 2), ('write', 1), ('write', 3),
        ('write', 1), ('write', 3), ('delete', 1), ('write', 2)]
    expected_records = [actual['stages'][0]['owners'][1]['records'][0], actual['stages'][0]['owners'][0]['records'][1],
        actual['stages'][1]['owners'][1]['records'][0], actual['stages'][1]['owners'][1]['records'][1],
        actual['stages'][2]['owners'][1]['records'][0], actual['stages'][2]['owners'][1]['records'][1],
        None, actual['stages'][3]['owners'][0]['records'][1]]
    for operation_index, (outcome, (operation, index), row) in enumerate(zip(actual['outcomes'], expected_operations, expected_records)):
        fields = {'operation', 'record_index', 'returned_class'} | ({'planned_bytes', 'raw_bytes'} if operation == 'write' else set())
        if (not isinstance(outcome, dict) or set(outcome) != fields or outcome['operation'] != operation
                or type(outcome['record_index']) is not int or outcome['record_index'] != index
                or outcome['returned_class'] != ('CTSpaceCheckingIFil' if operation == 'write' else 'SmallInteger')):
            raise ValueError('Exact ordered native leaf outcome required')
        if operation == 'write':
            for field in ('planned_bytes', 'raw_bytes'):
                if not isinstance(outcome[field], list) or any(type(b) is not int or not 0 <= b <= 255 for b in outcome[field]):
                    raise ValueError('Complete planned/readback bytes required')
            if len(outcome['planned_bytes']) < 64 or outcome['raw_bytes'][:len(outcome['planned_bytes'])] != outcome['planned_bytes']:
                raise ValueError('Full planned bytes not read back')
            raw = outcome['planned_bytes']
            key = module_key if index == 2 else source_key
            attribute = b'DBReferenceList' if index == 1 else b'DBReferencedByList'
            fixed_header = before['owners'][1 if index == 3 else 0]['records'][1]['allocated_bytes'][:2] if operation_index in (5, 7) else [0, 60]
            if (raw[:2] != fixed_header or raw[2:22] != key
                    or raw[22:56] != list(attribute + b'\0' * (34 - len(attribute)))
                    or int.from_bytes(bytes(raw[56:60]), 'little') != row['blob_size']
                    or outcome['raw_bytes'] != row['allocated_bytes']):
                raise ValueError('Exact planned native header and complete phase readback required')
    for stage_index, image in enumerate(actual['stages']):
        image = validate(image, component_oid=domain['oid'])
        if any(c['consistent'] is not True for c in image['membership_checks']):
            raise ValueError('Actual reciprocal membership inconsistency')
        if image['requested_reciprocal_targets'] != before['requested_reciprocal_targets']:
            raise ValueError('Original isolated targets changed')
        count = [1, 2, 1, 0][stage_index]
        source_out = image['owners'][1]['records'][0]
        expected_entries = [module_key, source_key][:count]
        if entries(source_out, source_key) != expected_entries:
            raise ValueError('Actual ordered source 1/2/1/absence entries differ')
        if count == 0:
            if terminal_sysio:
                absence_diagnostic_delta(before, image, domain)
            elif image != before:
                raise ValueError('Full original restoration differs')
            continue
        affected = {(tuple(source_key), 'owner_references'), (tuple(module_key), 'owner_referenced_by')}
        if count == 2: affected.add((tuple(source_key), 'owner_referenced_by'))
        normalized = deepcopy(image)
        for original_owner, owner in zip(before['owners'], normalized['owners']):
            if {k: v for k, v in owner.items() if k != 'records'} != {k: v for k, v in original_owner.items() if k != 'records'}:
                raise ValueError('Original owner identity changed')
            for i, row in enumerate(owner['records']):
                identity = (tuple(owner['key']), row['role'])
                if identity in affected:
                    if row['role'] == 'owner_referenced_by':
                        old = original_owner['records'][i]
                        if entries(row, owner['key']) != entries(old, owner['key']) + [source_key]:
                            raise ValueError('Inbound original entry order or appended source differs')
                        old_decoded, new_decoded = decode(old, owner['key']), decode(row, owner['key'])
                        tail = old_decoded['tail_bytes']
                        if new_decoded['tail_bytes'][:len(tail)] != tail:
                            raise ValueError('Original unparsed tail lost')
                    owner['records'][i] = deepcopy(original_owner['records'][i])
        originals = {tuple(k): row for k, row in zip(before['reciprocal_targets'], before['reciprocal_records'])}
        for i, (key, row) in enumerate(zip(normalized['reciprocal_targets'], normalized['reciprocal_records'])):
            if (tuple(key), row['role']) in affected: normalized['reciprocal_records'][i] = deepcopy(originals[tuple(key)])
        normalized['membership_checks'] = deepcopy(before['membership_checks'])
        if normalized != before:
            raise ValueError('Unrelated raw records or original finite census changed')
    # Restore writes must be the exact originally allocated raw buffers.
    if (actual['outcomes'][5]['planned_bytes'] != before['owners'][1]['records'][1]['allocated_bytes']
            or actual['outcomes'][7]['planned_bytes'] != before['owners'][0]['records'][1]['allocated_bytes']):
        raise ValueError('Restoration used guessed bytes instead of original raw buffers')
    return dict(**summarize(before, component_oid=domain['oid']),
        reciprocal_nonempty_lifecycle_restored=True, source_entry_counts=[1, 2, 1, 0],
        durable_reference_inverse_verified=False)


def verify_retained_nonempty(native, domain):
    """Independently assess a complete retained terminal refusal; no native replay.

    A diagnostic mismatch never becomes an exact observation equality claim.
    Callers must additionally obtain a fresh same-epoch complete read.
    """
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or native.get('dirty_before') != 0 or native.get('dirty_after') != 0):
        raise ValueError('Complete same-runtime clean retained lifecycle required')
    before = validate_original(native['before'], domain)
    actual = native['actual']
    required = set(('profile write_dispatched persistent_leaf_write_calls persistent_leaf_delete_calls '
        'stages outcomes error automatic_retry').split())
    if (not isinstance(actual, dict) or set(actual) != required
            or actual['profile'] != 'finite_reference_leaf_nonempty_failure_v1'
            or actual['write_dispatched'] is not True or actual['automatic_retry'] is not False
            or actual['error'] != 'Complete original finite restoration differs'
            or type(actual['persistent_leaf_write_calls']) is not int or actual['persistent_leaf_write_calls'] != 7
            or type(actual['persistent_leaf_delete_calls']) is not int or actual['persistent_leaf_delete_calls'] != 1
            or not isinstance(actual['stages'], list) or len(actual['stages']) != 4
            or not isinstance(actual['outcomes'], list) or len(actual['outcomes']) != 8):
        raise ValueError('Only complete terminal original-observation refusal can be independently assessed')
    summary = _verify_sequence(actual, before, domain, terminal_sysio=True)
    diagnostic = absence_diagnostic_delta(before, actual['stages'][-1], domain)
    if not diagnostic:
        raise ValueError('Retained failure requires its explicit terminal diagnostic difference')
    return dict(**summary, exact_observation_restored=False, persistent_reference_records_restored=True,
        diagnostic_changes=diagnostic, original_native_refusal_preserved=True)


if __name__ == '__main__':
    from bde_reference_leaf_noop_probe import main
    raise SystemExit(main(nonempty=True))
