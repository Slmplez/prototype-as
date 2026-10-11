"""Validate actual factory capture; declarations need separate restoration proof."""
import re
from bd_edit_journal import JournalError, clone, fingerprint
from bd_parent_order_effects import validate_preparation
from bd_native_graphical_effects import validate_current, validate_actual_diff, same_current, summary as graphical_summary
import bd_drawing_order_effects as drawing

KEYS = frozenset(('profile native_token component_oid diagram operation kind phase before after '
    'parent_before drawing_before parent_after drawing_after graphical_before graphical_actual '
    'created_native_ref created_model_oid created_definition_oid model_oids_before model_oids_after '
    'original_native_objects original_source_objects actual_native_objects actual_source_objects '
    'source_root_preserved created_original_retained allocator_observations model_setters_called '
    'store_called write_authorized managed_inverse_enabled declaration_body_restore_verified').split())


def validate(value, *, token, oid, kind, phase):
    from bd_delete_inverse import _rows
    def invalid(message):
        raise JournalError('CREATE_MATERIAL_INVALID', message)
    version2 = isinstance(value, dict) and value.get('profile') == 'native_create_material_v2'
    version3 = isinstance(value, dict) and value.get('profile') == 'native_create_material_v3'
    version4 = isinstance(value, dict) and value.get('profile') == 'native_create_material_v4'
    expected_keys = KEYS | {'declaration_material'} if version2 or version3 or version4 else KEYS
    if (type(value) is not dict or set(value) != expected_keys or phase not in ('prepared', 'attached')
            or not re.fullmatch(r'edit_[0-9a-f]{64}', token)):
        invalid('Exact original creation receipt required')
    fixed = dict(profile='native_create_material_v4' if version4 else 'native_create_material_v3' if version3 else 'native_create_material_v2' if version2 else 'native_create_material_v1', native_token=token, component_oid=oid,
        diagram='Main', operation='create_block', kind=kind, phase=phase,
        source_root_preserved=True, created_original_retained=phase == 'attached',
        model_setters_called=0, store_called=False, write_authorized=False,
        managed_inverse_enabled=False, declaration_body_restore_verified=False)
    if any(type(value.get(k)) is not type(v) or value[k] != v for k,v in fixed.items()):
        invalid('Creation identity, phase or capture-only proof differs')
    try:
        if version2:
            if kind != 'variable': invalid('Audited variable factory required for declaration material v2')
            from bd_declaration_material import validate as declaration_validate
            declaration_validate(value['declaration_material'], token=token, oid=oid, phase=phase)
        if version3:
            if kind != 'enumeration': invalid('Existing enum factory required for declaration material v3')
            from bd_enum_declaration_material import validate as enum_validate
            enum_validate(value['declaration_material'], token=token, oid=oid, phase=phase)
            if value['created_definition_oid'] is not None:
                invalid('Enum declaration v3 cannot own an unprepared new library definition')
        if version4:
            from bd_message_declaration_material import KINDS, validate as message_validate
            if kind not in KINDS:
                invalid('Primitive message factory required for declaration material v4')
            declaration = message_validate(value['declaration_material'], token=token, oid=oid, phase=phase)
            if declaration['kind'] != kind or value['created_definition_oid'] is not None:
                invalid('Original message role differs or claims a new library definition')
        graphs = [value['before']] + ([value['after']] if phase == 'attached' else [])
        for graph in graphs:
            _rows(graph)
            if (graph.get('diagram') != 'Main' or graph.get('diagram_kind') != 'block_diagram'
                    or graph.get('targets') != []):
                invalid('Complete ordinary Main typed capture required')
            if version3 and (type(graph.get('generation')) is not int
                    or graph['generation'] != value['declaration_material']['generation']):
                invalid('Original enum namespace generation differs from complete typed capture')
            if version4 and (type(graph.get('generation')) is not int
                    or graph['generation'] != value['declaration_material']['generation']):
                invalid('Original message namespace generation differs from complete typed capture')
        validate_current(value['graphical_before'])
        for field in ('original_native_objects', 'original_source_objects'):
            if type(value[field]) is not int or not 0 < value[field] <= 100000:
                invalid('Complete original material count required')
        if len(value['graphical_before']['objects']) != value['original_native_objects']:
            invalid('Original native material count differs from full image')
        old = value['model_oids_before']
        if type(old) is not list or len(set(old)) != len(old) or any(type(x) is not str or not x for x in old):
            invalid('Exact original declaration OIDs required')
        if set(old) != {row['ref'] for row in value['before']['entries'] if row['kind'] == 'model'}:
            invalid('Original model identities differ from complete typed declaration rows')
        if version4 and len(old) != len(value['declaration_material']['model_refs_before']):
            invalid('Original complete message declaration censuses differ')
        if phase == 'prepared':
            if any(value[k] is not None for k in ('after','parent_after','drawing_after','graphical_actual',
                    'created_native_ref','created_model_oid','created_definition_oid','model_oids_after',
                    'actual_native_objects','actual_source_objects')):
                invalid('Prepared capture cannot invent future factory resources')
            a = b = value['parent_before']; da = db = value['drawing_before']
        else:
            _rows(value['after']); validate_actual_diff(value['graphical_before'], value['graphical_actual'])
            for field in ('actual_native_objects','actual_source_objects'):
                if type(value[field]) is not int or not 0 < value[field] <= 100000:
                    invalid('Actual full captured material count required')
            a,b = value['parent_before'],value['parent_after']; da,db = value['drawing_before'],value['drawing_after']
            created = value['created_native_ref']
            if type(created) is not str or not re.fullmatch(r'o[1-9][0-9]*',created):
                invalid('Original actual created occurrence required')
            for left,right in ((a,b),(da,db)):
                if (created in left['members'] or right['members'].count(created) != 1
                        or [r for r in right['members'] if r != created] != left['members']):
                    invalid('Factory resource must explain the sole ordered insertion')
            now = value['model_oids_after']; model = value['created_model_oid']
            if (type(now) is not list or len(set(now)) != len(now) or any(type(x) is not str or not x for x in now)
                    or not set(old) <= set(now) or set(now)-set(old) != (set() if model is None else {model})):
                invalid('Actual declared model must be the sole original factory declaration')
            if set(now) != {row['ref'] for row in value['after']['entries'] if row['kind'] == 'model'}:
                invalid('Actual model identities differ from complete typed declaration rows')
            if version3:
                declaration = value['declaration_material']
                created_rows = [row for row in value['after']['entries'] if row['kind'] == 'model' and row['ref'] == model]
                if (len(created_rows) != 1 or created_rows[0].get('native_class') != 'EtasAPIModelScalar'
                        or created_rows[0].get('model_type') != 'enum'
                        or created_rows[0].get('definition') != dict(oid=declaration['definition_oid'], path=declaration['definition_path'])):
                    invalid('Actual enum scalar must bind the exact retained original definition')
            if version4:
                declaration = value['declaration_material']
                from bd_message_declaration_material import API_CLASS
                created_rows = [row for row in value['after']['entries'] if row['kind'] == 'model' and row['ref'] == model]
                expected_message = dict(scope=declaration['message_scope'], global_label=declaration['request_name'],
                    send=kind == 'send_message', receive=kind == 'receive_message',
                    send_receive=kind == 'send_receive_message')
                if (len(created_rows) != 1 or created_rows[0].get('native_class') != API_CLASS[kind]
                        or created_rows[0].get('name') != declaration['request_name']
                        or created_rows[0].get('model_type') != declaration['model_type']
                        or fingerprint(created_rows[0].get('message')) != fingerprint(expected_message)
                        or created_rows[0].get('definition') is not None
                        or len(now) != len(declaration['model_refs_after'])):
                    invalid('Actual message scalar must bind the exact original role/name/type/scope')
            if value['actual_native_objects'] != value['graphical_actual']['after_object_count']:
                invalid('Actual retained native union differs from complete graphical patch roster')
            definition = value['created_definition_oid']
            if definition is not None and (type(definition) is not str or not definition or kind != 'enumeration'):
                invalid('Only an actual enumeration factory can own a created definition')
        validate_preparation(a,b,token=token,diagram='Main')
        drawing.validate_preparation(da,db,token=token,diagram='Main',physical_before=a,physical_expected=b)
        if type(value['allocator_observations']) is not list or len(value['allocator_observations']) > 1:
            invalid('Explicit allocator observations required')
        for row in value['allocator_observations']:
            if (set(row) != {'field','before','after','rewind_authorized'}
                    or row['field'] != 'highestUsedGraphicalIdentifier' or row['rewind_authorized'] is not False
                    or type(row['before']) is not int
                    or (phase == 'prepared' and row['after'] is not None)
                    or (phase == 'attached' and type(row['after']) is not int)):
                invalid('Native allocator rewind cannot be authorized by capture')
    except (ValueError,KeyError,TypeError) as error:
        invalid(str(error))
    return clone(value)


