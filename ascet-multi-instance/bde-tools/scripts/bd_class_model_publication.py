"""Independent full-source and write-ahead audit of isolated actual publication."""
import json
from collections import Counter

from bd_class_study_journal import read_events
from bd_class_runtime_patch import inspect_runtime_patch, created_formal_alias
from bd_source_inverse_oracle import decode_graph, equal


def _require(condition, message):
    if not condition:
        raise ValueError(message)


_MISSING = object()


def _merge(original, applied, current):
    same = lambda a, b: a is b if a is _MISSING or b is _MISSING else equal(a, b)
    if same(original, applied):
        return current
    if same(current, applied):
        return original
    if same(current, original):
        return current
    if all(type(value) is dict for value in (original, applied, current)):
        merged = {}
        for key in set(original) | set(applied) | set(current):
            value = _merge(original.get(key, _MISSING), applied.get(key, _MISSING), current.get(key, _MISSING))
            if value is not _MISSING:
                merged[key] = value
        return merged
    raise ValueError('Published collected field conflicts with the independent three-way inverse')


def _scope(graph):
    """Edge refs are capture aliases; complete source checks separately prove their lineage."""
    rows, edges = {}, []
    for entry in graph['entries']:
        if entry['kind'] == 'edge':
            edges.append({key: value for key, value in entry.items() if key != 'ref'})
        else:
            _require(entry['ref'] not in rows, 'Duplicate native collected row identity')
            rows[entry['ref']] = entry
    edges.sort(key=lambda value: json.dumps(value, sort_keys=True, separators=(',', ':')))
    return {'metadata': {key: value for key, value in graph.items() if key not in ('entries', 'generation')},
            'rows': rows, 'edges': edges}


def _merge_edges(original, applied, current):
    if equal(original, applied):
        return current
    if equal(current, applied):
        return original
    if equal(current, original):
        return current
    # Native/source proofs bind edge identities separately; this oracle checks all values and counts.
    bags = [Counter(json.dumps(edge, sort_keys=True, separators=(',', ':'), allow_nan=False)
                    for edge in edges) for edges in (original, applied, current)]
    removed, added = bags[1] - bags[0], bags[0] - bags[1]
    _require(not removed - bags[2],
             'Published collected edge values conflict with the independent three-way inverse')
    merged = bags[2] - removed + added
    return [json.loads(value) for value, count in sorted(merged.items()) for _ in range(count)]


def _merge_scope(original, applied, current):
    merged = _merge(*[{key: graph[key] for key in ('metadata', 'rows')}
                     for graph in (original, applied, current)])
    merged['edges'] = _merge_edges(*(graph['edges'] for graph in (original, applied, current)))
    return merged


def stable_observation(observation):
    _require(type(observation) is dict and type(observation.get('observation')) is dict
             and type(observation['observation'].get('callers')) is list
             and all(type(caller) is dict for caller in observation['observation']['callers']),
             'Complete public observation and caller records required')
    return {**observation, 'observation': {**observation['observation'], 'callers': [
        {key: value for key, value in caller.items() if key not in
         ('cached', 'cached_error', 'public_retained', 'public_fresh')}
        for caller in observation['observation']['callers']]}}


def inspect_published_observation(before, applied, current, published):
    for context in (before, applied, current, published):
        stable_observation(context)
        _require(all(field in context['observation'] for field in
                     ('signature', 'public_signature', 'configurations'))
                 and type(context.get('owners')) is list
                 and all(type(owner) is dict and type(owner.get('oid')) is str
                         and type(owner.get('scopes')) is dict for owner in context['owners'])
                 and len({owner['oid'] for owner in context['owners']}) == len(context['owners']),
                 'Complete unique public owner/signature/configuration records required')
    owners = current['owners']
    for field in ('signature', 'public_signature'):
        _require(published['observation'][field] == before['observation'][field],
                 'Published public/native signature does not remove precisely the created input')
    _require(published['observation']['configurations'] == current['observation']['configurations'],
             'Publication changed an independent configuration')
    _require({owner['oid']: sorted(owner['scopes']) for owner in published['owners']}
             == {owner['oid']: sorted(owner['scopes']) for owner in owners}, 'Published scope coverage changed')
    contexts = [{owner['oid']: owner for owner in context['owners']} for context in (before, applied, current, published)]
    for owner in owners:
        oid = owner['oid']
        for scope in owner['scopes']:
            graphs = [_scope(context[oid]['scopes'][scope]) for context in contexts]
            _require(equal(_merge_scope(*graphs[:3]), graphs[3]),
                     'Published complete collected graph differs from the independent inverse/preserved edits')
    return {'owners_verified': len(owners), 'scopes_verified': sum(len(owner['scopes']) for owner in owners)}


