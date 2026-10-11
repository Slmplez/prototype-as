"""Verify setter-free CURRENT executor preparation; this does not accept execution."""
from bd_class_study_journal import read_events
from bd_class_current_identity import inspect_current_identity
from bd_class_current_inverse import inspect_primitive_inverse
from bd_source_inverse_oracle import decode_graph, equal
import re


def require(condition, message):
    if not condition:
        raise ValueError(message)


def _reference(cell):
    require(type(cell) is dict and type(cell.get('native_class')) is str
            and type(cell.get('native_ref')) is str
            and re.fullmatch(r'c[1-9][0-9]*', cell['native_ref']),
            'CURRENT primitive lacks an exact native observation alias')
    return cell['native_ref']


def inspect_context_guard(row, definition, owners, group_state, focus_oid):
    guard = row.get('native_context_guard')
    require(type(guard) is dict and guard.get('profile') == 'class_current_context_guard_v1'
            and guard.get('definition_oid') == definition and guard.get('group_state') == group_state
            and guard.get('signature_role') == ('candidate' if group_state in ('publishing', 'published') else 'current')
            and type(guard.get('model_setters_called')) is int and guard['model_setters_called'] == 0,
            'CURRENT atomic context guard has a different identity, phase or authority')
    require(all(guard.get(field) is True for field in (
        'definition_identity_matches', 'argument_identities_match', 'return_identity_matches',
        'complete_signature_matches', 'definition_configuration_matches', 'matches')),
        'CURRENT complete signature/configuration/identity context conflicts')
    rows = guard.get('owners')
    require(type(rows) is list and len(rows) == len(owners)
            and {member.get('oid') for member in rows if type(member) is dict} == set(owners)
            and type(guard.get('owner_count')) is int and guard['owner_count'] == len(owners),
            'CURRENT atomic context guard omits or duplicates an owner')
    for member in rows:
        role = member.get('required_source_role')
        allowed = ('current', 'either') if member['oid'] == focus_oid else ('current',)
        require(role in allowed and member.get('owner_state') == 'prepared'
                and member.get('current_source_matches') is True
                and type(member.get('candidate_source_matches')) is bool
                and all(member.get(field) is True for field in (
                    'owner_identity_matches', 'configuration_matches', 'candidate_material_sealed',
                    'required_source_matches', 'matches')),
                'CURRENT atomic source/configuration guard conflicts or widens a source role')
    return len(rows)


def inspect_primitive_plan(row, patch, identity):
    observations = {item['native_key']: item for item in identity['observations']}
    expected = [('position', pin) for pin in patch['native_layout_audit']['pins'] if pin['restore_axes']]
    for target in patch['targets']:
        expected += [('remove_pin', target)] if target['kind'] == 'pin' else [('remove', target), ('manager', target)]
    plan = row.get('forward_plan')
    require(type(plan) is list and len(plan) == len(expected) and row.get('primitive_plan_sealed') is True,
            'CURRENT primitive plan omits exact sealed effects')
    removed = {}
    for index, (step, (kind, target)) in enumerate(zip(plan, expected), 1):
        require(type(step) is dict and step.get('command') == f'apply/{index}' and step.get('kind') == kind,
                'CURRENT primitive plan order or kind differs')
        changes = step.get('expected_native_changes')
        require(type(changes) is list and len(changes) == 1 and type(changes[0]) is dict,
                'CURRENT primitive requires one complete exact native effect')
        change, key = changes[0], target['native_key']
        alias = _reference(change)
        if kind == 'position':
            require(change.get('kind') == 'field' and change.get('field') == 'position'
                    and change.get('native_key') == key + '/external'
                    and change['native_class'] == target['connector_class']
                    and type(change.get('index')) is int and change['index'] > 0,
                    'CURRENT coordinate effect has the wrong native field binding')
            for role, value in (('before', target['current']), ('after', target['merged'])):
                cell = change.get(role)
                _reference(cell)
                require(cell['native_class'] == 'Point' and equal(cell.get('point'), value),
                        'CURRENT coordinate plan differs from the complete prepared layout')
            require(change['before']['native_ref'] != change['after']['native_ref'],
                    'CURRENT coordinate setter must bind a distinct desired Point')
        elif kind in ('remove', 'remove_pin'):
            left, right = change.get('before_members'), change.get('after_members')
            require(change.get('kind') == 'collection' and change['native_class'] == 'OrderedCollection'
                    and type(left) is list and type(right) is list
                    and type(change.get('before_size')) is int and change['before_size'] == len(left)
                    and type(change.get('after_size')) is int and change['after_size'] == len(right),
                    'CURRENT removal lacks complete ordered native members')
            matches = [(slot, member) for slot, member in enumerate(left) if member.get('native_key') == key]
            require(len(matches) == 1, 'CURRENT removal target is missing or ambiguous')
            slot, member = matches[0]
            _reference(member)
            require(member['native_class'] == observations[key]['native_class']
                    and equal(right, left[:slot] + left[slot + 1:]),
                    'CURRENT removal alters another member, identity or ordering')
            removed[key] = member
        else:
            require(key in removed and change.get('kind') == 'field' and change.get('field') == 'manager'
                    and change.get('native_key') == key and alias == removed[key]['native_ref']
                    and change['native_class'] == removed[key]['native_class']
                    and type(change.get('index')) is int and change['index'] > 0,
                    'CURRENT manager clear differs from the exact removed object')
            _reference(change.get('before'))
            require(change['before']['native_class'] == observations[key]['parent_class']
                    and change.get('after') == {'native_class': 'UndefinedObject', 'native_key': None, 'value': None},
                    'CURRENT manager clear lacks its original parent or exact nil value')
    return len(plan)


