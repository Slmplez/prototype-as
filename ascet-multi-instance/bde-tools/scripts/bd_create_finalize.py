"""Complete proofs for isolated graphical history closure and original source restore."""
from copy import deepcopy
import re
from bd_edit_journal import JournalError, clone, fingerprint
from bd_native_graphical_effects import validate_current, validate_actual_diff, same_current
from bd_create_history import source_images
from bd_frozen_source_inverse import _rows

PREPARED_KEYS=frozenset(('profile native_token owner_change_id result_change_id signature sequence before expected '
    'graphical_current graphical_original source_evidence allocator model_setters_called store_called write_authorized').split())
ACTUAL_KEYS=frozenset(('profile execution observation graphical_current graphical_actual source_actual_evidence '
    'original_native_verified original_source_verified original_order_aliases_verified material_retained').split())
EXECUTION_KEYS=frozenset(('profile native_token head_change_id result_change_id sequence phase source_primitives '
    'model_setters_called store_called redo_closed terminal_verified').split())


def invalid(message):raise JournalError('CREATE_FINALIZE_INVALID',message)


def preparation(value,*,token,owner,result_id,sequence,current,original,oid):
    message=type(value) is dict and value.get('profile')=='native_create_finalize_preparation_v5'
    enumeration=type(value) is dict and value.get('profile')=='native_create_finalize_preparation_v4'
    declaration=message or enumeration or type(value) is dict and value.get('profile')=='native_create_finalize_preparation_v3'
    versioned=declaration or type(value) is dict and value.get('profile')=='native_create_finalize_preparation_v2'
    fixed=dict(profile='native_create_finalize_preparation_v5' if message else 'native_create_finalize_preparation_v4' if enumeration else 'native_create_finalize_preparation_v3' if declaration else 'native_create_finalize_preparation_v2' if versioned else 'native_create_finalize_preparation_v1',native_token=token,owner_change_id=owner,
        result_change_id=result_id,sequence=sequence,before=current,expected=original,
        model_setters_called=0,store_called=False,write_authorized=False)
    if (type(value) is not dict or set(value)!=PREPARED_KEYS|({'namespace'} if versioned else set())|({'declaration_evidence'} if declaration else set())|({'enum_origin'} if enumeration else set())|({'message_origin'} if message else set())
            or any(type(value[k]) is not type(v) or value[k]!=v for k,v in fixed.items())
            or value['before']!=value['expected'] or not re.fullmatch(re.escape(token)+r'/f[1-9][0-9]*',value['signature'])):
        invalid('Exact completed original typed graph and bound zero-write finalization required')
    if versioned:
        expected_namespace=dict(profile='allocator_scope_retirement_plan_v1',scope=oid+'/Main',
            generation=current['generation'],native_token=token,result_change_id=result_id,
            blocks_writes_before_allocator_patch=True,requires_unpinned_retirement=True)
        if (type(value['namespace']) is not dict or set(value['namespace'])!=set(expected_namespace)
                or type(current['generation']) is not int or current['generation']<=0
                or any(type(value['namespace'][k]) is not type(v) or value['namespace'][k]!=v
                    for k,v in expected_namespace.items())):
            invalid('Exact namespace retirement certificate required before allocator patch')
    try:
        rows=validate_current(value['graphical_current']);original_rows=validate_current(value['graphical_original'])
        if not original_rows.keys()<=rows.keys() or not same_current(value['graphical_original'],
                dict(profile='native_graphical_current_v1',complete=True,objects=[rows[r] for r in original_rows])):
            invalid('Every complete original graphical object must already be restored')
        images=source_images(value['source_evidence'],oid);root=value['source_evidence']['source_root'];alloc=value['allocator']
        if (type(alloc) is not dict or set(alloc)!={'field','slot','before','expected','identifier_census',
                'competing_histories','closes_redo_before_execution'}
                or alloc['field']!='highestUsedGraphicalIdentifier'
                or any(type(alloc[k]) is not int for k in ('slot','before','expected','identifier_census','competing_histories'))
                or not 0<=alloc['identifier_census']<=alloc['expected']<=alloc['before']
                or alloc['competing_histories']!=0 or alloc['closes_redo_before_execution'] is not True):
            invalid('Complete allocator census, no peer histories and explicit redo closure required')
        root_row=_rows(value['source_evidence']['current'])[root]
        if (root_row['native_class']!='SGTopGraphicsBlockDB'
                or root_row['field_names'].index(alloc['field'])+1!=alloc['slot']):
            invalid('Actual allocator slot/class differs from complete source schema')
        before=['integer','SmallInteger',str(alloc['before'])];after=['integer','SmallInteger',str(alloc['expected'])]
        if (images['current'][root]['cells'][alloc['field']]!=before
                or images['original'][root]['cells'][alloc['field']]!=after
                or images['applied']!=images['current'] or not images['original'].keys()<=images['current'].keys()):
            invalid('Actual/original source allocator or complete retained undo head differs')
        desired=deepcopy(images['current']);desired[root]['cells'][alloc['field']]=after
        if desired!=images['candidate'] or any(desired[r]!=row for r,row in images['original'].items()):
            invalid('Only audited allocator cell may change; complete original source must restore')
    except (ValueError,KeyError,TypeError) as error:invalid(str(error))
    if declaration:
        try:
            if message:
                from bd_message_declaration_finalize import preparation as declaration_preparation
                if (value['message_origin']['creation_material']['native_token']!=token
                        or value['message_origin']['creation_material']['component_oid']!=oid):
                    invalid('Message finalization origin owner/token differs')
                declaration_preparation(value['declaration_evidence'],origin=value['message_origin'])
            elif enumeration:
                from bd_enum_declaration_finalize import preparation as declaration_preparation
                if (value['enum_origin']['creation_material']['native_token']!=token
                        or value['enum_origin']['creation_material']['component_oid']!=oid):
                    invalid('Enum finalization origin owner/token differs')
                declaration_preparation(value['declaration_evidence'],origin=value['enum_origin'])
            else:
                from bd_declaration_finalize import preparation as declaration_preparation
                declaration_preparation(value['declaration_evidence'])
        except (ValueError,KeyError,TypeError) as error:invalid(str(error))
    return clone(value)


