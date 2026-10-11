"""Binding and terminal proof for actual managed topology; never recreates objects."""
from bd_edit_journal import clone

PROFILE = 'native_topology_execution_v1'
OPERATIONS = frozenset(('disconnect_data', 'delete_node'))
FLAGS = ('store_started', 'store_completed', 'terminal_verified', 'native_matches_terminal',
    'source_matches_terminal', 'source_root_preserved', 'endpoint_verified', 'parent_order_verified',
    'drawing_order_verified', 'actual_material_retained')
KEYS = frozenset(('profile', 'native_token', 'operation', 'head_change_id', 'result_change_id',
    'execution_sequence', 'expected_state', 'after_state', 'direction', 'phase', 'model_operations',
    'drawing_assignments', 'normalization', *FLAGS))


def validate(value, *, token, operation, head, result_id, state):
    if (type(value) is not dict or set(value) != KEYS or value['profile'] != PROFILE
            or value['native_token'] != token or value['operation'] != operation or operation not in OPERATIONS
            or value['head_change_id'] != head or value['result_change_id'] != result_id
            or len({token, head, result_id}) != 3 or state not in ('applied', 'reverted')
            or value['expected_state'] != state or value['after_state'] != ('applied' if state == 'reverted' else 'reverted')
            or value['direction'] != ('redo' if state == 'reverted' else 'undo')
            or type(value['execution_sequence']) is not int or value['execution_sequence'] < 3
            or value['phase'] != 'terminal' or any(value[key] is not True for key in FLAGS)
            or any(type(value[key]) is not int or not 0 <= value[key] <= 20000000
                   for key in ('model_operations', 'drawing_assignments')) or value['model_operations'] == 0):
        raise ValueError('Exact completed actual managed topology execution required')
    progress = value['normalization']
    if (type(progress) is not dict or set(progress) != {'state', 'native_primitives', 'source_primitives'}
            or progress['state'] != 'restored' or any(type(progress[key]) is not int or not 0 <= progress[key] <= 20000000
                for key in ('native_primitives', 'source_primitives'))):
        raise ValueError('Complete actual native/source topology normalization required')
    return clone(value)
