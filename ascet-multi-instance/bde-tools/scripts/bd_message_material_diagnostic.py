"""Independently bind diagnostic CURRENT to a complete original message WAL image."""
from bd_declaration_cache import classify
from bd_declaration_material import schema
from bd_enum_declaration_before import reference_set
from bd_native_graphical_effects import same_current,_same_image


def same_diagnostic(left,right):
    ignored={'recorded','recorded_schema','current','current_schema'}
    return (set(left)==set(right) and
        {k:v for k,v in left.items() if k not in ignored}=={k:v for k,v in right.items() if k not in ignored}
        and all(same_current(left[image],right[image])
            and schema(left[image],left[names])[1]==schema(right[image],right[names])[1]
            for image,names in (('recorded','recorded_schema'),('current','current_schema'))))


def validate(value,material,*,token,oid):
    declaration=material['declaration_material']
    fixed=dict(profile='native_message_material_diagnostic_v1',native_token=token,component_oid=oid,
        state='applied',generation=declaration['generation'],kind=declaration['kind'],
        request_name=declaration['request_name'],model_type=declaration['model_type'],
        message_scope=declaration['message_scope'],owner_ref=declaration['owner_ref'],
        created_model_ref=declaration['created_model_ref'],membership_count=1,
        original_material_retained=True,current_capture_stable=True,
        write_authorized=False,model_setters_called=0,store_called=False)
    if any(type(value.get(k)) is not type(v) or value.get(k)!=v for k,v in fixed.items()):
        raise ValueError('Diagnostic does not bind the exact original message identity/role/type/epoch material')
    before,fields=schema(value['recorded'],value['recorded_schema'])
    after,names=schema(value['current'],value['current_schema'])
    if (not same_current(value['recorded'],declaration['after'])
            or fields!=schema(declaration['after'],declaration['after_schema'])[1]
            or not before.keys()<=after.keys()
            or any((before[r]['class'],before[r]['kind'],fields[r])!=
                (after[r]['class'],after[r]['kind'],names[r]) for r in before)):
        raise ValueError('Complete original declaration images/schema/namespace differ from durable WAL')
    for prefix,original in (('owner_references','owner_references_after'),
                            ('owner_database_record_references','owner_database_record_references_after')):
        if (reference_set(value[prefix+'_recorded'])!=reference_set(declaration[original])
                or reference_set(value[prefix+'_current'])!=reference_set(declaration[original])):
            raise ValueError('Original Module inbound reference identity changed: '+prefix)
    changes=[]
    for ref,old in before.items():
        current=after[ref]
        if old['kind']=='fields':
            for index,(a,b) in enumerate(zip(old['value'],current['value'])):
                if a!=b:changes.append(dict(ref=ref,native_class=old['class'],field=fields[ref][index],before=a,after=b))
        elif not _same_image(old,old['value'],current['value']):
            changes.append(dict(ref=ref,native_class=old['class'],kind=old['kind'],before=old['value'],after=current['value']))
    unchanged=not changes and before.keys()==after.keys()
    if type(value.get('recorded_unchanged')) is not bool or value['recorded_unchanged']!=unchanged:
        raise ValueError('Native unchanged flag differs from complete independently checked images')
    result=dict(profile='message_material_diagnostic_analysis_v1',recorded_objects=len(before),
        current_objects=len(after),changes=changes,new_objects=len(after)-len(before),
        proven_cache_only=False,write_authorized=False)
    try:
        classified=classify(value['recorded'],value['recorded_schema'],value['current'],value['current_schema'],
            owner=value['owner_ref'],owner_class='SGModule')
    except ValueError as error:
        result['cache_classification_error']=str(error)
        if type(value.get('cache_guard')) is not str or not value['cache_guard'].startswith('BDE_DECLARATION_CACHE_GUARD_ERROR:'):
            raise ValueError('Native cache guard accepted a Python non-cache declaration change')
    else:
        expected=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
            changed_entries=len(classified['changes']),new_objects=classified['new_objects'],
            cache_objects=classified['cache_objects'],model_setters_called=0,store_called=False,inverse_authorized=False)
        if value.get('cache_guard')!=expected:raise ValueError('Native/Python complete cache guard disagreement')
        result.update(proven_cache_only=True,cache_classification=classified)
    for name in ('native_after_unchanged','source_after_unchanged'):
        if type(value.get(name)) is not bool:raise ValueError('Exact graphical/source unchanged flag required')
        result[name]=value[name]
    result['safe_for_history_preparation']=(result['proven_cache_only'] and result['native_after_unchanged']
        and result['source_after_unchanged'])
    return result
