"""Independent three-way diff of complete frozen source cells and identities.

Tokens are evidence from one native identity table, never reconstructible handles.
Comparing all rows includes detached records and both directions of sharing.
"""
from copy import deepcopy
import re

from bd_collection_merge import merge_order
from bd_edit_journal import fingerprint

ROLES = ('original', 'applied', 'current', 'candidate')
ABSENT = object()


def _same(a, b):
    return a is b if a is ABSENT or b is ABSENT else type(a) is type(b) and fingerprint(a) == fingerprint(b)


def _atom(value, refs):
    if type(value) is not list or not value:
        raise ValueError('Exact frozen source atom required')
    tag = value[0]
    if tag == 'ref' and len(value) == 2 and type(value[1]) is str and value[1] in refs:
        return
    if tag == 'nil' and len(value) == 1:
        return
    if tag == 'boolean' and len(value) == 2 and type(value[1]) is bool:
        return
    if (tag == 'integer' and len(value) == 3 and value[1] in
            ('SmallInteger', 'LargePositiveInteger', 'LargeNegativeInteger') and type(value[2]) is str
            and re.fullmatch(r'0|-?[1-9][0-9]*', value[2])):
        return
    if tag == 'symbol' and len(value) == 3 and all(type(s) is str and s for s in value[1:]):
        return
    if (tag == 'float64le' and len(value) == 2 and type(value[1]) is list and len(value[1]) == 8
            and all(type(b) is int and 0 <= b <= 255 for b in value[1])):
        return
    raise ValueError('Unsupported or unresolved frozen source atom')


def _rows(rows):
    if type(rows) is not list or not 0 < len(rows) <= 100000:
        raise ValueError('Complete bounded frozen source rows required')
    result = {}
    for row in rows:
        if (type(row) is not dict or not re.fullmatch(r's[1-9][0-9]*', str(row.get('ref', '')))
                or row['ref'] in result or type(row.get('native_class')) is not str
                or row.get('kind') not in ('fields', 'collection', 'boundary', 'value')):
            raise ValueError('Exact unique frozen source row required')
        result[row['ref']] = row
    return result


def _cells(row, refs):
    kind, values = row['kind'], row['value']
    if kind == 'boundary':
        if values is not None:
            raise ValueError('Frozen boundary must not export mutable owner fields')
        return {}
    if type(values) is not list or len(values) > 100000:
        raise ValueError('Bounded frozen source cells required')
    if kind == 'value':
        if any(type(b) is not int or not 0 <= b <= 255 for b in values):
            raise ValueError('Exact frozen string/byte evidence required')
        return dict(enumerate(values))
    if kind == 'fields':
        names = row.get('field_names')
        if (type(names) is not list or len(names) != len(values) or len(set(names)) != len(names)
                or any(type(name) is not str or not name for name in names)):
            raise ValueError('Complete unique frozen field schema required')
        for v in values:
            _atom(v, refs)
        return dict(zip(names, values))
    if row['native_class'] in ('Dictionary', 'IdentityDictionary'):
        cells = {}
        for pair in values:
            if type(pair) is not list or len(pair) != 2:
                raise ValueError('Exact frozen dictionary entries required')
            for v in pair:
                _atom(v, refs)
            key = fingerprint(pair[0])
            if key in cells:
                raise ValueError('Duplicate exact frozen dictionary key')
            cells[key] = pair
        return cells
    for v in values:
        _atom(v, refs)
    if row['native_class'] in ('Set', 'IdentitySet'):
        cells = {fingerprint(v): v for v in values}
        if len(cells) != len(values):
            raise ValueError('Duplicate exact frozen set member')
        return cells
    return dict(enumerate(values))


def inspect(evidence, oid):
    if (type(evidence) is not dict or evidence.get('profile') != 'frozen_source_identity_evidence_v1'
            or evidence.get('component_oid') != oid or evidence.get('complete') is not True
            or type(evidence.get('model_setters_called')) is not int or evidence['model_setters_called'] != 0
            or evidence.get('store_called') is not False):
        raise ValueError('Complete nonmutating owner-bound frozen evidence required')
    graphs = {role: _rows(evidence[role]) for role in ROLES}
    refs = set.union(*(set(rows) for rows in graphs.values()))
    root = evidence.get('source_root')
    if any(root not in rows for rows in graphs.values()):
        raise ValueError('Same original source root required in every phase')
    schemas = {}
    for rows in graphs.values():
        for ref, row in rows.items():
            schema = (row['native_class'], row['kind'], tuple(row.get('field_names', [])))
            if ref in schemas and schemas[ref] != schema:
                raise ValueError('Native identity changed class/kind/schema across phases')
            schemas[ref] = schema
            _cells(row, set(rows))
    original, applied, current, candidate = (graphs[role] for role in ROLES)
    if not original.keys() <= applied.keys() or not applied.keys() <= current.keys():
        raise ValueError('Original and introduced source anchors must remain captured')
    expected = deepcopy(current)
    conflicts, changes, orders = [], [], []
    for ref, old in original.items():
        after, now = applied[ref], current[ref]
        kind, name = old['kind'], old['native_class']
        if name == 'OrderedCollection':
            arrays = [r['value'] for r in (old, after, now)]
            tokens = {fingerprint(v): v for a in arrays for v in a}
            order = merge_order(*[[fingerprint(v) for v in a] for a in arrays])
            orders.append({'ref': ref, **order})
            if not order['compatible']:
                conflicts.append({'ref': ref, 'code': 'SOURCE_ORDER_CONFLICT'})
            else:
                expected[ref]['value'] = [tokens[key] for key in order['merged']]
            continue
        before_cells, after_cells, now_cells = (_cells(r, refs) for r in (old, after, now))
        if (kind in ('fields', 'value') or name == 'Array') and not (before_cells.keys() == after_cells.keys() == now_cells.keys()):
            raise ValueError('Fixed original source slot extent changed')
        merged = deepcopy(now_cells)
        for key in before_cells.keys() | after_cells.keys():
            before, after_value = before_cells.get(key, ABSENT), after_cells.get(key, ABSENT)
            if _same(before, after_value):
                continue
            if not _same(now_cells.get(key, ABSENT), after_value):
                conflicts.append({'ref': ref, 'cell': key, 'code': 'SOURCE_CELL_OVERLAP'})
                continue
            changes.append({'ref': ref, 'cell': key})
            if before is ABSENT:
                merged.pop(key, None)
            else:
                merged[key] = deepcopy(before)
        if kind == 'fields':
            expected[ref]['value'] = [merged[key] for key in old['field_names']]
        elif kind != 'boundary':
            expected[ref]['value'] = [merged[key] for key in sorted(merged)]
    for ref in applied.keys() - original.keys():
        if _cells(applied[ref], refs) != _cells(current[ref], refs):
            conflicts.append({'ref': ref, 'code': 'INTRODUCED_SOURCE_OVERLAP'})
    if conflicts:
        raise ValueError('Frozen source inverse conflicts: ' + repr(conflicts[:10]))
    if expected.keys() != candidate.keys() or any(_cells(row, refs) != _cells(candidate[ref], refs)
                                                  for ref, row in expected.items()):
        raise ValueError('Complete frozen candidate values/references/sharing differ from independent source diff')
    return dict(profile='independent_frozen_source_inverse_v1', complete_values_verified=True,
                exact_cross_phase_references_verified=True, bidirectional_sharing_verified=True,
                detached_anchor_cells_verified=True, row_counts={role: len(rows) for role, rows in graphs.items()},
                changed_cells=changes, orders=orders, model_execution_authorized=False)