def bind_preparation(value, before, arguments):
    """Join the validated declaration capture to actual preparation and request."""
    if value['profile'] not in ('native_create_material_v3', 'native_create_material_v4'):
        return
    label = 'Message' if value['profile'] == 'native_create_material_v4' else 'Enum'
    if value['phase'] != 'prepared' or value['before'] != before:
        raise JournalError('CREATE_MATERIAL_INVALID', label + ' material differs from actual typed preparation')
    if value['profile'] == 'native_create_material_v4':
        from bd_message_declaration_material import bind_request
        try:
            bind_request(value['declaration_material'], arguments)
        except (ValueError, TypeError, KeyError) as error:
            raise JournalError('CREATE_MATERIAL_INVALID', str(error)) from error
        return
    if (type(arguments) is not list or len(arguments) not in (6, 7)
            or arguments[0] != [] or arguments[1] != 'enumeration'
            or type(arguments[5]) is not str
            or arguments[5].startswith('NEWENUM|')
            or arguments[5].strip('\\') != value['declaration_material']['definition_path'].strip('\\')):
        raise JournalError('CREATE_MATERIAL_INVALID', 'Original selected enum definition differs from creation request')


def observation(before, after, prepared, actual, *, token, oid, kind):
    prepared = validate(prepared, token=token, oid=oid, kind=kind, phase='prepared')
    actual = validate(actual, token=token, oid=oid, kind=kind, phase='attached')
    for field in ('before','parent_before','drawing_before','graphical_before',
                  'model_oids_before','original_native_objects','original_source_objects'):
        if actual[field] != prepared[field]:
            raise JournalError('CREATE_MATERIAL_INVALID','Actual factory capture differs from durable '+field)
    if prepared['before'] != before or actual['after'] != after:
        raise JournalError('CREATE_MATERIAL_INVALID','Captured factory head differs from actual typed observation')
    parents=[dict(kind='parent_order',before=actual['parent_before'],after=actual['parent_after'])]
    drawings=[dict(kind='drawing_order',before=actual['drawing_before'],after=actual['drawing_after'])]
    from bd_parent_order_effects import differences
    result = dict(create_material_actual=actual, parent_order_effects=parents,
        parent_order_differences=differences(parents), drawing_order_effects=drawings,
        drawing_order_differences=drawing.differences(drawings),
        graphical_current=actual['graphical_before'],graphical_actual=actual['graphical_actual'],
        graphical_differences=graphical_summary(actual['graphical_before'],actual['graphical_actual']))
    if prepared['profile'] != actual['profile']:
        raise JournalError('CREATE_MATERIAL_INVALID', 'Actual factory declaration profile differs from prepared')
    if actual['profile'] in ('native_create_material_v2', 'native_create_material_v3', 'native_create_material_v4'):
        original = prepared['declaration_material']; terminal = actual['declaration_material']
        for key in ('before', 'before_schema', 'roots_before', 'configuration_links_before', 'owner_ref'):
            if original[key] != terminal[key]:
                raise JournalError('CREATE_MATERIAL_INVALID', 'Actual declaration differs from durable original ' + key)
        if actual['profile'] == 'native_create_material_v3':
            for key in ('generation', 'definition_oid', 'definition_path', 'definition_ref',
                        'enumeration_ref', 'definition_references_before'):
                if original[key] != terminal[key]:
                    raise JournalError('CREATE_MATERIAL_INVALID', 'Actual enum differs from durable original ' + key)
            from bd_enum_declaration_material import summary as declaration_summary
        elif actual['profile'] == 'native_create_material_v4':
            for key in ('generation', 'kind', 'request_name', 'model_type', 'message_scope',
                        'model_refs_before', 'owner_references_before', 'owner_database_record_references_before'):
                if original[key] != terminal[key]:
                    raise JournalError('CREATE_MATERIAL_INVALID', 'Actual message differs from durable original ' + key)
            from bd_message_declaration_material import summary as declaration_summary
        else:
            from bd_declaration_material import summary as declaration_summary
        result['declaration_differences'] = declaration_summary(terminal)
    return result


