"""Resolve lost replies from retained terminal observations, without any setter.

Incomplete native operations remain quarantined. This cannot reconstruct a
partially executed native transaction or recover across an ASCET restart.
"""
import json
import re
import bd_service as service
import bd_drawing_order_effects as drawing
import bd_instance_pending as pending
import bd_commit_attempt as commit_attempt
from bd_edit_journal import JournalError, file_lock, fingerprint
from bd_structure_journal import StructureJournal, differences, postcondition, library_postcondition
from bd_scope_effects import postcondition as scope_postcondition, inverse_effects as invert_scopes, scope_differences
from bd_native_structure import NativeStructureAdapter
from bd_parent_order_effects import (OPERATIONS as ORDER_OPERATIONS, validate_preparation as validate_order_preparation,
    validate_inverse as validate_order_inverse, postcondition as order_postcondition, differences as order_differences)
from bd_sandbox_edit import load_binding
from bd_structural_tools import publish_after
from bd_native_graphical_effects import validate_current, summary as graphical_summary
from bd_field_execution import OPERATIONS as FIELD_OPERATIONS, validate as validate_field


def field_observation(request, native, native_token, direction, observed=None):
    if request['operation'] not in FIELD_OPERATIONS:
        return {}
    try:
        proof = validate_field(native.get('field_execution'), token=native_token,
                               operation=request['operation'], direction=direction)
        if observed is not None and observed.get('field_execution') != proof:
            raise ValueError('Durable field execution proof differs from fresh native terminal')
        return {'field_execution': proof}
    except (ValueError, KeyError, TypeError) as error:
        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error


def graphical_observation(preparation, original_preparation, native, native_token):
    try:
        current = preparation.get('graphical_current')
        original = original_preparation.get('graphical_current')
        validate_current(current)
        validate_current(original)
        signature = preparation.get('graphical_signature')
        if (not isinstance(signature, str) or not re.fullmatch(re.escape(native_token) + r'/g[1-9][0-9]*', signature)
                or native.get('graphical_signature') != signature
                or native.get('current_graphical_matches_terminal') is not True
                or fingerprint(native.get('graphical_original')) != fingerprint(original)
                or fingerprint(native.get('graphical_started')) != fingerprint(current)):
            raise ValueError('Native graphical original/CURRENT/signature/terminal differs from durable preparation')
        actual = native.get('graphical_actual')
        return {'graphical_current': current, 'graphical_actual': actual,
                'graphical_differences': graphical_summary(current, actual)}
    except (ValueError, KeyError, TypeError) as error:
        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error


