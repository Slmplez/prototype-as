"""Experimental journal-driven native BDE decoration; never replays model edits."""
import json
import os
import uuid
from pathlib import Path
import bd_service as service
from bd_edit_journal import JournalError
from bd_structure_journal import StructureJournal
from bd_native_structure import NativeStructureAdapter
from bd_sandbox_edit import load_binding
from bde_overlay_experiment import primitives


def present(args, session, budget):
    if set(args) - {'change_id', 'presentation', 'max_bytes'} or args.get('presentation') not in ('show', 'clear'):
        service.fail('INVALID_INPUT', 'Presentation requires change_id and show or clear')
    if os.environ.get('ASCET_BD_NATIVE_PRESENTATION') != '1':
        service.fail('CAPABILITY_UNAVAILABLE', 'Native BDE presentation requires ASCET_BD_NATIVE_PRESENTATION=1; experimental sandbox only')
    try:
        log = StructureJournal(service.STORE / 'edits')
        events = log.read(args.get('change_id'))
        ancestry = log.origin(args['change_id'])
        context = load_binding(ancestry['change_id'])
        source = ancestry['intent']
        diagram = source.get('diagram', 'Main')
        if 'operation' not in source or source['domain'] != context['domain'] or source['component'] != context['component']:
            service.fail('CAPABILITY_UNAVAILABLE', 'A bound original structural edit is required')
        if context['domain']['session'] != session:
            service.fail('IDENTITY_UNRESOLVED', 'Original Doge session required for presentation')
        receipt = log.receipt(args['change_id'], events)
        if receipt['status'] not in ('applied_observed', 'postcondition_mismatch', 'verified_local'):
            service.fail('PRESENTATION_UNAVAILABLE', 'An observed structural result is required')
        if source['operation'] == 'connect_data' and receipt.get('connect_history'):
            from bd_connect_journal import context as connect_context
            connect_context(log, args['change_id'])
        after = next(e['payload']['after'] for e in events if e['kind'] == 'observed')
        if receipt.get('scope_effects'):
            from bd_connection_presentation import add_scope_effects, present_resources
            key = source['domain']['oid'], diagram
            resources = {key: {'component': source['component'], 'diagram': diagram, 'domain': source['domain'],
                'change_ids': [args['change_id']], 'differences': receipt['differences']}}
            add_scope_effects(resources, source, receipt)
            def guard_scopes():
                with NativeStructureAdapter(context['component'], diagram) as adapter:
                    current = adapter.observe(context['domain'], source['arguments'][0])
                    if current != after:
                        service.fail('PRECONDITION_CONFLICT', 'Current parent differs from scope creation after')
                    adapter.validate_revert(context['domain'], args['change_id'])
            value = present_resources(list(resources.values()), args, guard_scopes)
            response = service.paged(service.dump(value), {'change_id': args['change_id'], 'record_type': 'presentation'}, session, budget)
            response['is_error'] = any(row['result']['is_error'] for row in value['resources'])
            return response
        try:
            commands = primitives(receipt['differences']) if args['presentation'] == 'show' else []
        except ValueError as error:
            service.fail('PRESENTATION_LIMIT', str(error))
        if args['presentation']=='show' and not commands:
            service.fail('PRESENTATION_UNAVAILABLE','This patch has no supported graphical geometry or model-field changes')
        if len(commands) > 600:
            service.fail('PRESENTATION_LIMIT', 'Overlay exceeds 100 primitives; nothing displayed')
        run = service.STORE / 'presentations' / uuid.uuid4().hex
        run.mkdir(parents=True)
        (run/'commands.json').write_text(json.dumps(commands), encoding='utf-8')
        (run/'domain.json').write_text(json.dumps({**context['domain'], 'diagram': diagram, 'presentation_token': args['change_id']}), encoding='utf-8')
        intent = {'change_id': args['change_id'], 'source_change_id': ancestry['change_id'],
                  'presentation': args['presentation'], 'diagram': diagram, 'model_replayed': False}
        service.write_once(run/'intent.json', intent)
        try:
            with service.live_lock():
                # A current observation prevents an old patch being aligned to a different graph.
                if args['presentation'] == 'show':
                    with NativeStructureAdapter(context['component'], diagram) as adapter:
                        current = adapter.observe(context['domain'], source['arguments'][0])
                    if current != after:
                        service.fail('PRECONDITION_CONFLICT', 'Current local graph differs from recorded after; historical overlay refused')
                binary = compile_overlay()
                try:
                    service.run_process([str(binary), context['component'], args['presentation'], str(run/'commands.json'), str(run/'native.json'), str(run/'domain.json')], 25)
                except service.ToolError as error:
                    if (run/'native.json').is_file():
                        detail = json.loads((run/'native.json').read_text(encoding='utf-8'))
                    else:
                        detail = {'stage': 'no_native_checkpoint'}
                    unknown = error.code == 'READ_TIMEOUT'
                    service.fail('PRESENTATION_OUTCOME_UNKNOWN' if unknown else 'PRESENTATION_FAILED',
                                 'Native presentation timed out; clear before retrying show; model edit was not replayed'
                                 if unknown else 'Native presentation failed; model edit was not replayed', detail=detail)
                native = json.loads((run/'native.json').read_text(encoding='utf-8'))
                if native.get('status') != 'ok':
                    service.fail('PRESENTATION_FAILED', 'Native drawing failed', detail=native)
            result = {**intent, 'presentation_status': 'native_call_succeeded_visual_unverified', 'native': native,
                      'limits': ['Only occurrences in the recorded diagram scope; declarations without occurrences cannot be displayed',
                                 'one active overlay per component; drawing suspends outside its exact native canvas',
                                 'node and sequence bounds, recorded routes and deleted-node text; original glyphs are not reconstructed',
                                 'this invocation is not visually verified; sample validation is in bde-experiments',
                                 'Undo stream/entry/parent identities, position/size and audited stored graphical content deep-compared; unknown Undo structures are rejected']}
        except Exception as error:
            service.write_once(run/'result.json', {**intent, 'presentation_status': 'failed_or_unknown', 'error': str(error), 'retry_model_edit': False})
            raise
        service.write_once(run/'result.json', result)
        return service.paged(service.dump(result), {'change_id': args['change_id'], 'record_type': 'presentation'}, session, budget)
    except JournalError as error:
        service.fail(error.code, str(error))


def compile_overlay():
    sources = [service.ROOT/'scripts'/name for name in ('AscetStructureRead.cs', 'AscetBdeOverlay.cs')]
    resource = service.ROOT/'scripts/bde_overlay.st'
    identity = service.ROOT/'scripts/bde_database_identity.st'
    binary = service.ROOT/'analysis/live-api/AscetBdeOverlay.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in [*sources, resource, identity, dll]):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetBdeOverlay', f'/r:{dll}',
            '/r:System.Web.Extensions.dll', f'/resource:{resource},bde_overlay.st',
            f'/resource:{identity},bde_database_identity.st', f'/out:{binary}', *map(str, sources)], 30, build_step=True)
    return binary
