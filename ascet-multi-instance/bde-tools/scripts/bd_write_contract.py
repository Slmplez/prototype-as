"""Strict write shapes, checked before loading snapshots or opening ASCET.

This validates syntax only. Snapshot identity, numeric-literal sandbox limits,
pin direction, owner restrictions and native availability remain live guards.
"""
import re
from bd_edit_journal import JournalError
from bd_structure_journal import validate_creation, validate_route
from bd_contract_values import bounded_text


def validate(tool,args,fail):
    if tool not in ('bd_edit','bd_revert'):return
    def reject(message):fail('INVALID_INPUT',message)
    text=bounded_text
    def integer(value,low,high):return type(value) is int and low<=value<=high
    def point(value,low=-100000):return isinstance(value,list) and len(value)==2 and all(integer(v,low,100000) for v in value)
    if tool=='bd_edit' and 'steps' in args:
        if set(args)-{'steps','request_id','preview','mode'} or not text(args.get('request_id')):reject('Invalid group fields')
        if 'mode' in args and args['mode'] != 'connection_sequence':reject('Invalid group mode')
        if 'preview' in args and type(args['preview']) is not bool:reject('preview requires a boolean')
        if not isinstance(args['steps'],list) or not 2<=len(args['steps'])<=16:reject('Group requires 2..16 independent resources')
        for step in args['steps']:
            if not isinstance(step,dict) or set(step)!={'snapshot','operations'}:reject('Invalid group step fields')
            validate('bd_edit',{'request_id':'validate-group-step',**step},fail)
            from bd_group_journal import GROUP_OPERATIONS
            if step['operations'][0]['op'] not in GROUP_OPERATIONS:reject('Unsupported group operation')
            if args.get('mode') == 'connection_sequence' and step['operations'][0]['op'] != 'connect_data':reject('Connection sequences require connect_data')
        return
    if tool == 'bd_edit' and isinstance(args.get('operations'), list) and len(args['operations']) == 1 and isinstance(args['operations'][0], dict) and args['operations'][0].get('op') == 'connect_path':
        if not {'request_id','operations'} <= set(args) or set(args)-{'request_id','operations','preview'} or not text(args['request_id']):reject('Invalid connect_path fields')
        if 'preview' in args and type(args['preview']) is not bool:reject('preview requires a boolean')
        if set(args['operations'][0]) != {'op','plan_ref'} or not text(args['operations'][0]['plan_ref']):reject('connect_path requires an immutable plan_ref')
        return
    required={'request_id','snapshot','operations'} if tool=='bd_edit' else {'request_id','change_id'}
    optional={'preview','finalize'} if tool=='bd_revert' else {'preview'}
    if not required<=set(args) or set(args)-(required|optional):reject('Unexpected or missing write tool fields')
    if 'preview' in args and type(args['preview']) is not bool:reject('preview requires a boolean')
    if 'finalize' in args and type(args['finalize']) is not bool:reject('finalize requires a boolean')
    for key in required-{'operations'}:
        if not text(args[key]):reject('Bounded '+key+' required')
    if tool=='bd_revert':return
    operations=args['operations']
    if not isinstance(operations,list) or len(operations)!=1 or not isinstance(operations[0],dict):reject('One typed operation required')
    op=operations[0];action=op.get('op')
    if action in ('delete_class_formal', 'create_class_argument'):
        from bd_class_tools import validate_operation
        try:validate_operation(op)
        except JournalError as error:reject(str(error))
        return
    if action=='create_block':
        try:validate_creation(op)
        except JournalError as error:reject(str(error))
        return
    if action in ('create_hierarchy_port', 'delete_hierarchy_port'):
        from bd_hierarchy_ports import validate as validate_port
        if not text(op.get('target')):reject('Bounded target required')
        try:validate_port(op)
        except JournalError as error:reject(str(error))
        return
    fields={
        'set_formula':{'target','expect','text'},
        'set_formula_binding':{'target','formal_oid','expect','actual'},
        'set_table_axis':{'target','axis','expect','values'},
        'set_table_interpolation':{'target','expect','mode'},
        'set_table_values':{'target','expect','values'},
        'set_array_values':{'target','expect','values'},
        'set_distribution_values':{'target','expect','values'},
        'set_matrix_values':{'target','expect','values'},
        'set_sequence':{'target','expect','number','method'},
        'set_scalar_value':{'target','expect','value'},
        'set_sequence_number':{'target','expect','number'},
        'set_literal':{'target','expect','value'},'set_comment':{'target','text'},'move_node':{'target','position'},
        'set_edge_route':{'target','points'},'connect_data':{'source','target'},'disconnect_data':{'target'},
        'rewire_data':{'source','target'},'delete_node':{'target'},'delete_state':{'target'},'delete_transition':{'target'},
        'create_transition':{'source','target','out_position','in_position'},'set_transition_priority':{'target','priority'},
        'set_transition_esdl':{'target','slot','text'},'rename_state':{'target','name'},
    }
    if not isinstance(action,str) or action not in fields:reject('Unsupported typed operation')
    required=fields[action]|{'op'};optional={'expect'} if action=='rewire_data' else set()
    if not required<=set(op) or set(op)-(required|optional):reject('Unexpected or missing operation fields')
    for key in ('source','target'):
        if key in op and not text(op[key]):reject('Bounded '+key+' required')
    if action in ('set_formula','set_formula_binding'):
        from bd_formula_contract import validate as validate_formula
        try:validate_formula(op)
        except JournalError as error:reject(str(error))
    if action=='set_literal':
        for key in ('expect','value'):
            if not isinstance(op[key],dict) or set(op[key])!={'text'} or not text(op[key]['text'],0 if key=='expect' else 1,4096 if key=='expect' else 256):reject('Invalid literal '+key)
    if action=='set_comment' and not text(op['text']):reject('Invalid comment')
    if action in ('set_sequence_number','set_sequence'):
        if not integer(op['number'],0,100000):reject('Invalid sequence number')
        if not isinstance(op['expect'],dict) or set(op['expect'])!={'number','method'} or not integer(op['expect']['number'],0,100000) or not (text(op['expect']['method']) or (action=='set_sequence' and op['expect']['method'] is None)):reject('Invalid sequence expectation')
        if action=='set_sequence' and not text(op['method']):reject('Invalid sequence method')
    if action=='set_scalar_value':
        from bd_structure_journal import encode_scalar_value
        if not isinstance(op['expect'],dict) or set(op['expect'])!={'value'}:reject('Invalid scalar expectation')
        for value in (op['value'],op['expect']['value']):
            try:encode_scalar_value('log' if type(value) is bool else 'enum' if isinstance(value,str) else 'cont',value)
            except JournalError as error:reject(str(error))
    if action=='set_array_values':
        from bd_array_values import validate_shape
        try:validate_shape(op)
        except JournalError as error:reject(str(error))
    if action=='set_matrix_values':
        from bd_matrix_values import validate_shape
        try:validate_shape(op)
        except JournalError as error:reject(str(error))
    if action=='set_distribution_values':
        from bd_distribution_values import validate_shape
        try:validate_shape(op)
        except JournalError as error:reject(str(error))
    if action=='move_node' and not point(op['position'],1):reject('Invalid move position')
    if action=='set_table_values':
        from bd_table_values import validate_shape
        try:validate_shape(op)
        except JournalError as error:reject(str(error))
    if action in ('set_table_axis','set_table_interpolation'):
        from bd_table_settings import validate_axis,validate_interpolation
        try:(validate_axis if action=='set_table_axis' else validate_interpolation)(op)
        except JournalError as error:reject(str(error))
    if action=='set_edge_route':
        try:validate_route(op['points'])
        except JournalError as error:reject(str(error))
    if action=='rewire_data' and 'expect' in op:
        expect=op['expect']
        if (not isinstance(expect,dict) or set(expect)!={'source','native_connection_type'} or
            not text(expect['source']) or not integer(expect['native_connection_type'],0,9007199254740991)):reject('Invalid rewire expectation')
    if action=='create_transition' and not all(point(op[key]) for key in ('out_position','in_position')):reject('Invalid transition position')
    if action=='set_transition_priority' and not integer(op['priority'],0,100000):reject('Invalid priority')
    if action=='set_transition_esdl' and (op['slot'] not in ('condition','action') or not text(op['text'],0,4096)):reject('Invalid transition slot/text')
    if action=='rename_state' and (not isinstance(op['name'],str) or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}',op['name'])):reject('Invalid state name')
