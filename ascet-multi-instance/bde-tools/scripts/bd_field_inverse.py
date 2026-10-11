"""Three-way actual field/layout observations; native/source proof is separate.

This never reconstructs native objects or authorizes a write. Both the original
inverse and every inverse-of-inverse use their own observed before/after patch.
"""
from copy import deepcopy

from bd_delete_inverse import _rows, same
from bd_edit_journal import fingerprint

OPERATIONS = frozenset(('set_literal', 'set_comment', 'move_node', 'set_edge_route', 'rewire_data'))
ANCHORS = {
    'node': ('ref', 'kind', 'native_class', 'pins', 'model_ref'),
    'pin': ('ref', 'kind', 'native_class', 'owner', 'input', 'output', 'type', 'model_ref'),
    'edge': ('ref', 'kind', 'native_class', 'source', 'target', 'connection_kind'),
    'model': ('ref', 'kind', 'native_class', 'oid', 'path'),
}
ABSENT = object()


def equal(left, right):
    if left is ABSENT or right is ABSENT:
        return left is right
    return same(left, right)


def rewire_dependencies(original, applied):
    """One existing edge changes source; both endpoint owners stay exact."""
    changed = [ref for ref in original if original[ref]['kind'] == 'edge'
               and not equal(original[ref].get('source', ABSENT), applied[ref].get('source', ABSENT))]
    if len(changed) != 1:
        raise ValueError('Rewire requires exactly one observed edge source change')
    ref = changed[0]
    pins = {original[ref].get('source'), applied[ref].get('source'), applied[ref].get('target')}
    dependencies = set(pins)
    for graph in (original, applied):
        for pin in pins:
            row = graph.get(pin)
            is_input = pin == applied[ref].get('target')
            if (row is None or row['kind'] != 'pin' or row.get('input') is not is_input
                    or row.get('output') is not (not is_input)):
                raise ValueError('Rewire requires exact original and replacement pin directions')
            owner = graph.get(row.get('owner'))
            if owner is None or owner['kind'] != 'node' or pin not in owner.get('pins', []):
                raise ValueError('Rewire endpoint owner/pin registration is unresolved')
            dependencies.add(owner['ref'])
        if [r['ref'] for r in graph.values() if r['kind'] == 'edge'
                and r.get('target') == applied[ref].get('target')] != [ref]:
            raise ValueError('Rewire original input must have exactly its retained edge')
    return ref, dependencies


