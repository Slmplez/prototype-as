"""Audit exact CURRENT execution and separate recovery WALs without replay.

Diagnostic native replies in an origin are never completion evidence.
"""
from copy import deepcopy
import json

from bd_class_current_execution import inspect_primitive_plan, inspect_ready_classification
from bd_class_current_identity import inspect_current_identity
from bd_class_current_inverse import inspect_primitive_inverse, inspect_store_inverse
from bd_class_current_unaccounted import classify_unaccounted
from bd_class_model_publication import inspect_published_observation, stable_observation
from bd_class_publication_recovery_plan import inspect_publication_classification
from bd_source_inverse_oracle import decode_graph, equal


def require(condition, message):
    if not condition:
        raise ValueError(message)


COUNTERS = ('forward_completed', 'inverse_completed', 'publish_store_undo_steps',
            'publish_store_undo_completed', 'restore_store_undo_steps', 'restore_store_undo_completed',
            'publish_stores', 'restore_stores')


def inspect_current_prefix(origin, events, classification, native_rows, *, forward_only=False, recovery_events=(), _cache=None):
    require(origin.get('current_execution_study') is True
            and type(origin.get('model_publication_outstanding')) is bool and len(events) >= 3,
            'An outstanding CURRENT attempt and complete durable preparation are required')
    cache = {} if _cache is None else _cache
    cache_key = (id(events[0]), id(events[-1]), len(events), id(classification), id(native_rows),
                 len(recovery_events), id(recovery_events[-1]) if recovery_events else None,
                 forward_only, origin['model_publication_outstanding'])
    if cache_key in cache:
        return deepcopy(cache[cache_key])
    require([event['kind'] for event in events[:3]] == ['intent', 'prepared_all', 'native_prepared'],
            'CURRENT complete public and native preparation must precede dispatch')
    intent, prepared, native = [event['payload'] for event in events[:3]]
    require(intent.get('operation') == 'class_current_execution_study'
            and intent.get('production_executor_available') is False,
            'Dedicated default-OFF CURRENT execution WAL required')
    domain, current, token = intent['domain'], intent['current_observation'], intent['token']
    definition = domain['oid']
    require(all(domain[field] == origin[source] for field, source in (
        ('database', 'database'), ('process_epoch', 'ascet_process_epoch'), ('oid', 'oid')))
        and intent['database_session'] == origin['database_session']
        and prepared['current_observation'] == current,
        'CURRENT WAL domain or complete current baseline differs')
    owners = current['owners']
    roster = {owner['oid']: owner for owner in owners}
    entries = {row['oid']: row for row in prepared['owners']}
    initial = {row['oid']: row for row in native['owners']}
    require(len(roster) == len(owners) == len(entries) == len(prepared['owners'])
            == len(initial) == len(native['owners']) and set(roster) == set(entries) == set(initial)
            and definition in roster and [row['oid'] for row in native['owners']] == list(roster),
            'Complete ordered unique CURRENT owner roster required')
    for oid, row in entries.items():
        require(row['token'] == token and row['definition_oid'] == definition
                and row['action'] == 'prepare' and row['owner_state'] == 'prepared'
                and type(row['model_steps']) is int and row['model_steps'] == 0
                and row['generation'] == roster[oid]['scopes']['Main']['generation']
                and type(row['runtime_patch']['no_graphical_target_required']) is bool,
                'Prepared CURRENT source identity or effect policy differs')
    ready_raw = {'current_execution_preflight': native['owners'],
                 'current_execution_classification_preflight': native['classification']}
    inspect_current_identity(native['identity'], token, current, prepared['owners'])
    inspect_ready_classification(ready_raw, token, current, prepared['owners'])
    identities = {row['oid']: row for row in native['identity']['owners']}
    for oid, row in initial.items():
        require(row.get('profile') == 'class_current_execution_study_v1' and row.get('action') == 'prepare'
                and row.get('state') == row.get('entry_state') == 'prepared' and row.get('token') == token
                and row.get('generation') == roster[oid]['scopes']['Main']['generation']
                and all(type(row.get(field)) is int and row[field] == 0 for field in COUNTERS)
                and all(type(row.get(field)) is int and row[field] == 0 for field in ('model_steps', 'model_setters_called'))
                and row.get('actual_native_changes') == [] and row.get('active_command') is None,
                'CURRENT native preparation contains a mutation, wrong identity or active action')
        count = inspect_primitive_plan(row, entries[oid]['runtime_patch'], identities[oid])
        require(row.get('inverse_plan_sealed') is True and row.get('store_inverse_plans_sealed') is True
                and row.get('publish_store_undo_plan') == row.get('restore_store_undo_plan') == [],
                'CURRENT native preparation lacks sealed complete inverse plans')
        inspect_primitive_inverse(row.get('forward_plan'), row.get('inverse_plan'))
        require(type(row.get('forward_steps')) is int and row['forward_steps'] == count,
                'CURRENT full primitive plan count differs')

    state = {'phase': 'ready', 'model_steps': 0, 'owners': {oid: {
        **{field: 0 for field in COUNTERS}, 'entry_state': 'prepared', 'changes': [],
        'publish_store_undo_plan': [], 'restore_store_undo_plan': [],
        'native_finished': False} for oid in roster}, 'published_observed': False,
        'restored_observed': False, 'release_completed': False, 'reconciliation_pending': None}
    active, completed, terminal = None, 0, False
    recovering, recovery_completed, segment_completed, segments = False, 0, 0, 0
    segment_origin_recovery = ()
    segment_release_already_completed, release_reconciliation_observed = False, False

    def release_evidence(publication, members, value):
        require(value['phase'] in ('ready', 'restored') and value['restored_observed']
                and value['reconciliation_pending'] is None
                and type(publication.get('publication_record_present')) is bool
                and type(publication.get('release_witness_present')) is bool
                and type(publication.get('release_current_observation')) is dict
                and equal(stable_observation(publication['release_current_observation']), current)
                and all(row.get('full_native_original_restored') is True
                        and row.get('physical_prefix_matches') is True
                        and row.get('active_command') is None for row in members),
                'Unknown CURRENT release requires fresh absence and complete baseline evidence')
        if not publication['publication_record_present']:
            require(publication['release_witness_present'] is True
                    and publication.get('release_witness_profile') == 'class_current_release_witness_v1'
                    and publication.get('release_witness_verified') is True,
                    'Unknown CURRENT release lacks its exact sealed native witness')
        return not publication['publication_record_present']

    def signature_role(phase):
        return 'candidate' if phase in ('signature_arguments_set', 'publishing', 'published') else 'current'

    def context_guard(guard, phase):
        require(type(guard) is dict and guard.get('profile') == 'class_current_context_guard_v1'
                and guard.get('definition_oid') == definition and guard.get('group_state') == phase
                and guard.get('signature_role') == signature_role(phase)
                and type(guard.get('owner_count')) is int and guard['owner_count'] == len(roster)
                and type(guard.get('model_setters_called')) is int and guard['model_setters_called'] == 0
                and all(guard.get(field) is True for field in ('matches', 'definition_identity_matches',
                    'argument_identities_match', 'return_identity_matches', 'complete_signature_matches',
                    'definition_configuration_matches')),
                'CURRENT dispatch lacks atomic complete context checks')
        members = guard.get('owners')
        require(type(members) is list and len(members) == len(roster)
                and {member.get('oid') for member in members if type(member) is dict} == set(roster),
                'CURRENT dispatch atomic context omits or duplicates an owner')
        for member in members:
            role = member.get('required_source_role')
            require(member.get('required_source_role') in ('current', 'candidate', 'either')
                    and all(type(member.get(field)) is bool for field in ('current_source_matches', 'candidate_source_matches'))
                    and all(member.get(field) is True for field in ('owner_identity_matches', 'configuration_matches',
                        'candidate_material_sealed', 'required_source_matches', 'matches')),
                    'CURRENT dispatch owner context or source seal conflicts')
            require(member['current_source_matches'] if role == 'current' else member['candidate_source_matches']
                    if role == 'candidate' else member['current_source_matches'] or member['candidate_source_matches'],
                    'CURRENT atomic required source role disagrees with classified source flags')

    def next_action(value):
        phase = value['phase']
        if recovering:
            if value['reconciliation_pending']:
                return value['reconciliation_pending']['oid'], 'reconcile_action', 'current'
            if phase == 'ready':
                require(value['restored_observed'] and not value['release_completed'],
                        'Untouched CURRENT release requires complete public/native baseline observation')
                return definition, 'release', 'publication'
            if phase in ('signature_arguments_set', 'publishing', 'published'):
                return definition, 'abort_signature_arguments', 'publication'
        if phase in ('ready', 'signature_arguments_set'):
            return definition, 'signature_arguments' if phase == 'ready' else 'signature_commit', 'publication'
        if phase == 'publishing':
            for oid in roster:
                owner = value['owners'][oid]
                if owner['forward_completed'] < initial[oid]['forward_steps']:
                    return oid, 'apply/' + str(owner['forward_completed'] + 1), 'current'
                if owner['entry_state'] == 'prepared':
                    return oid, 'publish_store', 'current'
            return definition, 'inspect', 'publication'
        require(not forward_only, 'Forward prefix cannot continue after published observation')
        if phase == 'published':
            require(value['published_observed'], 'CURRENT inverse requires a complete published observation')
            return definition, 'restore_signature_arguments', 'publication'
        if phase == 'restore_signature_arguments_set':
            return definition, 'restore_signature_commit', 'publication'
        if phase == 'restoring':
            for oid in reversed(roster):
                owner = value['owners'][oid]
                if owner['entry_state'] == 'restored':
                    continue
                for counter, count, prefix in (
                        ('publish_store_undo_completed', 'publish_store_undo_steps', 'undo_publish_store/'),
                        ('inverse_completed', 'forward_completed', 'undo_apply/')):
                    if owner[counter] < owner[count]:
                        return oid, prefix + str(owner[counter] + 1), 'current'
                if owner['entry_state'] != 'source_restored':
                    return oid, 'restore_store', 'current'
                if owner['restore_store_undo_completed'] < owner['restore_store_undo_steps']:
                    return oid, 'undo_restore_store/' + str(owner['restore_store_undo_completed'] + 1), 'current'
                if not owner['native_finished']:
                    return oid, 'finish_restore', 'current'
                return oid, 'reconcile_restore', 'publication'
        require(phase == 'restored' and value['restored_observed'] and not value['release_completed'],
                'CURRENT release requires complete native and public restoration')
        return definition, 'release', 'publication'

    def advance(value, oid, command, effects=None, receipt=None):
        after = deepcopy(value)
        owner = after['owners'][oid]
        if command in ('signature_arguments', 'signature_commit', 'inspect', 'abort_signature_arguments',
                       'restore_signature_arguments', 'restore_signature_commit'):
            after['phase'] = {'signature_arguments': 'signature_arguments_set',
                              'signature_commit': 'publishing', 'inspect': 'published',
                              'restore_signature_arguments': 'restore_signature_arguments_set',
                              'abort_signature_arguments': 'restore_signature_arguments_set',
                              'restore_signature_commit': 'restoring'}[command]
            after['model_steps'] += int(command != 'inspect')
        elif command.startswith('apply/'):
            number = int(command.split('/')[1])
            planned = initial[oid]['forward_plan'][number - 1]['expected_native_changes']
            require(effects is None or equal(effects, planned),
                    'Actual CURRENT primitive effects differ from the sealed complete plan')
            owner['forward_completed'] = number
            owner['changes'].append([command, deepcopy(planned)])
            after['model_steps'] += 1
        elif command in ('publish_store', 'restore_store'):
            count = inspect_store_inverse(receipt or {}, command, effects)['inverse_steps_verified']
            owner[command + '_undo_steps'] = count
            owner[command + '_undo_plan'] = deepcopy(receipt[command + '_undo_plan'])
            owner['entry_state'] = 'published' if command == 'publish_store' else 'source_restored'
            cost = int(not entries[oid]['runtime_patch']['no_graphical_target_required']) if command == 'publish_store' else owner['publish_stores']
            owner['publish_stores' if command == 'publish_store' else 'restore_stores'] = cost
            owner['changes'].append([command, deepcopy(effects)])
            after['model_steps'] += cost
        elif command.startswith(('undo_apply/', 'undo_publish_store/', 'undo_restore_store/')):
            prefix, number_text = command.split('/')
            number = int(number_text)
            if prefix == 'undo_apply':
                offset = initial[oid]['forward_steps'] - owner['forward_completed'] + number - 1
                planned = initial[oid]['inverse_plan'][offset]['expected_native_changes']
                counter = 'inverse_completed'
            else:
                planned = owner[prefix[5:] + '_undo_plan'][number - 1]['expected_native_changes']
                counter = prefix[5:] + '_undo_completed'
            require(effects is None or equal(effects, planned),
                    'Actual CURRENT inverse effects differ from the sealed complete plan')
            owner[counter] = number
            owner['changes'].append([command, deepcopy(planned)])
            after['model_steps'] += 1
        elif command == 'finish_restore':
            require(owner['entry_state'] == 'source_restored' and owner['inverse_completed'] == owner['forward_completed']
                    and owner['restore_store_undo_completed'] == owner['restore_store_undo_steps'],
                    'CURRENT complete native restore precedes causal inverse completion')
            owner['native_finished'] = True
        elif command == 'reconcile_restore':
            require(owner['native_finished'], 'CURRENT registry reconciliation precedes full native restoration')
            owner['entry_state'] = 'restored'
            if all(row['entry_state'] == 'restored' for row in after['owners'].values()):
                after['phase'] = 'restored'
        elif command == 'release':
            after['release_completed'] = True
        elif command == 'reconcile_action':
            require(after['reconciliation_pending'] is not None, 'CURRENT reconciliation has no unique original action')
            after['reconciliation_pending'] = None
        else:
            raise ValueError('Unknown fixed CURRENT protocol action')
        return after

    def native_receipt(value, oid, command, expected):
        require(value.get('profile') == 'class_current_execution_study_v1'
                and value.get('oid') == oid and value.get('token') == token and value.get('action') == command
                and value.get('generation') == initial[oid]['generation']
                and value.get('forward_steps') == initial[oid]['forward_steps']
                and value.get('write_authorized') is False and value.get('production_executor_available') is False
                and value.get('active_pending_after_return') is False
                and all(value.get(field) is True for field in ('current_diagram_identity_verified',
                    'physical_prefix_matches', 'execution_material_sealed', 'primitive_plan_sealed',
                    'inverse_plan_sealed', 'store_inverse_plans_sealed'))
                and value.get('inverse_plan') == initial[oid]['inverse_plan'],
                'CURRENT receipt has an uncompleted action, changed material or widened authority')
        if command == 'reconcile_action':
            pending = state['reconciliation_pending']
            require(value.get('action_completed') is True and value.get('active_command') == pending['original_command']
                    and value.get('active_kind') == pending['kind']
                    and value.get('active_accounted') is (pending['outcome'] == 'after')
                    and value.get('unknown_before_matches') is (pending['outcome'] == 'before')
                    and value.get('unknown_after_matches') is (pending['outcome'] == 'after')
                    and equal(value.get('step_actual_native_changes'), pending['expected_native_changes']),
                    'CURRENT reconciliation does not prove the exact unique original outcome')
        elif command == 'finish_restore':
            require(value.get('action_completed') is False and value.get('active_command') is None
                    and value.get('active_kind') is None and value.get('active_accounted') is None
                    and value.get('state') == 'restored' and value.get('full_native_original_restored') is True
                    and value.get('current_source_matches') is True,
                    'CURRENT metadata finish lacks complete native/source restoration')
        else:
            require(value.get('action_completed') is True and value.get('active_command') == command
                    and value.get('active_accounted') is True
                    and value.get('active_kind') == ('store' if command.endswith('_store') else 'primitive'),
                    'CURRENT physical action has no exact successful receipt')
        require(value.get('group_state') == expected['phase']
                and value.get('entry_state') == expected['owners'][oid]['entry_state']
                and type(value.get('model_steps')) is int and value['model_steps'] == expected['model_steps']
                and all(type(value.get(field)) is int and value[field] == expected['owners'][oid][field] for field in COUNTERS),
                'CURRENT receipt counters differ from the exact physical prefix')
        require(all(value.get(field) == expected['owners'][oid][field]
                    for field in ('publish_store_undo_plan', 'restore_store_undo_plan')),
                'CURRENT receipt has different sealed store inverse material')
        context_guard(value.get('native_context_guard'), expected['phase'])
        cost = 0 if command in ('finish_restore', 'reconcile_action') else expected['owners'][oid]['publish_stores'] if command == 'publish_store' \
            else expected['owners'][oid]['restore_stores'] if command == 'restore_store' else 1
        require(type(value.get('model_setters_called')) is int and value['model_setters_called'] == cost,
                'CURRENT physical setter cost differs')

    if recovery_events:
        require(not forward_only and recovery_events[0]['kind'] == 'intent',
                'Dedicated complete CURRENT recovery intent required')
    combined = list(events) + [{'kind': 'recovery_intent' if event['kind'] == 'intent' else event['kind'],
                                'payload': event['payload']} for event in recovery_events]
    for event_index, event in enumerate(combined[3:], 3):
        require(not terminal, 'CURRENT WAL has events after its terminal record')
        kind, body = event['kind'], event['payload']
        if kind == 'recovery_intent':
            require(not terminal and event_index >= len(events),
                    'CURRENT recovery cannot follow a terminal original')
            require(body.get('operation') == 'class_current_execution_recovery'
                    and body.get('token') == token and body.get('domain') == domain
                    and body.get('database_session') == intent['database_session']
                    and body.get('original_dispatch_replay_allowed') is False
                    and body.get('production_executor_available') is False
                    and type(body.get('classification')) is dict
                    and set(body['classification']) == {'publication', 'owners'},
                    'CURRENT recovery intent domain, classifications or authority differs')
            classified = body['classification']
            segment_origin_recovery = recovery_events[:event_index - len(events)]
            proof = inspect_current_prefix(origin, events, classified['publication'], classified['owners'],
                                           recovery_events=segment_origin_recovery, _cache=cache)
            require(body.get('verified_origin_state') == proof['state']
                    and body.get('unknown_step') == proof['unknown_step']
                    and body.get('unknown_native_action_completed') is proof['unknown_native_action_completed']
                    and body.get('reconciliation_required') == proof['reconciliation_required'],
                    'CURRENT recovery does not bind the uniquely classified original outcome')
            state, active, recovering = deepcopy(proof['state']), None, True
            segment_completed, segments = 0, segments + 1
            segment_release_already_completed = state['release_completed']
            release_reconciliation_observed = False
        elif kind == 'step_started':
            require(active is None, 'Overlapping CURRENT dispatches')
            oid, command, manager = next_action(state)
            phase = 'recovery' if recovering else 'apply' if state['phase'] in ('ready', 'signature_arguments_set', 'publishing') else 'inverse'
            require(body == {'step': f'{phase}/{oid}/{command}', 'phase': phase, 'oid': oid,
                    'component': roster[oid]['component'], 'command': command,
                    'database_session': intent['database_session']},
                    'CURRENT WAL dispatch omits, reorders or replays a primitive')
            active = {**body, 'manager': manager}
        elif kind == 'step_completed':
            require(active is not None and body.get('step') == active['step']
                    and type(body.get('native_result')) is str, 'CURRENT completion lacks exact dispatch')
            receipt = json.loads(body['native_result'])
            oid, command = active['oid'], active['command']
            effects = receipt.get('step_actual_native_changes', [])
            updated = advance(state, oid, command, effects, receipt)
            if active['manager'] == 'current':
                native_receipt(receipt, oid, command, updated)
                if command in ('publish_store', 'restore_store', 'finish_restore'):
                    role = 'candidate' if command == 'publish_store' else 'current'
                    require(equal(decode_graph(receipt['actual_source_graph'], oid),
                                  decode_graph(entries[oid][role + '_source_graph'], oid)),
                            'CURRENT store/finish complete source differs from its exact required image')
            else:
                require(receipt.get('profile') == 'class_model_publication_study_v1'
                        and receipt.get('token') == token and receipt.get('oid') == oid
                        and receipt.get('definition_oid') == definition and receipt.get('action') == command
                        and receipt.get('state') == ('released' if command == 'release' else updated['phase'])
                        and type(receipt.get('model_steps')) is int and receipt['model_steps'] == updated['model_steps']
                        and receipt.get('write_authorized') is False and receipt.get('production_executor_available') is False,
                        'CURRENT signature/control receipt differs from physical prefix')
            state, active, completed = updated, None, completed + 1
            recovery_completed += int(recovering)
            segment_completed += int(recovering)
        elif not forward_only and kind == 'observed':
            phase = body.get('phase')
            flag = 'published_observed' if phase == 'published' else 'restored_observed'
            require(active is None and phase in (('ready', 'restored') if recovering else ('published', 'restored'))
                    and state['phase'] == phase
                    and not state[flag] and type(body.get('observation')) is dict,
                    'CURRENT observation has the wrong phase, incomplete dispatch or duplicate baseline')
            if phase in ('ready', 'restored'):
                require(equal(stable_observation(body['observation']), current),
                        'CURRENT complete restored public/native/configuration baseline differs')
            else:
                context = intent.get('public_inverse_context')
                require(type(context) is dict and set(context) == {'before', 'applied'},
                        'CURRENT publication needs complete independent original/applied public context')
                inspect_published_observation(context['before'], context['applied'], current, body['observation'])
            require(type(body.get('classification')) is dict and set(body['classification']) == {'publication', 'owners'},
                    'CURRENT observation lacks complete native/source classification')
            # Recheck the exact prefix at the observation boundary, not only its later final state.
            observed = inspect_current_prefix({**origin, 'model_publication_outstanding': True},
                events if recovering else events[:event_index],
                body['classification']['publication'], body['classification']['owners'],
                recovery_events=recovery_events[:event_index - len(events)] if recovering else (), _cache=cache)
            require(observed['unknown_step'] is None and observed['state']['phase'] == phase,
                    'CURRENT observation contains an unresolved native action')
            if phase in ('ready', 'restored'):
                require(all(row.get('full_native_original_restored') is True
                            for row in body['classification']['owners']),
                        'CURRENT release baseline lacks complete native field restoration')
            state[flag] = True
        elif not forward_only and kind == 'release_reconciled':
            require(recovering and active is None and segment_release_already_completed
                    and state['release_completed'] and not release_reconciliation_observed
                    and set(body) == {'observation', 'classification', 'model_setters_called'}
                    and type(body['model_setters_called']) is int and body['model_setters_called'] == 0
                    and equal(stable_observation(body['observation']), current)
                    and type(body['classification']) is dict
                    and set(body['classification']) == {'publication', 'owners'},
                    'CURRENT release reconciliation must record a fresh full baseline with zero setters')
            fresh = body['classification']
            audited = inspect_current_prefix(origin, events, fresh['publication'], fresh['owners'],
                recovery_events=recovery_events[:event_index - len(events)], _cache=cache)
            require(audited['state'] == state
                    and release_evidence(fresh['publication'], fresh['owners'], state) is True,
                    'CURRENT released baseline or sealed witness changed during reconciliation')
            release_reconciliation_observed = True
        elif not forward_only and kind == 'finished':
            require(active is None and state['phase'] in (('ready', 'restored') if recovering else ('restored',))
                    and state['restored_observed'] and state['release_completed']
                    and (not recovering or not segment_release_already_completed or release_reconciliation_observed)
                    and body == {'status': 'current_recovered' if recovering else 'current_restored', 'outstanding': False,
                        'dispatch_count': segment_completed if recovering else completed}
                    and (recovering or origin['model_publication_outstanding'] is False),
                    'CURRENT terminal lacks full recovery, exact release or dispatch accounting')
            terminal = True
        else:
            raise ValueError('Forward-only CURRENT prefix cannot certify inverse, observation or terminal events')

    source_rows, source_proofs = inspect_publication_classification(
        current, entries, token, definition, classification, allow_ready=True)
    require(type(native_rows) is list and len(native_rows) == len(roster), 'CURRENT classification omits owners')
    actual = {row['oid']: row for row in native_rows}
    require(set(actual) == set(roster) and len(actual) == len(native_rows), 'CURRENT native classification duplicates owners')
    for oid, row in actual.items():
        require(row.get('profile') == 'class_current_execution_study_v1' and row.get('action') == 'classify'
                and row.get('token') == token and row.get('generation') == initial[oid]['generation']
                and row.get('forward_plan') == initial[oid]['forward_plan']
                and row.get('inverse_plan') == initial[oid]['inverse_plan']
                and row.get('forward_steps') == initial[oid]['forward_steps']
                and row.get('model_setters_called') == 0 and type(row.get('model_setters_called')) is int
                and row.get('write_authorized') is False and row.get('production_executor_available') is False
                and all(row.get(field) is True for field in ('execution_material_sealed', 'primitive_plan_sealed',
                                                            'inverse_plan_sealed', 'store_inverse_plans_sealed'))
                and row.get('current_diagram_identity_verified') is True,
                'CURRENT native classification material, identity or authority differs')
        context_guard(row.get('native_context_guard'), classification['state'])
        for member in row['native_context_guard']['owners']:
            source = source_rows[member['oid']]
            require(member.get('owner_state') == source['owner_state']
                    and member['current_source_matches'] is source['current_matches']
                    and member['candidate_source_matches'] is source['candidate_matches'],
                    'CURRENT atomic context disagrees with complete owner source classification')
        require(equal(decode_graph(row['actual_source_graph'], oid),
                      decode_graph(source_rows[oid]['actual_source_graph'], oid)),
                'CURRENT publication and native classifications disagree on complete source')

    pending_metadata = active is not None and active['command'] == 'reconcile_action' and any(
        row.get('active_command') is not None for row in actual.values())
    if pending_metadata:
        require(recovering and state['reconciliation_pending'] is not None
                and active['oid'] == state['reconciliation_pending']['oid'],
                'Pending metadata does not bind its original native action')
        before_metadata = inspect_current_prefix(origin, events, classification, native_rows,
                                                 recovery_events=segment_origin_recovery, _cache=cache)
        normalized = deepcopy(before_metadata['state'])
        require(normalized['reconciliation_pending'] is not None
                and all(normalized[field] == state[field] for field in state if field != 'reconciliation_pending')
                and all(normalized['reconciliation_pending'][field] == state['reconciliation_pending'][field]
                        for field in ('oid', 'original_command', 'kind', 'outcome', 'expected_native_changes')),
                'Interrupted metadata has altered its complete original physical state')
        # The original action is already represented in the projected state;
        # unresolved metadata may account it but may never repeat its setter.
        unaccounted = None
    else:
        state, classification, actual, source_rows, unaccounted = classify_unaccounted(
            state, active, classification, actual, source_rows, entries, advance, COUNTERS)

    def matches(expected):
        if bool(expected['reconciliation_pending']) != bool(unaccounted):
            return False
        if (classification['state'] != expected['phase'] or type(classification['model_steps']) is not int
                or classification['model_steps'] != expected['model_steps']):
            return False
        role = signature_role(expected['phase'])
        if classification[role + '_signature_matches'] is not True:
            return False
        for oid, wanted in expected['owners'].items():
            row, source = actual[oid], source_rows[oid]
            if (row.get('group_state') != expected['phase'] or type(row.get('model_steps')) is not int
                    or row.get('model_steps') != expected['model_steps']
                    or row.get('entry_state') != wanted['entry_state'] or source['owner_state'] != wanted['entry_state']
                    or any(type(row.get(field)) is not int or row[field] != wanted[field] for field in COUNTERS)
                    or not equal(row.get('actual_native_changes'), wanted['changes'])
                    or row.get('publish_store_undo_plan') != wanted['publish_store_undo_plan']
                    or row.get('restore_store_undo_plan') != wanted['restore_store_undo_plan']
                    or (row.get('state') == 'restored') is not wanted['native_finished']
                    or wanted['native_finished'] and (row.get('state') != 'restored'
                                                     or row.get('full_native_original_restored') is not True)
                    or row.get('active_command') is not None or row.get('active_kind') is not None
                    or row.get('active_accounted') is not None or row.get('active_pending_after_return') is not False
                    or row.get('physical_prefix_matches') is not True
                    or any(type(source.get(field)) is not int or source[field] != wanted[field]
                           for field in ('publish_stores', 'restore_stores'))):
                return False
            role = 'candidate' if wanted['entry_state'] == 'published' else 'current'
            if source[role + '_matches'] is not True:
                return False
        return True

    possibilities = [(False, normalized)] if pending_metadata else [(False, state)] if matches(state) else []
    if active is not None and not pending_metadata:
        released = release_evidence(classification, native_rows, state) if active['command'] == 'release' else None
        if released is True:
            possibilities = []
        effects = None
        if active['command'] in ('publish_store', 'restore_store'):
            history = actual[active['oid']].get('actual_native_changes')
            if type(history) is list and history and history[-1][0] == active['command']:
                effects = history[-1][1]
        if released is not False and (active['command'] not in ('publish_store', 'restore_store') or effects is not None):
            updated = advance(state, active['oid'], active['command'], effects, actual[active['oid']])
            if matches(updated):
                possibilities.append((True, updated))
    if state['release_completed'] and not terminal and active is None:
        require(release_evidence(classification, native_rows, state) is True,
                'A released CURRENT recovery prefix requires fresh exact absence')
    require(len(possibilities) == 1, 'CURRENT native state is not a unique confirmed-prefix/unknown outcome')
    applied_unknown, verified = possibilities[0]
    require(terminal or origin['model_publication_outstanding'] is True,
            'CURRENT nonterminal origin must remain explicitly outstanding')
    result = {'profile': 'class_current_forward_prefix_audit_v1' if forward_only else 'class_current_protocol_audit_v1', 'token': token,
            'confirmed_dispatches': completed, 'unknown_step': active['step'] if active else None,
            'unknown_native_action_completed': applied_unknown if active else None,
            'state': verified, 'terminal': terminal, 'complete_source_classifications': source_proofs,
            'reconciliation_required': verified['reconciliation_pending'],
            'recovery_dispatches': recovery_completed,
            'latest_recovery_dispatches': segment_completed, 'recovery_segments': segments,
            'release_reconciliation_required': verified['release_completed'] and not terminal,
            'original_dispatch_replay_allowed': False, 'production_executor_available': False,
            'recovery_dispatch_authorized': False,
            'not_verified': ['active unaccounted native action reconciliation', 'live store collateral acceptance',
                             'physical recovery', 'actual CURRENT dispatch', 'whole delivery']}
    cache[cache_key] = result
    return result


