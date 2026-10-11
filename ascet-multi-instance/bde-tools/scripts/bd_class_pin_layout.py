"""Plan existing Class pin coordinates from complete captured sources, without writes.

Storage references bind evidence within each capture. The resulting scoped keys
still require sealed native correspondence before a runtime setter may use them.
"""
from bd_service import digest
from bd_source_dependencies import _scopes
from bd_source_inverse_oracle import Node, decode_graph, equal, integer
from bd_storage_witness import inspect_storage_witness


PHASES = ('original', 'applied', 'current')


def _require(condition, message):
    if not condition:
        raise ValueError(message)


def _alias(value):
    _require(type(value) is tuple and len(value) == 3 and value[0] in ('bytes', 'string')
             and bool(value[2]), 'Exact source method/formal alias required')
    return value[0] + ':' + value[2]


def _point(value):
    _require(isinstance(value, Node) and value.native_class == 'Point'
             and value.kind == 'fields' and set(value.value) == {'x', 'y'},
             'Complete persisted pin position required')
    result = [integer(value.value[axis]) for axis in ('x', 'y')]
    _require(all(-2147483648 <= item <= 2147483647 for item in result),
             'Bounded integral persisted pin position required')
    return result


def _pins(block):
    _require(block.native_class in ('SGCodeGODB', 'SGDataGODB'),
             'Audited Class memory-block storage required')
    result, ids = {}, set()
    for kind in ('selectorPorts', 'returnPorts'):
        ports = block.value[kind]
        _require(isinstance(ports, Node) and ports.kind == 'dictionary', 'Complete method ports required')
        for method, formals in ports.value.items():
            _require(isinstance(formals, Node) and formals.kind == 'dictionary', 'Complete formal ports required')
            for formal, descriptor in formals.value.items():
                key = (kind, _alias(method), _alias(formal))
                _require(key not in result and isinstance(descriptor, Node)
                         and descriptor.kind == 'ordered' and len(descriptor.value) == 6,
                         'Unique complete six-field pin descriptor required')
                values = descriptor.value
                identifier = None if values[0] == ('nil',) else integer(values[0])
                _require(identifier is None or 0 <= identifier <= 2147483647 and identifier not in ids,
                         'Unique exact persisted pin identifier required')
                if identifier is not None:
                    ids.add(identifier)
                result[key] = {'identifier': identifier, 'position': _point(values[2]),
                               'metadata': [values[index] for index in (0, 1, 3, 4, 5)]}
    return result


