"""Independent complete source checks for retained-connect local planning.

Source wrappers replaced by store are projected through an identity-preserving
graph correspondence. Raw owned cells still must match actual history. These
checks inspect immutable exports only and never authorize execution.
"""
from copy import deepcopy
import re

from bd_frozen_source_inverse import ABSENT, ROLES, _cells, _rows, _same, inspect
from bd_collection_merge import merge_order
from bd_native_graphical_effects import validate_current, same_current

RAW_ROLES = ('raw_applied', 'raw_current', 'raw_candidate')


def _native_image(evidence, role):
    """Bind frozen sN evidence to the same actual vN native identity table."""
    rows = _rows(evidence[role])
    pairs = evidence.get('native_bindings')
    if (type(pairs) is not list or not pairs or any(type(p) is not list or len(p) != 2
            or not re.fullmatch(r's[1-9][0-9]*', str(p[0]))
            or not re.fullmatch(r'v[1-9][0-9]*', str(p[1])) for p in pairs)):
        raise ValueError('Complete exact native/frozen identity bindings required')
    bindings = dict(pairs)
    union = set.union(*(set(_rows(evidence[k])) for k in ROLES))
    if len(bindings) != len(pairs) or len(set(bindings.values())) != len(pairs) or set(bindings) != union:
        raise ValueError('Native/frozen identity bindings are incomplete or not bijective')
    classes = {ref: row['native_class'] for k in ROLES for ref, row in _rows(evidence[k]).items()}

    def atom(v):
        if v[0] == 'ref': return dict(ref=bindings[v[1]], **{'class': classes[v[1]]})
        if v[0] == 'nil': return {'class': 'UndefinedObject', 'value': 'nil'}
        if v[0] == 'boolean': return {'class': 'True' if v[1] else 'False', 'value': 'true' if v[1] else 'false'}
        if v[0] == 'integer': return {'class': v[1], 'value': v[2]}
        if v[0] == 'float64le': return {'class': 'Float', 'value': v[1]}
        if v[0] == 'symbol':
            name = v[2]
            printed = '#' + name if re.fullmatch(r'[A-Za-z_][A-Za-z_0-9:]*|[+*/<>=~@%&,!?\\-]+', name) else "#'" + name.replace("'", "''") + "'"
            return {'class': v[1], 'value': printed}
        raise ValueError('Unsupported complete frozen/native scalar binding')

    converted = []
    for ref, row in rows.items():
        _cells(row, set(rows))
        values = row['value']
        if row['kind'] not in ('value', 'boundary'):
            values = ([[atom(v) for v in pair] for pair in values]
                      if row['native_class'] in ('Dictionary', 'IdentityDictionary') else [atom(v) for v in values])
        converted.append(dict(ref=bindings[ref], **{'class': row['native_class']}, kind=row['kind'], value=deepcopy(values)))
    return dict(profile='native_graphical_current_v1', complete=True, objects=converted)