def observed(value,prepared,*,oid):
    message=prepared['profile']=='native_create_finalize_preparation_v5'
    enumeration=prepared['profile']=='native_create_finalize_preparation_v4'
    declaration=message or enumeration or prepared['profile']=='native_create_finalize_preparation_v3'
    versioned=declaration or prepared['profile']=='native_create_finalize_preparation_v2'
    extra={'declaration_current','declaration_actual','declaration_schema','declaration_target_verified',
        'created_model_original_retained','original_declaration_verified'} if declaration else set()
    if enumeration:extra|={'enum_definition_evidence'}
    if message:extra|={'message_owner_evidence'}
    if (type(value) is not dict or set(value)!=ACTUAL_KEYS|({'namespace'} if versioned else set())|extra
            or value['profile']!=('native_create_finalize_actual_v5' if message else 'native_create_finalize_actual_v4' if enumeration else 'native_create_finalize_actual_v3' if declaration else 'native_create_finalize_actual_v2' if versioned else 'native_create_finalize_actual_v1')):
        invalid('Complete actual original finalization material required')
    if versioned:
        namespace={**prepared['namespace'], 'profile':'allocator_scope_retirement_actual_v1',
            'retirement_pending':True,'ordinary_writes_blocked':True}
        if (type(value['namespace']) is not dict or set(value['namespace'])!=set(namespace)
                or any(type(value['namespace'][k]) is not type(v) or value['namespace'][k]!=v
                    for k,v in namespace.items())):
            invalid('Actual allocator restore must block ordinary writes until namespace retirement')
    proof=value['execution'];alloc=prepared['allocator']
    fixed=dict(profile='native_create_finalize_execution_v4' if message else 'native_create_finalize_execution_v3' if enumeration else 'native_create_finalize_execution_v2' if declaration else 'native_create_finalize_execution_v1',native_token=prepared['native_token'],
        head_change_id=prepared['owner_change_id'],result_change_id=prepared['result_change_id'],
        sequence=prepared['sequence'],phase='terminal',source_primitives=int(alloc['before']!=alloc['expected']),
        model_setters_called=0,store_called=False,redo_closed=True,terminal_verified=True)
    if (type(proof) is not dict or set(proof)!=EXECUTION_KEYS|({'declaration_primitives'} if declaration else set())
            or any(type(proof[k]) is not type(v) or proof[k]!=v for k,v in fixed.items())
            or value['observation']!=prepared['expected']
            or any(value[k] is not True for k in ('original_native_verified','original_source_verified',
                'original_order_aliases_verified','material_retained'))):
        invalid('Actual original finalization execution/owner differs')
    try:
        effect=validate_actual_diff(value['graphical_current'],value['graphical_actual'])
        if (not same_current(value['graphical_current'],prepared['graphical_current'])
                or effect['new_objects'] or effect['changed_entries']):
            invalid('Finalization must preserve every complete native graphical object')
        if source_images(value['source_actual_evidence'],oid)!=source_images(prepared['source_evidence'],oid):
            invalid('Full actual source patch does not reconstruct the exact prepared original target')
    except (ValueError,KeyError,TypeError) as error:invalid(str(error))
    if declaration:
        if message:
            from bd_message_declaration_finalize import observed as declaration_observed, primitive_count
        elif enumeration:
            from bd_enum_declaration_finalize import observed as declaration_observed, primitive_count
        else:
            from bd_declaration_finalize import observed as declaration_observed, primitive_count
        try:
            declaration_observed(value,prepared['declaration_evidence'])
            target=prepared['declaration_evidence']['target']
            changes=primitive_count(target['current'],target['expected'])
            if type(proof['declaration_primitives']) is not int or proof['declaration_primitives']!=changes:
                invalid('Actual declaration primitive count differs from complete finalization diff')
        except (ValueError,KeyError,TypeError) as error:invalid(str(error))
    return clone(value)


def summary(value):
    return dict(profile=value['profile'],sha256=fingerprint(value),execution=clone(value['execution']),
        source_sha256=fingerprint(value['source_actual_evidence']),
        material_retained=value['material_retained'],detail_source='durable create_finalize_actual',
        **({'namespace':clone(value['namespace'])} if 'namespace' in value else {}))
