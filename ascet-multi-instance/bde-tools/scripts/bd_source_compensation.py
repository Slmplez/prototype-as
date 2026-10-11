"""Durable, no-replay source-only recovery of an already-completed native patch."""
from bd_edit_journal import JournalError, clone, fingerprint
from bd_field_execution import validate as validate_field
from bd_source_inverse_oracle import decode_graph, equal


def transaction_id(domain, native_token, failed_id):
    return 'source_' + fingerprint({'domain': domain, 'native_token': native_token, 'failed_change_id': failed_id})


def validate_compensation(reply, intent, *, terminal):
    proof = reply.get('compensation')
    if (reply.get('profile') != 'native_field_source_recovery_v1'
            or reply.get('native_token') != intent['native_token'] or type(proof) is not dict
            or proof.get('profile') != 'native_field_source_compensation_v1'
            or any(proof.get(key) != intent[key] for key in (
                'transaction_id', 'failed_change_id', 'native_token', 'execution_sequence', 'direction'))
            or reply.get('model_setters_called') != 0 or reply.get('store_called') is not False
            or proof.get('source_root_preserved') is not True or proof.get('native_desired_verified') is not True):
        raise JournalError('RECOVERY_UNRESOLVED', 'Source compensation binding/root/native guard differs')
    field = validate_field(reply.get('field_execution'), token=intent['native_token'], operation=intent['operation'],
                           direction=intent['direction'], terminal=terminal)
    if (field['source_transaction_id'] != intent['transaction_id']
            or field['execution_sequence'] != intent['execution_sequence']
            or field['source_patch'] != proof.get('progress')):
        raise JournalError('RECOVERY_UNRESOLVED', 'Source execution progress/transaction differs')
    oid = intent['domain']['oid']
    decode_graph(proof['source_before'], oid)
    expected = decode_graph(proof['expected_source'], oid)
    if terminal:
        if (proof.get('state') != 'applied' or proof.get('source_desired_verified') is not True
                or not equal(decode_graph(proof['source_after'], oid), expected)):
            raise JournalError('RECOVERY_UNRESOLVED', 'Complete source sharing/actual terminal differs')
    elif proof.get('state') != 'prepared' or proof['progress']['state'] != 'prepared':
        raise JournalError('RECOVERY_UNRESOLVED', 'Source compensation is not an unexecuted preparation')
    return clone(proof)


def advance(log, failed_id, events, request, native_token, marker, adapter, *, reconcile):
    """Return None for a normal terminal recovery; never clear its pending marker."""
    domain = request['domain']
    transaction = transaction_id(domain, native_token, failed_id)
    fresh = adapter.source_recovery(domain, native_token, 'inspect', transaction, failed_id)
    field = fresh.get('field_execution')
    if not isinstance(field, dict):
        raise JournalError('RECOVERY_UNRESOLVED', 'Retained native field progress is unavailable')
    compensation = fresh.get('compensation')
    unresolved = fresh.get('native_state') in ('started', 'revert_started')
    if not unresolved and (compensation is None or log.receipt(failed_id, events)['status'] != 'outcome_unknown'):
        return None
    result = {'change_id': failed_id, 'native_state': fresh['native_state'], 'field_execution': field,
              'source_compensation': compensation, 'instance_quarantined': marker is not None,
              'reconciled': False, 'automatic_retry': False, 'model_setters_called': 0,
              'store_called': False, 'source': 'read-only retained native progress; no model reader reload'}
    if not reconcile:
        return result
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
    expected_marker = {'domain': domain, 'command': 'revert', 'native_token': native_token, 'automatic_retry': False}
    managed = prepared.get('managed_inverse')
    if managed is not None:
        expected_marker['command'] = 'managed_inverse'
        expected_marker['managed_context'] = {
            'head_change_id': managed['head_change_id'], 'expected_state': managed['expected_state'],
            'result_change_id': managed['result_change_id']}
    if marker != expected_marker or log.receipt(failed_id, events)['status'] != 'outcome_unknown':
        raise JournalError('RECOVERY_UNRESOLVED', 'Only the exact pending failed inverse may own source compensation')
    intent = {'profile': 'field_source_compensation_intent_v1', 'transaction_id': transaction,
        'domain': domain, 'native_token': native_token, 'failed_change_id': failed_id,
        'operation': request['operation'], 'execution_sequence': field['execution_sequence'],
        'direction': field['direction'], 'pending_sha256': fingerprint(marker), 'automatic_retry': False}
    existing = next((e['payload'] for e in events if e['kind'] == 'source_compensation_intent'), None)
    path = log._path(failed_id)
    if existing is not None and existing != intent:
        raise JournalError('RECOVERY_UNRESOLVED', 'Durable source compensation intent differs from native state')
    if existing is None:
        if compensation is not None or fresh.get('eligible') is not True:
            raise JournalError('RECOVERY_UNRESOLVED', 'Source-only correction is not eligible or lacks preceding durable intent')
        log._append(path, events, 'source_compensation_intent', intent)
    if compensation is None:
        if any(e['kind'] == 'source_compensation_started' for e in events):
            raise JournalError('RECOVERY_UNRESOLVED', 'Started source transaction has no retained material; refusing reconstruction')
        # Native prepare allocates private shadows but does not mutate live slots.
        fresh = adapter.source_recovery(domain, native_token, 'prepare', transaction, failed_id, intent['execution_sequence'])
        compensation = fresh['compensation']
    durable_prepared = next((e['payload'] for e in events if e['kind'] == 'source_compensation_prepared'), None)
    if durable_prepared is None:
        proof = validate_compensation(fresh, intent, terminal=False)
        log._append(path, events, 'source_compensation_prepared', proof)
        durable_prepared = proof
    elif (compensation.get('source_before') != durable_prepared['source_before']
            or compensation.get('expected_source') != durable_prepared['expected_source']):
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh source material differs from durable preparation')
    started = any(e['kind'] == 'source_compensation_started' for e in events)
    if not started:
        validate_compensation(fresh, intent, terminal=False)
        log._append(path, events, 'source_compensation_started', {
            'transaction_id': transaction, 'execution_sequence': intent['execution_sequence'], 'automatic_retry': False})
        # Exactly one first dispatch. Subsequent calls classify retained state.
        fresh = adapter.source_recovery(domain, native_token, 'apply', transaction, failed_id, intent['execution_sequence'])
    proof = validate_compensation(fresh, intent, terminal=True)
    observed = next((e['payload'] for e in events if e['kind'] == 'source_compensation_observed'), None)
    actual = {'compensation': proof, 'field_execution': fresh['field_execution']}
    if observed is not None and observed != actual:
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh source outcome differs from durable observation')
    if observed is None:
        log._append(path, events, 'source_compensation_observed', actual)
    if not any(e['kind'] == 'source_compensation_finished' for e in events):
        log._append(path, events, 'source_compensation_finished', {
            'transaction_id': transaction, 'status': 'verified_source_only',
            'source_slot_writes': proof['progress']['completed_primitives'], 'automatic_retry': False})
    # Caller closes this adapter and obtains another live terminal proof before
    # reconciling the failed edit and acknowledging the original marker.
    return {'requires_fresh_terminal': True, 'transaction_id': transaction, 'field_execution': fresh['field_execution']}
