"""Independent full current SG image validation and actual delta; no inverse authority.

Retained unreachable objects remain in the image. Newly observed objects are
not called database creations; opaque DB boundaries remain explicit.
"""
from collections import Counter
from bd_edit_journal import canonical, clone
from bd_commit_model_images import validate_audit
from bd_commit_resource_diff import recompute as resource_delta


def _descriptor(value, mapped=None):
    if not isinstance(value,dict) or not isinstance(value.get('class'),str) or not value['class']:
        raise ValueError('Complete typed SG member required')
    if 'ref' in value:
        if set(value)!={'class','ref'} or not isinstance(value['ref'],str) or not value['ref']:
            raise ValueError('Exact SG object identity required')
        if mapped is not None and (value['ref'] not in mapped or mapped[value['ref']]['binding']!=value):
            raise ValueError('SG member outside the complete image')
    elif (set(value) not in ({'class','kind','value'},{'class','kind','value','bits'})
            or value['kind']!='constant' or not isinstance(value['value'],str)):
        raise ValueError('Exact typed SG constant required')
    elif 'bits' in value:
        if (not isinstance(value['bits'],list) or not value['bits']
                or any(type(b) is not int or not 0<=b<=255 for b in value['bits'])):
            raise ValueError('Complete original float identity bytes required')


def image(rows):
    if not isinstance(rows,list) or not 1<=len(rows)<=16384:
        raise ValueError('Complete SG image roster required')
    mapped={};total=0
    for row in rows:
        if not isinstance(row,dict) or set(row)!={'binding','kind','field_names','value'}:
            raise ValueError('Complete SG image object required')
        _descriptor(row['binding'])
        if set(row['binding'])!={'class','ref'}:raise ValueError('SG row must bind a native object')
        ref=row['binding']['ref']
        if ref in mapped:raise ValueError('Duplicate SG image identity')
        mapped[ref]=row
        kind,names,value=row['kind'],row['field_names'],row['value']
        if kind not in ('fields','value','collection','boundary') or not isinstance(names,list):
            raise ValueError('Fixed SG image kind/schema required')
        if kind=='fields':
            if (len(names)>512 or any(not isinstance(n,str) or not n for n in names)
                    or len(set(names))!=len(names) or not isinstance(value,list) or len(value)!=len(names)):
                raise ValueError('Complete ordered SG direct fields required')
        elif names:raise ValueError('Nonfield SG object claims a field schema')
        if kind=='value':
            if not isinstance(value,list) or len(value)>4194304 or any(type(b) is not int or not 0<=b<=255 for b in value):
                raise ValueError('Complete SG value bytes required')
            total+=len(value)
        elif kind=='collection':
            if not isinstance(value,list) or len(value)>16384:raise ValueError('Complete SG collection required')
        elif kind=='boundary' and value is not None:raise ValueError('Opaque SG boundary cannot claim contents')
    if total>16777216:raise ValueError('Complete SG value budget exceeded')
    for row in rows:
        if row['kind'] not in ('fields','collection'):continue
        dictionary=row['kind']=='collection' and row['binding']['class'] in ('Dictionary','IdentityDictionary')
        keys=[]
        for member in row['value']:
            if dictionary:
                if not isinstance(member,list) or len(member)!=2:raise ValueError('Complete SG dictionary pair required')
                _descriptor(member[0],mapped);_descriptor(member[1],mapped);keys.append(canonical(member[0]))
            else:_descriptor(member,mapped);keys.append(canonical(member))
        if (dictionary or row['binding']['class'] in ('Set','IdentitySet')) and len(keys)!=len(set(keys)):
            raise ValueError('Duplicate SG dictionary/set members')
    return mapped


def _contents(row):
    value=row['value']
    if row['kind']=='collection' and row['binding']['class'] in ('Dictionary','IdentityDictionary','Set','IdentitySet'):
        return sorted(value,key=canonical)
    return value


def _registry(roots,members,mapped):
    if (not isinstance(roots,list) or not isinstance(members,list) or len(roots)>4096 or len(members)>4096):
        raise ValueError('Complete current loaded SG registry required')
    for root in roots:
        _descriptor(root,mapped)
        if mapped[root['ref']]['kind']!='fields':raise ValueError('Loaded SG root lacks full direct fields')
    if len({r['ref'] for r in roots})!=len(roots):raise ValueError('Duplicate loaded SG root')
    entries=[];objects=[]
    for member in members:
        if not isinstance(member,dict) or set(member)!={'key','entry','object'}:
            raise ValueError('Complete SG registered member required')
        for key in ('key','entry','object'):_descriptor(member[key],mapped if key=='object' else None)
        if member['entry']['class']!='DBCacheObject' or 'ref' not in member['entry']:
            raise ValueError('Exact registered SG cache entry required')
        entries.append(member['entry']['ref']);objects.append(member['object']['ref'])
    if len(entries)!=len(set(entries)) or set(objects)!={r['ref'] for r in roots}:
        raise ValueError('Loaded SG registry root/member census differs')


