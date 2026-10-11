"""Durable structural patches; recovery is restricted to the recorded ASCET epoch.

The fixed native kernel owns identity resolution and immediate conflict checks.
This executor records actual scoped observations, not a synthetic requested diff.
"""
from bd_edit_journal import EditJournal, JournalError, NativePreconditionConflict, clone, file_lock, fingerprint
import re
import json
import math
from bd_contract_values import bounded_text
from bd_structure_scope import CHILD_OPERATIONS, CHILD_CREATION_KINDS, valid_diagram
from bd_scope_effects import postcondition as scope_postcondition, inverse_effects as invert_scopes, scope_differences
from bd_parent_order_effects import (OPERATIONS as ORDER_OPERATIONS, validate_preparation as validate_order_preparation,
    validate_inverse as validate_order_inverse, postcondition as order_postcondition, differences as order_differences)
from bd_native_graphical_effects import validate_current as validate_graphical_current, summary as graphical_summary
from bd_field_execution import observed as field_observed
import bd_drawing_order_effects as drawing
import bd_commit_attempt as commit_attempt


MODEL_CREATORS = ('variable', 'parameter', 'constant', 'array', 'matrix', 'distribution', 'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed',
                  'receive_message', 'send_message', 'send_receive_message')
GROUP_CREATORS = ('oned_table_group','twod_table_group')
SCALAR_CREATORS = ('variable','parameter','constant','enumeration')
MESSAGE_CREATORS = ('receive_message', 'send_message', 'send_receive_message')
MANAGED_INVERSE_OPERATIONS = frozenset(('set_literal', 'set_comment', 'move_node', 'set_edge_route', 'rewire_data'))


def encode_scalar_value(model_type,value):
    if model_type=='enum':
        if not bounded_text(value,maximum=64) or not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}',value):raise JournalError('INVALID_INPUT','Exact enumerator name required')
        return 'E'+value
    if model_type=='log':
        if type(value) is not bool:raise JournalError('INVALID_INPUT','Logical value requires a boolean')
        return 'B'+('1' if value else '0')
    if model_type not in ('cont','sdisc','udisc'):raise JournalError('INVALID_INPUT','Unsupported scalar model type')
    if type(value) not in (int,float) or not math.isfinite(value) or abs(value)>1000000000:raise JournalError('INVALID_INPUT','Finite bounded numeric value required')
    if model_type in ('sdisc','udisc') and (int(value)!=value or (model_type=='udisc' and value<0)):raise JournalError('INVALID_INPUT','Discrete value must match signedness and be integral')
    return 'N'+json.dumps(value)


def decode_scalar_value(encoded):
    if not isinstance(encoded,str) or len(encoded)<2:raise JournalError('INVALID_INPUT','Invalid scalar value encoding')
    if encoded.startswith('E'):value=encoded[1:];kind='enum'
    elif encoded in ('B0','B1'):value=encoded=='B1';kind='log'
    elif encoded.startswith('N'):
        try:value=json.loads(encoded[1:])
        except ValueError:raise JournalError('INVALID_INPUT','Invalid scalar value encoding')
        kind='cont'
    else:raise JournalError('INVALID_INPUT','Invalid scalar value encoding')
    if encode_scalar_value(kind,value)!=encoded:raise JournalError('INVALID_INPUT','Noncanonical scalar value encoding')
    return value
CREATION_KINDS = (*MODEL_CREATORS, *GROUP_CREATORS, 'resource', 'delta_t', 'implementation_cast', 'enumeration', 'component', 'existing_model', 'literal', 'comment', 'operator', 'control', 'hierarchy')
OPERATOR_INPUTS = {'+':None, '*':None, '&':None, '|':None, 'min':None, 'max':None,
                   '-':2, '/':2, '%':2, '>':2, '<':2, '>=':2, '<=':2, '=':2, '!=':2,
                   'abs':1, 'not':1, 'neg':1, 'verify':1, 'assert':1, 'bet':3, 'limit':1, 'wraparound':1}
MODEL_CLASSES = {
    'variable':'EtasAPIModelScalar', 'parameter':'EtasAPIModelScalar', 'constant':'EtasAPIConstant',
    'array':'EtasAPIModelArray', 'matrix':'EtasAPIModelMatrix', 'distribution':'EtasAPIModelDistribution',
    'oned_table':'EtasAPIModelOneDTable', 'oned_table_fixed':'EtasAPIModelOneDTable', 'oned_table_group':'EtasAPIModelOneDTable',
    'twod_table':'EtasAPIModelTwoDTable', 'twod_table_fixed':'EtasAPIModelTwoDTable', 'twod_table_group':'EtasAPIModelTwoDTable',
    'receive_message':'EtasAPIModelReceiveMessage', 'send_message':'EtasAPIModelSendMessage',
    'send_receive_message':'EtasAPIModelSendReceiveMessage', 'resource':'EtasAPIModelRessource',
    'delta_t':'EtasAPIDeltaT', 'implementation_cast':'EtasAPIImplementationCast',
    'enumeration':'EtasAPIModelScalar'}


def validate_route(points):
    if not isinstance(points,list) or not 2 <= len(points) <= 32 or any(
        not isinstance(p,list) or len(p)!=2 or any(type(v) is not int or abs(v)>100000 for v in p) for p in points):
        raise JournalError('INVALID_INPUT','Route requires 2..32 bounded integer coordinate pairs, including both endpoints')
    axes=[]
    for a,b in zip(points,points[1:]):
        if a==b or (a[0]!=b[0] and a[1]!=b[1]):
            raise JournalError('INVALID_INPUT','Route segments must be nonzero and orthogonal')
        axes.append(a[0]==b[0])
    if any(a==b for a,b in zip(axes,axes[1:])):
        raise JournalError('INVALID_INPUT','Consecutive route segments must turn; omit redundant collinear points')
    return ';'.join(','.join(map(str,p)) for p in points)


def validate_creation(op):
    allowed = {'op', 'kind', 'name', 'position', 'model_type', 'arity', 'definition', 'new_definition', 'inputs', 'outputs', 'x_distribution', 'y_distribution', 'initial_value', 'max_size', 'message_scope'}
    if set(op) - allowed or op.get('kind') not in CREATION_KINDS:
        raise JournalError('INVALID_INPUT', 'Unknown creation kind or fields')
    kind, name, position = op['kind'], op.get('name'), op.get('position')
    if not bounded_text(name):
        raise JournalError('INVALID_INPUT', 'Bounded name/content required')
    if not isinstance(position, list) or len(position) != 2 or any(type(v) is not int or abs(v) > 100000 for v in position):
        raise JournalError('INVALID_INPUT', 'Position requires two bounded integers')
    detail = ''
    if kind in MODEL_CREATORS + GROUP_CREATORS or kind in ('resource', 'delta_t', 'implementation_cast', 'enumeration', 'component'):
        if not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}', name):
            raise JournalError('INVALID_INPUT', 'Model name must be a bounded identifier')
    if kind == 'delta_t' and name != 'dT':
        raise JournalError('INVALID_INPUT', 'Native delta_t has reserved name dT')
    if kind in MODEL_CREATORS:
        detail = op.get('model_type', '')
        if detail == 'enum' and kind in MESSAGE_CREATORS:
            definition = op.get('definition')
            if not bounded_text(definition,maximum=2048) or '|' in definition or not re.fullmatch(r'\\?[^\\]+(?:\\[^\\]+)+\\?', definition):
                raise JournalError('INVALID_INPUT', 'Enum message requires an existing full definition path')
            detail = 'ENUM|' + definition
        elif detail not in ('', 'cont', 'sdisc', 'udisc', 'log'):
            raise JournalError('INVALID_INPUT', 'Unsupported primitive model_type')
        if kind in ('oned_table','twod_table','oned_table_fixed','twod_table_fixed') and detail=='log':
            raise JournalError('INVALID_INPUT', 'Logical table creation is not supported by the verified native factory')
    elif kind in GROUP_CREATORS:
        refs = [op.get('x_distribution')]
        if kind=='twod_table_group':refs.append(op.get('y_distribution'))
        if any(not isinstance(ref,str) or not re.fullmatch(r'Main/m_[0-9a-f]+',ref) for ref in refs):
            raise JournalError('INVALID_INPUT','Grouped tables require exact Main/m_ distribution refs from the snapshot')
        detail = '|'.join(ref[5:] for ref in refs)
    elif kind in ('operator', 'control'):
        if kind == 'operator' and name not in OPERATOR_INPUTS:
            raise JournalError('INVALID_INPUT', 'Unsupported operator')
        fixed = OPERATOR_INPUTS.get(name) if kind == 'operator' else None
        detail = op.get('arity', fixed or 2)
        if type(detail) is not int or not 1 <= detail <= 16:
            raise JournalError('INVALID_INPUT', 'Arity must be 1..16')
        if (fixed is not None and detail != fixed) or (fixed is None and detail < 2):
            raise JournalError('INVALID_INPUT', 'Arity must match native fixed input count or be at least two for adjustable blocks')
        if kind == 'control' and name not in ('Break', 'IfThen', 'Case', 'While', 'Switch', 'IfThenElse', 'MUX'):
            raise JournalError('INVALID_INPUT', 'Unsupported control')
    elif kind in ('enumeration', 'component'):
        if kind == 'enumeration' and 'new_definition' in op:
            definition = op['new_definition']
            if 'definition' in op or not isinstance(definition,dict) or set(definition)!={'name','items'}:
                raise JournalError('INVALID_INPUT','Choose existing definition or new_definition with name/items')
            enum_name, items = definition['name'], definition['items']
            if not isinstance(enum_name,str) or not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}',enum_name):
                raise JournalError('INVALID_INPUT','Bounded enum type identifier required')
            if not isinstance(items,list) or not 1<=len(items)<=256 or any(not isinstance(v,str) or not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}',v) for v in items) or len(set(items))!=len(items):
                raise JournalError('INVALID_INPUT','Enum items require 1..256 unique identifiers in order')
            if 'initial_value' in op and op['initial_value'] not in items:
                raise JournalError('INVALID_INPUT','Initial value must be one of the new enum items')
            detail = 'NEWENUM|'+enum_name+'|'+','.join(items)
        else:
            detail = op.get('definition')
            if not bounded_text(detail,maximum=2048) or not re.fullmatch(r'\\?[^\\]+(?:\\[^\\]+)+\\?', detail):
                raise JournalError('INVALID_INPUT', 'Full referenced definition path required')
    elif kind == 'hierarchy':
        if not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}', name):
            raise JournalError('INVALID_INPUT', 'Hierarchy name must be an identifier')
        sides = [op.get('inputs', []), op.get('outputs', [])]
        for pins in sides:
            if not isinstance(pins, list) or len(pins) > 16 or any(not isinstance(p, str) or not re.fullmatch('[A-Za-z_][A-Za-z0-9_]{0,63}', p) for p in pins):
                raise JournalError('INVALID_INPUT', 'Hierarchy pins require at most 16 named identifiers per side')
        names = sides[0] + sides[1]
        if len(names) != len(set(names)):
            raise JournalError('INVALID_INPUT', 'Hierarchy port names must be unique')
        detail = ','.join(sides[0]) + '|' + ','.join(sides[1])
    for key, permitted in (('model_type', kind in MODEL_CREATORS), ('arity', kind in ('operator', 'control')),
                           ('definition', kind in ('enumeration', 'component') or (kind in MESSAGE_CREATORS and op.get('model_type') == 'enum')),
                           ('new_definition', kind == 'enumeration'),
                           ('inputs', kind == 'hierarchy'), ('outputs', kind == 'hierarchy'),
                           ('x_distribution', kind in GROUP_CREATORS), ('y_distribution', kind == 'twod_table_group'),
                           ('message_scope', kind in MESSAGE_CREATORS)):
        if key in op and not permitted:
            raise JournalError('INVALID_INPUT', 'Field does not apply to creation kind: ' + key)
    arguments=[[], kind, name, *position, detail]
    if 'message_scope' in op:
        if op['message_scope'] not in ('local', 'imported', 'exported'):
            raise JournalError('INVALID_INPUT', 'Message scope must be local, imported or exported')
        arguments.append('S' + op['message_scope'])
    if 'max_size' in op:
        size=op['max_size']
        if kind in ('array','distribution','oned_table','oned_table_fixed') and type(size) is int and 1<=size<=256:arguments.append('M'+str(size))
        elif kind in ('matrix','twod_table','twod_table_fixed') and isinstance(size,list) and len(size)==2 and all(type(v) is int and 1<=v<=16 for v in size):arguments.append('M'+'x'.join(map(str,size)))
        else:raise JournalError('INVALID_INPUT','Array maximum must be 1..256; matrix maximum requires two 1..16 axes')
    if 'initial_value' in op:
        value=op['initial_value'];model_type=op.get('model_type') or 'cont'
        if kind not in SCALAR_CREATORS:raise JournalError('INVALID_INPUT','Initial value currently requires a scalar declaration')
        encoded=encode_scalar_value('enum' if kind=='enumeration' else model_type,value)
        arguments.append(encoded)
    return arguments


