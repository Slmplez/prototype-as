"""Plan recovery from an audited WAL prefix and complete read-only native state."""
from copy import deepcopy
import json

from bd_source_inverse_oracle import decode_graph, equal


def require(condition, message):
    if not condition:
        raise ValueError(message)


def inspect_publication_classification(current, entries, token, definition, classification, *, allow_ready=False):
    """Check complete values and native identity; this alone grants no recovery actions."""
    roster = {owner['oid']: owner for owner in current['owners']}
    require(classification['profile'] == 'class_model_publication_study_v1'
            and classification['token'] == token and classification['definition_oid'] == definition
            and classification['action'] == 'classify'
            and type(classification['model_setters_called']) is int and classification['model_setters_called'] == 0
            and classification['write_authorized'] is False and classification['production_executor_available'] is False,
            'Native classification authority or identity differs')
    rows = {row['oid']: row for row in classification['owners']}
    require(len(rows) == len(classification['owners']) == len(roster) and set(rows) == set(roster)
            and type(classification['owner_count']) is int and classification['owner_count'] == len(roster),
            'Native classification owner coverage differs')
    signatures = classification.get('signature_values')
    require(type(signatures) is dict and set(signatures) == {'actual', 'current', 'candidate', 'native', 'public'},
            'Independent complete classification signatures required')
    expected_signature = current['observation']['signature']
    require(equal(signatures['current'], expected_signature) and equal(signatures['actual'], signatures['native']),
            'Complete native signature differs from durable CURRENT or actual state')
    candidate_signature = deepcopy(expected_signature)
    patch = entries[definition]['runtime_patch']
    selector, alias = patch['selector'], patch['created_formal_alias']
    selected = [method for method in candidate_signature['methods']
                if method['diagram'] == selector[0] and method['alias'] == selector[1]]
    require(len(selected) == 1 and selected[0]['arguments']
            and selected[0]['arguments'][-1]['alias'] == alias,
            'Exact appended publication formal is missing from durable CURRENT')
    created = selected[0]['arguments'].pop()
    require(created['model_type'] == selector[3] and created['name'] == selected[0]['name'] + '/' + selector[2]
            and created['in'] is True and created['out'] is False and created['in_out'] is False,
            'Publication created formal fields differ from its native patch')
    ready_without_candidate = (allow_ready and classification['state'] == 'ready' and signatures['candidate'] is None)
    require(ready_without_candidate or equal(signatures['candidate'], candidate_signature),
            'Complete candidate signature differs from the exact durable created-formal inverse')
    if signatures['public'] is None:
        require(classification['public_signature'] == 'BDE_CLASS_PROBE_ERROR: Formal model type unavailable'
                and classification['public_native_signature_matches'] is False,
                'Only the exact transient invalid formal API may use native signature evidence')
    else:
        require(equal(signatures['public'], signatures['native'])
                and classification['public_native_signature_matches'] is True,
                'Complete public/native classification signature differs')
    require(classification['return_identity_matches'] is True
            and classification['definition_configuration_matches'] is True,
            'Native return identity or definition configuration changed')
    for role in ('current', 'candidate'):
        matches = equal(signatures['actual'], signatures[role])
        require(type(classification[role + '_signature_matches']) is bool
                and classification[role + '_signature_matches'] is matches,
                'Complete signature values disagree with the native classification')
        require(classification[role + '_argument_identities_match'] is matches,
                'Actual native formal identities disagree with complete classified signature')
    proofs = []
    for oid, row in rows.items():
        require(row['component'].strip('\\') == roster[oid]['component'].strip('\\'),
                'Native classification owner path differs')
        matches = {}
        actual = decode_graph(row['actual_source_graph'], oid)
        for role in ('current', 'candidate'):
            expected = decode_graph(entries[oid][role + '_source_graph'], oid)
            require(equal(expected, decode_graph(row[role + '_source_graph'], oid)),
                    'Native classification source differs from durable CURRENT/candidate')
            matches[role] = equal(actual, expected)
            require(type(row[role + '_matches']) is bool and row[role + '_matches'] == matches[role],
                    'Native classification disagrees with complete source oracle or context')
        proofs.append({'oid': oid, 'state': row['owner_state'], 'matches': matches})
    return rows, proofs