def plan(before, after, current, *, operation):
    from bd_topology_inverse import OPERATIONS as TOPOLOGY_OPERATIONS, plan as topology_plan
    if operation in TOPOLOGY_OPERATIONS:
        return topology_plan(before, after, current, operation=operation)
    if operation not in OPERATIONS:
        raise ValueError('Audited ordinary field/layout operation required')
    original, applied, now = (_rows(graph) for graph in (before, after, current))
    if set(original) != set(applied):
        raise ValueError('Field inverse cannot hide observed row creation/deletion')
    rewire_ref, rewire_peers = rewire_dependencies(original, applied) if operation == 'rewire_data' else (None, set())
    for graph in (before, after, current):
        if graph.get('diagram_kind') != 'block_diagram' or set(graph) != set(after):
            raise ValueError('Exact ordinary field graph metadata shape required')
    conflicts, cells, preserved = [], [], []
    for field in sorted(set(after) - {'entries'}):
        if not same(before[field], after[field]):
            raise ValueError('Field inverse cannot hide observed metadata mutation')
        if field in ('lookup_nodes', 'lookup_edges'):
            if any(type(graph[field]) is not int or graph[field] < 0
                   for graph in (before, after, current)):
                raise ValueError('Nonnegative complete lookup counts required')
        elif not same(after[field], current[field]):
            conflicts.append({'code': 'GRAPH_METADATA_CONFLICT', 'field': field})
    merged = deepcopy(now)
    touched = set()
    for ref in sorted(original):
        old = original[ref]
        row = applied[ref]
        if old['kind'] != row['kind']:
            raise ValueError('Field inverse cannot change row kind')
        for field in ANCHORS[old['kind']]:
            if ref == rewire_ref and field == 'source':
                continue  # This operation owns only this precise source endpoint change.
            if not equal(old.get(field, ABSENT), row.get(field, ABSENT)):
                raise ValueError('Field inverse cannot hide observed identity/dependency mutation')
        fields = sorted(set(old) | set(row))
        if len(fields) > 512:
            raise ValueError('Bounded field schema required')
        for field in fields:
            left, right = old.get(field, ABSENT), row.get(field, ABSENT)
            if equal(left, right):
                continue
            touched.add(ref)
            if len(cells) >= 200000:
                raise ValueError('Field inverse cell bound exceeded')
            cells.append({'ref': ref, 'field': field})
            if ref not in now:
                conflicts.append({'code': 'TOUCHED_ROW_MISSING', 'ref': ref, 'field': field})
            elif not equal(now[ref].get(field, ABSENT), right):
                conflicts.append({'code': 'TOUCHED_FIELD_CONFLICT', 'ref': ref, 'field': field})
            elif left is ABSENT:
                merged[ref].pop(field, None)
            else:
                merged[ref][field] = deepcopy(left)
    for ref in sorted(touched & set(now)):
        row = applied[ref]
        for field in ANCHORS[row['kind']]:
            if not equal(row.get(field, ABSENT), now[ref].get(field, ABSENT)):
                conflicts.append({'code': 'ROW_DEPENDENCY_CONFLICT', 'ref': ref, 'field': field})
        dependencies = list(row.get('pins', [])) if row['kind'] == 'node' else []
        dependencies += [row[field] for field in ('owner', 'source', 'target', 'model_ref')
                         if row.get(field)]
        for dependency in dependencies:
            if dependency not in applied:
                raise ValueError('Original touched row has an unresolved dependency')
            peer = now.get(dependency)
            if peer is None:
                conflicts.append({'code': 'DEPENDENCY_MISSING', 'ref': ref, 'dependency': dependency})
            else:
                for field in ANCHORS[applied[dependency]['kind']]:
                    if not equal(applied[dependency].get(field, ABSENT), peer.get(field, ABSENT)):
                        conflicts.append({'code': 'DEPENDENCY_CHANGED', 'ref': ref,
                                          'dependency': dependency, 'field': field})
    for dependency in sorted(rewire_peers):
        peer = now.get(dependency)
        if peer is None:
            conflicts.append({'code': 'DEPENDENCY_MISSING', 'ref': rewire_ref, 'dependency': dependency})
        else:
            for field in ANCHORS[applied[dependency]['kind']]:
                if not equal(applied[dependency].get(field, ABSENT), peer.get(field, ABSENT)):
                    conflicts.append({'code': 'DEPENDENCY_CHANGED', 'ref': rewire_ref,
                                      'dependency': dependency, 'field': field})
    if rewire_ref is not None and any(row['kind'] == 'edge' and row['ref'] != rewire_ref
            and row.get('target') == applied[rewire_ref]['target'] for row in now.values()):
        conflicts.append({'code': 'REWIRE_INPUT_OCCUPIED', 'ref': rewire_ref,
                          'target': applied[rewire_ref]['target']})
    for ref in sorted(set(applied) | set(now)):
        old, row = applied.get(ref), now.get(ref)
        if old is None or row is None:
            preserved.append({'ref': ref, 'field': None})
        else:
            for field in sorted(set(old) | set(row)):
                if not equal(old.get(field, ABSENT), row.get(field, ABSENT)):
                    preserved.append({'ref': ref, 'field': field})
    expected = deepcopy(current)
    expected['entries'] = [merged[row['ref']] for row in current['entries']]
    return {'profile': 'ordinary_field_inverse_v1', 'operation': operation,
            'compatible': not conflicts, 'conflicts': conflicts,
            'expected': expected if not conflicts else None,
            'cells': sorted(cells, key=lambda cell: (cell['ref'], cell['field'])),
            'preserved': preserved}


def summary(value, current):
    return {key: deepcopy(value[key]) for key in (
        'profile', 'operation', 'compatible', 'conflicts', 'cells', 'preserved')} | {
        'current_sha256': fingerprint(current), 'expected_sha256': fingerprint(value['expected'])}


def expected_from_preparation(before, after, preparation, *, operation):
    if preparation.get('inverse_analysis', {}).get('profile') not in ('ordinary_field_inverse_v1', 'ordinary_topology_inverse_v1'):
        if 'inverse_analysis' in preparation:
            raise ValueError('Field preparation profile differs')
        if 'inverse_expected' in preparation and not same(before, preparation['inverse_expected']):
            raise ValueError('Legacy field expectation differs from observed before state')
        return before
    candidate = plan(before, after, preparation['before'], operation=operation)
    if (not candidate['compatible'] or 'inverse_expected' not in preparation
            or not same(candidate['expected'], preparation['inverse_expected'])
            or not same(summary(candidate, preparation['before']), preparation['inverse_analysis'])):
        raise ValueError('Durable field inverse differs from independently recomputed actual patch')
    return candidate['expected']
