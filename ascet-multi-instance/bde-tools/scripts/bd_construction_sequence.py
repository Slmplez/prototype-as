"""Create/connect dependencies resolved exclusively from verified actual patches."""
from bd_edit_journal import clone, fingerprint, JournalError
from bd_structural_tools import plan, select
from bd_structure_journal import validate_request


KINDS = {'literal', 'comment', 'operator', 'control', 'hierarchy', 'variable', 'parameter', 'constant',
         'receive_message', 'send_message', 'send_receive_message', 'array', 'matrix', 'distribution',
         'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed', 'resource', 'delta_t',
         'implementation_cast', 'enumeration', 'component', 'oned_table_group', 'twod_table_group', 'existing_model'}


def definition_dependency(op):
    value = op.get('definition')
    if not isinstance(value, dict):
        return None
    if (set(value) != {'step'} or type(value['step']) is not int or not 0 <= value['step'] < 16
            or not (op.get('kind') == 'enumeration' or
                    (op.get('kind') in ('receive_message', 'send_message', 'send_receive_message') and op.get('model_type') == 'enum'))):
        raise JournalError('INVALID_INPUT', 'Only enum declarations/messages can select a created definition step')
    return value['step']


def model_dependencies(op):
    dependencies = {}
    for field in ('x_distribution', 'y_distribution', 'model'):
        value = op.get(field)
        if value is None or (field != 'model' and isinstance(value, str)):
            continue
        if (not isinstance(value, dict) or set(value) != {'step'} or type(value['step']) is not int
                or not 0 <= value['step'] < 16
                or (field == 'model' and op.get('kind') != 'existing_model')):
            raise JournalError('INVALID_INPUT', 'Created model selector requires an exact earlier declaration step')
        dependencies[field] = value['step']
    return dependencies


def creation_deferred(op):
    return definition_dependency(op) is not None or bool(model_dependencies(op))


def validation_template(op):
    value = clone(op)
    if definition_dependency(value) is not None:
        value['definition'] = 'BDE_Tool_Experiments\\__deferred_enum__'
    for field in model_dependencies(value):
        if field == 'model':
            if 'name' in value:
                raise JournalError('INVALID_INPUT', 'Created model occurrence derives its name from actual identity')
            value.pop('model')
            value['name'] = '__deferred_model__'
        else:
            value[field] = 'Main/m_0'
    return value


def validate_input_steps(steps):
    from bd_contract_values import bounded_text
    from bd_structure_journal import validate_creation
    if not isinstance(steps, list) or not 2 <= len(steps) <= 16:
        raise JournalError('INVALID_INPUT', 'Construction requires 2..16 steps')
    for index, step in enumerate(steps):
        if (not isinstance(step, dict) or set(step) != {'snapshot', 'operations'}
                or not bounded_text(step['snapshot'], maximum=256) or not isinstance(step['operations'], list)
                or len(step['operations']) != 1 or not isinstance(step['operations'][0], dict)):
            raise JournalError('INVALID_INPUT', 'Construction requires snapshot and one typed operation')
        op = step['operations'][0]
        if op.get('op') == 'create_block':
            validate_creation(validation_template(op))
            if op['kind'] not in KINDS:
                raise JournalError('INVALID_INPUT', 'Unsupported construction kind')
            dependency = definition_dependency(op)
            if dependency is not None:
                prior = steps[dependency]['operations'][0] if dependency < index else {}
                if prior.get('op') != 'create_block' or prior.get('kind') != 'enumeration' or 'new_definition' not in prior:
                    raise JournalError('INVALID_INPUT', 'Definition selector requires an earlier new enum creation')
            for field, dependency in model_dependencies(op).items():
                prior = steps[dependency]['operations'][0] if dependency < index else {}
                from bd_structure_journal import MODEL_CLASSES
                if (prior.get('op') != 'create_block' or
                        (prior.get('kind') != 'distribution' if field != 'model' else
                         prior.get('kind') not in set(MODEL_CLASSES) | {'component'})):
                    raise JournalError('INVALID_INPUT', 'Created distribution/occurrence selector has no earlier matching declaration')
        elif op.get('op') == 'connect_data' and set(op) == {'op', 'source', 'target'}:
            for field, direction in (('source', 'output'), ('target', 'input')):
                pin = op[field]
                if isinstance(pin, str) and bounded_text(pin, maximum=256):
                    continue
                if (not isinstance(pin, dict) or set(pin) - {'step', 'direction', 'name'}
                        or not {'step', 'direction'} <= set(pin) or type(pin['step']) is not int
                        or not 0 <= pin['step'] < index or pin['direction'] != direction
                        or steps[pin['step']]['operations'][0]['op'] != 'create_block'
                        or ('name' in pin and not bounded_text(pin['name'], maximum=256))):
                    raise JournalError('INVALID_INPUT', 'Created endpoint must select an earlier creation and exact direction/name')
        else:
            raise JournalError('INVALID_INPUT', 'Unsupported construction operation')


