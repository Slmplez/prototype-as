"""Pure Class graph inverse analysis; it never authorizes native restoration."""
from copy import deepcopy

from bd_edit_journal import fingerprint
from bd_structure_journal import differences
from bd_collection_merge import merge_order


_ABSENT = object()
_IDENTITY_FIELDS = ('ref', 'kind', 'native_class')


def _same(left, right):
    if left is _ABSENT or right is _ABSENT:
        return left is right
    # Python considers True == 1; native values retain their JSON types.
    return type(left) is type(right) and fingerprint(left) == fingerprint(right)


def _value(value):
    return {'present': False} if value is _ABSENT else {'present': True, 'value': deepcopy(value)}


def _fields(before, after, path=()):
    if _same(before, after):
        return []
    if type(before) is dict and type(after) is dict:
        return [delta for key in sorted(before.keys() | after.keys())
                for delta in _fields(before.get(key, _ABSENT), after.get(key, _ABSENT), (*path, key))]
    # Ordered pins, routes and sequence values cannot be matched by list index.
    return [(path, before, after)]


def _get(row, path):
    for key in path:
        if type(row) is not dict or key not in row:
            return _ABSENT
        row = row[key]
    return row


def _put(row, path, value):
    for key in path[:-1]:
        row = row[key]
    if value is _ABSENT:
        row.pop(path[-1], None)
    else:
        row[path[-1]] = deepcopy(value)


def _entries(graph):
    if type(graph) is not dict or type(graph.get('entries')) is not list:
        raise ValueError('Complete native graph entries required')
    entries = {}
    for row in graph['entries']:
        if (type(row) is not dict or not isinstance(row.get('ref'), str) or
                not row['ref'] or row['ref'] in entries or not isinstance(row.get('kind'), str)):
            raise ValueError('Duplicate or malformed native graph identity')
        entries[row['ref']] = row
    return entries


def _owners(value):
    if type(value) is not dict or type(value.get('owners')) is not list or type(value.get('observation')) is not dict:
        raise ValueError('Complete Class owner observation required')
    owners = {}
    for owner in value['owners']:
        if (type(owner) is not dict or not isinstance(owner.get('oid'), str) or not owner['oid'] or
                owner['oid'] in owners or not isinstance(owner.get('component'), str) or
                type(owner.get('scopes')) is not dict):
            raise ValueError('Duplicate or malformed Class owner identity')
        owners[owner['oid']] = owner
    if not owners:
        raise ValueError('Class owner roster is empty')
    return owners


def _dependencies(after, current, merged, touched):
    conflicts = []
    affected_pins = {ref for ref in touched if any(rows.get(ref, {}).get('kind') == 'pin'
                     for rows in (after, merged))}
    for ref, row in current.items():
        if row['kind'] == 'edge' and ref not in touched:
            prior = after.get(ref, {})
            endpoints = (row.get('source'), row.get('target'))
            if endpoints != (prior.get('source'), prior.get('target')) and affected_pins.intersection(endpoints):
                conflicts.append({'code': 'NEW_INCIDENT_DEPENDENCY', 'ref': ref,
                                  'pins': sorted(affected_pins.intersection(endpoints))})
    for ref, row in merged.items():
        kind = row['kind']
        if kind == 'edge':
            for field, direction in (('source', 'output'), ('target', 'input')):
                pin = merged.get(row.get(field), {})
                if pin.get('kind') != 'pin' or pin.get(direction) is not True:
                    conflicts.append({'code': 'EDGE_ENDPOINT_DEPENDENCY', 'ref': ref, 'field': field})
        elif kind == 'pin':
            owner = merged.get(row.get('owner'), {})
            if owner.get('kind') != 'node' or ref not in owner.get('pins', []):
                conflicts.append({'code': 'PIN_OWNER_DEPENDENCY', 'ref': ref})
        elif kind == 'node':
            for pin_ref in row.get('pins', []):
                pin = merged.get(pin_ref, {})
                if pin.get('kind') != 'pin' or pin.get('owner') != ref:
                    conflicts.append({'code': 'NODE_PIN_DEPENDENCY', 'ref': ref, 'pin': pin_ref})
            model_ref = row.get('model_ref')
            if model_ref and merged.get(model_ref, {}).get('kind') != 'model':
                conflicts.append({'code': 'MODEL_DEPENDENCY', 'ref': ref, 'model_ref': model_ref})
    restored_edges = [row for ref, row in merged.items() if ref in touched and row['kind'] == 'edge' and
                      (ref not in current or row.get('target') != current[ref].get('target'))]
    for row in restored_edges:
        for ref, other in current.items():
            if other['kind'] == 'edge' and ref not in touched and other.get('target') == row['target']:
                conflicts.append({'code': 'RESTORED_INPUT_OCCUPIED', 'ref': row['ref'], 'other': ref})
    return conflicts


