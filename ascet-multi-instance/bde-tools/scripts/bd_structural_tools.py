"""Experimental structure view and typed sandbox patches for Doge."""
from collections import Counter
from contextlib import contextmanager
import json
import os
import re
import uuid
from pathlib import Path
import bd_service as service
from bd_edit_journal import JournalError, NativePreconditionConflict, fingerprint, clone
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structure_scope import CHILD_OPERATIONS, CHILD_CREATION_KINDS, diagram_of, qualify, valid_diagram

OPERATIONS = ('set_formula', 'set_formula_binding', 'set_table_axis', 'set_table_interpolation', 'set_table_values', 'set_distribution_values', 'set_matrix_values', 'set_array_values', 'set_sequence', 'set_scalar_value', 'set_sequence_number', 'create_block', 'set_literal', 'set_comment', 'move_node', 'set_edge_route', 'connect_data', 'disconnect_data', 'rewire_data', 'delete_node', 'create_transition',
              'delete_transition', 'delete_state', 'set_transition_priority', 'set_transition_esdl', 'rename_state')
UNCOLLECTED = ['method bodies and definitions', 'descendant scopes and parent/sibling graph; complete cross-scope semantics',
              'effective configuration and numeric implementation', 'complete method-call bindings']
OPERATIONS += ('create_hierarchy_port', 'delete_hierarchy_port')


def capture(component, session, diagram='Main'):
    if not isinstance(component, str) or '\\' not in component or len(component) > 2048:
        service.fail('INVALID_INPUT', 'Full component path required')
    if not valid_diagram(diagram):
        service.fail('INVALID_INPUT', 'Canonical Main/h<ID> hierarchy scope required')
    root = service.ROOT
    binary = root / 'analysis/live-api/AscetStructureRead.exe'
    sources = [root / 'scripts/AscetStructureRead.cs', root / 'scripts/bde_structure_read.st']
    service.ensure_probe()
    if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in sources):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        service.run_process([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}', '/r:System.Web.Extensions.dll',
            f'/resource:{sources[1]},bde_structure_read.st', f'/out:{binary}', str(sources[0])], 30, build_step=True)
    sid = 's_' + uuid.uuid4().hex
    raw_path = service.STORE/'raw'/f'{sid}.json'
    with service.live_lock():
        try:
            service.run_process([str(binary), component, diagram, str(raw_path), 'all'], 20)
        except service.ToolError as error:
            if error.code == 'BRIDGE_FAILED' and raw_path.exists():
                diagnostic = json.loads(raw_path.read_text(encoding='utf-8'))
                message = diagnostic.get('error', '')
                if diagnostic.get('status') == 'error' and any(tag in message for tag in (
                        'BDE_SHARED_INTERFACE_CHANGED:', 'BDE_UNSTORED_PIN:')):
                    service.fail('INTERFACE_REFRESH_REQUIRED',
                        'Referenced Class interface changed or an interface pin has no stable native ID. '
                        'Refresh and store the affected caller graph before precise reading or editing.',
                        diagnostic=message, raw_result=str(raw_path), model_setters_called=0)
            raise
        raw = json.loads(raw_path.read_text(encoding='utf-8'))
        if raw.get('status') != 'ok' or raw['component'].strip('\\') != component.strip('\\'):
            service.fail('READ_INCOMPLETE', 'Structural capture failed')
        structure = raw['structure']
        if structure.get('diagram') != diagram:
            service.fail('IDENTITY_UNRESOLVED', 'Native scope differs from request')
        refs = [r['ref'] for r in structure['entries']]
        if len(refs) != len(set(refs)):
            service.fail('IDENTITY_UNRESOLVED', 'Duplicate native structural IDs')
        record = {'snapshot': sid, 'session': session, 'source': 'native_structure_v1',
            'scope': {'profile': 'native_structure_v1', 'targets': [], 'include_layout': True},
            'structure': structure, 'counts': dict(Counter(r['kind'] for r in structure['entries'])),
            'database': raw['database'], 'component': raw['component'], 'oid': raw['oid'],
            'ascet_process_epoch': raw['ascet_process_epoch'], 'observed_at_utc': raw['observed_at_utc'],
            'dirty_editors': [raw['dirty_before'], raw['dirty_after']], 'unresolved_bindings': 'not_collected',
            'raw_sha256': service.digest(raw_path.read_bytes()),
            'read_strategy': 'fixed_native_structural_block',
            'connection_type_source': 'fresh graph under the same root source; exact scope/endpoints/route; ambiguous types rejected',
            'sampling': 'retained_graph_instance; source and bounded current recursive pin-shape comparison; not an atomic database snapshot'}
        record['logic'] = '\n'.join(service.dump({'ref': 'Main/'+r['ref'], **{k:v for k,v in r.items() if k!='ref'}}) for r in structure['entries'])
        if diagram != 'Main':
            record['scope']['diagram'] = diagram
            record['logic'] = '\n'.join(service.dump({'ref': qualify(record, r['ref']), **{k:v for k,v in r.items() if k!='ref'}}) for r in structure['entries'])
        record['integrity_sha256'] = service.digest(record)
        service.commit_observation(record)
        return record