def resource(patch):
    return patch['domain']['oid'], patch['diagram']


def validate_steps(request):
    baselines, names, inputs, definitions = {}, set(), set(), set()
    for index, step in enumerate(request['steps']):
        if set(step) != {'snapshot', 'request', 'baseline', 'template'}:
            raise JournalError('INVALID_INPUT', 'Construction step requires its immutable baseline and template')
        patch, base, op = step['request'], step['baseline'], step['template']
        key = resource(patch)
        if base.get('targets') or base.get('diagram') != patch['diagram']:
            raise JournalError('READ_INCOMPLETE', 'Construction requires a complete selected scope')
        if key in baselines and baselines[key] != base:
            raise JournalError('PRECONDITION_CONFLICT', 'Construction scope baselines differ')
        baselines[key] = base
        if patch['expect'] != fingerprint(base):
            raise JournalError('PRECONDITION_CONFLICT', 'Construction baseline fingerprint differs')
        if op.get('op') == 'create_block':
            validate_request(patch)
            if op.get('kind') not in KINDS:
                raise JournalError('CAPABILITY_UNAVAILABLE', 'Creation kind requires separate dependency recovery validation')
            dependency = definition_dependency(op)
            if dependency is not None:
                prior = request['steps'][dependency] if dependency < index else {}
                previous = prior.get('template', {})
                if (previous.get('kind') != 'enumeration' or 'new_definition' not in previous
                        or prior['request']['domain'] != patch['domain']):
                    raise JournalError('CAPABILITY_UNAVAILABLE', 'Created enum dependencies require the same exact component owner')
            for field, dependency in model_dependencies(op).items():
                prior = request['steps'][dependency] if dependency < index else {}
                if not prior or prior['request']['domain'] != patch['domain']:
                    raise JournalError('CAPABILITY_UNAVAILABLE', 'Created model dependencies require the same exact component owner')
            if 'new_definition' in op:
                name = op['new_definition']['name']
                if name in definitions:
                    raise JournalError('INVALID_INPUT', 'Construction repeats a shared enum type name')
                definitions.add(name)
            # Declaration names are component-wide, even when occurrences are nested.
            if op['kind'] not in ('literal', 'comment', 'operator', 'control', 'hierarchy', 'existing_model'):
                name = patch['domain']['oid'], op['name']
                if name in names:
                    raise JournalError('INVALID_INPUT', 'Construction repeats a declaration name')
                names.add(name)
        elif op.get('op') == 'connect_data' and set(op) == {'op', 'source', 'target'}:
            if patch['operation'] != 'connect_data' or patch['arguments'] is not None:
                raise JournalError('INVALID_INPUT', 'Deferred connection must have unresolved arguments')
            validate_request({**patch, 'arguments': [['p0', 'p1'], 'p0', 'p1']})
            for field, direction in (('source', 'output'), ('target', 'input')):
                endpoint = op[field]
                if isinstance(endpoint, str):
                    prefix = patch['diagram'] + '/'
                    rows = {row['ref']: row for row in base['entries']}
                    row = rows.get(endpoint[len(prefix):]) if endpoint.startswith(prefix) else None
                    if row is None or row['kind'] != 'pin' or row.get(direction) is not True:
                        raise JournalError('INVALID_INPUT', 'Existing endpoint requires an exact directional pin')
                    if field == 'target' and any(r['kind'] == 'edge' and r['target'] == row['ref'] for r in rows.values()):
                        raise JournalError('PRECONDITION_CONFLICT', 'Construction input is occupied')
                else:
                    if (not isinstance(endpoint, dict) or set(endpoint) - {'step', 'direction', 'name'}
                            or not {'step', 'direction'} <= set(endpoint) or type(endpoint['step']) is not int
                            or not 0 <= endpoint['step'] < index or endpoint['direction'] != direction
                            or ('name' in endpoint and (not isinstance(endpoint['name'], str) or not 1 <= len(endpoint['name']) <= 256))):
                        raise JournalError('INVALID_INPUT', 'Created pin selector requires an earlier step and exact direction/name')
                    prior = request['steps'][endpoint['step']]
                    if prior['request']['operation'] != 'create_block' or resource(prior['request']) != key:
                        raise JournalError('INVALID_INPUT', 'Created pin must belong to an earlier creation in the same exact scope')
            target = key + (fingerprint(op['target']),)
            if target in inputs:
                raise JournalError('INVALID_INPUT', 'Construction repeats an input selector')
            inputs.add(target)
        else:
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Construction supports explicit create_block and connect_data only')


