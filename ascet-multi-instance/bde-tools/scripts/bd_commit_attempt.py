"""Durable capture intent and read-only inspection of incomplete preparation.

An absent native record cannot prove that a lost preparation was never run.
Inspection neither replays preparation nor promotes a reply to a prepared WAL.
"""
import re
from bd_edit_journal import JournalError, clone


REQUEST_PROFILE = 'native_commit_capture_request_v1'
ATTEMPT_PROFILE = 'native_commit_attempt_v1'
RECEIPT_PROFILES = frozenset('native_commit_prepare_v' + str(i) for i in range(1, 7))
REQUEST_KEYS = frozenset(('profile', 'native_token', 'resource_token', 'receipt_profile'))
ATTEMPT_KEYS = frozenset(('profile action native_token resource_token component_oid generation '
    'prepared_edit_present resource_material_present same_original_binding material_phase prepared_receipt '
    'reference_baseline_phase reference_profile_index original_material_held model_setters_called '
    'store_called commit_called write_authorized inverse_authorized full_commit_resource_closure').split())


def validate_request(value, *, token):
    if not isinstance(token, str) or re.fullmatch(r'edit_[0-9a-f]{64}', token) is None:
        raise ValueError('Exact original capture request token required')
    if (not isinstance(value, dict) or set(value) != REQUEST_KEYS
            or value['profile'] != REQUEST_PROFILE or value['native_token'] != token
            or value['resource_token'] != 'commit_' + token[5:]
            or not isinstance(value['receipt_profile'], str) or value['receipt_profile'] not in RECEIPT_PROFILES):
        raise ValueError('Complete fixed original capture request and receipt scope required')
    return clone(value)


def capture_request(token, receipt_profile):
    return validate_request(dict(profile=REQUEST_PROFILE, native_token=token,
        resource_token='commit_' + token[5:], receipt_profile=receipt_profile), token=token)


def validate_attempt(value, *, requested, component_oid):
    requested = validate_request(requested, token=requested.get('native_token') if isinstance(requested, dict) else None)
    token = requested['native_token']
    if (not isinstance(component_oid, str) or not component_oid or not isinstance(value, dict)
            or set(value) != ATTEMPT_KEYS or value['profile'] != ATTEMPT_PROFILE
            or value['action'] != 'attempt' or value['native_token'] != token
            or value['resource_token'] != requested['resource_token']
            or value['component_oid'] != component_oid):
        raise ValueError('Exact original read-only capture attempt binding required')
    for key in ('prepared_edit_present', 'resource_material_present', 'same_original_binding', 'original_material_held'):
        if type(value[key]) is not bool:
            raise ValueError('Actual capture attempt presence boolean required: ' + key)
    for key in ('store_called', 'commit_called', 'write_authorized', 'inverse_authorized', 'full_commit_resource_closure'):
        if value[key] is not False:
            raise ValueError('Attempt inspection cannot grant write/inverse/closure authority')
    if type(value['model_setters_called']) is not int or value['model_setters_called'] != 0:
        raise ValueError('Attempt inspection must execute zero model setters')
    if not value['resource_material_present']:
        if (value['same_original_binding'] or value['original_material_held']
                or any(value[key] is not None for key in ('generation', 'material_phase', 'prepared_receipt',
                    'reference_baseline_phase', 'reference_profile_index'))):
            raise ValueError('Absent material cannot supply retained capture evidence')
    else:
        if (value['same_original_binding'] is not True or value['original_material_held'] is not True
                or type(value['generation']) is not int or not 1 <= value['generation'] <= 2147483647
                or value['material_phase'] not in ('capturing', 'read-error', 'captured')):
            raise ValueError('Present material requires its original retained binding and phase')
        phase, index = value['reference_baseline_phase'], value['reference_profile_index']
        if phase is not None:
            if requested['receipt_profile'] not in ('native_commit_prepare_v5', 'native_commit_prepare_v6') or phase not in ('profiling', 'scanning', 'captured', 'failed'):
                raise ValueError('Reference baseline attempt is outside the requested capture scope')
            if index is not None and (type(index) is not int or not 1 <= index <= 16):
                raise ValueError('Exact original bounded reference profile index required')
            if phase in ('scanning', 'captured') and index is None:
                raise ValueError('A scanned baseline requires its original profile index')
        elif index is not None:
            raise ValueError('Reference profile index requires a baseline attempt')
        prepared = value['prepared_receipt']
        if prepared is not None:
            from bd_commit_resources import validate
            prepared = validate(prepared, token=token, component_oid=component_oid)
            if (prepared['profile'] != requested['receipt_profile'] or prepared['generation'] != value['generation']
                    or value['material_phase'] != 'captured'):
                raise ValueError('Attempt receipt cannot downgrade requested capture scope or change its generation')
            if prepared['profile'] in ('native_commit_prepare_v5', 'native_commit_prepare_v6'):
                if phase != 'captured' or prepared['reference_file_baseline']['profile_index'] != index:
                    raise ValueError('Prepared baseline must match the original captured attempt')
    return clone(value)


