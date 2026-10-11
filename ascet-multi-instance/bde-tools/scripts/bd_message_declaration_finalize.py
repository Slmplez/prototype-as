"""Original Module message closure bound to forward material and its latest actual head."""
from bd_create_material import validate as creation_material
from bd_declaration_cache import bind_images, evidence
from bd_declaration_finalize import BINDING_KEYS, primitive_count
from bd_declaration_history import retained_preparation, schema
from bd_edit_journal import clone
from bd_message_declaration_history import (ORIGIN_KEYS, PROOF_KEYS, KEYS as TARGET_KEYS,
    message_type, observed as message_observed, terminal_query as message_terminal_query)
from bd_message_declaration_material import TYPE_CLASS, KINDS
from bd_native_graphical_effects import same_current


KEYS = {'profile', 'target', 'original_before_binding'}


def preparation(value, *, origin):
    if (type(value) is not dict or set(value) != KEYS
            or value['profile'] != 'native_message_declaration_finalize_target_v1'
            or type(origin) is not dict or set(origin) != ORIGIN_KEYS
            or origin['profile'] != 'durable_message_history_origin_v1'):
        raise ValueError('Complete original Module message finalization origin and target required')
    material = origin['creation_material']
    creation_material(material, token=material['native_token'], oid=material['component_oid'],
                      kind=material['kind'], phase='attached')
    if material['profile'] != 'native_create_material_v4' or material['kind'] not in KINDS:
        raise ValueError('Original primitive Module message creation material required')
    body = material['declaration_material']; target = value['target']
    if type(target) is not dict or set(target) != TARGET_KEYS:
        raise ValueError('Complete detached message target and both Module reference sources required')
    proof = target['message_evidence']
    fixed = dict(profile='native_message_owner_finalize_evidence_v1', component_oid=material['component_oid'],
        generation=body['generation'], kind=body['kind'], request_name=body['request_name'],
        model_type=body['model_type'], message_scope=body['message_scope'],
        created_model_oid=material['created_model_oid'], owner_proxy_oid=material['component_oid'],
        owner_proxy_class='SGModule', native_type_class=TYPE_CLASS[body['model_type']],
        phase='current', model_present=False, target_model_present=False, same_original_owner=True,
        owner_proxy_resolves_to_original=True, same_created_model_retained=True,
        reference_source='readReferences_loaded_and_database', persisted_reference_source='readIsReferencedByOnly',
        model_setters_called=0, store_called=False, write_authorized=False)
    if (type(proof) is not dict or set(proof) != PROOF_KEYS
            or any(type(proof.get(k)) is not type(v) or proof[k] != v for k, v in fixed.items())):
        raise ValueError('Original message finalization owner/proxy/type/role/scope proof differs')
    for prefix in ('owner_references', 'owner_database_record_references'):
        for suffix, expected in [('original_before', body[prefix+'_before']),
                                 ('original_after', body[prefix+'_after']),
                                 ('current', body[prefix+'_before']), ('expected', body[prefix+'_before'])]:
            if proof[prefix+'_'+suffix] != expected:
                raise ValueError('Both Module reference sources must equal the original-before target: '+prefix)
    cache = target['read_cache_evidence']
    evidence(cache, previous=origin['previous_declaration'], current=target['current'], owner_class='SGModule')
    if schema(cache['previous_recorded'], cache['previous_schema'])[1] != schema(
            origin['previous_declaration'], origin['previous_schema'])[1]:
        raise ValueError('Complete message previous head field schema differs')
    mappings = dict(cache['namespace_bindings'])
    for name in ('owner_ref', 'created_model_ref', 'owner_proxy_ref', 'type_ref'):
        if proof[name] != mappings[origin[name]]:
            raise ValueError('Original message identity differs from its latest durable namespace mapping')
    if proof['owner_ref'] != target['owner_ref'] or proof['created_model_ref'] != target['created_model_ref']:
        raise ValueError('Original message finalization owner/model identity differs')
    bound = value['original_before_binding']
    if (type(bound) is not dict or set(bound) != BINDING_KEYS
            or bound['profile'] != 'native_declaration_image_binding_v1'):
        raise ValueError('Complete original message before namespace binding required')
    bind_images(bound, previous=body['before'])
    if (schema(bound['previous_recorded'], bound['previous_schema'])[1] != schema(
            body['before'], body['before_schema'])[1]
            or not same_current(bound['recorded'], target['original'])
            or schema(bound['recorded'], bound['recorded_schema'])[1] != schema(
                target['original'], target['original_schema'])[1]
            or dict(bound['namespace_bindings'])[body['owner_ref']] != target['owner_ref']):
        raise ValueError('Complete original message before body/schema/owner cannot be replaced')
    retained_preparation(target, expected_present=False, current_present=False,
        model_oid=material['created_model_oid'], keys=TARGET_KEYS,
        profiles=('native_message_declaration_finalize_body_v1',), cache_required=True,
        type_guard=message_type, owner_class='SGModule')
    return clone(value)


def observed(value, prepared):
    if value.get('original_declaration_verified') is not True:
        raise ValueError('Complete original Module declaration baseline was not restored')
    result = message_observed(value, prepared['target'])
    result.update(detail_source='durable create_finalize_actual', original_before_namespace_bound=True)
    return result


def terminal_query(proof, actual, cache):
    return message_terminal_query(proof, actual, None, cache)
