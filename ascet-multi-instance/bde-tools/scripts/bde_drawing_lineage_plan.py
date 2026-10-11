"""Reconstruct original layout from full WAL images; never infer an ambiguous slot."""
import re

from bd_edit_journal import fingerprint
from bd_native_graphical_effects import validate_current
from bd_drawing_order_effects import parent_image


def _original_rows(prepared, baseline, schemas, *, require_drawing):
    raw = validate_current(prepared['graphical_current'])
    for row in raw.values():
        if row['kind'] == 'fields' and len(schemas.get(row['class'], [])) != len(row['value']):
            raise ValueError('Original field image differs from audited live schema')

    def field(row, name):
        fields = schemas[row['class']]
        if row['kind'] != 'fields' or name not in fields:
            raise ValueError('Audited raw graphical field unavailable')
        return row['value'][fields.index(name)]

    def object_for(value):
        if not isinstance(value, dict) or 'ref' not in value or value['ref'] not in raw:
            raise ValueError('Exact original object reference required')
        return raw[value['ref']]

    def integer(value):
        if (not isinstance(value, dict) or set(value) != {'class', 'value'} or value['class'] != 'SmallInteger'
                or not isinstance(value['value'], str) or not re.fullmatch(r'0|[1-9][0-9]*', value['value'])):
            raise ValueError('Stable nonnegative original graphical integer required')
        return int(value['value'])

    parents = [row for row in raw.values() if row['class'] == 'SGBlockDiagram']
    if len(parents) != 1:
        raise ValueError('Unique original direct Main parent required')
    parent = parents[0]
    children = object_for(field(parent, 'children'))
    if children['class'] != 'OrderedCollection' or children['kind'] != 'collection':
        raise ValueError('Complete original ordered physical children required')
    physical = prepared['parent_order_before']
    drawing = prepared.get('drawing_order_before')
    if require_drawing or drawing is not None:
        drawing_parent = parent_image(drawing)
        if ({key: physical[key] for key in physical if key != 'members'}
                != {key: drawing_parent[key] for key in drawing_parent if key != 'members'}):
            raise ValueError('Original physical/drawing parent bindings differ')
    if (len(physical['members']) != len(children['value'])
            or len(set(physical['members'])) != len(physical['members'])):
        raise ValueError('Original physical/drawing parent bindings differ')
    original_entries = [row for row in baseline['entries'] if row['kind'] in ('node', 'edge')]
    entries = {row['ref']: row for row in original_entries}
    if len(entries) != len(original_entries):
        raise ValueError('Original graphical aliases collide')
    edges = [row for row in original_entries if row['kind'] == 'edge']
    rows = []
    for native_order_ref, value in zip(physical['members'], children['value']):
        node = object_for(value)
        basic = node
        if node['class'] == 'SGConnectionWrapperGO':
            points = object_for(field(node, 'connectionPoints'))
            if points['class'] != 'Array' or points['kind'] != 'collection' or len(points['value']) != 2:
                raise ValueError('Complete original data-edge endpoints required')
            pin_ids = []
            for point in points['value']:
                point = object_for(point)
                if point['class'] != 'RBConnectionPointBranch':
                    raise ValueError('Unsupported original endpoint point class')
                pin = object_for(field(point, 'owner'))
                pin_ids.append('p' + str(integer(field(pin, 'identifier'))))
            candidates = [edge for edge in edges if {edge['source'], edge['target']} == set(pin_ids)
                          and edge['native_class'] == node['class']]
            if len(set(pin_ids)) != 2 or len(candidates) != 1:
                raise ValueError('Original wrapper endpoint identity is ambiguous')
            ref = candidates[0]['ref']
            basic = object_for(field(node, 'graphObject'))
        else:
            ref = 'n' + str(integer(field(node, 'representedObject')))
        if (ref not in entries or entries[ref]['native_class'] != node['class']
                or any(row['ref'] == ref for row in rows)):
            raise ValueError('Original raw object disagrees with original native alias')
        rows.append({'ref': ref, 'class': node['class'], 'original_raw_ref': node['ref'],
                     'order_ref': native_order_ref, 'drawing_order': integer(field(basic, 'drawingOrder'))})
    if set(entries) != {row['ref'] for row in rows}:
        raise ValueError('Original image omits native graphical objects')
    sorted_rows = sorted(rows, key=lambda row: row['drawing_order'])
    if ([row['drawing_order'] for row in sorted_rows] != list(range(1, len(rows) + 1))
            or (drawing is not None and [row['order_ref'] for row in sorted_rows] != drawing['members'])):
        raise ValueError('WAL drawing order differs from actual original raw numbers')
    return rows, sorted_rows, physical, drawing


