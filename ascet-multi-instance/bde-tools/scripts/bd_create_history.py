"""Full retained creation history checks with a separate exact declaration contract."""
import re
from copy import deepcopy
from bd_edit_journal import JournalError, clone, fingerprint
from bd_topology_inverse import plan
from bd_parent_order_effects import validate_preparation
import bd_drawing_order_effects as drawing
from bd_native_graphical_effects import validate_current, validate_actual_diff, same_current
from bd_frozen_source_inverse import ROLES, _rows, _cells
from bd_message_declaration_material import KINDS as MESSAGE_KINDS, API_CLASS as MESSAGE_API_CLASSES

PREPARATION_KEYS = frozenset(('profile native_token owner_change_id result_change_id state sequence kind '
    'before expected signature parent_before parent_expected drawing_before drawing_expected '
    'graphical_current graphical_original graphical_expected source_evidence allocator '
    'created_original_retained declaration_body_restore_verified model_setters_called store_called '
    'write_authorized local_merge_enabled').split())
ACTUAL_KEYS = frozenset(('profile observation execution parent_before parent_after drawing_before drawing_after '
    'graphical_current graphical_actual source_actual_evidence allocator created_original_retained '
    'native_target_verified source_target_verified').split())
EXECUTION_KEYS = frozenset(('profile native_token head_change_id result_change_id sequence before_state after_state '
    'model_operations drawing_assignments store_started store_completed phase native_primitives source_primitives '
    'terminal_verified').split())


def invalid(message):
    raise JournalError('CREATE_HISTORY_INVALID', message)


def source_images(value, oid):
    fixed = dict(profile='frozen_source_identity_evidence_v1', component_oid=oid, complete=True,
                 model_setters_called=0, store_called=False)
    if (type(value) is not dict or set(value) != set(fixed) | {'source_root', *ROLES}
            or any(type(value[k]) is not type(v) or value[k] != v for k, v in fixed.items())):
        invalid('Complete exact frozen source evidence required')
    result = {}
    for role in ROLES:
        rows = _rows(value[role])
        if value['source_root'] not in rows:
            invalid('Exact source root missing from a complete image')
        result[role] = {ref: dict(native_class=row['native_class'], kind=row['kind'],
                               cells=_cells(row, set(rows))) for ref, row in rows.items()}
    return result


