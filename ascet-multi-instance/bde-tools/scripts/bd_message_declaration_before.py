"""Bounded primitive-message original-body evidence; no edit or inverse authorization.

``validate(..., allow_reference_delta=True)`` is reserved for a topology
post-observation. It keeps the declaration body/schema checks strict while
returning the observed inbound-reference delta for a higher-level journal.
The default remains a zero-delta original-body check.
"""
from bd_declaration_material import CONFIGS, schema
from bd_enum_declaration_before import reference_set
from bd_native_graphical_effects import same_current, validate_actual_diff


KEYS=frozenset(('profile component_oid component_path study_token generation action owner_ref '
    'before before_schema current current_schema actual_diff roots model_refs configuration_links '
    'owner_references_before owner_references_current owner_database_record_references_before '
    'owner_database_record_references_current unchanged foreign_database_boundaries original_objects_retained '
    'creation_before_bound inverse_authorized model_setters_called store_called released').split())
TYPES=frozenset(('SGReal','SGSignedInteger','SGUnsignedInteger','SGBoolean'))


def validate(value,domain,*,component,token,allow_reference_delta=False):
    fixed=dict(profile='message_primitive_before_study_v1',component_oid=domain['oid'],study_token=token,
        unchanged=True,foreign_database_boundaries=True,original_objects_retained=True,
        creation_before_bound=False,inverse_authorized=False,model_setters_called=0,store_called=False)
    if type(value) is not dict or set(value)!=KEYS or any(type(value.get(k)) is not type(v)
            or value.get(k)!=v for k,v in fixed.items()):
        raise ValueError('Exact zero-write original Module body receipt required')
    if (type(value['component_path']) is not str or value['component_path'].lstrip('\\')!=component.lstrip('\\')
            or not component.lstrip('\\').startswith('BDE_Tool_Experiments\\Trial_')
            or type(value['generation']) is not int or value['generation']<=0
            or value['action'] not in ('capture','check','export','release')
            or type(value['released']) is not bool or value['released']!=(value['action']=='release')):
        raise ValueError('Exact original Module path/generation/action required')
    before,fields=schema(value['before'],value['before_schema'])
    current,current_fields=schema(value['current'],value['current_schema'])
    validate_actual_diff(value['before'],value['actual_diff'])
    if (not same_current(value['before'],value['current']) or fields!=current_fields
            or value['actual_diff']['changes'] or value['actual_diff']['new_objects']):
        raise ValueError('Original Module body/schema changed')
    result=body(value,before,fields)
    reference_deltas = {}
    for prefix in ('owner_references','owner_database_record_references'):
        before_refs = reference_set(value[prefix+'_before'])
        current_refs = reference_set(value[prefix+'_current'])
        if not allow_reference_delta and before_refs != current_refs:
            raise ValueError('Complete original Module inbound reference target differs: '+prefix)
        if allow_reference_delta:
            old = {tuple(row) for row in before_refs}
            new = {tuple(row) for row in current_refs}
            reference_deltas[prefix] = dict(added=[list(row) for row in sorted(new-old)],
                removed=[list(row) for row in sorted(old-new)])
    if allow_reference_delta:
        result['reference_deltas'] = reference_deltas
    return result


def body(value,before,fields):
    """Pure original ownership/slot checks shared with formal creation materials."""
    for ref,row in before.items():
        if row['class']=='Association' and (row['kind']!='fields' or fields[ref]!=['key','value']):
            raise ValueError('Complete original Module Association key/value slots required')
        if row['class'] in ('SGMethodProcess','SGCodeArchive','SGASDLCodeVariantKey') and row['kind']!='fields':
            raise ValueError('Original Module process/code body cannot be an opaque boundary')
    roots=value['roots']; owner=value['owner_ref']
    if type(roots) is not list or not 1<=len(roots)<=4352:
        raise ValueError('Bounded original Module owned roots required')
    root_refs=set()
    for row in roots:
        if (type(row) is not dict or set(row)!={'ref','class'} or row['ref'] in root_refs
                or row['ref'] not in before or row['class']!=before[row['ref']]['class']
                or before[row['ref']]['kind']!='fields' or row['class'] not in {'SGModule','SGVariable'}|TYPES|CONFIGS):
            raise ValueError('Exact original Module/declaration/type/configuration roots required')
        root_refs.add(row['ref'])
    if (owner not in root_refs or before[owner]['class']!='SGModule'
            or sum(row['class']=='SGModule' for row in roots)!=1
            or not {'primitiveVariables','complexVariables','dbObject','timeStamps'}<=set(fields[owner])):
        raise ValueError('Complete unique original SGModule owner required')
    def child(ref,name,cls,kind):
        if name not in fields[ref]: raise ValueError('Original Module slot unavailable: '+name)
        pointer=before[ref]['value'][fields[ref].index(name)]
        row=before.get(pointer.get('ref'))
        if row is None or row['class']!=cls or row['kind']!=kind:
            raise ValueError('Complete original Module child storage required: '+name)
        return row
    for name in ('primitiveVariables','complexVariables'): child(owner,name,'LookupTable','fields')
    child(owner,'dbObject','DBObject','boundary')
    model_refs=value['model_refs']
    if (type(model_refs) is not list or len(model_refs)>4096 or len(set(model_refs))!=len(model_refs)
            or set(model_refs)!={r['ref'] for r in roots if r['class']=='SGVariable'}):
        raise ValueError('Complete original Module declaration root census required')
    for model in model_refs:
        if not {'sgClass','kind','attributes'}<=set(fields[model]):
            raise ValueError('Complete original primitive-message role/scope/type slots required')
        pointer=before[model]['value'][fields[model].index('sgClass')]
        native_type=before.get(pointer.get('ref'))
        if native_type is None or native_type['ref'] not in root_refs or native_type['class'] not in TYPES or native_type['kind']!='fields':
            raise ValueError('Complete owned original primitive message type required; enum profile separate')
    links=value['configuration_links']; ids=set(); refs=set()
    if type(links) is not list or len(links)>256:
        raise ValueError('Bounded complete original Module configuration links required')
    for row in links:
        if (type(row) is not list or len(row)!=3 or any(type(s) is not str or not s for s in row)
                or row[0] in ids or row[2] in refs or row[1] not in CONFIGS or row[2] not in root_refs
                or before[row[2]]['class']!=row[1]):
            raise ValueError('Exact original Module database/configuration identity required')
        ids.add(row[0]);refs.add(row[2])
    if refs!={r['ref'] for r in roots if r['class'] in CONFIGS}:
        raise ValueError('Every original Module configuration requires its database link')
    return dict(native_objects=len(before),native_slots=sum(len(v) for v in fields.values()),
        owner_class='SGModule',declarations=len(model_refs),configuration_roots=len(refs),
        lookup_tables=sum(r['class']=='LookupTable' for r in before.values()),
        foreign_database_boundaries=sum(r['kind']=='boundary' for r in before.values()),
        full_creation_before_bound=False,inverse_authorized=False)
