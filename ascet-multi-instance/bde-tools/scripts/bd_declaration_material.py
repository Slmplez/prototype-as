"""Strict original declaration before/actual-after material; no inverse authorization."""
from bd_edit_journal import clone, fingerprint
from bd_native_graphical_effects import validate_current, validate_actual_diff, same_current, summary as diff_summary


KEYS = frozenset(('profile native_token component_oid phase before before_schema roots_before '
    'configuration_links_before owner_ref after after_schema roots_after configuration_links_after '
    'actual_diff created_model_ref foreign_database_boundaries same_original_objects_retained '
    'inverse_authorized model_setters_called store_called').split())
CONFIGS = frozenset(('SGClassImplConfig', 'SGClassValueConfig', 'SGImplConfiguration', 'SGValueConfiguration'))


def schema(image, value):
    objects = validate_current(image)
    if (type(value) is not dict or set(value) != {'profile', 'complete', 'objects'}
            or value['profile'] != 'native_graphical_fields_v1' or value['complete'] is not True
            or type(value['objects']) is not list or len(value['objects']) != len(objects)):
        raise ValueError('Complete original declaration native schema required')
    fields = {}
    for row in value['objects']:
        if type(row) is not dict or set(row) != {'ref', 'class', 'kind', 'field_names'}:
            raise ValueError('Exact declaration schema descriptor required')
        native = objects.get(row['ref']); names = row['field_names']
        if (native is None or row['ref'] in fields or row['class'] != native['class'] or row['kind'] != native['kind']
                or type(names) is not list or any(type(name) is not str or not name for name in names)
                or len(set(names)) != len(names) or len(names) > 512
                or (len(names) != len(native['value']) if native['kind'] == 'fields' else bool(names))):
            raise ValueError('Native declaration field indices/classes differ')
        fields[row['ref']] = names
    for row in objects.values():
        if row['class'] == 'LookupTable':
            if row['kind'] != 'fields' or fields[row['ref']] != ['elementCount', 'keys', 'values']:
                raise ValueError('Exact LookupTable original storage slots required')
            for member in row['value'][1:]:
                array = objects.get(member.get('ref'))
                if array is None or array['class'] != 'Array' or array['kind'] != 'collection':
                    raise ValueError('Complete original LookupTable arrays required')
    return objects, fields


def roots(value, objects, owner_ref, links):
    if type(value) is not list or not 1 <= len(value) <= 4352:
        raise ValueError('Bounded declaration owned roots required')
    seen = set()
    for row in value:
        if (type(row) is not dict or set(row) != {'ref', 'class'} or row['ref'] in seen
                or row['ref'] not in objects or row['class'] != objects[row['ref']]['class']
                or objects[row['ref']]['kind'] != 'fields'
                or row['class'] not in {'SGClass', 'SGVariable', 'SGReal'} | CONFIGS):
            raise ValueError('Exact owned declaration/configuration root identity required')
        seen.add(row['ref'])
    if owner_ref not in seen or sum(row['class'] == 'SGClass' for row in value) != 1:
        raise ValueError('Unique original declaration owner required')
    if type(links) is not list or len(links) > 256:
        raise ValueError('Bounded actual configuration identity links required')
    ids = set(); config_refs = set()
    for row in links:
        if (type(row) is not list or len(row) != 3 or any(type(s) is not str or not s for s in row)
                or row[0] in ids or row[2] in config_refs or row[1] not in CONFIGS
                or row[2] not in seen or objects[row[2]]['class'] != row[1]):
            raise ValueError('Original configuration database/native identity differs')
        ids.add(row[0]); config_refs.add(row[2])
    if config_refs != {row['ref'] for row in value if row['class'] in CONFIGS}:
        raise ValueError('Every owned configuration requires its actual database identity')


def validate(value, *, token, oid, phase):
    if type(value) is not dict or set(value) != KEYS or phase not in ('prepared', 'attached'):
        raise ValueError('Exact versioned declaration material required')
    fixed = dict(profile='native_declaration_material_v1', native_token=token, component_oid=oid, phase=phase,
        foreign_database_boundaries=True, same_original_objects_retained=True, inverse_authorized=False,
        model_setters_called=0, store_called=False)
    if any(type(value[k]) is not type(wanted) or value[k] != wanted for k, wanted in fixed.items()):
        raise ValueError('Original declaration capture binding/authorization differs')
    before, fields = schema(value['before'], value['before_schema'])
    owner = value['owner_ref']
    if (owner not in before or before[owner]['class'] != 'SGClass' or before[owner]['kind'] != 'fields'
            or not {'primitiveVariables', 'complexVariables', 'timeStamps'} <= set(fields[owner])):
        raise ValueError('Complete original owner/declaration/timestamp slots required')
    roots(value['roots_before'], before, owner, value['configuration_links_before'])
    for name in ['primitiveVariables', 'complexVariables']:
        pointer = before[owner]['value'][fields[owner].index(name)]
        table = before.get(pointer.get('ref'))
        if table is None or table['class'] != 'LookupTable' or table['kind'] != 'fields':
            raise ValueError('Original primitive/complex declaration storage required')
    after_fields = ['after', 'after_schema', 'roots_after', 'configuration_links_after', 'actual_diff', 'created_model_ref']
    if phase == 'prepared':
        if any(value[k] is not None for k in after_fields):
            raise ValueError('Before declaration capture cannot invent factory results')
    else:
        after, _ = schema(value['after'], value['after_schema'])
        roots(value['roots_after'], after, owner, value['configuration_links_after'])
        validate_actual_diff(value['before'], value['actual_diff'])
        expected = clone(value['before']); bound = {row['ref']: row for row in expected['objects']}
        for row in value['actual_diff']['new_objects']:
            copied = clone(row); expected['objects'].append(copied); bound[row['ref']] = copied
        for delta in value['actual_diff']['changes']:
            row = bound[delta['object']]
            if row['kind'] == 'fields': row['value'][delta['index'] - 1] = clone(delta['after'])
            else: row['value'] = clone(delta['after'])
        if not same_current(expected, value['after']):
            raise ValueError('Complete actual declaration diff does not explain after-image')
        created = value['created_model_ref']; old_roots = {r['ref'] for r in value['roots_before']}
        if (created in before or created not in after or after[created]['class'] != 'SGVariable'
                or after[created]['kind'] != 'fields' or created not in {r['ref'] for r in value['roots_after']}
                or not old_roots <= {r['ref'] for r in value['roots_after']}):
            raise ValueError('Actual new declaration must be the retained original factory object')
    return clone(value)


def summary(value):
    return dict(profile=value['profile'], phase=value['phase'], owner_ref=value['owner_ref'],
        before_objects=len(value['before']['objects']), after_objects=None if value['after'] is None else len(value['after']['objects']),
        actual_diff=None if value['actual_diff'] is None else diff_summary(value['before'], value['actual_diff']),
        created_model_ref=value['created_model_ref'], same_original_objects_retained=True, inverse_authorized=False,
        sha256=fingerprint(value), detail_source='durable create_material_actual.declaration_material')
