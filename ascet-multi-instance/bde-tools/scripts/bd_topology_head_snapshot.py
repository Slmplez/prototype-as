"""Durable actual topology history; no snapshot can authorize native writes."""
import re

from bd_edit_journal import JournalError, clone, fingerprint
from bd_topology_inverse import plan
from bd_parent_order_effects import validate_preparation
import bd_drawing_order_effects as drawing

PROFILE = 'actual_topology_owned_snapshot_v1'
OPERATIONS = frozenset(('disconnect_data', 'delete_node'))
KEYS = frozenset(('profile', 'native_token', 'owner_change_id', 'previous_owner_change_id',
    'component_oid', 'diagram', 'operation', 'sequence', 'before_state', 'state', 'direction',
    'before', 'after', 'parent_before', 'parent_after', 'drawing_before', 'drawing_after',
    'before_endpoint_mode', 'after_endpoint_mode', 'native_source_material_retained',
    'model_setters_called', 'store_called', 'write_authorized', 'managed_inverse_enabled'))


def validate(value, *, domain, token, owner, state, operation, previous_owner=None):
    def invalid(message):
        raise JournalError('TOPOLOGY_HEAD_INVALID', message)
    if type(value) is not dict or set(value) != KEYS:
        invalid('Exact frozen actual topology head shape required')
    expected = dict(profile=PROFILE, native_token=token, owner_change_id=owner,
        component_oid=domain['oid'], diagram='Main', state=state, operation=operation)
    if (operation not in OPERATIONS or state not in ('applied', 'reverted')
            or any(value[key] != item for key, item in expected.items())
            or any(type(value[key]) is not str or not re.fullmatch(r'edit_[0-9a-f]{64}', value[key])
                   for key in ('native_token', 'owner_change_id', 'previous_owner_change_id'))
            or token == owner or value['previous_owner_change_id'] == owner
            or previous_owner is not None and value['previous_owner_change_id'] != previous_owner
            or type(value['sequence']) is not int or value['sequence'] < 2
            or value['before_state'] != ('applied' if state == 'reverted' else 'reverted')
            or value['direction'] != ('undo' if state == 'reverted' else 'forward')
            or value['before_endpoint_mode'] != ('detached' if state == 'reverted' else 'attached')
            or value['after_endpoint_mode'] != ('attached' if state == 'reverted' else 'detached')
            or value['native_source_material_retained'] is not True
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[key] is not False for key in ('store_called', 'write_authorized', 'managed_inverse_enabled'))):
        invalid('Frozen head identity, lineage, direction or read-only contract differs')
    if type(value['before']) is not dict or type(value['after']) is not dict:
        invalid('Both frozen actual observations must be graphs')
    for graph in (value['before'], value['after']):
        if (type(graph) is not dict or graph.get('diagram') != 'Main'
                or graph.get('diagram_kind') != 'block_diagram' or graph.get('targets') != []
                or type(graph.get('generation')) is not int
                or graph.get('generation') != value['after'].get('generation')):
            invalid('Frozen head must contain both complete actual Main observations')
    try:
        planned = plan(value['before'], value['after'], value['after'], operation=operation)
        if planned.get('compatible') is not True or planned['expected'] != value['before']:
            invalid('Frozen topology patch does not invert to its own actual before')
        validate_preparation(value['parent_before'], value['parent_after'], token=token, diagram='Main')
        drawing.validate_preparation(value['drawing_before'], value['drawing_after'], token=token,
            diagram='Main', physical_before=value['parent_before'], physical_expected=value['parent_after'])
        members_before, members_after = (set(value[key]['members']) for key in ('parent_before', 'parent_after'))
        if (not (members_before < members_after if state == 'reverted' else members_after < members_before)
                or operation == 'disconnect_data' and abs(len(members_after) - len(members_before)) != 1):
            invalid('Actual physical topology direction differs from its retained state')
    except (ValueError, KeyError, TypeError) as error:
        invalid(str(error))
    return clone(value)


def summary(value):
    """Do not send either complete graph or roster in every Agent receipt."""
    return {key: value[key] for key in ('profile', 'owner_change_id', 'sequence', 'state')} | {
        'sha256': fingerprint(value), 'complete_actual_head_saved': True,
        'managed_inverse_enabled': False}
