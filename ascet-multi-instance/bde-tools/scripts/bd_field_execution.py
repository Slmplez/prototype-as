"""Compact native execution evidence; JSON never recreates retained objects."""
import re
from bd_edit_journal import clone

OPERATIONS = frozenset(('set_literal', 'set_comment', 'move_node', 'set_edge_route', 'rewire_data'))
PROFILE = 'native_field_execution_v2'
NORMALIZED_PROFILE = 'native_field_execution_v3'
LEGACY_FIELDS = frozenset(('profile', 'native_token', 'operation', 'execution_sequence', 'direction', 'phase',
    'raw_patch', 'normalization', 'store_started', 'store_completed', 'terminal_verified',
    'serialized_source_verified', 'actual_material_retained', 'native_matches_terminal', 'source_matches_terminal'))
FIELDS = LEGACY_FIELDS | {'source_patch', 'source_root_preserved', 'source_transaction_id'}
LEGACY_FLAGS = ('store_started', 'store_completed', 'terminal_verified', 'serialized_source_verified',
                'actual_material_retained', 'native_matches_terminal', 'source_matches_terminal')
FLAGS = LEGACY_FLAGS + ('source_root_preserved',)


def progress(value, direction):
    keys = {'state', 'completed_cells', 'completed_primitives', 'cell_count', 'direction'}
    if (type(value) is not dict or set(value) != keys or value['direction'] != direction
            or value['state'] not in ('prepared', 'started', 'applied')
            or any(type(value[key]) is not int or not 0 <= value[key] <= 20000000
                   for key in ('completed_cells', 'completed_primitives', 'cell_count'))
            or value['completed_cells'] > value['cell_count']):
        raise ValueError('Invalid native field patch progress')
    if value['state'] == 'prepared' and (value['completed_cells'] or value['completed_primitives']):
        raise ValueError('Prepared native patch reports completed mutations')
    if value['state'] == 'applied' and value['completed_cells'] != value['cell_count']:
        raise ValueError('Native patch completion lacks all cells')


def validate(value, *, token, operation, direction, terminal=True):
    legacy = type(value) is dict and value.get('profile') == 'native_field_execution_v1'
    normalized = type(value) is dict and value.get('profile') == NORMALIZED_PROFILE
    fields, flags = (LEGACY_FIELDS, LEGACY_FLAGS) if legacy else (FIELDS, FLAGS)
    if (type(value) is not dict or set(value) != fields or value['profile'] != (
            'native_field_execution_v1' if legacy else NORMALIZED_PROFILE if normalized else PROFILE)
            or value['native_token'] != token or value['operation'] != operation or operation not in OPERATIONS
            or value['direction'] != direction or direction not in ('forward', 'undo', 'redo')
            or type(value['execution_sequence']) is not int or value['execution_sequence'] < 1
            or type(value['phase']) is not str or not 0 < len(value['phase']) <= 80
            or any(type(value[key]) is not bool for key in flags)):
        raise ValueError('Native field execution binding/shape differs')
    if direction == 'forward':
        if value['raw_patch'] is not None or value['normalization'] is not None:
            raise ValueError('Forward setter cannot claim raw inverse execution')
    else:
        progress(value['raw_patch'], direction)
        if value['normalization'] is not None:
            progress(value['normalization'], 'undo')
    if not legacy:
        transaction = value['source_transaction_id']
        if transaction is not None and (type(transaction) is not str or not re.fullmatch('source_[0-9a-f]{64}', transaction)):
            raise ValueError('Invalid guarded source transaction identity')
        if direction == 'forward':
            if transaction is not None or (not normalized and value['source_patch'] is not None):
                raise ValueError('Forward cannot claim source inverse/compensation')
            if normalized and value['source_patch'] is not None:
                progress(value['source_patch'], 'forward')
                if value['source_patch']['completed_primitives'] != value['source_patch']['completed_cells']:
                    raise ValueError('Forward normalization must count exact source primitives')
            if normalized and terminal and (value['source_patch'] is None or value['source_patch']['state'] != 'applied'):
                raise ValueError('Normalized forward lacks completed source identity proof')
        elif value['source_patch'] is not None:
            progress(value['source_patch'], direction)
            if value['source_patch']['completed_primitives'] != value['source_patch']['completed_cells']:
                raise ValueError('Source alias progress must count exact slot writes')
    if terminal and legacy and direction != 'forward':
        raise ValueError('Legacy inverse proof lacks exact source patch and bidirectional sharing evidence')
    if value['store_completed'] and not value['store_started']:
        raise ValueError('Store completion without preceding start')
    if terminal and (value['phase'] != 'terminal' or not all(value[key] for key in flags)
            or direction != 'forward' and (value['raw_patch']['state'] != 'applied'
                or value['normalization'] is None or value['normalization']['state'] != 'applied')):
        raise ValueError('Incomplete exact native field terminal proof; preserve quarantine')
    if terminal and not legacy and direction != 'forward' and (value['source_patch'] is None
            or value['source_patch']['state'] != 'applied'):
        raise ValueError('Incomplete exact source patch proof; preserve quarantine')
    return clone(value)


def observed(adapter, operation, token, direction):
    if operation not in OPERATIONS:
        return {}
    value = getattr(adapter, 'field_execution', None)
    if value is None and getattr(adapter, 'field_execution_required', False) is not True:
        return {}  # Offline adapters never acquire native execution evidence.
    return {'field_execution': validate(value, token=token, operation=operation, direction=direction)}