def validate_request(request, *, complete_connect=False):
    required = {'domain', 'request_id', 'component', 'diagram', 'operation', 'arguments', 'expect'}
    if not isinstance(request, dict) or set(request) != required:
        raise JournalError('INVALID_INPUT', 'Invalid structural request fields')
    domain = request['domain']
    if not isinstance(domain, dict) or set(domain) != {'session', 'database', 'oid', 'process_epoch'} or any(not isinstance(v, str) or not v for v in domain.values()):
        raise JournalError('INVALID_INPUT', 'Complete identity domain required')
    if not isinstance(request['request_id'], str) or not 1 <= len(request['request_id']) <= 256 or not valid_diagram(request['diagram']):
        raise JournalError('INVALID_INPUT', 'Invalid request ID or diagram')
    if request['diagram'] != 'Main' and request['operation'] not in CHILD_OPERATIONS:
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Child scope operation unavailable')
    if not isinstance(request['component'], str) or not isinstance(request['expect'], str) or not re.fullmatch('[0-9a-f]{64}', request['expect']):
        raise JournalError('INVALID_INPUT', 'Invalid component or expectation')
    arities = {'set_table_axis':4, 'set_table_interpolation':3, 'set_table_values':3, 'set_distribution_values':3, 'set_matrix_values':3, 'set_array_values':3, 'set_sequence':4, 'set_scalar_value':3, 'set_sequence_number':3, 'create_block': 6, 'set_literal': 3, 'set_comment': 3, 'move_node': 4, 'set_edge_route':3,
               'connect_data': 3, 'disconnect_data': 2, 'rewire_data': 3, 'delete_node': 2,
               'create_transition': 7, 'delete_transition': 2, 'delete_state': 2,
               'set_transition_priority': 3, 'set_transition_esdl': 4, 'rename_state': 3}
    args = request['arguments']
    arities.update(set_formula=3,set_formula_binding=4)
    arities.update(create_hierarchy_port=4, delete_hierarchy_port=2)
    if not isinstance(request['operation'], str) or request['operation'] not in arities or not isinstance(args, list) or (len(args) != arities[request['operation']] and not (request['operation']=='create_block' and len(args)==7)):
        raise JournalError('INVALID_INPUT', 'Unsupported operation or argument count')
    empty_connect = complete_connect is True and request['operation'] == 'connect_data' and request['diagram'] == 'Main'
    if not isinstance(args[0], list) or (not args[0] and not empty_connect and request['operation'] not in ('create_block', 'create_hierarchy_port', 'delete_hierarchy_port')) or len(args[0]) > 4096 or any(not isinstance(t, str) or not re.fullmatch('(?:[npte][0-9]+|m_[0-9a-f]+)', t) for t in args[0]):
        raise JournalError('INVALID_INPUT', 'Explicit native impact targets required')
    if len(set(args[0])) != len(args[0]) or any(type(v) not in (str, int) for v in args[1:]):
        raise JournalError('INVALID_INPUT', 'Invalid native arguments')
    if request['operation'] in ('create_hierarchy_port', 'delete_hierarchy_port'):
        from bd_hierarchy_ports import validate
        if args[0] or not re.fullmatch('n[0-9]+' if request['operation'] == 'create_hierarchy_port' else 'p[0-9]+', str(args[1])):
            raise JournalError('INVALID_INPUT', 'Complete parent scope and exact hierarchy node/external pin required')
        op = {'op': request['operation'], 'target': args[1]}
        if request['operation'] == 'create_hierarchy_port':
            op.update(direction=args[2], name=args[3])
        validate(op)
    if request['operation'] in ('set_literal','set_comment') and (not isinstance(args[2], str) or not 1 <= len(args[2]) <= 256):
        raise JournalError('INVALID_INPUT', 'Bounded node text required')
    if request['operation'] in ('set_sequence_number','set_sequence') and (not re.fullmatch(r'p[0-9]+',str(args[1])) or type(args[2]) is not int or not 0 <= args[2] <= 100000):
        raise JournalError('INVALID_INPUT', 'Exact pin and bounded sequence number required')
    if request['operation']=='set_sequence':
        from bd_contract_values import bounded_text
        if not bounded_text(args[3]):raise JournalError('INVALID_INPUT','Bounded exact method name required')
    if request['operation']=='set_scalar_value':
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        decode_scalar_value(args[2])
    if request['operation'] in ('set_formula','set_formula_binding'):
        from bd_formula_contract import formula_text
        if not re.fullmatch(r'm_[0-9a-f]{40}',str(args[1])):raise JournalError('INVALID_INPUT','Exact formula model ref required')
        if request['operation']=='set_formula':
            if not formula_text(args[2]):raise JournalError('INVALID_INPUT','Bounded ASCII formula required')
        elif not re.fullmatch(r'[0-9a-f]{40}',str(args[2])) or not re.fullmatch(r'm_[0-9a-f]{40}',str(args[3])):
            raise JournalError('INVALID_INPUT','Exact formal OID and actual model ref required')
    if request['operation']=='set_array_values':
        from bd_array_values import decode_values
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        decode_values(args[2])
    if request['operation']=='set_table_values':
        from bd_table_values import decode_table
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        decode_table(args[2])
    if request['operation'] in ('set_table_axis','set_table_interpolation'):
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        if request['operation']=='set_table_axis':
            from bd_table_settings import axis_values
            if args[2] not in ('x','y'):raise JournalError('INVALID_INPUT','Exact table axis required')
            axis_values(args[3])
        elif args[2] not in ('linear','rounded'):raise JournalError('INVALID_INPUT','Invalid table interpolation mode')
    if request['operation']=='set_matrix_values':
        from bd_matrix_values import decode_matrix
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        decode_matrix(args[2])
    if request['operation']=='set_distribution_values':
        from bd_distribution_values import decode_distribution
        if not re.fullmatch(r'm_[0-9a-f]+',str(args[1])):raise JournalError('INVALID_INPUT','Exact model ref required')
        decode_distribution(args[2])
    if request['operation'] == 'move_node' and any(type(v) is not int or not 1 <= v <= 100000 for v in args[2:]):
        raise JournalError('INVALID_INPUT', 'Move anchor requires positive bounded integers')
    if request['operation'] == 'set_edge_route':
        try:
            points=[[int(v) for v in p.split(',')] for p in args[2].split(';')]
            if validate_route(points)!=args[2]:raise ValueError('Noncanonical route')
        except (ValueError,AttributeError):
            raise JournalError('INVALID_INPUT','Invalid route encoding')
    if request['operation'] == 'create_block':
        if request['diagram'] != 'Main' and args[1] not in CHILD_CREATION_KINDS:
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Creation kind unavailable within child scope')
        if args[0]:
            raise JournalError('INVALID_INPUT', 'Creation currently requires full structural scope')
        op = {'op': 'create_block', 'kind': args[1], 'name': args[2], 'position': args[3:5]}
        key = 'model_type' if args[1] in MODEL_CREATORS else 'arity' if args[1] in ('operator', 'control') else 'definition' if args[1] in ('enumeration', 'component') else None
        if key:
            op[key] = args[5]
        if args[1] in MESSAGE_CREATORS and args[5].startswith('ENUM|'):
            op['model_type'] = 'enum'
            op['definition'] = args[5][5:]
        if args[1]=='enumeration' and isinstance(args[5],str) and args[5].startswith('NEWENUM|'):
            parts=args[5].split('|')
            if len(parts)!=3:raise JournalError('INVALID_INPUT','Invalid enum definition encoding')
            op.pop('definition',None)
            op['new_definition']={'name':parts[1],'items':parts[2].split(',')}
        if len(args)==7:
            try:
                encoded=args[6]
                if args[1] in MESSAGE_CREATORS and encoded.startswith('S'):op['message_scope']=encoded[1:]
                elif args[1] in ('array','distribution','oned_table','oned_table_fixed') and encoded.startswith('M'):op['max_size']=int(encoded[1:])
                elif args[1] in ('matrix','twod_table','twod_table_fixed') and encoded.startswith('M'):op['max_size']=[int(v) for v in encoded[1:].split('x')]
                else:op['initial_value']=encoded[1:] if encoded.startswith('E') else encoded=='B1' if encoded in ('B0','B1') else json.loads(encoded[1:]) if encoded.startswith('N') else None
            except (TypeError,ValueError,AttributeError):raise JournalError('INVALID_INPUT','Invalid initial value encoding')
        if args[1] == 'hierarchy':
            if not isinstance(args[5], str) or args[5].count('|') != 1:
                raise JournalError('INVALID_INPUT', 'Invalid hierarchy port encoding')
            op['inputs'], op['outputs'] = [s.split(',') if s else [] for s in args[5].split('|')]
        if args[1] in GROUP_CREATORS:
            refs=args[5].split('|')
            if len(refs)!=(2 if args[1]=='twod_table_group' else 1):
                raise JournalError('INVALID_INPUT','Invalid group distribution encoding')
            op['x_distribution']='Main/'+refs[0]
            if len(refs)==2:op['y_distribution']='Main/'+refs[1]
        if validate_creation(op) != args:
            raise JournalError('INVALID_INPUT', 'Noncanonical creation arguments')