def request_for(args, session):
    import bd_service as service
    from bd_structure_scope import diagram_of
    steps = []
    validate_input_steps(args.get('steps'))
    token = 'flow_' + fingerprint({'session': session, 'request_id': args['request_id']})
    for index, value in enumerate(args['steps']):
        if not isinstance(value, dict) or set(value) != {'snapshot', 'operations'} or len(value['operations']) != 1:
            service.fail('INVALID_INPUT', 'Construction step requires snapshot and one operation')
        record = service.load_record(value['snapshot'], 's_', 'snapshots')
        if record.get('session') != session or 'structure' not in record:
            service.fail('IDENTITY_UNRESOLVED', 'Construction requires current-session structure snapshots')
        op = value['operations'][0]
        if op.get('op') == 'create_block':
            if model_dependencies(op):
                from bd_structure_journal import validate_creation
                from bd_structure_scope import CHILD_CREATION_KINDS
                if diagram_of(record) != 'Main' and op['kind'] not in CHILD_CREATION_KINDS:
                    service.fail('CAPABILITY_UNAVAILABLE', 'Creation kind unavailable within child scope')
                action, arguments = 'create_block', validate_creation(validation_template(op))
            else:
                action, arguments, _ = plan(record, validation_template(op))
        else:
            action, arguments = op.get('op'), None
        patch = {'domain': {'session': session, 'database': record['database'], 'oid': record['oid'],
                            'process_epoch': record['ascet_process_epoch']},
                 'component': record['component'], 'diagram': diagram_of(record),
                 'request_id': 'group-step-' + fingerprint({'group': token, 'index': index}),
                 'operation': action, 'arguments': arguments, 'expect': fingerprint(record['structure'])}
        steps.append({'snapshot': record['snapshot'], 'request': patch, 'baseline': clone(record['structure']), 'template': clone(op)})
    request = {'session': session, 'request_id': args['request_id'], 'mode': 'construction_sequence', 'steps': steps}
    from bd_group_journal import validate_group
    validate_group(request)
    return request


def observed_patch(local, token):
    events = local.read(token)
    receipt = local.receipt(token, events)
    if receipt['status'] != 'applied_observed':
        raise JournalError('PRECONDITION_CONFLICT', 'A dependency lacks a verified actual patch')
    return events[0]['payload'], receipt['differences']


def adjust_counts(state):
    for key, kind in (('lookup_nodes', 'node'), ('lookup_edges', 'edge')):
        if key in state:
            state[key] = sum(row['kind'] == kind for row in state['entries'])


def apply_patch_rows(state, differences, reverse=False):
    rows = {row['ref']: row for row in state['entries']}
    for delta in differences:
        old, new = (delta['after'], delta['before']) if reverse else (delta['before'], delta['after'])
        if rows.get(delta['ref']) != old:
            raise JournalError('PRECONDITION_CONFLICT', 'Actual dependency patch differs from the current observation')
        if new is None:
            rows.pop(delta['ref'])
        else:
            rows[delta['ref']] = clone(new)
    state['entries'] = sorted(rows.values(), key=lambda row: row['ref'])
    adjust_counts(state)


def scope_differences(source, target, differences):
    if resource(source) == resource(target):
        return differences
    if source['domain']['oid'] == target['domain']['oid']:
        return [delta for delta in differences if (delta['after'] or delta['before'])['kind'] == 'model']
    return []