def preparation(value, *, token, owner, state, result_id, sequence, kind, current, expected, oid,
                creation_material=None):
    enumeration = kind == 'enumeration'
    message = kind in MESSAGE_KINDS
    message_executable=message and type(value) is dict and value.get('profile')=='native_create_message_exact_preparation_v2'
    enum_executable = enumeration and type(value) is dict and value.get('profile') == 'native_create_enum_exact_preparation_v2'
    declaration = kind in ('variable', 'enumeration') or message
    keys = PREPARATION_KEYS | {'declaration_evidence'} if declaration else PREPARATION_KEYS
    if enum_executable:
        keys |= {'enum_origin'}
        if creation_material is None: creation_material = value.get('enum_origin', {}).get('creation_material')
    if message:
        keys |= {'message_origin'}
        if creation_material is None and type(value) is dict:
            creation_material=value.get('message_origin',{}).get('creation_material')
    if (type(value) is not dict or set(value) != keys
            or kind not in {'literal','operator','variable','enumeration'}|MESSAGE_KINDS or state not in ('applied', 'reverted')
            or type(sequence) is not int or not 1 <= sequence < 100000
            or any(type(x) is not str or not re.fullmatch(r'edit_[0-9a-f]{64}', x) for x in (token, owner, result_id))
            or result_id in (token, owner)):
        invalid('Exact graphical creation history context required')
    fixed = dict(profile='native_create_message_exact_preparation_v2' if message_executable else
        'native_create_message_exact_preparation_v1' if message else
        'native_create_enum_exact_preparation_v2' if enum_executable else
        'native_create_enum_exact_preparation_v1' if enumeration else
        'native_create_exact_preparation_v2' if declaration else 'native_create_exact_preparation_v1',
        native_token=token, owner_change_id=owner,
        result_change_id=result_id, state=state, sequence=sequence, kind=kind, before=current, expected=expected,
        created_original_retained=True, declaration_body_restore_verified=False, model_setters_called=0,
        store_called=False, write_authorized=False, local_merge_enabled=False)
    if (any(type(value[k]) is not type(v) or value[k] != v for k, v in fixed.items())
            or type(value['signature']) is not str
            or not re.fullmatch(re.escape(token) + r'/b[1-9][0-9]*', value['signature'])):
        invalid('Actual owner, target or zero-write preparation differs')
    try:
        if any(g.get('diagram') != 'Main' or g.get('targets') != [] for g in (current, expected)):
            invalid('Complete ordinary Main observations required')
        inverse = plan(expected, current, current, operation='create_block')
        if inverse['compatible'] is not True or inverse['expected'] != expected:
            invalid('Full typed target must invert exactly one created occurrence and pins')
        a = {r['ref']: r for r in current['entries']}
        b = {r['ref']: r for r in expected['entries']}
        changed = a.keys() ^ b.keys()
        changed_rows = a if state == 'applied' else b
        allowed = ('node', 'pin', 'model') if declaration else ('node', 'pin')
        nodes = [changed_rows[ref] for ref in changed if changed_rows[ref]['kind'] == 'node']
        models = [changed_rows[ref] for ref in changed if changed_rows[ref]['kind'] == 'model']
        if ((len(a)-len(b)) * (1 if state == 'applied' else -1) <= 0
                or any(changed_rows[ref]['kind'] not in allowed for ref in changed)
                or len(nodes) != 1 or len(models) != int(declaration)):
            invalid('Exact creation must own one occurrence, its pins and its bound declaration only')
        node = nodes[0]
        if node['native_class'] != ('SGDataGO' if message else {'literal': 'SGLiteralGO', 'operator': 'SGOperatorGO',
                                   'variable': 'SGDataGO', 'enumeration': 'SGDataGO'}[kind]):
            invalid('Created native class differs from the fixed graphical kind')
        if declaration:
            expected_api=MESSAGE_API_CLASSES[kind] if message else 'EtasAPIModelScalar'
            if node.get('model_ref') != models[0]['ref'] or models[0]['native_class'] != expected_api:
                invalid('Variable occurrence must bind the sole original scalar model')
            if message:
                from bd_message_declaration_history import preparation as message_preparation
                if creation_material is None:
                    invalid('Message preparation requires complete original Module forward material')
                body=creation_material['declaration_material']
                # Public API flags classify three exclusive message classes.
                # SGVariable attribute bits separately encode duplex send+receive.
                typed_message=dict(global_label=body['request_name'],scope=body['message_scope'],
                    receive=kind=='receive_message',
                    send=kind=='send_message',send_receive=kind=='send_receive_message')
                if (models[0].get('model_type')!=body['model_type'] or models[0].get('message')!=typed_message
                        or creation_material['component_oid']!=oid or creation_material['native_token']!=token):
                    invalid('Message typed role/type/scope differs from original declaration material')
                message_preparation(value['declaration_evidence'],expected_present=state=='reverted',
                    creation_material=creation_material,origin=value['message_origin'])
            elif enumeration:
                from bd_enum_declaration_history import preparation as enum_preparation
                if (creation_material is None or models[0].get('model_type') != 'enum'
                        or creation_material['component_oid'] != oid or creation_material['native_token'] != token
                        or models[0].get('definition') != {
                            'oid': creation_material['declaration_material']['definition_oid'],
                            'path': creation_material['declaration_material']['definition_path']}):
                    invalid('Enum preparation requires its actual original definition and forward material')
                enum_preparation(value['declaration_evidence'], expected_present=state == 'reverted',
                                 creation_material=creation_material, origin=value.get('enum_origin'))
            else:
                from bd_declaration_history import preparation as declaration_preparation
                if value['declaration_evidence'].get('profile') != 'native_declaration_exact_target_v2':
                    invalid('Variable preparation requires complete read-cache origin evidence')
                declaration_preparation(value['declaration_evidence'], expected_present=state == 'reverted',
                                        model_oid=models[0]['ref'])
        left, right = value['parent_before'], value['parent_expected']
        validate_preparation(left, right, token=token, diagram='Main')
        drawing.validate_preparation(value['drawing_before'], value['drawing_expected'], token=token,
                                     diagram='Main', physical_before=left, physical_expected=right)
        deltas = []
        for l, r in ((left, right), (value['drawing_before'], value['drawing_expected'])):
            bigger, smaller = (l['members'], r['members']) if state == 'applied' else (r['members'], l['members'])
            introduced = set(bigger)-set(smaller)
            if (len(introduced) != 1 or len(bigger) != len(smaller)+1
                    or [ref for ref in bigger if ref not in introduced] != smaller):
                invalid('One occurrence inverse must preserve all other ordered members')
            deltas.append(introduced)
        if deltas[0] != deltas[1]:
            invalid('Physical and drawing targets must own the same original occurrence')
        native_current = validate_current(value['graphical_current'])
        native_original = validate_current(value['graphical_original'])
        if not native_original.keys() <= native_current.keys():
            invalid('Native historical target must use already retained exact objects')
        desired = dict(profile='native_graphical_current_v1', complete=True,
                       objects=list({**native_current, **native_original}.values()))
        if not same_current(desired, value['graphical_expected']):
            invalid('Full native target must retain every detached original and actual image')
        images = source_images(value['source_evidence'], oid)
        alloc = value['allocator']
        if (type(alloc) is not dict or set(alloc) != {'field','before','expected','rewind_authorized','retained_for_redo'}
                or alloc['field'] != 'highestUsedGraphicalIdentifier' or type(alloc['before']) is not int
                or alloc['before'] < 0 or type(alloc['expected']) is not int or alloc['expected'] != alloc['before']
                or alloc['rewind_authorized'] is not False or alloc['retained_for_redo'] is not True):
            invalid('Explicit unchanged high-water is required while original redo remains retained')
        root = value['source_evidence']['source_root']
        high = images['current'][root]['cells'][alloc['field']]
        old_high = images['original'][root]['cells'][alloc['field']]
        if high != ['integer', 'SmallInteger', str(alloc['before'])] or int(old_high[-1]) > alloc['before']:
            invalid('Source allocator evidence differs from the exact current high-water')
        if not images['original'].keys() <= images['current'].keys():
            invalid('Source target cannot manufacture missing historical identities')
        source_desired = deepcopy({**images['current'], **images['original']})
        source_desired[root]['cells'][alloc['field']] = high
        if source_desired != images['candidate']:
            invalid('Complete source target differs outside explicit retained allocator high-water')
    except (ValueError, KeyError, TypeError, StopIteration) as error:
        invalid(str(error))
    return clone(value)


