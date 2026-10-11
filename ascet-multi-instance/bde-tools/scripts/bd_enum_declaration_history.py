"""Exact retained Enum history preparation; preparation grants no write authority."""
from bd_declaration_history import KEYS as COMMON_KEYS, reference, retained_preparation, slot, reconstruct
from bd_declaration_cache import evidence as cache_evidence
from bd_edit_journal import clone
from bd_enum_declaration_before import reference_set
from bd_create_material import validate as validate_creation_material
from bd_native_graphical_effects import same_current


KEYS = COMMON_KEYS | {'read_cache_evidence', 'definition_evidence'}
DEFINITION_KEYS = frozenset(('profile component_oid definition_oid definition_path generation '
    'definition_ref enumeration_ref type_proxy_ref type_proxy_class type_proxy_oid '
    'definition_references_original_before definition_references_original_after '
    'definition_references_current definition_references_expected definition_references_persisted_current '
    'reference_source persisted_reference_source persisted_target_verified '
    'same_definition_retained same_enumeration_retained type_resolves_to_original '
    'model_type model_setters_called store_called write_authorized').split())


def enum_type(value, rows, names, model, role):
    proof = value['definition_evidence']
    proxy = reference(slot(rows, names, model, 'sgClass'), rows, 'DBProxy')
    if proxy != proof['type_proxy_ref'] or rows[proxy]['kind'] != 'boundary':
        raise ValueError('Original Enum type proxy identity required')
    definition, enumeration = proof['definition_ref'], proof['enumeration_ref']
    if (definition not in rows or enumeration not in rows
            or rows[definition]['class'] != 'SGEnumerationDB' or rows[definition]['kind'] != 'fields'
            or rows[enumeration]['class'] != 'SGEnumeration' or rows[enumeration]['kind'] != 'fields'
            or reference(slot(rows, names, definition, 'enumeration'), rows, 'SGEnumeration') != enumeration
            or names[enumeration] != ['values', 'enumerationMap']):
        raise ValueError('Original Enum definition and enumeration body identities required')


ORIGIN_KEYS = frozenset(('profile creation_material previous_declaration previous_schema target_declaration '
    'target_schema definition_ref enumeration_ref created_model_ref type_proxy_ref').split())


def initial_origin(material):
    """Keep the exact forward material and declaration images inside the durable preparation."""
    body = material['declaration_material']; objects = {row['ref']: row for row in body['after']['objects']}
    from bd_declaration_material import schema
    _, fields = schema(body['after'], body['after_schema'])
    proxy = slot(objects, fields, body['created_model_ref'], 'sgClass')['ref']
    return dict(profile='durable_enum_history_origin_v1', creation_material=clone(material),
        previous_declaration=clone(body['after']), previous_schema=clone(body['after_schema']),
        target_declaration=clone(body['before']), target_schema=clone(body['before_schema']),
        definition_ref=body['definition_ref'], enumeration_ref=body['enumeration_ref'],
        created_model_ref=body['created_model_ref'], type_proxy_ref=proxy)


def next_origin(material, actual):
    proof = actual['enum_definition_evidence']
    return dict(profile='durable_enum_history_origin_v1', creation_material=clone(material),
        previous_declaration=reconstruct(actual['declaration_current'], actual['declaration_actual']),
        previous_schema=clone(actual['declaration_schema']), target_declaration=clone(actual['declaration_current']),
        target_schema=clone(actual['declaration_schema']), definition_ref=proof['definition_ref'],
        enumeration_ref=proof['enumeration_ref'], created_model_ref=proof['created_model_ref'],
        type_proxy_ref=proof['type_proxy_ref'])