def summary(value, requested):
    """A queried receipt is evidence, not an automatically reconciled prepare."""
    return {**{key: clone(value[key]) for key in ATTEMPT_KEYS - {'prepared_receipt'}},
        'requested_receipt_profile': requested['receipt_profile'],
        'native_prepared_receipt_present': value['prepared_receipt'] is not None,
        'preparation_confirmation': 'unconfirmed', 'automatic_retry': False,
        'current_absence_proves_not_executed': False}


def history(events, *, token):
    """Validate new capture WAL; older prepared-only journals stay supported."""
    requested_events = [(i, event) for i, event in enumerate(events) if event['kind'] == 'commit_capture_requested']
    attempts = [(i, event) for i, event in enumerate(events) if event['kind'] == 'commit_capture_attempt_observed']
    if not requested_events and not attempts:
        return None
    try:
        if len(requested_events) != 1:
            raise ValueError('Exactly one original durable capture request required; attempts cannot replay preparation')
        index, event = requested_events[0]
        requested = validate_request(event['payload'], token=token)
        if (index == 0 or events[0]['kind'] != 'intent'
                or any(e['kind'] in ('prepared', 'started', 'finished') for e in events[:index])):
            raise ValueError('Capture request must precede preparation and execution')
        oid = events[0]['payload']['domain']['oid']
        prepared_events = [(i, e) for i, e in enumerate(events) if e['kind'] == 'prepared']
        if len(prepared_events) > 1:
            raise ValueError('Multiple prepared receipts for one capture request')
        prepared = None
        if prepared_events:
            from bd_commit_resources import validate
            prepared_index, prepared_event = prepared_events[0]
            prepared = validate(prepared_event['payload']['commit_resources_prepared'], token=token, component_oid=oid)
            if prepared['profile'] != requested['receipt_profile']:
                raise ValueError('Prepared capture receipt differs from requested scope')
        checked = []
        for attempt_index, attempt in attempts:
            if attempt_index <= index or (prepared_events and attempt_index > prepared_index):
                raise ValueError('Incomplete capture attempt query requires a request without durable preparation')
            validated = validate_attempt(attempt['payload'], requested=requested, component_oid=oid)
            checked.append(dict(event_sha256=attempt['checksum'], as_of_utc=attempt['utc'],
                status=validated, model_edit_claimed=False, is_fresh_live_observation=False))
        # A request by itself never authorizes applying a possibly incomplete native record.
        if prepared is None and any(e['kind'] == 'started' for e in events):
            raise ValueError('Capture-enabled execution lacks complete durable preparation')
        return dict(requested=requested, prepared=prepared, attempts=checked)
    except (ValueError, KeyError, TypeError) as error:
        raise JournalError('JOURNAL_CORRUPT', str(error)) from error


def receipt_projection(state):
    return {**clone(state['requested']), 'status': 'prepared' if state['prepared'] is not None else 'unconfirmed',
        'automatic_retry': False, 'attempt_observations': len(state['attempts'])}


def query(adapter, domain, requested):
    """Only read the original attempt; opening enforces the original epoch."""
    requested = validate_request(requested, token=requested.get('native_token') if isinstance(requested, dict) else None)
    adapter._ensure_open(domain)
    value = adapter._exchange(dict(cmd='commit_resources', action='attempt', token=requested['native_token']))
    try:
        return validate_attempt(value, requested=requested, component_oid=domain['oid'])
    except (ValueError, KeyError, TypeError) as error:
        raise JournalError('RECOVERY_UNRESOLVED', str(error)) from error