def resolved_patch(request, index, completed, local):
    step = request['steps'][index]
    patch, predicted = clone(step['request']), clone(step['baseline'])
    actual = {}
    for item in completed:
        prior, differences = observed_patch(local, item['receipt']['change_id'])
        actual[item['index']] = (prior, differences)
        apply_patch_rows(predicted, scope_differences(prior, patch, differences))
    op = clone(step['template'])
    for field, dependency in model_dependencies(op).items():
        if dependency not in actual:
            raise JournalError('PRECONDITION_CONFLICT', 'Created declaration dependency has not completed')
        prior, differences = actual[dependency]
        models = [d['after'] for d in differences if d['before'] is None and d['after']['kind'] == 'model']
        if prior['operation'] != 'create_block' or prior['domain'] != patch['domain'] or len(models) != 1:
            raise JournalError('IDENTITY_UNRESOLVED', 'Declaration selector lacks one actual created model identity')
        current = next((r for r in predicted['entries'] if r['ref'] == models[0]['ref'] and r['kind'] == 'model'), None)
        if current is None or current.get('name') != models[0]['name']:
            raise JournalError('IDENTITY_UNRESOLVED', 'Created model identity changed before its dependent setter')
        if field == 'model':
            op.pop(field)
            op['name'] = current['name']
        else:
            if current.get('native_class') != 'EtasAPIModelDistribution':
                raise JournalError('IDENTITY_UNRESOLVED', 'Grouped table selector requires an actual distribution model')
            op[field] = 'Main/' + current['ref']
    dependency = definition_dependency(op)
    if dependency is not None:
        if dependency not in actual:
            raise JournalError('PRECONDITION_CONFLICT', 'Created enum dependency has not completed')
        prior, differences = actual[dependency]
        prior_receipt = next(item['receipt'] for item in completed if item['index'] == dependency)
        effects = local.receipt(prior_receipt['change_id'], local.read(prior_receipt['change_id'])).get('library_effects', [])
        models = [d['after'] for d in differences if d['before'] is None and d['after']['kind'] == 'model']
        if (prior['operation'] != 'create_block' or prior['domain'] != patch['domain']
                or len(effects) != 1 or len(models) != 1 or effects[0].get('kind') != 'enumeration_definition'
                or effects[0].get('before') is not None or not effects[0].get('after')
                or models[0].get('definition', {}).get('oid') != effects[0].get('oid')
                or models[0].get('definition', {}).get('path', '').strip('\\') != effects[0].get('path', '').strip('\\')):
            raise JournalError('IDENTITY_UNRESOLVED', 'Created enum requires its verified actual definition identity and library effect')
        op['definition'] = effects[0]['path']
    if op['op'] == 'connect_data':
        for field in ('source', 'target'):
            endpoint = op[field]
            if isinstance(endpoint, str):
                continue
            if endpoint['step'] not in actual:
                raise JournalError('PRECONDITION_CONFLICT', 'Created pin dependency has not completed')
            prior, differences = actual[endpoint['step']]
            added = [d['after'] for d in differences if d['before'] is None and d['after']['kind'] == 'node']
            if prior['operation'] != 'create_block' or len(added) != 1:
                raise JournalError('IDENTITY_UNRESOLVED', 'Creation did not produce exactly one recorded occurrence')
            refs = set(added[0]['pins'])
            candidates = [row for row in predicted['entries'] if row['ref'] in refs and row.get(endpoint['direction']) is True
                          and ('name' not in endpoint or row.get('name') == endpoint['name'])]
            if len(candidates) != 1:
                raise JournalError('IDENTITY_UNRESOLVED', 'Created pin selector is missing or ambiguous; later setters stopped')
            op[field] = patch['diagram'] + '/' + candidates[0]['ref']
    record = {'structure': predicted, 'scope': {'diagram': patch['diagram']}}
    action, arguments, before = plan(record, op)
    return {**patch, 'operation': action, 'arguments': arguments, 'expect': fingerprint(before)}


def preflight(request, adapters):
    observations = []
    for step in request['steps']:
        patch = step['request']
        with adapters(patch) as adapter:
            before = adapter.observe(patch['domain'], [])
            if before != step['baseline']:
                raise JournalError('PRECONDITION_CONFLICT', 'Construction resource changed before any setter')
            if (patch['operation'] == 'create_block' and not creation_deferred(step['template'])
                    and adapter.validate(patch['domain'], patch['operation'], patch['arguments']) != before):
                raise JournalError('PRECONDITION_CONFLICT', 'Creation preflight observed a different state')
            observations.append(before)
    return observations


def preflight_inverse(steps, adapters, local):
    states, tokens = {}, {}
    for _, token, patch, _ in steps:
        key = resource(patch)
        tokens.setdefault(patch['domain']['oid'], []).append(token)
        if key not in states:
            with adapters(patch) as adapter:
                states[key] = adapter.observe(patch['domain'], [])
    for oid, ids in tokens.items():
        patch = next(step[2] for step in steps if step[2]['domain']['oid'] == oid)
        with adapters(patch) as adapter:
            adapter.validate_construction_group(patch['domain'], ids)
    for _, token, patch, after in steps:
        virtual = states[resource(patch)]
        if select(virtual, patch['arguments'][0]) != after:
            raise JournalError('PRECONDITION_CONFLICT', 'Construction inverse conflicts before any restoration')
        _, differences = observed_patch(local, token)
        for key, state in states.items():
            target = {'domain': {'oid': key[0]}, 'diagram': key[1]}
            apply_patch_rows(state, scope_differences(patch, target, differences), reverse=True)
        before = next(e['payload']['before'] for e in local.read(token) if e['kind'] == 'prepared')
        if select(virtual, patch['arguments'][0]) != before:
            raise JournalError('PRECONDITION_CONFLICT', 'Construction inverse differs from the actual before')
    return steps
