"""Two formal literal edits in one scope; verify preservation or retain failure.

No private model mutator and no weakened oracle. Failed preview is followed only
by distinct, guarded inverses in reverse order, with a retained full witness.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, verify_pages, wire_result
from bde_public_oracle import compare
from bde_tool_client import ToolClient
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bd_instance_pending import check as check_pending, pending_path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--source-identity-normalization', action='store_true')
    parser.add_argument('--relation', choices=('independent', 'overlap'), default='independent')
    parser.add_argument('--operation', choices=('set_literal', 'move_node', 'set_edge_route', 'rewire_data',
        'disconnect_data', 'delete_node'), default='set_literal')
    parser.add_argument('--route-offset', type=int, default=20)
    parser.add_argument('--expect-route-rejection', action='store_true')
    parser.add_argument('--owned-topology-plan', action='store_true')
    parser.add_argument('--managed-topology', action='store_true')
    args = parser.parse_args()
    if args.relation == 'overlap' and args.operation not in ('set_literal', 'rewire_data'):
        parser.error('Overlapping case requires two edits to the same literal or rewire endpoint')
    if args.expect_route_rejection and args.operation != 'set_edge_route':
        parser.error('Route rejection requires set_edge_route')
    if args.owned_topology_plan and (args.operation not in ('disconnect_data', 'delete_node')
            or args.relation != 'independent'):
        parser.error('Owned topology planning requires a formal independent disconnect/delete history')
    if args.managed_topology and (args.operation not in ('disconnect_data', 'delete_node')
            or args.relation != 'independent' or args.owned_topology_plan):
        parser.error('Managed topology requires an independent disconnect/delete history without the old owned-plan boundary probe')
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned verified preflight and fresh output required')
    preflight = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(preflight['manifest']))
    if preflight['passed'] is not True or epoch != preflight['process_epoch']:
        raise ValueError('Verified current-epoch fixture required')
    fixture = json.loads(sorted((prior / 'fixture-operator_fanout').glob('*.json'))[-1].read_text(encoding='utf-8'))
    domain = {'session': output.name, 'database': manifest['database'], 'process_epoch': epoch, 'oid': fixture['oid']}
    check_pending(domain)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    for name in ('snapshots', 'raw', 'documents', 'cursors', 'edits'):
        (service.STORE / name).mkdir(parents=True)
    candidate = source_manifest()
    for rel, digest in candidate.items():
        p = service.ROOT / rel
        if hashlib.sha256(p.read_bytes()).hexdigest() != digest:
            raise ValueError('Candidate drift before seal')
        dest = output / 'source' / rel; dest.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(p, dest)
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1', ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1')
    if args.source_identity_normalization:
        environment['ASCET_BD_SOURCE_IDENTITY_NORMALIZATION'] = 'identity_v1'
    topology = args.operation in ('disconnect_data', 'delete_node')
    if topology:
        if not args.source_identity_normalization:
            parser.error('Topology independent edit requires actual field source normalization')
        environment.update(ASCET_BD_TOPOLOGY_EXACT_INVERSE='native_source_v1',
            ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION='identity_v1',
            ASCET_BD_TOPOLOGY_LOCAL_INVERSE='native_source_v1', ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
        if args.managed_topology:
            environment['ASCET_BD_MANAGED_TOPOLOGY_INVERSE'] = 'native_source_v1'
    witness_token = 'main_' + fingerprint({'domain': domain, 'purpose': 'two_independent_actual_literals'})
    calls = []
    result = {'passed': False, 'restored': False, 'complete_case_pass': False, 'full_delivery': False,
        'scope': 'Two actual formal literal edits on distinct objects in the same native/source scope',
        'source_manifest': candidate, 'manifest': preflight['manifest'], 'process_epoch': epoch,
        'domain': domain, 'component': fixture['component'], 'witness_retained': False}
    result['source_identity_normalization_requested'] = args.source_identity_normalization
    result['relation'] = args.relation
    result['operation'] = args.operation
    result['formal_topology_local_inverse_dispatched'] = False
    result['formal_managed_topology_inverse_dispatched'] = False
    result['owned_topology_planning_requested'] = args.owned_topology_plan
    result['managed_topology_requested'] = args.managed_topology
    if args.operation != 'set_literal':
        result['scope'] = 'Formal ' + args.operation + ' inverse/redo preserving a distinct later literal edit'
    if args.relation == 'overlap':
        result['scope'] = 'Two actual formal ' + args.operation + ' edits on the same target; older inverse must reject before writing'
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def native(label, function):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain); value = function(adapter)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    def witness(action, label):
        return native(label, lambda a: a._exchange({'cmd': 'main_readonly_witness', 'action': action, 'token': witness_token}))

    def observe(label):
        value = native(label, lambda a: {'native': a.observe(domain, []), 'public': a.observe_public(domain)})
        if not compare(value['native']['entries'], value['public'])['passed']:
            raise ValueError('Independent public/native mismatch: ' + label)
        return value

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)

    def tool(name, arguments, *, allow_rejection=False):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls); meta, body, error = client.call(name, arguments)
        save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error and not allow_rejection:
            raise ValueError('Formal tool rejected: ' + body)
        if not error:
            verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return meta, body, error

    def value(name, arguments, **options):
        _, body, error = tool(name, arguments, **options)
        return json.loads(body), error

    def apply_operation(operation, label):
        meta, _, _ = tool('bd_read', {'component': fixture['component'], 'view': 'structure'})
        response, _ = value('bd_edit', {'snapshot': meta['snapshot'], 'request_id': output.name + '_' + label,
            'operations': [operation]})
        result[label] = response; save()
        if response['status'] != 'applied_observed':
            raise ValueError('Actual independent edit not confirmed')
        return response['change_id']

    def edit(ref, old, new, label):
        return apply_operation({'op': 'set_literal', 'target': 'Main/' + ref,
                                'expect': {'text': old}, 'value': {'text': new}}, label)

    def revert(head, label):
        response, _ = value('bd_revert', {'change_id': head, 'request_id': output.name + '_' + label})
        result[label] = response; save()
        if response['status'] != 'verified_local':
            raise ValueError('Distinct actual inverse not confirmed: ' + label)
        return response['change_id']

    def owned_plan(token, owner, label, expected_current):
        from bd_topology_inverse import plan as typed_plan
        from bd_collection_merge import merge_order
        from bd_source_inverse_oracle import decode_graph, _merge, equal
        from bd_frozen_source_inverse import inspect as inspect_frozen_source
        pure_token = 'main_' + fingerprint({'domain': domain, 'plan': label, 'output': str(output)})
        purity = {'token': pure_token, 'passed': False}
        result[label] = purity; save()
        def proof(action, suffix):
            return native(label + '-' + suffix, lambda adapter: adapter._exchange(
                {'cmd': 'main_readonly_witness', 'action': action, 'token': pure_token}))
        purity['capture'] = proof('capture', 'capture'); save()
        try:
            native_plan = native(label, lambda adapter: adapter._exchange(
                {'cmd': 'topology_owned_plan', 'token': token, 'owner': owner, 'state': 'reverted'}))
            if (native_plan['owner'] != owner or native_plan['state'] != 'reverted'
                    or native_plan['sequence'] != 2 or native_plan['current'] != expected_current
                    or native_plan['model_setters_called'] != 0 or native_plan['store_called'] is not False
                    or native_plan['write_authorized'] is not False or native_plan['managed_inverse_enabled'] is not False
                    or native_plan['normalization_progress'] != {'state': 'prepared', 'native_primitives': 0,
                        'source_primitives': 0}):
                raise ValueError('Exact current owner and nonmutating material plan required')
            independent = typed_plan(native_plan['before'], native_plan['after'], native_plan['current'],
                                     operation=args.operation)
            if native_plan['values'] != independent:
                raise ValueError('Owned topology target differs from independent complete Python planner')
            orders = {}
            for kind in ('parent', 'drawing'):
                order = merge_order(*(native_plan[kind + suffix]['members'] for suffix in ('Before', 'After', 'Current')))
                if not order['compatible'] or native_plan[kind + 'Expected']['members'] != order['merged']:
                    raise ValueError('Actual owned order target differs from independent splice plan: ' + kind)
                if kind == 'drawing' and native_plan[kind + 'Expected']['numbers'] != list(range(1, len(order['merged']) + 1)):
                    raise ValueError('Actual drawing target must include every causal number')
                orders[kind] = order
            roots = {role: decode_graph(graph, domain['oid']) for role, graph in native_plan['source_graphs'].items()}
            expected_source, source_analysis = _merge(roots['original'], roots['applied'], roots['current'])
            # Separate cloned graphs lose cross-phase identity. Keep their analysis
            # for diagnosis; the complete frozen-cell oracle verifies actual
            # references, sharing and detached anchors using one native table.
            purity['separate_clone_source_analysis'] = source_analysis
            purity['separate_clone_source_agrees'] = (source_analysis['compatible']
                and equal(expected_source, roots['candidate']))
            source_identity = inspect_frozen_source(native_plan['source_identity_evidence'], domain['oid'])
            purity['independent_typed_plan'] = independent
            purity['independent_orders'] = orders
            purity['independent_source'] = source_identity
            purity['passed'] = True
        except Exception as error:
            purity['error'] = str(error); purity['traceback'] = traceback.format_exc()
        finally:
            purity['after'] = proof('check', 'after')
            if purity['after']['unchanged'] is True:
                purity['release'] = proof('release', 'release')
                purity['passed'] = purity['passed'] and purity['release']['released'] is True
            else:
                purity['passed'] = False
                purity['export'] = proof('export', 'failed-export')
            save()
        return purity['passed']

    try:
        result['capture'] = witness('capture', 'witness-capture'); result['witness_retained'] = True; save()
        before = observe('before')
        baseline = json.loads((prior / 'operator_fanout-2/after.json').read_text(encoding='utf-8'))
        if before['native'] != baseline['native'] or before['public'] != baseline['public']:
            raise ValueError('Full preflight baseline changed')
        literals = [r for r in before['native']['entries'] if r['kind'] == 'node' and 'literal' in r]
        first = next(r for r in literals if r['ref'] == fixture['final_anchor'])
        second = first if args.relation == 'overlap' else next(r for r in literals if r['ref'] != first['ref'])
        if args.operation == 'set_literal':
            a = edit(first['ref'], first['literal'], '1234567.75', 'edit_a')
        elif args.operation == 'move_node':
            origin = first.get('anchor', first['position'])
            a = apply_operation({'op': 'move_node', 'target': 'Main/' + first['ref'],
                                 'position': [origin[0] + 40, origin[1] + 20]}, 'edit_a')
        elif topology:
            rows = {row['ref']: row for row in before['native']['entries']}
            target_node = rows[fixture['target_node']]
            first = target_node if args.operation == 'delete_node' else next(row for row in rows.values()
                if row['kind'] == 'edge' and row['source'] in target_node['pins'])
            involved = {target_node['ref']}
            if args.operation == 'disconnect_data':
                involved.update(rows[p]['owner'] for p in (first['source'], first['target']))
            second = next(row for row in literals if row['ref'] not in involved
                and row['ref'] == fixture['final_anchor'])
            a = apply_operation({'op': args.operation, 'target': 'Main/' + first['ref']}, 'edit_a')
            result['after_a'] = observe('after-a')
            result['scope'] = ('Formal ' + args.operation + ' complete managed inverse lifecycle preserving a later literal'
                if args.managed_topology else 'Formal first local ' + args.operation + ' inverse preserving a later literal; topology redo remains unavailable')
            save()
        elif args.operation == 'rewire_data':
            rows = {row['ref']: row for row in before['native']['entries']}
            choices = []
            for edge in (row for row in rows.values() if row['kind'] == 'edge'):
                for pin in (row for row in rows.values() if row['kind'] == 'pin' and row.get('output') is True
                            and row['ref'] != edge['source'] and 'literal' in rows[row['owner']]):
                    owners = {rows[edge['source']]['owner'], rows[edge['target']]['owner'], pin['owner']}
                    independent = next((row for row in literals if row['ref'] not in owners), None)
                    if independent is not None:
                        choices.append((edge, pin, independent))
            if not choices:
                raise ValueError('Exact rewire endpoints and independent literal required')
            first, replacement, second = choices[0]
            result['rewire_endpoints'] = {'edge': first['ref'], 'before_source': first['source'],
                'after_source': replacement['ref'], 'target': first['target']}; save()
            a = apply_operation({'op': 'rewire_data', 'target': 'Main/' + first['ref'],
                'source': 'Main/' + replacement['ref'], 'expect': {'source': 'Main/' + first['source'],
                    'native_connection_type': first['type']}}, 'edit_a')
        else:
            first = next(r for r in before['native']['entries'] if r['kind'] == 'edge')
            pin_owners = {r['ref']: r['owner'] for r in before['native']['entries'] if r['kind'] == 'pin'}
            endpoint_owners = {pin_owners[first['source']], pin_owners[first['target']]}
            second = next(r for r in literals if r['ref'] not in endpoint_owners)
            start, end = first['route'][0], first['route'][-1]
            route = [start, [start[0] + args.route_offset, start[1]], [start[0] + args.route_offset, end[1] + 40],
                     [end[0], end[1] + 40], end]
            if args.expect_route_rejection:
                result['scope'] = 'Formal native-raster route rejection before model writes'
                meta, _, _ = tool('bd_read', {'component': fixture['component'], 'view': 'structure'})
                _, body, rejected = tool('bd_edit', {'snapshot': meta['snapshot'],
                    'request_id': output.name + '_offgrid_route', 'operations': [
                        {'op': 'set_edge_route', 'target': 'Main/' + first['ref'], 'points': route}]}, allow_rejection=True)
                result['rejection'] = {'is_error': rejected, 'body': body}
                if not rejected or 'BDE_GRID_ALIGNMENT_REQUIRED' not in body:
                    raise ValueError('Native off-grid route was not rejected before dispatch')
                after = observe('after-rejection')
                result['witness_final'] = witness('check', 'witness-final')
                result['restored'] = (after == before and result['witness_final']['unchanged'] is True)
                result['no_native_pending'] = not pending_path(domain).exists()
                rejection = json.loads(body)
                rejection_events = StructureJournal(service.STORE / 'edits').read(rejection['change_id'])
                result['rejected_journal_no_dispatch'] = (rejection['status'] == 'rejected'
                    and rejection.get('setter_called') is False
                    and [e['kind'] for e in rejection_events] == ['intent', 'finished']
                    and rejection_events[-1]['payload'].get('status') == 'rejected'
                    and rejection_events[-1]['payload'].get('setter_called') is False)
                if not result['restored'] or not result['no_native_pending'] or not result['rejected_journal_no_dispatch']:
                    raise ValueError('Off-grid rejection changed complete model or dispatched a mutation')
                result['witness_release'] = witness('release', 'witness-release'); result['witness_retained'] = False
                result['sources_match'] = candidate == source_manifest(); result['tool_calls'] = len(calls)
                result['passed'] = result['sources_match'] and result['witness_release']['released'] is True
                save()
                print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'tool_calls', 'witness_retained')}))
                return 0 if result['passed'] else 1
            a = apply_operation({'op': 'set_edge_route', 'target': 'Main/' + first['ref'], 'points': route}, 'edit_a')
        if args.operation == 'rewire_data' and args.relation == 'overlap':
            third = next(row for row in rows.values() if row['kind'] == 'pin' and row.get('output') is True
                and row['ref'] not in (first['source'], replacement['ref']) and 'literal' in rows[row['owner']])
            b = apply_operation({'op': 'rewire_data', 'target': 'Main/' + first['ref'],
                'source': 'Main/' + third['ref']}, 'edit_b')
        else:
            b = edit(second['ref'], '1234567.75' if args.relation == 'overlap' else second['literal'], '87654.25', 'edit_b')
        both = observe('both-edits')
        guard_token = 'main_' + fingerprint({'domain': domain, 'purpose': 'preview_mutation_guard', 'relation': args.relation})
        result['preview_witness_capture'] = native('preview-witness-capture', lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': 'capture', 'token': guard_token}))
        preview, rejected = value('bd_revert', {'change_id': a, 'request_id': output.name + '_undo_a_with_b',
            'preview': True}, allow_rejection=True)
        result['independent_inverse_preview'] = preview
        result['preview_compatible'] = not rejected and preview['status'] == 'preview'; save()
        result['preview_witness_final'] = native('preview-witness-check', lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': 'check', 'token': guard_token}))
        if result['preview_witness_final']['unchanged'] is not True:
            raise ValueError('Formal inverse preview mutated native/source/identity state; preserve witness')
        result['preview_witness_release'] = native('preview-witness-release', lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': 'release', 'token': guard_token}))
        if args.relation == 'overlap':
            result['overlap_rejected_before_write'] = (not result['preview_compatible']
                and preview.get('setter_called') is False and result['preview_witness_final']['unchanged'])
            result['independent_change_preserved'] = None
            result['failure_reason'] = preview.get('error', preview) if not result['overlap_rejected_before_write'] else None
            revert(b, 'cleanup_b')
            revert(a, 'cleanup_a')
        elif result['preview_compatible']:
            inverse_a = revert(a, 'undo_a_with_b')
            current = observe('a-undone-b-preserved')
            rows = {r['ref']: r for r in current['native']['entries']}
            if rows[first['ref']] != first or rows[second['ref']] != next(
                    r for r in both['native']['entries'] if r['ref'] == second['ref']):
                raise ValueError('Independent literal or its actual layout was not preserved')
            result['independent_change_preserved'] = True
            if topology:
                from bd_delete_inverse import plan as topology_plan
                independent = topology_plan(before['native'], result['after_a']['native'], both['native'])
                if independent['compatible'] is not True or current['native'] != independent['expected']:
                    raise ValueError('Complete independent typed topology inverse target differs')
                material = native('topology-local-undo-material', lambda adapter: adapter._exchange(
                    {'cmd': 'topology_material_inspect', 'token': a}))
                if (material.get('local_inverse_profile') != 'ordinary_topology_local_inverse_v1'
                        or material.get('local_inverse_target_verified') is not True
                        or material.get('local_inverse_progress', {}).get('state') != 'restored'):
                    raise ValueError('Actual formal native/source local inverse was not verified')
                result['formal_topology_local_inverse_dispatched'] = True
                result['independent_full_typed_inverse_verified'] = True
                result['local_inverse_progress'] = material['local_inverse_progress']
                owned = material.get('owned_head', {})
                if (material.get('head_owner') != inverse_a or material.get('owned_head_retained') is not True
                        or owned.get('profile') != 'actual_topology_owned_head_v1'
                        or owned.get('owner') != inverse_a or owned.get('previous_owner') != a
                        or owned.get('sequence') != 2 or owned.get('before_state') != 'applied'
                        or owned.get('after_state') != 'reverted'
                        or owned.get('before_values') != both['native']
                        or owned.get('after_values') != current['native']
                        or owned.get('after_parent_count', -1) - owned.get('before_parent_count', -1)
                            != material['retained_graphical_objects']
                        or owned.get('after_drawing_count', -1) - owned.get('before_drawing_count', -1)
                            != material['retained_graphical_objects']):
                    raise ValueError('Inverse does not own its actual native/source/order/typed head')
                result['formal_topology_actual_head_handoff_verified'] = True
                result['topology_owned_head'] = owned
                from bd_topology_head_snapshot import validate as validate_head
                inverse_events = StructureJournal(service.STORE / 'edits').read(inverse_a)
                saved_heads = [event['payload'] for event in inverse_events if event['kind'] == 'topology_head_retained']
                if len(saved_heads) != 1:
                    raise ValueError('Formal topology inverse lacks its durable complete actual head')
                saved_head = validate_head(saved_heads[0], domain=domain, token=a, owner=inverse_a,
                    state='reverted', operation=args.operation, previous_owner=a)
                if saved_head['before'] != both['native'] or saved_head['after'] != current['native']:
                    raise ValueError('Durable actual head differs from independent complete execution observations')
                result['durable_full_topology_head_verified'] = True
                result['durable_head_sha256'] = fingerprint(saved_head)
                if args.owned_topology_plan:
                    owned_plan(a, inverse_a, 'owned-plan-with-b', current['native'])
                if args.managed_topology:
                    from bd_topology_execution import validate as validate_execution
                    def audit_managed(change, old_owner, old_state, old_current, new_current, sequence, label):
                        log = StructureJournal(service.STORE / 'edits')
                        history = log.read(change)
                        actual = next(e['payload'] for e in history if e['kind'] == 'observed')
                        prepared = next(e['payload'] for e in history if e['kind'] == 'prepared')
                        full_head = next(e['payload'] for e in history if e['kind'] == 'topology_head_retained')
                        validate_execution(actual['topology_execution'], token=a, operation=args.operation,
                            head=old_owner, result_id=change, state=old_state)
                        validate_head(full_head, domain=domain, token=a, owner=change,
                            state='applied' if old_state == 'reverted' else 'reverted', operation=args.operation,
                            previous_owner=old_owner)
                        if (full_head['sequence'] != sequence or actual['topology_execution']['execution_sequence'] != sequence
                                or prepared['before'] != full_head['before'] or actual['after'] != full_head['after']
                                or full_head['before'] != old_current or full_head['after'] != new_current
                                or full_head['parent_before'] != actual['parent_order_effects'][0]['before']
                                or full_head['parent_after'] != actual['parent_order_effects'][0]['after']
                                or full_head['drawing_before'] != actual['drawing_order_effects'][0]['before']
                                or full_head['drawing_after'] != actual['drawing_order_effects'][0]['after']):
                            raise ValueError('Formal managed actual head differs from independent full typed/order observations')
                        status = native(label + '-fresh-status', lambda adapter: adapter.recovery_status(domain, a))
                        if status['current'] != new_current or any(status.get(key) is not True for key in (
                                'current_topology_native_matches_terminal', 'current_topology_source_matches_terminal',
                                'current_parent_order_matches_terminal', 'current_drawing_order_matches_terminal',
                                'current_edge_dependencies_match_terminal', 'current_graphical_matches_terminal')):
                            raise ValueError('Fresh pure managed topology status lacks complete terminal native/source/order proof')
                        if status['topology_execution'] != actual['topology_execution']:
                            raise ValueError('Fresh native execution proof differs from WAL')
                        result[label + '_actual_head_verified'] = True
                        result[label + '_head_sha256'] = fingerprint(full_head)
                        save()
                    pure = 'main_' + fingerprint({'domain': domain, 'purpose': 'managed-preview'})
                    result['managed_preview_capture'] = native('managed-preview-capture', lambda adapter: adapter._exchange(
                        {'cmd': 'main_readonly_witness', 'action': 'capture', 'token': pure}))
                    preview_redo, _ = value('bd_revert', {'change_id': inverse_a,
                        'request_id': output.name + '_redo_a_with_b', 'preview': True})
                    result['managed_inverse_preview'] = preview_redo
                    result['managed_preview_final'] = native('managed-preview-check', lambda adapter: adapter._exchange(
                        {'cmd': 'main_readonly_witness', 'action': 'check', 'token': pure}))
                    if preview_redo['status'] != 'preview' or result['managed_preview_final']['unchanged'] is not True:
                        raise ValueError('Managed topology preview failed or mutated the complete model')
                    native('managed-preview-release', lambda adapter: adapter._exchange(
                        {'cmd': 'main_readonly_witness', 'action': 'release', 'token': pure}))
                    redo_a = revert(inverse_a, 'redo_a_with_b')
                    redone = observe('a-redone-b-preserved')
                    if redone != both:
                        raise ValueError('Managed topology redo failed to restore A while preserving B')
                    audit_managed(redo_a, inverse_a, 'reverted', current['native'], redone['native'], 3, 'managed_redo')
                    undone = revert(redo_a, 'undo_redo_a_with_b')
                    again = observe('a-reundone-b-preserved')
                    if again != current:
                        raise ValueError('Managed topology repeated inverse failed to preserve complete prior actual state/B')
                    audit_managed(undone, redo_a, 'applied', redone['native'], again['native'], 4, 'managed_undo')
                    result['formal_managed_topology_inverse_dispatched'] = True
                    result['managed_topology_double_inverse_verified'] = True; save()
                else:
                    gap, rejected_gap = value('bd_revert', {'change_id': inverse_a,
                        'request_id': output.name + '_topology_redo_gap'}, allow_rejection=True)
                    if not rejected_gap or gap.get('code') != 'REVERT_UNAVAILABLE':
                        raise ValueError('Topology managed capability boundary changed unexpectedly')
                    result['topology_redo_gap'] = gap; save()
                revert(b, 'cleanup_b')
                if args.owned_topology_plan:
                    cleaned = observe('after-b-cleanup')
                    owned_plan(a, inverse_a, 'owned-plan-after-b-cleanup', cleaned['native'])
            else:
                redo_a = revert(inverse_a, 'redo_a_with_b')
                redone = observe('a-redone-b-preserved')
                if redone['native'] != both['native'] or redone['public'] != both['public']:
                    raise ValueError('Actual inverse-of-inverse failed to preserve independent edit')
                revert(b, 'cleanup_b')
                revert(redo_a, 'cleanup_a')
        else:
            if preview.get('setter_called') is not False:
                raise ValueError('Rejected preview does not prove zero setters; preserve material')
            result['independent_change_preserved'] = False
            result['failure_reason'] = preview.get('error', preview)
            revert(b, 'cleanup_b')
            revert(a, 'cleanup_a')
        final = observe('final-restored')
        result['witness_final'] = witness('check', 'witness-final')
        result['restored'] = (final['native'] == before['native'] and final['public'] == before['public']
                              and result['witness_final']['unchanged'])
        if not result['restored']:
            raise ValueError('Full native/source/identity baseline did not restore')
        result['witness_release'] = witness('release', 'witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        if args.owned_topology_plan and not all(result.get(label, {}).get('passed') is True
                for label in ('owned-plan-with-b', 'owned-plan-after-b-cleanup')):
            raise ValueError('Owned topology pure planning failed; formal history cleanup completed and original restored')
        result['sources_match'] = candidate == source_manifest()
        requirement = result.get('overlap_rejected_before_write') if args.relation == 'overlap' else result['independent_change_preserved']
        result['passed'] = (requirement and not result['witness_retained'] and result['sources_match']
            and (not args.managed_topology or result.get('managed_topology_double_inverse_verified') is True))
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        try:
            result['failed_witness_export'] = witness('export', 'witness-failed-export')
            if not calls and result['failed_witness_export']['unchanged'] is True:
                result['zero_tool_failure_witness_release'] = witness('release', 'witness-failed-release')
                result['witness_retained'] = result['zero_tool_failure_witness_release']['released'] is not True
                result['zero_tool_failure_live_unchanged'] = True
        except Exception as export_error:
            result['witness_export_error'] = str(export_error)
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'preview_compatible', 'tool_calls', 'error', 'failure_reason')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
