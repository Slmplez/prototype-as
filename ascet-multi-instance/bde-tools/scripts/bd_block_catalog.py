"""Offline ordinary BDE operation catalog. Declared routes are not live verdicts."""
from bd_class_creation import MODEL_TYPES as CLASS_INPUT_TYPES
from bd_structure_journal import CREATION_KINDS, MESSAGE_CREATORS, OPERATOR_INPUTS
from bd_structure_scope import CHILD_CREATION_KINDS, CHILD_OPERATIONS


CONTROLS = ('Break', 'IfThen', 'Case', 'While', 'Switch', 'IfThenElse', 'MUX')
FIELD_OPERATIONS = {
    'literal': ('set_literal',), 'comment': ('set_comment',),
    'variable': ('set_scalar_value',), 'parameter': ('set_scalar_value', 'set_formula', 'set_formula_binding'),
    'constant': ('set_scalar_value',), 'enumeration': ('set_scalar_value',),
    'array': ('set_array_values',), 'matrix': ('set_matrix_values',),
    'distribution': ('set_distribution_values',),
    'oned_table': ('set_table_values', 'set_table_axis', 'set_table_interpolation'),
    'twod_table': ('set_table_values', 'set_table_axis', 'set_table_interpolation'),
    'oned_table_fixed': ('set_table_values', 'set_table_interpolation'),
    'twod_table_fixed': ('set_table_values', 'set_table_interpolation'),
}
SELECTORS = {
    'variable': 'addVariable:', 'parameter': 'addParameter:', 'constant': 'addConstant:',
    'array': 'addArray:', 'matrix': 'addMatrix:', 'distribution': 'addDistribution:',
    'oned_table': 'addOneDTable:', 'twod_table': 'addTwoDTable:',
    'oned_table_fixed': 'addOneDTableFixed:', 'twod_table_fixed': 'addTwoDTableFixed:',
    'oned_table_group': 'addOneDTableGroup:xDistribution:',
    'twod_table_group': 'addTwoDTableGroup:xDistribution:yDistribution:',
    'receive_message': 'addReceiveMessage:', 'send_message': 'addSendMessage:',
    'send_receive_message': 'addSendReceiveMessage:', 'resource': 'addResource:',
    'delta_t': 'addDeltaT', 'implementation_cast': 'addImplementationCast:',
    'enumeration': 'addLibItem:forName:', 'component': 'addLibItem:forName:',
    'existing_model': 'place:location:hierarchy:', 'literal': 'placeLiteralString:location:hierarchy:',
    'comment': 'placeComment:location:hierarchy:',
    'operator': 'placeOperator:location:hierarchy:numOfArgs:',
    'control': 'placeControl:location:hierarchy:numOfArgs:',
    'hierarchy': 'placeHierarchy:location:hierarchy:inputPins:outputPins:',
}


def creation_contract(kind):
    fields = {'required': ['op', 'kind', 'name', 'position'], 'optional': []}
    if kind in ('variable', 'parameter', 'constant'):
        fields.update(optional=['model_type', 'initial_value'], model_types=['cont', 'sdisc', 'udisc', 'log'])
    elif kind in ('array', 'matrix', 'distribution', 'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed'):
        fields.update(optional=['model_type', 'max_size'], model_types=['cont', 'sdisc', 'udisc'] +
            (['log'] if kind in ('array', 'matrix', 'distribution') else []),
            max_size='[X,Y], each 1..16' if kind in ('matrix', 'twod_table', 'twod_table_fixed') else '1..256')
    elif kind in MESSAGE_CREATORS:
        fields.update(optional=['model_type', 'definition', 'message_scope'],
            model_types=['cont', 'sdisc', 'udisc', 'log', 'enum'], message_scope=['local', 'imported', 'exported'],
            conditions=['enum requires existing definition path; other types prohibit definition',
                        'initial values and channel edits unavailable'])
    elif kind == 'enumeration':
        fields.update(optional=['definition', 'new_definition', 'initial_value'],
            conditions=['exactly one existing definition path or new_definition with ordered unique items',
                        'inverse of new_definition checks actual library identity and later references'])
    elif kind == 'component':
        fields['required'].append('definition')
        fields['conditions'] = ['instantiate an existing definition; creating a new Class definition is unavailable']
    elif kind in ('oned_table_group', 'twod_table_group'):
        fields['required'].append('x_distribution')
        if kind == 'twod_table_group': fields['required'].append('y_distribution')
        fields['conditions'] = ['exact Main/m_ distribution refs from the same observation']
    elif kind == 'operator':
        fields.update(optional=['arity'], names=dict(OPERATOR_INPUTS),
            conditions=['integer fixed input count, or 2..16 where count is null',
                        'limit/wraparound use audited native conversion factories'])
    elif kind == 'control':
        fields.update(optional=['arity'], names=list(CONTROLS), arity='2..16')
    elif kind == 'hierarchy':
        fields.update(optional=['inputs', 'outputs'], conditions=['0..16 unique port names per side; unique across both sides'])
    elif kind == 'delta_t': fields['reserved_name'] = 'dT'
    elif kind == 'existing_model': fields['conditions'] = ['name selects one existing declaration in the complete scope; no new declaration']
    return fields