def inspect_forward_prefix(origin, events, classification, native_rows):
    return inspect_current_prefix(origin, events, classification, native_rows, forward_only=True)


def main():
    import argparse
    from pathlib import Path
    import bd_class_tools as tools
    import bd_service as service
    from bd_class_study_journal import read_events

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--origin', type=Path, required=True)
    parser.add_argument('--classification', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    origin_path, classification_path, output = [path.resolve() for path in
                                               (args.origin, args.classification, args.output)]
    owned = service.ROOT / 'analysis/bde-experiments'
    require(all(path.is_relative_to(owned) for path in (origin_path, classification_path, output))
            and not output.is_relative_to(origin_path.parent)
            and not output.is_relative_to(classification_path.parent), 'Separate owned input/output paths required')
    origin_bytes, classification_bytes = origin_path.read_bytes(), classification_path.read_bytes()
    origin, classified = json.loads(origin_bytes), json.loads(classification_bytes)
    require(classified.get('status') == 'current_execution_classified'
            and classified.get('model_mutation_dispatched') is False
            and type(classified.get('model_setters_called')) is int and classified['model_setters_called'] == 0
            and classified.get('current_execution_origin_sha256') == service.digest(origin_bytes)
            and all(classified[field] == origin[field] for field in
                    ('oid', 'database', 'database_session', 'ascet_process_epoch')),
            'Read-only classification must bind the exact unchanged CURRENT origin')
    journal = Path(origin['model_publication_journal']).resolve()
    require(journal.is_relative_to(origin_path.parent), 'CURRENT WAL must belong to the exact origin')
    proof = inspect_forward_prefix(origin, read_events(journal), classified['model_publication_classification'],
                                   classified['current_execution_classifications'])
    require(origin_path.read_bytes() == origin_bytes and classification_path.read_bytes() == classification_bytes,
            'CURRENT inputs changed during offline prefix audit')
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': True, 'full_delivery': False, 'scope': 'Offline forward prefix classification only',
              'cebra_connections': 0, 'model_setters_called': 0, 'origin': str(origin_path),
              'classification': str(classification_path), 'origin_sha256': service.digest(origin_bytes),
              'classification_sha256': service.digest(classification_bytes), 'proof': proof}
    tools.write(output / 'result.json', result)
    print(json.dumps({'passed': True, 'unknown_step': proof['unknown_step'], 'recovery_dispatch_authorized': False}))


if __name__ == '__main__':
    main()