def preparation(value, *, expected_present, creation_material, current_present=None, origin=None):
    if type(value) is not dict or set(value) != KEYS:
        raise ValueError('Exact Enum declaration history preparation required')
    material = validate_creation_material(creation_material, token=creation_material['native_token'],
        oid=creation_material['component_oid'], kind='enumeration', phase='attached')
    if material['profile'] != 'native_create_material_v3' or material['created_definition_oid'] is not None:
        raise ValueError('Retained existing-definition original Enum material required')
    body = material['declaration_material']; proof = value['definition_evidence']
    version2 = value['profile'] == 'native_enum_declaration_exact_target_v2'
    proof_keys = DEFINITION_KEYS | {'phase', 'created_model_ref'} if version2 else DEFINITION_KEYS
    fixed = dict(profile='native_enum_definition_history_evidence_v2' if version2 else 'native_enum_definition_history_evidence_v1',
        component_oid=material['component_oid'], definition_oid=body['definition_oid'],
        definition_path=body['definition_path'], generation=body['generation'],
        type_proxy_class='SGEnumerationDB', type_proxy_oid=body['definition_oid'],
        model_type='enum', same_definition_retained=True, same_enumeration_retained=True,
        type_resolves_to_original=True, model_setters_called=0, store_called=False, write_authorized=False,
        reference_source='readReferences_loaded_and_database', persisted_reference_source='readIsReferencedByOnly',
        persisted_target_verified=False)
    if version2: fixed['phase'] = 'current'
    if (type(proof) is not dict or set(proof) != proof_keys
            or any(type(proof[k]) is not type(v) or proof[k] != v for k, v in fixed.items())):
        raise ValueError('Original Enum definition/type/namespace evidence differs')
    before = reference_set(proof['definition_references_original_before'])
    after = reference_set(proof['definition_references_original_after'])
    reference_set(proof['definition_references_persisted_current'])
    if before != body['definition_references_before'] or after != body['definition_references_after']:
        raise ValueError('Enum definition reference baselines differ from original forward material')
    present = not expected_present if current_present is None else current_present
    if (reference_set(proof['definition_references_current']) != (after if present else before)
            or reference_set(proof['definition_references_expected']) != (after if expected_present else before)):
        raise ValueError('Enum CURRENT/target reference set differs from retained history direction')
    if version2 and reference_set(proof['definition_references_persisted_current']) != (after if present else before):
        raise ValueError('Enum database record CURRENT differs from the exact retained head')
    if origin is None:
        if version2: raise ValueError('Executable Enum preparation requires its durable declaration origin')
        origin = initial_origin(material)
    if (type(origin) is not dict or set(origin) != ORIGIN_KEYS
            or origin['profile'] != 'durable_enum_history_origin_v1' or origin['creation_material'] != material):
        raise ValueError('Complete Enum durable declaration origin required')
    cache_evidence(value['read_cache_evidence'], previous=origin['previous_declaration'], current=value['current'])
    if {row['ref']: row for row in origin['previous_schema']['objects']} != {
            row['ref']: row for row in value['read_cache_evidence']['previous_schema']['objects']}:
        raise ValueError('Complete previous Enum field schema binding differs from the durable head')
    bindings = dict(value['read_cache_evidence']['namespace_bindings'])
    if proof['type_proxy_ref'] != bindings[origin['type_proxy_ref']]:
        raise ValueError('Original Enum type proxy identity differs from its durable namespace binding')
    if (proof['definition_ref'] != bindings[origin['definition_ref']]
            or proof['enumeration_ref'] != bindings[origin['enumeration_ref']]
            or value['created_model_ref'] != bindings[origin['created_model_ref']]
            or version2 and proof['created_model_ref'] != value['created_model_ref']):
        raise ValueError('Enum original definition/model namespace mapping differs')
    def remap(item):
        if type(item) is list: return [remap(value) for value in item]
        if type(item) is dict:
            return {key: bindings[value] if key == 'ref' else remap(value) for key, value in item.items()}
        return clone(item)
    if (not same_current(value['original'], remap(origin['target_declaration']))
            or {row['ref']: row for row in value['original_schema']['objects']} != {
                row['ref']: row for row in remap(origin['target_schema'])['objects']}):
        raise ValueError('Complete Enum original target differs from original forward before material')
    retained_preparation(value, expected_present=expected_present,
        model_oid=material['created_model_oid'], current_present=current_present, keys=KEYS,
        profiles=('native_enum_declaration_exact_target_v1', 'native_enum_declaration_exact_target_v2'),
        cache_required=True, type_guard=enum_type)
    return clone(value)


def observed(value, prepared):
    """Every actual body change and both reference sources must reach the prepared target."""
    from bd_declaration_history import observed as declaration_observed
    declaration_observed(value, prepared)
    proof = value['enum_definition_evidence']; old = prepared['definition_evidence']
    expected = {**old, 'phase': 'target', 'persisted_target_verified': True,
        'definition_references_current': clone(old['definition_references_expected']),
        'definition_references_persisted_current': clone(old['definition_references_expected'])}
    if proof != expected or value['declaration_actual']['new_objects']:
        raise ValueError('Actual Enum original identities or complete database/loaded reference targets differ')
    return summary(value, prepared)


def summary(value, prepared=None):
    from bd_declaration_history import summary as declaration_summary
    result = declaration_summary(value, prepared)
    proof = value['enum_definition_evidence']
    result.update(profile='native_enum_declaration_exact_actual_summary_v1',
        definition_oid=proof['definition_oid'], definition_path=proof['definition_path'],
        definition_reference_targets_verified=proof['persisted_target_verified'],
        definition_references_after=clone(proof['definition_references_current']),
        database_record_references_after=clone(proof['definition_references_persisted_current']))
    if prepared is not None:
        old = prepared['definition_evidence']
        result.update(definition_reference_differences=dict(
            combined_before=clone(old['definition_references_current']),
            combined_after=clone(proof['definition_references_current']),
            database_record_before=clone(old['definition_references_persisted_current']),
            database_record_after=clone(proof['definition_references_persisted_current'])))
    return result


def terminal_query(proof, actual, prepared, cache):
    """Bind a fresh read-only original definition query to the retained actual namespace."""
    bindings = dict(cache['namespace_bindings'])
    expected = clone(actual['enum_definition_evidence'])
    for name in ('definition_ref', 'enumeration_ref', 'created_model_ref', 'type_proxy_ref'):
        expected[name] = bindings[expected[name]]
    expected.update(phase='current', persisted_target_verified=False,
        definition_references_expected=clone(prepared['declaration_evidence']['definition_evidence']['definition_references_current']))
    if proof != expected:
        raise ValueError('Fresh Enum terminal query differs from retained original type/DB/reference proof')
    return clone(proof)