def retention_status(log, token, events, original, native_token, native, context, marker, marker_path, reconcile):
    """Classify a metadata handoff from fresh native evidence; dispatch nothing."""
    intent = next(e['payload'] for e in events if e['kind'] == 'recovery_retention_started')
    expected_intent = {'native_token': native_token, 'owner_change_id': token,
        'profile': 'retained_inverse_v1', 'expected_state': 'reverted', 'automatic_retry': False}
    if intent != expected_intent or log.receipt(token, events)['status'] != 'verified_local':
        raise JournalError('RECOVERY_UNRESOLVED', 'Exact verified inverse material intent required')
    expected_owner = {'profile': 'retained_inverse_v1', 'native_token': native_token, 'owner_change_id': token}
    if 'material_ownership' not in native:
        raise JournalError('RECOVERY_UNRESOLVED', 'Explicit fresh material presence/absence evidence required')
    actual = native.get('material_ownership')
    if actual is not None and actual != expected_owner:
        raise JournalError('RECOVERY_UNRESOLVED', 'Native inverse material has another owner')
    proof = {'retained': True, **expected_owner, 'state': 'reverted', 'model_setters_called': 0}
    recorded = next((e['payload'] for e in reversed(events) if e['kind'] == 'recovery_retained'), None)
    if recorded is not None and (recorded != proof or actual != expected_owner):
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh ownership differs from durable retention proof')
    result = {'change_id': token, 'native_state': native['state'], 'model_setters_called': 0,
        'material_state': 'retained' if actual is not None else 'not_retained',
        'material_ownership': actual, 'reconciled': False, 'instance_quarantined': marker is not None,
        'current_matches_terminal_observation': native['after'] == native['current'],
        'automatic_retry': False, 'receipt': log.receipt(token, events)}
    if reconcile:
        observed = next(e['payload'] for e in events if e['kind'] == 'observed')
        original_prepared = next(e['payload'] for e in original if e['kind'] == 'prepared')
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        if (native['state'] != 'reverted' or native['before'] != original_prepared['before']
                or native['after'] != observed['after'] or native['current'] != observed['after']):
            raise JournalError('RECOVERY_UNRESOLVED', 'Fresh complete terminal inverse differs; quarantine retained')
        if marker is not None and marker != {'domain': context['domain'], 'command': 'retain_inverse',
                'native_token': native_token, 'automatic_retry': False}:
            raise JournalError('RECOVERY_UNRESOLVED', 'Another command owns retention quarantine')
        request = original[0]['payload']
        field_observation(request, native, native_token, 'undo', observed)
        if request['operation'] in ORDER_OPERATIONS:
            graphical = graphical_observation(prepared, original_prepared, native, native_token)
            if (native.get('current_parent_order_matches_terminal') is not True
                    or native.get('current_edge_dependencies_match_terminal') is not True
                    or native.get('parent_order_current') != prepared.get('parent_order_expected')
                    or native.get('parent_order_effects') != observed.get('parent_order_effects')
                    or any(observed.get(key) != value for key, value in graphical.items())):
                raise JournalError('RECOVERY_UNRESOLVED', 'Native inverse order/graphical proof differs')
            drawing.recovery(prepared, original_prepared, native, token=native_token,
                diagram=request['diagram'], original_effects=next(e['payload'].get('drawing_order_effects', [])
                    for e in original if e['kind'] == 'observed'),
                source_lookup=lambda witness: log.causal_drawing_source(witness, request), component_oid=request['domain']['oid'])
        if actual is not None and recorded is None:
            log._append(log._path(token), events, 'recovery_retained', proof)
        operation = original[0]['payload'].get('operation')
        required_head = next((e['payload'] for e in events if e['kind'] == 'topology_head_snapshot_required'), None)
        if required_head is not None:
            if actual is None or required_head != {
                    'native_token': native_token, 'owner_change_id': token, 'state': 'reverted',
                    'previous_owner_change_id': native_token, 'profile': 'actual_topology_owned_snapshot_v1'}:
                raise JournalError('RECOVERY_UNRESOLVED', 'Required actual topology head ownership differs')
            # Only a fresh fixed read is permitted here, never a repeated handoff.
            with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                log.record_topology_head(log._path(token), events, adapter, context['domain'],
                    native_token, token, 'reverted', operation, native_token)
        from bd_field_execution import OPERATIONS as managed_operations
        if (actual is not None and operation in managed_operations
                and not any(e['kind'] == 'managed_inverse_ready' for e in events)):
            log._append(log._path(token), events, 'managed_inverse_ready', {
                'native_token': native_token, 'owner_change_id': token,
                'operation': operation, 'state': 'reverted'})
        log._append(log._path(token), events, 'recovery_retention_reconciled', {
            'retained': actual is not None, 'native_token': native_token, 'owner_change_id': token,
            'current_sha256': fingerprint(native['current']), 'model_setters_called': 0, 'dispatch_count': 0,
            'automatic_retry': False})
        if marker is not None:
            pending.confirmed(marker_path)
        result.update(reconciled=True, instance_quarantined=False, receipt=log.receipt(token, events))
    return result