def validate_plan(value, *, token, owner, state, sequence, original, applied, current, expected, oid):
    """Independently recompute every target before formal native dispatch."""
    from bd_topology_inverse import plan
    from bd_parent_order_effects import validate_preparation
    import bd_drawing_order_effects as drawing
    contract = dict(profile='native_connect_local_plan_v1', native_token=token, owner=owner,
        state=state, sequence=sequence, operation='connect_data', component_oid=oid,
        before=original, after=applied, current=current, created_original_retained=True,
        real_current_verified=True, model_setters_called=0, store_called=False, write_authorized=False)
    if (type(value) is not dict or oid is None or original is None or applied is None
            or any(type(value.get(k)) is not type(v) or value[k] != v for k, v in contract.items())):
        raise ValueError('Complete local plan is not bound to durable actual history and fresh CURRENT')
    typed = plan(original, applied, current, operation='connect_data')
    if typed.get('compatible') is not True or value['values'] != typed or typed['expected'] != expected:
        raise ValueError('Complete typed local target differs from independent three-way inverse')
    for kind in ('parent', 'drawing'):
        for role in ('Before', 'After', 'Current', 'Expected'):
            image = value[kind + role]
            if kind == 'parent': validate_preparation(image, image, token=token, diagram='Main')
            else:
                drawing.validate_preparation(image, image, token=token, diagram='Main',
                    physical_before=value['parent' + role], physical_expected=value['parent' + role])
        order = merge_order(*(value[kind + r]['members'] for r in ('Before', 'After', 'Current')))
        if order.get('compatible') is not True or order['merged'] != value[kind + 'Expected']['members']:
            raise ValueError('Complete physical/drawing target differs from independent ordered merge')
    inspect_source_projection(value['source_identity_evidence'], oid)
    native = value['native_identity_evidence']
    inverse = inspect(native, oid)
    if inverse.get('complete_values_verified') is not True:
        raise ValueError('Full actual native reference inverse conflicts')
    for role, key in (('current', 'native_current'), ('candidate', 'native_merged')):
        if not same_current(_native_image(native, role), value[key]):
            raise ValueError('Frozen native cells and complete graphical image have different identities or values')
    merged, desired = (validate_current(value[k]) for k in ('native_merged', 'native_expected'))
    fields = value['native_fields']
    schemas = {r['ref']: r for r in fields['objects']}
    if (fields.get('profile') != 'native_graphical_fields_v1' or fields.get('complete') is not True
            or len(schemas) != len(fields['objects']) or schemas.keys() != merged.keys()
            or merged.keys() != desired.keys()):
        raise ValueError('Complete native causal target schemas differ')
    pairs = value['drawing_native_bindings']
    if type(pairs) is not list or any(type(p) is not list or len(p) != 2 for p in pairs):
        raise ValueError('Exact native/drawing reference bindings required')
    bindings = dict(pairs)
    order = value['drawingExpected']['members']
    if set(bindings) != set(order) or len(bindings) != len(pairs) or len(set(bindings.values())) != len(pairs):
        raise ValueError('Drawing/native target bindings are incomplete or not bijective')
    computed = deepcopy(value['native_merged'])
    mapped = {r['ref']: r for r in computed['objects']}
    for number, ref in enumerate(order, 1):
        row = mapped[bindings[ref]]; schema = schemas[bindings[ref]]
        names = schema['field_names']
        if (row['kind'] != 'fields' or schema['class'] != row['class'] or schema['kind'] != row['kind']
                or len(names) != len(row['value']) or len(set(names)) != len(names) or names.count('drawingOrder') != 1):
            raise ValueError('Exact causal drawing slot schema unavailable')
        row['value'][names.index('drawingOrder')] = {'class': 'SmallInteger', 'value': str(number)}
    if not same_current(computed, value['native_expected']):
        raise ValueError('Native target changes a field outside the exact causal drawing projection')
    if any(type(value.get(k)) is not int or value[k] < 0 for k in ('alias_counter_before', 'alias_counter_expected')):
        raise ValueError('Exact nonnegative alias counters required')
    return deepcopy(value)


def _equal_root(left, right, root):
    """Compare complete root graphs with a bijection, including both sharing directions."""
    forward, reverse, budget = {}, {}, [0]

    def equal(a, b, depth=0):
        budget[0] += 1
        if budget[0] > 1000000 or depth > 128:
            raise ValueError('Connect projection graph comparison bound exceeded')
        if a[0] != 'ref' or b[0] != 'ref':
            return _same(a, b)
        ar, br = a[1], b[1]
        if ar in forward:
            return forward[ar] == br and reverse.get(br) == ar
        if br in reverse:
            return False
        x, y = left[ar], right[br]
        if (x['native_class'], x['kind'], x.get('field_names')) != (
                y['native_class'], y['kind'], y.get('field_names')):
            return False
        forward[ar], reverse[br] = br, ar
        if x['kind'] in ('boundary', 'value'):
            return _same(x['value'], y['value'])
        a_values, b_values = x['value'], y['value']
        if len(a_values) != len(b_values):
            return False
        if x['native_class'] in ('Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet'):
            dictionary = x['native_class'] in ('Dictionary', 'IdentityDictionary')
            remaining = list(b_values)
            for item in a_values:
                saved_f, saved_r = forward.copy(), reverse.copy()
                for index, peer in enumerate(remaining):
                    forward.clear(); forward.update(saved_f)
                    reverse.clear(); reverse.update(saved_r)
                    match = (all(equal(v, w, depth + 1) for v, w in zip(item, peer))
                             if dictionary else equal(item, peer, depth + 1))
                    if match:
                        remaining.pop(index)
                        break
                else:
                    return False
            return True
        return all(equal(v, w, depth + 1) for v, w in zip(a_values, b_values))

    return equal(['ref', root], ['ref', root])


