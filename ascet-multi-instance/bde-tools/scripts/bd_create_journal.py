"""Recover retained actual creation metadata and WAL without replaying creation."""
import json
from bd_create_material import observation, same_material
from bd_edit_journal import JournalError, clone
import bd_instance_pending as pending


def one(events, kind):
    values = [event['payload'] for event in events if event['kind'] == kind]
    if len(values) != 1:
        raise JournalError('RECOVERY_UNRESOLVED', 'One durable creation ' + kind + ' required')
    return values[0]


def reconcile_locked(log, token, adapter, *, commit=False):
    """Caller owns journal then live locks. Only exact retained metadata may change."""
    events = log.read(token)
    path = log._path(token)
    intent, prepared = one(events, 'intent'), one(events, 'prepared')
    one(events, 'started')
    if (intent.get('operation') != 'create_block' or intent.get('diagram') != 'Main'
            or intent['arguments'][0] != [] or intent['arguments'][1] not in (
                'literal', 'operator', 'variable', 'receive_message', 'send_message', 'send_receive_message')
            or 'create_material_prepared' not in prepared
            or getattr(adapter, 'create_material_capable', False) is not True):
        raise JournalError('RECOVERY_UNRESOLVED', 'Exact supported retained Main creation required')
    if intent['arguments'][1] in ('receive_message', 'send_message', 'send_receive_message'):
        if prepared['create_material_prepared'].get('profile') != 'native_create_material_v4':
            raise JournalError('RECOVERY_UNRESOLVED', 'Original full Module message creation material required')
    domain = intent['domain']
    marker = pending.pending_path(domain)
    expected = dict(domain=domain, command='create_apply', native_token=token, automatic_retry=False)
    if marker.exists() and json.loads(marker.read_text(encoding='utf-8')) != expected:
        raise JournalError('RECOVERY_UNRESOLVED', 'Another request owns creation quarantine')
    # The fixed reconcile action can complete the exact partial OID capture.
    # It refuses stale source/native/model/alias/order bindings and performs no
    # factory, setter, store, normalization or ordinary apply command.
    material = adapter.create_material_status(domain, token, reconcile=commit)
    after = material['after']
    value = dict(after=after, library_effects=[], scope_effects=[], **observation(
        prepared['before'], after, prepared['create_material_prepared'], material,
        token=token, oid=domain['oid'], kind=intent['arguments'][1]))
    from bd_structure_journal import postcondition, differences
    if not postcondition(intent, prepared['before'], after):
        raise JournalError('RECOVERY_UNRESOLVED', 'Actual retained creation violates requested effect')
    existing = [event['payload'] for event in events if event['kind'] == 'observed']
    if existing:
        if len(existing)!=1:
            raise JournalError('RECOVERY_UNRESOLVED', 'One durable actual creation observation required')
        durable=existing[0]
        original_actual=durable.get('create_material_actual')
        # Keep the original serialized roster and its projection hash. Native
        # dictionary enumeration may change, but every original slot, identity,
        # ordered collection and DB-reference target must remain equivalent.
        if type(original_actual) is not dict or not same_material(original_actual,material,token=token,oid=domain['oid'],
                kind=intent['arguments'][1],phase='attached'):
            raise JournalError('RECOVERY_UNRESOLVED', 'Durable creation observation differs from actual retained terminal')
        checked=dict(after=original_actual['after'],library_effects=[],scope_effects=[],**observation(
            prepared['before'],original_actual['after'],prepared['create_material_prepared'],original_actual,
            token=token,oid=domain['oid'],kind=intent['arguments'][1]))
        if durable!=checked:
            raise JournalError('RECOVERY_UNRESOLVED', 'Durable creation projection differs from its complete original material')
        value=clone(durable)
    finished = dict(status='applied_observed', requested_effect_verified=True,
        differences=differences(prepared['before'], after), library_effects=[], scope_effects=[],
        scope_differences=[], parent_order_effects=value['parent_order_effects'],
        parent_order_differences=value['parent_order_differences'],
        graphical_differences=value['graphical_differences'],
        drawing_order_differences=value['drawing_order_differences'],
        recovery='retained_native_objects_same_ASCET_process', outside_scope='not_observed',
        recovered_from_retained_terminal=True, automatic_retry=False)
    result = dict(change_id=token, profile='retained_create_terminal_query_v1',
        current_matches_terminal=True, terminal_verified=True, model_setters_called=0,
        store_called=False, automatic_retry=False, creation_redispatched=False, reconciled=False)
    if commit:
        log._append(path, events, 'create_terminal_query', dict(actual=material, model_setters_called=0,
            store_called=False, creation_redispatched=False))
        if not existing:
            log._append(path, events, 'observed', value)
        if log.receipt(token, events)['status'] != 'applied_observed':
            log._append(path, events, 'finished', finished)
        # Complete actual WAL precedes clearing the exact quarantine marker.
        if marker.exists():
            adapter.confirm_create(domain, token)
        result['reconciled'] = True
    result['instance_quarantined'] = marker.exists()
    result['receipt'] = log.receipt(token, events)
    return result
