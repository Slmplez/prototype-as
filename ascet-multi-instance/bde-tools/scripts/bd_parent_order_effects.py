"""Durable complete parent rosters. Native tokens belong to one retained edit."""
import re

from bd_collection_merge import merge_order
from bd_edit_journal import JournalError, clone, fingerprint


OPERATIONS = ('disconnect_data', 'delete_node')
IMAGE_KEYS = {'profile', 'native_token', 'diagram', 'parent', 'collection', 'complete', 'members'}


def validate_image(image, *, token=None, diagram=None):
    if (type(image) is not dict or set(image) != IMAGE_KEYS
            or image['profile'] != 'native_parent_order_v1' or image['complete'] is not True
            or type(image['native_token']) is not str
            or not re.fullmatch(r'edit_[0-9a-f]{64}', image['native_token'])
            or type(image['diagram']) is not str or not image['diagram']
            or len(image['diagram']) > 4096):
        raise JournalError('ORDER_EVIDENCE_INVALID', 'Complete scope-bound native parent image required')
    refs = [image['parent'], image['collection']]
    members = image['members']
    if (type(members) is not list or len(members) > 100000
            or any(type(ref) is not str or not re.fullmatch(r'o[1-9][0-9]*', ref)
                   for ref in refs + members)
            or len(set(refs + members)) != len(refs + members)
            or token is not None and image['native_token'] != token
            or diagram is not None and image['diagram'] != diagram):
        raise JournalError('ORDER_EVIDENCE_INVALID', 'Exact unique native parent/member tokens required')
    return image


def signature(image):
    validate_image(image)
    return ','.join([image['native_token'], image['parent'], image['collection'], *image['members']])


def same_binding(left, right):
    validate_image(left)
    validate_image(right)
    return all(left[key] == right[key] for key in IMAGE_KEYS - {'members'})


def validate_preparation(before, expected, *, token, diagram):
    validate_image(before, token=token, diagram=diagram)
    validate_image(expected, token=token, diagram=diagram)
    if not same_binding(before, expected):
        raise JournalError('ORDER_EVIDENCE_INVALID', 'Parent collection/native record binding differs')


def validate_inverse(original_effects, current, expected, *, token, diagram):
    if type(original_effects) is not list or len(original_effects) != 1:
        raise JournalError('ORDER_EVIDENCE_INVALID', 'One actual original parent effect required')
    original = original_effects[0]
    if type(original) is not dict or set(original) != {'kind', 'before', 'after'} or original['kind'] != 'parent_order':
        raise JournalError('ORDER_EVIDENCE_INVALID', 'Actual parent order effect required')
    validate_preparation(current, expected, token=token, diagram=diagram)
    validate_preparation(original['before'], original['after'], token=token, diagram=diagram)
    if not same_binding(original['after'], current):
        raise JournalError('ORDER_EVIDENCE_INVALID', 'CURRENT belongs to another native parent collection')
    plan = merge_order(original['before']['members'], original['after']['members'], current['members'])
    if not plan['compatible'] or fingerprint(plan['merged']) != fingerprint(expected['members']):
        raise JournalError('ORDER_EVIDENCE_INVALID', 'Native inverse disagrees with three-way order analysis')


def postcondition(effects, before, expected):
    if before is None and expected is None:
        return effects == []
    try:
        validate_preparation(before, expected, token=before['native_token'], diagram=before['diagram'])
    except (JournalError, KeyError, TypeError):
        return False
    return fingerprint(effects) == fingerprint([{'kind': 'parent_order', 'before': before, 'after': expected}])