def _graph(before, after, current):
    left, applied, now = (_entries(graph) for graph in (before, after, current))
    metadata = [key for key in sorted(set(after) | set(current)) if key not in ('entries', 'lookup_nodes', 'lookup_edges')
                and not _same(after.get(key, _ABSENT), current.get(key, _ABSENT))]
    merged = deepcopy(now)
    conflicts, changes, preserved, collection_plans = [], [], [], []
    touched = {ref for ref in left.keys() | applied.keys() if not _same(left.get(ref, _ABSENT), applied.get(ref, _ABSENT))}
    for ref in sorted(left.keys() | applied.keys() | now.keys()):
        original, expected, actual = (rows.get(ref, _ABSENT) for rows in (left, applied, now))
        if ref not in touched:
            if not _same(expected, actual):
                preserved.append({'ref': ref, 'fields': [list(path) for path, _, _ in _fields(expected, actual)]})
            continue
        if original is _ABSENT or expected is _ABSENT:
            if not _same(expected, actual):
                conflicts.append({'code': 'ROW_EXISTENCE_CONFLICT', 'ref': ref,
                                  'expected': _value(expected), 'current': _value(actual)})
                continue
            if original is _ABSENT:
                merged.pop(ref, None)
            else:
                merged[ref] = deepcopy(original)
            changes.append({'ref': ref, 'path': [], 'expect': _value(expected), 'restore': _value(original)})
            continue
        if actual is _ABSENT or any(not _same(actual.get(key, _ABSENT), expected.get(key, _ABSENT)) for key in _IDENTITY_FIELDS):
            conflicts.append({'code': 'ROW_IDENTITY_CONFLICT', 'ref': ref})
            continue
        deltas = _fields(original, expected)
        paths = [path for path, _, _ in deltas]
        for path, prior, final in deltas:
            observed = _get(actual, path)
            if (path == ('pins',) and all(type(value) is list for value in (prior, final, observed))
                    and not _same(observed, final)):
                order = merge_order(prior, final, observed)
                collection_plans.append({'ref': ref, 'path': list(path), **order})
                if order['compatible']:
                    _put(merged[ref], path, order['merged'])
                    changes.append({'ref': ref, 'path': list(path), 'expect': _value(observed),
                                    'restore': _value(order['merged'])})
                    preserved.append({'ref': ref, 'fields': [list(path)], 'members': order['preserved']})
                else:
                    conflicts.append({'code': 'COLLECTION_ORDER_CONFLICT', 'ref': ref,
                                      'path': list(path), 'details': order['conflicts']})
                continue
            if type(_get(actual, path[:-1])) is not dict or not _same(observed, final):
                conflicts.append({'code': 'TOUCHED_FIELD_CONFLICT', 'ref': ref, 'path': list(path),
                                  'expected': _value(final), 'current': _value(observed)})
            else:
                _put(merged[ref], path, prior)
                changes.append({'ref': ref, 'path': list(path), 'expect': _value(final), 'restore': _value(prior)})
        unrelated = [list(path) for path, _, _ in _fields(expected, actual)
                     if not any(path[:len(target)] == target or target[:len(path)] == path for target in paths)]
        if unrelated:
            preserved.append({'ref': ref, 'fields': unrelated})
    conflicts.extend(_dependencies(applied, now, merged, touched))
    conflicts.extend({'code': 'GRAPH_IDENTITY_OR_METADATA_CHANGED', 'field': key} for key in metadata)
    result = {'compatible': not bool(conflicts), 'conflicts': conflicts, 'preserved_changes': preserved,
              'field_changes': changes, 'merged_differences': []}
    result['collection_plans'] = collection_plans
    # A conflicting candidate is never exposed as a usable patch.
    if not conflicts:
        target = {**current, 'entries': [merged[ref] for ref in sorted(merged)]}
        result['merged_differences'] = differences(current, target)
    return result


def analyze_inverse(before, after, current):
    """Analyze collected values only; retained identity and effective values remain native gates."""
    previous, applied, observed = (_owners(value) for value in (before, after, current))
    if set(previous) != set(applied):
        raise ValueError('Recorded Class edit changed owner roster')
    guards, resources = [], []
    if set(applied) != set(observed):
        guards.append({'code': 'OWNER_ROSTER_CHANGED', 'expected': sorted(applied), 'current': sorted(observed)})
    for oid in sorted(applied):
        owner, prior, now = applied[oid], previous[oid], observed.get(oid)
        if prior['component'] != owner['component'] or set(prior['scopes']) != set(owner['scopes']):
            raise ValueError('Recorded Class owner or scope identity changed')
        if now is None:
            continue
        if owner['component'] != now['component'] or set(owner['scopes']) != set(now['scopes']):
            guards.append({'code': 'OWNER_OR_SCOPE_IDENTITY_CHANGED', 'oid': oid})
            continue
        for name in sorted(owner['scopes']):
            if any(graph.get('diagram') != name for graph in (prior['scopes'][name], owner['scopes'][name], now['scopes'][name])):
                raise ValueError('Graph scope label differs from its exact owner scope')
            resources.append({'oid': oid, 'component': owner['component'], 'diagram': name,
                              **_graph(prior['scopes'][name], owner['scopes'][name], now['scopes'][name])})
    changed_observations = [key for key in sorted(after['observation'].keys() | current['observation'].keys())
                            if not _same(after['observation'].get(key, _ABSENT), current['observation'].get(key, _ABSENT))]
    return {'profile': 'class_collected_graph_inverse_analysis_v1',
            'collected_graph_compatible': not guards and all(row['compatible'] for row in resources),
            'identity_guards': guards, 'resources': resources,
            'observation_fields_requiring_native_recheck': changed_observations,
            'original_after_matches': _same(after, current),
            'native_merge_executor_available': False, 'write_authorized': False,
            'actual_effects': 'not_observed; pure three-way value analysis',
            'not_verified': ['retained native object identity and detached fields',
                             'merged signature and caller materialization', 'effective configuration',
                             'native graphics ordering and new dependencies outside collected scopes',
                             'atomic execution preconditions', 'runtime scheduling']}
