"""Formal-to-body occurrence evidence, using declaration aliases and access kinds."""
from bd_signal_interfaces import class_bindings, graph_index, pin_ref


def compare_class_public(native, public):
    from bd_signal_interfaces import bag
    node_fields = ('scope', 'id', 'model_alias', 'definition_oid')
    native_occurrences = [row for row in native['nodes'] if 'model_alias' in row]
    public_occurrences = [row for row in public['nodes'] if 'model_alias' in row]
    formal_fields = ('alias', 'method_alias', 'method_name', 'name', 'argument', 'return', 'local')
    checks = {'occurrence_model_alias': bag(native_occurrences, node_fields) == bag(public_occurrences, node_fields),
              'formal_method_membership': bag(native['formals'], formal_fields) == bag(public['method_memberships'], formal_fields)}
    return {'passed': all(checks.values()), 'fields': checks,
        'scope': 'independent public graph model lookup and public method member enumeration',
        'not_verified': ['pin manager alias/access predicates', 'formal in/out flags without public getters',
                         'method execution and argument-to-return behavior']}


def formal_body_bindings(data):
    nodes, pins = graph_index(data)
    formals = {row['alias']: row for row in data['formals']}
    if len(formals) != len(data['formals']):
        raise ValueError('Duplicate own formal alias')
    result = []
    for pin in pins.values():
        node = nodes[(pin['scope'], pin['owner'])]
        formal = formals.get(node.get('model_alias'))
        if formal is None or formal.get('local') is True:
            continue
        row = {'pin': pin_ref(pin), 'formal_alias': formal['alias'], 'method_alias': formal.get('method_alias'),
               'formal': formal, 'status': 'not_resolved', 'editable': False,
               'evidence': 'occurrence model declaration alias and collected native get/set access'}
        if not formal.get('method_alias') or not (formal.get('argument') is True or formal.get('return') is True):
            row['reason'] = 'method_formal_identity_not_collected'
        elif (pin.get('output') is True and pin.get('input') is False and pin.get('get_access') is True
              and formal.get('argument') is True and (formal.get('in') is True or formal.get('in_out') is True)):
            row.update(status='matched_formal_body_access', direction='parent_to_body')
        elif (pin.get('input') is True and pin.get('output') is False and pin.get('set_access') is True
              and (formal.get('return') is True or (formal.get('argument') is True
                   and (formal.get('out') is True or formal.get('in_out') is True)))):
            row.update(status='matched_formal_body_access', direction='body_to_parent')
        else:
            row['reason'] = 'access_not_a_directional_formal_boundary'
        result.append(row)
    return {'bindings': result, 'matched': sum(row['status'] == 'matched_formal_body_access' for row in result),
            'unresolved': sum(row['status'] != 'matched_formal_body_access' for row in result),
            'meaning': 'formal boundary identity only; no inferred argument-to-return behavior'}


def instance_body_segments(parent, child, instance):
    """Return directed boundary relations for one exact Project child instance."""
    if instance['owner_oid'] != parent['oid'] or instance['definition_oid'] != child['oid']:
        raise ValueError('Class body context differs from the exact instance ownership')
    parent_data, child_data = parent['interfaces'], child['interfaces']
    nodes, parent_pins = graph_index(parent_data)
    occurrence_ids = {(row['scope'], row['id']) for row in nodes.values()
                      if row.get('model_alias') == instance['alias'] and row.get('definition_oid') == child['oid']}
    formal_body = formal_body_bindings(child_data)
    classes = class_bindings(parent_data)
    result = []
    for binding in classes['bindings']:
        if (binding['scope'], binding['instance_node_id']) not in occurrence_ids or binding.get('interface_kind') != 'method_formal':
            continue
        parent_pin = parent_pins[(binding['scope'], binding['pin_id'])]
        for body in formal_body['bindings']:
            if body['status'] != 'matched_formal_body_access':
                continue
            if body['formal_alias'] != binding['formal_alias'] or body['method_alias'] != binding['method_alias']:
                continue
            if body['formal'] != binding['formal']:
                raise ValueError('Parent definition interface and Class body formal observations disagree')
            outward = body['direction'] == 'body_to_parent'
            if parent_pin['output' if outward else 'input'] is not True:
                continue
            result.append({'kind': 'class_formal_boundary', 'parent_pin': pin_ref(parent_pin),
                           'body_pin': body['pin'], 'direction': body['direction'],
                           'definition_oid': child['oid'], 'method_alias': body['method_alias'],
                           'formal_alias': body['formal_alias'], 'parent_snapshot': parent['snapshot'],
                           'body_snapshot': child['snapshot'], 'editable': False,
                           'evidence': 'exact instance alias, method/formal alias, occurrence declaration alias and native access',
                           'execution': 'not_verified'})
    return result