def postcondition(request, before, after):
    """Verify requested effects against observed rows; never synthesize after."""
    left = {r['ref']: r for r in before['entries']}
    right = {r['ref']: r for r in after['entries']}
    op, args = request['operation'], request['arguments'][1:]
    target = args[0]
    if before.get('generation') != after.get('generation'):
        return False
    if before.get('diagram') != after.get('diagram') or before.get('boundary_context') != after.get('boundary_context'):
        return False
    if op in ('create_hierarchy_port', 'delete_hierarchy_port'):
        from bd_hierarchy_ports import parent_postcondition
        return parent_postcondition(request, before, after)
    if op in ('set_formula','set_formula_binding'):
        if target not in left or set(left)!=set(right):return False
        expected=clone(left[target]);formula=expected.get('dependent_formula',{})
        observed=right[target].get('dependent_formula',{})
        if observed.get('status')!='read':return False
        if op=='set_formula':
            if observed.get('text')!=args[1] or not isinstance(observed.get('compiled'),str) or not observed['compiled']:return False
            formula['text']=args[1];formula['compiled']=observed['compiled']
        else:
            matches=[v for v in formula.get('bindings',{}).get('values',[]) if v['formal_oid']==args[1]]
            if len(matches)!=1:return False
            matches[0]['actual_ref']=args[2]
        return expected==right[target] and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op=='set_table_values':
        from bd_table_values import decode_table
        if target not in left or set(left)!=set(right):return False
        expected=clone(left[target]);expected['default_value']['values']=decode_table(args[1])
        return fingerprint(expected)==fingerprint(right[target]) and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op in ('set_table_axis','set_table_interpolation'):
        from bd_table_settings import axis_values
        if target not in left or set(left)!=set(right):return False
        expected=clone(left[target]);default=expected['default_value']
        if op=='set_table_axis':default[args[1]]=axis_values(args[2])
        else:
            default.update(interpolation_linear=args[1]=='linear',interpolation_rounded=args[1]=='rounded')
            expected['declared_interpolation']='Linear' if args[1]=='linear' else 'Rounded'
        return fingerprint(expected)==fingerprint(right[target]) and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op in ('set_array_values','set_distribution_values'):
        from bd_array_values import decode_values
        if target not in left or set(left)!=set(right):return False
        expected=clone(left[target]);values=decode_values(args[1]);default=expected['default_value']
        default.update(values=values,size=len(values),max_size=max(default['max_size'],len(values)))
        return fingerprint(expected)==fingerprint(right[target]) and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op=='set_matrix_values':
        from bd_matrix_values import decode_matrix,shape
        if target not in left or set(left)!=set(right):return False
        expected=clone(left[target]);values=decode_matrix(args[1]);default=expected['default_value'];size=shape(values)
        default.update(values=values,size=size,max_size=[max(a,b) for a,b in zip(default['max_size'],size)])
        return fingerprint(expected)==fingerprint(right[target]) and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op=='set_scalar_value':
        if target not in left or set(left)!=set(right):return False
        old=clone(left[target]);new=clone(right[target]);expected=decode_scalar_value(args[1])
        if new.get('default_value',{}).get('status')!='read' or new['default_value'].get('value')!=expected:return False
        if (type(new['default_value']['value']) is bool)!=(type(expected) is bool):return False
        old.get('default_value',{}).pop('value',None);new.get('default_value',{}).pop('value',None)
        return old==new and all(right[ref]==row for ref,row in left.items() if ref!=target)
    if op in ('set_sequence_number','set_sequence'):
        sequence=left.get(target,{}).get('sequence')
        if not sequence or set(left)!=set(right):return False
        method=args[2] if op=='set_sequence' else sequence['method']
        for ref,old in left.items():
            new=right[ref]
            if (old.get('sequence') or {}).get('id')==sequence['id']:
                if (new.get('sequence') or {}).get('number')!=args[1]:return False
                if {k:v for k,v in old.items() if k!='sequence'}!={k:v for k,v in new.items() if k!='sequence'}:return False
                if new['sequence'].get('method')!=method or new['sequence'].get('label')!=str(args[1])+'/'+method:return False
                if {k:v for k,v in old['sequence'].items() if k not in ('number','method','label','position','size')}!={k:v for k,v in new['sequence'].items() if k not in ('number','method','label','position','size')}:return False
            elif old!=new:return False
        return True
    if op == 'set_edge_route':
        expected=[[int(v) for v in p.split(',')] for p in args[1].split(';')]
        return (target in left and set(left)==set(right) and right[target].get('route')==expected
                and all(({k:v for k,v in row.items() if ref!=target or k!='route'} ==
                         {k:v for k,v in right[ref].items() if ref!=target or k!='route'}) for ref,row in left.items()))
    if op == 'create_block':
        if any(right.get(ref) != row for ref, row in left.items()):
            return False
        added = [row for ref, row in right.items() if ref not in left]
        nodes = [row for row in added if row['kind'] == 'node']
        models = [row for row in added if row['kind'] == 'model']
        if len(nodes) != 1 or any(row['kind'] not in ('node', 'pin', 'model') for row in added):
            return False
        node = nodes[0]
        if node.get('anchor') != args[2:4]:
            return False
        if set(node.get('pins', [])) != {row['ref'] for row in added if row['kind'] == 'pin'}:
            return False
        kind, name = args[:2]
        if kind == 'literal':
            return not models and node.get('literal') == name
        if kind == 'comment':
            return not models and node.get('comment') == name and not node.get('pins')
        if kind == 'operator':
            expected = 'conversion' if name in ('limit', 'wraparound') else name
            conversion = {'limit':'limit', 'wraparound':'wrapAround'}.get(name)
            return (not models and node.get('operator') == expected
                    and (conversion is None or node.get('conversion_type') == conversion)
                    and sum(1 for row in added if row['kind']=='pin' and row['input']) == args[4])
        if kind == 'control':
            return not models and node.get('control') == name
        if kind == 'hierarchy':
            inputs, outputs = [s.split(',') if s else [] for s in args[4].split('|')]
            actual_pins = [row for row in added if row['kind'] == 'pin']
            return (not models and node.get('hierarchy_name') == name
                and sorted(p['name'] for p in actual_pins if p['input']) == sorted(inputs)
                and sorted(p['name'] for p in actual_pins if p['output']) == sorted(outputs))
        if kind == 'existing_model':
            return not models and node.get('model_name') == name
        if len(models) != 1 or models[0]['name'] != name or node.get('model_ref') != models[0]['ref']:
            return False
        model = models[0]
        if len(args)==6:
            encoded=args[5]
            observed=model.get('default_value',{})
            if kind in MESSAGE_CREATORS:
                if model.get('message',{}).get('scope') != encoded[1:]:return False
            elif kind in ('array','distribution','oned_table','oned_table_fixed'):
                if observed.get('status')!='read' or observed.get('declared_max_size')!=int(encoded[1:]):return False
            elif kind in ('matrix','twod_table','twod_table_fixed'):
                if observed.get('status')!='read' or observed.get('declared_max_size')!=[int(v) for v in encoded[1:].split('x')]:return False
            else:
                expected=encoded[1:] if encoded.startswith('E') else encoded=='B1' if encoded.startswith('B') else json.loads(encoded[1:])
                if observed.get('status')!='read' or observed.get('value')!=expected:return False
        if kind in MODEL_CLASSES and model.get('native_class') != MODEL_CLASSES[kind]:
            return False
        if kind in MESSAGE_CREATORS:
            message = model.get('message', {})
            if (message.get('global_label') != name or message.get('send') != (kind == 'send_message')
                    or message.get('receive') != (kind == 'receive_message')
                    or message.get('send_receive') != (kind == 'send_receive_message')):
                return False
            if args[4].startswith('ENUM|'):
                definition = model.get('definition', {})
                if model.get('model_type') != 'enum' or not definition.get('oid') or definition.get('path','').strip('\\') != args[4][5:].strip('\\'):
                    return False
        if kind in MODEL_CREATORS and args[4] and not args[4].startswith('ENUM|') and model.get('model_type') != args[4]:
            return False
        if kind == 'enumeration' and model.get('model_type') != 'enum':
            return False
        if kind in ('enumeration', 'component'):
            definition = model.get('definition', {})
            expected_path=args[4]
            if kind=='enumeration' and expected_path.startswith('NEWENUM|'):
                _,enum_name,items=expected_path.split('|')
                expected_path='BDE_Tool_Experiments\\'+enum_name
                if model.get('enum_values')!=items.split(','):return False
            if definition.get('path', '').strip('\\') != expected_path.strip('\\') or not definition.get('oid'):
                return False
        if kind in GROUP_CREATORS:
            refs=args[4].split('|')
            if not model.get('group_table') or model.get('x_distribution')!=refs[0]:return False
            if len(refs)==2 and model.get('y_distribution')!=refs[1]:return False
        if kind in ('variable','parameter') and model.get('parameter') != (kind == 'parameter'):
            return False
        return True
    if op in ('set_literal', 'set_comment', 'move_node'):
        if set(left) != set(right) or target not in right:
            return False
        allowed_fields = {'position', 'size', 'anchor'} | ({'literal'} if op == 'set_literal' else {'comment'} if op == 'set_comment' else set())
        incident = {r['ref'] for r in left.values() if r['kind'] == 'edge' and {r['source'],r['target']} & set(left[target].get('pins', []))}
        calls = {(left[p].get('sequence') or {}).get('id') for p in left[target].get('pins', []) if p in left and left[p].get('sequence')}
        for ref, old in left.items():
            sequence = old.get('sequence')
            if op == 'move_node' and sequence and sequence.get('id') in calls:
                new = right[ref]
                if {k:v for k,v in old.items() if k != 'sequence'} != {k:v for k,v in new.items() if k != 'sequence'}:
                    return False
                if not new.get('sequence') or {k:v for k,v in sequence.items() if k != 'position'} != {k:v for k,v in new['sequence'].items() if k != 'position'}:
                    return False
                delta = [n-o for n,o in zip(args[1:3], left[target]['anchor'])]
                if new['sequence'].get('position') != [p+d for p,d in zip(sequence['position'], delta)]:
                    return False
                continue
            permitted = allowed_fields if ref == target else {'route'} if ref in incident else set()
            if {k:v for k,v in old.items() if k not in permitted} != {k:v for k,v in right[ref].items() if k not in permitted}:
                return False
        field, expected = ('literal', args[1]) if op == 'set_literal' else ('comment', args[1]) if op == 'set_comment' else ('anchor', args[1:3])
        return right[target].get(field) == expected
    # BDE operations must retain the observed boundary objects. A setter can
    # satisfy its requested endpoint while also deleting a pin or another edge.
    # Keep that actual patch recoverable, but never report it as verified.
    if op == 'disconnect_data':
        return target in left and right == {ref:row for ref,row in left.items() if ref != target}
    if op == 'connect_data':
        added_refs = set(right) - set(left)
        if not set(left) <= set(right) or len(added_refs) != 1:
            return False
        added = right[next(iter(added_refs))]
        return (all(right[ref] == row for ref,row in left.items()) and added['kind'] == 'edge'
                and added['source'] == args[0] and added['target'] == args[1])
    if op == 'rewire_data' and set(left) != set(right):
        return False
    if op == 'delete_transition':
        return target in left and target not in right
    if op in ('delete_node', 'delete_state'):
        removed = {target, *left[target].get('pins', [])}
        removed.update(r['ref'] for r in left.values() if r['kind'] in ('edge', 'transition') and {r['source'], r['target']} & removed)
        if op == 'delete_node':
            return right == {ref:row for ref,row in left.items() if ref not in removed}
        return not removed.intersection(right) and set(left) - set(right) == removed
    if op == 'create_transition':
        added = [r for k, r in right.items() if k not in left and r['kind'] == 'transition']
        return len(added) == 1 and added[0]['source'] == args[0] and added[0]['target'] == args[1]
    if target not in right:
        return False
    row = right[target]
    if op == 'rewire_data':
        return (row['source'] == args[1] and all(
            {k:v for k,v in old.items() if ref!=target or k not in ('source','route')} ==
            {k:v for k,v in right[ref].items() if ref!=target or k not in ('source','route')}
            for ref,old in left.items()))
    if op == 'set_transition_priority':
        return row['priority'] == args[1]
    if op == 'rename_state':
        return row['name'] == args[1]
    if op == 'set_transition_esdl':
        return row[args[1]]['source'] == args[2] and row[args[1]]['mode'] == 'esdl'
    return False


