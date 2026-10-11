"""Show recorded Class multi-owner patches on their original native BDE scopes."""
import os
import uuid
from collections import Counter

import bd_service as service
import bd_instance_pending as pending
import bd_class_tools as class_tools
from bd_edit_journal import JournalError
from bd_class_study_journal import actual_diff
from bde_overlay_experiment import primitives


def graphical_differences(deltas):
    """Suppress paired edge rematerialization only in the graphical projection."""
    def signature(row):
        return service.dump({key: value for key, value in row.items() if key != 'ref'})

    removed = Counter(signature(d['before']) for d in deltas
        if (d.get('before') or {}).get('kind') == 'edge' and d.get('after') is None)
    added = Counter(signature(d['after']) for d in deltas
        if (d.get('after') or {}).get('kind') == 'edge' and d.get('before') is None)
    paired = removed & added
    remaining = {'before': paired.copy(), 'after': paired.copy()}
    output = []
    for delta in deltas:
        skip = False
        for side, other in (('before', 'after'), ('after', 'before')):
            row = delta.get(side)
            if row and row.get('kind') == 'edge' and delta.get(other) is None:
                key = signature(row)
                if remaining[side][key]:
                    remaining[side][key] -= 1
                    skip = True
        if not skip:
            output.append(delta)
    return output


def resources(change_id, intent, raw):
    phase = 'restored' if intent.get('reverts') else 'after'
    patch = actual_diff(class_tools.root(change_id) / 'native.wal')
    states = {side: raw['before' if side == 'before' else phase] for side in ('before', 'after')}
    output = []
    for effect in patch['resource_effects']:
        if not effect['differences']:
            continue
        deltas = graphical_differences(effect['differences'])
        for delta in effect['differences']:
            if not any(row and row.get('kind') == 'pin' for row in (delta.get('before'), delta.get('after'))):
                continue
            glyphs = {}
            for side in ('before', 'after'):
                pin = delta.get(side)
                if not pin:
                    glyphs[side] = None
                    continue
                caller = next((row for row in states[side]['callers'] if row['component'] == effect['component']), None)
                position = (caller or {}).get('public_connected_pin_positions', {}).get(effect['diagram'] + '/' + pin['ref'])
                if position is None:
                    # Definition formals already have recorded containing nodes.
                    if effect['oid'] == intent['domain']['oid']:
                        glyphs[side] = None
                        continue
                    raise JournalError('PRESENTATION_UNAVAILABLE', 'No independent graphical anchor for changed Class caller pin: ' + pin['ref'])
                glyphs[side] = {'kind': 'node', 'ref': pin['ref'], 'native_class': 'ClassFormalPin',
                    'model_name': pin['name'], 'position': position, 'size': [6, 6]}
            if glyphs.get('before') is not None or glyphs.get('after') is not None:
                deltas.append({'ref': delta['ref'], **glyphs})
        if not deltas:
            continue
        if not primitives(deltas):
            raise JournalError('PRESENTATION_UNAVAILABLE', 'Class scope has no supported geometry; nothing was displayed')
        output.append({'component': effect['component'], 'diagram': effect['diagram'],
            'domain': {**intent['domain'], 'oid': effect['oid'], 'database_session': intent['identity']['database_session']},
            'change_ids': [change_id], 'differences': deltas})
    if not output:
        raise JournalError('PRESENTATION_UNAVAILABLE', 'Class patch has no recorded graphical scope changes')
    return output


def present(args, session, budget):
    if set(args) - {'change_id', 'presentation', 'max_bytes'} or args.get('presentation') not in ('show', 'clear'):
        raise JournalError('INVALID_INPUT', 'Class presentation requires change_id and show or clear')
    if os.environ.get('ASCET_BD_NATIVE_PRESENTATION') != '1':
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Native Class presentation requires ASCET_BD_NATIVE_PRESENTATION=1')
    change_id = args['change_id']
    intent, raw, _ = class_tools.terminal_raw(change_id)
    if intent['domain']['session'] != session:
        raise JournalError('IDENTITY_UNRESOLVED', 'Original Class edit session required for presentation')
    scopes = resources(change_id, intent, raw)

    def guard():
        pending.check(intent['domain'])
        folder = service.STORE / 'raw' / ('class_display_' + uuid.uuid4().hex)
        folder.mkdir()
        class_tools.write(folder / 'input.json', class_tools.inputs(intent['identity']))
        current, code = class_tools.invoke(folder / 'input.json', folder / 'raw.json', 'observe')
        phase = 'restored' if intent.get('reverts') else 'after'
        if (code or current.get('status') != 'observed' or current.get('model_setters_called') != 0 or
                class_tools.observation(current, 'observed') != class_tools.observation(raw, phase)):
            raise JournalError('PRECONDITION_CONFLICT', 'Class current owners differ from the recorded terminal patch')

    from bd_connection_presentation import present_resources
    value = present_resources(scopes, args, guard)
    value.update(record_type=class_tools.SOURCE, model_setters_called=0,
        signature_presentation='graphical formal occurrences and caller pins; complete signature remains in offline bd_diff',
        visual_verification='not_verified; native call acceptance does not prove visual correctness')
    response = service.paged(service.dump(value), {'change_id': change_id, 'record_type': 'class_presentation'}, session, budget)
    response['is_error'] = any(row['result']['is_error'] for row in value['resources'])
    return response
