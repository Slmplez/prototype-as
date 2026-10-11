"""Recompute original-target inbound changes; never infer new-target before data."""
from copy import deepcopy
import re

from bd_commit_reciprocal import validate_capture, _direct_image
from bd_persistent_references import decode, _bytes
from bd_commit_resource_diff import _change, _compare_image


SUMMARY_KEYS = set(('profile component_oid generation target_count record_count actual_change_count '
    'logical_records_match_retained raw_records_match_retained original_targets_only '
    'original_material_held new_outgoing_targets_captured write_authorized inverse_authorized').split())
REPORT_KEYS = set(('profile component_oid generation owner_key phase records actual_changes summary '
    'resource_check_index').split())


def validate_summary(value, component_oid, generation, target_count, actual_changes):
    if not isinstance(actual_changes, list) or len(actual_changes) > 4096:
        raise ValueError('Complete bounded current reciprocal changes required')
    for row in actual_changes:
        if (not isinstance(row, dict) or set(row) != {'category', 'locus', 'field', 'before', 'after'}
                or not isinstance(row['locus'], str) or not isinstance(row['field'], str) or not row['field']
                or row['before'] == row['after']):
            raise ValueError('Complete actual reciprocal changed location/value required')
        match = re.fullmatch(r'(reciprocal_record|ctree_reciprocal)/([1-9][0-9]*)', row['locus'])
        if (match is None or type(target_count) is not int or not 1 <= int(match[2]) <= target_count
                or row['category'] != ('since_preparation' if match[1] == 'reciprocal_record' else 'query_read_effect')
                or (match[1] == 'reciprocal_record' and row['field'] not in ('$logical_bytes', '$unparsed_record_tail'))):
            raise ValueError('Current reciprocal change lies outside the original target scope')
    if (not isinstance(value, dict) or set(value) != SUMMARY_KEYS
            or value['profile'] != 'native_reciprocal_status_v1'
            or not isinstance(component_oid, str) or not component_oid
            or type(generation) is not int or generation < 1
            or type(target_count) is not int or not 0 <= target_count <= 4096
            or value['component_oid'] != component_oid or value['generation'] != generation
            or type(value['generation']) is not int):
        raise ValueError('Exact current reciprocal summary and original namespace required')
    for key, expected in (('target_count', target_count), ('record_count', target_count),
                          ('actual_change_count', len(actual_changes))):
        if type(value[key]) is not int or value[key] != expected:
            raise ValueError('Complete current reciprocal target/change census differs')
    for key in ('logical_records_match_retained', 'raw_records_match_retained'):
        if type(value[key]) is not bool:
            raise ValueError('Explicit current reciprocal equality required')
    logical_equal = not any(row['locus'].startswith('reciprocal_record/') and row['field'] == '$logical_bytes'
                            for row in actual_changes)
    raw_equal = not any(row['locus'].startswith('reciprocal_record/') for row in actual_changes)
    if value['logical_records_match_retained'] is not logical_equal or value['raw_records_match_retained'] is not raw_equal:
        raise ValueError('Current reciprocal equality disagrees with complete changed locations')
    for key in ('original_targets_only', 'original_material_held'):
        if value[key] is not True:
            raise ValueError('Current reciprocal comparison must retain original-target scope')
    for key in ('new_outgoing_targets_captured', 'write_authorized', 'inverse_authorized'):
        if value[key] is not False:
            raise ValueError('Current reciprocal read cannot claim new targets or authorize writes')
    return deepcopy(value)