def _same_generation(baseline, current):
    if (baseline['diagram'] != 'Main' or current['diagram'] != 'Main'
            or baseline['generation'] != current['generation'] or type(baseline['generation']) is not int
            or baseline['identity'] != current['identity']):
        raise ValueError('Exact same-generation original Main identity required')


def original_layout(prepared, baseline, probe, current):
    _same_generation(baseline, current)
    rows, sorted_rows, physical, drawing = _original_rows(prepared, baseline, probe['schemas'], require_drawing=True)
    entries = {row['ref']: row for row in baseline['entries'] if row['kind'] in ('node', 'edge')}
    retained = probe['retained']
    refs = {row['ref']: row for row in [*probe['physical'], retained]}
    if (len(refs) != len(rows) or set(refs) != set(entries)
            or any(refs[row['ref']]['class'] != row['class'] for row in rows)
            or retained['class'] != 'SGLiteralGO'):
        raise ValueError('Exact current/retained original graphical roster required')
    expected_physical = [row['ref'] for row in rows]
    expected_drawing = [row['ref'] for row in sorted_rows]
    if ([ref for ref in expected_physical if ref != retained['ref']]
            != [row['ref'] for row in probe['physical']]
            or [ref for ref in expected_drawing if ref != retained['ref']]
            != [row['ref'] for row in probe['drawing']]):
        raise ValueError('Independent current order differs from original restoration lineage')
    return {'profile': 'original_layout_lineage_v1', 'complete': True,
            'component_oid': probe['component_oid'], 'diagram': 'Main', 'generation': baseline['generation'],
            'retained_ref': retained['ref'], 'physical': expected_physical, 'drawing': expected_drawing,
            'original_graphical_sha256': fingerprint(prepared['graphical_current']),
            'original_physical_sha256': fingerprint(physical), 'original_drawing_sha256': fingerprint(drawing),
            'current_graphical_sha256': fingerprint(probe['raw_current']),
            'bindings': [{**row, 'current_raw_ref': refs[row['ref']]['raw_ref']} for row in rows]}


def attached_original_layout(prepared, baseline, probe, current):
    """Recover only order when every original graphical object is already attached."""
    _same_generation(baseline, current)
    if current != baseline:
        raise ValueError('Complete collected original graph required for order-only restoration')
    rows, sorted_rows, physical, drawing = _original_rows(prepared, baseline, probe['schemas'], require_drawing=False)
    refs = {row['ref']: row for row in probe['physical']}
    expected_physical = [row['ref'] for row in rows]
    expected_drawing = [row['ref'] for row in sorted_rows]
    if (len(refs) != len(rows) or list(refs) != expected_physical
            or any(refs[row['ref']]['class'] != row['class'] for row in rows)
            or len(probe['drawing']) != len(rows)
            or {row['ref'] for row in probe['drawing']} != set(refs)):
        raise ValueError('Complete exact attached original roster and physical order required')
    return {'profile': 'original_attached_order_lineage_v1', 'complete': True,
            'component_oid': probe['component_oid'], 'diagram': 'Main', 'generation': baseline['generation'],
            'physical': expected_physical, 'drawing': expected_drawing,
            'original_graphical_sha256': fingerprint(prepared['graphical_current']),
            'original_physical_sha256': fingerprint(physical),
            'original_drawing_sha256': fingerprint(drawing) if drawing is not None else None,
            'drawing_proof': 'complete_original_raw_normalized_numbers',
            'current_graphical_sha256': fingerprint(probe['raw_current']),
            'bindings': [{**row, 'current_raw_ref': refs[row['ref']]['raw_ref']} for row in rows]}