def inspect_ready_classification(raw, token, current, prepared):
    proof = raw.get('current_execution_classification_preflight')
    require(type(proof) is dict and set(proof) == {'publication', 'owners'},
            'Complete read-only CURRENT classification required')
    publication, rows = proof['publication'], proof['owners']
    definition = current['observation']['signature']['oid']
    roster = {owner['oid']: owner for owner in current['owners']}
    patches = {row['oid']: row for row in prepared}
    require(type(publication) is dict and publication.get('profile') == 'class_model_publication_study_v1'
            and publication.get('action') == 'classify' and publication.get('state') == 'ready'
            and publication.get('token') == token and publication.get('definition_oid') == definition
            and type(publication.get('model_setters_called')) is int and publication['model_setters_called'] == 0
            and type(publication.get('model_steps')) is int and publication['model_steps'] == 0
            and publication.get('write_authorized') is False and publication.get('production_executor_available') is False,
            'CURRENT classification has a different phase, identity or authority')
    signatures = publication.get('signature_values')
    require(type(signatures) is dict and set(signatures) == {'actual', 'current', 'candidate', 'native', 'public'}
            and signatures['candidate'] is None and publication.get('candidate_signature') is None
            and all(equal(signatures[role], current['observation']['signature'])
                    for role in ('actual', 'current', 'native', 'public')),
            'Complete ready-state signatures differ from the durable CURRENT baseline')
    for field in ('public_native_signature_matches', 'return_identity_matches', 'definition_configuration_matches',
                  'current_signature_matches', 'current_argument_identities_match'):
        require(publication.get(field) is True, 'CURRENT signature/configuration/native identity classification lacks proof')
    for field in ('candidate_signature_matches', 'candidate_argument_identities_match'):
        require(publication.get(field) is False, 'CURRENT classification incorrectly reports candidate signature applied')
    source_rows = publication.get('owners')
    require(type(source_rows) is list and len(source_rows) == len(roster)
            and {row['oid'] for row in source_rows} == set(roster)
            and type(publication.get('owner_count')) is int and publication['owner_count'] == len(roster),
            'CURRENT source classification omits or duplicates an owner')
    for source in source_rows:
        oid = source['oid']
        require(source['component'].strip('\\') == roster[oid]['component'].strip('\\')
                and source['owner_state'] == 'prepared'
                and all(type(source.get(field)) is int and source[field] == 0
                        for field in ('publish_stores', 'restore_stores')),
                'CURRENT source classification owner path, state or stores differ')
        actual = decode_graph(source['actual_source_graph'], oid)
        for role in ('current', 'candidate'):
            expected = decode_graph(patches[oid][role + '_source_graph'], oid)
            require(equal(decode_graph(source[role + '_source_graph'], oid), expected)
                    and type(source.get(role + '_matches')) is bool
                    and source[role + '_matches'] is equal(actual, expected),
                    'CURRENT complete source or configuration classification differs')
        require(source['current_matches'] is True, 'CURRENT persisted source is not the complete baseline')
    require(type(rows) is list and len(rows) == len(roster) and {row['oid'] for row in rows} == set(roster),
            'CURRENT native classification omits or duplicates an owner')
    preparations = {row['oid']: row for row in raw['current_execution_preflight']}
    for row in rows:
        original = preparations[row['oid']]
        inspect_context_guard(row, definition, roster, 'ready', row['oid'])
        require(row.get('action') == 'classify' and row.get('group_state') == 'ready'
                and row.get('forward_plan') == original['forward_plan'] and row.get('unknown_native_changes') == []
                and all(row.get(field) is None and field in row
                        for field in ('active_command', 'active_kind', 'active_accounted', 'last_command'))
                and row.get('unknown_before_matches') is False and row.get('unknown_after_matches') is False,
                'CURRENT read-only classification contains an active, altered or unclassified action')
        for field in original:
            if field not in ('action', 'actual_native_changes', 'forward_plan', 'native_context_guard'):
                require(equal(row.get(field), original[field]), 'CURRENT classification changed its exact preparation')
        require(row.get('actual_native_changes') == [], 'CURRENT preparation classification contains native mutation')
    return {'profile': 'class_current_ready_classification_audit_v1', 'owners_verified': len(rows),
            'complete_sources_verified': 2 * len(rows), 'model_setters_called': 0,
            'production_executor_available': False, 'partial_recovery_verified': False}


