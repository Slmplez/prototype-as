"""Reconstruct real PRIVATE composite-recovery prefixes, never a native reloader."""
from copy import deepcopy

from bd_class_study_journal import read_events
from bd_edit_journal import canonical, fingerprint
from bd_private_registry import validate_descriptor, STATIC_EXPORT
from bd_private_step_journal import (validate_export, _apply, _actual, _same, _normalized,
                                     _reply_flags, _integer, DICT_CLASSES, SET_CLASSES)


def require(condition, message):
    if not condition:
        raise ValueError('Private physical evidence: ' + message)


def recover_cell(state, cell):
    result = deepcopy(state)
    row = result[cell['ref']]
    if cell['kind'] == 'fields':
        require(row['values'][cell['index'] - 1] == cell['after'], 'field recovery before differs')
        row['values'][cell['index'] - 1] = deepcopy(cell['before'])
    else:
        require(_normalized(row) == _normalized({**row, 'values': cell['after']}), 'collection recovery before differs')
        row['values'] = deepcopy(cell['before'])
    return result


def cell_value(state, cell):
    row = state[cell['ref']]
    return row['values'][cell['index'] - 1] if cell['kind'] == 'fields' else row['values']


def cell_equal(row, left, right):
    return (left == right if row['kind'] == 'fields' else
            _normalized({**row, 'values': left}) == _normalized({**row, 'values': right}))


def pending_equal(row, actual, expected):
    if actual is None or expected is None:
        return actual is expected
    if type(actual) is not dict or type(expected) is not dict or set(actual) != set(expected):
        return False
    return all(cell_equal(row, actual[key], expected[key]) if key in ('before', 'after') else actual[key] == expected[key]
               for key in expected)


def validate_physical_plan(state, cell, steps):
    row = state[cell['ref']]
    initial, desired = cell_value(state, cell), cell['before']
    target = cell['ref']
    number = lambda value: ['number', 'SmallInteger', str(value)]
    if cell['kind'] == 'fields':
        expected = [{'kind': 'field', 'ref': target, 'index': number(cell['index']), 'value': desired}]
    elif row['class'] == 'OrderedCollection':
        expected = [{'kind': 'remove', 'ref': target, 'index': number(index), 'value': initial[index - 1]}
                    for index in range(len(initial), 0, -1)]
        expected += [{'kind': 'insert', 'ref': target, 'index': number(index), 'value': member}
                     for index, member in enumerate(desired, 1)]
    elif row['class'] == 'Array':
        require(len(initial) == len(desired), 'physical array size changed')
        expected = [{'kind': 'array_put', 'ref': target, 'index': number(index), 'value': member}
                    for index, member in enumerate(desired, 1) if initial[index - 1] != member]
    elif row['class'] in DICT_CLASSES:
        removes = [{'kind': 'dict_remove', 'ref': target, 'index': key, 'value': ['nil']} for key, value in initial]
        puts = [{'kind': 'dict_put', 'ref': target, 'index': key, 'value': value} for key, value in desired]
        require(sorted(steps[:len(removes)], key=canonical) == sorted(removes, key=canonical) and
                sorted(steps[len(removes):], key=canonical) == sorted(puts, key=canonical), 'physical dictionary schedule differs')
        expected = steps
    else:
        require(row['class'] in SET_CLASSES, 'unsupported physical native collection')
        removes = [{'kind': 'set_remove', 'ref': target, 'index': ['nil'], 'value': member} for member in initial]
        adds = [{'kind': 'set_add', 'ref': target, 'index': ['nil'], 'value': member} for member in desired]
        require(sorted(steps[:len(removes)], key=canonical) == sorted(removes, key=canonical) and
                sorted(steps[len(removes):], key=canonical) == sorted(adds, key=canonical), 'physical Set schedule differs')
        expected = steps
    require(type(steps) is list and 0 < len(steps) <= 100000 and steps == expected, 'physical schedule differs from exact target CURRENT')
    projected = deepcopy(state)
    for step in steps:
        next_state = _apply(projected, step)
        require(not _same(projected, next_state), 'ambiguous physical no-op')
        projected = next_state
    require(_same(projected, recover_cell(state, cell)), 'physical schedule does not restore its exact logical cell')