def differences(effects):
    changes = []
    for effect in effects:
        if type(effect) is not dict or set(effect) != {'kind', 'before', 'after'} or effect['kind'] != 'parent_order':
            raise JournalError('ORDER_EVIDENCE_INVALID', 'Actual parent order effect required')
        before, after = effect['before'], effect['after']
        if not same_binding(before, after):
            raise JournalError('ORDER_EVIDENCE_INVALID', 'Actual parent effect changed its native binding')
        if before['members'] != after['members']:
            left, right = before['members'], after['members']
            left_set, right_set = set(left), set(right)
            old_common = [key for key in left if key in right_set]
            new_common = [key for key in right if key in left_set]
            changes.append({'kind': 'parent_order', 'diagram': before['diagram'],
                'native_token': before['native_token'], 'parent': before['parent'], 'collection': before['collection'],
                'before_count': len(left), 'after_count': len(right),
                'before_sha256': fingerprint(before), 'after_sha256': fingerprint(after),
                'removed': [{'native_ref': key, 'index': index} for index, key in enumerate(left) if key not in right_set],
                'added': [{'native_ref': key, 'index': index} for index, key in enumerate(right) if key not in left_set],
                'reordered': None if old_common == new_common else {'before': old_common, 'after': new_common}})
    return changes


def validate_probe(receipt):
    modes = {'exact', 'independent_addition', 'independent_deletion',
             'stale_current', 'changed_ids', 'changed_ids_binding'}
    if (type(receipt) is not dict or receipt.get('profile') != 'native_parent_order_evidence_probe_v1'
            or type(receipt.get('model_setters_called')) is not int or receipt['model_setters_called'] != 0
            or receipt.get('production_dispatch') is not False or receipt.get('complete_acceptance') is not False
            or any(receipt.get(key) is not True for key in
                   ('dispatcher_compiled', 'dispatcher_bound', 'recovery_reader_compiled'))
            or type(receipt.get('cases')) is not list or len(receipt['cases']) != len(modes)):
        raise ValueError('Complete private parent evidence study and compiler checks required')
    seen = set()
    for row in receipt['cases']:
        mode = row.get('scenario')
        if mode not in modes or mode in seen or row.get('private_reset') is not True:
            raise ValueError('Exact private scenario/reset required')
        seen.add(mode)
        before, after, current, expected, actual = (row[key] for key in ('before', 'applied', 'current', 'expected', 'actual'))
        validate_preparation(before, after, token=before['native_token'], diagram=before['diagram'])
        removed = set(before['members']) - set(after['members'])
        if len(removed) != 1 or after['members'] != [key for key in before['members'] if key not in removed]:
            raise ValueError('Exact one-member private deletion patch required')
        validate_inverse([{'kind': 'parent_order', 'before': before, 'after': after}],
            current, expected, token=before['native_token'], diagram=before['diagram'])
        if fingerprint(actual) != fingerprint(expected) or row.get('signature') != signature(current):
            raise ValueError('Actual private roster or prepared CURRENT signature differs')
        if row.get('stale_refused') is not mode.startswith(('stale_', 'changed_')):
            raise ValueError('Native stale identity/CURRENT guard was not exercised')
        if mode == 'independent_addition' and not set(current['members']) - set(before['members']):
            raise ValueError('Independent member addition was not exercised')
        if mode == 'independent_deletion' and not set(after['members']) - set(current['members']):
            raise ValueError('Independent member deletion was not exercised')
        if mode not in ('independent_addition', 'independent_deletion') and current != after:
            raise ValueError('Exact baseline CURRENT required for stale guard scenarios')
    endpoint_modes = {'exact', 'pin_parent_changed', 'point_owner_changed', 'map_rebound',
                      'input_occupied', 'owner_detached', 'incident_ghost'}
    endpoints = receipt.get('endpoint_cases')
    if type(endpoints) is not list or len(endpoints) != len(endpoint_modes):
        raise ValueError('Complete native endpoint dependency study required')
    checked = set()
    for row in endpoints:
        mode = row.get('scenario')
        if (mode not in endpoint_modes or mode in checked or row.get('accepted') is not (mode == 'exact')
                or row.get('private_reset') is not True or row.get('input_endpoint_checked') is not True):
            raise ValueError('Exact original endpoint verdict and complete reset required')
        checked.add(mode)
    return {'cases': len(seen), 'prepared_refusals': 3, 'complete_private_resets': len(seen),
        'endpoint_cases': len(checked), 'endpoint_refusals': len(checked) - 1,
        'scope': 'parent identity/order evidence on PRIVATE copies only',
        'production_dispatch': False, 'complete_acceptance': False}
