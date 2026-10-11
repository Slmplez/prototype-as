"""Actual existing-definition enum body/DB-reference material, no history authority."""
from bd_declaration_material import KEYS as BASE_KEYS, schema
from bd_edit_journal import clone, fingerprint
from bd_enum_declaration_before import body, reference_set
from bd_native_graphical_effects import same_current, validate_actual_diff, summary as diff_summary

KEYS = BASE_KEYS | frozenset(('generation definition_oid definition_path definition_ref enumeration_ref '
    'definition_references_before definition_references_after').split())


def validate(value, *, token, oid, phase):
    if type(value) is not dict or set(value) != KEYS or phase not in ('prepared', 'attached'):
        raise ValueError('Exact existing-definition enum material required')
    fixed = dict(profile='native_enum_declaration_material_v1', native_token=token,
        component_oid=oid, phase=phase, foreign_database_boundaries=True,
        same_original_objects_retained=True, inverse_authorized=False, model_setters_called=0, store_called=False)
    if any(type(value[key]) is not type(expected) or value[key] != expected for key, expected in fixed.items()):
        raise ValueError('Original enum factory binding/authorization differs')
    if (type(value['generation']) is not int or value['generation'] <= 0
            or type(value['definition_oid']) is not str or not value['definition_oid']
            or type(value['definition_path']) is not str
            or not value['definition_path'].lstrip('\\').startswith('BDE_Tool_Experiments\\')):
        raise ValueError('Exact original enum database/namespace identity required')
    before, fields = schema(value['before'], value['before_schema'])
    roles = {key: value[key] for key in ('owner_ref', 'definition_ref', 'enumeration_ref')}
    body({**roles, 'roots': value['roots_before'], 'configuration_links': value['configuration_links_before']}, before, fields)
    old_refs = reference_set(value['definition_references_before'])
    after_fields = ('after', 'after_schema', 'roots_after', 'configuration_links_after',
                    'actual_diff', 'created_model_ref', 'definition_references_after')
    if phase == 'prepared':
        if any(value[key] is not None for key in after_fields):
            raise ValueError('Enum before cannot invent actual factory material')
    else:
        after, after_fields_schema = schema(value['after'], value['after_schema'])
        body({**roles, 'roots': value['roots_after'], 'configuration_links': value['configuration_links_after']},
             after, after_fields_schema)
        validate_actual_diff(value['before'], value['actual_diff'])
        expected = clone(value['before']); bound = {row['ref']: row for row in expected['objects']}
        for row in value['actual_diff']['new_objects']:
            copied = clone(row); expected['objects'].append(copied); bound[row['ref']] = copied
        for delta in value['actual_diff']['changes']:
            if bound[delta['object']]['kind'] == 'fields':
                bound[delta['object']]['value'][delta['index'] - 1] = clone(delta['after'])
            else:
                bound[delta['object']]['value'] = clone(delta['after'])
        if not same_current(expected, value['after']):
            raise ValueError('Complete actual enum body diff does not explain after image')
        created = value['created_model_ref']; old_roots = {row['ref'] for row in value['roots_before']}
        new_roots = {row['ref'] for row in value['roots_after']}
        if (created in before or created not in after or after[created]['class'] != 'SGVariable'
                or after[created]['kind'] != 'fields' or created not in new_roots or not old_roots <= new_roots):
            raise ValueError('Actual enum declaration must retain the original SGVariable factory object')
        names = after_fields_schema[created]
        expected_names = ['properties', 'comment', 'elementName', 'aliasName', 'sgClass', 'owner',
            'attributes', 'kind', 'elementKind', 'memory', 'methodAccessEnabled', 'formula',
            'symbolicName', 'isSend', 'isReceive']
        if names != expected_names:
            raise ValueError('Complete audited original SGVariable enum slot schema required')
        pointer = after[created]['value'][names.index('sgClass')]
        model_type = after.get(pointer.get('ref'))
        if (model_type is None or not (
                model_type['class'] == 'SGEnumeration' and model_type['ref'] == value['enumeration_ref']
                or model_type['class'] == 'SGEnumerationDB' and model_type['ref'] == value['definition_ref']
                or model_type['class'] == 'DBProxy' and model_type['kind'] == 'boundary')):
            raise ValueError('Created enum SGVariable has an unsupported or foreign native type')
        new_refs = reference_set(value['definition_references_after'])
        owner_ref = [oid, 'SGClass']
        allowed = old_refs if owner_ref in old_refs else sorted(old_refs + [owner_ref])
        if new_refs not in (old_refs, allowed):
            raise ValueError('Actual enum DB-reference diff includes a foreign owner change')
    return clone(value)


def summary(value):
    before, fields = schema(value['before'], value['before_schema'])
    roles = {key: value[key] for key in ('owner_ref', 'definition_ref', 'enumeration_ref')}
    stats = body({**roles, 'roots': value['roots_before'],
                 'configuration_links': value['configuration_links_before']}, before, fields)
    return dict(profile=value['profile'], phase=value['phase'], **stats,
        before_objects=len(before), after_objects=None if value['after'] is None else len(value['after']['objects']),
        definition_oid=value['definition_oid'], definition_path=value['definition_path'],
        created_model_ref=value['created_model_ref'],
        actual_diff=None if value['actual_diff'] is None else diff_summary(value['before'], value['actual_diff']),
        definition_reference_diff=None if value['definition_references_after'] is None else dict(
            added=[row for row in value['definition_references_after'] if row not in value['definition_references_before']],
            removed=[row for row in value['definition_references_before'] if row not in value['definition_references_after']]),
        same_original_objects_retained=True, inverse_authorized=False, sha256=fingerprint(value),
        detail_source='durable create_material_actual.declaration_material')
