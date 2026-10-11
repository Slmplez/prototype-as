"""Validate actual connect insertion ownership; exports never authorize writes."""
import re

from bd_edit_journal import JournalError, clone, fingerprint
from bd_parent_order_effects import validate_image, validate_preparation
from bd_native_graphical_effects import validate_current, validate_actual_diff
import bd_drawing_order_effects as drawing

PROFILE = 'native_connect_material_v1'
REFERENCE_PROFILE = 'native_connect_material_v2'
PERSISTENT_PROFILE = 'native_connect_material_v3'
OWNER_PROFILE = 'native_connect_material_v4'
KEYS = frozenset(('profile', 'native_token', 'component_oid', 'diagram', 'operation', 'phase',
    'source', 'target', 'parent_before', 'drawing_before', 'parent_after', 'drawing_after',
    'created_native_ref', 'graphical_before', 'graphical_actual', 'original_native_objects', 'original_source_objects',
    'actual_native_objects', 'actual_source_objects', 'endpoint_identity_verified',
    'source_root_preserved', 'full_current_verified', 'created_original_retained',
    'model_setters_called', 'store_called', 'write_authorized', 'managed_inverse_enabled'))


def validate(value, *, token, component_oid, source, target, phase):
    def invalid(message):
        raise JournalError('CONNECT_MATERIAL_INVALID', message)
    owners = type(value) is dict and value.get('profile') == OWNER_PROFILE
    persistent = type(value) is dict and value.get('profile') in (PERSISTENT_PROFILE, OWNER_PROFILE)
    references = type(value) is dict and value.get('profile') in (REFERENCE_PROFILE, PERSISTENT_PROFILE, OWNER_PROFILE)
    expected_keys = (KEYS | ({'module_references'} if references else set())
        | ({'module_persistent_references'} if persistent else set()) | ({'persistent_owner_records'} if owners else set()))
    if type(value) is not dict or set(value) != expected_keys:
        invalid('Exact native connect material receipt required')
    if (phase not in ('prepared', 'attached', 'detached')
            or not isinstance(token, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', token)
            or not isinstance(component_oid, str) or not component_oid
            or any(not isinstance(ref, str) or not re.fullmatch(r'p[0-9]+', ref) for ref in (source, target))
            or source == target):
        invalid('Exact distinct request pins and original identity required')
    expected = dict(profile=OWNER_PROFILE if owners else PERSISTENT_PROFILE if persistent else REFERENCE_PROFILE if references else PROFILE, native_token=token, component_oid=component_oid,
        diagram='Main', operation='connect_data', source=source, target=target, phase=phase)
    if (any(value[key] != item for key, item in expected.items())
            or any(value[key] is not True for key in ('endpoint_identity_verified', 'source_root_preserved'))
            or value['full_current_verified'] is not (phase != 'detached')
            or value['created_original_retained'] is not (phase != 'prepared')
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[key] is not False for key in ('store_called', 'write_authorized', 'managed_inverse_enabled'))
            or any(type(value[key]) is not int or not 0 < value[key] <= 20000000
                   for key in ('original_native_objects', 'original_source_objects'))):
        invalid('Connect ownership, phase or capture-only contract differs')
    try:
        if references:
            from bd_module_references import validate as validate_references
            validate_references(value['module_references'], token=token, component_oid=component_oid, phase=phase)
        if persistent:
            from bd_module_persistent_references import validate_receipt
            validate_receipt(value['module_persistent_references'], token=token, component_oid=component_oid,
                generation=value['module_references']['generation'], phase=phase)
        if owners:
            from bd_persistent_owner_records import validate_receipt as validate_owners
            validate_owners(value['persistent_owner_records'], token=token, component_oid=component_oid,
                generation=value['module_references']['generation'], phase=phase)
            for side in ('before', 'after'):
                snapshot = value['persistent_owner_records'][side]
                if snapshot is not None and snapshot['references'] != value['module_persistent_references'][side]:
                    invalid('Full owner and finite reference observations differ within the original material')
        validate_current(value['graphical_before'])
        validate_image(value['parent_before'], token=token, diagram='Main')
        drawing.validate_preparation(value['drawing_before'], value['drawing_before'], token=token,
            diagram='Main', physical_before=value['parent_before'], physical_expected=value['parent_before'])
        if phase == 'prepared':
            if any(value[key] is not None for key in ('parent_after', 'drawing_after',
                    'created_native_ref', 'graphical_actual', 'actual_native_objects', 'actual_source_objects')):
                invalid('Prepared connect cannot invent its future object or actual head')
        else:
            validate_actual_diff(value['graphical_before'], value['graphical_actual'])
            if any(type(value[key]) is not int or not 0 < value[key] <= 20000000
                   for key in ('actual_native_objects', 'actual_source_objects')):
                invalid('Actual native/source material counts required')
            validate_preparation(value['parent_before'], value['parent_after'], token=token, diagram='Main')
            drawing.validate_preparation(value['drawing_before'], value['drawing_after'], token=token,
                diagram='Main', physical_before=value['parent_before'], physical_expected=value['parent_after'])
            added = value['created_native_ref']
            if not isinstance(added, str) or not re.fullmatch(r'o[1-9][0-9]*', added):
                invalid('Actual retained created native identity required')
            for prefix in ('parent', 'drawing'):
                before, after = (value[prefix + '_' + when]['members'] for when in ('before', 'after'))
                if (added in before or after.count(added) != 1 or len(after) != len(before) + 1
                        or [ref for ref in after if ref != added] != before):
                    invalid('Created original must solely explain complete physical/drawing insertion')
    except (ValueError, KeyError, TypeError) as error:
        invalid(str(error))
    return clone(value)


def summary(value):
    return {key: value[key] for key in ('profile', 'native_token', 'phase', 'source', 'target',
        'created_native_ref', 'created_original_retained', 'full_current_verified')} | {
        'sha256': fingerprint(value), 'write_authorized': False, 'managed_inverse_enabled': False}
