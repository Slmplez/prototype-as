"""Original Enum closure bound to full forward material and the last durable head."""
from bd_declaration_cache import bind_images, evidence
from bd_declaration_finalize import BINDING_KEYS, primitive_count
from bd_declaration_history import retained_preparation, schema
from bd_enum_declaration_history import ORIGIN_KEYS, DEFINITION_KEYS, KEYS as TARGET_KEYS, enum_type, observed as enum_observed
from bd_create_material import validate as creation_material
from bd_edit_journal import clone
from bd_native_graphical_effects import same_current


KEYS = {'profile', 'target', 'original_before_binding'}
def preparation(value, *, origin):
    if (type(value) is not dict or set(value) != KEYS
            or value['profile'] != 'native_enum_declaration_finalize_target_v1'
            or type(origin) is not dict or set(origin) != ORIGIN_KEYS
            or origin['profile'] != 'durable_enum_history_origin_v1'):
        raise ValueError('Complete original Enum finalization origin and target required')
    material = origin['creation_material']
    creation_material(material, token=material['native_token'], oid=material['component_oid'],
                      kind='enumeration', phase='attached')
    if material['profile'] != 'native_create_material_v3' or material['created_definition_oid'] is not None:
        raise ValueError('Existing original Enum definition required; NEWENUM has a separate lifecycle')
    body = material['declaration_material']; target = value['target']
    if type(target) is not dict or set(target) != TARGET_KEYS:
        raise ValueError('Complete detached Enum target including both reference sources required')
    proof = target['definition_evidence']
    fixed = dict(profile='native_enum_definition_finalize_evidence_v1', phase='current',
        component_oid=material['component_oid'], definition_oid=body['definition_oid'],
        definition_path=body['definition_path'], generation=body['generation'],
        type_proxy_class='SGEnumerationDB', type_proxy_oid=body['definition_oid'], model_type='enum',
        same_definition_retained=True, same_enumeration_retained=True, type_resolves_to_original=True,
        model_setters_called=0, store_called=False, write_authorized=False,
        reference_source='readReferences_loaded_and_database', persisted_reference_source='readIsReferencedByOnly',
        persisted_target_verified=False)
    if (type(proof) is not dict or set(proof) != DEFINITION_KEYS | {'phase', 'created_model_ref'}
            or any(type(proof[k]) is not type(v) or proof[k] != v for k, v in fixed.items())):
        raise ValueError('Original Enum finalization definition/type/namespace proof differs')
    before, after = body['definition_references_before'], body['definition_references_after']
    for name, expected in [('definition_references_original_before', before),
                           ('definition_references_original_after', after),
                           ('definition_references_current', before),
                           ('definition_references_expected', before),
                           ('definition_references_persisted_current', before)]:
        if proof[name] != expected:
            raise ValueError('Both Enum reference sources must already equal the exact original-before set')
    cache = target['read_cache_evidence']
    evidence(cache, previous=origin['previous_declaration'], current=target['current'])
    if schema(cache['previous_recorded'], cache['previous_schema'])[1] != schema(
            origin['previous_declaration'], origin['previous_schema'])[1]:
        raise ValueError('Complete Enum previous head field schema differs')
    mappings = dict(cache['namespace_bindings'])
    for name in ('definition_ref', 'enumeration_ref', 'created_model_ref', 'type_proxy_ref'):
        if proof[name] != mappings[origin[name]]:
            raise ValueError('Original Enum finalization identity differs from its durable head mapping')
    if proof['created_model_ref'] != target['created_model_ref']:
        raise ValueError('Original detached Enum model identity differs')
    bound = value['original_before_binding']
    if (type(bound) is not dict or set(bound) != BINDING_KEYS
            or bound['profile'] != 'native_declaration_image_binding_v1'):
        raise ValueError('Complete original Enum before namespace binding required')
    bind_images(bound, previous=body['before'])
    if (schema(bound['previous_recorded'], bound['previous_schema'])[1] != schema(
            body['before'], body['before_schema'])[1]
            or not same_current(bound['recorded'], target['original'])
            or schema(bound['recorded'], bound['recorded_schema'])[1] != schema(
                target['original'], target['original_schema'])[1]):
        raise ValueError('Complete original Enum before body/schema cannot be replaced')
    original_mappings = dict(bound['namespace_bindings'])
    for name in ('definition_ref', 'enumeration_ref', 'owner_ref'):
        target_ref = proof[name] if name != 'owner_ref' else target[name]
        if original_mappings[body[name]] != target_ref:
            raise ValueError('Enum original-before owner/definition identity differs from CURRENT')
    retained_preparation(target, expected_present=False, current_present=False,
        model_oid=material['created_model_oid'], keys=TARGET_KEYS,
        profiles=('native_enum_declaration_finalize_body_v1',), cache_required=True, type_guard=enum_type)
    return clone(value)


def observed(value, prepared):
    if value.get('original_declaration_verified') is not True:
        raise ValueError('Complete original Enum declaration baseline was not restored')
    result = enum_observed(value, prepared['target'])
    result.update(detail_source='durable create_finalize_actual', original_before_namespace_bound=True)
    return result


def terminal_query(proof, actual, cache):
    mappings = dict(cache['namespace_bindings'])
    expected = clone(actual['enum_definition_evidence'])
    for name in ('definition_ref', 'enumeration_ref', 'created_model_ref', 'type_proxy_ref'):
        expected[name] = mappings[expected[name]]
    expected.update(phase='current', persisted_target_verified=False)
    if proof != expected:
        raise ValueError('Fresh original Enum finalization type/identity/reference query differs')
    return clone(proof)
