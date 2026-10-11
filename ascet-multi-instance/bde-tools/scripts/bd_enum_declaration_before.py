"""Validate bounded original enum study images; never authorize model writes."""
from bd_declaration_material import CONFIGS, schema
from bd_native_graphical_effects import same_current, validate_actual_diff


KEYS = frozenset(('profile component_oid definition_oid definition_path study_token generation action '
    'owner_ref definition_ref enumeration_ref before before_schema current current_schema actual_diff roots '
    'configuration_links definition_references_before definition_references_current unchanged '
    'foreign_database_boundaries original_objects_retained creation_before_bound full_body_capture '
    'inverse_authorized model_setters_called store_called released').split())


def validate(value, *, oid, definition_oid, token):
    fixed = dict(profile='enum_declaration_before_study_v1', component_oid=oid,
        definition_oid=definition_oid, study_token=token, unchanged=True,
        foreign_database_boundaries=True, original_objects_retained=True,
        creation_before_bound=False, full_body_capture=False, inverse_authorized=False,
        model_setters_called=0, store_called=False)
    if type(value) is not dict or set(value) != KEYS or any(type(value.get(key)) is not type(expected)
            or value.get(key) != expected for key, expected in fixed.items()):
        raise ValueError('Bounded original enum identity and zero-write receipt required')
    if (value.get('action') not in ('capture', 'check', 'export', 'release')
            or type(value.get('generation')) is not int or value['generation'] <= 0
            or type(value.get('released')) is not bool
            or value['released'] != (value['action'] == 'release')
            or type(value.get('definition_path')) is not str
            or not value.get('definition_path', '').lstrip('\\').startswith('BDE_Tool_Experiments\\')):
        raise ValueError('Exact original enum study action/generation/path required')
    objects, fields = schema(value['before'], value['before_schema'])
    current, current_fields = schema(value['current'], value['current_schema'])
    validate_actual_diff(value['before'], value['actual_diff'])
    if (not same_current(value['before'], value['current']) or fields != current_fields
            or value['actual_diff']['changes'] or value['actual_diff']['new_objects']):
        raise ValueError('Original enum before image/schema changed')
    summary = body(value, objects, fields)
    references = reference_set(value['definition_references_before'])
    if references != reference_set(value['definition_references_current']):
        raise ValueError('Complete original external enum reference set differs')
    summary.update(external_definition_references=len(references), body_before_bound_to_creation=False,
                   inverse_authorized=False)
    return summary


def reference_set(references):
    if (type(references) is not list or len(references) > 4096
            or any(not isinstance(row, list) or len(row) != 2
                   or any(type(part) is not str or not part for part in row) for row in references)
            or references != sorted(references) or len({tuple(row) for row in references}) != len(references)):
        raise ValueError('Complete original external enum reference set differs')
    return references


def body(value, objects, fields):
    """Pure schema/ownership validation shared by study and formal captures."""
    roles = {'owner_ref': 'SGClass', 'definition_ref': 'SGEnumerationDB', 'enumeration_ref': 'SGEnumeration'}
    for role, cls in roles.items():
        row = objects.get(value.get(role))
        if row is None or row['class'] != cls or row['kind'] != 'fields':
            raise ValueError('Complete original enum role required: ' + role)
    def member(ref, name):
        if name not in fields[ref]:
            raise ValueError('Original enum slot unavailable: ' + name)
        return objects[ref]['value'][fields[ref].index(name)]
    def child(ref, name, cls, kind):
        pointer = member(ref, name)
        row = objects.get(pointer.get('ref'))
        if row is None or row['class'] != cls or row['kind'] != kind:
            raise ValueError('Complete original enum child storage required: ' + name)
        return row
    owner, definition, enumeration = (value[name] for name in roles)
    for name in ('primitiveVariables', 'complexVariables'):
        child(owner, name, 'LookupTable', 'fields')
    if 'timeStamps' not in fields[owner]:
        raise ValueError('Original owner timestamps required')
    if child(definition, 'enumeration', 'SGEnumeration', 'fields')['ref'] != enumeration:
        raise ValueError('Original library/enum body binding differs')
    child(definition, 'dbObject', 'DBObject', 'boundary')
    child(definition, 'parent', 'DBProxy', 'boundary')
    child(enumeration, 'values', 'String', 'value')
    enum_map = child(enumeration, 'enumerationMap', 'SortedCollection', 'fields')
    map_ref = enum_map['ref']
    if fields[map_ref] != ['sortBlock', 'size', 'elements', 'sorted']:
        raise ValueError('Exact native SortedCollection enum storage required')
    storage = child(map_ref, 'elements', 'Array', 'collection')
    size = member(map_ref, 'size')
    if (size.get('class') != 'SmallInteger' or not size.get('value', '').isdigit()
            or not 0 <= int(size['value']) <= len(storage['value'])):
        raise ValueError('Complete original sorted enum map size/storage required')
    if member(map_ref, 'sortBlock') != {'class': 'UndefinedObject', 'value': 'nil'}:
        raise ValueError('Unaudited non-default enum sort block')
    if member(map_ref, 'sorted') not in ({'class': 'True', 'value': 'true'}, {'class': 'False', 'value': 'false'}):
        raise ValueError('Exact original enum sort-state atom required')
    roots = value['roots']
    if type(roots) is not list or not 3 <= len(roots) <= 4352:
        raise ValueError('Bounded complete enum owned root roster required')
    seen = set()
    for row in roots:
        if (set(row) != {'ref', 'class'} or row['ref'] in seen or row['ref'] not in objects
                or row['class'] != objects[row['ref']]['class']
                or objects[row['ref']]['kind'] != 'fields'
                or row['class'] not in {'SGClass', 'SGEnumerationDB', 'SGEnumeration', 'SGVariable', 'SGReal'} | CONFIGS):
            raise ValueError('Exact bounded enum owned roots required')
        seen.add(row['ref'])
    if not set(value[name] for name in roles) <= seen or sum(row['class'] == 'SGClass' for row in roots) != 1:
        raise ValueError('Unique original enum owner and definition roots required')
    links = value['configuration_links']
    if type(links) is not list or len(links) > 256:
        raise ValueError('Bounded enum configuration link roster required')
    ids, linked = set(), set()
    for link in links:
        if (not isinstance(link, list) or len(link) != 3 or any(type(part) is not str or not part for part in link)
                or link[0] in ids or link[2] in linked or link[1] not in CONFIGS
                or link[2] not in seen or objects[link[2]]['class'] != link[1]):
            raise ValueError('Exact native enum configuration identity links required')
        ids.add(link[0]); linked.add(link[2])
    if linked != {row['ref'] for row in roots if row['class'] in CONFIGS}:
        raise ValueError('Every enum configuration root requires database identity')
    return dict(native_objects=len(objects), native_fields=sum(len(row['value']) for row in objects.values()
        if row['kind'] == 'fields'), lookup_tables=sum(row['class'] == 'LookupTable' for row in objects.values()),
        configuration_roots=len(links), foreign_boundaries=sum(row['kind'] == 'boundary' for row in objects.values()))