def delta(before,after,category):
    if category not in ('since_preparation','query_read_effect'):raise ValueError('Fixed SG delta category required')
    old=image(before['image']);new=image(after['image'])
    _registry(before['registered_roots'],before['registered_members'],old)
    _registry(after['registered_roots'],after['registered_members'],new)
    if not set(old)<=set(new):raise ValueError('Retained SG object omitted from current image; not deletion proof')
    changes=[]
    def add(locus,field,a,b):
        if a!=b:changes.append(dict(category=category,locus=locus,field=field,before=clone(a),after=clone(b)))
    for ref in sorted(old):
        a,b=old[ref],new[ref];locus='sg/'+ref
        if a['binding']!=b['binding'] or a['kind']!=b['kind'] or a['field_names']!=b['field_names']:
            add(locus,'$identity_schema',a,b)
        elif a['kind']=='fields':
            for name,left,right in zip(a['field_names'],a['value'],b['value']):add(locus,name,left,right)
        elif _contents(a)!=_contents(b):add(locus,'$contents',a['value'],b['value'])
    for ref in sorted(set(new)-set(old)):add('sg/'+ref,'$new_observed_object',None,new[ref])
    for role in ('registered_roots','registered_members'):
        a,b=before[role],after[role]
        # Registry ordering has no meaning. Native reports use sorted identities.
        if sorted(a,key=canonical)!=sorted(b,key=canonical):add('sg_registry',role,a,b)
    return changes


def original_image(audit):
    validate_audit(audit)
    cache=audit['original_capture']['before_read']['cache_entries']
    members=[dict(key=row['key'],entry={'class':row['entry']['class'],'ref':row['entry']['ref']},
                  object=row['registered_object']) for row in cache if row['registered_object']['class'].startswith('SG')]
    # Resource descriptors may contain kind/value metadata; SG binding uses identity only.
    for row in members:
        for key in ('key','object'):
            row[key]={k:row[key][k] for k in ('class','ref')} if 'ref' in row[key] else {
                'class':row[key]['class'],'kind':'constant','value':row[key]['value']}
    members.sort(key=lambda row:row['entry']['ref'])
    roots=sorted(audit['registered_model_original_roots'],key=lambda row:row['ref'])
    value=dict(image=audit['registered_model_original_image'],registered_roots=roots,registered_members=members)
    _registry(roots,members,image(value['image']))
    return value


def validate_current(report,audit,category):
    keys=set(('profile component_oid generation category image registered_roots registered_members root_class_counts '
        'boundary_class_counts original_objects_retained original_material_held db_proxies_resolved '
        'full_model_transitive_closure write_authorized inverse_authorized model_setters_called store_called actual_changes').split())
    if (not isinstance(report,dict) or set(report)!=keys or report['profile']!='native_registered_sg_check_v1'
            or report['component_oid']!=audit['component_oid'] or report['generation']!=audit['generation']
            or type(report['generation']) is not int or report['category']!=category
            or report['original_objects_retained']!=audit['registered_models']['objects']
            or type(report['original_objects_retained']) is not int or report['original_material_held'] is not True
            or type(report['model_setters_called']) is not int or report['model_setters_called']!=0):
        raise ValueError('Exact retained original/current SG report required')
    for key in ('db_proxies_resolved','full_model_transitive_closure','write_authorized','inverse_authorized','store_called'):
        if report[key] is not False:raise ValueError('SG current read cannot claim closure/write/inverse')
    mapped=image(report['image']);_registry(report['registered_roots'],report['registered_members'],mapped)
    boundary=Counter(row['binding']['class'] for row in report['image'] if row['kind']=='boundary')
    classes=Counter(row['object']['class'] for row in report['registered_members'])
    if dict(boundary)!=report['boundary_class_counts'] or dict(classes)!=report['root_class_counts']:
        raise ValueError('Full SG current root/boundary census differs')
    return mapped


def recompute(audit):
    before=original_image(audit);pairs=audit['registered_model_checks']
    if not isinstance(pairs,list) or not 1<=len(pairs)<=32:raise ValueError('Retained SG current evidence required')
    pair=pairs[-1]
    if set(pair)!={'phase','before','after','resource_check_index'} or pair['phase']!='checked':
        raise ValueError('Incomplete SG query must remain unresolved')
    index=pair['resource_check_index']
    if type(index) is not int or not 1<=index<=len(audit['checks']):raise ValueError('Exact paired resource check required')
    first,last=pair['before'],pair['after']
    validate_current(first,audit,'since_preparation');validate_current(last,audit,'query_read_effect')
    a=delta(before,first,'since_preparation');b=delta(first,last,'query_read_effect')
    if a!=first['actual_changes'] or b!=last['actual_changes']:raise ValueError('Native actual SG delta differs from full independent images')
    actual=resource_delta(audit['original_capture'],audit['checks'][index-1])+a+b
    if audit['prepared_receipt']['profile'] in ('native_commit_prepare_v3','native_commit_prepare_v4','native_commit_prepare_v5','native_commit_prepare_v6'):
        from bd_commit_control_audit import recompute_controls
        actual+=recompute_controls(audit,index)
    if audit['prepared_receipt']['profile'] in ('native_commit_prepare_v4','native_commit_prepare_v5','native_commit_prepare_v6'):
        from bd_commit_reciprocal import validate_capture
        original=audit['original_reciprocal_capture']
        proof=validate_capture(original)
        if (proof!=audit['prepared_receipt']['reciprocal_references']
                or original['component_oid']!=audit['component_oid']
                or original['generation']!=audit['generation']
                or original['owner_key']!=audit['original_capture']['owner_key']
                or original['outgoing_record']!=audit['original_capture']['records'][1]
                or type(audit['current_reciprocal_records_checked']) is not bool):
            raise ValueError('Original reciprocal evidence differs or claims an unperformed current check')
        if audit['current_reciprocal_records_checked']:
            from bd_commit_reciprocal_current import recompute as reciprocal_delta
            actual+=reciprocal_delta(audit,index)
        elif audit.get('reciprocal_checks'):
            raise ValueError('Incomplete current reciprocal query cannot downgrade to unchecked original capture')
    if actual!=audit['last_actual_changes']:raise ValueError('Complete direct-resource/SG actual changes differ')
    return actual