def observed(value, prepared, *, oid):
    message=prepared['kind'] in MESSAGE_KINDS
    if message and prepared['profile']!='native_create_message_exact_preparation_v2':
        invalid('Message preparation does not authorize execution; independent actual history contract unavailable')
    enumeration = prepared['kind'] == 'enumeration'
    if enumeration and prepared['profile'] != 'native_create_enum_exact_preparation_v2':
        invalid('Enum preparation does not authorize execution; actual history contract unavailable')
    declaration = prepared['kind'] in ('variable', 'enumeration') or message
    keys = ACTUAL_KEYS | {'declaration_current', 'declaration_actual', 'declaration_schema',
        'declaration_target_verified', 'created_model_original_retained'} if declaration else ACTUAL_KEYS
    if enumeration: keys |= {'enum_definition_evidence'}
    if message:keys |= {'message_owner_evidence','message_persistence'}
    enum_persisted = enumeration and type(value) is dict and value.get('profile') == 'native_create_exact_actual_v4'
    if enum_persisted: keys |= {'enum_persistence'}
    profile = 'native_create_exact_actual_v5' if message else 'native_create_exact_actual_v4' if enum_persisted else 'native_create_exact_actual_v3' if enumeration else 'native_create_exact_actual_v2' if declaration else 'native_create_exact_actual_v1'
    if type(value) is not dict or set(value) != keys or value['profile'] != profile:
        invalid('Complete actual graphical creation history required')
    proof = value['execution']
    fixed = dict(profile='native_create_exact_execution_v4' if message else 'native_create_exact_execution_v3' if enumeration else
        'native_create_exact_execution_v2' if declaration else 'native_create_exact_execution_v1',
        native_token=prepared['native_token'],
        head_change_id=prepared['owner_change_id'], result_change_id=prepared['result_change_id'],
        sequence=prepared['sequence']+1, before_state=prepared['state'],
        after_state='reverted' if prepared['state']=='applied' else 'applied', phase='terminal',
        model_operations=1, drawing_assignments=len(prepared['drawing_expected']['members']),
        store_started=True, store_completed=True, terminal_verified=True)
    execution_keys = EXECUTION_KEYS | {'declaration_primitives'} if declaration else EXECUTION_KEYS
    primitive_keys = ('native_primitives', 'source_primitives', 'declaration_primitives') if declaration else (
        'native_primitives', 'source_primitives')
    if (type(proof) is not dict or set(proof) != execution_keys
            or any(type(proof[k]) is not type(v) or proof[k] != v for k,v in fixed.items())
            or any(type(proof[k]) is not int or proof[k] < 0 for k in primitive_keys)
            or value['observation'] != prepared['expected'] or value['allocator'] != prepared['allocator']
            or any(value[k] is not True for k in ('created_original_retained','native_target_verified','source_target_verified'))
            or any(value[k] != prepared[p] for k,p in (('parent_before','parent_before'),
                ('parent_after','parent_expected'),('drawing_before','drawing_before'),('drawing_after','drawing_expected')))):
        invalid('Actual execution, original occurrence or target differs from durable preparation')
    try:
        if message:
            expected_persistence=dict(profile='native_message_owner_reference_commit_v1',component_oid=oid,
                owner_modified_started=True,owner_modified_completed=True,auto_commit_started=True,auto_commit_completed=True,
                native_source_declaration_targets_unchanged=True,model_setters_called=0,store_replayed=False)
            if (type(value['message_persistence']) is not dict or set(value['message_persistence'])!=set(expected_persistence)
                    or any(type(value['message_persistence'][k]) is not type(v) or value['message_persistence'][k]!=v
                        for k,v in expected_persistence.items())):
                invalid('Exact completed original message owner reference persistence required')
        if enum_persisted:
            expected_persistence = dict(profile='native_enum_owner_reference_commit_v1', component_oid=oid,
                owner_modified_started=True, owner_modified_completed=True, auto_commit_started=True,
                auto_commit_completed=True, native_source_declaration_targets_unchanged=True,
                model_setters_called=0, store_replayed=False)
            if (type(value['enum_persistence']) is not dict or set(value['enum_persistence']) != set(expected_persistence)
                    or any(type(value['enum_persistence'][k]) is not type(v) or value['enum_persistence'][k] != v
                        for k, v in expected_persistence.items())):
                invalid('Exact completed original Enum reference persistence required')
        if declaration:
            if message:
                from bd_message_declaration_history import observed as declaration_observed
            elif enumeration:
                from bd_enum_declaration_history import observed as declaration_observed
            else:
                from bd_declaration_history import observed as declaration_observed
            declaration_observed(value, prepared['declaration_evidence'])
        if not same_current(value['graphical_current'], prepared['graphical_current']):
            invalid('Actual complete native CURRENT differs from preparation')
        validate_actual_diff(value['graphical_current'], value['graphical_actual'])
        rows = {r['ref']: clone(r) for r in value['graphical_current']['objects']}
        for r in value['graphical_actual']['new_objects']:
            rows[r['ref']] = clone(r)
        for change in value['graphical_actual']['changes']:
            row = rows[change['object']]
            if change['kind'] == 'fields': row['value'][change['index']-1] = clone(change['after'])
            else: row['value'] = clone(change['after'])
        if not same_current(dict(profile='native_graphical_current_v1', complete=True, objects=list(rows.values())),
                            prepared['graphical_expected']):
            invalid('Every actual native change must reconstruct the complete prepared target')
        if source_images(value['source_actual_evidence'], oid) != source_images(prepared['source_evidence'], oid):
            invalid('Full actual source identities, fields and sharing differ from prepared target')
    except (ValueError, KeyError, TypeError) as error:
        invalid(str(error))
    return clone(value)


def summary(value):
    """Summarize persisted actual evidence without exporting native/source images."""
    from bd_native_graphical_effects import summary as graphical_summary
    result = dict(profile=value['profile'], sha256=fingerprint(value),
        execution=clone(value['execution']), allocator=clone(value['allocator']),
        created_original_retained=value['created_original_retained'],
        graphical_differences=graphical_summary(value['graphical_current'], value['graphical_actual']),
        source_sha256=fingerprint(value['source_actual_evidence']),
        source_objects={role: len(value['source_actual_evidence'][role]) for role in ROLES},
        detail_source='durable create_history_actual')
    if value['profile'] in ('native_create_exact_actual_v2','native_create_exact_actual_v3','native_create_exact_actual_v4','native_create_exact_actual_v5'):
        if value['profile']=='native_create_exact_actual_v5':
            from bd_message_declaration_history import summary as declaration_summary
        elif value['profile'] in ('native_create_exact_actual_v3','native_create_exact_actual_v4'):
            from bd_enum_declaration_history import summary as declaration_summary
        else:
            from bd_declaration_history import summary as declaration_summary
        result['declaration_differences'] = declaration_summary(value)
    return result
