"""Typed Class argument plans and actual all-owner effect validation."""
from copy import deepcopy
import re

from bd_class_selector import alias, select_method, validate_method_selector
from bd_edit_journal import fingerprint

OPERATION = 'create_class_argument'
MODEL_TYPES = ('cont', 'sdisc', 'udisc', 'log')
# Native matrix02/audit01 verify 36 create/inverse rounds on three fixtures.
# The formal adapter additionally requires opt-in writes and isolated owners.
NATIVE_WRITE_ACCEPTED = True


def validate_operation(operation):
    if not isinstance(operation, dict) or set(operation) != {'op', 'selector', 'name', 'model_type', 'layout_policy', 'sequence_policy'}:
        raise ValueError('Exact typed Class argument creation required')
    if (operation['op'] != OPERATION or operation['model_type'] not in MODEL_TYPES or
            operation['layout_policy'] != 'follow_verified_pins_and_orthogonal_routes' or
            operation['sequence_policy'] != 'no_implicit_changes' or
            not isinstance(operation['name'], str) or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}', operation['name'])):
        raise ValueError('Bounded primitive input argument, explicit layout and sequence policies required')
    validate_method_selector(operation['selector'])
    if operation['selector']['diagram'] != 'Main':
        raise ValueError('The current native closure supports the Main definition diagram only')
    return operation


def native_selector(operation):
    validate_operation(operation)
    return {**operation['selector'], 'name': operation['name'], 'model_type': operation['model_type']}


def creation_plan(observed, operation):
    validate_operation(operation)
    state = observed['observation']
    method = select_method(state['signature'], operation['selector'])
    formals = method['arguments'] + ([method['return']] if method['return'] is not None else [])
    if (len({alias(row['alias']) for row in formals}) != len(formals) or
            any(row.get('owner_matches') is not True for row in formals)):
        raise ValueError('Current formal identities or ownership are ambiguous')
    if len(method['arguments']) >= 256:
        raise ValueError('Argument capacity exceeded')
    if any(row['name'] == method['name'] + '/' + operation['name'] for row in method['arguments']):
        raise ValueError('Argument name already exists')
    owners = {owner['oid']: owner for owner in observed['owners']}
    roster = {row['oid']: row['component'] for row in state['discovery']['callers']}
    if len(roster) != len(state['discovery']['callers']) or state['signature']['oid'] in roster:
        raise ValueError('Ambiguous Class caller roster')
    roster[state['signature']['oid']] = state['signature']['path']
    if len(owners) != len(observed['owners']) or {oid: owner['component'] for oid, owner in owners.items()} != roster:
        raise ValueError('Complete exact definition and caller owners required')
    for owner in owners.values():
        if not owner['scopes'] or any(graph['diagram'] != name for name, graph in owner['scopes'].items()):
            raise ValueError('Complete stable owner scope identities required')
    if operation['selector']['diagram'] not in owners[state['signature']['oid']]['scopes']:
        raise ValueError('Selected method definition scope is not observed')
    resources, seen = [], set()
    for caller in state['discovery']['callers']:
        owner = owners[caller['oid']]
        for scope in caller['scopes']:
            graph = owner['scopes'].get(scope['diagram'])
            if graph is None or graph['diagram'] != scope['diagram']:
                raise ValueError('Caller scope is not completely observed')
            rows = {row['ref']: row for row in graph['entries']}
            if len(rows) != len(graph['entries']):
                raise ValueError('Ambiguous caller graph identity')
            for occurrence in scope['occurrences']:
                key = (caller['oid'], scope['diagram'], occurrence['node'])
                node = rows.get('n' + str(occurrence['node']))
                if (key in seen or node is None or node['kind'] != 'node' or node.get('model_ref') != occurrence['model_ref'] or
                        type(occurrence['node']) is not int or occurrence['node'] < 0):
                    raise ValueError('Exact caller occurrence identity differs')
                seen.add(key)
                for pin in occurrence['pins']:
                    ref = 'p' + str(pin['id'])
                    value = rows.get(ref)
                    if (type(pin['id']) is not int or pin['id'] < 0 or value is None or value['kind'] != 'pin' or
                            value['owner'] != node['ref'] or ref not in node['pins']):
                        raise ValueError('Caller pins are not fully materialized')
                affected = [pin for pin in occurrence['pins'] if pin['method_alias'] == method['alias']]
                resources.append({'component': caller['component'], 'oid': caller['oid'], 'diagram': scope['diagram'],
                    'node': node['ref'], 'model_ref': occurrence['model_ref'], 'planned_input_pins': 1,
                    'layout_candidates': ['p' + str(pin['id']) for pin in affected]})
    return {'selector': deepcopy(operation['selector']), 'name': operation['name'], 'model_type': operation['model_type'],
        'direction': 'in', 'argument_index': len(method['arguments']) + 1, 'new_formal_alias': 'assigned_by_native_creation',
        'definition': {'component': state['signature']['path'], 'oid': state['signature']['oid']}, 'resources': resources,
        'planned_input_pin_count': len(resources), 'actual_effects': 'not_observed; read-only preview',
        'native_write_accepted': NATIVE_WRITE_ACCEPTED, 'inverse_policy': 'strict_all_owner_after_baseline',
        'not_checked': ['new formal/pin identities', 'actual layout displacement', 'effective instance values',
            'external type content', 'runtime scheduling', 'execution-time recovery and conflict guards']}


