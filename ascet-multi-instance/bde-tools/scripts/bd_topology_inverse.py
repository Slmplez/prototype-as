"""Three-way observed topology patch; native original objects remain mandatory."""
from copy import deepcopy
from bd_delete_inverse import _rows, same
from bd_edit_journal import fingerprint

OPERATIONS = frozenset(('connect_data', 'disconnect_data', 'create_block', 'delete_node'))
PROFILE = 'ordinary_topology_inverse_v1'
ABSENT = object()
ANCHORS = {
    'node': ('ref', 'kind', 'native_class', 'pins', 'model_ref'),
    'pin': ('ref', 'kind', 'native_class', 'owner', 'input', 'output', 'type', 'model_ref'),
    'edge': ('ref', 'kind', 'native_class', 'source', 'target', 'connection_kind'),
    'model': ('ref', 'kind', 'native_class', 'oid', 'path'),
}


def equal(left, right):
    return left is right if left is ABSENT or right is ABSENT else same(left, right)


def dependencies(row):
    """Copy the pin list: planning must never mutate a retained observation."""
    result = []
    required = ('source', 'target') if row['kind'] == 'edge' else (('owner',) if row['kind'] == 'pin' else ())
    if any(type(row.get(field)) is not str or not row[field] for field in required):
        raise ValueError('Exact required topology dependency references unavailable')
    if row['kind'] == 'node':
        pins = row.get('pins', [])
        if (type(pins) is not list or any(type(ref) is not str or not ref for ref in pins)
                or len(set(pins)) != len(pins)):
            raise ValueError('Exact unique occurrence pin references required')
        result.extend((ref, 'pin') for ref in pins)
    for field, kind in (('source', 'pin'), ('target', 'pin'), ('owner', 'node'), ('model_ref', 'model')):
        ref = row.get(field)
        if ref is not None:
            if type(ref) is not str or not ref:
                raise ValueError('Exact nonempty topology dependency reference required')
            result.append((ref, kind))
    return result


def check_original_dependency(rows, ref, dependency, kind):
    peer = rows.get(dependency)
    if peer is None or peer['kind'] != kind:
        raise ValueError('Original topology patch contains an unresolved or mistyped dependency')
    if kind == 'pin':
        owner = rows.get(peer.get('owner'))
        if owner is None or owner['kind'] != 'node' or dependency not in owner.get('pins', []):
            raise ValueError('Original topology endpoint owner/pin membership differs')
        dependencies(owner)
    elif kind == 'node' and rows[ref]['kind'] == 'pin' and ref not in peer.get('pins', []):
        raise ValueError('Original topology pin is not registered by its owner')
    return peer