def row(kind, owner_kind, diagram_scope, *, detail=False):
    reasons = []
    if diagram_scope == 'child' and kind not in CHILD_CREATION_KINDS:
        reasons.append('child_creation_route_missing')
    if kind in (*MESSAGE_CREATORS, 'resource') and owner_kind != 'module':
        reasons.append('module_owner_required' if owner_kind == 'class' else 'owner_kind_not_specified')
    fields = list(FIELD_OPERATIONS.get(kind, ()))
    if diagram_scope == 'child': fields = [op for op in fields if op in CHILD_OPERATIONS]
    # Hierarchy containers/boundaries are explicitly refused by plan(); ports have their own operations.
    occurrence_ops = [] if kind == 'hierarchy' else ['move_node', 'delete_node']
    wire_ops = [] if kind == 'comment' else ['connect_data', 'disconnect_data', 'rewire_data', 'set_edge_route']
    value = {'kind': kind, 'creation_route': 'unavailable_in_context' if reasons else 'declared_isolated_route',
        'creation_reasons': reasons, 'field_operations': fields,
        'occurrence_operations': occurrence_ops, 'connection_operations': wire_ops,
        'complete_function_acceptance': 'not_certified'}
    if detail:
        value.update(creation=creation_contract(kind), native_selector=SELECTORS[kind],
            read={'view': 'structure', 'identity': 'snapshot-scoped node/model/pin/edge refs; declaration and occurrence differ'},
            conditions=['complete selected scope required for creation',
                        'field operations require their own type/configuration/dependency preconditions',
                        'connection operations require exact existing data pins/edges in one scope; missing pins are not inferred',
                        'ordinary occurrence deletion preserves shared declarations',
                        'all writes require sandbox opt-in and fresh native preview/apply guards'],
            diff={'tool': 'bd_diff', 'selector': 'change_id', 'capture': 'actual local before/after; query offline'},
            presentation={'tool': 'bd_diff', 'options': ['show', 'clear'], 'status': 'conditional glyph/scope support; full lifecycle acceptance pending'},
            inverse={'tool': 'bd_revert', 'policy': 'recorded actual patch and same epoch native material; fresh conflicts checked',
                     'status': 'conditional per operation; global acceptance pending'},
            unavailable=['resize_node', 'rename_declaration', 'delete_shared_declaration'])
        if kind == 'hierarchy': value['interface_operations'] = ['create_hierarchy_port', 'delete_hierarchy_port']
        if kind in MESSAGE_CREATORS: value['unavailable'] += ['set_message_channel', 'set_message_default']
    return value


def catalog(*, block_kind=None, owner_kind=None, diagram_scope='Main'):
    if owner_kind not in (None, 'class', 'module') or diagram_scope not in ('Main', 'child'):
        raise ValueError('Exact owner_kind and diagram_scope required')
    if block_kind is not None and block_kind not in CREATION_KINDS:
        raise ValueError('Unknown declared BDE block kind')
    selected = (block_kind,) if block_kind is not None else CREATION_KINDS
    return {'profile': 'ordinary_bde_declared_operations_v1', 'source': 'current typed tool/backend contracts',
        'native_inventory_complete': False, 'native_requests': 0, 'write_authorized': False,
        'context': {'owner_kind': owner_kind or 'not_specified', 'diagram_scope': diagram_scope},
        'families': [row(kind, owner_kind, diagram_scope, detail=block_kind is not None) for kind in selected],
        'class_interfaces': {'formal_input_types': list(CLASS_INPUT_TYPES),
            'formal_creation_operation': 'create_class_argument', 'inverse': 'strict complete-owner after baseline',
            'missing': ['output/in-out', 'enum/complex', 'new method-local declaration', 'permanent local inverse']},
        'limits': ['declared routes are not live eval verdicts or snapshot-specific write eligibility',
                   'GUI factory candidates, all native port types and per-family operation acceptance remain incomplete',
                   'state machines deferred; no arbitrary native execution exposed']}