def creation_effects(study, operation, *, verify_restoration=False):
    """Reduce addition to the existing strict closed-removal checker on reversed observations."""
    from bd_class_interface_contract import deletion_effects
    from bde_class_interface_probe import public_projection

    validate_operation(operation)
    if study['operation'] != 'closed_create_argument' or study['selector'] != native_selector(operation):
        raise ValueError('Native creation intent differs')
    before, after = study['before'], study['after']
    method_before = select_method(before['signature'], operation['selector'])
    method_after = select_method(after['signature'], operation['selector'])
    if len(method_after['arguments']) != len(method_before['arguments']) + 1:
        raise ValueError('Creation must append one argument')
    formal = method_after['arguments'][-1]
    old_aliases = {row['alias'] for method in before['signature']['methods']
        for row in method['arguments'] + ([method['return']] if method['return'] is not None else [])}
    old_aliases.update(method['alias'] for method in before['signature']['methods'])
    if (alias(formal['alias']) in old_aliases or not formal['alias'].startswith('bytes:') or
            fingerprint(formal) != fingerprint({**formal, 'name': method_before['name'] + '/' + operation['name'], 'slot': 'argument',
                'index': len(method_before['arguments']) + 1, 'model_type': operation['model_type'],
                'owner_matches': True, 'native_class': 'SGMethodArgument', 'in': True, 'out': False, 'in_out': False})):
        raise ValueError('Created formal identity, name, type, ownership or direction differs')
    expected_signature = deepcopy(before['signature'])
    select_method(expected_signature, operation['selector'])['arguments'].append(deepcopy(formal))
    if fingerprint(after['signature']) != fingerprint(expected_signature):
        raise ValueError('Signature changed outside the requested appended argument')
    for state in (before, after):
        if state['public_signature'] != public_projection(state['signature']['methods']):
            raise ValueError('Independent public signature differs')
    if fingerprint(before['configurations']) != fingerprint(after['configurations']):
        raise ValueError('Creation changed persisted owner configurations')
    discovered_before = {row['oid']: row for row in before['discovery']['callers']}
    discovered_after = {row['oid']: row for row in after['discovery']['callers']}
    if set(discovered_before) != set(discovered_after):
        raise ValueError('Creation changed caller owners')
    pin_count, created_pins = 0, {}
    for oid, caller in discovered_before.items():
        current = discovered_after[oid]
        for scope in caller['scopes']:
            actual_scope = next(row for row in current['scopes'] if row['diagram'] == scope['diagram'])
            for occurrence in scope['occurrences']:
                actual = next(row for row in actual_scope['occurrences'] if row['node'] == occurrence['node'])
                pins = [pin for pin in actual['pins'] if pin['formal_alias'] == formal['alias']]
                if (len(pins) != 1 or pins[0]['method_alias'] != method_before['alias'] or
                        pins[0]['input'] is not True or pins[0]['output'] is not False or
                        type(pins[0]['id']) is not int or pins[0]['id'] < 0 or
                        pins[0]['id'] in {pin['id'] for node in scope['occurrences'] for pin in node['pins']}):
                    raise ValueError('Every caller occurrence requires one unique new input pin')
                pin_count += 1
                key = (oid, scope['diagram'])
                ref = 'p' + str(pins[0]['id'])
                if ref in created_pins.setdefault(key, set()):
                    raise ValueError('Created caller pins share a native scope identity')
                created_pins[key].add(ref)
    reverse = {**study, 'before': after, 'after': before, 'operation': 'closed_delete_argument',
        'selector': {**operation['selector'], 'formal_alias': formal['alias'], 'slot': 'argument'}}
    owner_paths = [row['component'] for row in before['callers']] + [before['signature']['path']]
    owner_ids = {row['component']: row['oid'] for row in before['discovery']['callers']}
    owner_ids[before['signature']['path']] = before['signature']['oid']
    for index, path in enumerate(owner_paths):
        if set(study[f'owner_scopes_before_{index}']) != set(study[f'owner_scopes_after_{index}']):
            raise ValueError('Complete owner scope set changed during creation')
        reverse[f'owner_scopes_before_{index}'] = study[f'owner_scopes_after_{index}']
        reverse[f'owner_scopes_after_{index}'] = study[f'owner_scopes_before_{index}']
        for scope, original in study[f'owner_scopes_before_{index}'].items():
            current = study[f'owner_scopes_after_{index}'][scope]
            previous_refs = {row['ref'] for row in original['entries']}
            introduced = [row for row in current['entries'] if row['kind'] != 'edge' and row['ref'] not in previous_refs]
            allowed = created_pins.get((owner_ids[path], scope), set())
            if owner_ids[path] == before['signature']['oid']:
                allowed = {'m_' + formal['alias'][6:]}
            if (any(row['ref'] not in allowed or row['kind'] not in ('pin', 'model') for row in introduced) or
                    any(row['kind'] == 'edge' and (row['source'] in allowed or row['target'] in allowed) for row in current['entries'])):
                raise ValueError('Argument creation cannot introduce nodes or data connections')
            # Reloaded edge aliases belong to the new scope generation; the reversed checker compares every edge value and multiplicity.
            if current['lookup_edges'] != original['lookup_edges']:
                raise ValueError('Argument creation cannot change the existing data connection count')
        if verify_restoration and (fingerprint(study[f'owner_scopes_restored_{index}']) != fingerprint(study[f'owner_scopes_before_{index}']) or
                study.get(f'caller_restore_{index}') != 'restored'):
            raise ValueError('Original graph values and native recovery receipt are not restored')
    deletion_effects(reverse, allow_pin_layout=True, allow_adjacent_corner_layout=True, verify_restoration=False)
    if verify_restoration and (fingerprint(study['restored']['signature']) != fingerprint(before['signature']) or
            fingerprint(study['restored']['configurations']) != fingerprint(before['configurations'])):
        raise ValueError('Original signature or configuration storage is not restored')
    return {'requested_effect_verified': True, 'formal_alias': formal['alias'], 'created_input_pins': pin_count,
        'native_restoration_verified': verify_restoration, 'execution_schedule_verified': False,
        'edge_identity_comparison': 'complete semantic multiset; runtime aliases are scope-generation-bound',
        'inverse_identity_comparison': 'exact original refs/generation/fields plus native retained-object restoration' if verify_restoration else 'not_observed'}