def inspect_publication(raw, token, current, *, before, applied, plans):
    _require(raw.get('status') == 'publication_restored' and raw.get('outstanding') is False
             and raw.get('model_publication_outstanding') is False
             and raw.get('model_mutation_dispatched') is True,
             'Publication must have actual model writes and verified complete recovery')
    owners = current['owners']
    definition = current['observation']['signature']['oid']
    sources = {item['oid']: item['receipt']['source_plan']['source_graphs'] for item in plans}
    _require(len(sources) == len(plans) == len(owners) and set(sources) == {owner['oid'] for owner in owners},
             'Independent complete publication source roster required')
    events = read_events(raw['model_publication_journal'])
    intent = events[0]['payload']
    _require(intent.get('operation') == 'class_model_publication_study' and intent.get('token') == token
             and intent.get('current_observation') == current and intent.get('production_executor_available') is False
             and intent['domain']['oid'] == definition and intent['domain']['database'] == raw['database']
             and intent['domain']['process_epoch'] == raw['ascet_process_epoch']
             and intent['database_session'] == raw['database_session'], 'Exact publication WAL domain required')
    prepared = events[1]
    _require(prepared['kind'] == 'prepared_all' and prepared['payload']['current_observation'] == current,
             'Complete CURRENT must be durable before the first setter')
    prepared_rows = prepared['payload']['owners']
    _require(len(prepared_rows) == len(owners), 'Complete retained native CURRENT roster required')
    patch_proofs, stores = [], 0
    for owner, row in zip(owners, prepared_rows):
        oid = owner['oid']
        _require(row.get('action') == 'prepare' and row.get('oid') == oid and row.get('token') == token
                 and row.get('definition_oid') == definition and row.get('state') == 'preparing'
                 and row.get('owner_state') == 'prepared' and row.get('model_steps') == 0
                 and row.get('generation') == owner['scopes']['Main']['generation'],
                 'Prepared publication native identity differs')
        for field in ('actual_source_graph', 'current_source_graph'):
            _require(equal(decode_graph(row[field], oid), decode_graph(sources[oid]['current'], oid)),
                     'Publication CURRENT source differs from the independent complete image')
        _require(equal(decode_graph(row['candidate_source_graph'], oid), decode_graph(sources[oid]['candidate'], oid)),
                 'Publication candidate source differs from the independent merge')
        patch = row['runtime_patch']
        patch_proofs.append(inspect_runtime_patch(patch, token, oid, row['generation'],
            expected_source=sources[oid]['candidate'], expected_current_source=sources[oid]['current'],
            expected_source_graphs=sources[oid], expected_scopes=owner['scopes'],
            expected_definition_oid=definition, expected_formal_alias=created_formal_alias(before, applied, patch['selector']),
            retained=True))
        stores += not patch['no_graphical_target_required']
    plan = [('apply', definition, 'signature_arguments'), ('apply', definition, 'signature_commit')]
    plan += [('apply', owner['oid'], 'publish') for owner in owners]
    plan += [('inverse', definition, 'restore_signature_arguments'), ('inverse', definition, 'restore_signature_commit')]
    plan += [('inverse', owner['oid'], 'restore') for owner in reversed(owners)]
    active, completed, published, restored, terminal = None, [], None, None, None
    physical_steps = 0
    for event in events[2:]:
        kind, body = event['kind'], event['payload']
        _require(terminal is None, 'Publication event follows a terminal record')
        if kind == 'step_started':
            _require(active is None and len(completed) < len(plan), 'Publication dispatch overlaps or exceeds the physical plan')
            phase, oid, command = plan[len(completed)]
            owner = next(owner for owner in owners if owner['oid'] == oid)
            _require(body == {'step': f'{phase}/{oid}/{command}', 'phase': phase,
                'oid': oid, 'component': owner['component'], 'command': command,
                'database_session': raw['database_session']}, 'Publication dispatch differs from the exact physical plan')
            if phase == 'inverse':
                _require(published is not None, 'Inverse precedes the complete published observation')
            active = body
        elif kind == 'step_completed':
            _require(active is not None and body.get('step') == active['step'], 'Publication completion lacks a matching dispatch')
            receipt = json.loads(body['native_result'])
            _require(receipt.get('token') == token and receipt.get('oid') == active['oid']
                     and receipt.get('definition_oid') == definition and receipt.get('action') == active['command']
                     and receipt.get('profile') == 'class_model_publication_study_v1'
                     and receipt.get('write_authorized') is False and receipt.get('production_executor_available') is False,
                     'Publication receipt identity or authority differs')
            if active['command'] in ('publish', 'restore'):
                role = 'candidate' if active['command'] == 'publish' else 'current'
                _require(receipt.get('owner_state') == ('published' if role == 'candidate' else 'restored')
                         and equal(decode_graph(receipt['actual_source_graph'], active['oid']),
                                   decode_graph(sources[active['oid']][role], active['oid'])),
                         'Actual complete stored model source differs')
                no_graphics = next(row for row in prepared_rows if row['oid'] == active['oid'])['runtime_patch']['no_graphical_target_required']
                _require(type(receipt['publish_stores']) is int and receipt['publish_stores'] == int(not no_graphics),
                         'Publication physical store count differs')
                if role == 'current':
                    _require(type(receipt['restore_stores']) is int and receipt['restore_stores'] == receipt['publish_stores'],
                             'Publication inverse physical store count differs')
                physical_steps += int(not no_graphics)
            else:
                physical_steps += 1
            _require(type(receipt.get('model_steps')) is int and receipt['model_steps'] == physical_steps,
                     'Publication physical mutation counters differ from completed actions')
            completed.append(receipt)
            active = None
        elif kind == 'observed':
            _require(active is None, 'Publication observation overlaps a write')
            if body['phase'] == 'published':
                _require(published is None and len(completed) == len(owners) + 2,
                         'Published observation omits a physical step')
                published = body['observation']
            elif body['phase'] == 'restored':
                _require(restored is None and len(completed) == len(plan), 'Restored observation omits a physical inverse')
                restored = body['observation']
            else:
                raise ValueError('Unknown publication observation phase')
        elif kind == 'finished':
            _require(body == {'status': 'restored', 'outstanding': False, 'dispatch_count': len(plan)},
                     'Publication terminal is not a complete restoration')
            terminal = body
        else:
            raise ValueError('Unexpected model publication WAL event')
    _require(active is None and len(completed) == len(plan) and published is not None
             and restored is not None and terminal is not None, 'Publication WAL is partial or unknown')
    _require(raw['model_publication_after'] == published and raw['model_publication_restored'] == restored,
             'Public/native observations differ from the immutable publication WAL')
    stable = stable_observation(restored)
    _require(stable == current, 'Complete current signature/graphs/configurations/identities not restored')
    inspect_published_observation(before, applied, current, published)
    _require(type(raw.get('model_setters_called')) is int and raw['model_setters_called'] == 4 + 2 * stores,
             'Actual publication mutation/commit count differs')
    return {'profile': 'class_model_publication_study_v1', 'owners_verified': len(owners),
            'physical_dispatches': len(plan), 'actual_stores': stores, 'actual_restore_stores': stores,
            'complete_sources_verified': 2 * len(owners), 'complete_current_restored': True,
            'patches': patch_proofs, 'write_authorized': False, 'production_executor_available': False,
            'not_verified': ['partial/unknown native recovery', 'restart durability', 'GUI/shared/faults',
                             'additional Class types and independent edits', 'whole delivery']}