def audit_physical(root, binding):
    validate_descriptor(binding)
    return audit_physical_events(read_events(root), binding)


def audit_physical_events(events, binding):
    validate_descriptor(binding)
    require(events and events[0]['kind'] == 'intent', 'initial physical intent missing')
    intent = events[0]['payload']
    required_intent = {'profile', 'domain', 'token', 'fault_stage', 'position', 'production_write_authorized'}
    collection_class = intent.get('collection_class', 'OrderedCollection')
    require(set(intent) in (required_intent, required_intent | {'collection_class'}) and
            collection_class in ('OrderedCollection', 'Dictionary', 'Set', 'Array') and
            intent['profile'] == 'private_physical_journal_v1' and intent['domain'] == binding['domain'] and
            intent['token'] == binding['token'] and intent['fault_stage'] in ('before', 'after') and
            type(intent['position']) is int and intent['position'] in (0, 1, 2) and intent['production_write_authorized'] is False,
            'exact physical study intent required')
    current = refs = state = exported = original = last = active = recovery = schedule = cell = None
    unit = completed = executed = recovered = setters = failed = lookups = refused = 0
    fault_index = None
    unresolved = False
    classified = False
    disturbed = False
    disturbance_before = None
    perturbed = False
    terminal = released = False
    bound = False
    stopped_pid = None
    native_state = 'prepared'
    expected_pending = None
    independent_x = None

    def check_observation(reply):
        status = reply['status']
        require(reply['profile'] == 'native_private_step_wire_v1' and reply['token'] == binding['token'],
                'observation native profile/token differs')
        _reply_flags(reply, observation_complete=not unresolved)
        require(status['state'] == native_state and type(status['executed']) is int and status['executed'] == executed and
                type(status['recovered']) is int and status['recovered'] == recovered,
                'logical native counters/state differ from actual physical prefix')
        for name in ('primitive_count', 'current_checkpoint_objects', 'current_checkpoint_fields'):
            require(type(status[name]) is int and status[name] == exported['status'][name], 'native CURRENT coverage counter differs')
        require(status['actual_field_changes'] == sum(entry['kind'] == 'fields' for entry in recovery or []) and
                status['actual_collection_changes'] == sum(entry['kind'] == 'collection' for entry in recovery or []) and
                status['desired_result_verified'] is (native_state == 'partial' and executed == len(exported['steps']) and _same(state, original)),
                'native recovery/desired-result counters differ')
        require(_same(state, _actual(current, reply['actual_changes'], refs)), 'observed actual partial CURRENT differs')
        require(reply['current_matches'] is _same(state, current) and reply['desired_checkpoint_matches'] is _same(state, original),
                'native CURRENT/original equality claim differs')
        require(reply['recovery_plan'] == (recovery or []) and
                pending_equal(state[cell['ref']] if cell is not None else {}, reply['physical_pending'], expected_pending),
                'retained recovery schedule or physical before/after/prefix changed')
        require(type(reply['independent_x']) is int and reply['independent_x'] == independent_x, 'independent visible x evidence differs')

    for row in events[1:]:
        kind, body = row['kind'], row['payload']
        require(not terminal, 'event after terminal')
        require(not released or kind == 'finished', 'event after native release')
        if kind == 'prepared':
            require(exported is None and set(body) == {'export', 'descriptor'} and body['descriptor'] == binding, 'duplicate/foreign preparation')
            exported = body['export']
            current, refs = validate_export(exported, minimum_primitives=3 if collection_class == 'OrderedCollection' else 1)
            require(exported['token'] == binding['token'], 'prepared token differs')
            original = {entry['ref']: entry for entry in exported['original']}
            state, last = deepcopy(current), exported
            independent_x = exported['independent_x_before']
            require(exported['physical_pending'] is None, 'prepared export already has physical material')
            check_observation(exported)
        elif kind == 'registry_bound':
            require(exported is not None and not bound and body == {'descriptor': binding}, 'missing/duplicate/foreign registry binding')
            bound = True
        elif kind == 'request_started':
            require(bound and active is None and set(body) == {'action', 'index', 'instruction'} and
                    type(body['index']) is int, 'overlapping/noncanonical physical request')
            active = body
        elif kind == 'physical_failed':
            require(active is not None and active['action'] == 'physical_fail_' + intent['fault_stage'] and
                    active['index'] == fault_index and completed == fault_index - 1 and not unresolved and
                    active['instruction'] == schedule[completed] and failed == 0 and set(body) == {'error'} and
                    isinstance(body['error'], str) and ('Injected private physical failure ' +
                    ('before write' if intent['fault_stage'] == 'before' else 'after write before observation')) in body['error'],
                    'fault lacks exact active primitive and native error')
            predicted = _apply(state, schedule[completed])
            expected_pending.update(before=deepcopy(cell_value(state, cell)), after=deepcopy(cell_value(predicted, cell)),
                                    awaiting=fault_index, outcome='unknown')
            if intent['fault_stage'] == 'after':
                state = predicted
                setters += 1
            unresolved = True
            native_state = 'physical_recovery_started'
            failed += 1
            active = None
        elif kind == 'host_terminated':
            require(unresolved and stopped_pid is None and set(body) == {'host_pid', 'exit_code', 'transport_failure', 'setter_replayed'} and
                    type(body['host_pid']) is int and body['host_pid'] > 0 and type(body['exit_code']) is int and
                    body['exit_code'] != 0 and body['transport_failure'] is True and body['setter_replayed'] is False,
                    'unknown physical state lacks real dedicated bridge termination')
            stopped_pid = body['host_pid']
        elif kind == 'registry_lookup':
            require(bound and unresolved and stopped_pid is not None and lookups == 0 and
                    set(body) == {'descriptor', 'host_pid', 'commands', 'export'} and body['descriptor'] == binding and
                    body['commands'] == ['open', 'lookup'] and type(body['host_pid']) is int and body['host_pid'] > 0 and
                    body['host_pid'] != stopped_pid, 'lookup did not retain original physical material')
            require(all(fingerprint(body['export'][key]) == fingerprint(exported[key]) for key in STATIC_EXPORT),
                    'lookup re-created references or original material')
            last = body['export']
            require(last['action'] == 'export' and last['index'] == 0, 'lookup export identity differs')
            check_observation(last)
            lookups += 1
        elif kind == 'observed':
            require(exported is not None and active is None and set(body) == {'reply'}, 'unexpected independent observation')
            reply = body['reply']
            require(reply['action'] == 'observe' and reply['index'] == 0 and reply['token'] == binding['token'] and
                    _same(state, _actual(current, reply['actual_changes'], refs)), 'independent actual partial CURRENT differs')
            check_observation(reply)
            last = reply
        elif kind == 'request_observed':
            require(active is not None and set(body) == {'reply'}, 'result has no flushed physical request')
            reply = body['reply']
            action, index = active['action'], active['index']
            require(reply['token'] == binding['token'] and reply['action'] == action and reply['index'] == index,
                    'physical reply request identity changed')
            if action == 'step':
                require(recovered == 0 and unit == 0 and index == executed + 1 and
                        active['instruction'] == exported['steps'][index - 1], 'forward primitive schedule differs')
                state = _apply(state, active['instruction'])
                executed += 1
                native_state = 'partial'
                recovery = reply['recovery_plan']
                require(sorted(recovery, key=canonical) == sorted(reply['actual_changes'], key=canonical), 'logical recovery is not exact actual forward diff')
                if executed == len(exported['steps']):
                    require(_same(state, original), 'complete forward steps differ from original fields/references/collections')
            elif action == 'recover':
                require(executed == len(exported['steps']) and index == recovered + 1 and not unresolved and
                        reply['physical_pending'] is None and active['instruction'] == recovery[index - 1], 'ordinary recovery schedule differs')
                state = recover_cell(state, recovery[index - 1])
                recovered += 1
                native_state = 'recovered' if recovered == len(recovery) else 'recovering'
            elif action == 'physical_begin':
                require(executed == len(exported['steps']) and unit == 0 and index == recovered + 1 and
                        active['instruction'] == recovery[index - 1], 'physical target does not match next actual touched cell')
                pending = reply['physical_pending']
                unit, cell = index, recovery[index - 1]
                schedule = pending['steps']
                validate_physical_plan(state, cell, schedule)
                require(state[cell['ref']]['class'] == collection_class and
                        len(schedule) >= (3 if collection_class == 'OrderedCollection' else 2),
                        'study lacks a real multi-write requested collection')
                fault_index = 1 if intent['position'] == 0 else (len(schedule) + 1) // 2 if intent['position'] == 1 else len(schedule)
                expected_pending = {'unit': unit, 'target_ref': cell['ref'], 'kind': cell['kind'], 'index': cell['index'],
                                    'steps': schedule, 'completed': 0, 'awaiting': 0, 'outcome': 'prepared'}
                native_state = 'physical_recovery_prepared'
            elif action == 'physical_next':
                require(unit > 0 and not unresolved and index == completed + 1 and active['instruction'] == schedule[completed],
                        'physical primitive was replayed/skipped or unconfirmed')
                before_value = deepcopy(cell_value(state, cell))
                state = _apply(state, schedule[completed])
                completed += 1
                setters += 1
                expected_pending.update(completed=completed, awaiting=0, outcome='applied',
                                        before=before_value, after=deepcopy(cell_value(state, cell)))
                native_state = 'physical_recovery_prepared'
                if completed == len(schedule):
                    recovered += 1
                    expected_pending = None
                    native_state = 'recovered' if recovered == len(recovery) else 'recovering'
            elif action == 'physical_reconcile':
                require(unresolved and not disturbed and index == fault_index and classified is False and
                        active['instruction'] == schedule[completed] and
                        reply['result'] == ('applied' if intent['fault_stage'] == 'after' else 'not_applied'),
                        'unknown primitive was not reconciled read-only from exact CURRENT')
                actual_value = cell_value(state, cell)
                is_before = cell_equal(state[cell['ref']], actual_value, expected_pending['before'])
                is_after = cell_equal(state[cell['ref']], actual_value, expected_pending['after'])
                require(is_before != is_after and reply['result'] == ('applied' if is_after else 'not_applied'),
                        'classification lacks distinct retained before/after proof')
                expected_pending.update(awaiting=0, outcome=reply['result'])
                if intent['fault_stage'] == 'after':
                    completed += 1
                    expected_pending['completed'] = completed
                    if completed == len(schedule):
                        recovered += 1
                        expected_pending = None
                else:
                    expected_pending['after'] = deepcopy(actual_value)
                classified = True
                unresolved = False
                native_state = ('recovered' if recovered == len(recovery) else 'recovering') if expected_pending is None else 'physical_recovery_prepared'
            elif action == 'perturb':
                require(unresolved and not perturbed and index == 0 and active['instruction'] == exported['independent_ref'],
                        'independent change was not introduced after unknown physical outcome')
                delta = [entry for entry in reply['actual_changes'] if entry['ref'] == exported['independent_ref']]
                require(len(delta) == 1 and delta[0]['kind'] == 'fields' and _integer(delta[0]['before']) == exported['independent_x_before'] and
                        _integer(delta[0]['after']) == exported['independent_x_before'] + 7, 'independent field is not the exact x change')
                state[delta[0]['ref']]['values'][delta[0]['index'] - 1] = deepcopy(delta[0]['after'])
                perturbed = True
                independent_x += 7
            elif action in ('physical_disturb', 'physical_reset'):
                require(unresolved and index == 0 and cell is not None and active['instruction'] == cell['ref'],
                        'physical conflict probe lacks exact active target')
                values = state[cell['ref']]['values']
                if action == 'physical_disturb':
                    require(not disturbed, 'physical conflict probe repeated')
                    native_values = _actual(current, reply['actual_changes'], refs)[cell['ref']]['values']
                    if collection_class == 'OrderedCollection':
                        exact_probe = (len(native_values) == len(values) + 1 and native_values[:-1] == values and
                                       native_values[-1] in cell['after'])
                    else:
                        expected_probe = deepcopy(values)
                        marker = ['symbol', 'BDE_PRIVATE_PHYSICAL_CONFLICT']
                        if collection_class == 'Dictionary':
                            expected_probe.append([marker, ['nil']])
                        elif collection_class == 'Set':
                            expected_probe.append(marker)
                        else:
                            expected_probe[0] = marker
                        exact_probe = cell_equal(state[cell['ref']], native_values, expected_probe)
                    require(exact_probe and
                            not cell_equal(state[cell['ref']], native_values, expected_pending['before']) and
                            not cell_equal(state[cell['ref']], native_values, expected_pending['after']),
                            'conflict probe is not a distinct third native image')
                    disturbance_before = deepcopy(values)
                    state[cell['ref']]['values'] = deepcopy(native_values)
                    disturbed = True
                else:
                    require(disturbed and disturbance_before is not None, 'physical conflict reset is not exact')
                    state[cell['ref']]['values'] = deepcopy(disturbance_before)
                    disturbed = False
            else:
                require(action == 'reset' and not unresolved and perturbed and recovered == len(recovery) and
                        active['instruction'] == exported['independent_ref'] and index == 0, 'unknown fixed physical request')
                delta = next(entry for entry in last['actual_changes'] if entry['ref'] == exported['independent_ref'])
                state[delta['ref']]['values'][delta['index'] - 1] = deepcopy(delta['before'])
                independent_x = exported['independent_x_before']
                require(_same(state, current), 'complete CURRENT still differs after independent reset')
            check_observation(reply)
            last, active = reply, None
        elif kind == 'refused':
            require(active is None and set(body) == {'action', 'index', 'error', 'before', 'after'} and body['before'] == body['after'] and
                    isinstance(body['error'], str) and 'BDE_PRIVATE_' in body['error'] and
                    _same(state, _actual(current, body['after']['actual_changes'], refs)), 'physical refusal changed CURRENT or lacks native error')
            require(body['after']['action'] == 'observe' and body['after']['index'] == 0, 'refusal lacks independent observation')
            check_observation(body['after'])
            refused += 1
        elif kind == 'registry_released':
            require(not unresolved and active is None and classified and recovered == len(recovery) and _same(state, current) and
                    set(body) == {'reply', 'size_before', 'size_after'} and body['size_before'] == body['size_after'] + 1 and
                    body['reply'].get('released') is True and body['reply']['current_matches'] is True and
                    body['reply']['token'] == binding['token'] and body['reply']['action'] == 'release' and body['reply']['index'] == 0,
                    'release dropped incomplete/unknown CURRENT')
            check_observation(body['reply'])
            released = True
        else:
            require(kind == 'finished' and body == {'status': 'recovered'} and released and active is None, 'unknown/unfinished physical event')
            terminal = True
    require(terminal and failed == lookups == 1 and classified and setters == len(schedule) and completed == len(schedule) and perturbed,
            'incomplete physical failure/lookup/classification/preservation coverage')
    return {'status': 'recovered', 'domain': binding['domain'], 'fault_stage': intent['fault_stage'], 'position': intent['position'],
            'target_class': state[cell['ref']]['class'], 'physical_primitives': setters, 'physical_count': len(schedule),
            'fault_index': fault_index, 'execution_primitives': executed, 'recovery_units': recovered, 'refusals': refused,
            'host_terminations': 1, 'same_material_lookups': 1, 'readonly_classifications': 1,
            'independent_change_after_fault_preserved': True, 'registry_released': True,
            'model_setters_called': 0, 'native_archive_available': False, 'production_inverse_available': False}