def summary(value):
    """Compact agent projection; complete factory evidence remains in the WAL."""
    result = {key: clone(value[key]) for key in (
        'profile', 'native_token', 'component_oid', 'diagram', 'kind', 'phase',
        'created_native_ref', 'created_model_oid', 'created_definition_oid',
        'original_native_objects', 'actual_native_objects',
        'original_source_objects', 'actual_source_objects',
        'source_root_preserved', 'created_original_retained', 'allocator_observations',
        'write_authorized', 'managed_inverse_enabled', 'declaration_body_restore_verified')} | {
        'sha256': fingerprint(value), 'detail_source': 'durable create_material_actual'}
    if value['profile'] in ('native_create_material_v2', 'native_create_material_v3', 'native_create_material_v4'):
        if value['profile'] == 'native_create_material_v3':
            from bd_enum_declaration_material import summary as declaration_summary
        elif value['profile'] == 'native_create_material_v4':
            from bd_message_declaration_material import summary as declaration_summary
        else:
            from bd_declaration_material import summary as declaration_summary
        result['declaration_material'] = declaration_summary(value['declaration_material'])
    return result


def same_material(left, right, *, token, oid, kind, phase):
    """Exact capture comparison with native unordered dictionary/set semantics.

    Ordered slots/arrays, declared roots, original IDs and every other receipt
    field remain exact. Only native image roster/dictionary/set enumeration is
    compared by the existing complete identity-image comparator.
    """
    a = validate(left, token=token, oid=oid, kind=kind, phase=phase)
    b = validate(right, token=token, oid=oid, kind=kind, phase=phase)
    if a['profile'] != b['profile']:
        return False
    if a['profile'] in ('native_create_material_v2', 'native_create_material_v3', 'native_create_material_v4'):
        da, db = a['declaration_material'], b['declaration_material']
        for key in ('before', 'after'):
            if da[key] is None or db[key] is None:
                if da[key] is not db[key]: return False
            elif not same_current(da[key], db[key]):
                return False
            da.pop(key); db.pop(key)
    return a == b
