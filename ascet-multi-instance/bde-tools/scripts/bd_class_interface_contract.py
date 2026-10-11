"""Precision gate for exact Class formal deletion and all-owner observations."""
from collections import Counter
from copy import deepcopy
import json
from bd_class_selector import legacy_selector, select_formal
from bd_edit_journal import fingerprint


def graph_semantics(observation):
    value = deepcopy(observation)
    value.pop('generation', None)
    edges = []
    entries = []
    for row in value['entries']:
        if row['kind'] == 'edge':
            row.pop('ref')
            edges.append(json.dumps(row, sort_keys=True, separators=(',', ':')))
        else:
            entries.append(row)
    value['entries'] = sorted(entries, key=lambda row: row['ref'])
    value['edge_semantics'] = dict(sorted(Counter(edges).items()))
    return value


def _aligned_corners(previous, endpoints):
    predicted = deepcopy(endpoints)
    if len(previous) != len(predicted) or len(previous) < 2:
        raise ValueError('Adjacent corner layout requires a stable orthogonal route')
    if len(previous) == 2:
        a, b = predicted
        if a == b or a[0] != b[0] and a[1] != b[1]:
            raise ValueError('Adjacent corner layout would break the orthogonal route')
        return predicted
    for endpoint, corner in ((0, 1), (-1, -2)):
        if previous[endpoint] == predicted[endpoint]:
            continue
        a, b = previous[endpoint], previous[corner]
        if a[0] == b[0] and a[1] != b[1]:
            predicted[corner][0] = predicted[endpoint][0]
        elif a[1] == b[1] and a[0] != b[0]:
            predicted[corner][1] = predicted[endpoint][1]
        else:
            raise ValueError('Adjacent corner layout has an ambiguous segment axis')
    if any(a == b or (a[0] != b[0] and a[1] != b[1]) for a, b in zip(predicted, predicted[1:])):
        raise ValueError('Adjacent corner layout would break the orthogonal route')
    return predicted


def _public_route_oracle(study, path, scope, original, actual):
    def key(source, target, edge_type, route):
        return json.dumps([source, target, edge_type, route], separators=(',', ':'))
    for phase, graph in (('before', original), ('after', actual)):
        caller = next(row for row in study[phase]['callers'] if row['component'] == path)
        edges = caller['public_tree'][scope]['edges']
        public = Counter(key('p' + str(row['source']['native']['id']), 'p' + str(row['target']['native']['id']),
                             row['type'], row['route']) for row in edges)
        native = Counter(key(row['source'], row['target'], row['type'], row['route'])
                         for row in graph['entries'] if row['kind'] == 'edge')
        if public != native:
            raise ValueError('Complete independent public route multiset differs from native scope')