def select(structure, targets):
    if not targets:
        return {**clone(structure), 'targets': []}
    rows = {r['ref']: r for r in structure['entries']}
    selected = set(targets) & rows.keys()
    for ref in targets:
        selected.update(rows.get(ref, {}).get('pins', []))
    calls={(rows[ref].get('sequence') or {}).get('id') for ref in selected if rows[ref].get('sequence')}
    selected.update(ref for ref,row in rows.items() if row.get('sequence') and row['sequence']['id'] in calls)
    seeds = set(selected)
    for row in rows.values():
        if row['kind'] in ('edge', 'transition') and seeds & {row['ref'], row['source'], row['target']}:
            selected.update((row['ref'], row['source'], row['target']))
    selected.update(rows[ref]['owner'] for ref in list(selected) if ref in rows and rows[ref]['kind'] == 'pin' and rows[ref].get('owner') in rows)
    selected.update(rows[ref]['model_ref'] for ref in list(selected) if ref in rows and 'model_ref' in rows[ref])
    return {**clone(structure), 'targets': targets, 'entries': [r for r in structure['entries'] if r['ref'] in selected]}


def plan(record, op):
    if not isinstance(op, dict):
        service.fail('INVALID_INPUT', 'Structural operation must be an object')
    action = op.get('op')
    if action not in OPERATIONS:
        service.fail('CAPABILITY_UNAVAILABLE', 'Unsupported structural action')
    diagram = diagram_of(record)
    if not valid_diagram(diagram):
        service.fail('IDENTITY_UNRESOLVED', 'Invalid snapshot diagram scope')
    if diagram != 'Main' and action not in CHILD_OPERATIONS:
        service.fail('CAPABILITY_UNAVAILABLE', 'Child scope operation unavailable')
    if action == 'create_block':
        if diagram != 'Main' and op.get('kind') not in CHILD_CREATION_KINDS:
            service.fail('CAPABILITY_UNAVAILABLE', 'Creation kind unavailable within child scope')
        if record['structure'].get('targets'):
            service.fail('READ_INCOMPLETE', 'Creation requires a complete observation of the selected structural scope')
        from bd_structure_journal import validate_creation
        try:
            arguments = validate_creation(op)
        except JournalError as error:
            service.fail(error.code, str(error))
        for field in ('x_distribution','y_distribution'):
            if field in op:
                model = next((row for row in record['structure']['entries'] if row['ref']==op[field][5:]), None)
                if model is None:
                    service.fail('TARGET_NOT_FOUND','Distribution is outside this snapshot: '+op[field])
                if model.get('native_class')!='EtasAPIModelDistribution':
                    service.fail('INVALID_INPUT','Grouped tables require a distribution model, not another declaration')
        return action, arguments, select(record['structure'], [])
    allowed = {'set_table_axis': {'op','target','axis','expect','values'}, 'set_table_interpolation': {'op','target','expect','mode'}, 'set_table_values': {'op','target','expect','values'}, 'set_distribution_values': {'op','target','expect','values'}, 'set_matrix_values': {'op','target','expect','values'}, 'set_array_values': {'op','target','expect','values'}, 'set_sequence': {'op','target','expect','number','method'}, 'set_scalar_value': {'op','target','expect','value'}, 'set_sequence_number': {'op','target','expect','number'}, 'set_literal': {'op','target','expect','value'}, 'set_comment': {'op','target','text'},
        'move_node': {'op','target','position'}, 'set_edge_route': {'op','target','points'},
        'connect_data': {'op','source','target'}, 'create_transition': {'op','source','target','out_position','in_position'},
        'rewire_data': {'op','target','source','expect'}, 'set_transition_priority': {'op','target','priority'},
        'set_transition_esdl': {'op','target','slot','text'}, 'rename_state': {'op','target','name'}}.get(action, {'op','target'})
    allowed = {'set_formula':{'op','target','expect','text'},
               'set_formula_binding':{'op','target','formal_oid','expect','actual'}}.get(action,allowed)
    if action == 'create_hierarchy_port':
        allowed = {'op', 'target', 'direction', 'name'}
    if set(op)-allowed:
        service.fail('INVALID_INPUT', 'Unexpected operation fields')
    rows = {r['ref']: r for r in record['structure']['entries']}
    def ref(key, kinds):
        value = op.get(key)
        prefix = diagram + '/'
        if not isinstance(value, str) or not value.startswith(prefix) or value[len(prefix):] not in rows:
            service.fail('TARGET_NOT_FOUND', 'Use an exact reference from this structure scope')
        value = value[len(prefix):]
        if rows[value]['kind'] not in kinds:
            service.fail('INVALID_INPUT', 'Target kind does not match operation')
        return value
    if action in ('create_hierarchy_port', 'delete_hierarchy_port'):
        from bd_hierarchy_ports import validate
        try:
            validate(op)
        except JournalError as error:
            service.fail(error.code, str(error))
        if record['structure'].get('targets') or record['structure'].get('diagram_kind') != 'block_diagram':
            service.fail('READ_INCOMPLETE', 'Hierarchy port editing requires the complete ordinary parent scope')
        target = ref('target', ('node',) if action == 'create_hierarchy_port' else ('pin',))
        owner = target if action == 'create_hierarchy_port' else rows[target]['owner']
        if owner not in rows or 'hierarchy_name' not in rows[owner]:
            service.fail('INVALID_INPUT', 'Target must be a hierarchy or its external pin in the parent scope')
        if action == 'create_hierarchy_port':
            if any(rows[p]['name'] == op['name'] for p in rows[owner]['pins']):
                service.fail('PRECONDITION_CONFLICT', 'Hierarchy port name already exists')
            params = [target, op['direction'], op['name']]
        else:
            params = [target]
        return action, [[], *params], select(record['structure'], [])
    if action in ('connect_data', 'create_transition'):
        kinds = ('pin',) if action == 'connect_data' else ('state',)
        source, target = ref('source', kinds), ref('target', kinds)
        params = [source, target]
        if action == 'create_transition':
            for name in ('out_position', 'in_position'):
                value = op.get(name)
                if not isinstance(value, list) or len(value) != 2 or any(type(n) is not int or abs(n)>100000 for n in value):
                    service.fail('INVALID_INPUT', 'Transition positions require two bounded integers')
                params.extend(value)
        seeds = [source, target]
    else:
        kind = 'edge' if action in ('disconnect_data', 'rewire_data', 'set_edge_route') else 'node' if action in ('delete_node','set_literal','set_comment','move_node') else 'state' if action in ('delete_state', 'rename_state') else 'transition'
        if action in ('set_sequence_number','set_sequence'):kind='pin'
        if action in ('set_scalar_value','set_array_values','set_matrix_values','set_distribution_values','set_table_values','set_table_axis','set_table_interpolation'):kind='model'
        if action in ('set_formula','set_formula_binding'):kind='model'
        target = ref('target', (kind,))
        if action in ('delete_node','move_node','set_literal','set_comment') and (rows[target].get('hierarchy_boundary') or 'hierarchy_name' in rows[target]):
            service.fail('CAPABILITY_UNAVAILABLE', 'Hierarchy and boundary node edits require cross-scope recovery')
        params, seeds = [target], [target]
        if action in ('set_formula','set_formula_binding'):
            from bd_formula_contract import validate as validate_formula
            try:validate_formula(op)
            except JournalError as error:service.fail(error.code,str(error))
            row=rows[target];formula=row.get('dependent_formula',{})
            if row.get('native_class')!='EtasAPIModelScalar' or row.get('model_type')!='cont' or formula.get('status')!='read':
                service.fail('CAPABILITY_UNAVAILABLE','Collected existing dependent continuous scalar formula required')
            if action=='set_formula':
                if op['expect']!={k:formula[k] for k in ('text','compiled')}:
                    service.fail('PRECONDITION_CONFLICT','Formula expectation differs from snapshot')
                params.append(op['text'])
            else:
                bindings=formula.get('bindings',{})
                if bindings.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Existing default configuration binding required')
                matches=[v for v in bindings['values'] if v['formal_oid']==op['formal_oid']]
                if len(matches)!=1 or matches[0]['actual_ref'] is None:service.fail('CAPABILITY_UNAVAILABLE','Existing exact formal binding required')
                old=matches[0]['actual_ref']
                if op['expect']!={'actual':'Main/'+old}:service.fail('PRECONDITION_CONFLICT','Formal binding expectation differs from snapshot')
                actual=op['actual'][5:]
                for name in (old,actual):
                    if name not in rows or rows[name]['kind']!='model':service.fail('READ_INCOMPLETE','Both binding models must be in this snapshot')
                candidate=rows[actual]
                if candidate.get('native_class')!='EtasAPIModelScalar' or candidate.get('model_type')!='cont' or candidate.get('parameter') is not True or 'dependent_formula' in candidate:
                    service.fail('CAPABILITY_UNAVAILABLE','Independent continuous scalar parameter required for binding')
                seeds.extend([old,actual]);params.extend([op['formal_oid'],actual])
        if action in ('set_table_axis','set_table_interpolation'):
            from bd_table_settings import validate_axis,validate_interpolation
            from bd_distribution_values import encode_distribution
            row=rows[target];value=row.get('default_value',{})
            if row.get('group_table'):service.fail('CAPABILITY_UNAVAILABLE','Grouped-table configuration editing requires a separate dependency closure')
            if (row.get('native_class') not in ('EtasAPIModelOneDTable','EtasAPIModelTwoDTable')
                or value.get('status')!='read' or row.get('model_type') not in ('cont','sdisc','udisc')):
                service.fail('CAPABILITY_UNAVAILABLE','Collected independent local numeric table required')
            try:(validate_axis if action=='set_table_axis' else validate_interpolation)(op)
            except JournalError as error:service.fail(error.code,str(error))
            if action=='set_table_axis':
                axis=op['axis']
                if row.get('fixed_table') or axis not in value:service.fail('CAPABILITY_UNAVAILABLE','Existing ordinary table axis required; fixed axes are unsupported')
                if op['expect']!={'values':value[axis]}:service.fail('PRECONDITION_CONFLICT','Table axis expectation differs from snapshot')
                try:encoded=encode_distribution(row['model_type'],op['values'])
                except JournalError as error:service.fail(error.code,str(error))
                params.extend((axis,encoded))
            else:
                observed={k:value.get(k) for k in ('interpolation_linear','interpolation_rounded')}
                observed['declared_interpolation']=row.get('declared_interpolation')
                if 'declared_interpolation' not in row:service.fail('CAPABILITY_UNAVAILABLE','Collected declared interpolation required')
                if op['expect']!=observed:
                    service.fail('PRECONDITION_CONFLICT','Table interpolation expectation differs from snapshot')
                params.append(op['mode'])
        if action=='set_table_values':
            from bd_table_values import encode_table,validate_shape
            row=rows[target];value=row.get('default_value',{})
            if row.get('native_class') not in ('EtasAPIModelOneDTable','EtasAPIModelTwoDTable') or value.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Collected independent local table defaults required')
            if row.get('group_table'):service.fail('CAPABILITY_UNAVAILABLE','Grouped-table configuration editing requires a separate dependency closure')
            try:
                validate_shape(op)
                encode_table(row['model_type'],op['expect']['values'])
                encoded=encode_table(row['model_type'],op['values'])
            except JournalError as error:service.fail(error.code,str(error))
            if op['expect']!={'values':value['values']}:service.fail('PRECONDITION_CONFLICT','Table expectation differs from snapshot')
            params.append(encoded)
        if action=='set_matrix_values':
            from bd_matrix_values import encode_matrix,validate_shape,shape
            row=rows[target];value=row.get('default_value',{})
            if row.get('native_class')!='EtasAPIModelMatrix' or value.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Collected local matrix defaults required')
            try:
                validate_shape(op)
                encode_matrix(row['model_type'],op['expect']['values'])
                encoded=encode_matrix(row['model_type'],op['values'])
            except JournalError as error:service.fail(error.code,str(error))
            if op['expect']!={'values':value['values']}:service.fail('PRECONDITION_CONFLICT','Matrix expectation differs from snapshot')
            if any(n>m for n,m in zip(shape(op['values']),value['declared_max_size'])):service.fail('INVALID_INPUT','Matrix exceeds declared maximum size')
            params.append(encoded)
        if action=='set_array_values':
            from bd_array_values import encode_values,validate_shape
            row=rows[target];value=row.get('default_value',{})
            if row.get('native_class')!='EtasAPIModelArray' or value.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Collected local array defaults required')
            try:
                validate_shape(op)
                encode_values(row['model_type'],op['expect']['values'])
                encoded=encode_values(row['model_type'],op['values'])
            except JournalError as error:service.fail(error.code,str(error))
            if op['expect']!={'values':value['values']}:service.fail('PRECONDITION_CONFLICT','Array expectation differs from snapshot')
            if len(op['values'])>value['declared_max_size']:service.fail('INVALID_INPUT','Array exceeds declared maximum size')
            params.append(encoded)
        if action=='set_distribution_values':
            from bd_distribution_values import encode_distribution,validate_shape
            row=rows[target];value=row.get('default_value',{})
            if row.get('native_class')!='EtasAPIModelDistribution' or value.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Collected local distribution defaults required')
            try:
                validate_shape(op)
                encode_distribution(row['model_type'],op['expect']['values'],check_order=False)
                encoded=encode_distribution(row['model_type'],op['values'])
            except JournalError as error:service.fail(error.code,str(error))
            if op['expect']!={'values':value['values']}:service.fail('PRECONDITION_CONFLICT','Distribution expectation differs from snapshot')
            if len(op['values'])>value['declared_max_size']:service.fail('INVALID_INPUT','Distribution exceeds declared maximum size')
            params.append(encoded)
        if action=='set_scalar_value':
            row=rows[target];value=row.get('default_value',{})
            if row.get('native_class') not in ('EtasAPIModelScalar','EtasAPIConstant') or value.get('status')!='read':service.fail('CAPABILITY_UNAVAILABLE','Only collected local scalar defaults are editable')
            if op.get('expect')!={'value':value['value']}:service.fail('PRECONDITION_CONFLICT','Scalar expectation differs from snapshot')
            from bd_structure_journal import encode_scalar_value
            try:
                encode_scalar_value(row['model_type'],op['expect']['value'])
                params.append(encode_scalar_value(row['model_type'],op.get('value')))
            except JournalError as error:service.fail(error.code,str(error))
        if action in ('set_sequence_number','set_sequence'):
            sequence=rows[target].get('sequence')
            if not sequence:service.fail('CAPABILITY_UNAVAILABLE','Target pin has no collected sequence call')
            if op.get('expect')!={k:sequence[k] for k in ('number','method')}:service.fail('PRECONDITION_CONFLICT','Sequence expectation differs from snapshot')
            if type(op.get('number')) is not int or not 0<=op['number']<=100000:service.fail('INVALID_INPUT','Bounded sequence number required')
            params.append(op['number'])
            if action=='set_sequence':
                from bd_contract_values import bounded_text
                if not bounded_text(op.get('method')):service.fail('INVALID_INPUT','Bounded exact method name required')
                params.append(op['method'])
        if action == 'set_edge_route':
            from bd_structure_journal import validate_route
            try:
                encoded=validate_route(op.get('points'))
            except JournalError as error:
                service.fail(error.code,str(error))
            route=rows[target]['route']
            if op['points'][0]!=route[0] or op['points'][-1]!=route[-1]:
                service.fail('PRECONDITION_CONFLICT','Route endpoints must remain at the observed connected pins')
            params.append(encoded)
        if action in ('set_literal', 'set_comment'):
            field = 'literal' if action == 'set_literal' else 'comment'
            text = op.get('value', {}).get('text') if action == 'set_literal' and isinstance(op.get('value'), dict) else op.get('text')
            if field not in rows[target] or not isinstance(text, str) or not 1 <= len(text) <= 256:
                service.fail('INVALID_INPUT', 'Expected matching node kind and bounded text')
            if action == 'set_literal' and (op.get('expect') != {'text': rows[target][field]} or set(op.get('value', {})) != {'text'}):
                service.fail('PRECONDITION_CONFLICT', 'Literal expectation differs from snapshot')
            params.append(text)
        if action == 'move_node':
            value = op.get('position')
            if not isinstance(value, list) or len(value) != 2 or any(type(v) is not int or not 1 <= v <= 100000 for v in value):
                service.fail('INVALID_INPUT', 'Move anchor requires two positive integers')
            params.extend(value)
        if action == 'rewire_data':
            source = ref('source', ('pin',))
            if 'expect' in op and op['expect'] != {'source': diagram+'/'+rows[target]['source'], 'native_connection_type': rows[target]['type']}:
                service.fail('PRECONDITION_CONFLICT', 'Rewire expectation differs from snapshot')
            params.append(source)
            seeds.append(source)
        if action == 'set_transition_priority':
            priority = op.get('priority')
            if type(priority) is not int or not 0 <= priority <= 100000:
                service.fail('INVALID_INPUT', 'Invalid transition priority')
            params.append(priority)
        if action == 'set_transition_esdl':
            if op.get('slot') not in ('condition', 'action') or not isinstance(op.get('text'), str) or len(op['text'])>4096:
                service.fail('INVALID_INPUT', 'Expected bounded condition/action ESDL')
            params += [op['slot'], op['text']]
        if action == 'rename_state':
            if not isinstance(op.get('name'), str) or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}', op['name']):
                service.fail('INVALID_INPUT', 'Expected a bounded state identifier')
            params.append(op['name'])
    # Freeze existing closure refs so deleted edges do not make boundary pins
    # falsely appear deleted in the after observation.
    targets = sorted(r['ref'] for r in select(record['structure'], seeds)['entries'])
    if action == 'connect_data' and os.environ.get('ASCET_BD_CONNECT_HISTORY') in ('native_source_exact_v1', 'native_source_local_v1'):
        if diagram != 'Main' or record['structure'].get('targets') != []:
            service.fail('READ_INCOMPLETE', 'Exact retained connection history requires a complete Main snapshot')
        targets = []
    before = select(record['structure'], targets)
    return action, [targets, *params], before