def plan_pin_layout(source_graphs, oid, *, definition_oid, current_scopes, storage_witnesses, target_keys):
    """Return coordinate changes or conflicts, with source and storage lineage.

    This checks every existing descriptor of each selected occurrence, including
    the return method port. No array position, display name or source ref is an
    executable handle; the native binding stage remains explicitly required.
    """
    _require(type(source_graphs) is dict and set(source_graphs) == set(PHASES) | {'candidate'}
             and type(storage_witnesses) is dict and set(storage_witnesses) == set(PHASES)
             and type(current_scopes) is dict and type(definition_oid) is str and bool(definition_oid),
             'Complete original/applied/current/candidate layout context required')
    _require(type(target_keys) is list and len(target_keys) <= 8192
             and all(type(key) is str for key in target_keys) and len(set(target_keys)) == len(target_keys),
             'Unique exact current target keys required')
    decoded = {phase: decode_graph(graph, oid) for phase, graph in source_graphs.items()}
    if not target_keys:
        _require(oid == definition_oid and equal(decoded['current'], decoded['candidate']),
                 'Empty layout plan requires exact definition and complete unchanged source')
    scopes = {phase: _scopes(root, True) for phase, root in decoded.items()}
    bindings, proofs = {}, {}
    for phase in PHASES:
        witness = storage_witnesses[phase]
        proofs[phase] = inspect_storage_witness(witness, oid, witness.get('generation'),
            expected_source=source_graphs[phase], expected_scopes=current_scopes if phase == 'current' else None)
        if phase == 'current':
            _require(all('generation' not in body or body['generation'] == witness['generation']
                         for body in current_scopes.values()), 'Current layout capture generation differs')
        bindings[phase] = {row['native_key']: row for row in witness['witnesses'] if row['kind'] == 'node'}
    _require(all(set(items) == set(current_scopes) for items in scopes.values()),
             'Layout history hierarchy roster changed')
    selected = set()
    for key in target_keys:
        diagram, ref = key.rsplit('/', 1)
        _require(diagram in current_scopes, 'Layout target belongs to a foreign current scope')
        entries = current_scopes[diagram]['entries']
        matches = [entry for entry in entries if entry['ref'] == ref and entry['kind'] in ('node', 'pin')]
        _require(len(matches) == 1, 'Layout target is not an exact current node or pin')
        target = matches[0]
        if target['kind'] == 'pin':
            node_ref = target['owner']
            nodes = [entry for entry in entries if entry['kind'] == 'node' and entry['ref'] == node_ref]
            _require(len(nodes) == 1 and ref in nodes[0]['pins'], 'Layout target parent membership differs')
            selected.add((diagram, node_ref))
        else:
            _require(oid == definition_oid, 'Caller layout must bind an exact created input pin')
    rows, conflicts = [], []
    for diagram, node_ref in sorted(selected):
        node_key = diagram + '/' + node_ref
        node_id = int(node_ref.removeprefix('n'))
        triple = [bindings[phase].get(node_key) for phase in PHASES]
        _require(all(row is not None and row['cohort'] == 'blocks' for row in triple),
                 'Existing caller lacks exact storage-return history')
        _require(len({(row['native_class'], row['storage_class'], row['scope']) for row in triple}) == 1,
                 'Existing caller native class or scope lineage changed')
        blocks = {phase: items[diagram]['blocks'].get(node_id) for phase, items in scopes.items()}
        _require(all(isinstance(block, Node) for block in blocks.values())
                 and len({block.native_class for block in blocks.values()}) == 1,
                 'Exact existing caller storage identity changed')
        aliases = [_alias(blocks[phase].value.get('aliasName')) for phase in PHASES]
        _require(len(set(aliases)) == 1, 'Existing caller declaration alias changed')
        node = next(entry for entry in current_scopes[diagram]['entries'] if entry['ref'] == node_ref)
        models = [entry for entry in current_scopes[diagram]['entries']
                  if entry['kind'] == 'model' and entry['ref'] == node.get('model_ref')]
        _require(node.get('model_ref') == 'm_' + aliases[0].removeprefix('bytes:') and len(models) == 1
                 and models[0].get('definition', {}).get('oid') == definition_oid,
                 'Caller declaration or represented Class differs from independent current scope')
        pins = {phase: _pins(block) for phase, block in blocks.items()}
        node_targets = [key for key in target_keys if key.rsplit('/', 1)[0] == diagram
                        and any(entry['ref'] == key.rsplit('/', 1)[1] and entry.get('owner') == node_ref
                                for entry in current_scopes[diagram]['entries'])]
        for target_key in node_targets:
            target_id = int(target_key.rsplit('/p', 1)[1])
            created = [key for key, item in pins['applied'].items() if item['identifier'] == target_id]
            _require(len(created) == 1 and created[0] not in pins['original']
                     and created[0] in pins['current']
                     and pins['current'][created[0]] == pins['applied'][created[0]],
                     'Caller layout target is not an exact newly added unchanged descriptor')
        for identity, original in sorted(pins['original'].items()):
            _require(all(identity in pins[phase] for phase in ('applied', 'current', 'candidate')),
                     'Existing pin alias is missing from layout history')
            applied, current, candidate = (pins[phase][identity] for phase in ('applied', 'current', 'candidate'))
            _require(all(all(equal(left, right) for left, right in zip(original['metadata'], item['metadata']))
                         for item in (applied, current, candidate)),
                     'Existing pin identifier, direction or visibility lineage changed')
            pin_id = current['identifier']
            _require(pin_id is not None, 'Nil existing pin requires a separate native binding profile')
            pin_ref = 'p' + str(pin_id)
            observed = [entry for entry in current_scopes[diagram]['entries']
                        if entry['kind'] == 'pin' and entry['ref'] == pin_ref]
            if observed:
                _require(len(observed) == 1 and observed[0]['owner'] == node_ref and pin_ref in node['pins'],
                         'Existing pin is not in the independent current parent membership')
                membership = 'public_current_parent'
            else:
                _require(current['metadata'][2] == ('boolean', False) and pin_ref not in node['pins'],
                         'Visible existing pin is missing from the independent current parent membership')
                membership = 'hidden_storage_native_child_witness'
            before, after, now = (item['position'] for item in (original, applied, current))
            merged, restore, preserved, already_restored = list(now), [], [], []
            for index, axis in enumerate(('x', 'y')):
                if before[index] == after[index]:
                    if now[index] != after[index]:
                        preserved.append(axis)
                elif now[index] == after[index]:
                    merged[index] = before[index]
                    restore.append(axis)
                elif now[index] == before[index]:
                    already_restored.append(axis)
                else:
                    conflicts.append({'code': 'PIN_LAYOUT_FIELD_CONFLICT', 'native_key': diagram + '/' + pin_ref,
                                      'node_key': node_key, 'field': axis, 'original': before[index],
                                      'applied': after[index], 'current': now[index]})
            if not any(row['native_key'] == diagram + '/' + pin_ref for row in conflicts):
                _require(merged == candidate['position'], 'Pin layout plan differs from complete merged candidate')
            rows.append({'node_key': node_key, 'native_key': diagram + '/' + pin_ref,
                         'port_kind': identity[0], 'method_alias': identity[1], 'formal_alias': identity[2],
                         'pin_id': pin_id, 'model_alias': aliases[0], 'original': before, 'applied': after,
                         'current': now, 'merged': merged, 'restore_axes': restore, 'preserved_axes': preserved,
                         'already_restored_axes': already_restored,
                         'current_membership': membership,
                         'storage_lineage': {phase: {field: bindings[phase][node_key][field]
                            for field in ('native_class', 'storage_class', 'scope', 'source_ref', 'parent_ref')}
                            for phase in PHASES}})
    return {'profile': 'class_existing_pin_layout_plan_v1', 'oid': oid, 'definition_oid': definition_oid,
            'compatible': not conflicts, 'conflicts': conflicts, 'affected_callers': len(selected),
            'existing_pins_checked': len(rows), 'coordinate_restores': sum(len(row['restore_axes']) for row in rows),
            'hidden_pins_source_bound': sum(row['current_membership'] == 'hidden_storage_native_child_witness' for row in rows),
            'independent_coordinates_preserved': sum(len(row['preserved_axes']) for row in rows),
            'pins': rows, 'storage_witnesses': proofs,
            'source_sha256': {phase: digest(graph) for phase, graph in source_graphs.items()},
            'native_binding_required': True, 'model_setters_called': 0, 'write_authorized': False,
            'native_merge_executor_available': False}


