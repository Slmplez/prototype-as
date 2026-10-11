"""Three-way collected-value plan for genuine retained ordinary deletions."""
from copy import deepcopy

from bd_edit_journal import fingerprint


def same(left, right):
    return type(left) is type(right) and fingerprint(left) == fingerprint(right)


def _rows(graph):
    if type(graph) is not dict or type(graph.get('entries')) is not list or len(graph['entries']) > 100000:
        raise ValueError('Bounded collected graph required')
    rows = {}
    for row in graph['entries']:
        if (type(row) is not dict or type(row.get('ref')) is not str or not row['ref']
                or row['ref'] in rows or row.get('kind') not in ('node', 'pin', 'edge', 'model')):
            raise ValueError('Exact unique ordinary graph rows required')
        rows[row['ref']] = row
    return rows


def plan(before, after, current):
    """Restore deleted rows into CURRENT; native identity/layout remains a separate gate."""
    original, applied, now = (_rows(graph) for graph in (before, after, current))
    conflicts = []
    removed = set(original) - set(applied)
    if (not removed or set(applied) - set(original)
            or any(not same(original[ref], row) for ref, row in applied.items())
            or any(original[ref]['kind'] not in ('node', 'pin', 'edge') for ref in removed)):
        raise ValueError('Original observed patch must contain only ordinary graphical deletions')
    for graph in (before, after, current):
        if (graph.get('diagram_kind') not in (None, 'block_diagram')
                or set(graph) != set(after)):
            raise ValueError('Exact ordinary graph metadata shape required')
    for key in set(after) - {'entries', 'lookup_nodes', 'lookup_edges'}:
        if not same(before[key], after[key]) or not same(after[key], current[key]):
            conflicts.append({'code': 'GRAPH_METADATA_CONFLICT', 'field': key})
    for ref in sorted(removed & set(now)):
        conflicts.append({'code': 'DELETED_REFERENCE_REAPPEARED', 'ref': ref})
    for ref in sorted(set(applied) & set(now)):
        for field in ('ref', 'kind', 'native_class'):
            if not same(applied[ref].get(field), now[ref].get(field)):
                conflicts.append({'code': 'ROW_IDENTITY_CONFLICT', 'ref': ref, 'field': field})
    merged = deepcopy(now)
    for ref in removed:
        merged[ref] = deepcopy(original[ref])
    restored_pins = {ref for ref in removed if original[ref]['kind'] == 'pin'}
    for ref in sorted(removed):
        row = original[ref]
        if row['kind'] == 'edge':
            for field, direction in (('source', 'output'), ('target', 'input')):
                endpoint = merged.get(row.get(field), {})
                owner = merged.get(endpoint.get('owner'), {})
                if (endpoint.get('kind') != 'pin' or endpoint.get(direction) is not True
                        or owner.get('kind') != 'node' or endpoint.get('ref') not in owner.get('pins', [])):
                    conflicts.append({'code': 'RESTORED_ENDPOINT_DEPENDENCY', 'ref': ref, 'field': field})
            for other in now.values():
                if other['kind'] == 'edge' and other.get('target') == row.get('target'):
                    conflicts.append({'code': 'RESTORED_INPUT_OCCUPIED', 'ref': ref, 'other': other['ref']})
        elif row['kind'] == 'pin':
            owner = merged.get(row.get('owner'), {})
            if owner.get('kind') != 'node' or ref not in owner.get('pins', []):
                conflicts.append({'code': 'RESTORED_PIN_OWNER', 'ref': ref})
        elif row['kind'] == 'node':
            for pin_ref in row.get('pins', []):
                pin = merged.get(pin_ref, {})
                if pin.get('kind') != 'pin' or pin.get('owner') != ref:
                    conflicts.append({'code': 'RESTORED_NODE_PINS', 'ref': ref, 'pin': pin_ref})
            if row.get('model_ref') and merged.get(row['model_ref'], {}).get('kind') != 'model':
                conflicts.append({'code': 'RESTORED_MODEL_DEPENDENCY', 'ref': ref})
    for row in now.values():
        if row['kind'] == 'edge' and restored_pins.intersection((row.get('source'), row.get('target'))):
            conflicts.append({'code': 'NEW_DETACHED_PIN_DEPENDENCY', 'ref': row['ref']})
    expected = deepcopy(current)
    expected['entries'] = [merged[ref] for ref in sorted(merged)]
    for field, kind in (('lookup_nodes', 'node'), ('lookup_edges', 'edge')):
        if field not in after:
            continue
        delta = sum(original[ref]['kind'] == kind for ref in removed)
        if (any(type(graph[field]) is not int or graph[field] < 0 for graph in (before, after, current))
                or before[field] - after[field] != delta):
            raise ValueError('Original complete lookup count does not explain observed deletion')
        expected[field] += delta
    preserved = sorted(ref for ref in set(applied) | set(now)
                       if not same(applied.get(ref), now.get(ref)))
    return {'compatible': not conflicts, 'conflicts': conflicts,
            'expected': expected if not conflicts else None, 'restored_refs': sorted(removed),
            'preserved_refs': preserved}


def summary(value, current):
    return {'profile': 'ordinary_delete_inverse_v1', 'compatible': value['compatible'],
            'restored_refs': value['restored_refs'], 'preserved_refs': value['preserved_refs'],
            'current_sha256': fingerprint(current), 'expected_sha256': fingerprint(value['expected']),
            'conflicts': value['conflicts']}


def expected_from_preparation(before, after, preparation):
    if 'inverse_expected' not in preparation:
        if 'inverse_analysis' in preparation:
            raise ValueError('Durable three-way preparation lost its inverse expectation')
        return before
    value = plan(before, after, preparation['before'])
    if not value['compatible'] or not same(value['expected'], preparation['inverse_expected']):
        raise ValueError('Durable inverse expectation differs from independent three-way plan')
    if 'inverse_analysis' in preparation and not same(summary(value, preparation['before']), preparation['inverse_analysis']):
        raise ValueError('Durable inverse analysis differs from independent three-way plan')
    return value['expected']
