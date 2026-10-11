"""Exact original variable body closure, bound to original and latest actual WALs."""
from bd_declaration_cache import bind_images, evidence
from bd_declaration_history import preparation as target, observed as actual_target, schema
from bd_edit_journal import clone, fingerprint
from bd_native_graphical_effects import same_current, validate_current, _same_image


KEYS = {'profile', 'target', 'original_before_binding'}
BINDING_KEYS = {'profile', 'previous_recorded', 'previous_schema', 'recorded',
                'recorded_schema', 'namespace_bindings'}


def preparation(value, *, previous=None, original=None, model_oid=None):
    if type(value) is not dict or set(value) != KEYS or value['profile'] != 'native_declaration_finalize_target_v1':
        raise ValueError('Complete original declaration finalization target required')
    p = target(value['target'], expected_present=False, current_present=False, model_oid=model_oid)
    if p['profile'] != 'native_declaration_exact_target_v2':
        raise ValueError('Finalization requires exact current cache evidence')
    evidence(p['read_cache_evidence'], previous=previous, current=p['current'])
    bound = value['original_before_binding']
    if type(bound) is not dict or set(bound) != BINDING_KEYS or bound['profile'] != 'native_declaration_image_binding_v1':
        raise ValueError('Complete original-before namespace binding required')
    bind_images(bound, previous=original)
    if not same_current(bound['recorded'], p['original']):
        raise ValueError('Final target must contain the complete original-before body')
    if schema(bound['recorded'], bound['recorded_schema'])[1] != schema(p['original'], p['original_schema'])[1]:
        raise ValueError('Complete original-before declaration schema differs')
    return clone(value)


def observed(value, prepared):
    if value.get('original_declaration_verified') is not True:
        raise ValueError('Actual initial declaration baseline was not restored')
    result = actual_target(value, prepared['target'])
    result['detail_source'] = 'durable create_finalize_actual'
    result['original_before_namespace_bound'] = True
    return result


def primitive_count(current, expected):
    """Count native cell/splice writes from full targets, not changed-object rows."""
    before, after = validate_current(current), validate_current(expected)
    if before.keys()!=after.keys():
        raise ValueError('Original declaration closure cannot introduce or drop objects')
    count=0
    for ref,row in before.items():
        target=after[ref]
        if (row['class'],row['kind'])!=(target['class'],target['kind']):
            raise ValueError('Declaration native patch class/kind changed')
        left,right=row['value'],target['value']
        if _same_image(row,left,right):continue
        if row['kind']=='fields' or (row['kind']=='collection' and row['class']=='Array') or row['kind']=='value':
            if len(left)!=len(right):raise ValueError('Original fixed native storage size changed')
            count+=sum(a!=b for a,b in zip(left,right))
        elif row['kind']=='collection' and row['class']=='OrderedCollection':
            desired,actual=([fingerprint(v) for v in order] for order in (right,left))
            if len(set(desired))!=len(desired) or len(set(actual))!=len(actual):
                raise ValueError('Native declaration field order is ambiguous')
            wanted=set(desired);removed=[v for v in actual if v not in wanted]
            count+=len(removed);copied=[v for v in actual if v in wanted]
            for index,ref in enumerate(desired):
                if index<len(copied) and copied[index]==ref:continue
                if ref in copied:copied.remove(ref);count+=1
                copied.insert(index,ref);count+=1
            if copied!=desired:raise ValueError('Complete native declaration order cannot reconstruct target')
        elif row['kind']=='collection' and row['class'] in ('Dictionary','IdentityDictionary'):
            a={fingerprint(k):v for k,v in left};b={fingerprint(k):v for k,v in right};absent=object()
            count+=sum(a.get(k,absent)!=b.get(k,absent) for k in a.keys()|b.keys())
        elif row['kind']=='collection' and row['class'] in ('Set','IdentitySet'):
            count+=len(set(map(fingerprint,left))^set(map(fingerprint,right)))
        else:raise ValueError('Unsupported declaration primitive storage')
    return count