def plan_recovery(origin, events, classification):
    require(origin.get('model_publication_outstanding') is True and len(events) >= 2,
            'An outstanding publication with durable complete CURRENT is required')
    require(events[0]['kind'] == 'intent' and events[1]['kind'] == 'prepared_all',
            'Publication intent and complete preparation must precede all dispatches')
    intent, prepared = events[0]['payload'], events[1]['payload']
    current = intent['current_observation']
    definition, token = intent['domain']['oid'], intent['token']
    require(intent['operation'] == 'class_model_publication_study'
            and intent['production_executor_available'] is False
            and intent['domain']['database'] == origin['database']
            and intent['domain']['process_epoch'] == origin['ascet_process_epoch']
            and intent['database_session'] == origin['database_session']
            and definition == origin['oid'] and prepared['current_observation'] == current,
            'Publication WAL domain or CURRENT differs')
    owners = current['owners']
    roster = {owner['oid']: owner for owner in owners}
    entries = {row['oid']: row for row in prepared['owners']}
    require(len(roster) == len(entries) == len(owners) == len(prepared['owners'])
            and set(roster) == set(entries) and definition in roster,
            'Unique complete publication owner roster required')
    for oid, row in entries.items():
        require(row['token'] == token and row['definition_oid'] == definition
                and row['action'] == 'prepare' and row['owner_state'] == 'prepared'
                and row['model_steps'] == 0
                and row['generation'] == roster[oid]['scopes']['Main']['generation']
                and type(row['runtime_patch']['no_graphical_target_required']) is bool,
                'Prepared publication identity differs')
    plan = [('apply', definition, 'signature_arguments'), ('apply', definition, 'signature_commit')]
    plan += [('apply', owner['oid'], 'publish') for owner in owners]
    plan += [('inverse', definition, 'restore_signature_arguments'), ('inverse', definition, 'restore_signature_commit')]
    plan += [('inverse', owner['oid'], 'restore') for owner in reversed(owners)]
    state = {'state': 'ready', 'model_steps': 0, 'owners': {oid: 'prepared' for oid in roster}}
    active, completed, observed = None, 0, False

    def advance(previous, step):
        value = deepcopy(previous)
        phase, oid, command = step
        if command == 'publish':
            value['owners'][oid] = 'published'
        elif command == 'restore':
            value['owners'][oid] = 'restored'
            value['state'] = 'restored' if all(s == 'restored' for s in value['owners'].values()) else 'restoring'
        else:
            value['state'] = {'signature_arguments': 'signature_arguments_set', 'signature_commit': 'publishing',
                'restore_signature_arguments': 'restore_signature_arguments_set',
                'restore_signature_commit': 'restoring'}[command]
        value['model_steps'] += int(command not in ('publish', 'restore')
            or not entries[oid]['runtime_patch']['no_graphical_target_required'])
        return value

    for event in events[2:]:
        kind, body = event['kind'], event['payload']
        if kind == 'step_started':
            require(active is None and completed < len(plan), 'Overlapping or excess publication dispatch')
            phase, oid, command = plan[completed]
            require(body == {'step': f'{phase}/{oid}/{command}', 'phase': phase, 'oid': oid,
                    'component': roster[oid]['component'], 'command': command,
                    'database_session': intent['database_session']}, 'Publication WAL dispatch plan differs')
            require(phase != 'inverse' or observed, 'Inverse dispatch precedes complete published observation')
            active = body
        elif kind == 'step_completed':
            require(active is not None and body['step'] == active['step'], 'Completion lacks exact publication dispatch')
            receipt = json.loads(body['native_result'])
            next_state = advance(state, plan[completed])
            require(receipt['profile'] == 'class_model_publication_study_v1'
                    and receipt['token'] == token and receipt['oid'] == active['oid']
                    and receipt['definition_oid'] == definition and receipt['action'] == active['command']
                    and receipt['write_authorized'] is False and receipt['production_executor_available'] is False
                    and type(receipt['model_steps']) is int and receipt['model_steps'] == next_state['model_steps'],
                    'Publication completed receipt or mutation counter differs')
            if active['command'] in ('publish', 'restore'):
                role = 'candidate' if active['command'] == 'publish' else 'current'
                require(equal(decode_graph(receipt['actual_source_graph'], active['oid']),
                              decode_graph(entries[active['oid']][role + '_source_graph'], active['oid'])),
                        'Confirmed publication complete source differs')
            state, active, completed = next_state, None, completed + 1
        elif kind == 'observed':
            require(active is None and not observed and completed == len(owners) + 2
                    and body['phase'] == 'published', 'Unexpected publication observation in an interrupted WAL')
            observed = True
            state['state'] = 'published'
        else:
            raise ValueError('Recovery requires an interrupted nonterminal publication WAL')
    rows, proofs = inspect_publication_classification(current, entries, token, definition, classification)

    def matches_state(expected):
        wanted = expected['state']
        actual = classification['state']
        allow_published = wanted == 'publishing' and all(s == 'published' for s in expected['owners'].values())
        interrupted_restore = active is not None and active['command'] == 'restore'
        if (actual != wanted and not (allow_published and actual == 'published')
                and not (interrupted_restore and wanted == 'restored' and actual == 'restoring')):
            return False
        if type(classification['model_steps']) is not int or classification['model_steps'] != expected['model_steps']:
            return False
        for oid, wanted_owner in expected['owners'].items():
            row = rows[oid]
            partial = interrupted_restore and active['oid'] == oid and wanted_owner == 'restored'
            if row['owner_state'] != wanted_owner and not (partial and row['owner_state'] in ('restore_started', 'source_restored')):
                return False
            role = 'candidate' if wanted_owner == 'published' else 'current'
            if not row[role + '_matches']:
                return False
            graphic = not entries[oid]['runtime_patch']['no_graphical_target_required']
            if (type(row['publish_stores']) is not int or type(row['restore_stores']) is not int
                    or row['publish_stores'] != int(graphic and wanted_owner != 'prepared')
                    or row['restore_stores'] != int(graphic and wanted_owner == 'restored')):
                return False
        candidate_signature = wanted in ('signature_arguments_set', 'publishing', 'published')
        role = 'candidate' if candidate_signature else 'current'
        return classification.get(role + '_signature_matches') is True and classification.get(
            ('current' if candidate_signature else 'candidate') + '_signature_matches') is not True

    outcomes = [(False, state)]
    if active is not None:
        outcomes.append((True, advance(state, plan[completed])))
    compatible = [completed_unknown for completed_unknown, proposed in outcomes if matches_state(proposed)]
    require(len(compatible) == 1, 'Publication unknown outcome cannot be uniquely classified against its WAL prefix')
    stage = classification['state']
    require(stage in ('signature_arguments_set', 'publishing', 'published', 'restore_signature_arguments_set', 'restoring', 'restored'),
            'Publication native stage has no accepted recovery executor')
    steps = []
    def add(oid, command, model_cost):
        steps.append({'oid': oid, 'component': roster[oid]['component'], 'command': command, 'model_cost': model_cost})
    if stage in ('signature_arguments_set', 'publishing', 'published'):
        add(definition, 'abort_signature_arguments', 1)
        add(definition, 'restore_signature_commit', 1)
    elif stage == 'restore_signature_arguments_set':
        add(definition, 'restore_signature_commit', 1)
    for owner in reversed(owners):
        oid, owner_stage = owner['oid'], rows[owner['oid']]['owner_state']
        if owner_stage == 'restored':
            continue
        command = 'reconcile_untouched' if owner_stage == 'prepared' else 'restore' if owner_stage == 'published' else 'reconcile_restore'
        add(oid, command, int(command == 'restore' and not entries[oid]['runtime_patch']['no_graphical_target_required']))
    return {'profile': 'class_publication_recovery_plan_v1', 'token': token, 'stage': stage,
            'confirmed_dispatches': completed, 'unknown_step': active['step'] if active else None,
            'unknown_native_action_completed': compatible[0] if active else None,
            'complete_source_classifications': proofs, 'steps': steps,
            'model_recovery_steps': sum(step['model_cost'] for step in steps),
            'original_dispatch_replay_allowed': False, 'production_executor_available': False}
