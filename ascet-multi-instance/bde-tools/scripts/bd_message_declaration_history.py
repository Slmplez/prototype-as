"""Exact Module message history preparation from full original materials; no writes."""
from bd_create_material import validate as validate_creation_material
from bd_declaration_history import KEYS as COMMON_KEYS, reference, retained_preparation, slot, reconstruct
from bd_declaration_material import schema
from bd_declaration_cache import evidence as cache_evidence
from bd_edit_journal import clone
from bd_enum_declaration_before import reference_set
from bd_message_declaration_material import TYPE_CLASS, KINDS
from bd_message_declaration_inventory import SEND, RECEIVE
from bd_native_graphical_effects import same_current


KEYS=COMMON_KEYS|{'read_cache_evidence','message_evidence'}
ORIGIN_KEYS=frozenset(('profile creation_material previous_declaration previous_schema '
    'target_declaration target_schema owner_ref created_model_ref owner_proxy_ref type_ref').split())
PROOF_KEYS=frozenset(('profile component_oid generation kind request_name model_type message_scope '
    'owner_ref created_model_ref created_model_oid owner_proxy_ref owner_proxy_oid owner_proxy_class '
    'type_ref native_type_class phase model_present target_model_present same_original_owner '
    'owner_proxy_resolves_to_original same_created_model_retained reference_source persisted_reference_source '
    'owner_references_original_before owner_references_original_after owner_references_current owner_references_expected '
    'owner_database_record_references_original_before owner_database_record_references_original_after '
    'owner_database_record_references_current owner_database_record_references_expected '
    'model_setters_called store_called write_authorized').split())


def initial_origin(material):
    body=material['declaration_material'];rows,names=schema(body['after'],body['after_schema'])
    model=body['created_model_ref']
    return dict(profile='durable_message_history_origin_v1',creation_material=clone(material),
        previous_declaration=clone(body['after']),previous_schema=clone(body['after_schema']),
        target_declaration=clone(body['before']),target_schema=clone(body['before_schema']),
        owner_ref=body['owner_ref'],created_model_ref=model,
        owner_proxy_ref=slot(rows,names,model,'owner')['ref'],type_ref=slot(rows,names,model,'sgClass')['ref'])


def next_origin(material,actual):
    proof=actual['message_owner_evidence']
    return dict(profile='durable_message_history_origin_v1',creation_material=clone(material),
        previous_declaration=reconstruct(actual['declaration_current'],actual['declaration_actual']),
        previous_schema=clone(actual['declaration_schema']),target_declaration=clone(actual['declaration_current']),
        target_schema=clone(actual['declaration_schema']),
        **{k:proof[k] for k in ('owner_ref','created_model_ref','owner_proxy_ref','type_ref')})


def message_type(value,rows,names,model,role):
    proof=value['message_evidence']
    native_type=reference(slot(rows,names,model,'sgClass'),rows,proof['native_type_class'])
    if native_type!=proof['type_ref'] or rows[native_type]['kind']!='fields':
        raise ValueError('Original message primitive type identity required')
    proxy=reference(slot(rows,names,model,'owner'),rows,'DBProxy')
    if proxy!=proof['owner_proxy_ref'] or rows[proxy]['kind']!='boundary':
        raise ValueError('Original message owner proxy identity required')
    attributes=slot(rows,names,model,'attributes')
    if (type(attributes) is not dict or set(attributes)!={'class','value'}
            or attributes['class']!='SmallInteger' or not attributes['value'].isdigit()):
        raise ValueError('Audited original message attribute bits required')
    bits=int(attributes['value'])
    if (bool(bits&SEND)!=(proof['kind'] in ('send_message','send_receive_message'))
            or bool(bits&RECEIVE)!=(proof['kind'] in ('receive_message','send_receive_message'))):
        raise ValueError('Original message communication role changed')
    for field,key in (('kind','message_scope'),('elementName','request_name')):
        ref=reference(slot(rows,names,model,field),rows,'String')
        if rows[ref]['kind']!='value' or rows[ref]['value']!=list(proof[key].encode('ascii')):
            raise ValueError('Original message '+key+' changed')


