"""Choose only the next causal inverse from complete CURRENT execution evidence."""
from copy import deepcopy

from bd_class_current_prefix import inspect_current_prefix


def require(condition, message):
    if not condition:
        raise ValueError(message)


def recovery_intent(origin, events, classification, native_rows, *, recovery_events=()):
    proof = inspect_current_prefix(origin, events, classification, native_rows, recovery_events=recovery_events)
    require(not proof['terminal'], 'A terminal CURRENT origin cannot recover again')
    intent = events[0]['payload']
    return {'operation': 'class_current_execution_recovery', 'token': proof['token'],
            'domain': deepcopy(intent['domain']), 'database_session': intent['database_session'],
            'classification': {'publication': deepcopy(classification), 'owners': deepcopy(native_rows)},
            'verified_origin_state': deepcopy(proof['state']), 'unknown_step': proof['unknown_step'],
            'unknown_native_action_completed': proof['unknown_native_action_completed'],
            'reconciliation_required': deepcopy(proof['reconciliation_required']),
            'original_dispatch_replay_allowed': False, 'production_executor_available': False}


def inspect_untouched_metadata_retry(origin, events, prior_events, classification, native_rows):
    """A failed first metadata call may retry only with its complete state unchanged."""
    require(len(prior_events) == 2 and [row['kind'] for row in prior_events] == ['intent', 'step_started'],
            'Metadata retry requires only an intent and one unresolved metadata dispatch')
    prior = prior_events[0]['payload']
    fresh = recovery_intent(origin, events, classification, native_rows)
    require(all(prior.get(key) == value for key, value in fresh.items()),
            'Failed metadata recovery or its complete fresh classification changed')
    reconciliation = fresh['reconciliation_required']
    require(type(reconciliation) is dict, 'Metadata retry has no unresolved original action')
    oid = reconciliation['oid']
    intent = events[0]['payload']
    owner = next(row for row in intent['current_observation']['owners'] if row['oid'] == oid)
    dispatch = {'step': f'recovery/{oid}/reconcile_action', 'phase': 'recovery',
                'oid': oid, 'component': owner['component'], 'command': 'reconcile_action',
                'database_session': intent['database_session']}
    require(prior_events[1]['payload'] == dispatch,
            'Only the unchanged first zero-setter reconciliation may retry')
    return {'profile': 'class_current_untouched_metadata_retry_v1', 'dispatch': dispatch,
            'model_setters_called': 0, 'complete_classification_unchanged': True,
            'original_dispatch_replay_allowed': False,
            'scope': 'first reconciliation failed before changing its complete accounting state'}


def plan_current_recovery(origin, events, classification, native_rows, *, recovery_events=()):
    proof = inspect_current_prefix(origin, events, classification, native_rows, recovery_events=recovery_events)
    require(not proof['terminal'], 'A terminal CURRENT recovery cannot dispatch again')
    value = proof['state']
    intent = events[0]['payload']
    definition = intent['domain']['oid']
    roster = {owner['oid']: owner for owner in intent['current_observation']['owners']}
    initial = {owner['oid']: owner for owner in events[2]['payload']['owners']}
    phase, command, oid, manager, cost, effects = value['phase'], None, definition, 'publication', 0, []
    # A store's exact collateral inverse is known only after its real return.
    if proof['reconciliation_required']:
        oid = proof['reconciliation_required']['oid']
        command, manager = 'reconcile_action', 'current'
        effects = deepcopy(proof['reconciliation_required']['expected_native_changes'])
    elif value['release_completed']:
        command, manager = 'reconcile_release', 'journal'
    elif phase in ('ready', 'restored'):
        command = 'release' if value['restored_observed'] else 'observe_restored'
    elif phase in ('signature_arguments_set', 'publishing', 'published'):
        command, cost = 'abort_signature_arguments', 1
    elif phase == 'restore_signature_arguments_set':
        command, cost = 'restore_signature_commit', 1
    else:
        require(phase == 'restoring', 'CURRENT signature or native action is not recoverable')
        for oid, owner in reversed(value['owners'].items()):
            if owner['entry_state'] == 'restored':
                continue
            manager = 'current'
            for counter, total, prefix, plan in (
                    ('publish_store_undo_completed', 'publish_store_undo_steps', 'undo_publish_store/',
                     owner['publish_store_undo_plan']),
                    ('inverse_completed', 'forward_completed', 'undo_apply/',
                     initial[oid]['inverse_plan'][initial[oid]['forward_steps'] - owner['forward_completed']:])):
                if owner[counter] < owner[total]:
                    command = prefix + str(owner[counter] + 1)
                    effects, cost = deepcopy(plan[owner[counter]]['expected_native_changes']), 1
                    break
            if command:
                break
            if owner['entry_state'] != 'source_restored':
                command, cost = 'restore_store', owner['publish_stores']
            elif owner['restore_store_undo_completed'] < owner['restore_store_undo_steps']:
                number = owner['restore_store_undo_completed']
                command, cost = 'undo_restore_store/' + str(number + 1), 1
                effects = deepcopy(owner['restore_store_undo_plan'][number]['expected_native_changes'])
            elif not owner['native_finished']:
                command = 'finish_restore'
            else:
                command, manager = 'reconcile_restore', 'publication'
            break
        require(command is not None, 'CURRENT owner restoration and group phase disagree')
    return {'profile': 'class_current_recovery_plan_v1', 'token': proof['token'],
            'verified_state': value, 'unknown_step': proof['unknown_step'],
            'unknown_native_action_completed': proof['unknown_native_action_completed'],
            'next': {'oid': oid, 'component': roster[oid]['component'], 'command': command,
                     'manager': manager, 'model_cost': cost, 'expected_native_changes': effects},
            'refresh_required_after': command == 'restore_store',
            'original_dispatch_replay_allowed': False, 'production_executor_available': False,
            'recovery_dispatch_authorized': False,
            'not_verified': ['other unaccounted native outcomes', 'other release/stale-witness boundaries',
                             'live physical recovery acceptance', 'process restart', 'whole delivery']}