def inspect_source_projection(evidence, oid):
    if (type(evidence) is not dict or evidence.get('profile') != 'frozen_connect_source_projection_evidence_v1'
            or evidence.get('component_oid') != oid or evidence.get('complete') is not True
            or type(evidence.get('model_setters_called')) is not int or evidence['model_setters_called'] != 0
            or evidence.get('store_called') is not False):
        raise ValueError('Complete nonmutating connect source projection evidence required')
    rows = {role: _rows(evidence[role]) for role in (*ROLES, *RAW_ROLES)}
    root = evidence.get('source_root')
    schemas = {}
    for table in rows.values():
        if root not in table:
            raise ValueError('Same source root must exist in every actual and logical phase')
        for ref, row in table.items():
            schema = (row['native_class'], row['kind'], tuple(row.get('field_names', [])))
            if ref in schemas and schemas[ref] != schema:
                raise ValueError('Source identity changed class/kind/schema across projection phases')
            schemas[ref] = schema
            _cells(row, set(table))
    logical = {key: deepcopy(evidence[key]) for key in ('component_oid', 'source_root',
        'complete', 'model_setters_called', 'store_called', *ROLES)}
    logical['profile'] = 'frozen_source_identity_evidence_v1'
    inverse = inspect(logical, oid)
    original, applied, current, candidate = (rows[k] for k in ('original', *RAW_ROLES))
    if not original.keys() <= applied.keys() or not applied.keys() <= current.keys():
        raise ValueError('All actual historical source anchors must remain captured')
    if not _equal_root(applied, rows['applied'], root) or not _equal_root(current, rows['current'], root):
        raise ValueError('Logical projection changed full source values or bidirectional sharing')
    touched = []
    refs = set.union(*(set(table) for table in rows.values()))
    for ref, old in original.items():
        if old['native_class'] == 'OrderedCollection':
            continue  # Complete order is independently checked over the logical images.
        before_cells, after_cells, now_cells = (_cells(t[ref], refs) for t in (original, applied, current))
        desired_cells = _cells(candidate[ref], refs)
        for key in before_cells.keys() | after_cells.keys():
            before, after = before_cells.get(key, ABSENT), after_cells.get(key, ABSENT)
            if _same(before, after):
                continue
            if not _same(now_cells.get(key, ABSENT), after):
                raise ValueError('Actual owned source scalar/key/member overlap')
            if not _same(desired_cells.get(key, ABSENT), before):
                raise ValueError('Raw candidate failed to restore owned original source reference')
            touched.append({'ref': ref, 'cell': key})
    logical_candidate = rows['candidate']
    if candidate.keys() != current.keys() | logical_candidate.keys():
        raise ValueError('Raw candidate omitted actual anchors or invented unplanned source objects')
    for ref, row in candidate.items():
        wanted = logical_candidate.get(ref, current.get(ref))
        if wanted is None or _cells(row, refs) != _cells(wanted, refs):
            raise ValueError('Complete raw candidate differs from logical target or unowned actual anchor')
    return dict(profile='independent_connect_source_projection_v1', logical_inverse=inverse,
        actual_owned_cells=touched, complete_raw_candidate_verified=True,
        complete_projection_values_verified=True, bidirectional_sharing_verified=True,
        detached_actual_anchors_preserved=True, model_execution_authorized=False)