def deletion_effects(study, *, allow_unassigned_sequence=False, allow_pin_layout=False, allow_adjacent_corner_layout=False, verify_restoration=True):
    if allow_adjacent_corner_layout and not allow_pin_layout:
        raise ValueError('Adjacent corner layout requires the explicit verified pin-layout policy')
    operation = study['operation']
    if operation not in ('closed_delete_argument', 'closed_delete_return'):
        raise ValueError('A closed Class formal deletion observation is required')
    before, after = study['before'], study['after']
    slot = 'argument' if operation == 'closed_delete_argument' else 'return'
    selector = study.get('selector') or legacy_selector(before['signature'], slot)
    if selector['slot'] != slot:
        raise ValueError('Requested deletion and selected formal slot differ')
    method, formal = select_formal(before['signature'], selector)
    if not formal or not formal['alias'].startswith('bytes:'):
        raise ValueError('Exact byte formal identity required')
    expected_signature = deepcopy(before['signature'])
    expected_method = next(row for row in expected_signature['methods'] if row['alias'] == method['alias'])
    if operation == 'closed_delete_argument':
        expected_method['arguments'] = [row for row in expected_method['arguments'] if row['alias'] != formal['alias']]
        for index, row in enumerate(expected_method['arguments'], 1):
            row['index'] = index
    else:
        expected_method['return'] = None
    if after['signature'] != expected_signature:
        raise ValueError('Class signature changed outside the requested formal')
    layout = {}
    if before['discovery'] != after['discovery']:
        expected_discovery = deepcopy(before['discovery'])
        observed_callers = {row['oid']: row for row in after['discovery']['callers']}
        public_before = {row['component']: row for row in before['callers']}
        public_after = {row['component']: row for row in after['callers']}
        for caller in expected_discovery['callers']:
            for scope in caller['scopes']:
                for occurrence in scope['occurrences']:
                    occurrence['pins'] = [pin for pin in occurrence['pins'] if not (
                        pin['formal_alias'] == formal['alias'] and pin['method_alias'] == method['alias'])]
                    if not allow_pin_layout:
                        continue
                    actual_scope = next(s for s in observed_callers[caller['oid']]['scopes'] if s['diagram'] == scope['diagram'])
                    actual_node = next(n for n in actual_scope['occurrences'] if n['node'] == occurrence['node'])
                    for pin in occurrence['pins']:
                        observed = next(p for p in actual_node['pins'] if p['id'] == pin['id'])
                        if pin.get('position') == observed.get('position'):
                            continue
                        previous, current = pin.get('position'), observed.get('position')
                        if any(not isinstance(p, list) or len(p) != 2 or any(type(v) is not int for v in p) for p in (previous, current)):
                            raise ValueError('Stable native pin coordinates required for layout effects')
                        ref = f"{scope['diagram']}/p{pin['id']}"
                        endpoint_before = public_before[caller['component']].get('public_connected_pin_positions', {}).get(ref)
                        endpoint_after = public_after[caller['component']].get('public_connected_pin_positions', {}).get(ref)
                        if endpoint_before is None or endpoint_after is None:
                            raise ValueError('Moved caller pin has no independent public connected-endpoint evidence')
                        if [b - a for a, b in zip(previous, current)] != [b - a for a, b in zip(endpoint_before, endpoint_after)]:
                            raise ValueError('Independent public endpoint displacement differs from native pin anchor movement')
                        layout[(caller['component'], scope['diagram'], 'p' + str(pin['id']))] = {
                            'before': endpoint_before, 'after': endpoint_after, 'anchor_before': previous, 'anchor_after': current}
                        pin['position'] = deepcopy(current)
        if after['discovery'] != expected_discovery:
            raise ValueError('Caller discovery/bindings changed outside the requested formal')
    effects = []
    callers = before['discovery']['callers']
    # Native observation indexes follow the fixture order, not sorted OIDs.
    caller_by_path = {caller['component']: caller for caller in callers}
    owner_paths = [caller['component'] for caller in before['callers']] + [before['signature']['path']]
    for index, path in enumerate(owner_paths):
        scope_maps = study.get(f'owner_scopes_before_{index}')
        if scope_maps is None:
            if index < len(owner_paths) - 1 and any(scope['diagram'] != 'Main' for scope in caller_by_path[path]['scopes']):
                raise ValueError('Complete scope observations required for nested callers')
            scope_maps = {'Main': study[f'owner_before_{index}']}
            actual_maps = {'Main': study[f'owner_after_{index}']}
            restored_maps = {'Main': study[f'owner_restored_{index}']} if verify_restoration else {}
        else:
            actual_maps = study[f'owner_scopes_after_{index}']
            restored_maps = study[f'owner_scopes_restored_{index}'] if verify_restoration else {}
            if set(scope_maps) != set(actual_maps) or verify_restoration and set(scope_maps) != set(restored_maps):
                raise ValueError('Complete scope set changed during formal deletion')
            if index < len(owner_paths) - 1 and any(scope['diagram'] not in scope_maps for scope in caller_by_path[path]['scopes']):
                raise ValueError('Caller occurrence scope is not observed')
        for scope_name, original in scope_maps.items():
            _scope_effect(study, selector, method, formal, path, index, owner_paths, caller_by_path,
                scope_name, original, actual_maps[scope_name], restored_maps.get(scope_name), effects,
                allow_unassigned_sequence, layout, allow_adjacent_corner_layout)
    return {'requested_effect_verified': True, 'selector': deepcopy(selector), 'definition_effect': {
        'oid': before['signature']['oid'], 'before': before['signature'], 'after': after['signature']},
        'resource_effects': effects, 'edge_identity_comparison': 'actual semantic multiset; runtime refs retained in raw effects',
        'inverse_identity_comparison': 'exact original refs/generation/fields plus native object identity' if verify_restoration else 'not_observed; apply-only validation',
        'sequence_policy': 'allow_unassigned_explicitly' if allow_unassigned_sequence else 'no_implicit_sequence_changes',
        'layout_policy': 'follow_verified_affected_class_occurrence_pins' if allow_pin_layout else 'no_implicit_pin_layout_changes',
        'adjacent_corner_policy': 'orthogonal_endpoint_alignment_with_complete_public_route_oracle' if allow_adjacent_corner_layout else 'no_implicit_corner_changes',
        'execution_schedule_verified': False}