def publish_after(log, receipt, domain, component):
    """Publish only the immutable native after observation, never merge stale rows.

    No ASCET call or read-history entry: this snapshot is derived from a durable
    observed journal event. Its ID and timestamp are stable across request replay.
    """
    events = log.read(receipt['change_id'])
    observed = next((e for e in reversed(events) if e['kind'] == 'observed'), None)
    if observed is None:
        return receipt
    record = _publish_structure(receipt['change_id'], observed, observed['payload']['after'], domain, component)
    children = []
    for effect in observed['payload'].get('scope_effects', []):
        if effect['after'] is not None:
            child = _publish_structure(receipt['change_id'], observed, effect['after'], domain, component, effect['diagram'])
            children.append({'diagram': effect['diagram'], 'snapshot': child['snapshot'], 'scope': child['scope']})
    return {**receipt, 'component': component, 'diagram': diagram_of(record),
            'after_snapshot': record['snapshot'], 'after_scope': record['scope'],
            'scope_after_snapshots': children, 'observation_source': 'persisted_actual_after', 'additional_ASCET_reads': 0}


def _publish_structure(change_id, observed, structure, domain, component, child_scope=None):
    identity = {'change_id': change_id, 'event': observed['checksum']}
    if child_scope is not None:
        identity['scope_effect'] = child_scope
    sid = 's_' + service.digest(identity)[:32]
    record = {'snapshot': sid, 'session': domain['session'], 'source': 'native_edit_observation_v1',
        'scope': {'profile': 'native_structure_v1', 'targets': structure['targets'], 'include_layout': True},
        'structure': clone(structure), 'counts': dict(Counter(r['kind'] for r in structure['entries'])),
        'database': domain['database'], 'component': component, 'oid': domain['oid'],
        'ascet_process_epoch': domain['process_epoch'], 'observed_at_utc': observed['utc'],
        'unresolved_bindings': 'not_collected', 'read_strategy': 'edit_native_after_observation',
        'connection_type_source': 'fresh graph under the same root source; exact scope/endpoints/route; ambiguous types rejected',
        'sampling': 'actual native journal observation; no stale rows merged',
        'edit_origin': {'change_id': change_id, 'event_sha256': observed['checksum']}}
    record['logic'] = '\n'.join(service.dump({'ref': 'Main/'+r['ref'], **{k:v for k,v in r.items() if k!='ref'}}) for r in structure['entries'])
    if diagram_of(record) != 'Main':
        record['scope']['diagram'] = diagram_of(record)
        record['logic'] = '\n'.join(service.dump({'ref': qualify(record, r['ref']), **{k:v for k,v in r.items() if k!='ref'}}) for r in structure['entries'])
    record['integrity_sha256'] = service.digest(record)
    path = service.STORE/'snapshots'/f'{sid}.json'
    path.parent.mkdir(parents=True, exist_ok=True)
    try:
        service.write_once(path, record)
    except FileExistsError:
        if service.load_record(sid, 's_', 'snapshots') != record:
            service.fail('JOURNAL_CONFLICT', 'Edit observation snapshot collision')
    return record


