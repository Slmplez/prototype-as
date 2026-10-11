"""Pure recomputation of exported direct resource differences, without native calls.

This does not expand the capture's model/CTree coverage or grant inverse authority.
"""
from bd_edit_journal import clone


def _change(rows, category, locus, field, before, after):
    if before != after:
        rows.append(dict(category=category,locus=locus,field=field,before=clone(before),after=clone(after)))


def _image(value):
    if not isinstance(value,dict) or set(value)!={'binding','field_names','fields'}:
        raise ValueError('Complete original direct field image required')
    names=value['field_names'];fields=value['fields']
    if (not isinstance(names,list) or not isinstance(fields,list) or len(names)!=len(fields)
            or len(names)>512 or any(not isinstance(name,str) for name in names)
            or len(set(names))!=len(names)):
        raise ValueError('Complete exact direct field schema required')
    for i,(name,row) in enumerate(zip(names,fields),1):
        if not isinstance(name,str) or not isinstance(row,dict) or set(row)!={'slot','name','value'} or row['slot']!=i or row['name']!=name:
            raise ValueError('Exact ordered direct fields required')
    return value


def _compare_image(rows,left,right,locus,category):
    _image(left);_image(right)
    if left['binding']!=right['binding'] or left['field_names']!=right['field_names']:
        _change(rows,category,locus,'$identity_schema',left,right)
        return
    for a,b in zip(left['fields'],right['fields']):
        _change(rows,category,locus,a['name'],a['value'],b['value'])


def _entries(resource):
    rows=resource['cache_entries']
    if not isinstance(rows,list) or len(rows)!=resource['cache_size'] or len(rows)>4096:
        raise ValueError('Complete cache membership census required')
    mapped={}
    for row in rows:
        if not isinstance(row,dict) or set(row)!={'key_text','key','entry','image','registered_object'}:
            raise ValueError('Complete original cache member required')
        ref=row['entry'].get('ref')
        if not isinstance(ref,str) or ref in mapped or row['image']['binding']!=row['entry']:
            raise ValueError('Unique original cache entry identity required')
        mapped[ref]=row
    return mapped


def _compare_resources(rows,left,right,category):
    for role in ('owner','backend','cache'):
        _compare_image(rows,left[role],right[role],role,category)
    a,b=_entries(left),_entries(right)
    for ref in sorted(set(a)|set(b)):
        old,new=a.get(ref),b.get(ref);locus='cache_entry/'+ref
        if old is None or new is None:
            _change(rows,category,locus,'$membership',old,new)
        else:
            for field in ('key_text','key','registered_object'):
                _change(rows,category,locus,field,old[field],new[field])
            _compare_image(rows,old['image'],new['image'],locus,category)
    _change(rows,category,'modified_objects','$census',left['modified_objects'],right['modified_objects'])


def recompute(original,current):
    if original['action']!='capture' or current['action']!='check' or original['token']!=current['token']:
        raise ValueError('Exact retained original/current capture binding required')
    if original['generation']!=current['generation'] or original['component_oid']!=current['component_oid']:
        raise ValueError('Original capture namespace/owner rebound')
    if original['stopped_on_read_error'] or current['stopped_on_read_error']:
        raise ValueError('Read errors cannot supply complete resource diffs')
    changes=[]
    _compare_resources(changes,original['after_read'],current['before_read'],'since_preparation')
    _compare_resources(changes,current['before_read'],current['after_read'],'query_read_effect')
    saved,actual=original['records'],current['records']
    complete=current.get('record_comparison_profile')=='complete_reference_payload_v2'
    if 'record_comparison_profile' in current and not complete:
        raise ValueError('Unknown fixed record comparison profile')
    if complete and (current.get('profile')!='bde_commit_resource_capture_v2'
            or type(current.get('logical_records_match_retained')) is not bool
            or type(current.get('raw_records_match_retained')) is not bool):
        raise ValueError('Explicit complete record capture and typed equality flags required')
    retained=[]
    if len(saved)!=3 or len(actual)!=3:
        raise ValueError('Complete original/current logical record census required')
    for a,b in zip(saved,actual):
        if (a['role']!=b['role'] or a['query_key']!=b['query_key'] or a['record_class']!=b['record_class']
                or b['read_status']!='record' or a['read_status']!='record'):
            raise ValueError('Exact original logical record identity required')
        decoded=[]
        for report,row in ((original,a),(current,b)):
            data,allocated=row['bytes'],row['allocated_bytes']
            reference=(complete and row['role'] in ('owner_references','owner_referenced_by'))
            if reference and report is current and row.get('length_profile')!='reference_payload_v2':
                raise ValueError('Current reference record must use the complete semantic length profile')
            if (len(data)!=row['logical_size'] or len(allocated)!=row['allocated_size']
                    or (not reference and row['logical_size']!=row['fixed_size']+row['blob_size'])
                    or allocated[:len(data)]!=data):
                raise ValueError('Full logical/allocation byte prefixes required')
            if reference:
                from bd_persistent_references import decode
                decoded.append(decode(row,report['owner_key'])['semantic_bytes'])
            else:decoded.append(data)
        before_bytes,after_bytes=decoded
        retained.append(dict(role=a['role'],bytes=before_bytes))
        _change(changes,'since_preparation','logical_record/'+b['role'],'$logical_bytes',before_bytes,after_bytes)
        if complete:
            _change(changes,'since_preparation','raw_record/'+b['role'],'$unparsed_record_tail',
                a['allocated_bytes'][len(before_bytes):],b['allocated_bytes'][len(after_bytes):])
        _compare_image(changes,b['ctree_before'],b['ctree_after'],'ctree/'+b['role'],'query_read_effect')
    if complete:
        if retained!=current['retained_record_bytes']:
            raise ValueError('Native complete retained reference bytes differ from independent decoding')
        if current['logical_records_match_retained']!=all(row['bytes']==entry['bytes'] for row,entry in zip(actual,retained)):
            raise ValueError('Native complete reference equality differs')
        if current['raw_records_match_retained']!=all(a['allocated_bytes']==b['allocated_bytes'] for a,b in zip(saved,actual)):
            raise ValueError('Native complete raw record equality differs')
    return changes