def plan(before, after, current, *, operation):
    if operation not in OPERATIONS:
        raise ValueError('Fixed ordinary topology operation required')
    original, applied, now = (_rows(graph) for graph in (before, after, current))
    added, removed = set(applied) - set(original), set(original) - set(applied)
    if bool(added) == bool(removed):
        raise ValueError('Exactly one topology insertion or removal direction required')
    changed = added or removed
    material = applied if added else original
    kinds = {material[ref]['kind'] for ref in changed}
    if operation in ('connect_data', 'disconnect_data'):
        if len(changed) != 1 or kinds != {'edge'}:
            raise ValueError('Connection patch must own exactly one edge')
    else:
        nodes = {ref for ref in changed if material[ref]['kind'] == 'node'}
        allowed_kinds = {'node', 'pin', 'edge', 'model'} if operation == 'create_block' else {'node', 'pin', 'edge'}
        if len(nodes) != 1 or not kinds <= allowed_kinds:
            raise ValueError('Delete must own one graphical occurrence and its pins/incident edges')
        node = next(iter(nodes))
        models = {ref for ref in changed if material[ref]['kind'] == 'model'}
        if models and (len(models) != 1 or material[node].get('model_ref') not in models):
            raise ValueError('Creation patch can own only its single bound model declaration')
        pins = {ref for ref in changed if material[ref]['kind'] == 'pin'}
        declared_pins = {ref for ref, kind in dependencies(material[node]) if kind == 'pin'}
        owned_pins = {ref for ref, row in material.items() if row['kind'] == 'pin' and row.get('owner') == node}
        if declared_pins != pins or owned_pins != pins:
            raise ValueError('Deleted occurrence pin closure differs')
        if any(not pins.intersection((material[ref].get('source'), material[ref].get('target')))
               for ref in changed if material[ref]['kind'] == 'edge'):
            raise ValueError('Delete cannot own an unrelated edge')
        if any(pins.intersection((row.get('source'), row.get('target')))
               for ref, row in material.items() if row['kind'] == 'edge' and ref not in changed):
            raise ValueError('Delete must include every incident edge')
    for graph in (before, after, current):
        if (graph.get('diagram_kind') != 'block_diagram' or set(graph) != set(after)
                or not {'lookup_nodes', 'lookup_edges'} <= set(graph)):
            raise ValueError('Exact ordinary topology graph metadata required')
    conflicts, cells, preserved = [], [], []
    expected = deepcopy(current)
    for field in sorted(set(after) - {'entries'}):
        if field in ('lookup_nodes', 'lookup_edges'):
            kind = 'node' if field == 'lookup_nodes' else 'edge'
            delta = sum(applied[ref]['kind'] == kind for ref in added) - sum(original[ref]['kind'] == kind for ref in removed)
            if (any(type(graph[field]) is not int or graph[field] < 0 for graph in (before, after, current))
                    or after[field] - before[field] != delta or current[field] - delta < 0
                    or any(graph[field] < sum(row['kind'] == kind for row in rows.values())
                           for graph, rows in ((before, original), (after, applied), (current, now)))):
                raise ValueError('Complete lookup counts must explain the actual topology patch')
            expected[field] -= delta
        elif not same(before[field], after[field]):
            raise ValueError('Topology inverse cannot hide metadata changes')
        elif not same(after[field], current[field]):
            conflicts.append({'code': 'GRAPH_METADATA_CONFLICT', 'field': field})
    merged = deepcopy(now)
    for ref in sorted(added):
        cells.append({'ref': ref, 'field': None, 'action': 'remove'})
        if not same(now.get(ref), applied[ref]):
            conflicts.append({'code': 'ADDED_ROW_CONFLICT', 'ref': ref})
        merged.pop(ref, None)
    for ref in sorted(removed):
        cells.append({'ref': ref, 'field': None, 'action': 'restore'})
        if ref in now:
            conflicts.append({'code': 'REMOVED_ROW_REAPPEARED', 'ref': ref})
        merged[ref] = deepcopy(original[ref])
    touched = set()
    for ref in sorted(set(original) & set(applied)):
        left, right = original[ref], applied[ref]
        if left['kind'] != right['kind'] or any(not equal(left.get(k, ABSENT), right.get(k, ABSENT))
                                             for k in ANCHORS[left['kind']]):
            raise ValueError('Topology inverse cannot hide existing row identity/dependency changes')
        fields = sorted(set(left) | set(right))
        if len(fields) > 512:
            raise ValueError('Bounded field schema required')
        for field in fields:
            old, value = left.get(field, ABSENT), right.get(field, ABSENT)
            if equal(old, value):
                continue
            touched.add(ref)
            if len(cells) >= 200000:
                raise ValueError('Topology inverse cell bound exceeded')
            cells.append({'ref': ref, 'field': field, 'action': 'field'})
            if ref not in now or not equal(now[ref].get(field, ABSENT), value):
                conflicts.append({'code': 'TOUCHED_FIELD_CONFLICT', 'ref': ref, 'field': field})
            elif old is ABSENT:
                merged[ref].pop(field, None)
            else:
                merged[ref][field] = deepcopy(old)
    for ref in sorted(changed | touched):
        rows = material if ref in changed else applied
        row = rows[ref]
        if ref in touched and ref in now:
            for field in ANCHORS[row['kind']]:
                if not equal(row.get(field, ABSENT), now[ref].get(field, ABSENT)):
                    conflicts.append({'code': 'ROW_DEPENDENCY_CONFLICT', 'ref': ref, 'field': field})
        for dependency, kind in dependencies(row):
            peer = check_original_dependency(rows, ref, dependency, kind)
            if dependency not in changed:
                current_peer = now.get(dependency)
                if current_peer is None:
                    conflicts.append({'code': 'DEPENDENCY_MISSING', 'ref': ref, 'dependency': dependency})
                elif any(not equal(peer.get(k, ABSENT), current_peer.get(k, ABSENT)) for k in ANCHORS[peer['kind']]):
                    conflicts.append({'code': 'DEPENDENCY_CHANGED', 'ref': ref, 'dependency': dependency})
            if peer['kind'] == 'pin':
                owner = rows[peer['owner']]
                owner_model_ref = owner.get('model_ref')
                if owner_model_ref is not None:
                    owner_model = check_original_dependency(rows, owner['ref'], owner_model_ref, 'model')
                    if owner_model_ref not in changed:
                        current_model = now.get(owner_model_ref)
                        if current_model is None or any(not equal(owner_model.get(k, ABSENT), current_model.get(k, ABSENT))
                                                        for k in ANCHORS['model']):
                            conflicts.append({'code': 'ENDPOINT_MODEL_CONFLICT', 'ref': ref, 'dependency': owner_model_ref})
                if peer['owner'] not in changed:
                    current_owner = now.get(peer['owner'])
                    if current_owner is None or any(not equal(owner.get(k, ABSENT), current_owner.get(k, ABSENT))
                                                    for k in ANCHORS['node']):
                        conflicts.append({'code': 'ENDPOINT_OWNER_CONFLICT', 'ref': ref, 'dependency': peer['owner']})
        if row['kind'] == 'edge':
            if rows[row['source']].get('output') is not True or rows[row['target']].get('input') is not True:
                raise ValueError('Exact edge source/output and target/input directions required')
            if ref in changed and sum(other['kind'] == 'edge' and other.get('target') == row['target']
                                      for other in rows.values()) != 1:
                raise ValueError('Original topology input must have exactly its retained edge')
            if ref in removed and any(other['kind'] == 'edge' and other.get('target') == row['target']
                                      for other in now.values()):
                conflicts.append({'code': 'RESTORED_INPUT_OCCUPIED', 'ref': ref})
    changed_pins = {ref for ref in changed if material[ref]['kind'] == 'pin'}
    changed_models = {ref for ref in changed if material[ref]['kind'] == 'model'}
    changed_nodes = {ref for ref in changed if material[ref]['kind'] == 'node'}
    for ref in sorted(now):
        row = now[ref]
        if row['kind'] == 'edge' and ref not in added and changed_pins.intersection((row.get('source'), row.get('target'))):
            conflicts.append({'code': 'NEW_PIN_DEPENDENCY', 'ref': ref})
        if ref not in added and row.get('model_ref') in changed_models:
            conflicts.append({'code': 'NEW_MODEL_DEPENDENCY', 'ref': ref})
        if row['kind'] == 'pin' and ref not in added and row.get('owner') in changed_nodes:
            conflicts.append({'code': 'NEW_NODE_DEPENDENCY', 'ref': ref})
    for ref in sorted(set(applied) | set(now)):
        if not same(applied.get(ref), now.get(ref)):
            preserved.append(ref)
    expected['entries'] = [merged[ref] for ref in sorted(merged)]
    return {'profile': PROFILE, 'operation': operation, 'compatible': not conflicts,
            'conflicts': conflicts, 'expected': expected if not conflicts else None,
            'cells': cells, 'preserved': preserved}


def summary(value, current):
    return {k: deepcopy(value[k]) for k in ('profile', 'operation', 'compatible', 'conflicts', 'cells', 'preserved')} | {
        'current_sha256': fingerprint(current), 'expected_sha256': fingerprint(value['expected'])}
