"""Isolated formal Tool.call connect history with complete independent witnesses."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_connect_journal import context as history_context
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages, VARIANTS
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--variant', choices=VARIANTS, default='operator_fanout')
    parser.add_argument('--local-plan', action='store_true', help='Plan connect inverse with a later independent literal; no local connect executor is dispatched')
    parser.add_argument('--local-history', action='store_true', help='Formal local connect inverse/redo/second inverse preserving an independent literal')
    parser.add_argument('--presentation', action='store_true', help='Show/clear actual connect histories on original BDE with full purity witnesses; visual acceptance separate')
    parser.add_argument('--source-diagnostic', action='store_true', help='Capture complete actual source/native sharing before local planning; fixed isolated eval-only command')
    parser.add_argument('--independent-operation', choices=('set_literal', 'move_node'), default='set_literal')
    parser.add_argument('--relation', choices=('independent', 'endpoint_overlap'), default='independent')
    args = parser.parse_args()
    if args.local_plan and args.local_history:
        parser.error('Select pure planning or actual formal local history')
    if (args.independent_operation != 'set_literal' or args.relation != 'independent') and not args.local_history:
        parser.error('Additional B operations and conflicts require formal local history')
    if args.relation == 'endpoint_overlap' and args.independent_operation != 'move_node':
        parser.error('Endpoint geometry overlap requires move_node')
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not prior.is_relative_to(owned):
        raise ValueError('Verified same-epoch preflight and fresh owned output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous.get('passed') is not True or previous['process_epoch'] != epoch:
        raise ValueError('Verified exact current-epoch fixture required')
    fixture = json.loads(sorted((prior / ('fixture-' + args.variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
    if fixture.get('passed') is not True:
        raise ValueError('Complete original fixture required')
    domain = dict(session=output.name, database=manifest['database'], process_epoch=epoch, oid=fixture['oid'])
    pending.check(domain)
    output.mkdir(parents=True); service.STORE = output / 'store'
    for name in ('snapshots', 'raw', 'documents', 'cursors', 'edits'):
        (service.STORE / name).mkdir(parents=True)
    result = dict(passed=False, scope='Formal isolated Main connect/undo/redo/second undo; exact CURRENT only',
        source_manifest=source_manifest(), manifest=previous['manifest'], process_epoch=epoch,
        domain=domain, component=fixture['component'], variant=args.variant, pid=process['pid'], port=manifest['port'],
        witness_retained=False, material_retained=False, histories=[], documents=[], formal_tool_calls=0,
        complete_case_pass=False, full_delivery=False, business_model_calls=0)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        dest = output / 'source' / rel; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, dest)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_HISTORY='native_source_exact_v1')
    if args.local_plan or args.local_history:
        environment.update(ASCET_BD_CONNECT_LOCAL_PLAN='native_source_v1',
            ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1', ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1',
            ASCET_BD_SOURCE_IDENTITY_NORMALIZATION='identity_v1')
    if args.local_history:
        environment['ASCET_BD_CONNECT_HISTORY'] = 'native_source_local_v1'
        environment['ASCET_BD_FIELD_SOURCE_PROJECTION'] = 'active_v1'
    result['local_planning_requested'] = args.local_plan or args.local_history
    result['local_history_requested'] = args.local_history
    if args.local_history:
        result['scope'] = 'Formal isolated Main connect inverse/redo/second inverse preserving an independent literal B'
    result['local_connect_executor_dispatched'] = False
    result['independent_operation'] = args.independent_operation
    result['relation'] = args.relation
    if args.relation == 'endpoint_overlap':
        result['scope'] = 'Formal local connect endpoint overlap refuses before writes; distinct B cleanup and exact A histories'
    result['presentation_requested'] = args.presentation
    result['presentations'] = []
    if args.presentation:
        environment['ASCET_BD_NATIVE_PRESENTATION'] = '1'
    calls = []; witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='formal_connect_original'))
    token = None
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        def check_runtime():
            fresh, fresh_process, fresh_epoch = live_manifest(previous['manifest'])
            if fresh != manifest or fresh_process != process or fresh_epoch != epoch:
                raise ValueError('Original isolated runtime changed; retained objects cannot be rebound')

        def native(label, callback):
            check_runtime()
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(fixture['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain); value = callback(adapter)
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))

        def observe(label):
            value = native(label, lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain)))
            if not compare(value['native']['entries'], value['public'])['passed']:
                raise ValueError('Independent complete public/native graph differs: ' + label)
            return value['native']

        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
            calls.append(row); result['formal_tool_calls'] = len(calls); save()

        def tool(label, name, arguments, *, rejection=False, offline=False):
            check_runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client = ToolClient(output, domain['session'], record)
                client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                start = len(calls); meta, body, error = client.call(name, arguments)
            frames = wire_result(wire)
            save_new(output / 'call-wire' / (label + '.json'), frames)
            if bool(error) != rejection:
                raise ValueError('Unexpected formal tool result ' + label + ': ' + body)
            if not error:
                result['documents'].append(dict(label=label, **verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))))
            if offline and (frames['request']['frames'] != 0 or frames['connections'] != 0):
                raise ValueError('Offline duplicate/diff path made a native request: ' + label)
            save_new(output / 'responses' / (label + '.json'), dict(meta=meta, body=body, is_error=error))
            return meta, (json.loads(body) if not error and name != 'bd_read' else body)

        result['original_capture'] = witness('capture', 'original-witness-capture')
        result['witness_retained'] = True; save()
        def display(label, change_id):
            ui_token = 'main_' + fingerprint(dict(domain=domain, purpose='presentation-purity', change_id=change_id))
            row = dict(label=label, change_id=change_id, passed=False, visual_verified=False)
            result['presentations'].append(row)
            row['capture'] = native(label + '-ui-capture', lambda a: a._exchange(dict(
                cmd='main_readonly_witness', action='capture', token=ui_token)))
            row['configuration_before'] = native(label + '-configuration-before', lambda a:
                a._exchange(dict(cmd='main_configuration')))
            from bd_class_configuration import validate_graph
            row['configuration_validation'] = validate_graph(row['configuration_before'], domain['oid'])
            save()
            try:
                _, row['show'] = tool(label + '-show', 'bd_diff', dict(change_id=change_id, presentation='show'))
                shown = row['show']['native']
                if (shown.get('status') != 'ok' or shown.get('dirty_before') != shown.get('dirty_after')
                        or 'undo_content_checked=true' not in shown.get('presentation', '')):
                    raise ValueError('Native show/Undo/dirty proof differs')
                row['after_show'] = native(label + '-ui-after-show', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='check', token=ui_token)))
                row['overlay_status'] = native(label + '-overlay-status', lambda a:
                    a._exchange(dict(cmd='main_overlay_status', token=change_id)))
                status_fields = dict(part.split('=', 1) for part in row['overlay_status'].split('|')[1:] if '=' in part)
                if (not row['overlay_status'].startswith('registered|') or int(status_fields.get('draws', '0')) < 1
                        or status_fields.get('error') != 'none' or status_fields.get('token') != change_id
                        or status_fields.get('scope_active') != 'true' or status_fields.get('undo_stream_unchanged') != 'true'):
                    raise ValueError('Actual original-canvas drawing or exact overlay/Undo identity differs')
                row['configuration_after_show'] = native(label + '-configuration-after-show', lambda a:
                    a._exchange(dict(cmd='main_configuration')))
                if row['configuration_after_show'] != row['configuration_before']:
                    raise ValueError('Original BDE show changed persisted owner configuration')
                if row['after_show']['unchanged'] is not True:
                    raise ValueError('Original BDE show changed complete model/source/order')
            finally:
                _, row['clear'] = tool(label + '-clear', 'bd_diff', dict(change_id=change_id, presentation='clear'))
                cleared = row['clear']['native']
                row['after_clear'] = native(label + '-ui-after-clear', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='check', token=ui_token)))
                row['overlay_after_clear'] = native(label + '-overlay-after-clear', lambda a:
                    a._exchange(dict(cmd='main_overlay_status', token=change_id)))
                row['configuration_after_clear'] = native(label + '-configuration-after-clear', lambda a:
                    a._exchange(dict(cmd='main_configuration')))
                if (cleared.get('status') != 'ok' or cleared.get('dirty_before') != cleared.get('dirty_after')
                        or 'undo_content_unchanged=true' not in cleared.get('presentation', '')
                        or row['after_clear']['unchanged'] is not True or row['overlay_after_clear'] != 'absent'
                        or row['configuration_after_clear'] != row['configuration_before']):
                    save()
                    raise ValueError('Original BDE clear changed model/source/Undo/dirty state')
                row['release'] = native(label + '-ui-release', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='release', token=ui_token)))
                save()
            row['passed'] = row['release']['released'] is True
            save()
        before = observe('original-independent'); result['before'] = before; save()
        result['compile'] = native('history-compile', lambda a: a._exchange(dict(cmd='connect_history_compile')))
        entries = before['entries']; pins = [r for r in entries if r['kind'] == 'pin']
        edges = [r for r in entries if r['kind'] == 'edge']; occupied = {r['target'] for r in edges}
        source = max((p for p in pins if p['output'] and not p['input']), key=lambda p: sum(e['source'] == p['ref'] for e in edges))
        target = next(p for p in pins if p['input'] and not p['output'] and p['ref'] not in occupied and p['owner'] != source['owner'])
        operation = dict(op='connect_data', source='Main/' + source['ref'], target='Main/' + target['ref'])
        result['operation'] = operation; save()
        meta, _ = tool('read', 'bd_read', dict(component=fixture['component'], view='structure'))
        request = dict(snapshot=meta['snapshot'], request_id=output.name + '-forward', operations=[operation])
        _, preview = tool('forward-preview', 'bd_edit', {**request, 'preview': True})
        if preview['status'] != 'preview' or list((service.STORE / 'edits').glob('edit_*')):
            raise ValueError('Forward preview allocated an edit or failed constraints')
        if witness('check', 'original-witness-after-preview')['unchanged'] is not True:
            raise ValueError('Formal preview changed original complete witness')
        _, forward = tool('forward', 'bd_edit', request)
        result['forward'] = forward; token = forward.get('change_id'); result['native_token'] = token
        result['material_retained'] = token is not None; save()
        if forward['status'] != 'applied_observed':
            raise ValueError('Actual formal connect did not complete')
        log = StructureJournal(service.STORE / 'edits')
        result['forward_context'] = history_context(log, token)
        applied = observe('applied-independent')
        if result['forward_context']['current'] != applied:
            raise ValueError('Complete formal actual head differs from independent graph')
        if args.presentation:
            display('forward', token)
        _, diff = tool('forward-diff', 'bd_diff', dict(change_id=token), offline=True)
        if diff != log.diff(token) or len(diff['differences']) != 1:
            raise ValueError('Complete offline actual connection patch differs from durable journal')
        _, duplicate = tool('forward-duplicate', 'bd_edit', request, offline=True)
        if duplicate != forward:
            raise ValueError('Duplicate forward receipt differs')
        tool('request-conflict', 'bd_edit', {**request, 'operations': [dict(op='connect_data',
            source=operation['source'], target=operation['source'])]}, rejection=True, offline=True)
        if args.local_plan or args.local_history:
            # Freeze the historical head before B. CURRENT cannot supply history.
            result['head_before_b'] = native('head-before-independent', lambda a: a._exchange(dict(
                cmd='connect_history', action='inspect', token=token, owner=token, state='applied',
                result_change_id='edit_' + fingerprint(dict(domain=domain, purpose='initial-head-inspection')),
                prepared_signature='')))
            if args.relation == 'endpoint_overlap':
                b_target = next(r for r in applied['entries'] if r['kind'] == 'node' and r['ref'] == source['owner'])
            else:
                b_target = next(r for r in applied['entries'] if r['kind'] == 'node' and 'literal' in r
                    and r['ref'] not in (source['owner'], target['owner']))
            b_operation = (dict(op='set_literal', target='Main/' + b_target['ref'],
                expect=dict(text=b_target['literal']), value=dict(text='87654.25'))
                if args.independent_operation == 'set_literal' else dict(op='move_node',
                target='Main/' + b_target['ref'], position=[
                    ((b_target['position'][0] + 30) // 5) * 5,
                    ((b_target['position'][1] + 20) // 5) * 5]))
            meta, _ = tool('read-b', 'bd_read', dict(component=fixture['component'], view='structure'))
            _, b = tool('independent-b', 'bd_edit', dict(snapshot=meta['snapshot'],
                request_id=output.name + '-independent-b', operations=[b_operation]))
            result['independent_b'] = b; save()
            if b['status'] != 'applied_observed':
                raise ValueError('Independent B edit was not confirmed; do not resend')
            current_b = observe('with-b-independent')
            if args.relation == 'endpoint_overlap':
                conflict_token = 'main_' + fingerprint(dict(domain=domain, purpose='endpoint-conflict-purity'))
                proof = dict(passed=False, model_setters_called=0)
                result['endpoint_conflict'] = proof
                proof['capture'] = native('conflict-purity-capture', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='capture', token=conflict_token)))
                request = dict(change_id=token, request_id=output.name + '-conflict')
                _, preview = tool('conflict-preview', 'bd_revert', {**request, 'preview': True}, rejection=True)
                proof['preview'] = json.loads(preview)
                _, rejected = tool('conflict-actual', 'bd_revert', request, rejection=True)
                proof['actual'] = json.loads(rejected)
                failed_id = 'edit_' + fingerprint(dict(domain=domain, request_id=request['request_id']))
                failed_events = log.read(failed_id)
                proof['failed_events'] = failed_events
                proof['after'] = native('conflict-purity-after', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='check', token=conflict_token)))
                save()
                if (proof['preview'].get('status') != 'conflict' or proof['preview'].get('setter_called') is not False
                        or proof['actual'].get('status') != 'conflict' or proof['actual'].get('setter_called') is not False
                        or any(e['kind'] in ('started', 'observed') for e in failed_events)
                        or proof['after']['unchanged'] is not True or observe('conflict-independent') != current_b):
                    raise ValueError('Endpoint overlap must refuse without native writes or altered complete CURRENT')
                proof['release'] = native('conflict-purity-release', lambda a: a._exchange(dict(
                    cmd='main_readonly_witness', action='release', token=conflict_token)))
                proof['passed'] = proof['release']['released'] is True
                _, cleanup_b = tool('overlap-b-inverse', 'bd_revert', dict(change_id=b['change_id'],
                    request_id=output.name + '-overlap-b-inverse'))
                result['independent_b_inverse'] = cleanup_b; save()
                if cleanup_b['status'] != 'verified_local' or observe('overlap-b-restored-independent') != applied:
                    raise ValueError('Overlap B inverse did not restore exact applied A; retain originals')
                result['independent_b_release'] = native('overlap-b-release', lambda a:
                    a.release(domain, b['change_id'], inverse_id=cleanup_b['change_id']))
                if result['independent_b_release'].get('released') is not True:
                    raise ValueError('Overlap B material release unconfirmed')
                current_b = applied
            pure_token = 'main_' + fingerprint(dict(domain=domain, purpose='local-connect-plan-purity'))
            def pure(action, label):
                return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=pure_token)))
            probe = dict(passed=False, local_executor_dispatched=False)
            result['local_plan'] = probe; probe['capture'] = pure('capture', 'local-plan-purity-capture'); save()
            try:
                from bd_topology_inverse import plan as typed_plan
                from bd_collection_merge import merge_order
                from bd_frozen_source_inverse import inspect as frozen_inspect
                from bd_connect_local_plan import inspect_source_projection
                if args.source_diagnostic:
                    probe['source_diagnostic'] = native('local-connect-source-images', lambda a: a._exchange(dict(
                        cmd='connect_source_images', token=token, owner=token, state='applied')))
                    save()
                planned = native('local-connect-plan', lambda a: a._exchange(dict(cmd='connect_local_plan',
                    token=token, owner=token, state='applied')))
                probe['native_plan'] = planned; save()
                if (planned['profile'] != 'native_connect_local_plan_v1' or planned['native_token'] != token
                        or planned['owner'] != token or planned['state'] != 'applied' or planned['sequence'] != 1
                        or planned['before'] != before or planned['after'] != applied or planned['current'] != current_b
                        or planned['model_setters_called'] != 0 or planned['store_called'] is not False
                        or planned['write_authorized'] is not False):
                    raise ValueError('Retained complete history and nonmutating CURRENT binding differ')
                independent = typed_plan(before, applied, current_b, operation='connect_data')
                if not independent['compatible'] or planned['values'] != independent:
                    raise ValueError('Complete native typed target differs from independent planner')
                orders = {}
                for kind in ('parent', 'drawing'):
                    order = merge_order(*(planned[kind + suffix]['members'] for suffix in ('Before', 'After', 'Current')))
                    if not order['compatible'] or planned[kind + 'Expected']['members'] != order['merged']:
                        raise ValueError('Complete physical/drawing target differs from independent merge')
                    orders[kind] = order
                probe['independent_typed'] = independent; probe['independent_orders'] = orders
                probe['independent_source'] = inspect_source_projection(planned['source_identity_evidence'], domain['oid'])
                probe['independent_native'] = frozen_inspect(planned['native_identity_evidence'], domain['oid'])
                probe['passed'] = True
            except Exception as error:
                probe.update(error=str(error), traceback=traceback.format_exc())
            finally:
                probe['purity_after'] = pure('check', 'local-plan-purity-after')
                if probe['purity_after']['unchanged'] is True:
                    probe['purity_release'] = pure('release', 'local-plan-purity-release')
                    probe['passed'] = probe['passed'] and probe['purity_release']['released'] is True
                else:
                    probe['passed'] = False
                    probe['failure_export'] = pure('export', 'local-plan-purity-failed-export')
                save()
            if args.local_history and probe['passed'] is not True:
                raise ValueError('Complete pure planning prerequisite failed; retain A and B')
        if args.local_plan:
            # Pure planning does not dispatch a local connect inverse.
            _, cleanup_b = tool('independent-b-inverse', 'bd_revert', dict(change_id=b['change_id'],
                request_id=output.name + '-independent-b-inverse'))
            result['independent_b_inverse'] = cleanup_b; save()
            if cleanup_b['status'] != 'verified_local' or observe('after-b-inverse-independent') != applied:
                raise ValueError('B did not restore exact applied A; retain both original materials')
            result['independent_b_release'] = native('independent-b-release', lambda a:
                a.release(domain, b['change_id'], inverse_id=cleanup_b['change_id']))
            if result['independent_b_release'].get('released') is not True:
                raise ValueError('B exact inverse owner material release unconfirmed')
        current, expected, head = (current_b, independent['expected'], token) if args.local_history else (applied, before, token)
        for action in ('undo', 'redo', 'undo_again'):
            request = dict(change_id=head, request_id=output.name + '-' + action)
            files = sorted(str(p) for p in (service.STORE / 'edits').rglob('*.json'))
            _, preview = tool(action + '-preview', 'bd_revert', {**request, 'preview': True})
            if (preview['status'] != 'preview' or preview['setter_called'] is not False
                    or files != sorted(str(p) for p in (service.STORE / 'edits').rglob('*.json'))):
                raise ValueError('Inverse preview failed or changed journal')
            _, actual = tool(action, 'bd_revert', request)
            if args.local_history:
                result['local_connect_executor_dispatched'] = True
            result['histories'].append(dict(action=action, before=current, expected=expected, actual=actual)); save()
            if actual['status'] != 'verified_local':
                raise ValueError('Formal connection history failed: ' + action)
            head = actual['change_id']; ctx = history_context(log, head)
            if ctx['current'] != expected or observe(action + '-independent') != expected:
                raise ValueError('Actual full history target differs: ' + action)
            if args.presentation:
                display(action, head)
            _, diff = tool(action + '-diff', 'bd_diff', dict(change_id=head), offline=True)
            if diff != log.diff(head) or len(diff['differences']) != 1:
                raise ValueError('Actual history patch differs: ' + action)
            _, duplicate = tool(action + '-duplicate', 'bd_revert', request, offline=True)
            if duplicate != actual:
                raise ValueError('History duplicate receipt differs: ' + action)
            if ctx['state'] == 'reverted' and not args.local_history:
                check = witness('check', action + '-original-witness')
                result['histories'][-1]['original_witness'] = check
                if check['unchanged'] is not True:
                    raise ValueError('Complete original witness not restored: ' + action)
            current, expected = expected, current; save()
        # The public recovery route reads the frozen actual terminal. It never
        # executes another inverse or captures a missing forward result.
        _, status = tool('final-terminal-status', 'bd_inspect', dict(query='recovery', change_id=head))
        result['terminal_status'] = status
        if status['model_setters_called'] != 0 or status['terminal_verified'] is not True:
            raise ValueError('Fresh public retained terminal query not verified')
        if args.local_history and args.relation == 'independent':
            _, cleanup_b = tool('independent-b-inverse', 'bd_revert', dict(change_id=b['change_id'],
                request_id=output.name + '-independent-b-inverse'))
            result['independent_b_inverse'] = cleanup_b; save()
            if cleanup_b['status'] != 'verified_local' or observe('after-b-inverse-independent') != before:
                raise ValueError('B inverse did not restore the full original; retain all materials')
            result['original_baseline_verification'] = native('original-retained-baseline', lambda a:
                a._exchange(dict(cmd='connect_material', action='inspect_original', token=token)))
            save()
            if any(result['original_baseline_verification'].get(k) is not True for k in (
                    'native_original_verified', 'source_original_verified', 'physical_original_verified',
                    'drawing_original_verified', 'aliases_original_verified')):
                raise ValueError('Retained original source/native references are not fully restored')
            result['independent_b_release'] = native('independent-b-release', lambda a:
                a.release(domain, b['change_id'], inverse_id=cleanup_b['change_id']))
            if result['independent_b_release'].get('released') is not True:
                raise ValueError('B exact inverse owner material release unconfirmed')
        if args.local_history and args.relation == 'endpoint_overlap':
            result['original_baseline_verification'] = native('original-retained-baseline', lambda a:
                a._exchange(dict(cmd='connect_material', action='inspect_original', token=token)))
            if any(result['original_baseline_verification'].get(k) is not True for k in (
                    'native_original_verified', 'source_original_verified', 'physical_original_verified',
                    'drawing_original_verified', 'aliases_original_verified')):
                raise ValueError('Final original references after endpoint conflict are not fully restored')
        result['released'] = native('material-release', lambda a: a.release(domain, token))
        if result['released'].get('released') is not True:
            raise ValueError('Exact retained material release not confirmed')
        result['material_retained'] = False
        result['final_original_witness'] = witness('check', 'final-original-witness')
        if result['final_original_witness']['unchanged'] is not True:
            raise ValueError('Material release changed full original witness')
        result['witness_release'] = witness('release', 'original-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['isolated_pending'] = pending.pending_path(domain).exists()
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = (result['sources_match'] and not result['isolated_pending']
            and not result['witness_retained'] and len(result['histories']) == 3
            and (not (args.local_plan or args.local_history) or result.get('local_plan', {}).get('passed') is True))
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc(), isolated_pending=pending.pending_path(domain).exists())
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('export', 'failure-witness-export')
                if (not result['material_retained'] and not result['isolated_pending']
                        and result['failure_witness']['unchanged'] is True):
                    result['failure_witness_release'] = witness('release', 'failure-unchanged-witness-release')
                    result['witness_retained'] = not result['failure_witness_release']['released']
            except Exception as export_error:
                result['failure_witness_error'] = str(export_error)
    save()
    print(json.dumps(dict(passed=result['passed'], variant=args.variant, error=result.get('error'),
        histories=len(result['histories']), formal_tool_calls=len(calls), isolated_pending=result.get('isolated_pending'),
        full_delivery=False)))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