def managed_status(log, token, events, original, native_token, native, context, marker, marker_path, reconcile):
    preparation = next(e['payload'] for e in events if e['kind'] == 'prepared')
    execution = preparation['managed_inverse']
    if (execution['native_token'] != native_token or execution['result_change_id'] != token
            or execution['head_change_id'] != events[0]['payload']['reverts']
            or execution['expected_state'] not in ('applied', 'reverted')):
        raise JournalError('RECOVERY_UNRESOLVED', 'Durable managed execution context differs')
    # Recompute from this history head's actual observations, rather than from
    # the first change or from an unverified inverse_expected journal value.
    head = log.read(execution['head_change_id'])
    from bd_managed_topology import OPERATIONS as topology_operations
    topology = original[0]['payload']['operation'] in topology_operations
    topology_context = None
    try:
        if topology:
            from bd_managed_topology import candidate, actual_head
            ancestry = log.origin(execution['head_change_id'])
            actual = actual_head(head, source=original[0]['payload'], token=native_token,
                owner=execution['head_change_id'], state=execution['expected_state'], sequence=len(ancestry['chain']))
            topology_context = {**execution, 'source': original[0]['payload'], 'topology_head': actual,
                'before': actual['before'], 'after': actual['after']}
            value, _ = candidate(topology_context, preparation['before'])
            if (not value['compatible'] or preparation.get('topology_head_sha256') != fingerprint(actual)
                    or preparation.get('topology_head_sequence') != actual['sequence']):
                raise ValueError('Managed recovery requires its own complete actual topology head')
            from bd_parent_order_effects import validate_inverse
            validate_inverse([{'kind': 'parent_order', 'before': actual['parent_before'], 'after': actual['parent_after']}],
                preparation['parent_order_before'], preparation['parent_order_expected'], token=native_token, diagram='Main')
            drawing.validate_inverse([{'kind': 'drawing_order', 'before': actual['drawing_before'], 'after': actual['drawing_after']}],
                preparation['drawing_order_before'], preparation['drawing_order_expected'], token=native_token, diagram='Main')
            expected = value['expected']
        else:
            from bd_field_inverse import expected_from_preparation
            head_before = next(e['payload']['before'] for e in head if e['kind'] == 'prepared')
            head_after = next(e['payload']['after'] for e in head if e['kind'] == 'observed')
            expected = expected_from_preparation(head_before, head_after, preparation,
                                                  operation=original[0]['payload']['operation'])
        if fingerprint(expected) != fingerprint(preparation['inverse_expected']):
            raise ValueError('Managed durable expectation differs from actual head patch')
    except (ValueError, TypeError, KeyError) as error:
        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
    state = 'applied' if execution['expected_state'] == 'reverted' else 'reverted'
    original_before = next(e['payload']['before'] for e in original if e['kind'] == 'prepared')
    if native['before'] != original_before or 'material_ownership' not in native or 'managed_execution' not in native:
        raise JournalError('RECOVERY_UNRESOLVED', 'Complete managed source and native ownership evidence required')
    native_context = {'head_change_id': execution['head_change_id'], 'result_change_id': token,
        'expected_state': execution['expected_state'], 'after_state': state}
    owner_before = {'profile': 'retained_inverse_v1', 'native_token': native_token, 'owner_change_id': execution['head_change_id']}
    owner_after = {**owner_before, 'owner_change_id': token}
    result = {'change_id': token, 'native_state': native['state'], 'material_ownership': native['material_ownership'],
        'model_setters_called': 0, 'dispatch_count': 0, 'automatic_retry': False, 'reconciled': False,
        'instance_quarantined': marker is not None, 'current_matches_terminal_observation': native['current'] == native['after']}
    if 'field_execution' in native:
        result['field_execution'] = native['field_execution']
    if topology:
        result['topology_execution'] = native.get('topology_execution')
    if not reconcile:
        result['receipt'] = log.receipt(token, events)
        return result
    marker_context = {k: execution[k] for k in ('head_change_id', 'expected_state', 'result_change_id')}
    model_marker = {'domain': context['domain'], 'command': 'managed_inverse', 'native_token': native_token,
        'automatic_retry': False, 'managed_context': marker_context}
    handoff_marker = {**model_marker, 'command': 'handoff_inverse',
        'managed_context': {**marker_context, 'expected_state': state}}
    if marker is not None and marker not in (model_marker, handoff_marker):
        raise JournalError('RECOVERY_UNRESOLVED', 'Another managed request owns quarantine')
    completed = (native['managed_execution'] == native_context and native['state'] == state
        and native['current'] == native['after'] == preparation['inverse_expected']
        and native['material_ownership'] in (owner_before, owner_after))
    unexecuted = (native['state'] == execution['expected_state'] and native['current'] == preparation['before']
        and native['material_ownership'] == owner_before and native['managed_execution'] != native_context)
    if not completed and not unexecuted:
        raise JournalError('RECOVERY_UNRESOLVED', 'No exact complete managed terminal proof; quarantine retained')
    if unexecuted:
        if log.receipt(token, events)['status'] not in ('outcome_unknown', 'interrupted_before_apply', 'rejected', 'conflict'):
            raise JournalError('RECOVERY_UNRESOLVED', 'Unexecuted native state contradicts durable completion')
        log._append(log._path(token), events, 'finished', {'status': 'rejected', 'setter_called': False,
            'automatic_retry': False, 'error': 'Fresh managed state proves execution did not start'})
        log._append(log._path(token), events, 'managed_reconciliation', {'executed': False, 'dispatch_count': 0})
        if marker is not None:
            pending.confirmed(marker_path)
        result.update(reconciled=True, instance_quarantined=False, executed=False, receipt=log.receipt(token, events))
        return result
    observed = next((e['payload'] for e in events if e['kind'] == 'observed'), None)
    if topology:
        if any(native.get(key) is not True for key in ('current_topology_native_matches_terminal',
                'current_topology_source_matches_terminal', 'current_parent_order_matches_terminal',
                'current_drawing_order_matches_terminal', 'current_edge_dependencies_match_terminal',
                'current_graphical_matches_terminal')):
            raise JournalError('RECOVERY_UNRESOLVED', 'Complete fresh topology native/source/order/endpoint proof required')
        from types import SimpleNamespace
        from bd_managed_topology import observed as topology_observed
        try:
            fields = topology_observed(SimpleNamespace(topology_execution=native.get('topology_execution'),
                parent_order_effects=native.get('parent_order_effects'), drawing_order_effects=native.get('drawing_order_effects'),
                graphical_current=native.get('graphical_started'), graphical_actual=native.get('graphical_actual')),
                topology_context, preparation, native['current'])
            if (native.get('parent_order_current') != preparation['parent_order_expected']
                    or native.get('drawing_order_current') != preparation['drawing_order_expected']
                    or native.get('parent_order_started') != preparation['parent_order_before']
                    or native.get('drawing_order_started') != preparation['drawing_order_before']
                    or observed is not None and any(observed.get(key) != value for key, value in fields.items())):
                raise ValueError('Durable topology actual proof contradicts fresh native terminal')
        except (ValueError, TypeError, KeyError) as error:
            raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
    else:
        fields = field_observation(original[0]['payload'], native, native_token,
                                  'redo' if state == 'applied' else 'undo', observed)
    if observed is not None and observed['after'] != native['current']:
        raise JournalError('RECOVERY_UNRESOLVED', 'Durable actual after contradicts fresh native state')
    if observed is None:
        log._append(log._path(token), events, 'observed', {'after': native['current'], 'library_effects': [], 'scope_effects': [], 'parent_order_effects': [], **fields})
    if log.receipt(token, events)['status'] == 'outcome_unknown':
        log._append(log._path(token), events, 'finished', {'status': 'verified_local',
            'differences': differences(preparation['before'], native['current']), 'reverts': execution['head_change_id'],
            'managed_inverse': execution, 'automatic_retry': False})
    if log.receipt(token, events)['status'] != 'verified_local':
        raise JournalError('RECOVERY_UNRESOLVED', 'Managed journal lacks verified complete execution')
    handoff = next((e['payload'] for e in events if e['kind'] == 'recovery_handoff_started'), None)
    expected_intent = {'native_token': native_token, 'previous_owner_change_id': execution['head_change_id'],
        'owner_change_id': token, 'expected_state': state, 'profile': 'retained_inverse_v1', 'automatic_retry': False}
    proof = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': native_token,
        'previous_owner_change_id': execution['head_change_id'], 'owner_change_id': token,
        'state': state, 'model_setters_called': 0}
    recorded = next((e['payload'] for e in events if e['kind'] == 'recovery_handed_off'), None)
    if handoff is not None and handoff != expected_intent:
        raise JournalError('RECOVERY_UNRESOLVED', 'Managed metadata intent differs')
    if recorded is not None and (recorded != proof or native['material_ownership'] != owner_after):
        raise JournalError('RECOVERY_UNRESOLVED', 'Managed proof differs from fresh owner')
    if native['material_ownership'] == owner_after and handoff is None:
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh handoff has no preceding durable intent')
    log._append(log._path(token), events, 'managed_reconciliation', {'executed': True,
        'handed_off': native['material_ownership'] == owner_after, 'dispatch_count': 0,
        'current_sha256': fingerprint(native['current'])})
    if native['material_ownership'] == owner_after:
        if recorded is None:
            log._append(log._path(token), events, 'recovery_handed_off', proof)
        required_head = next((e['payload'] for e in events if e['kind'] == 'topology_head_snapshot_required'), None)
        if required_head is not None:
            if required_head != {'native_token': native_token, 'owner_change_id': token, 'state': state,
                    'previous_owner_change_id': execution['head_change_id'], 'profile': 'actual_topology_owned_snapshot_v1'}:
                raise JournalError('RECOVERY_UNRESOLVED', 'Required managed actual topology head differs')
            with NativeStructureAdapter(context['component'], original[0]['payload']['diagram']) as adapter:
                log.record_topology_head(log._path(token), events, adapter, context['domain'],
                    native_token, token, state, original[0]['payload']['operation'], execution['head_change_id'])
        log._append(log._path(token), events, 'managed_inverse_ready', {'native_token': native_token, 'owner_change_id': token, 'state': state})
    if marker is not None:
        pending.confirmed(marker_path)
    if handoff is None:
        # The model completion was lost before any metadata handoff was tried.
        # Its complete proof permits one first handoff; this is not a replay.
        with NativeStructureAdapter(context['component'], original[0]['payload']['diagram']) as adapter:
            log.handoff_managed_material(log._path(token), events, adapter, context['domain'], execution)
        result['dispatch_count'] = 1
        result['material_ownership'] = owner_after if any(e['kind'] == 'recovery_handed_off' for e in events) else owner_before
    result.update(reconciled=True, executed=True, instance_quarantined=pending.pending_path(context['domain']).exists(),
        receipt=publish_after(log, log.receipt(token, events), context['domain'], context['component']))
    return result