def delta(original_capture, current_report):
    proof = validate_capture(original_capture)
    report = current_report
    if isinstance(report, dict):
        _bytes(report.get('owner_key'), 'current reciprocal owner key', owner=True)
    if (not isinstance(report, dict) or set(report) != REPORT_KEYS
            or report['profile'] != 'native_current_reciprocal_records_v1'
            or report['component_oid'] != original_capture['component_oid']
            or type(report['generation']) is not int or report['generation'] != original_capture['generation']
            or report['owner_key'] != original_capture['owner_key'] or report['phase'] != 'checked'
            or type(report['resource_check_index']) is not int or not 1 <= report['resource_check_index'] <= 32
            or not isinstance(report['records'], list) or len(report['records']) != proof['record_count']):
        raise ValueError('Complete paired current reciprocal records required')
    changes = []
    logical_equal = raw_equal = True
    for index, (old, row) in enumerate(zip(original_capture['records'], report['records']), 1):
        if (not isinstance(row, dict) or row.get('length_profile') != 'reference_payload_v2'
                or row.get('route') != 'referenceInterface'
                or row.get('leaf_class') != 'CTreeLocalVariableAttributeInterface'
                or row.get('file_class') != 'CTSpaceCheckingIFil'
                or row.get('role') != 'owner_referenced_by'):
            raise ValueError('Exact current original-target reference route required')
        a, b = decode(old, old['global_id']), decode(row, old['global_id'])
        for phase in ('ctree_before', 'ctree_after'):
            _direct_image(row[phase])
            if (row[phase]['binding'] != old['ctree_before']['binding']
                    or row[phase]['field_names'] != old['ctree_before']['field_names']):
                raise ValueError('Original reciprocal CTree identity/schema changed')
        locus = 'reciprocal_record/' + str(index)
        _change(changes, 'since_preparation', locus, '$logical_bytes', a['semantic_bytes'], b['semantic_bytes'])
        _change(changes, 'since_preparation', locus, '$unparsed_record_tail', a['tail_bytes'], b['tail_bytes'])
        _compare_image(changes, row['ctree_before'], row['ctree_after'], 'ctree_reciprocal/' + str(index), 'query_read_effect')
        logical_equal = logical_equal and a['semantic_bytes'] == b['semantic_bytes']
        raw_equal = raw_equal and old['allocated_bytes'] == row['allocated_bytes']
    summary = validate_summary(report['summary'], report['component_oid'], report['generation'], proof['target_count'], changes)
    if (summary['logical_records_match_retained'] is not logical_equal
            or summary['raw_records_match_retained'] is not raw_equal
            or report['actual_changes'] != changes):
        raise ValueError('Current reciprocal summary/delta differs from complete original/current bytes')
    return changes


def recompute(audit, resource_check_index):
    if (type(resource_check_index) is not int or not 1 <= resource_check_index <= len(audit['checks'])
            or audit.get('current_reciprocal_records_checked') is not True):
        raise ValueError('Exact completed current reciprocal/resource query required')
    original = audit['original_reciprocal_capture']
    _bytes(audit['original_capture']['owner_key'], 'original resource owner key', owner=True)
    from bd_commit_resources import validate
    validate(audit['prepared_receipt'], token=audit['native_token'], component_oid=audit['component_oid'])
    if (type(audit['generation']) is not int or type(audit['original_capture']['generation']) is not int
            or audit['original_capture']['component_oid'] != audit['component_oid']
            or audit['original_capture']['generation'] != audit['generation']
            or original['component_oid'] != audit['component_oid'] or original['generation'] != audit['generation']
            or original['owner_key'] != audit['original_capture']['owner_key']
            or original['outgoing_record'] != audit['original_capture']['records'][1]
            or audit['prepared_receipt']['profile'] not in ('native_commit_prepare_v4', 'native_commit_prepare_v5', 'native_commit_prepare_v6')
            or audit['prepared_receipt']['native_token'] != audit['native_token']
            or validate_capture(original) != audit['prepared_receipt']['reciprocal_references']):
        raise ValueError('Original reciprocal material is not bound to this prepared resource capture')
    reports = audit['reciprocal_checks']
    if not isinstance(reports, list) or not 1 <= len(reports) <= 32:
        raise ValueError('Complete current reciprocal query evidence required')
    indexes = []
    for report in reports:
        if not isinstance(report, dict):
            raise ValueError('Retained reciprocal query report required')
        if report.get('phase') == 'checked':
            index = report.get('resource_check_index')
            if type(index) is not int or not 1 <= index <= len(audit['checks']):
                raise ValueError('Exact completed reciprocal check index required')
            indexes.append(index)
    if indexes != sorted(set(indexes)):
        raise ValueError('Reciprocal evidence duplicated or reordered across resource queries')
    current = reports[-1]
    if (current.get('phase') != 'checked' or current.get('resource_check_index') != resource_check_index
            or current.get('component_oid') != audit['component_oid']
            or current.get('generation') != audit['generation']):
        raise ValueError('Current reciprocal query mismatches complete resource check')
    return delta(original, current)