def _scope_effect(study, selector, method, formal, path, index, owner_paths, caller_by_path,
                  scope_name, original, actual, restored, effects, allow_unassigned_sequence, layout, allow_adjacent_corner_layout):
        operation = study['operation']
        if original['diagram'] != scope_name or actual['diagram'] != scope_name or restored is not None and restored['diagram'] != scope_name:
            raise ValueError('Scope observation identity mismatch')
        expected = deepcopy(original)
        nodes, pins, models, callable_pins = set(), set(), set(), set()
        introduced_calls = []
        changed_routes = []
        corner_changes = []
        if index == len(owner_paths) - 1:
            model_ref = 'm_' + formal['alias'][6:]
            models = {row['ref'] for row in original['entries'] if row['kind'] == 'model' and row['ref'] == model_ref}
            nodes = {row['ref'] for row in original['entries'] if row['kind'] == 'node' and row.get('model_ref') == model_ref}
            pins = {row['ref'] for row in original['entries'] if row['kind'] == 'pin' and row['owner'] in nodes}
        else:
            caller = caller_by_path[path]
            pins = {f"p{pin['id']}" for scope in caller['scopes'] if scope['diagram'] == scope_name for occurrence in scope['occurrences']
                    for pin in occurrence['pins'] if pin['formal_alias'] == formal['alias'] and pin['method_alias'] == method['alias']}
            callable_pins = {f"p{pin['id']}" for scope in caller['scopes'] if scope['diagram'] == scope_name for occurrence in scope['occurrences']
                             for pin in occurrence['pins'] if pin['method_alias'] == method['alias'] and f"p{pin['id']}" not in pins}
        if pins - {row['ref'] for row in original['entries'] if row['kind'] == 'pin'}:
            raise ValueError('Formal pin closure is not fully observed')
        incident = {row['ref'] for row in original['entries'] if row['kind'] == 'edge' and (
            row['source'] in pins or row['target'] in pins)}
        expected['entries'] = [row for row in expected['entries'] if row['ref'] not in nodes | pins | incident | models]
        for row in expected['entries']:
            if row['kind'] == 'node':
                row['pins'] = [pin for pin in row['pins'] if pin not in pins]
            if operation == 'closed_delete_return' and row['kind'] == 'pin' and row['ref'] in callable_pins:
                observed_pin = next((pin for pin in actual['entries'] if pin['ref'] == row['ref']), None)
                sequence = observed_pin.get('sequence') if observed_pin else None
                if row.get('sequence') is None and sequence is not None:
                    if not allow_unassigned_sequence:
                        raise ValueError('Return deletion requires an explicit policy for introduced unassigned sequence calls')
                    if type(sequence.get('id')) is not int or sequence['id'] < 0:
                        raise ValueError('Introduced sequence call has no stable native identity')
                    if sequence.get('method') is not None or sequence.get('number') != 0 or sequence.get('label') != '0/-':
                        raise ValueError('Unexpected implicit sequence activation')
                    introduced_calls.append({'pin': row['ref'], 'before': None, 'after': deepcopy(sequence)})
                    row['sequence'] = deepcopy(sequence)
            if row['kind'] == 'edge':
                previous_route = deepcopy(row['route'])
                for endpoint, endpoint_index in (('source', 0), ('target', -1)):
                    movement = layout.get((path, scope_name, row[endpoint]))
                    if movement is not None:
                        if not row['route'] or row['route'][endpoint_index] != movement['before']:
                            raise ValueError('Edge route endpoint does not match the independently observed pin position')
                        row['route'][endpoint_index] = deepcopy(movement['after'])
                if row['route'] != previous_route:
                    if allow_adjacent_corner_layout:
                        candidate = _aligned_corners(previous_route, row['route'])
                        if candidate != row['route']:
                            _public_route_oracle(study, path, scope_name, original, actual)
                            corner_changes.append({'edge_before_ref': row['ref'], 'source': row['source'], 'target': row['target'],
                                                   'before': deepcopy(previous_route[1:-1]), 'after': deepcopy(candidate[1:-1])})
                            row['route'] = candidate
                    changed_routes.append({'edge_before_ref': row['ref'], 'source': row['source'], 'target': row['target'],
                        'before': previous_route, 'after': deepcopy(row['route'])})
        expected['lookup_nodes'] -= len(nodes)
        expected['lookup_edges'] -= len(incident)
        if fingerprint(graph_semantics(actual)) != fingerprint(graph_semantics(expected)):
            raise ValueError(f'Unexpected graph/configuration/geometry effect in {path}')
        if restored is not None and (restored != original or study.get(f'caller_restore_{index}') != 'restored'):
            raise ValueError('Original graph observation or native object inverse is incomplete')
        calls_by_id = {}
        for call in introduced_calls:
            pin = next(row for row in actual['entries'] if row['ref'] == call['pin'])
            sequence = call['after']
            group = calls_by_id.setdefault(sequence['id'], {'id': sequence['id'], 'owner': pin['owner'],
                'after': deepcopy(sequence), 'pins': []})
            if group['owner'] != pin['owner'] or group['after'] != sequence:
                raise ValueError('Introduced sequence identity is shared by different calls or annotations')
            group['pins'].append(call['pin'])
        effects.append({'component': path, 'diagram': scope_name, 'removed_nodes': sorted(nodes),
                        'removed_declarations': sorted(models),
                        'introduced_unassigned_sequence_calls': introduced_calls,
                        'introduced_unassigned_sequence_objects': list(calls_by_id.values()),
                        'connector_layout_changes': [{'pin': pin, **values} for (owner, scope, pin), values in layout.items() if owner == path and scope == scope_name],
                        'changed_edge_routes': changed_routes,
                        'adjacent_corner_layout_changes': corner_changes,
                        'removed_pins': sorted(pins), 'removed_incident_edges': sorted(incident),
                        'before': original, 'after': actual})
