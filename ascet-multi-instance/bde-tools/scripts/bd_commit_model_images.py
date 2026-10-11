"""Validate exported loaded SG before images without granting persistence authority."""
from collections import Counter
from bd_commit_resources import validate_models


def validate_audit(audit):
    prepared=audit['prepared_receipt'];proof=audit['registered_models']
    if prepared['profile'] not in ('native_commit_prepare_v2','native_commit_prepare_v3','native_commit_prepare_v4','native_commit_prepare_v5','native_commit_prepare_v6') or prepared['registered_models']!=proof:
        raise ValueError('Exact prepared loaded SG proof required')
    if prepared['profile'] in ('native_commit_prepare_v5','native_commit_prepare_v6'):
        from bd_commit_resources import validate
        from bd_commit_reference_baseline import validate_summary
        validate(prepared, token=audit['native_token'], component_oid=audit['component_oid'])
        baseline = validate_summary(audit.get('reference_file_baseline'), token=audit['native_token'],
            component_oid=audit['component_oid'], generation=prepared['generation'])
        if baseline != prepared['reference_file_baseline'] or audit.get('current_reference_file_checked') is not False:
            raise ValueError('Original reference baseline audit cannot downgrade or claim an unperformed current scan')
    if prepared['profile'] == 'native_commit_prepare_v6':
        from bd_commit_persistent_owners import validate_audit as validate_persistent
        validate_persistent(audit)
    validate_models(proof,component_oid=audit['component_oid'],generation=audit['generation'])
    if prepared['native_token']!=audit['native_token'] or proof['generation']!=prepared['generation']:
        raise ValueError('Original loaded SG preparation was rebound')
    rows=audit['registered_model_original_image'];mapped={};kinds=Counter();boundary=Counter()
    if not isinstance(rows,list) or len(rows)!=proof['objects'] or len(rows)>16384:
        raise ValueError('Complete original loaded SG image roster required')
    for row in rows:
        if (not isinstance(row,dict) or set(row)!={'binding','kind','field_names','value'}
                or not isinstance(row['binding'],dict) or set(row['binding'])!={'class','ref'}
                or any(not isinstance(row['binding'][key],str) or not row['binding'][key] for key in ('class','ref'))):
            raise ValueError('Exact original loaded SG image binding required')
        ref=row['binding']['ref']
        if ref in mapped:raise ValueError('Duplicate original loaded SG identity')
        mapped[ref]=row;kinds[row['kind']]+=1
        kind=row['kind'];names=row['field_names'];value=row['value']
        if kind not in ('fields','value','collection','boundary') or not isinstance(names,list):
            raise ValueError('Fixed loaded SG image kind required')
        if kind=='fields':
            if (not isinstance(value,list) or len(value)!=len(names) or len(names)>512
                    or any(not isinstance(name,str) or not name for name in names) or len(set(names))!=len(names)):
                raise ValueError('Complete ordered loaded SG field image required')
        elif names:raise ValueError('Nonfield SG image cannot claim field schema')
        if kind=='value':
            if not isinstance(value,list) or len(value)>4194304 or any(type(byte) is not int or not 0<=byte<=255 for byte in value):
                raise ValueError('Complete original loaded SG value bytes required')
        elif kind=='collection':
            if not isinstance(value,list) or len(value)>16384:raise ValueError('Complete original SG collection required')
        elif kind=='boundary':
            if value is not None:raise ValueError('Opaque SG boundary cannot pretend to have captured contents')
            boundary[row['binding']['class']]+=1
    def member(value):
        if not isinstance(value,dict) or not isinstance(value.get('class'),str):
            raise ValueError('Exact original SG member descriptor required')
        if 'ref' in value:
            if set(value)!={'class','ref'} or value['ref'] not in mapped or mapped[value['ref']]['binding']!=value:
                raise ValueError('Original SG member points outside complete exported roster')
        elif (set(value) not in ({'class','kind','value'},{'class','kind','value','bits'})
                or value['kind']!='constant' or not isinstance(value['value'],str)):
            raise ValueError('Typed original SG constant required')
        elif 'bits' in value and (not isinstance(value['bits'],list) or any(type(byte) is not int or not 0<=byte<=255 for byte in value['bits'])):
            raise ValueError('Complete original SG float bytes required')
    for row in rows:
        if row['kind'] in ('fields','collection'):
            if row['kind']=='collection' and row['binding']['class'] in ('Dictionary','IdentityDictionary'):
                for pair in row['value']:
                    if not isinstance(pair,list) or len(pair)!=2:raise ValueError('Complete original SG dictionary association required')
                    member(pair[0]);member(pair[1])
            else:
                for value in row['value']:member(value)
    selected=[row['registered_object'] for row in audit['original_capture']['before_read']['cache_entries']
              if row['registered_object']['class'].startswith('SG')]
    if (len(selected)!=proof['registered_sg_cache_entries']
            or dict(Counter(row['class'] for row in selected))!=proof['root_class_counts']
            or len({row['ref'] for row in selected})!=proof['registered_sg_roots']):
        raise ValueError('Original loaded SG root census differs from full before cache membership')
    for root in selected:
        captured=mapped.get(root['ref'])
        if captured is None or captured['kind']!='fields' or captured['binding']['class']!=root['class']:
            raise ValueError('Selected original loaded SG root lacks full direct fields')
    if (kinds['fields']!=proof['field_objects'] or kinds['value']!=proof['value_objects']
            or dict(boundary)!=proof['boundary_class_counts']):
        raise ValueError('Original loaded SG field/value/boundary census differs')
    return dict(passed=True,scope='loaded registered SG before image only; no current/after diff or inverse',
        roots=proof['registered_sg_roots'],objects=len(rows),field_objects=kinds['fields'],
        value_objects=kinds['value'],collection_objects=kinds['collection'],boundary_class_counts=dict(boundary),
        full_model_transitive_closure=False,write_authorized=False,inverse_authorized=False)