def inspect_preflight(raw, token, current, prepared):
    identity = inspect_current_identity(raw.get('current_identity_preflight'), token, current, prepared)
    rows = raw.get('current_execution_preflight')
    owners = {owner['oid']: owner for owner in current['owners']}
    patches = {row['oid']: row['runtime_patch'] for row in prepared}
    counts = {row['oid']: row for row in identity['owners']}
    require(type(rows) is list and len(rows) == len(owners), 'CURRENT preparations omit owners')
    verified, seen = [], set()
    for row in rows:
        require(type(row) is dict and row.get('oid') in owners and row['oid'] not in seen,
                'CURRENT preparation has duplicate or unknown owner')
        oid = row['oid']
        seen.add(oid)
        inspect_context_guard(row, current['observation']['signature']['oid'], owners, 'ready', oid)
        expected = counts[oid]['planned_coordinate_setters'] + sum(
            2 if target['kind'] == 'node' else 1 for target in patches[oid]['targets'])
        require(row.get('profile') == 'class_current_execution_study_v1' and row.get('token') == token
                and row.get('action') == 'prepare' and row.get('state') == row.get('entry_state') == 'prepared'
                and type(row.get('generation')) is int
                and row['generation'] == owners[oid]['scopes']['Main']['generation']
                and type(row.get('forward_steps')) is int and row['forward_steps'] == expected,
                'CURRENT preparation identity or exact primitive count differs')
        for name in ('forward_completed', 'inverse_completed', 'publish_store_undo_steps',
                     'publish_store_undo_completed', 'restore_store_undo_steps', 'restore_store_undo_completed',
                     'model_steps', 'publish_stores', 'restore_stores', 'model_setters_called'):
            require(type(row.get(name)) is int and row[name] == 0, 'CURRENT preparation contains dispatched actions')
        for name in ('current_diagram_identity_verified', 'physical_prefix_matches',
                     'full_native_original_restored', 'current_source_matches', 'execution_material_sealed',
                     'primitive_plan_sealed', 'inverse_plan_sealed', 'store_inverse_plans_sealed'):
            require(row.get(name) is True, 'CURRENT preparation lacks exact sealed baseline')
        require(row.get('publish_store_undo_plan') == row.get('restore_store_undo_plan') == [],
                'CURRENT preparation already contains store collateral')
        inverse_effects = inspect_primitive_inverse(row.get('forward_plan'), row.get('inverse_plan'))
        require(type(row.get('candidate_source_matches')) is bool
                and type(row.get('captured_native_objects')) is int and row['captured_native_objects'] > 0
                and row.get('actual_native_changes') == [] and row.get('write_authorized') is False
                and row.get('production_executor_available') is False,
                'CURRENT capture is missing, mutated or falsely authorized')
        require(row.get('group_state') == 'ready'
                and all(field in row and row[field] is None
                        for field in ('active_command', 'active_kind', 'active_accounted', 'last_command'))
                and all(row.get(field) is False for field in ('action_completed', 'active_pending_after_return',
                                                             'unknown_before_matches', 'unknown_after_matches')),
                'CURRENT preparation has an active, completed or unclassified action')
        primitive_effects = inspect_primitive_plan(row, patches[oid], next(
            item for item in raw['current_identity_preflight']['owners'] if item['oid'] == oid))
        verified.append({'oid': oid, 'generation': row['generation'], 'forward_steps': expected,
                         'primitive_effects_verified': primitive_effects,
                         'inverse_effects_verified': inverse_effects,
                         'captured_native_objects': row['captured_native_objects']})
    events = read_events(raw['current_execution_preflight_journal'])
    require([event['kind'] for event in events] == ['intent', 'prepared_all', 'classification_observed', 'finished'],
            'CURRENT preflight WAL contains writes or incomplete preparation')
    require(events[0]['payload'] == {'operation': 'class_current_execution_preflight', 'token': token,
        'domain': {'session': read_events(raw['model_publication_journal'])[0]['payload']['domain']['session'],
                   'database': raw['database'], 'oid': current['observation']['signature']['oid'],
                   'process_epoch': raw['ascet_process_epoch']}, 'database_session': raw['database_session']}
        and events[1]['payload'] == {'current_observation': current, 'owners': rows}
        and events[2]['payload'] == raw['current_execution_classification_preflight']
        and events[3]['payload'] == {'status': 'prepared_only', 'model_setters_called': 0,
                                     'production_executor_available': False},
        'CURRENT preparation differs from durable WAL identity or full baseline')
    return {'profile': 'class_current_execution_preflight_audit_v1', 'owners_verified': len(verified),
            'owners': verified, 'forward_steps': sum(row['forward_steps'] for row in verified),
            'captured_native_objects': sum(row['captured_native_objects'] for row in verified),
            'model_setters_called': 0, 'production_executor_available': False,
            'not_verified': ['actual CURRENT primitive/store execution', 'post-store identity',
                             'production Class local inverse', 'whole delivery']}