def differences(before, after):
    left = {r['ref']: r for r in before['entries']}
    right = {r['ref']: r for r in after['entries']}
    return [{'ref': ref, 'before': left.get(ref), 'after': right.get(ref)}
            for ref in sorted(left.keys() | right.keys()) if left.get(ref) != right.get(ref)]


def library_postcondition(request, effects, delta):
    arguments = request['arguments']
    if request['operation'] != 'create_block' or arguments[1] != 'enumeration' or not arguments[5].startswith('NEWENUM|'):
        return effects == []
    _, name, items = arguments[5].split('|')
    models = [row['after'] for row in delta if row['before'] is None and row['after'].get('kind') == 'model']
    if len(models) != 1 or len(effects) != 1:
        return False
    definition = models[0].get('definition', {})
    return bool(definition.get('oid')) and effects == [{
        'kind': 'enumeration_definition', 'path': 'BDE_Tool_Experiments\\' + name,
        'oid': definition['oid'], 'before': None, 'after': {'items': items.split(',')}}]


class StructureJournal(EditJournal):
    @staticmethod
    def receipt(change_id, events):
        result = EditJournal.receipt(change_id, events)
        capture_state = commit_attempt.history(events, token=change_id)
        if capture_state is not None:
            result['commit_capture'] = commit_attempt.receipt_projection(capture_state)
        # Full actual rosters stay in the WAL, not in every agent response.
        result.pop('parent_order_effects', None)
        result.pop('drawing_order_effects', None)
        resource_prepared = next((e['payload']['commit_resources_prepared'] for e in events
            if e['kind'] == 'prepared' and 'commit_resources_prepared' in e['payload']), None)
        if resource_prepared is not None:
            result['commit_resources'] = {key: clone(resource_prepared[key]) for key in (
                'profile','resource_token','generation','original_material_held','same_native_dispatch',
                'full_commit_resource_closure','write_authorized','inverse_authorized')}
        field_proof = next((e['payload']['field_execution'] for e in reversed(events)
                            if e['kind'] == 'observed' and 'field_execution' in e['payload']), None)
        if field_proof is not None:
            result['field_execution'] = clone(field_proof)
        topology_proof = next((e['payload']['topology_execution'] for e in reversed(events)
            if e['kind'] == 'observed' and 'topology_execution' in e['payload']), None)
        if topology_proof is not None:
            result['topology_execution'] = clone(topology_proof)
        witness = next((e['payload'].get('drawing_order_witness') for e in events if e['kind'] == 'prepared'), None)
        if witness is not None:
            result['drawing_order_witness'] = {key: witness[key] for key in ('source_token', 'source_inverse_id')}
            result['drawing_order_witness']['sha256'] = fingerprint(witness)
        retention = next((e['payload'] for e in reversed(events) if e['kind'] in ('recovery_retained', 'recovery_handed_off')), None)
        if retention is not None:
            result['recovery_material'] = {**retention, 'revert_of_revert_available': any(e['kind'] == 'managed_inverse_ready' for e in events)}
        elif any(e['kind'] == 'recovery_handoff_started' for e in events):
            result['recovery_material'] = {'status': 'ownership_unconfirmed', 'automatic_retry': False,
                                           'revert_of_revert_available': False}
        elif any(e['kind'] == 'recovery_retention_started' for e in events):
            classified_absent = any(e['kind'] == 'recovery_retention_reconciled' and e['payload'].get('retained') is False for e in events)
            result['recovery_material'] = {'status': 'not_retained' if classified_absent else 'ownership_unconfirmed', 'automatic_retry': False,
                                           'revert_of_revert_available': False}
        topology_head = next((e['payload'] for e in reversed(events) if e['kind'] == 'topology_head_retained'), None)
        if topology_head is not None:
            from bd_topology_head_snapshot import summary
            result['topology_history'] = summary(topology_head)
        connect_head = next((e['payload'] for e in reversed(events) if e['kind'] == 'connect_history_ready'), None)
        if connect_head is not None:
            result['connect_history'] = {**connect_head, 'complete_actual_head_saved': True,
                'revert_of_revert_available': True}
        reference_proof = next((e['payload']['module_references_actual'] for e in events
            if e['kind'] == 'observed' and 'module_references_actual' in e['payload']), None)
        if reference_proof is not None:
            from bd_module_references import summary
            result['module_reference_history'] = summary(reference_proof)
            result['module_reference_history']['revert_of_revert_available'] = False
        persistent_proof = next((e['payload']['module_persistent_references_actual'] for e in events
            if e['kind'] == 'observed' and 'module_persistent_references_actual' in e['payload']), None)
        if persistent_proof is not None:
            from bd_module_persistent_references import differences
            result['module_persistent_reference_history'] = dict(sha256=fingerprint(persistent_proof),
                changed_records=len(differences(persistent_proof)), write_authorized=False,
                inverse_authorized=False, revert_of_revert_available=False, full_commit_resource_closure=False)
        if any(e['kind']=='create_history_ready' or (e['kind']=='observed'
                and 'create_history_actual' in e['payload']) for e in events):
            from bd_create_history_journal import receipt_projection
            result.update(receipt_projection(change_id,events,result['status']))
        closure = next((e['payload'] for e in reversed(events) if e['kind']=='create_history_closed'),None)
        if closure is not None:
            result['history_closed']=clone(closure)
            if 'create_history' in result:
                result['create_history']['revert_of_revert_available']=False
        if any(e['kind']=='observed' and 'create_finalize_actual' in e['payload'] for e in events):
            from bd_create_finalize_journal import receipt_projection
            result.update(receipt_projection(change_id,events))
        return result

    def diff(self, change_id):
        result = super().diff(change_id)
        events = self.read(change_id)
        capture_state = commit_attempt.history(events, token=change_id)
        if capture_state is not None:
            result['commit_capture'] = commit_attempt.receipt_projection(capture_state)
            result['commit_capture_attempts'] = clone(capture_state['attempts'])
        resource_prepared = next((e['payload']['commit_resources_prepared'] for e in events
            if e['kind'] == 'prepared' and 'commit_resources_prepared' in e['payload']), None)
        checks = [e for e in events if e['kind'] == 'commit_resource_checked']
        if checks:
            from bd_commit_resources import status as validate_resource_status
            source = self.origin(change_id)['intent']
            if resource_prepared is None:
                raise JournalError('JOURNAL_CORRUPT', 'Resource check lacks original prepared material')
            retained_checks = []
            for event in checks:
                try:
                    checked = validate_resource_status(event['payload'], token=change_id,
                        component_oid=source['domain']['oid'], checked=True)
                    if checked['prepared_receipt'] != resource_prepared:
                        raise ValueError('Recorded resource check differs from original preparation')
                except (ValueError, KeyError, TypeError) as error:
                    raise JournalError('JOURNAL_CORRUPT', str(error)) from error
                retained_checks.append(dict(event_sha256=event['checksum'], as_of_utc=event['utc'],
                    status=checked, model_edit_claimed=False, is_fresh_live_observation=False))
            result['commit_resource_checks'] = retained_checks
            result['commit_resource_check_source'] = 'durable resource check WAL; all changed values, zero live reads; model edit not claimed'
        compensation = next((e['payload'] for e in events
            if e['kind'] == 'field_failure_compensation_evidence'), None)
        if compensation is not None:
            # The distinct restoration is an actual recorded operation; the
            # failed forward must not become a synthetic applied row patch.
            proof = compensation['terminal_proof']
            from bd_native_graphical_effects import validate_current, _same_image
            before, original = validate_current(proof['before_native']), validate_current(proof['original_native'])
            cells = []
            for ref, wanted in original.items():
                actual = before.get(ref)
                if actual is None or actual['class'] != wanted['class'] or actual['kind'] != wanted['kind']:
                    raise JournalError('JOURNAL_CORRUPT', 'Compensation actual native identity material differs')
                if wanted['kind'] == 'fields':
                    if len(actual['value']) != len(wanted['value']):
                        raise JournalError('JOURNAL_CORRUPT', 'Compensation actual field material shape differs')
                    for index, (left, right) in enumerate(zip(actual['value'], wanted['value']), 1):
                        if left != right:
                            cells.append({'object': ref, 'class': wanted['class'], 'kind': 'fields',
                                'index': index, 'before': clone(left), 'after': clone(right)})
                elif not _same_image(wanted, actual['value'], wanted['value']):
                    cells.append({'object': ref, 'class': wanted['class'], 'kind': wanted['kind'],
                        'before': clone(actual['value']), 'after': clone(wanted['value'])})
            result['failure_compensation'] = {
                'transaction': compensation['transaction'], 'state': proof['state'],
                'original_verified': proof['original_verified'], 'primitive_writes': proof['primitive_writes'],
                'native_progress': clone(proof['native_progress']), 'source_progress': clone(proof['source_progress']),
                'actual_native_changes': cells, 'detail_source': 'durable field_failure_compensation_evidence',
                'original_forward_status': 'outcome_unknown'}
        if any('graphical_current' in row or 'graphical_actual' in row for row in result['observations']):
            result['native_graphical_evidence'] = {
                'agent_projection': 'actual collected semantic row patches and parent/drawing order deltas',
                'complete_native_graphical_field_details_in_response': False,
                'detail_source': 'original durable recovery journal',
                'summary_source': 'graphical_differences contains actual/current digests and changed-object counts'}
        for observation in result['observations']:
            if 'module_persistent_references_actual' in observation:
                from bd_module_persistent_references import differences
                proof = observation.pop('module_persistent_references_actual')
                observation['module_persistent_reference_differences'] = differences(proof)
                observation['module_persistent_reference_history'] = dict(sha256=fingerprint(proof),
                    full_commit_resource_closure=False, inverse_authorized=False)
            if 'module_references_actual' in observation:
                from bd_module_references import differences as reference_differences, summary as reference_summary
                proof = observation.pop('module_references_actual')
                observation['module_reference_differences'] = reference_differences(proof)
                observation['module_reference_history'] = reference_summary(proof)
            if 'parent_order_effects' in observation:
                observation['parent_order_differences'] = order_differences(observation.pop('parent_order_effects'))
            if 'drawing_order_effects' in observation:
                observation['drawing_order_differences'] = drawing.differences(observation.pop('drawing_order_effects'))
            observation.pop('graphical_current', None)
            observation.pop('graphical_actual', None)
            if 'connect_material_actual' in observation:
                from bd_connect_material import summary
                observation['connect_material'] = summary(observation.pop('connect_material_actual'))
            if 'connect_actual' in observation:
                actual = observation.pop('connect_actual')
                observation['connect_actual_summary'] = dict(profile=actual['profile'], sha256=fingerprint(actual),
                    execution=clone(actual['execution']), created_original_retained=actual['created_original_retained'],
                    alias_reserved=actual['alias_reserved'])
            if 'create_material_actual' in observation:
                from bd_create_material import summary
                observation['create_material'] = summary(observation.pop('create_material_actual'))
            if 'create_history_actual' in observation:
                from bd_create_history import summary
                observation['create_history_actual_summary'] = summary(observation.pop('create_history_actual'))
            if 'create_finalize_actual' in observation:
                from bd_create_finalize import summary
                observation['create_finalize_actual_summary']=summary(observation.pop('create_finalize_actual'))
        return result

    @staticmethod
    def _graphical_preparation(adapter, token, operation):
        if operation not in ORDER_OPERATIONS or not getattr(adapter, 'graphical_evidence_required', False):
            return {}
        current = clone(getattr(adapter, 'graphical_current', None))
        signature = getattr(adapter, 'graphical_signature', None)
        validate_graphical_current(current)
        if not isinstance(signature, str) or not re.fullmatch(re.escape(token) + r'/g[1-9][0-9]*', signature):
            raise JournalError('GRAPHICAL_EVIDENCE_INVALID', 'Exact native graphical CURRENT binding required')
        result = {'graphical_current': current, 'graphical_signature': signature}
        if getattr(adapter, 'drawing_evidence_required', False):
            before = clone(getattr(adapter, 'drawing_order_before', None))
            expected = clone(getattr(adapter, 'drawing_order_expected', None))
            drawing.validate_preparation(before, expected, token=token, diagram=before['diagram'] if before else '',
                physical_before=getattr(adapter, 'parent_order_before', None), physical_expected=getattr(adapter, 'parent_order_expected', None))
            result.update(drawing_order_before=before, drawing_order_expected=expected)
            witness = clone(getattr(adapter, 'drawing_order_witness', None))
            if witness is not None:
                result['drawing_order_witness'] = witness
        return result

    def causal_drawing_source(self, witness, target):
        source = self.read(witness['source_token'])
        inverse = self.read(witness['source_inverse_id'])
        original = source[0]['payload']
        if (original.get('operation') not in ORDER_OPERATIONS or original.get('component') != target['component']
                or original.get('diagram') != target['diagram']
                or any(original['domain'].get(key) != target['domain'].get(key) for key in ('database', 'oid', 'process_epoch'))
                or self.receipt(witness['source_token'], source)['status'] != 'applied_observed'
                or inverse[0]['payload'].get('reverts') != witness['source_token']
                or inverse[0]['payload'].get('domain') != original['domain']
                or self.receipt(witness['source_inverse_id'], inverse)['status'] != 'verified_local'
                or not any(e['kind'] == 'recovery_released' and e['payload'].get('released') is True
                    or e['kind'] == 'recovery_retained' and e['payload'] == {
                        'retained': True, 'profile': 'retained_inverse_v1', 'native_token': witness['source_token'],
                        'owner_change_id': witness['source_inverse_id'], 'state': 'reverted', 'model_setters_called': 0}
                    for e in inverse)):
            raise JournalError('DRAWING_EVIDENCE_INVALID', 'Durable verified released or retained causal source required')
        prepared = next(e['payload'] for e in source if e['kind'] == 'prepared')
        inverse_prepared = next(e['payload'] for e in inverse if e['kind'] == 'prepared')
        observed = next(e['payload'] for e in inverse if e['kind'] == 'observed')
        if (not drawing.postcondition(observed.get('drawing_order_effects', []),
                inverse_prepared.get('drawing_order_before'), inverse_prepared.get('drawing_order_expected'))
                or observed.get('graphical_current') != inverse_prepared.get('graphical_current')
                or graphical_summary(inverse_prepared.get('graphical_current'), observed.get('graphical_actual'))
                != observed.get('graphical_differences')):
            raise JournalError('DRAWING_EVIDENCE_INVALID', 'Causal source lacks complete actual inverse evidence')
        retained = any(e['kind'] == 'recovery_retained' for e in inverse)
        return {'source_order': prepared.get('drawing_order_before'),
                'generation': prepared['before']['generation'], 'component_oid': original['domain']['oid'],
                'diagram': original['diagram'], 'verified_released_inverse': not retained,
                'verified_retained_inverse': retained, 'material_lifecycle': 'retained' if retained else 'released'}

    def retain_inverse_material(self, path, events, adapter, domain, native_token, inverse_id):
        """Durable metadata ownership only; never replay an uncertain handoff."""
        attempted = False
        try:
            operation = self.read(native_token)[0]['payload'].get('operation')
            snapshot_required = operation in getattr(adapter, 'topology_head_snapshot_operations', ())
            if snapshot_required:
                self._append(path, events, 'topology_head_snapshot_required', {
                    'native_token': native_token, 'owner_change_id': inverse_id, 'state': 'reverted',
                    'previous_owner_change_id': native_token, 'profile': 'actual_topology_owned_snapshot_v1'})
            self._append(path, events, 'recovery_retention_started', {
                'native_token': native_token, 'owner_change_id': inverse_id,
                'profile': 'retained_inverse_v1', 'expected_state': 'reverted', 'automatic_retry': False})
            attempted = True
            ownership = adapter.retain_inverse(domain, native_token, inverse_id)
            expected = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': native_token,
                'owner_change_id': inverse_id, 'state': 'reverted', 'model_setters_called': 0}
            if ownership != expected:
                raise JournalError('RECOVERY_MATERIAL_INVALID', 'Native inverse ownership differs from durable intent')
            self._append(path, events, 'recovery_retained', ownership)
            if snapshot_required:
                self.record_topology_head(path, events, adapter, domain, native_token, inverse_id,
                    'reverted', operation, native_token)
            adapter.confirm_retention(domain, native_token, inverse_id)
            if (operation in getattr(adapter, 'managed_inverse_operations', ())
                    or snapshot_required and operation in getattr(adapter, 'managed_topology_operations', ())):
                self._append(path, events, 'managed_inverse_ready', {'native_token': native_token,
                    'owner_change_id': inverse_id, 'operation': operation, 'state': 'reverted'})
        except Exception as error:
            self._append(path, events, 'recovery_retention_failed', {
                'error': str(error), 'dispatch_attempted': attempted, 'automatic_retry': False})

    def record_topology_head(self, path, events, adapter, domain, native_token, owner, state, operation, previous_owner):
        """Read and durably save only the actual owned head; no model replay."""
        from bd_topology_head_snapshot import validate
        value = adapter.topology_owned_head_snapshot(domain, native_token, owner, state)
        value = validate(value, domain=domain, token=native_token, owner=owner, state=state,
            operation=operation, previous_owner=previous_owner)
        recorded = [e['payload'] for e in events if e['kind'] == 'topology_head_retained']
        if recorded:
            if len(recorded) != 1 or recorded[0] != value:
                raise JournalError('TOPOLOGY_HEAD_INVALID', 'Frozen actual history differs from its durable copy')
        else:
            self._append(path, events, 'topology_head_retained', value)
        return value

    @staticmethod
    def _graphical_observed(adapter, prepared):
        if not prepared:
            return {}
        actual = clone(getattr(adapter, 'graphical_actual', None))
        current = prepared['graphical_current']
        result = {'graphical_current': current, 'graphical_actual': actual,
                  'graphical_differences': graphical_summary(current, actual)}
        if 'drawing_order_before' in prepared:
            effects = clone(getattr(adapter, 'drawing_order_effects', []))
            result.update(drawing_order_effects=effects, drawing_order_differences=drawing.differences(effects))
            if 'drawing_order_witness' in prepared:
                result['drawing_order_witness_sha256'] = fingerprint(prepared['drawing_order_witness'])
        return result

    @staticmethod
    def _drawing_postcondition(prepared, observed):
        return drawing.postcondition(observed.get('drawing_order_effects', []),
            prepared.get('drawing_order_before'), prepared.get('drawing_order_expected'))

    @staticmethod
    def _discard_prepared(adapter, domain, token):
        discard = getattr(adapter, 'discard_prepared', None)
        if not callable(discard):return {}
        try:
            return {'prepared_recovery_discarded':discard(domain,token)}
        except Exception as error:
            # A cleanup failure must not allow applying or discarding a record
            # that might already be started. Native enforces exact state.
            return {'prepared_recovery_discard_error':str(error)}

    def _record_unknown(self,path,events,error):
        # A release/diagnostic failure after a durable verified result must not
        # overwrite that result. A disk failure before it remains unknown.
        if any(e['kind']=='finished' and e['payload'].get('status') in ('verified_local','restore_mismatch','applied_observed','postcondition_mismatch') for e in events):
            return
        try:
            self._append(path,events,'finished',{'status':'outcome_unknown','automatic_retry':False,'error':str(error)})
        except OSError:
            # The already durable started event prevents replay even when no
            # further event can be persisted. receipt() derives unknown from it.
            pass

    def execute(self, request, adapter, live_lock):
        request = clone(request)
        validate_request(request, complete_connect=getattr(adapter, 'connect_history_capable', False) is True)
        token = 'edit_' + fingerprint({'domain': request['domain'], 'request_id': request['request_id']})
        path = self._path(token)
        with file_lock(self.root / 'journal.lock'):
            if path.exists():
                events = self.read(token)
                if not events or events[0]['payload'] != request:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Request ID has different content')
                return self.receipt(token, events)
            with live_lock():
                write_preflight = getattr(adapter, 'write_preflight', None)
                if write_preflight is not None:
                    write_preflight(request['domain'])
                path.mkdir()
                events = []
                self._append(path, events, 'intent', request)
                prepared_native = False
                capture_requested = None
                try:
                    before = adapter.observe(request['domain'], request['arguments'][0])
                    if fingerprint(before) != request['expect']:
                        self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False})
                        return self.receipt(token, events)
                    if getattr(adapter, 'commit_resource_capture_capable', False) is True:
                        capture_requested = commit_attempt.capture_request(token, adapter.commit_resource_receipt_profile)
                        # The durable request is the recovery route even if preparation's
                        # reply is lost before a complete prepared receipt can be saved.
                        self._append(path, events, 'commit_capture_requested', capture_requested)
                    prepared = adapter.prepare(request['domain'], token, request['operation'], request['arguments'])
                    prepared_native = True
                    if prepared != before:
                        raise JournalError('PREPARE_CONFLICT', 'Native preparation observed a different state')
                    if capture_requested is not None:
                        from bd_commit_resources import validate as validate_resources
                        resource_receipt = validate_resources(getattr(adapter, 'commit_resources_prepared', None),
                            token=token, component_oid=request['domain']['oid'])
                        if resource_receipt['profile'] != capture_requested['receipt_profile']:
                            raise ValueError('Prepared resource receipt differs from the durable requested scope')
                    order_before = clone(getattr(adapter, 'parent_order_before', None))
                    order_expected = clone(getattr(adapter, 'parent_order_expected', None))
                    if request['operation'] in ORDER_OPERATIONS:
                        validate_order_preparation(order_before, order_expected, token=token, diagram=request['diagram'])
                    elif order_before is not None or order_expected is not None:
                        raise JournalError('ORDER_EVIDENCE_INVALID', 'Unexpected parent evidence for this operation')
                    graphical_prepared = self._graphical_preparation(adapter, token, request['operation'])
                    self._append(path, events, 'prepared', {'before': before, 'native_token': token,
                        **({'commit_resources_prepared': clone(adapter.commit_resources_prepared)}
                           if getattr(adapter, 'commit_resources_prepared', None) is not None else {}),
                        'parent_order_before': order_before, 'parent_order_expected': order_expected, **graphical_prepared,
                        **({'connect_material_prepared': clone(adapter.connect_material_prepared)}
                           if request['operation'] == 'connect_data' and getattr(adapter, 'connect_history_capable', False) is True else {}),
                        **({'create_material_prepared': clone(adapter.create_material_prepared)}
                           if request['operation'] == 'create_block' and getattr(adapter, 'create_material_capable', False) is True else {})})
                except Exception as error:
                    # Partial captures may be the only original material retained.
                    # Never discard them based on an absent or invalid prepare reply.
                    cleanup = self._discard_prepared(adapter,request['domain'],token) if prepared_native and capture_requested is None else {}
                    self._append(path, events, 'finished', {'status': 'rejected', 'setter_called': False, 'error': str(error),
                        **({'automatic_retry': False} if capture_requested is not None else {}), **cleanup})
                    return self.receipt(token, events)
                try:
                    self._append(path, events, 'started', {'native_token': token})
                except Exception as error:
                    cleanup = self._discard_prepared(adapter,request['domain'],token)
                    try:
                        self._append(path,events,'finished',{'status':'rejected','setter_called':False,'error':str(error),**cleanup})
                    except OSError:
                        pass
                    return self.receipt(token,events)
                try:
                    after = adapter.apply(token)
                    effects = clone(getattr(adapter, 'library_effects', []))
                    scopes = clone(getattr(adapter, 'scope_effects', []))
                    orders = clone(getattr(adapter, 'parent_order_effects', []))
                    graphical_observed = {**self._graphical_observed(adapter, graphical_prepared),
                        **field_observed(adapter, request['operation'], token, 'forward')}
                    connect = request['operation'] == 'connect_data' and getattr(adapter, 'connect_history_capable', False) is True
                    creation = request['operation'] == 'create_block' and getattr(adapter, 'create_material_capable', False) is True
                    if creation:
                        from bd_create_material import observation
                        captured = observation(before,after,
                            next(e['payload']['create_material_prepared'] for e in events if e['kind']=='prepared'),
                            adapter.create_material_actual,token=token,oid=request['domain']['oid'],kind=request['arguments'][1])
                        graphical_observed.update(captured)
                        orders = captured['parent_order_effects']
                    if connect:
                        from bd_connect_journal import forward_material, forward_observation
                        material = forward_material(request, next(e['payload'] for e in events if e['kind'] == 'prepared'),
                            adapter.connect_material_actual, token)
                        if effects or scopes or orders:
                            raise ValueError('Connection contains unexpected effect ownership')
                        graphical_observed.update(forward_observation(after, material))
                        orders = graphical_observed['parent_order_effects']
                    self._append(path, events, 'observed', {'after': after, 'library_effects': effects,
                        'scope_effects': scopes, 'parent_order_effects': orders, **graphical_observed})
                    delta = differences(before, after)
                    verified = (postcondition(request, before, after) and library_postcondition(request, effects, delta)
                                and scope_postcondition(request, scopes, before, after)
                                and (connect or creation or (order_postcondition(orders, order_before, order_expected)
                                    and self._drawing_postcondition(graphical_prepared, graphical_observed))))
                    self._append(path, events, 'finished', {'status': 'applied_observed' if verified else 'postcondition_mismatch',
                        'requested_effect_verified': verified, 'differences': delta, 'library_effects': effects,
                        'scope_effects': scopes, 'scope_differences': scope_differences(scopes),
                        'parent_order_effects': orders, 'parent_order_differences': order_differences(orders),
                        **({'graphical_differences': graphical_observed['graphical_differences']} if 'graphical_differences' in graphical_observed else {}),
                        **({'drawing_order_differences': graphical_observed['drawing_order_differences']} if 'drawing_order_effects' in graphical_observed else {}),
                        **({'module_reference_differences': graphical_observed['module_reference_differences']}
                           if 'module_reference_differences' in graphical_observed else {}),
                        'recovery': 'retained_native_objects_same_ASCET_process', 'outside_scope': 'not_observed'})
                    if 'field_execution' in graphical_observed:
                        adapter.confirm_field(request['domain'], 'apply', token)
                    if connect and verified:
                        from bd_connect_journal import ready
                        ready(self, path, events, native_token=token, owner=token, state='applied', sequence=1)
                        adapter.confirm_connect(request['domain'], 'connect_apply', token)
                    if creation and verified:
                        adapter.confirm_create(request['domain'], token)
                except NativePreconditionConflict as error:
                    cleanup = self._discard_prepared(adapter,request['domain'],token)
                    self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False,
                        'automatic_retry': False, 'error': str(error), **cleanup})
                except Exception as error:
                    self._record_unknown(path,events,error)
                return self.receipt(token, events)

    def revert(self, token, request_id, adapter, live_lock):
        original = self.read(token)
        if not isinstance(request_id, str) or not 1 <= len(request_id) <= 256:
            raise JournalError('INVALID_INPUT', 'Bounded inverse request ID required')
        if self.origin(token)['intent'].get('operation') == 'connect_data' and getattr(adapter, 'connect_history_capable', False) is True:
            from bd_connect_journal import execute
            return execute(self, token, request_id, adapter, live_lock)
        if self.origin(token)['intent'].get('operation') == 'create_block' and getattr(adapter, 'create_history_capable', False) is True:
            from bd_create_history_journal import execute
            return execute(self, token, request_id, adapter, live_lock)
        if 'reverts' in original[0]['payload']:
            return self._managed_revert(token, request_id, adapter, live_lock)
        if self.receipt(token, original)['status'] not in ('applied_observed', 'postcondition_mismatch'):
            raise JournalError('REVERT_UNAVAILABLE', 'Original edit has no observed completion')
        source = original[0]['payload']
        before = next(e['payload']['before'] for e in original if e['kind'] == 'prepared')
        after = next(e['payload']['after'] for e in original if e['kind'] == 'observed')
        original_effects = next(e['payload'].get('library_effects', []) for e in original if e['kind'] == 'observed')
        inverse_effects = [{**effect, 'before': effect['after'], 'after': effect['before']} for effect in original_effects]
        original_scopes = next(e['payload'].get('scope_effects', []) for e in original if e['kind'] == 'observed')
        original_orders = next(e['payload'].get('parent_order_effects', []) for e in original if e['kind'] == 'observed')
        inverse_scopes = invert_scopes(original_scopes)
        inverse = {'domain': source['domain'], 'request_id': request_id, 'reverts': token}
        inverse_id = 'edit_' + fingerprint({'domain': source['domain'], 'request_id': request_id})
        path = self._path(inverse_id)
        with file_lock(self.root / 'journal.lock'):
            if path.exists():
                events = self.read(inverse_id)
                if not events or events[0]['payload'] != inverse:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Inverse request ID conflict')
                return self.receipt(inverse_id, events)

            with live_lock():
                write_preflight = getattr(adapter, 'write_preflight', None)
                if write_preflight is not None:
                    write_preflight(source['domain'])
                path.mkdir()
                events = []
                self._append(path, events, 'intent', inverse)
                current = adapter.observe(source['domain'], source['arguments'][0])
                inverse_expected = before
                inverse_analysis = {}
                local_field = (source['operation'] in MANAGED_INVERSE_OPERATIONS
                               and getattr(adapter, 'local_field_inverse_capable', False) is True)
                local_inverse = local_field or (source['operation'] in ORDER_OPERATIONS
                                 and getattr(adapter, 'local_delete_inverse_capable', False) is True)
                if local_inverse:
                    if local_field:
                        from bd_field_inverse import plan as inverse_plan, summary as inverse_summary
                    else:
                        from bd_delete_inverse import plan as inverse_plan, summary as inverse_summary
                    try:
                        candidate = inverse_plan(before, after, current,
                            **({'operation': source['operation']} if local_field else {}))
                        inverse_analysis = inverse_summary(candidate, current)
                    except (ValueError, TypeError, KeyError) as error:
                        self._append(path, events, 'finished', {'status': 'rejected', 'setter_called': False,
                            'automatic_retry': False, 'error': str(error), 'reverts': token})
                        return self.receipt(inverse_id, events)
                    if not candidate['compatible']:
                        self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False,
                            'inverse_analysis': inverse_analysis, 'reverts': token})
                        return self.receipt(inverse_id, events)
                    inverse_expected = candidate['expected']
                elif current != after:
                    self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False})
                    return self.receipt(inverse_id, events)
                order_before = order_expected = None
                try:
                    if source['operation'] in ORDER_OPERATIONS or local_field:
                        if not callable(getattr(adapter, 'validate_revert', None)):
                            raise JournalError('ORDER_EVIDENCE_INVALID', 'Native CURRENT order preflight required')
                        if adapter.validate_revert(source['domain'], token) != current:
                            raise NativePreconditionConflict('CURRENT graph changed during inverse preflight')
                        if source['operation'] in ORDER_OPERATIONS:
                            order_before = clone(getattr(adapter, 'parent_order_before', None))
                            order_expected = clone(getattr(adapter, 'parent_order_expected', None))
                            validate_order_inverse(original_orders, order_before, order_expected,
                                token=token, diagram=source['diagram'])
                        if local_inverse and fingerprint(getattr(adapter, 'inverse_expected', None)) != fingerprint(inverse_expected):
                            raise NativePreconditionConflict('Native inverse expected graph differs from independent three-way plan')
                    graphical_prepared = self._graphical_preparation(adapter, token, source['operation'])
                    if 'drawing_order_before' in graphical_prepared:
                        original_drawing = next(e['payload'].get('drawing_order_effects', []) for e in original if e['kind'] == 'observed')
                        drawing.validate_inverse(original_drawing, graphical_prepared['drawing_order_before'],
                            graphical_prepared['drawing_order_expected'], token=token, diagram=source['diagram'],
                            witness=graphical_prepared.get('drawing_order_witness'),
                            source_lookup=lambda proof: self.causal_drawing_source(proof, source),
                            component_oid=source['domain']['oid'], generation=current['generation'])
                    self._append(path, events, 'prepared', {'before': current,
                        'parent_order_before': order_before, 'parent_order_expected': order_expected, **graphical_prepared,
                        **({'inverse_expected': inverse_expected, 'inverse_analysis': inverse_analysis} if local_inverse else {})})
                except Exception as error:
                    self._append(path, events, 'finished', {'status': 'conflict' if isinstance(error, NativePreconditionConflict) else 'rejected',
                        'setter_called': False, 'automatic_retry': False, 'error': str(error), 'reverts': token})
                    return self.receipt(inverse_id, events)
                self._append(path, events, 'started', {'native_token': token})
                try:
                    restored = adapter.revert(source['domain'], token,
                        **({'expected_operation': source['operation']}
                           if getattr(adapter, 'field_execution_required', False) is True else {}))
                    effects = clone(getattr(adapter, 'library_effects', []))
                    scopes = clone(getattr(adapter, 'scope_effects', []))
                    orders = clone(getattr(adapter, 'parent_order_effects', []))
                    graphical_observed = {**self._graphical_observed(adapter, graphical_prepared),
                        **field_observed(adapter, source['operation'], token, 'undo')}
                    verified = (fingerprint(restored) == fingerprint(inverse_expected) and effects == inverse_effects and scopes == inverse_scopes
                        and order_postcondition(orders, order_before, order_expected)
                        and self._drawing_postcondition(graphical_prepared, graphical_observed))
                    self._append(path, events, 'observed', {'after': restored, 'library_effects': effects,
                        'scope_effects': scopes, 'parent_order_effects': orders, **graphical_observed})
                    self._append(path, events, 'finished', {'status': 'verified_local' if verified else 'restore_mismatch',
                        'differences': differences(current, restored), 'library_effects': effects, 'scope_effects': scopes,
                        'scope_differences': scope_differences(scopes), 'parent_order_effects': orders,
                        'parent_order_differences': order_differences(orders), 'reverts': token,
                        **({'inverse_analysis': inverse_analysis} if local_inverse else {}),
                        **({'drawing_order_differences': graphical_observed['drawing_order_differences']} if 'drawing_order_effects' in graphical_observed else {}),
                        **({'graphical_differences': graphical_observed['graphical_differences']} if 'graphical_differences' in graphical_observed else {})})
                    if 'field_execution' in graphical_observed:
                        adapter.confirm_field(source['domain'], 'revert', token)
                    if verified and getattr(adapter, 'retained_inverse_material_capable', False) is True:
                        self.retain_inverse_material(path, events, adapter, source['domain'], token, inverse_id)
                    elif verified and callable(getattr(adapter, 'release', None)):
                        # Model inverse is already durably verified. Releasing only
                        # terminal native objects cannot change that outcome.
                        try:
                            released = adapter.release(source['domain'], token,
                                **({'inverse_id': inverse_id} if getattr(adapter, 'causal_drawing_witness_capable', False) else {}))
                            self._append(path, events, 'recovery_released', released)
                        except Exception as release_error:
                            self._append(path, events, 'recovery_release_failed', {'error': str(release_error)})
                except NativePreconditionConflict as error:
                    self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False,
                        'automatic_retry': False, 'reverts': token, 'error': str(error)})
                except Exception as error:
                    self._record_unknown(path,events,error)
                return self.receipt(inverse_id, events)

    def managed_context(self, token):
        """Resolve proven actual owned history; never substitute original/scoped rows."""
        from bd_managed_topology import OPERATIONS as topology_operations, actual_head
        ancestry = self.origin(token)
        source = ancestry['intent']
        if (len(ancestry['chain']) < 2
                or source.get('operation') not in MANAGED_INVERSE_OPERATIONS | topology_operations):
            raise JournalError('REVERT_UNAVAILABLE', 'Managed bidirectional operation is not implemented')
        events = self.read(token)
        if self.receipt(token, events)['status'] != 'verified_local':
            raise JournalError('REVERT_UNAVAILABLE', 'Managed source lacks a verified actual inverse')
        state = 'reverted' if (len(ancestry['chain']) - 1) % 2 else 'applied'
        proof = next((e['payload'] for e in reversed(events) if e['kind'] in ('recovery_retained', 'recovery_handed_off')), None)
        required = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': ancestry['change_id'],
            'owner_change_id': token, 'state': state, 'model_setters_called': 0}
        if proof is None or any(proof.get(k) != v for k, v in required.items()):
            raise JournalError('REVERT_UNAVAILABLE', 'Exact durable material ownership required')
        for change_id in ancestry['chain'][:-1]:
            if self.receipt(change_id, self.read(change_id))['status'] != 'verified_local':
                raise JournalError('REVERT_UNAVAILABLE', 'Ancestry contains an unverified inverse')
        context = {'source': source, 'native_token': ancestry['change_id'], 'head_change_id': token,
            'expected_state': state}
        if source['operation'] in topology_operations:
            head = actual_head(events, source=source, token=ancestry['change_id'], owner=token,
                state=state, sequence=len(ancestry['chain']))
            return {**context, 'before': head['before'], 'after': head['after'], 'topology_head': head}
        return {**context, 'before': next(e['payload']['before'] for e in events if e['kind'] == 'prepared'),
            'after': next(e['payload']['after'] for e in events if e['kind'] == 'observed')}

    def handoff_managed_material(self, path, events, adapter, domain, context):
        state = 'applied' if context['expected_state'] == 'reverted' else 'reverted'
        intent = {'native_token': context['native_token'], 'previous_owner_change_id': context['head_change_id'],
            'owner_change_id': context['result_change_id'], 'expected_state': state,
            'profile': 'retained_inverse_v1', 'automatic_retry': False}
        try:
            operation = self.read(context['native_token'])[0]['payload'].get('operation')
            snapshot_required = operation in getattr(adapter, 'topology_head_snapshot_operations', ())
            if snapshot_required:
                self._append(path, events, 'topology_head_snapshot_required', {
                    'native_token': context['native_token'], 'owner_change_id': context['result_change_id'],
                    'previous_owner_change_id': context['head_change_id'], 'state': state,
                    'profile': 'actual_topology_owned_snapshot_v1'})
            self._append(path, events, 'recovery_handoff_started', intent)
            proof = adapter.handoff_inverse(domain, context['native_token'], context['head_change_id'], state, context['result_change_id'])
            expected = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': context['native_token'],
                'previous_owner_change_id': context['head_change_id'], 'owner_change_id': context['result_change_id'],
                'state': state, 'model_setters_called': 0}
            if proof != expected:
                raise JournalError('RECOVERY_MATERIAL_INVALID', 'Managed handoff differs from durable intent')
            self._append(path, events, 'recovery_handed_off', proof)
            if snapshot_required:
                self.record_topology_head(path, events, adapter, domain, context['native_token'],
                    context['result_change_id'], state, operation, context['head_change_id'])
            adapter.confirm_managed(domain, context['native_token'], context['head_change_id'], state, context['result_change_id'], handoff=True)
            self._append(path, events, 'managed_inverse_ready', {'native_token': context['native_token'],
                'owner_change_id': context['result_change_id'], 'state': state})
        except Exception as error:
            self._append(path, events, 'recovery_handoff_failed', {'error': str(error), 'automatic_retry': False})

    def _managed_revert(self, token, request_id, adapter, live_lock):
        domain = self.read(token)[0]['payload']['domain']
        inverse = {'domain': domain, 'request_id': request_id, 'reverts': token}
        inverse_id = 'edit_' + fingerprint({'domain': domain, 'request_id': request_id})
        path = self._path(inverse_id)
        with file_lock(self.root / 'journal.lock'):
            if path.exists():
                events = self.read(inverse_id)
                if not events or events[0]['payload'] != inverse:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Managed inverse request ID conflict')
                return self.receipt(inverse_id, events)
            context = self.managed_context(token)
            source = context['source']
            topology = 'topology_head' in context
            capabilities = getattr(adapter, 'managed_topology_operations' if topology else 'managed_inverse_operations', ())
            if source['operation'] not in capabilities:
                raise JournalError('REVERT_UNAVAILABLE', 'Native managed operation unavailable')
            context = {**context, 'result_change_id': inverse_id}
            native_context = {key: context[key] for key in ('native_token', 'head_change_id', 'expected_state', 'result_change_id')}
            with live_lock():
                preflight = getattr(adapter, 'write_preflight', None)
                if preflight is not None:
                    preflight(domain)
                path.mkdir(); events = []
                self._append(path, events, 'intent', inverse)
                try:
                    current = adapter.observe(domain, [] if topology else source['arguments'][0])
                    expected, analysis = context['before'], None
                    local_field = not topology and getattr(adapter, 'local_field_inverse_capable', False) is True
                    if topology:
                        from bd_managed_topology import prepare as topology_prepare
                        preparation = topology_prepare(adapter, domain, context, current)
                        expected, analysis = preparation['inverse_expected'], preparation['inverse_analysis']
                    elif local_field:
                        from bd_field_inverse import plan as field_plan, summary as field_summary
                        candidate = field_plan(context['before'], context['after'], current, operation=source['operation'])
                        analysis = field_summary(candidate, current)
                        if not candidate['compatible']:
                            self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False,
                                'inverse_analysis': analysis})
                            return self.receipt(inverse_id, events)
                        expected = candidate['expected']
                    elif current != context['after']:
                        self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False})
                        return self.receipt(inverse_id, events)
                    if not topology:
                        validated = adapter.validate_managed_inverse(domain, context['native_token'], token, context['expected_state'], inverse_id)
                        if validated != current:
                            raise NativePreconditionConflict('Managed preflight observation changed')
                        if local_field and fingerprint(getattr(adapter, 'inverse_expected', None)) != fingerprint(expected):
                            raise NativePreconditionConflict('Native managed inverse differs from independent three-way plan')
                        preparation = {'before': current, 'inverse_expected': expected,
                            'managed_inverse': native_context, **({'inverse_analysis': analysis} if local_field else {})}
                    self._append(path, events, 'prepared', preparation)
                except Exception as error:
                    self._append(path, events, 'finished', {'status': 'conflict' if isinstance(error, NativePreconditionConflict) else 'rejected',
                        'setter_called': False, 'automatic_retry': False, 'error': str(error)})
                    return self.receipt(inverse_id, events)
                self._append(path, events, 'started', native_context)
                try:
                    if topology:
                        from bd_managed_topology import observed as topology_observed
                        after = adapter.managed_topology_inverse(domain, context['native_token'], token,
                            context['expected_state'], inverse_id, source['operation'])
                        observation = topology_observed(adapter, context, preparation, after)
                    else:
                        after = adapter.managed_inverse(domain, context['native_token'], token, context['expected_state'], inverse_id)
                        fields = field_observed(adapter, source['operation'], context['native_token'],
                            'redo' if context['expected_state'] == 'reverted' else 'undo')
                        observation = {'after': after, 'library_effects': [], 'scope_effects': [], 'parent_order_effects': [], **fields}
                    self._append(path, events, 'observed', observation)
                    verified = fingerprint(after) == fingerprint(expected)
                    self._append(path, events, 'finished', {'status': 'verified_local' if verified else 'restore_mismatch',
                        'differences': differences(current, after), 'reverts': token,
                        'managed_inverse': native_context, 'automatic_retry': False,
                        **({'inverse_analysis': analysis} if local_field or topology else {})})
                    adapter.confirm_managed(domain, context['native_token'], token, context['expected_state'], inverse_id)
                    if verified:
                        self.handoff_managed_material(path, events, adapter, domain, native_context)
                except NativePreconditionConflict as error:
                    self._append(path, events, 'finished', {'status': 'conflict', 'setter_called': False,
                        'automatic_retry': False, 'error': str(error)})
                except Exception as error:
                    self._record_unknown(path, events, error)
                return self.receipt(inverse_id, events)
