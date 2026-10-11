"""Independently reconcile exported native images, field schemas and actual edits.

This accepts diagnostic evidence only. It cannot reconstruct native objects,
authorize a model setter, or prove stored source/Undo restoration.
"""
from copy import deepcopy

from bd_edit_journal import fingerprint
from bd_native_graphical_effects import validate_current, validate_actual_diff


def field_schemas(graph, fields):
    objects = validate_current(graph)
    if (not isinstance(fields, dict) or fields.get('profile') != 'native_graphical_fields_v1'
            or fields.get('complete') is not True or not isinstance(fields.get('objects'), list)):
        raise ValueError('Complete native field schema required')
    schemas = {}
    for schema in fields['objects']:
        if not isinstance(schema, dict):
            raise ValueError('Native field schema must be an object')
        ref = schema.get('ref')
        if not isinstance(ref, str) or ref in schemas or ref not in objects:
            raise ValueError('Native field schema identity is missing or duplicated')
        row = objects[ref]
        names = schema.get('field_names')
        if (schema.get('class') != row['class'] or schema.get('kind') != row['kind']
                or not isinstance(names, list) or any(not isinstance(name, str) or not name for name in names)
                or len(names) != (len(row['value']) if row['kind'] == 'fields' else 0)):
            raise ValueError('Native field schema differs from captured slots')
        schemas[ref] = schema
    if schemas.keys() != objects.keys():
        raise ValueError('Native field schema coverage is incomplete')
    return schemas


def _same_row(left, right):
    if any(left[key] != right[key] for key in ('ref', 'class', 'kind')):
        return False
    unordered = left['kind'] == 'collection' and left['class'] in ('Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet')
    if unordered:
        return sorted(map(fingerprint, left['value'])) == sorted(map(fingerprint, right['value']))
    return left['value'] == right['value']


def reconcile(before_graph, before_fields, actual, terminal_graph, terminal_fields):
    schemas = field_schemas(before_graph, before_fields)
    field_schemas(terminal_graph, terminal_fields)
    validated = validate_actual_diff(before_graph, actual)
    expected = deepcopy(validate_current(before_graph))
    expected.update({row['ref']: deepcopy(row) for row in actual['new_objects']})
    changes = []
    for change in actual['changes']:
        row = expected[change['object']]
        if change['kind'] == 'fields':
            row['value'][change['index'] - 1] = deepcopy(change['after'])
        else:
            row['value'] = deepcopy(change['after'])
        changes.append({**deepcopy(change), 'native_class': row['class'],
            'field': schemas[row['ref']]['field_names'][change['index'] - 1] if change['kind'] == 'fields' else None})
    terminal = validate_current(terminal_graph)
    if expected.keys() != terminal.keys() or any(not _same_row(row, terminal[ref]) for ref, row in expected.items()):
        raise ValueError('Actual patch does not reconstruct the complete exported terminal image')
    return {**validated, 'profile': 'native_field_evidence_v1', 'changes': changes,
        'original_image_sha256': fingerprint(before_graph), 'terminal_image_sha256': fingerprint(terminal_graph),
        'native_identity_recreatable_from_export': False, 'model_execution_authorized': False}