def execute(tool, args, session, budget):
    allowed = {'snapshot','request_id','operations','preview'} if tool == 'bd_edit' else {'change_id','request_id','preview','finalize'}
    if set(args)-allowed or any(key in args and type(args[key]) is not bool for key in ('preview','finalize')):
        service.fail('INVALID_INPUT', 'Invalid structural tool fields')
    if os.environ.get('ASCET_BD_STRUCTURAL_WRITES') != '1':
        service.fail('CAPABILITY_UNAVAILABLE', 'Structural writes require ASCET_BD_STRUCTURAL_WRITES=1 and an isolated Trial_* component')
    from bd_sandbox_edit import binding, load_binding
    log = StructureJournal(service.STORE/'edits')
    try:
        if tool == 'bd_edit':
            record = service.load_record(args.get('snapshot'), 's_', 'snapshots')
            if 'structure' not in record:
                service.fail('INVALID_INPUT', 'Use bd_read(view=structure) before structural editing')
            operations = args.get('operations')
            if not isinstance(operations, list) or len(operations) != 1:
                service.fail('INVALID_INPUT', 'One structural patch per call')
            action, arguments, before = plan(record, operations[0])
            domain = {'session': record['session'], 'database': record['database'], 'oid': record['oid'], 'process_epoch': record['ascet_process_epoch']}
            component, snapshot = record['component'], record['snapshot']
            diagram = diagram_of(record)
            request = {'domain': domain, 'component': component, 'diagram': diagram, 'request_id': args.get('request_id'),
                       'operation': action, 'arguments': arguments, 'expect': fingerprint(before)}
        else:
            selected = log.read(args.get('change_id'))[0]['payload']
            source = log.origin(args['change_id'])['intent']
            if 'operation' not in source:
                service.fail('REVERT_UNAVAILABLE', 'Not a structural edit ancestry')
            if not {'domain', 'component', 'diagram', 'arguments'} <= set(source):
                service.fail('REVERT_UNAVAILABLE', 'Complete original structural edit binding required')
            domain, component = source['domain'], source['component']
            diagram = source['diagram']
            snapshot = load_binding(args['change_id'])['snapshot']
            request = {'domain': domain, 'request_id': args.get('request_id'), 'reverts': args['change_id']}
        if domain['session'] != session:
            service.fail('IDENTITY_UNRESOLVED', 'Original Doge session required')
        if not isinstance(request['request_id'], str) or not 1<=len(request['request_id'])<=256:
            service.fail('INVALID_INPUT', 'Bounded request_id required')
        if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component.strip('\\')):
            service.fail('CAPABILITY_UNAVAILABLE', 'Sandbox components only')
        adapter = NativeStructureAdapter(component, diagram)
        @contextmanager
        def locked():
            with service.live_lock():
                try:
                    yield
                finally:
                    adapter.close()
        if args.get('finalize'):
            if tool!='bd_revert' or source['operation']!='create_block':
                service.fail('INVALID_INPUT','finalize requires a completed graphical creation undo')
            from bd_create_finalize_journal import preview,execute as finalize
            if not args.get('preview'):
                binding(request,component,snapshot)
            receipt=(preview(log,args['change_id'],request['request_id'],adapter,locked) if args.get('preview')
                else finalize(log,args['change_id'],request['request_id'],adapter,locked))
            if not args.get('preview'):
                try:receipt=publish_after(log,receipt,domain,component)
                except Exception as error:
                    receipt={**receipt,'after_snapshot':None,'snapshot_publication_error':str(error),'automatic_retry':False}
        elif args.get('preview'):
            if tool == 'bd_revert' and source['operation'] == 'create_block' and adapter.create_history_capable:
                from bd_create_history_journal import preview
                receipt = preview(log, args['change_id'], request['request_id'], adapter, locked)
                result = service.paged(service.dump({**receipt, 'component': component, 'diagram': diagram}),
                    {'tool': tool, 'status': receipt['status'], 'capability': 'experimental_structural_sandbox'}, session, budget)
                result['is_error'] = receipt['status'] != 'preview'
                return result
            if tool == 'bd_revert' and source['operation'] == 'connect_data' and adapter.connect_history_capable:
                from bd_connect_journal import preview
                receipt = preview(log, args['change_id'], request['request_id'], adapter, locked)
                result = service.paged(service.dump({**receipt, 'component': component, 'diagram': diagram}),
                    {'tool': tool, 'status': receipt['status'], 'capability': 'experimental_structural_sandbox'}, session, budget)
                result['is_error'] = receipt['status'] != 'preview'
                return result
            if tool == 'bd_revert':
                original = log.read(args['change_id'])
                if 'reverts' in selected:
                    context = log.managed_context(args['change_id'])
                    result_id = 'edit_' + fingerprint({'domain': domain, 'request_id': request['request_id']})
                    topology = 'topology_head' in context
                    if topology and source['operation'] not in getattr(adapter, 'managed_topology_operations', ()):
                        service.fail('REVERT_UNAVAILABLE', 'Explicit native managed topology capability required')
                    with locked():
                        current = adapter.observe(domain, [] if topology else source['arguments'][0])
                        receipt = {'status': 'conflict', 'setter_called': False, 'operation': 'managed_inverse',
                            'before': current, 'recovery_record_created': False, 'execution_revalidates': True}
                        candidate = None
                        can_validate = current == context['after']
                        if topology:
                            from bd_managed_topology import candidate as topology_candidate
                            candidate, receipt['inverse_analysis'] = topology_candidate(context, current)
                            can_validate = candidate['compatible']
                        elif getattr(adapter, 'local_field_inverse_capable', False) is True:
                            from bd_field_inverse import plan as field_plan, summary as field_summary
                            candidate = field_plan(context['before'], context['after'], current, operation=source['operation'])
                            can_validate = candidate['compatible']
                            receipt['inverse_analysis'] = field_summary(candidate, current)
                        if can_validate:
                            try:
                                if topology:
                                    from bd_managed_topology import prepare as topology_prepare
                                    prepared = topology_prepare(adapter, domain, {**context, 'result_change_id': result_id}, current)
                                    validated = prepared['before']
                                else:
                                    validated = adapter.validate_managed_inverse(domain, context['native_token'], args['change_id'],
                                        context['expected_state'], result_id)
                                expected_matches = candidate is None or fingerprint(getattr(adapter, 'inverse_expected', None)) == fingerprint(candidate['expected'])
                                receipt['status'] = 'preview' if validated == current and expected_matches else 'conflict'
                                receipt['validation'] = {'native_constraints': 'passed', 'observation_matches': validated == current,
                                    'inverse_expected_matches': expected_matches,
                                    'history_head': args['change_id'], 'expected_state': context['expected_state']}
                            except Exception as error:
                                receipt.update(status='conflict' if isinstance(error, NativePreconditionConflict) else 'rejected', error=str(error))
                    result = service.paged(service.dump({**receipt, 'component': component, 'diagram': diagram}),
                        {'tool': tool, 'status': receipt['status'], 'capability': 'experimental_structural_sandbox'}, session, budget)
                    result['is_error'] = receipt['status'] != 'preview'
                    return result
                if log.receipt(args['change_id'], original)['status'] not in ('applied_observed', 'postcondition_mismatch'):
                    service.fail('REVERT_UNAVAILABLE', 'Original edit has no observed completion')
                before = next(event['payload']['after'] for event in original if event['kind'] == 'observed')
                arguments = source['arguments']
                action = 'revert'
            with locked():
                current = adapter.observe(domain, arguments[0])
                local_candidate = None
                can_validate = current == before
                if (tool == 'bd_revert' and source['operation'] in ('set_literal', 'set_comment', 'move_node', 'set_edge_route')
                        and getattr(adapter, 'local_field_inverse_capable', False) is True):
                    from bd_field_inverse import plan as field_plan, summary as inverse_summary
                    original_before = next(event['payload']['before'] for event in original if event['kind'] == 'prepared')
                    local_candidate = field_plan(original_before, before, current, operation=source['operation'])
                    can_validate = local_candidate['compatible']
                if (tool == 'bd_revert' and source['operation'] in ('delete_node', 'disconnect_data')
                        and getattr(adapter, 'local_delete_inverse_capable', False) is True):
                    from bd_delete_inverse import plan as inverse_plan, summary as inverse_summary
                    original_before = next(event['payload']['before'] for event in original if event['kind'] == 'prepared')
                    local_candidate = inverse_plan(original_before, before, current)
                    can_validate = local_candidate['compatible']
                receipt = {'status': 'conflict', 'setter_called': False, 'operation': action, 'before': current,
                           'validation': {'observation_matches': current == before, 'native_constraints': 'not_checked'}}
                if local_candidate is not None:
                    receipt['inverse_analysis'] = inverse_summary(local_candidate, current)
                    receipt['validation']['original_after_matches'] = fingerprint(current) == fingerprint(before)
                if can_validate:
                    try:
                        validated = (adapter.validate_revert(domain, args['change_id']) if tool == 'bd_revert'
                                     else adapter.validate(domain, action, arguments))
                        receipt['validation']['observation_matches'] = validated == current
                        receipt['validation']['native_constraints'] = 'passed'
                        expected_matches = (local_candidate is None or fingerprint(getattr(adapter, 'inverse_expected', None))
                                            == fingerprint(local_candidate['expected']))
                        receipt['validation']['inverse_expected_matches'] = expected_matches
                        if (tool == 'bd_revert' and source['operation'] in ('delete_node', 'disconnect_data')
                                and getattr(adapter, 'graphical_evidence_required', False) is True):
                            from bd_parent_order_effects import validate_inverse as validate_parent_inverse
                            import bd_drawing_order_effects as drawing
                            observed = next(event['payload'] for event in original if event['kind'] == 'observed')
                            validate_parent_inverse(observed.get('parent_order_effects'), adapter.parent_order_before,
                                adapter.parent_order_expected, token=args['change_id'], diagram=diagram)
                            prepared = log._graphical_preparation(adapter, args['change_id'], source['operation'])
                            drawing.validate_inverse(observed.get('drawing_order_effects'), prepared['drawing_order_before'],
                                prepared['drawing_order_expected'], token=args['change_id'], diagram=diagram,
                                witness=prepared.get('drawing_order_witness'),
                                source_lookup=lambda proof: log.causal_drawing_source(proof, source),
                                component_oid=domain['oid'], generation=current['generation'])
                            receipt['validation']['drawing_evidence'] = 'passed'
                            proof = prepared.get('drawing_order_witness')
                            if proof is not None:
                                receipt['drawing_order_witness'] = {key: proof[key] for key in ('source_token', 'source_inverse_id')}
                                receipt['drawing_order_witness']['sha256'] = fingerprint(proof)
                        receipt['status'] = 'preview' if fingerprint(validated) == fingerprint(current) and expected_matches else 'conflict'
                    except Exception as error:
                        receipt['status'] = 'rejected'
                        receipt['validation']['native_constraints'] = 'not_confirmed'
                        receipt['error'] = str(error)
                receipt['recovery_record_created'] = False
                receipt['execution_revalidates'] = True
        else:
            binding(request, component, snapshot)
            receipt = log.execute(request, adapter, locked) if tool == 'bd_edit' else log.revert(args['change_id'], args['request_id'], adapter, locked)
            try:
                receipt = publish_after(log, receipt, domain, component)
            except Exception as error:
                # Publication failure cannot relabel an observed write as not executed.
                receipt = {**receipt, 'after_snapshot': None, 'snapshot_publication_error': str(error), 'automatic_retry': False}
        receipt = {**receipt, 'component': component, 'diagram': diagram}
        result = service.paged(service.dump(receipt), {'tool': tool, 'status': receipt['status'],
            'capability': 'experimental_structural_sandbox', 'change_id': receipt.get('change_id'),
            'after_snapshot': receipt.get('after_snapshot')}, session, budget)
        result['is_error'] = receipt['status'] not in ('applied_observed', 'verified_local', 'preview','finalized')
        return result
    except JournalError as error:
        service.fail(error.code, str(error))
