"""Independent drawing-order evidence, separate from physical parent membership."""
from bd_edit_journal import JournalError, fingerprint
from bd_parent_order_effects import (
    IMAGE_KEYS, validate_image as validate_parent, validate_preparation as validate_parent_preparation,
    validate_inverse as validate_parent_inverse, differences as parent_differences,
)


def parent_image(image):
    if (type(image) is not dict or set(image) != IMAGE_KEYS | {'numbers'}
            or image.get('profile') != 'native_drawing_order_v1'
            or type(image.get('numbers')) is not list or type(image.get('members')) is not list
            or len(image['numbers']) != len(image['members'])
            or any(type(number) is not int or number != index + 1 for index, number in enumerate(image['numbers']))):
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Complete normalized drawing order required')
    value = {key: item for key, item in image.items() if key != 'numbers'}
    value['profile'] = 'native_parent_order_v1'
    validate_parent(value)
    return value


def validate_preparation(before, expected, *, token, diagram, physical_before=None, physical_expected=None):
    left, right = parent_image(before), parent_image(expected)
    validate_parent_preparation(left, right, token=token, diagram=diagram)
    for drawing, physical in ((left, physical_before), (right, physical_expected)):
        if physical is not None:
            validate_parent_preparation(drawing, physical, token=token, diagram=diagram)
            if set(drawing['members']) != set(physical['members']):
                raise JournalError('DRAWING_EVIDENCE_INVALID', 'Drawing and physical rosters differ')


def _parent_effects(effects):
    if type(effects) is not list or len(effects) != 1:
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'One complete actual drawing effect required')
    value = effects[0]
    if type(value) is not dict or set(value) != {'kind', 'before', 'after'} or value['kind'] != 'drawing_order':
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Actual drawing effect required')
    return [{'kind': 'parent_order', 'before': parent_image(value['before']), 'after': parent_image(value['after'])}]


def validate_inverse(effects, current, expected, *, token, diagram, witness=None, source_lookup=None, component_oid=None, generation=None):
    original = _parent_effects(effects)
    left, right = parent_image(current), parent_image(expected)
    if witness is None:
        validate_parent_inverse(original, left, right, token=token, diagram=diagram)
    else:
        validate_preparation(current, expected, token=token, diagram=diagram)
        validate_preparation(effects[0]['before'], effects[0]['after'], token=token, diagram=diagram)
        from bd_parent_order_effects import same_binding
        if not same_binding(original[0]['after'], left):
            raise JournalError('DRAWING_EVIDENCE_INVALID', 'Causal CURRENT parent differs')
        from bd_drawing_causal import validate
        validate(effects[0]['before'], effects[0]['after'], current, expected, witness,
                 source_lookup=source_lookup, component_oid=component_oid, generation=generation)


def postcondition(effects, before, expected):
    if before is None and expected is None:
        return effects == []
    try:
        validate_preparation(before, expected, token=before['native_token'], diagram=before['diagram'])
        _parent_effects(effects)
        return fingerprint(effects) == fingerprint([{'kind': 'drawing_order', 'before': before, 'after': expected}])
    except (JournalError, ValueError, KeyError, TypeError):
        return False


def differences(effects):
    if effects == []:
        return []
    result = parent_differences(_parent_effects(effects))
    for row in result:
        row['kind'] = 'drawing_order'
    return result


def recovery(preparation, original, native, *, token, diagram, original_effects=None, source_lookup=None, component_oid=None):
    fields = ('drawing_order_before', 'drawing_order_expected')
    required = any(key in preparation or key in original for key in fields)
    present = any(key.startswith('drawing_order_') or key == 'current_drawing_order_matches_terminal'
                  for key in native)
    if not required and not present:
        return {}
    if not required or not present or any(key not in preparation or key not in original for key in fields):
        raise JournalError('RECOVERY_UNRESOLVED', 'Native and durable drawing evidence presence differs')
    validate_preparation(*(original[key] for key in fields), token=token, diagram=diagram,
        physical_before=original.get('parent_order_before'), physical_expected=original.get('parent_order_expected'))
    before, expected = (preparation.get(key) for key in fields)
    validate_preparation(before, expected, token=token, diagram=diagram,
        physical_before=preparation.get('parent_order_before'), physical_expected=preparation.get('parent_order_expected'))
    effects = native.get('drawing_order_effects')
    if (native.get('current_drawing_order_matches_terminal') is not True
            or native.get('drawing_order_original') != original.get('drawing_order_before')
            or native.get('drawing_order_started') != before or native.get('drawing_order_current') != expected
            or not postcondition(effects, before, expected)):
        raise JournalError('RECOVERY_UNRESOLVED', 'Durable/actual/current drawing order differs')
    if original_effects is not None:
        if native.get('drawing_order_witness') != preparation.get('drawing_order_witness'):
            raise JournalError('RECOVERY_UNRESOLVED', 'Native/durable causal drawing witness differs')
        validate_inverse(original_effects, before, expected, token=token, diagram=diagram,
            witness=preparation.get('drawing_order_witness'), source_lookup=source_lookup,
            component_oid=component_oid, generation=preparation.get('before', {}).get('generation'))
    return {'drawing_order_effects': effects, 'drawing_order_differences': differences(effects)}


def released(preparation, original, observed, reconciled, *, token, diagram, original_effects=None, source_lookup=None, component_oid=None):
    fields = ('drawing_order_before', 'drawing_order_expected')
    required = (any(key in preparation or key in original for key in fields)
                or any(key.startswith('drawing_order_') for value in (observed, reconciled) for key in value)
                or bool(original_effects))
    if not required:
        return {}
    if any(key not in preparation or key not in original for key in fields):
        raise JournalError('RECOVERY_UNRESOLVED', 'Released original and CURRENT drawing evidence required')
    for value in (original, preparation):
        validate_preparation(*(value[key] for key in fields), token=token, diagram=diagram,
            physical_before=value.get('parent_order_before'), physical_expected=value.get('parent_order_expected'))
    before, expected = (preparation[key] for key in fields)
    effects = observed.get('drawing_order_effects', [])
    if not postcondition(effects, before, expected):
        raise JournalError('RECOVERY_UNRESOLVED', 'Released recovery lacks exact durable drawing evidence')
    actual_summary = differences(effects)
    if any(value.get('drawing_order_differences') != actual_summary for value in (observed, reconciled)):
        raise JournalError('RECOVERY_UNRESOLVED', 'Released drawing summary differs from actual evidence')
    if original_effects is not None:
        witness = preparation.get('drawing_order_witness')
        if witness is not None and any(value.get('drawing_order_witness_sha256') != fingerprint(witness) for value in (observed, reconciled)):
            raise JournalError('RECOVERY_UNRESOLVED', 'Released causal witness lacks matching durable actual binding')
        validate_inverse(original_effects, before, expected, token=token, diagram=diagram,
            witness=witness, source_lookup=source_lookup, component_oid=component_oid,
            generation=preparation.get('before', {}).get('generation'))
    return {'drawing_order_effects': effects, 'drawing_order_differences': actual_summary}