def preparation(value,*,expected_present,creation_material,current_present=None,origin=None):
    if type(value) is not dict or set(value)!=KEYS:
        raise ValueError('Exact Module message declaration history preparation required')
    material=validate_creation_material(creation_material,token=creation_material['native_token'],
        oid=creation_material['component_oid'],kind=creation_material['kind'],phase='attached')
    if material['profile']!='native_create_material_v4' or material['kind'] not in KINDS:
        raise ValueError('Original primitive-message creation material required')
    body=material['declaration_material'];proof=value['message_evidence']
    present=not expected_present if current_present is None else current_present
    fixed=dict(profile='native_message_owner_history_evidence_v1',component_oid=material['component_oid'],
        generation=body['generation'],kind=body['kind'],request_name=body['request_name'],
        model_type=body['model_type'],message_scope=body['message_scope'],created_model_oid=material['created_model_oid'],
        owner_proxy_oid=material['component_oid'],owner_proxy_class='SGModule',
        native_type_class=TYPE_CLASS[body['model_type']],phase='current',model_present=present,
        target_model_present=expected_present,same_original_owner=True,owner_proxy_resolves_to_original=True,
        same_created_model_retained=True,reference_source='readReferences_loaded_and_database',
        persisted_reference_source='readIsReferencedByOnly',model_setters_called=0,store_called=False,write_authorized=False)
    if (type(proof) is not dict or set(proof)!=PROOF_KEYS
            or any(type(proof.get(k)) is not type(v) or proof[k]!=v for k,v in fixed.items())):
        raise ValueError('Original message Module/role/type/scope/namespace evidence differs')
    if origin is None:origin=initial_origin(material)
    if (type(origin) is not dict or set(origin)!=ORIGIN_KEYS
            or origin['profile']!='durable_message_history_origin_v1' or origin['creation_material']!=material):
        raise ValueError('Complete message durable original declaration origin required')
    cache=value['read_cache_evidence']
    cache_evidence(cache,previous=origin['previous_declaration'],current=value['current'],owner_class='SGModule')
    if schema(origin['previous_declaration'],origin['previous_schema'])[1]!=schema(
            cache['previous_recorded'],cache['previous_schema'])[1]:
        raise ValueError('Previous message field schema differs from the durable actual head')
    bindings=dict(cache['namespace_bindings'])
    for key in ('owner_ref','created_model_ref','owner_proxy_ref','type_ref'):
        if proof[key]!=bindings[origin[key]]:
            raise ValueError('Original message '+key+' differs from its bijective namespace binding')
    if value['owner_ref']!=proof['owner_ref'] or value['created_model_ref']!=proof['created_model_ref']:
        raise ValueError('Message declaration owner/model differs from original proof')
    def remap(item):
        if type(item) is list:return [remap(v) for v in item]
        if type(item) is dict:return {k:bindings[v] if k=='ref' else remap(v) for k,v in item.items()}
        return clone(item)
    if (not same_current(value['original'],remap(origin['target_declaration']))
            or schema(value['original'],value['original_schema'])[1]!=schema(
                remap(origin['target_declaration']),remap(origin['target_schema']))[1]):
        raise ValueError('Complete message target differs from original forward material')
    for prefix in ('owner_references','owner_database_record_references'):
        before=reference_set(proof[prefix+'_original_before']);after=reference_set(proof[prefix+'_original_after'])
        if before!=body[prefix+'_before'] or after!=body[prefix+'_after']:
            raise ValueError('Original Module reference baselines differ from forward WAL: '+prefix)
        if (reference_set(proof[prefix+'_current'])!=(after if present else before)
                or reference_set(proof[prefix+'_expected'])!=(after if expected_present else before)):
            raise ValueError('Module CURRENT/target references differ from retained history: '+prefix)
    return retained_preparation(value,expected_present=expected_present,model_oid=material['created_model_oid'],
        current_present=current_present,keys=KEYS,profiles=('native_message_declaration_exact_target_v1',),
        cache_required=True,type_guard=message_type,owner_class='SGModule')


def observed(value,prepared):
    from bd_declaration_history import observed as declaration_observed
    declaration_observed(value,prepared)
    old=prepared['message_evidence'];proof=value['message_owner_evidence']
    expected={**old,'phase':'target','model_present':old['target_model_present'],
        'target_model_present':old['model_present']}
    for prefix in ('owner_references','owner_database_record_references'):
        expected[prefix+'_current']=clone(old[prefix+'_expected'])
        expected[prefix+'_expected']=clone(old[prefix+'_current'])
    if proof!=expected or value['declaration_actual']['new_objects']:
        raise ValueError('Actual message original owner/type/role and full database/loaded reference targets differ')
    return summary(value,prepared)


def summary(value,prepared=None):
    from bd_declaration_history import summary as declaration_summary
    result=declaration_summary(value,prepared);proof=value['message_owner_evidence']
    result.update(profile='native_message_declaration_exact_actual_summary_v1',
        module_oid=proof['component_oid'],kind=proof['kind'],model_type=proof['model_type'],message_scope=proof['message_scope'],
        original_owner_proxy_verified=proof['owner_proxy_resolves_to_original'],owner_reference_targets_verified=True,
        owner_references_after=clone(proof['owner_references_current']),
        database_record_references_after=clone(proof['owner_database_record_references_current']))
    if prepared is not None:
        old=prepared['message_evidence']
        result['owner_reference_differences']={prefix:dict(before=clone(old[prefix+'_current']),
            after=clone(proof[prefix+'_current'])) for prefix in ('owner_references','owner_database_record_references')}
    return result


def terminal_query(proof,actual,prepared,cache):
    bindings=dict(cache['namespace_bindings']);expected=clone(actual['message_owner_evidence'])
    for key in ('owner_ref','created_model_ref','owner_proxy_ref','type_ref'):expected[key]=bindings[expected[key]]
    expected['phase']='current'
    if proof!=expected:
        raise ValueError('Fresh message terminal differs from the retained original Module/role/type/reference proof')
    return clone(proof)
