"""Actual creation/removal of a diagram scope, distinct from model declarations."""
from bd_edit_journal import clone


def inverse_effects(effects):
    return [{**clone(effect), 'before': effect['after'], 'after': effect['before']} for effect in effects]


def scope_differences(effects):
    from bd_structure_journal import differences
    result = []
    for effect in effects:
        before = effect['before'] or {'entries': []}
        after = effect['after'] or {'entries': []}
        before = {**before, 'entries': [r for r in before['entries'] if r['kind'] != 'model']}
        after = {**after, 'entries': [r for r in after['entries'] if r['kind'] != 'model']}
        result.append({'kind': effect['kind'], 'diagram': effect['diagram'], 'parent_ref': effect['parent_ref'],
            'scope_before_exists': effect['before'] is not None, 'scope_after_exists': effect['after'] is not None,
            'boundary_context_before': before.get('boundary_context', []),
            'boundary_context_after': after.get('boundary_context', []),
            'differences': [{**delta, 'qualified_ref': effect['diagram'] + '/' + delta['ref']}
                            for delta in differences(before, after)],
            'model_rows': 'observed component declarations; not created by this scope effect'})
    return result


def postcondition(request, effects, before, after):
    from bd_hierarchy_ports import OPERATIONS, scope_postcondition
    if request['operation'] in OPERATIONS:
        return scope_postcondition(request, effects, before, after)
    args = request['arguments']
    if request['operation'] != 'create_block' or args[1] != 'hierarchy':
        return effects == []
    if not isinstance(effects, list) or len(effects) != 1:
        return False
    effect = effects[0]
    prior = {r['ref']: r for r in before['entries']}
    added = [r for r in after['entries'] if r['kind'] == 'node' and r['ref'] not in prior]
    if len(added) != 1 or not isinstance(effect, dict):
        return False
    parent = added[0]
    child = effect.get('after')
    scope = request['diagram'] + '/h' + parent['ref'][1:]
    if (effect.get('kind') != 'hierarchy_scope' or effect.get('diagram') != scope
            or effect.get('parent_ref') != request['diagram'] + '/' + parent['ref']
            or effect.get('before') is not None or not isinstance(child, dict)
            or child.get('diagram') != scope or child.get('generation') != after.get('generation')
            or child.get('diagram_kind') != 'block_diagram' or child.get('targets') != []):
        return False
    rows = child.get('entries', [])
    refs = {r['ref']: r for r in rows}
    if len(refs) != len(rows):
        return False
    nodes = {r['ref']: r for r in rows if r['kind'] == 'node'}
    pins = {r['ref']: r for r in rows if r['kind'] == 'pin'}
    pairs = child.get('boundary_context', [])
    external = {r['ref']: r for r in after['entries'] if r['kind'] == 'pin' and r['ref'] in parent['pins']}
    if (len(nodes) != len(external) or len(pins) != len(external) or len(pairs) != len(external)
            or child.get('lookup_nodes') != len(nodes) or child.get('lookup_edges') != 0
            or any(r['kind'] not in ('model', 'node', 'pin') for r in rows)
            or {r['ref']: r for r in rows if r['kind'] == 'model'} !=
               {r['ref']: r for r in after['entries'] if r['kind'] == 'model'}):
        return False
    seen_external, seen_nodes, seen_pins = set(), set(), set()
    for pair in pairs:
        ext, node, pin = 'p' + str(pair['external']), 'n' + str(pair['internal_node']), 'p' + str(pair['internal_pin'])
        if (ext not in external or node not in nodes or pin not in pins or pair['hierarchy'] != int(parent['ref'][1:])
                or ext in seen_external or node in seen_nodes or pin in seen_pins
                or nodes[node].get('hierarchy_boundary') is not True or nodes[node].get('pins') != [pin]
                or pins[pin].get('owner') != node
                or pair['input'] != external[ext]['input'] or pair['output'] != external[ext]['output']
                or pins[pin]['input'] != external[ext]['output'] or pins[pin]['output'] != external[ext]['input']):
            return False
        seen_external.add(ext); seen_nodes.add(node); seen_pins.add(pin)
    return True
