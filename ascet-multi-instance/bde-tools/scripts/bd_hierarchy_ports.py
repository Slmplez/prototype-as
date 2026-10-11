"""Validate explicit hierarchy boundary edits and their two observed scopes."""
import re

from bd_edit_journal import JournalError

OPERATIONS = ('create_hierarchy_port', 'delete_hierarchy_port')


def validate(op):
    if op.get('op') == 'create_hierarchy_port':
        if set(op) != {'op', 'target', 'direction', 'name'} or op['direction'] not in ('input', 'output'):
            raise JournalError('INVALID_INPUT', 'Hierarchy port requires target, direction and name')
        if not isinstance(op['name'], str) or not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}', op['name']):
            raise JournalError('INVALID_INPUT', 'Bounded hierarchy port identifier required')
    elif op.get('op') == 'delete_hierarchy_port':
        if set(op) != {'op', 'target'}:
            raise JournalError('INVALID_INPUT', 'Hierarchy port deletion requires one exact external pin')
    else:
        raise JournalError('INVALID_INPUT', 'Unknown hierarchy port operation')


def parent_postcondition(request, before, after):
    left = {r['ref']: r for r in before['entries']}
    right = {r['ref']: r for r in after['entries']}
    args = request['arguments'][1:]
    creating = request['operation'] == 'create_hierarchy_port'
    if creating:
        owner = args[0]
        added = set(right) - set(left)
        if len(added) != 1 or set(left) - set(right):
            return False
        pin = right[next(iter(added))]
        if (pin.get('kind') != 'pin' or pin.get('owner') != owner or pin.get('name') != args[2]
                or pin.get('input') != (args[1] == 'input') or pin.get('output') != (args[1] == 'output')):
            return False
        expected = dict(left[owner], pins=[*left[owner]['pins'], pin['ref']])
        return right[owner] == expected and all(right[k] == v for k, v in left.items() if k != owner)
    pin = left.get(args[0], {})
    owner = pin.get('owner')
    if owner not in left or 'hierarchy_name' not in left[owner]:
        return False
    removed = {args[0]} | {k for k, r in left.items() if r['kind'] == 'edge' and args[0] in (r['source'], r['target'])}
    if set(left) - set(right) != removed or set(right) - set(left):
        return False
    expected = dict(left[owner], pins=[p for p in left[owner]['pins'] if p != args[0]])
    return right[owner] == expected and all(right[k] == v for k, v in left.items() if k not in removed | {owner})


def scope_postcondition(request, effects, before, after):
    if not isinstance(effects, list) or not effects or not parent_postcondition(request, before, after):
        return False
    effect = effects[0]
    creating = request['operation'] == 'create_hierarchy_port'
    args = request['arguments'][1:]
    parent_before = {r['ref']: r for r in before['entries']}
    parent_after = {r['ref']: r for r in after['entries']}
    owner = args[0] if creating else parent_before[args[0]]['owner']
    scope = request['diagram'] + '/h' + owner[1:]
    if (effect.get('kind') != 'hierarchy_scope' or effect.get('diagram') != scope
            or effect.get('parent_ref') != request['diagram'] + '/' + owner):
        return False
    child_before, child_after = effect.get('before'), effect.get('after')
    if not isinstance(child_before, dict) or not isinstance(child_after, dict):
        return False
    for child in (child_before, child_after):
        if (child.get('diagram') != scope or child.get('generation') != after.get('generation')
                or child.get('targets') != [] or child.get('diagram_kind') != 'block_diagram'):
            return False
        refs = [r['ref'] for r in child['entries']]
        if len(refs) != len(set(refs)):
            return False
    left = {r['ref']: r for r in child_before['entries']}
    right = {r['ref']: r for r in child_after['entries']}
    old_pairs, new_pairs = child_before.get('boundary_context', []), child_after.get('boundary_context', [])
    if creating:
        external = next(iter(set(parent_after) - set(parent_before)))
        pairs = [p for p in new_pairs if p not in old_pairs]
        if len(pairs) != 1 or [p for p in new_pairs if p in old_pairs] != old_pairs:
            return False
    else:
        external = args[0]
        pairs = [p for p in old_pairs if 'p' + str(p['external']) == external and p['hierarchy'] == int(owner[1:])]
        if len(pairs) != 1 or new_pairs != [p for p in old_pairs if p not in pairs]:
            return False
    pair = pairs[0]
    if pair['hierarchy'] != int(owner[1:]) or 'p' + str(pair['external']) != external:
        return False
    node, pin = 'n' + str(pair['internal_node']), 'p' + str(pair['internal_pin'])
    rows = right if creating else left
    ext = (parent_after if creating else parent_before)[external]
    if (node not in rows or pin not in rows or rows[node].get('hierarchy_boundary') is not True
            or rows[node].get('pins') != [pin] or rows[pin].get('owner') != node
            or rows[pin].get('input') != ext['output'] or rows[pin].get('output') != ext['input']
            or pair['input'] != ext['input'] or pair['output'] != ext['output']):
        return False
    changed = {node, pin}
    if creating:
        if set(right) - set(left) != changed or set(left) - set(right):
            return False
    else:
        changed |= {k for k, r in left.items() if r['kind'] == 'edge' and pin in (r['source'], r['target'])}
        if set(left) - set(right) != changed or set(right) - set(left):
            return False
    common = set(left) & set(right)
    direct_verified = (all(left[k] == right[k] for k in common)
            and child_after.get('lookup_nodes') == sum(r['kind'] == 'node' for r in right.values())
            and child_after.get('lookup_edges') == sum(r['kind'] == 'edge' for r in right.values()))
    if not direct_verified:
        return False
    scope_map = {e.get('diagram'): e for e in effects}
    if len(scope_map) != len(effects):
        return False
    required = {scope}
    for effect in effects:
        name = effect.get('diagram')
        old, new = effect.get('before'), effect.get('after')
        if (not isinstance(name, str) or (name != scope and not name.startswith(scope + '/'))
                or effect.get('kind') != 'hierarchy_scope' or effect.get('parent_ref') != request['diagram'] + '/' + owner
                or not isinstance(old, dict) or not isinstance(new, dict)):
            return False
        if name != scope:
            if (old.get('diagram') != name or new.get('diagram') != name
                    or old.get('generation') != after.get('generation') or old.get('targets') != []
                    or {k: v for k, v in old.items() if k != 'boundary_context'} !=
                       {k: v for k, v in new.items() if k != 'boundary_context'}):
                return False
            old_context = old.get('boundary_context', [])
            new_context = new.get('boundary_context', [])
            if (old_context[:len(old_pairs)] != old_pairs
                    or new_context != new_pairs + old_context[len(old_pairs):]):
                return False
        required.update(name + '/h' + r['ref'][1:] for r in new['entries'] if r['kind'] == 'node' and 'hierarchy_name' in r)
    return required == set(scope_map)
