"""Coalesced actual edge additions on retained, individually scoped BDE canvases."""
import json
import os
import uuid

import bd_service as service
from bd_edit_journal import JournalError
from bd_native_presentation import compile_overlay
from bd_sandbox_edit import load_binding
from bde_overlay_experiment import primitives


def scope_patches(log, token, session):
    events = log.read(token)
    source = events[0]['payload']
    receipt = log.receipt(token, events)
    if source.get('mode') not in ('connection_sequence', 'construction_sequence') or receipt['status'] != 'completed':
        service.fail('PRESENTATION_UNAVAILABLE', 'A completed original connection or construction sequence is required')
    if source['session'] != session:
        service.fail('IDENTITY_UNRESOLVED', 'Original group session required')
    resources = {}
    for step in receipt['steps']:
        local = step['receipt']
        patch = log.local.read(local['change_id'])[0]['payload']
        context = load_binding(local['change_id'])
        if context['domain'] != patch['domain'] or context['component'] != patch['component']:
            service.fail('JOURNAL_CONFLICT', 'Connection presentation binding differs from the actual patch')
        key = patch['domain']['oid'], patch['diagram']
        row = resources.setdefault(key, {'component': patch['component'], 'diagram': patch['diagram'],
            'domain': patch['domain'], 'change_ids': [], 'differences': []})
        if row['domain'] != patch['domain'] or row['component'] != patch['component']:
            service.fail('IDENTITY_UNRESOLVED', 'Grouped canvas domain differs')
        row['change_ids'].append(local['change_id'])
        row['differences'].extend(local['differences'])
        add_scope_effects(resources, patch, local)
    return list(resources.values())


def add_scope_effects(resources, patch, receipt):
    for effect in receipt.get('scope_differences', []):
        if not effect['differences'] or not primitives(effect['differences']):
            continue
        key = patch['domain']['oid'], effect['diagram']
        row = resources.setdefault(key, {'component': patch['component'], 'diagram': effect['diagram'],
            'domain': patch['domain'], 'change_ids': [], 'differences': []})
        if row['domain'] != patch['domain'] or row['component'] != patch['component']:
            service.fail('IDENTITY_UNRESOLVED', 'Scope effect canvas domain differs')
        row['change_ids'].append(receipt['change_id'])
        row['differences'].extend(effect['differences'])


def invoke(resource, action, token):
    commands = primitives(resource['differences']) if action == 'show' else []
    if action == 'show' and not commands:
        service.fail('PRESENTATION_UNAVAILABLE', 'No recorded connection geometry to display')
    if len(commands) > 600:
        service.fail('PRESENTATION_LIMIT', 'Scope exceeds 100 drawing primitives')
    run = service.STORE / 'presentations' / uuid.uuid4().hex
    run.mkdir(parents=True)
    service.write_once(run / 'commands.json', commands)
    service.write_once(run / 'domain.json', {**resource['domain'], 'diagram': resource['diagram'], 'presentation_token': token})
    intent = {'change_id': token, 'change_ids': resource['change_ids'], 'presentation': action,
              'diagram': resource['diagram'], 'model_edit_replayed': False, 'group_scoped_canvas': True}
    service.write_once(run / 'intent.json', intent)
    try:
        binary = compile_overlay()
        service.run_process([str(binary), resource['component'], 'group_' + action,
            str(run / 'commands.json'), str(run / 'native.json'), str(run / 'domain.json')], 25)
        native = json.loads((run / 'native.json').read_text(encoding='utf-8'))
        if native.get('status') != 'ok':
            service.fail('PRESENTATION_FAILED', 'Grouped native canvas call failed', detail=native)
        result = {**intent, 'native': native, 'is_error': False,
            'presentation_status': 'native_call_succeeded_visual_unverified'}
    except Exception as error:
        native = json.loads((run / 'native.json').read_text(encoding='utf-8')) if (run / 'native.json').is_file() else {'stage': 'no_native_checkpoint'}
        service.write_once(run / 'result.json', {**intent, 'error': str(error), 'native': native, 'retry_model_edit': False})
        if isinstance(error, service.ToolError) and error.code == 'READ_TIMEOUT':
            service.fail('PRESENTATION_OUTCOME_UNKNOWN', 'Group drawing timed out; clear this group before retrying', detail=native)
        if isinstance(error, service.ToolError) and error.code == 'BRIDGE_FAILED':
            code = ('PRESENTATION_OWNER_MISMATCH' if 'PRESENTATION_OWNER_MISMATCH:' in native.get('presentation', '')
                    else 'PRESENTATION_FAILED')
            service.fail(code, 'Grouped native presentation failed; model edit was not replayed', detail=native)
        raise
    service.write_once(run / 'result.json', result)
    return result


def present(log, args, session, adapters):
    if os.environ.get('ASCET_BD_NATIVE_PRESENTATION') != '1':
        service.fail('CAPABILITY_UNAVAILABLE', 'Native BDE presentation is disabled')
    resources = scope_patches(log, args['change_id'], session)
    return present_resources(resources, args, lambda: log.preflight_revert(args['change_id'], adapters))


def present_resources(resources, args, guard):
    # Check every drawing limit before opening any window.
    for row in resources:
        if len(primitives(row['differences'])) > 600:
            service.fail('PRESENTATION_LIMIT', 'A connection scope exceeds the drawing limit')
    outcomes = []
    with service.live_lock():
        if args['presentation'] == 'show':
            guard()
        for row in resources:
            try:
                value = invoke(row, args['presentation'], args['change_id'])
            except service.ToolError as error:
                value = {'is_error': True, 'code': error.code, 'message': str(error), **error.details}
            outcomes.append({'component': row['component'], 'diagram': row['diagram'],
                             'change_ids': row['change_ids'], 'result': value})
    return {'change_id': args['change_id'], 'presentation': args['presentation'], 'atomic': False,
        'resources': outcomes, 'coalesced_same_scope': True, 'model_edit_replayed': False,
        'visual_verification': 'not_verified',
        'scope_visibility': 'only the active exact canvas draws; all registered group scopes persist until clear/close'}
