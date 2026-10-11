"""Bind each topology inverse to its durable actual head and independent proofs."""
import re

from bd_edit_journal import JournalError, NativePreconditionConflict, clone, fingerprint
from bd_topology_head_snapshot import OPERATIONS, validate as validate_head
from bd_topology_inverse import plan, summary
from bd_parent_order_effects import validate_inverse, signature, postcondition, differences
import bd_drawing_order_effects as drawing
from bd_native_graphical_effects import validate_current, summary as graphical_summary
from bd_topology_execution import validate as validate_execution


def actual_head(events, *, source, token, owner, state, sequence):
    snapshots = [e['payload'] for e in events if e['kind'] == 'topology_head_retained']
    if len(snapshots) != 1:
        raise JournalError('REVERT_UNAVAILABLE', 'One durable complete actual topology head required')
    value = validate_head(snapshots[0], domain=source['domain'], token=token, owner=owner,
        state=state, operation=source['operation'], previous_owner=events[0]['payload']['reverts'])
    if source['diagram'] != 'Main' or value['sequence'] != sequence:
        raise JournalError('REVERT_UNAVAILABLE', 'Actual topology head sequence/scope differs from ancestry')
    return value


def candidate(context, current):
    value = plan(context['before'], context['after'], current, operation=context['source']['operation'])
    return value, summary(value, current)


def prepare(adapter, domain, context, current):
    """Zero setters; independently validate native typed and both order targets."""
    operation, token = context['source']['operation'], context['native_token']
    if operation not in getattr(adapter, 'managed_topology_operations', ()):
        raise JournalError('REVERT_UNAVAILABLE', 'Explicit native managed topology capability required')
    value, analysis = candidate(context, current)
    if not value['compatible']:
        raise NativePreconditionConflict('Actual topology patch conflicts with CURRENT')
    validated = adapter.validate_managed_topology_inverse(domain, token, context['head_change_id'],
        context['expected_state'], context['result_change_id'], operation)
    if validated != current or fingerprint(getattr(adapter, 'inverse_expected', None)) != fingerprint(value['expected']):
        raise NativePreconditionConflict('Native topology inverse differs from independent complete CURRENT/target')
    head = context['topology_head']
    parent_before, parent_expected = (clone(getattr(adapter, key, None))
        for key in ('parent_order_before', 'parent_order_expected'))
    validate_inverse([{'kind': 'parent_order', 'before': head['parent_before'], 'after': head['parent_after']}],
        parent_before, parent_expected, token=token, diagram='Main')
    drawing_before, drawing_expected = (clone(getattr(adapter, key, None))
        for key in ('drawing_order_before', 'drawing_order_expected'))
    drawing.validate_preparation(drawing_before, drawing_expected, token=token, diagram='Main',
        physical_before=parent_before, physical_expected=parent_expected)
    if getattr(adapter, 'drawing_order_witness', None) is not None:
        raise JournalError('DRAWING_EVIDENCE_INVALID', 'Managed topology must use its own actual drawing history')
    drawing.validate_inverse([{'kind': 'drawing_order', 'before': head['drawing_before'], 'after': head['drawing_after']}],
        drawing_before, drawing_expected, token=token, diagram='Main')
    graphical = clone(getattr(adapter, 'graphical_current', None))
    validate_current(graphical)
    binding = getattr(adapter, 'graphical_signature', None)
    if not isinstance(binding, str) or not re.fullmatch(re.escape(token) + r'/g[1-9][0-9]*', binding):
        raise JournalError('GRAPHICAL_EVIDENCE_INVALID', 'Managed topology graphical CURRENT binding required')
    return {'before': current, 'inverse_expected': value['expected'], 'inverse_analysis': analysis,
        'managed_inverse': {key: context[key] for key in
            ('native_token', 'head_change_id', 'expected_state', 'result_change_id')},
        'topology_head_sha256': fingerprint(head), 'topology_head_sequence': head['sequence'],
        'parent_order_before': parent_before, 'parent_order_expected': parent_expected,
        'parent_order_signature': signature(parent_before), 'drawing_order_before': drawing_before,
        'drawing_order_expected': drawing_expected, 'graphical_current': graphical, 'graphical_signature': binding}


def observed(adapter, context, prepared, after):
    proof = validate_execution(getattr(adapter, 'topology_execution', None),
        token=context['native_token'], operation=context['source']['operation'], head=context['head_change_id'],
        result_id=context['result_change_id'], state=context['expected_state'])
    if (proof['execution_sequence'] != context['topology_head']['sequence'] + 1
            or prepared['topology_head_sha256'] != fingerprint(context['topology_head'])
            or prepared['topology_head_sequence'] != context['topology_head']['sequence']
            or after != prepared['inverse_expected']):
        raise ValueError('Actual topology execution differs from its durable head or complete typed target')
    parents = clone(getattr(adapter, 'parent_order_effects', None))
    drawings = clone(getattr(adapter, 'drawing_order_effects', None))
    if (not postcondition(parents, prepared['parent_order_before'], prepared['parent_order_expected'])
            or not drawing.postcondition(drawings, prepared['drawing_order_before'], prepared['drawing_order_expected'])
            or getattr(adapter, 'graphical_current', None) != prepared['graphical_current']):
        raise ValueError('Actual topology physical/drawing/CURRENT evidence differs from durable preparation')
    actual = clone(getattr(adapter, 'graphical_actual', None))
    return {'after': after, 'library_effects': [], 'scope_effects': [], 'topology_execution': proof,
        'parent_order_effects': parents, 'parent_order_differences': differences(parents),
        'drawing_order_effects': drawings, 'drawing_order_differences': drawing.differences(drawings),
        'graphical_current': prepared['graphical_current'], 'graphical_actual': actual,
        'graphical_differences': graphical_summary(prepared['graphical_current'], actual)}
