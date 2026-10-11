"""Independent full-source oracle for an audited position or alias fixture.

SGLogicBlockDB.position reads own[2]. This oracle verifies that the complete
before/after graphs contain exactly the declared scalar or sharing change, then
applies its inverse to a private immutable current graph. It never permits a
model write and does not replace the Class block-order/allocator oracle.
"""
from copy import copy, deepcopy

from bd_source_inverse_oracle import Node, decode_graph, equal


def position_owner(root, identifier):
    if type(identifier) is not int or identifier < 0:
        raise ValueError('Exact nonnegative graphical identifier required')
    found, visited = [], set()

    def visit(value):
        if not isinstance(value, Node) or id(value) in visited:
            return
        visited.add(id(value))
        if value.logic_id == identifier:
            found.append(value)
        for child in value.value if value.kind == 'ordered' else value.value.values():
            visit(child)

    visit(root)
    if len(found) != 1:
        raise ValueError('Position owner missing or ambiguous')
    owner = found[0]
    own = owner.value.get('own')
    if (owner.kind != 'fields' or not isinstance(own, Node)
            or own.kind != 'ordered' or own.native_class != 'Array' or len(own.value) != 7
            or own.value[0] != ('integer', 'SmallInteger', str(identifier))):
        raise ValueError('Exact audited source own-position tuple required')
    point = own.value[1]
    if (not isinstance(point, Node) or point.native_class != 'Point' or point.kind != 'fields'
            or set(point.value) != {'x', 'y'}):
        raise ValueError('Exact native source Point required')
    return owner, own, point


def inspect_case(case, oid):
    descriptor = case['source_edit']
    kind = descriptor['kind']
    if kind not in ('coordinate', 'sharing') or descriptor['alias_direction'] not in ('join', 'split'):
        raise ValueError('Fixed audited source field descriptor required')
    roots = {key: decode_graph(case[key], oid)
             for key in ('original', 'applied', 'current', 'candidate')}
    target = descriptor['target_logic_id']
    old_owner, old_own, old_point = position_owner(roots['original'], target)
    applied_owner, applied_own, applied_point = position_owner(roots['applied'], target)
    current_owner, current_own, current_point = position_owner(roots['current'], target)
    if len({owner.native_class for owner in (old_owner, applied_owner, current_owner)}) != 1:
        raise ValueError('Source position owner class changed')
    expected_forward = deepcopy(roots['original'])
    _, forward_own, forward_point = position_owner(expected_forward, target)
    expected_inverse = deepcopy(roots['current'])
    _, inverse_own, inverse_point = position_owner(expected_inverse, target)
    if kind == 'coordinate':
        before, after = old_point.value['x'], applied_point.value['x']
        if before == after or before[0] not in ('integer', 'float64le') or after[0] not in ('integer', 'float64le'):
            raise ValueError('Nonzero audited numeric source x patch required')
        forward_point.value['x'] = after
        compatible = current_point.value['x'] == after
        inverse_point.value['x'] = before
    else:
        secondary = descriptor['secondary_logic_id']
        if secondary == target or descriptor['synthetic_sharing_fixture'] is not True:
            raise ValueError('Distinct declared private alias fixture required')
        _, _, old_peer = position_owner(roots['original'], secondary)
        _, _, applied_peer = position_owner(roots['applied'], secondary)
        _, _, current_peer = position_owner(roots['current'], secondary)
        _, _, forward_peer = position_owner(expected_forward, secondary)
        _, _, inverse_peer = position_owner(expected_inverse, secondary)
        if descriptor['alias_direction'] == 'join':
            if old_point is not old_peer or applied_point is applied_peer:
                raise ValueError('Exact shared-to-split forward fixture required')
            forward_own.value[1] = copy(forward_point)
            forward_own.value[1].value = deepcopy(forward_point.value)
            compatible = current_point is not current_peer and equal(current_point, applied_point)
            inverse_own.value[1] = inverse_peer
        else:
            if old_point is old_peer or applied_point is not applied_peer:
                raise ValueError('Exact split-to-shared forward fixture required')
            forward_own.value[1] = forward_peer
            compatible = current_point is current_peer and equal(current_point, applied_point)
            inverse_own.value[1] = copy(inverse_point)
            inverse_own.value[1].value = deepcopy(old_point.value)
    if not equal(expected_forward, roots['applied']):
        raise ValueError('Actual source patch contains undeclared fields, values or sharing')
    if case['compatible'] is not compatible:
        raise ValueError('Native source conflict classification differs from independent patch')
    if compatible:
        manual = decode_graph(case['expected_manual'], oid)
        if not equal(expected_inverse, roots['candidate']) or not equal(expected_inverse, manual):
            raise ValueError('Full source sharing/values differ from independent field inverse')
    elif case['expected_manual'] is not None or not equal(roots['candidate'], roots['current']):
        raise ValueError('Rejected source field patch changed the complete current graph')
    return {'profile': 'independent_source_field_patch_v1', 'compatible': compatible,
            'full_graph_verified': True, 'sharing_verified_both_directions': True,
            'target_logic_id': target, 'kind': kind}
