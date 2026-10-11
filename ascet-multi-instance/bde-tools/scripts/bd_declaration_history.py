"""Validate bounded same-object variable declaration history, including real storage."""
import re

from bd_declaration_material import CONFIGS, schema
from bd_edit_journal import clone, fingerprint
from bd_native_graphical_effects import same_current, validate_actual_diff, summary as diff_summary


KEYS = frozenset(('profile current original expected current_schema original_schema expected_schema '
    'owner_ref created_model_ref created_model_oid expected_model_present '
    'same_original_objects_retained').split())


def slot(objects, fields, ref, name):
    row = objects.get(ref)
    if row is None or row['kind'] != 'fields' or name not in fields[ref]:
        raise ValueError('Complete original declaration slot required: ' + name)
    return row['value'][fields[ref].index(name)]


def reference(value, objects, native_class):
    if (type(value) is not dict or set(value) != {'ref', 'class'}
            or value['class'] != native_class or value['ref'] not in objects
            or objects[value['ref']]['class'] != native_class):
        raise ValueError('Exact original declaration reference required: ' + native_class)
    return value['ref']


def model_membership(objects, fields, owner, model):
    total = 0
    for name in ('primitiveVariables', 'complexVariables'):
        table = reference(slot(objects, fields, owner, name), objects, 'LookupTable')
        values = reference(slot(objects, fields, table, 'values'), objects, 'Array')
        keys = reference(slot(objects, fields, table, 'keys'), objects, 'Array')
        count = slot(objects, fields, table, 'elementCount')
        if (type(count) is not dict or set(count) != {'class', 'value'}
                or count['class'] != 'SmallInteger' or type(count['value']) is not str
                or not re.fullmatch(r'0|[1-9][0-9]*', count['value'])
                or len(objects[keys]['value']) != len(objects[values]['value'])
                or int(count['value']) > len(objects[values]['value'])):
            raise ValueError('Actual LookupTable count and storage arrays differ')
        total += sum(type(value) is dict and value.get('ref') == model
                     for value in objects[values]['value'])
    return total


def preparation(value, *, expected_present, model_oid=None, current_present=None):
    version2 = type(value) is dict and value.get('profile') == 'native_declaration_exact_target_v2'
    keys = KEYS | {'read_cache_evidence'} if version2 else KEYS
    return retained_preparation(value, expected_present=expected_present, model_oid=model_oid,
        current_present=current_present, keys=keys,
        profiles=('native_declaration_exact_target_v1', 'native_declaration_exact_target_v2'),
        cache_required=version2, type_guard=real_type)


def real_type(value, rows, names, model, role):
    definition = reference(slot(rows, names, model, 'sgClass'), rows, 'SGReal')
    if rows[definition]['kind'] != 'fields':
        raise ValueError('Original SGReal definition fields required')


