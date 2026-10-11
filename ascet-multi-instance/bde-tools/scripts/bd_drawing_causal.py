"""Validate original-order witnesses from a durably verified related inverse."""
import re

from bd_collection_merge import merge_order
from bd_edit_journal import JournalError


KEYS = {'profile', 'source_token', 'source_inverse_id', 'source_order', 'translated_order',
        'bindings', 'generation', 'component_oid', 'diagram'}


def validate(before, after, current, expected, witness, *, source_lookup, component_oid, generation):
    from bd_drawing_order_effects import parent_image, validate_preparation
    plan = merge_order(before['members'], after['members'], current['members'])
    if plan['compatible'] or {row['code'] for row in plan['conflicts']} != {'RESTORE_GAP_AMBIGUOUS'}:
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Causal evidence may only resolve an original drawing gap')
    if (type(witness) is not dict or set(witness) != KEYS
            or witness['profile'] != 'native_drawing_causal_witness_v1'
            or witness['component_oid'] != component_oid or type(generation) is not int
            or generation < 1 or type(witness['generation']) is not int or witness['generation'] != generation
            or witness['diagram'] != before['diagram'] or not callable(source_lookup)):
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Exact live and durable causal source binding required')
    for key in ('source_token', 'source_inverse_id'):
        if type(witness[key]) is not str or not re.fullmatch(r'edit_[0-9a-f]{64}', witness[key]):
            raise JournalError('DRAWING_EVIDENCE_INVALID', 'Exact durable causal identifiers required')
    if len({witness['source_token'], witness['source_inverse_id'], before['native_token']}) != 3:
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Separate source, verified inverse and target required')
    source, translated = witness['source_order'], witness['translated_order']
    parent_image(source)
    validate_preparation(translated, current, token=before['native_token'], diagram=before['diagram'])
    if source['native_token'] != witness['source_token'] or source['diagram'] != before['diagram']:
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Source image identity differs')
    pairs = witness['bindings']
    left, right = [source['parent'], source['collection'], *source['members']], [translated['parent'], translated['collection'], *translated['members']]
    if type(pairs) is not list or pairs != [[a, b] for a, b in zip(left, right)] or len(left) != len(right):
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Complete original native identity translation required')
    durable = source_lookup(witness)
    if (type(durable) is not dict or durable.get('source_order') != source or durable.get('generation') != generation
            or durable.get('component_oid') != component_oid or durable.get('diagram') != before['diagram']
            or not (durable.get('verified_released_inverse') is True or durable.get('verified_retained_inverse') is True)):
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Causal witness differs from the verified source journal')
    b, a, c, known = (value['members'] for value in (before, after, current, translated))
    b_set, a_set, c_set = set(b), set(a), set(c)
    restore = b_set - a_set
    desired = c_set | restore
    if (not a_set <= b_set or a != [ref for ref in b if ref not in restore]
            or not desired <= set(known)
            or [ref for ref in known if ref in b_set] != b
            or [ref for ref in known if ref in c_set] != c
            or expected['members'] != [ref for ref in known if ref in desired]):
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Original causal order cannot establish this current gap')
    return {'source_token': witness['source_token'], 'source_inverse_id': witness['source_inverse_id'],
            'known_members': len(known), 'restored_members': len(restore)}