def inspect(args, session, budget):
    if (set(args) - {'query','change_id','reconcile','max_bytes'} or
            type(args.get('reconcile', False)) is not bool):
        service.fail('INVALID_INPUT', 'recovery requires change_id and optional reconcile boolean')
    log = StructureJournal(service.STORE/'edits')
    token = args.get('change_id')
    try:
        context = load_binding(token)
        if context['domain']['session'] != session:
            service.fail('IDENTITY_UNRESOLVED', 'Original Doge session required for live recovery')
        with file_lock(log.root/'journal.lock'), service.live_lock():
            events = log.read(token)
            source = events[0]['payload']
            inverse = 'reverts' in source
            native_token = log.origin(token)['change_id'] if inverse else token
            original = log.read(native_token) if inverse else events
            request = original[0]['payload']
            if 'operation' not in request or request['domain'] != context['domain'] or request['component'] != context['component']:
                service.fail('INVALID_INPUT', 'Bound structural edit required')
            path = pending.pending_path(context['domain'])
            resource_prepared = next((e['payload']['commit_resources_prepared'] for e in events
                if e['kind'] == 'prepared' and 'commit_resources_prepared' in e['payload']), None)
            capture_state = commit_attempt.history(events, token=token)
            if capture_state is not None and capture_state['prepared'] is None:
                if args.get('reconcile', False):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Incomplete capture permits only original attempt inspection, never replay or reconciliation')
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    attempt = commit_attempt.query(adapter, context['domain'], capture_state['requested'])
                log._append(log._path(token), events, 'commit_capture_attempt_observed', attempt)
                return service.paged(service.dump(commit_attempt.summary(attempt, capture_state['requested'])),
                    {'query': 'recovery', 'change_id': token,
                     'source': 'actual original capture attempt; preparation remains unconfirmed; no model execution'}, session, budget)
            if resource_prepared is not None:
                if args.get('reconcile',False):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Capture-only resource query cannot reconcile a model write or release material')
                from bd_commit_resources import summary as resource_summary
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    resource_status=adapter.commit_resource_status(context['domain'],native_token,check=True)
                    owner_current = None
                    if resource_prepared['profile'] == 'native_commit_prepare_v6':
                        from bd_commit_owner_current import observe_logged
                        owner_current = observe_logged(log,token,adapter,context['domain'],native_token,resource_prepared)
                if resource_status['prepared_receipt'] != resource_prepared:
                    raise JournalError('RECOVERY_UNRESOLVED', 'Fresh resource preparation differs from original WAL')
                # The owner observation appends its own immutable event. Reload
                # the chain so this resource check cannot overwrite its slot.
                log._append(log._path(token),log.read(token),'commit_resource_checked',resource_status)
                resource_reply=resource_summary(resource_status)
                if owner_current is not None:
                    resource_reply['persistent_owner_current']=owner_current
                    resource_reply['current_persistent_owners_checked']=True
                    resource_reply['coverage']=resource_reply['coverage'].replace(
                        'current persistent owners not checked',
                        'current persistent owners checked through separate original-bound WAL evidence')
                return service.paged(service.dump(resource_reply),
                    {'query':'recovery','change_id':token,'source':'actual retained prepared resource diff; no model execution'},session,budget)
            if any(e['kind']=='prepared' and 'create_finalize' in e['payload'] for e in events):
                from bd_create_finalize_journal import reconcile_locked as reconcile_finalize
                with NativeStructureAdapter(context['component'],request['diagram']) as adapter:
                    finalized=reconcile_finalize(log,token,adapter,commit=args.get('reconcile',False))
                if args.get('reconcile',False):
                    finalized['receipt']=publish_after(log,finalized['receipt'],context['domain'],context['component'])
                return service.paged(service.dump(finalized),{'query':'recovery','change_id':token,
                    'source':'exact retained original graphical finalization terminal'},session,budget)
            if any(e['kind'] == 'prepared' and 'create_history' in e['payload'] for e in events):
                from bd_create_history_journal import reconcile_locked as reconcile_create_history
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    creation_history_result = reconcile_create_history(log, token, adapter, commit=args.get('reconcile', False))
                if args.get('reconcile', False):
                    creation_history_result['receipt'] = publish_after(log, creation_history_result['receipt'],
                        context['domain'], context['component'])
                return service.paged(service.dump(creation_history_result),
                    {'query': 'recovery', 'change_id': token, 'source': 'exact retained graphical creation history terminal'}, session, budget)
            if any(e['kind'] == 'prepared' and 'create_material_prepared' in e['payload'] for e in events):
                from bd_create_journal import reconcile_locked as reconcile_creation
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    creation_result = reconcile_creation(log, token, adapter, commit=args.get('reconcile', False))
                if args.get('reconcile', False):
                    creation_result['receipt'] = publish_after(log, creation_result['receipt'],
                        context['domain'], context['component'])
                return service.paged(service.dump(creation_result),
                    {'query': 'recovery', 'change_id': token, 'source': 'exact retained creation terminal'}, session, budget)
            if (any(e['kind'] == 'prepared' and ('connect_history' in e['payload']
                    or 'connect_material_prepared' in e['payload']) for e in events)):
                from bd_connect_journal import reconcile_locked
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    if adapter.connect_history_capable is not True:
                        raise JournalError('RECOVERY_UNRESOLVED', 'Retained connection recovery profile is disabled')
                    connection_result = reconcile_locked(log, token, adapter, commit=args.get('reconcile', False))
                if args.get('reconcile', False):
                    connection_result['receipt'] = publish_after(log, connection_result['receipt'],
                        context['domain'], context['component'])
                return service.paged(service.dump(connection_result),
                    {'query': 'recovery', 'change_id': token, 'source': 'fresh retained connection terminal'}, session, budget)
            if any(e['kind'] == 'field_failure_compensation_evidence' for e in events):
                from bd_field_failure_recovery import reconcile as classify_compensation, completed as compensated_history
                if (not path.exists() and log.receipt(token, events)['status'] == 'compensated'
                        and any(e['kind'] == 'field_failure_compensation_reconciled' for e in events)):
                    return service.paged(service.dump(compensated_history(log, token, events, context)),
                        {'query': 'recovery', 'change_id': token}, session, budget)
                failure_marker = json.loads(path.read_text()) if path.exists() else None
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    failure_result = classify_compensation(log, token, events, context,
                        failure_marker, path, adapter, confirm=args.get('reconcile', False))
                return service.paged(service.dump(failure_result),
                    {'query': 'recovery', 'change_id': token}, session, budget)
            if (any(e['kind']=='recovery_released' for e in events) and
                    any(e['kind']=='reconciliation' for e in events) and not path.exists()):
                if request['operation'] in ORDER_OPERATIONS:
                    # Released native records cannot supply missing durable evidence.
                    preparation = next(e['payload'] for e in events if e['kind'] == 'prepared')
                    original_preparation = next(e['payload'] for e in original if e['kind'] == 'prepared')
                    observed = next(e['payload'] for e in events if e['kind'] == 'observed')
                    reconciled = next(e['payload'] for e in reversed(events) if e['kind'] == 'reconciliation')
                    try:
                        validate_current(original_preparation.get('graphical_current'))
                        actual_summary = graphical_summary(preparation.get('graphical_current'), observed.get('graphical_actual'))
                        if (observed.get('graphical_current') != preparation.get('graphical_current')
                                or observed.get('graphical_differences') != actual_summary
                                or reconciled.get('graphical_differences') != actual_summary):
                            raise ValueError('Released recovery lacks matching durable graphical evidence')
                        if inverse:
                            from bd_delete_inverse import expected_from_preparation
                            original_after = next(e['payload']['after'] for e in original if e['kind'] == 'observed')
                            expected = expected_from_preparation(original_preparation['before'], original_after, preparation)
                            if fingerprint(observed.get('after')) != fingerprint(expected):
                                raise ValueError('Released inverse differs from durable three-way expectation')
                        original_drawing = (next(e['payload'].get('drawing_order_effects', [])
                            for e in original if e['kind'] == 'observed') if inverse else None)
                        drawing.released(preparation, original_preparation, observed, reconciled,
                            token=native_token, diagram=request['diagram'], original_effects=original_drawing,
                            source_lookup=lambda proof: log.causal_drawing_source(proof, request), component_oid=request['domain']['oid'])
                    except (ValueError, KeyError, TypeError) as error:
                        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
                receipt = publish_after(log, log.receipt(token, events), context['domain'], context['component'])
                return service.paged(service.dump({'change_id':token,'native_state':'released',
                    'receipt':receipt,'reconciled':True,'model_setters_called':0,'instance_quarantined':False,
                    'source':'durable reconciled terminal result; no native read'}),
                    {'query':'recovery','change_id':token},session,budget)
            marker = json.loads(path.read_text()) if path.exists() else None
            source_completion = None
            with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                if (inverse and request['operation'] in FIELD_OPERATIONS
                        and callable(getattr(adapter, 'source_recovery', None))):
                    from bd_source_compensation import advance as advance_source
                    source_completion = advance_source(log, token, events, request, native_token, marker, adapter,
                                                       reconcile=args.get('reconcile', False))
                    if source_completion is not None and not source_completion.get('requires_fresh_terminal'):
                        return service.paged(service.dump(source_completion), {'query': 'recovery', 'change_id': token}, session, budget)
                if source_completion is None:
                    native = adapter.recovery_status(context['domain'], native_token)
            if source_completion is not None:
                # A fresh connection, not the apply reply, proves the complete
                # retained terminal before the ordinary WAL/pending reconciliation.
                with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                    native = adapter.recovery_status(context['domain'], native_token)
                if native.get('field_execution') != source_completion['field_execution']:
                    raise JournalError('RECOVERY_UNRESOLVED', 'Fresh terminal differs after source compensation; retain quarantine')
            result = {'change_id':token,'native_state':native['state'],'model_setters_called':0,
                      'current_matches_terminal_observation':native['after'] is not None and native['after'] == native['current'],
                      'automatic_retry':False,'reconciled':False}
            if 'field_execution' in native:
                result['field_execution'] = native['field_execution']
            if request['operation'] in ORDER_OPERATIONS:
                result['current_graphical_matches_terminal'] = native.get('current_graphical_matches_terminal') is True
            marker = json.loads(path.read_text()) if path.exists() else None
            result['instance_quarantined'] = marker is not None
            if any(e['kind'] == 'prepared' and 'managed_inverse' in e['payload'] for e in events):
                result = managed_status(log, token, events, original, native_token, native, context, marker, path, args.get('reconcile', False))
                return service.paged(service.dump(result), {'query': 'recovery', 'change_id': token,
                    'source': 'fresh managed native execution and material ownership'}, session, budget)
            if inverse and any(e['kind'] == 'recovery_retention_started' for e in events):
                result = retention_status(log, token, events, original, native_token, native, context, marker, path, args.get('reconcile', False))
                return service.paged(service.dump(result), {'query': 'recovery', 'change_id': token,
                    'source': 'fresh retained native material ownership'}, session, budget)
            if args.get('reconcile'):
                expected_states = ('reverted', 'restore_mismatch') if inverse else ('applied',)
                if native['state'] not in expected_states or not result['current_matches_terminal_observation']:
                    raise JournalError('RECOVERY_UNRESOLVED', 'No matching terminal observation; quarantine retained')
                prepared = next(e['payload']['before'] for e in original if e['kind'] == 'prepared')
                if native['before'] != prepared:
                    raise JournalError('RECOVERY_UNRESOLVED', 'Native before differs from durable preparation')
                if marker and (marker['domain'] != context['domain'] or marker['native_token'] != native_token or
                               marker['command'] != ('revert' if inverse else 'apply')):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Another request owns the instance quarantine')
                effects = native.get('library_effects', [])
                scopes = native.get('scope_effects', [])
                orders = native.get('parent_order_effects', [])
                preparation = next(e['payload'] for e in events if e['kind'] == 'prepared')
                inverse_expected = prepared
                if inverse and request['operation'] in ORDER_OPERATIONS and (
                        ('inverse_expected' in preparation) != (native.get('inverse_expected') is not None)):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Native and durable inverse expectation presence differs')
                if inverse and request['operation'] in ORDER_OPERATIONS and 'inverse_expected' in preparation:
                    from bd_delete_inverse import expected_from_preparation
                    original_after = next(e['payload']['after'] for e in original if e['kind'] == 'observed')
                    try:
                        inverse_expected = expected_from_preparation(prepared, original_after, preparation)
                    except (ValueError, TypeError, KeyError) as error:
                        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
                    if fingerprint(native.get('inverse_expected')) != fingerprint(inverse_expected):
                        raise JournalError('RECOVERY_UNRESOLVED', 'Native inverse expectation differs from durable three-way plan')
                if inverse and preparation.get('inverse_analysis', {}).get('profile') == 'ordinary_field_inverse_v1':
                    from bd_field_inverse import expected_from_preparation
                    original_after = next(e['payload']['after'] for e in original if e['kind'] == 'observed')
                    try:
                        inverse_expected = expected_from_preparation(prepared, original_after, preparation,
                                                                      operation=request['operation'])
                    except (ValueError, TypeError, KeyError) as error:
                        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
                    if fingerprint(native.get('inverse_expected')) != fingerprint(inverse_expected):
                        raise JournalError('RECOVERY_UNRESOLVED', 'Native field expectation differs from durable three-way plan')
                order_before = preparation.get('parent_order_before')
                order_expected = preparation.get('parent_order_expected')
                graphical = {}
                if request['operation'] in ORDER_OPERATIONS:
                    validate_order_preparation(order_before, order_expected, token=native_token, diagram=request['diagram'])
                    if (native.get('current_parent_order_matches_terminal') is not True
                            or native.get('current_edge_dependencies_match_terminal') is not True
                            or not order_postcondition(orders, order_before, order_expected)
                            or native.get('parent_order_started') != order_before
                            or native.get('parent_order_current') != order_expected):
                        raise JournalError('RECOVERY_UNRESOLVED', 'Durable CURRENT/actual parent effect/native terminal evidence differs')
                    original_preparation = next(e['payload'] for e in original if e['kind'] == 'prepared')
                    if native.get('parent_order_original') != original_preparation.get('parent_order_before'):
                        raise JournalError('RECOVERY_UNRESOLVED', 'Native original parent image differs from durable preparation')
                    graphical = graphical_observation(preparation, original_preparation, native, native_token)
                    if inverse:
                        original_orders = next(e['payload'].get('parent_order_effects', [])
                            for e in original if e['kind'] == 'observed')
                        validate_order_inverse(original_orders, order_before, order_expected,
                            token=native_token, diagram=request['diagram'])
                    drawing_original = (next(e['payload'].get('drawing_order_effects', []) for e in original if e['kind'] == 'observed')
                                        if inverse else None)
                    graphical.update(drawing.recovery(preparation, original_preparation, native,
                        token=native_token, diagram=request['diagram'], original_effects=drawing_original,
                        source_lookup=lambda proof: log.causal_drawing_source(proof, request), component_oid=request['domain']['oid']))
                    if preparation.get('drawing_order_witness') is not None:
                        graphical['drawing_order_witness_sha256'] = fingerprint(preparation['drawing_order_witness'])
                hierarchy = (request['operation'] == 'create_block' and request['arguments'][1] == 'hierarchy'
                             or request['operation'] in ('create_hierarchy_port', 'delete_hierarchy_port'))
                if hierarchy and (not isinstance(scopes, list) or not scopes or
                                  (request['operation'] == 'create_block' and len(scopes) != 1) or
                                  native.get('current_scopes_match_terminal') is not True):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Hierarchy terminal and current child scope evidence required')
                shared_enum = (request['operation'] == 'create_block' and
                               request['arguments'][1] == 'enumeration' and
                               request['arguments'][5].startswith('NEWENUM|'))
                if shared_enum and (not isinstance(effects, list) or len(effects) != 1 or
                                    native.get('current_library_matches_terminal') is not True):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Shared enum terminal and current library evidence required')
                previous_status = log.receipt(token, events)['status']
                observed = next((e['payload'] for e in events if e['kind'] == 'observed'), None)
                fields = field_observation(request, native, native_token, 'undo' if inverse else 'forward', observed)
                if observed is not None and (observed['after'] != native['after']
                        or observed.get('library_effects', []) != effects or observed.get('scope_effects', []) != scopes
                        or observed.get('parent_order_effects', []) != orders):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Durable after conflicts with native terminal observation')
                if graphical and observed is not None and any(observed.get(key) != value for key, value in graphical.items()):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Durable raw actual conflicts with native terminal evidence')
                if previous_status == 'outcome_unknown':
                    before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')
                    after = native['after']
                    delta = differences(before, after)
                    if inverse:
                        original_effects = next(e['payload'].get('library_effects', [])
                                                for e in original if e['kind'] == 'observed')
                        inverse_effects = [{**effect, 'before':effect['after'], 'after':effect['before']}
                                           for effect in original_effects]
                        original_scopes = next(e['payload'].get('scope_effects', [])
                                               for e in original if e['kind'] == 'observed')
                        verified = (native['state'] == 'reverted' and fingerprint(after) == fingerprint(inverse_expected) and effects == inverse_effects
                                    and scopes == invert_scopes(original_scopes)
                                    and order_postcondition(orders, order_before, order_expected))
                        finished = {'status':'verified_local' if verified else 'restore_mismatch',
                                    'reverts':native_token,'differences':delta,'library_effects':effects,
                                    'scope_effects':scopes,'scope_differences':scope_differences(scopes),
                                    'parent_order_effects':orders,'parent_order_differences':order_differences(orders)}
                    else:
                        verified = (postcondition(request, before, after) and library_postcondition(request, effects, delta)
                                    and scope_postcondition(request, scopes, before, after)
                                    and order_postcondition(orders, order_before, order_expected))
                        finished = {'status':'applied_observed' if verified else 'postcondition_mismatch',
                                    'requested_effect_verified':verified,'differences':delta,'library_effects':effects,
                                    'scope_effects':scopes,'scope_differences':scope_differences(scopes),
                                    'parent_order_effects':orders,'parent_order_differences':order_differences(orders),
                                    'recovery':'retained_native_objects_same_ASCET_process','outside_scope':'not_observed'}
                    if graphical:
                        finished['graphical_differences'] = graphical['graphical_differences']
                        if 'drawing_order_effects' in graphical:
                            finished['drawing_order_differences'] = graphical['drawing_order_differences']
                    log._append(log._path(token), events, 'reconciliation', {'native_state':native['state'],'setter_called':False,
                        **({'graphical_differences': graphical['graphical_differences']} if graphical else {}),
                        **({'drawing_order_differences': graphical['drawing_order_differences']}
                           if 'drawing_order_effects' in graphical else {}),
                        **({'drawing_order_witness_sha256': graphical['drawing_order_witness_sha256']}
                           if 'drawing_order_witness_sha256' in graphical else {})})
                    if observed is None:
                        log._append(log._path(token), events, 'observed', {'after':after,'library_effects':effects,
                            'scope_effects':scopes,'parent_order_effects':orders, **graphical, **fields})
                    log._append(log._path(token), events, 'finished', finished)
                elif previous_status not in ('applied_observed','postcondition_mismatch','verified_local','restore_mismatch'):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Journal was not started or has a conflicting terminal result')
                elif graphical and observed is None:
                    raise JournalError('RECOVERY_UNRESOLVED', 'Terminal journal lacks durable actual graphical evidence')
                # Durable final evidence precedes clearing the cross-STORE barrier.
                if marker:
                    pending.confirmed(path)
                receipt = log.receipt(token, events)
                result.update(reconciled=True, instance_quarantined=False, receipt=receipt)
                try:
                    result['receipt'] = publish_after(log, receipt, context['domain'], context['component'])
                except Exception as error:
                    result['snapshot_publication_error'] = str(error)
                if inverse and receipt['status'] == 'verified_local':
                    try:
                        with NativeStructureAdapter(context['component'], request['diagram']) as adapter:
                            if getattr(adapter, 'retained_inverse_material_capable', False) is True:
                                log.retain_inverse_material(log._path(token), events, adapter, context['domain'], native_token, token)
                            else:
                                released = adapter.release(context['domain'], native_token,
                                    **({'inverse_id': token} if inverse and getattr(adapter, 'causal_drawing_witness_capable', False) else {}))
                                log._append(log._path(token), events, 'recovery_released', released)
                    except Exception as error:
                        log._append(log._path(token), events, 'recovery_release_failed', {'error':str(error)})
            return service.paged(service.dump(result), {'query':'recovery','change_id':token,'source':'live native recovery record'}, session, budget)
    except JournalError as error:
        service.fail(error.code, str(error))