def inspect_native_layout(value, oid, generation, *, plan=None, actual_changes=None):
    """Check actual native bindings/setter counts, then compare independent proposals."""
    _require(type(value) is dict and value.get('profile') == 'class_native_pin_layout_plan_v1'
             and value.get('oid') == oid and type(value.get('generation')) is int
             and value['generation'] == generation and value.get('compatible') is True
             and value.get('conflicts') == [] and type(value.get('model_setters_called')) is int
             and value['model_setters_called'] == 0 and value.get('write_authorized') is False
             and value.get('native_merge_executor_available') is False,
             'Exact private native layout audit without publication authority required')
    rows = value.get('pins')
    _require(type(rows) is list and len(rows) <= 100000 and type(value.get('existing_pins_checked')) is int
             and value['existing_pins_checked'] == len(rows), 'Complete actual native pin layout table required')
    fields = ('node_key', 'native_key', 'port_kind', 'method_alias', 'formal_alias', 'pin_id', 'model_alias',
              'original', 'applied', 'current', 'merged', 'restore_axes', 'preserved_axes', 'already_restored_axes')
    seen = set()
    for row in rows:
        _require(type(row) is dict and set(row) == set(fields) | {'native_binding_verified', 'memo_owned_connector_verified',
                                                               'connector_class', 'position_field_index'}
                 and row.get('native_binding_verified') is True and row.get('memo_owned_connector_verified') is True
                 and type(row.get('native_key')) is str and row['native_key'] not in seen
                 and row.get('connector_class') in ('SGBlockConnectorGO', 'SGArgumentConnectorGO',
                                                   'SGResultConnectorGO', 'SGSelectorConnectorGO')
                 and type(row.get('position_field_index')) is int and row['position_field_index'] > 0
                 and type(row.get('pin_id')) is int and row['pin_id'] >= 0,
                 'Exact unique native layout pin and memo-owned connector required')
        seen.add(row['native_key'])
        for name in ('original', 'applied', 'current', 'merged'):
            _require(type(row[name]) is list and len(row[name]) == 2 and all(type(item) is int for item in row[name]),
                     'Exact actual native layout coordinates required')
        for name in ('restore_axes', 'preserved_axes', 'already_restored_axes'):
            _require(type(row[name]) is list and all(item in ('x', 'y') for item in row[name])
                     and len(row[name]) == len(set(row[name])), 'Exact native layout field actions required')
    setters = sum(bool(row['restore_axes']) for row in rows)
    _require(type(value.get('affected_callers')) is int
             and value['affected_callers'] == len({row['node_key'] for row in rows})
             and all(type(value.get(key)) is int and value[key] == setters
                     for key in ('planned_coordinate_setters', 'actual_coordinate_setters')),
             'Actual native coordinate setter counts differ from exact field actions')
    if plan is not None:
        _require(plan['compatible'] is True and plan['oid'] == oid and plan['affected_callers'] == value['affected_callers'],
                 'Native layout caller coverage differs from independent proposal')
        expected = {row['native_key']: {field: row[field] for field in fields} for row in plan['pins']}
        actual = {row['native_key']: {field: row[field] for field in fields} for row in rows}
        _require(actual == expected, 'Native layout bindings/actions differ from complete independent proposal')
    if actual_changes is not None:
        changes = [row for row in actual_changes if row['kind'] == 'fields' and row.get('field') == 'position']
        expected = {(row['native_key'] + '/external', row['connector_class'], row['position_field_index'])
                    for row in rows if row['restore_axes']}
        actual = {(row.get('native_key'), row['native_class'], row['index']) for row in changes}
        _require(len(changes) == setters and actual == expected and all(row.get('before_class') == 'Point'
                 and row.get('after_class') == 'Point' for row in changes),
                 'Actual private diff does not record every exact native coordinate setter')
    return {'profile': value['profile'], 'affected_callers': value['affected_callers'],
            'existing_pins_checked': len(rows), 'actual_coordinate_setters': setters,
            'coordinate_axes_restored': sum(len(row['restore_axes']) for row in rows),
            'complete_independent_proposal_verified': plan is not None,
            'actual_private_position_diff_verified': actual_changes is not None,
            'native_bindings_verified': True, 'write_authorized': False}
