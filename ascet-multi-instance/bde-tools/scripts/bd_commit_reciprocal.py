"""Validate original reciprocal reference captures; no current read or write authority.

This is a structural and membership check of retained evidence. Epoch and
same-dispatch provenance still depend on the surrounding fixed native protocol.
The capture covers original outgoing targets only, not future added targets.
"""
from copy import deepcopy

from bd_commit_reference_write_set import plan, check_inbound
from bd_persistent_references import decode


SUMMARY_PROFILE = 'native_original_reciprocal_capture_v1'
CAPTURE_PROFILE = 'native_original_reciprocal_records_v1'
_SUMMARY_KEYS = set(('profile phase component_oid generation outgoing_entry_count target_count '
    'record_count logical_bytes raw_bytes original_material_held same_native_dispatch '
    'reciprocal_consistent new_outgoing_targets_captured write_authorized inverse_authorized').split())
_CAPTURE_KEYS = {'profile', 'component_oid', 'generation', 'owner_key', 'outgoing_record', 'records', 'summary'}


def _binding(component_oid, generation):
    if (not isinstance(component_oid, str) or not component_oid
            or type(generation) is not int or not 1 <= generation <= 2147483647):
        raise ValueError('Exact reciprocal capture component and positive generation required')


def validate_summary(value, component_oid, generation):
    """Return a detached strictly bound summary for original before records only."""
    _binding(component_oid, generation)
    if (not isinstance(value, dict) or set(value) != _SUMMARY_KEYS
            or value['profile'] != SUMMARY_PROFILE or value['phase'] != 'captured'
            or value['component_oid'] != component_oid or value['generation'] != generation
            or type(value['generation']) is not int):
        raise ValueError('Complete original reciprocal capture summary required')
    for field in ('outgoing_entry_count', 'target_count', 'record_count'):
        if type(value[field]) is not int or not 0 <= value[field] <= 4096:
            raise ValueError('Exact bounded original reciprocal target census required')
    if (value['record_count'] != value['target_count']
            or value['target_count'] > value['outgoing_entry_count']
            or (value['target_count'] == 0) != (value['outgoing_entry_count'] == 0)):
        raise ValueError('Original reciprocal entry, unique-target and record counts disagree')
    for field in ('logical_bytes', 'raw_bytes'):
        if type(value[field]) is not int or not 0 <= value[field] <= 16777216:
            raise ValueError('Exact bounded original reciprocal byte census required')
    if (value['raw_bytes'] < value['logical_bytes']
            or (value['record_count'] == 0 and (value['logical_bytes'] != 0 or value['raw_bytes'] != 0))):
        raise ValueError('Original reciprocal semantic/raw byte census disagrees')
    for field in ('original_material_held', 'same_native_dispatch', 'reciprocal_consistent'):
        if value[field] is not True:
            raise ValueError('Complete consistent original same-dispatch reciprocal material required')
    for field in ('new_outgoing_targets_captured', 'write_authorized', 'inverse_authorized'):
        if value[field] is not False:
            raise ValueError('Original reciprocal capture cannot cover new targets or authorize writes')
    return deepcopy(value)


def _direct_image(value):
    if (not isinstance(value, dict) or set(value) != {'binding', 'field_names', 'fields'}
            or not isinstance(value['binding'], dict)):
        raise ValueError('Complete direct CTree before/after image required')
    binding, names, fields = value['binding'], value['field_names'], value['fields']
    if (set(binding) != {'class', 'kind', 'ref'} or binding['kind'] != 'boundary'
            or any(not isinstance(binding[key], str) or not binding[key] for key in ('class', 'ref'))):
        raise ValueError('Exact retained CTree direct identity required')
    if (not isinstance(names, list) or not 1 <= len(names) <= 512
            or any(not isinstance(name, str) or not name for name in names)
            or len(names) != len(set(names)) or not isinstance(fields, list) or len(fields) != len(names)):
        raise ValueError('Complete unique ordered direct CTree schema required')
    for index, (name, field) in enumerate(zip(names, fields), 1):
        if (not isinstance(field, dict) or set(field) != {'slot', 'name', 'value'}
                or type(field['slot']) is not int or field['slot'] != index or field['name'] != name
                or not isinstance(field['value'], dict)
                or not isinstance(field['value'].get('class'), str) or not field['value']['class']):
            raise ValueError('Complete typed ordered CTree field observation required')


def validate_capture(value):
    """Independently check the full capture and return its validated compact summary.

    Both outgoing and inbound records must use the complete v2 length profile.
    Incoming list order and duplicate entries are kept. One inbound record is
    required for every unique original outgoing target; no new targets are read.
    """
    if not isinstance(value, dict) or set(value) != _CAPTURE_KEYS or value['profile'] != CAPTURE_PROFILE:
        raise ValueError('Complete fixed original reciprocal record capture required')
    _binding(value['component_oid'], value['generation'])
    summary = validate_summary(value['summary'], value['component_oid'], value['generation'])
    outgoing = value['outgoing_record']
    records = value['records']
    if not isinstance(records, list) or len(records) > 4096:
        raise ValueError('Complete bounded original reciprocal records required')
    for row in [outgoing] + records:
        if not isinstance(row, dict) or row.get('length_profile') != 'reference_payload_v2':
            raise ValueError('New reciprocal capture requires complete v2 reference records')
        for phase in ('ctree_before', 'ctree_after'):
            if phase not in row:
                raise ValueError('Original reciprocal record lacks direct CTree read effects')
            _direct_image(row[phase])
    before = decode(outgoing, value['owner_key'])
    write_set = plan(value['owner_key'], outgoing, before['entries'])
    checked = check_inbound(write_set, records)
    if checked['patches']:
        raise ValueError('Original reciprocal consistency check cannot propose a membership change')
    expected = {
        'outgoing_entry_count': len(before['entries']),
        'target_count': len(write_set['reciprocal_targets']),
        'record_count': len(records),
        'logical_bytes': sum(row['logical_size'] for row in records),
        'raw_bytes': sum(row['allocated_size'] for row in records),
    }
    if any(summary[field] != number for field, number in expected.items()):
        raise ValueError('Original reciprocal summary differs from complete decoded records')
    return summary
