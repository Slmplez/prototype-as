"""Dependency accounting for groups that only add exact existing-pin edges."""
from bd_edit_journal import clone, fingerprint, JournalError
from bd_structural_tools import select


def resource(patch):
    return patch['domain']['oid'], patch['diagram']


def additions(local, change_id):
    events = local.read(change_id)
    receipt = local.receipt(change_id, events)
    if receipt['status'] != 'applied_observed':
        raise JournalError('REVERT_UNAVAILABLE', 'Connection sequence requires a verified actual edge addition')
    patch = events[0]['payload']
    delta = receipt['differences']
    if patch['operation'] != 'connect_data' or len(delta) != 1 or delta[0]['before'] is not None:
        raise JournalError('REVERT_UNAVAILABLE', 'Unexpected connection sequence effects')
    row = delta[0]['after']
    if row['kind'] != 'edge' or [row['source'], row['target']] != patch['arguments'][1:3]:
        raise JournalError('REVERT_UNAVAILABLE', 'Actual edge endpoints differ from the recorded operation')
    return patch, row


def validate_baselines(request):
    scopes, inputs = {}, set()
    for step in request['steps']:
        patch, baseline = step['request'], step['baseline']
        key = resource(patch)
        if baseline.get('targets') or baseline.get('diagram') != patch['diagram']:
            raise JournalError('READ_INCOMPLETE', 'Connection sequence requires complete scope observations')
        if key in scopes and scopes[key] != baseline:
            raise JournalError('PRECONDITION_CONFLICT', 'Repeated scope steps require the same immutable baseline')
        scopes[key] = baseline
        if fingerprint(select(baseline, patch['arguments'][0])) != patch['expect']:
            raise JournalError('PRECONDITION_CONFLICT', 'Connection sequence baseline differs from the initial patch')
        target = key + (patch['arguments'][2],)
        if target in inputs:
            raise JournalError('INVALID_INPUT', 'A connection sequence cannot occupy the same input twice')
        inputs.add(target)


def resolved_patch(request, index, completed, local):
    step = request['steps'][index]
    patch, predicted = clone(step['request']), clone(step['baseline'])
    rows = {row['ref']: row for row in predicted['entries']}
    for item in completed:
        prior, edge = additions(local, item['receipt']['change_id'])
        if resource(prior) == resource(patch):
            if edge['ref'] in rows:
                raise JournalError('IDENTITY_UNRESOLVED', 'Added edge collides with the immutable baseline')
            rows[edge['ref']] = edge
    predicted['entries'] = sorted(rows.values(), key=lambda row: row['ref'])
    if 'lookup_edges' in predicted:
        predicted['lookup_edges'] = sum(row['kind'] == 'edge' for row in rows.values())
    # Selection follows the native reader's stable lexical ref order.
    patch['expect'] = fingerprint(select(predicted, patch['arguments'][0]))
    return patch


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
            adapter.validate_connection_group(patch['domain'], ids)
    for _, token, patch, after in steps:
        key = resource(patch)
        virtual = states[key]
        if select(virtual, patch['arguments'][0]) != after:
            raise JournalError('PRECONDITION_CONFLICT', 'Dependent connection inverse conflicts before any restoration')
        _, edge = additions(local, token)
        rows = {row['ref']: row for row in virtual['entries']}
        if rows.get(edge['ref']) != edge:
            raise JournalError('PRECONDITION_CONFLICT', 'Recorded connection has changed')
        del rows[edge['ref']]
        virtual['entries'] = sorted(rows.values(), key=lambda row: row['ref'])
        if 'lookup_edges' in virtual:
            virtual['lookup_edges'] = sum(row['kind'] == 'edge' for row in rows.values())
        before = next(event['payload']['before'] for event in local.read(token) if event['kind'] == 'prepared')
        if select(virtual, patch['arguments'][0]) != before:
            raise JournalError('PRECONDITION_CONFLICT', 'Dependent inverse does not reconstruct the actual before')
    return steps