def retained_preparation(value, *, expected_present, model_oid, current_present,
                         keys, profiles, cache_required, type_guard, owner_class='SGClass'):
    """Shared retained-image rules; each caller supplies its strict native type contract."""
    if (type(value) is not dict or set(value) != keys
            or value['profile'] not in profiles
            or value['same_original_objects_retained'] is not True
            or type(expected_present) is not bool or value['expected_model_present'] is not expected_present
            or type(value['created_model_oid']) is not str
            or not re.fullmatch(r'm_[0-9a-f]+', value['created_model_oid'])
            or (model_oid is not None and value['created_model_oid'] != model_oid)):
        raise ValueError('Exact same-object declaration target and model OID required')
    images = {}; fields = {}
    for role in ('current', 'original', 'expected'):
        images[role], fields[role] = schema(value[role], value[role + '_schema'])
    current, original, expected = (images[k] for k in ('current', 'original', 'expected'))
    if cache_required:
        from bd_declaration_cache import evidence
        evidence(value['read_cache_evidence'], current=value['current'],owner_class=owner_class)
    if not original.keys() <= current.keys():
        raise ValueError('Declaration history cannot manufacture missing original objects')
    desired = dict(profile='native_graphical_current_v1', complete=True,
                   objects=list({**current, **original}.values()))
    if not same_current(desired, value['expected']):
        raise ValueError('Complete declaration target must retain CURRENT plus original images')
    for role in ('original', 'expected'):
        if any(fields[role][ref] != fields['current'][ref] for ref in images[role]):
            raise ValueError('Original declaration field schema changed across retained images')
    owner, model = value['owner_ref'], value['created_model_ref']
    if (owner_class not in ('SGClass','SGModule') or owner not in original or original[owner]['class'] != owner_class
            or model not in current or current[model]['class'] != 'SGVariable'):
        raise ValueError('Original '+owner_class+' and retained SGVariable identities required')
    for role in ('current', 'expected'):
        rows, names = images[role], fields[role]
        if (sum(r['class'] == owner_class and r['kind'] == 'fields' for r in rows.values()) != 1
                or any(sum(r['class'] == cls and r['kind'] == 'fields' for r in rows.values()) != 1
                       for cls in CONFIGS)):
            raise ValueError('Complete bounded owner and four configuration roots required')
        slot(rows, names, owner, 'timeStamps')
        alias = reference(slot(rows, names, model, 'aliasName'), rows, 'ByteArray')
        data = rows[alias]['value']
        if (rows[alias]['kind'] != 'value' or type(data) is not list or not data
                or any(type(b) is not int or not 0 <= b <= 255 for b in data)
                or 'm_' + bytes(data).hex() != value['created_model_oid']):
            raise ValueError('Retained SGVariable alias bytes differ from actual factory model OID')
        type_guard(value, rows, names, model, role)
        present = (not expected_present if current_present is None else current_present) if role == 'current' else expected_present
        if type(present) is not bool:
            raise ValueError('Explicit declaration membership must be boolean')
        if model_membership(rows, names, owner, model) != int(present):
            raise ValueError('Exact declaration membership differs from requested history direction')
    return clone(value)


def reconstruct(current, actual):
    validate_actual_diff(current, actual)
    result=clone(current);rows={r['ref']:r for r in result['objects']}
    for row in actual['new_objects']:
        row=clone(row);result['objects'].append(row);rows[row['ref']]=row
    for delta in actual['changes']:
        row=rows[delta['object']]
        if row['kind']=='fields':row['value'][delta['index']-1]=clone(delta['after'])
        else:row['value']=clone(delta['after'])
    return result


def observed(value, prepared):
    if value.get('declaration_target_verified') is not True or value.get('created_model_original_retained') is not True:
        raise ValueError('Actual retained declaration target verification required')
    if not same_current(value['declaration_current'], prepared['current']):
        raise ValueError('Actual complete declaration CURRENT differs from preparation')
    current, _ = schema(value['declaration_current'], value['declaration_schema'])
    if value['declaration_schema'] != prepared['current_schema']:
        # Object table enumeration can differ; each actual field index must agree.
        _, actual_fields = schema(value['declaration_current'], value['declaration_schema'])
        _, expected_fields = schema(prepared['current'], prepared['current_schema'])
        if actual_fields != expected_fields:
            raise ValueError('Actual declaration schema differs from original preparation')
    result = reconstruct(value['declaration_current'], value['declaration_actual'])
    if not same_current(result, prepared['expected']):
        raise ValueError('Every actual declaration change must reconstruct the complete prepared target')
    return summary(value, prepared)


def summary(value, prepared=None):
    result = dict(profile='native_declaration_exact_actual_summary_v1',
        actual_diff=diff_summary(value['declaration_current'], value['declaration_actual']),
        schema_sha256=fingerprint(value['declaration_schema']),
        same_original_objects_retained=value['created_model_original_retained'],
        target_verified=value['declaration_target_verified'],
        detail_source='durable create_history_actual')
    if prepared is not None:
        result.update(owner_ref=prepared['owner_ref'], created_model_ref=prepared['created_model_ref'],
            created_model_oid=prepared['created_model_oid'], model_present=prepared['expected_model_present'])
    return result
