"""Actual formal Main literal edit/automatic diff/inverse on a preflighted fixture."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal, differences
from bd_structural_tools import select
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import json_lines, save_new, verify_pages, wire_result, build_oracle
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--operation', choices=('set_literal', 'delete_node', 'disconnect_data'), default='set_literal')
    parser.add_argument('--fixture-structure', choices=('literal_fanout', 'operator_chain', 'operator_fanout'), default='literal_fanout')
    parser.add_argument('--verify-retention', action='store_true', help='Verify MAIN-03A native ownership through formal recovery query; does not prove redo')
    parser.add_argument('--verify-managed-history', action='store_true', help='Execute formal inverse-of-inverse and final restore for a literal, with independent native identity witness')
    parser.add_argument('--verify-native-witness', action='store_true',
        help='Check full original native/source/identity/order witness for the selected operation, without enabling managed history')
    parser.add_argument('--verify-topology-material', action='store_true',
        help='Verify actual disconnect/delete execution heads retained by the fixed source-capture path')
    parser.add_argument('--verify-source-material', action='store_true',
        help='Verify actual retained source images at each formal managed-history terminal; requires identity_v1 capture')
    parser.add_argument('--material-preflight-only', action='store_true',
        help='Capture/export strict native witness and run reads/preview only; no model edit, not full acceptance')
    parser.add_argument('--retention-fault', choices=('before_dispatch', 'completed_reply_lost'),
        help='Eval-only native journal fault adapter; inverse execution is not a formal Tool.call in these trials')
    args = parser.parse_args()
    verify_witness = args.verify_native_witness or args.verify_managed_history
    if args.verify_topology_material and (not verify_witness or args.operation not in ('disconnect_data', 'delete_node')
            or os.environ.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'):
        parser.error('Topology material verification requires native witness, disconnect/delete and identity_v1 capture')
    if args.retention_fault and not args.verify_retention:
        parser.error('Retention fault trials require --verify-retention')
    if args.verify_managed_history and (args.operation != 'set_literal' or args.retention_fault):
        parser.error('Managed history currently requires normal set_literal workflow')
    if args.material_preflight_only and (not args.verify_managed_history or args.retention_fault):
        parser.error('Material-only preflight requires normal managed-history witness mode')
    if args.verify_source_material and (not args.verify_managed_history or args.material_preflight_only
            or os.environ.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'):
        parser.error('Source material verification requires actual managed history with identity_v1 capture')
    preflight, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not preflight.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Verified owned preflight and fresh output required')
    prior = json.loads((preflight / 'result.json').read_text(encoding='utf-8'))
    if prior.get('passed') is not True or len(prior['rounds']) != 9:
        raise ValueError('Three-structure/three-round preflight required')
    manifest_path = Path(prior['manifest'])
    manifest, process, epoch = live_manifest(manifest_path)
    if epoch != prior['process_epoch']:
        raise ValueError('Fixture epoch expired')
    fixture = json.loads(sorted((preflight / ('fixture-' + args.fixture_structure)).glob('*.json'))[-1].read_text(encoding='utf-8'))
    if fixture.get('passed') is not True:
        raise ValueError('Verified fixture required')
    domain = {'session': output.name, 'database': manifest['database'], 'process_epoch': epoch, 'oid': fixture['oid']}
    check_pending(domain)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    for name in ('snapshots', 'raw', 'documents', 'cursors', 'edits'):
        (service.STORE / name).mkdir(parents=True, exist_ok=True)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    result = {'passed': False, 'restored': False, 'scope': 'MAIN-02 formal selected Main operation/actual diff/original inverse only',
        'executor_profile': os.environ.get('ASCET_BD_OPERATION_EXECUTOR', 'legacy_monolithic'),
        'operation': args.operation,
        'topology_source_normalization_requested': os.environ.get('ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION') == 'identity_v1',
        'topology_local_inverse_requested': os.environ.get('ASCET_BD_TOPOLOGY_LOCAL_INVERSE') == 'native_source_v1',
        'source_material_verification_requested': args.verify_source_material,
        'retention_fault': args.retention_fault,
        'inverse_execution_layer': 'native_journal_fault_adapter' if args.retention_fault else 'formal_Tool.call',
        'manifest': str(manifest_path), 'process_epoch': epoch, 'domain': domain, 'component': fixture['component'],
        'source_manifest': source_manifest(), 'full_delivery': False, 'complete_case_pass': False,
        'not_verified': ['other Main edits/wires/deletion', 'inverse-of-inverse', 'native visual/Undo lifecycle',
            'all native types/owners/interfaces', 'complete case repetitions', 'original recovery/real agent/package']}
    calls = []
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()
    witness_token = 'main_' + fingerprint({'domain': domain, 'managed_history': output.name})
    witness_binary = build_oracle(output) if verify_witness else None

    def witness(action, label=None):
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: witness_binary)
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                # Preflight already initialized the exact native scope. Opening
                # only binds the session; capture precedes this run's first read.
                adapter._ensure_open(domain)
                proof = adapter._exchange({'cmd': 'main_readonly_witness', 'action': action, 'token': witness_token})
        save_new(output / ('witness-' + (label or action) + '.json'), {'proof': proof, 'wire': wire_result(wire)})
        return proof

    def observation(name):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with NativeStructureAdapter(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                native, public = adapter.observe(domain, []), adapter.observe_public(domain)
        oracle = compare(native['entries'], public)
        if not oracle['passed']:
            raise ValueError('Independent public graph differs at ' + name)
        value = {'native': native, 'public': public, 'oracle': oracle, 'wire': wire_result(wire)}
        save_new(output / (name + '.json'), value)
        return value

    def source_material(native_token, phase, expected_state):
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: witness_binary)
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                material = adapter._exchange({'cmd': 'field_material_inspect', 'token': native_token})
        save_new(output / ('source-material-' + phase + '.json'), {'material': material, 'wire': wire_result(wire)})
        if (material['state'] != expected_state or material['component_oid'] != domain['oid']
                or material['native_source_images_before_retained'] is not True
                or material['native_source_images_after_retained'] is not True
                or material['native_source_images_before_objects'] <= 0
                or material['native_source_images_after_objects'] <= 0
                or type(material['native_source_root_preserved']) is not bool):
            raise ValueError('Actual retained source material/state differs at ' + phase)
        summary = {key: material[key] for key in (
            'state', 'native_source_images_before_retained', 'native_source_images_after_retained',
            'native_source_images_before_objects', 'native_source_images_after_objects',
            'native_source_root_preserved')}
        result.setdefault('source_material_terminals', {})[phase] = summary
        return summary

    def topology_material(native_token, phase, expected_state, sequence):
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: witness_binary)
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                material = adapter._exchange({'cmd': 'topology_material_inspect', 'token': native_token})
        save_new(output / ('topology-material-' + phase + '.json'), {'material': material, 'wire': wire_result(wire)})
        if (material['profile'] != 'ordinary_topology_material_v1' or material['state'] != expected_state
                or material['component_oid'] != domain['oid'] or material['operation'] != args.operation
                or material['execution_sequence'] != sequence or material['execution_direction'] != phase
                or material['execution_head_retained'] is not True or material['field_executor_bound'] is not False
                or material['managed_topology_inverse_enabled'] is not False
                or set(material['phases']) != {'prepared', 'before', 'after'}
                or any(material['phases'][p]['source_objects'] <= 0 for p in ('before', 'after'))
                or material['phases']['after']['source_current_matches'] is not True
                or any(material[k] is not True for k in ('parent_order_retained', 'drawing_order_retained', 'original_ids_retained'))):
            raise ValueError('Actual topology material execution head differs at ' + phase)
        from bd_native_material_evidence import field_schemas
        for p in ('before', 'after'):
            field_schemas(material['phases'][p]['graph'], material['phases'][p]['fields'])
        if result['topology_source_normalization_requested']:
            progress = material.get('source_normalization_progress', {})
            if (material.get('source_normalization_profile') != 'ordinary_topology_forward_source_v1'
                    or progress.get('state') != 'applied' or progress.get('completed_primitives', 0) <= 0
                    or progress.get('completed_primitives') != progress.get('cell_count')
                    or material.get('source_correspondence_statistics', {}).get('matched_records', 0) <= 0):
                raise ValueError('Formal forward structural source normalization was not fully observed')
        result.setdefault('topology_material_terminals', {})[phase] = {
            'execution_sequence': sequence, 'state': expected_state,
            'source_before_objects': material['phases']['before']['source_objects'],
            'source_after_objects': material['phases']['after']['source_objects'],
            'original_source_current_matches': material['source_before_current_matches'],
            'original_source_root_current_same': material['source_root_current_same'],
            'managed_topology_inverse_enabled': False}
        if result['topology_source_normalization_requested']:
            result['topology_material_terminals'][phase]['source_normalization_progress'] = progress
            result['topology_material_terminals'][phase]['source_correspondence_statistics'] = material['source_correspondence_statistics']
        return material

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
        calls.append(row)

    def call(tool, arguments, expect_error=False):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls)
            meta, body, error = client.call(tool, arguments)
        save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error != expect_error:
            raise ValueError('Unexpected formal outcome: ' + tool + ' ' + body)
        if not error:
            verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return meta, body, wire_result(wire)

    def value(tool, arguments):
        meta, body, wire = call(tool, arguments)
        return meta, json.loads(body), wire

    try:
        if verify_witness:
            result['witness_capture'] = witness('capture')
            result['witness_retained'] = True
            save()
            if not result['witness_capture']['unchanged']:
                raise ValueError('Managed history initial native witness differs')
        before = observation('before')
        preflight_baseline = json.loads((preflight / (args.fixture_structure + '-2/after.json')).read_text(encoding='utf-8'))
        if before['native'] != preflight_baseline['native'] or before['public'] != preflight_baseline['public']:
            raise ValueError('Preflight fixture changed; no edit')
        if verify_witness:
            result['witness_after_initial_observation'] = witness('check', 'after-initial-observation')
        read_meta, body, _ = call('bd_read', {'component': fixture['component'], 'view': 'structure'})
        snapshot = read_meta['snapshot']
        if verify_witness:
            result['witness_after_tool_read'] = witness('check', 'after-tool-read')
        if json_lines(body) != [{**row, 'ref': 'Main/' + row['ref']} for row in before['native']['entries']]:
            raise ValueError('Formal full baseline differs')
        target_ref = fixture['final_anchor'] if args.operation == 'set_literal' else fixture['target_node']
        if args.operation == 'disconnect_data':
            pins = {row['ref']: row['owner'] for row in before['native']['entries'] if row['kind'] == 'pin'}
            target_ref = next(row['ref'] for row in before['native']['entries'] if row['kind'] == 'edge'
                and pins[row['source']] == fixture['target_node'] and pins[row['target']] == fixture['partner_nodes'][0])
        target = next(row for row in before['native']['entries'] if row['ref'] == target_ref)
        operation = {'op': args.operation, 'target': 'Main/' + target_ref}
        if args.operation == 'set_literal':
            operation.update(expect={'text': target['literal']}, value={'text': '1234567.75'})
        arguments = {'snapshot': snapshot, 'request_id': output.name + '_literal', 'operations': [operation]}
        _, preview, _ = value('bd_edit', {**arguments, 'preview': True})
        result['preview'] = preview
        if preview['status'] != 'preview' or preview['setter_called'] is not False:
            raise ValueError('Native preview was not a zero-setter preview')
        if verify_witness:
            result['witness_after_preview'] = witness('check', 'after-preview')
            pure = all(result[key]['unchanged'] for key in ('witness_after_initial_observation',
                'witness_after_tool_read', 'witness_after_preview'))
            result['read_preview_native_purity'] = pure
            if not pure:
                raise ValueError('Native state changed during read/preview; retained witness, no model edit')
        if args.material_preflight_only:
            result['scope'] = 'MAIN-03C.1 native witness export and formal read/preview only; no edit/inverse acceptance'
            result['witness_export'] = witness('export')
            result['witness_released'] = witness('release')['released']
            result['witness_retained'] = not result['witness_released']
            result['model_edit_dispatched'] = False
            result['sources_match'] = result['source_manifest'] == source_manifest()
            result['restored'] = result['passed'] = result['witness_released'] and result['sources_match']
            result['tool_calls'] = len(calls)
            save()
            print(json.dumps({'passed': result['passed'], 'scope': result['scope'], 'tool_calls': len(calls),
                'model_edit_dispatched': False}, ensure_ascii=False))
            return 0 if result['passed'] else 1
        result['stage'] = 'edit_started'
        save()
        _, edit, _ = value('bd_edit', arguments)
        result['edit'] = edit
        save()
        if edit['status'] != 'applied_observed' or not edit.get('after_snapshot') or edit['additional_ASCET_reads'] != 0:
            raise ValueError('Actual edit lacks automatic observed after snapshot')
        after = observation('after')
        if verify_witness:
            result['witness_after_edit'] = witness('check', 'after-edit')
        if args.verify_topology_material:
            topology_material(edit['change_id'], 'forward', 'applied', 1)
        if args.verify_source_material:
            source_material(edit['change_id'], 'forward', 'applied')
        if after['native'] == before['native']:
            raise ValueError('No actual field/layout change observed')
        log = StructureJournal(service.STORE / 'edits')
        events = log.read(edit['change_id'])
        prepared = next(event['payload'] for event in events if event['kind'] == 'prepared')
        observed = next(event['payload'] for event in events if event['kind'] == 'observed')
        seeds = events[0]['payload']['arguments'][0]
        if prepared['before'] != select(before['native'], seeds) or observed['after'] != select(after['native'], seeds):
            raise ValueError('Journal local actual before/after differs from independent full observations')
        actual_delta = differences(prepared['before'], observed['after'])
        if edit['differences'] != actual_delta:
            raise ValueError('Actual side-effect patch differs from edit receipt')
        _, diff, diff_wire = value('bd_diff', {'change_id': edit['change_id']})
        if diff != log.diff(edit['change_id']) or diff_wire['connections'] != 0 or diff_wire['request']['frames'] != 0:
            raise ValueError('Formal diff is not the exact offline structural journal projection')
        if any('graphical_current' in row or 'graphical_actual' in row or 'parent_order_effects' in row
               or 'drawing_order_effects' in row for row in diff['observations']):
            raise ValueError('Private full native recovery images leaked into agent diff')
        _, after_body, after_wire = call('bd_read', {'snapshot': edit['after_snapshot']})
        if json_lines(after_body) != [{**row, 'ref': 'Main/' + row['ref']} for row in observed['after']['entries']] or after_wire['connections']:
            raise ValueError('After snapshot was not delivered offline from actual edit observation')
        result['actual_changed_rows'] = len(actual_delta)
        changed_target = next((row for row in after['native']['entries'] if row['ref'] == target_ref), None)
        result['actual_layout_fields_changed'] = [field for field in ('anchor', 'position', 'size')
            if changed_target is not None and target.get(field) != changed_target.get(field)]
        from bd_edit_journal import EditJournal
        result['raw_generic_diff_bytes'] = len(service.dump(EditJournal(service.STORE / 'edits').diff(edit['change_id'])).encode('utf-8'))
        result['agent_structural_diff_bytes'] = len(service.dump(diff).encode('utf-8'))
        _, replayed, replay_wire = value('bd_edit', arguments)
        if replayed != edit or replay_wire['connections'] != 0:
            raise ValueError('Same request replay did not return the existing receipt offline')
        result['stage'] = 'inverse_started'
        save()
        _, inverse_preview, _ = value('bd_revert', {'change_id': edit['change_id'], 'request_id': output.name + '_undo', 'preview': True})
        if inverse_preview['status'] != 'preview':
            raise ValueError('Original inverse preview failed')
        if args.retention_fault:
            # The production six-tool schema receives no fault flags. Only this
            # fixed eval adapter drops a metadata completion, keeping transport
            # healthy. It does not simulate a real TCP break or model-setter fault.
            class FaultAdapter(NativeStructureAdapter):
                def retain_inverse(self, owned_domain, token, inverse_id):
                    if args.retention_fault == 'before_dispatch':
                        from bd_instance_pending import begin
                        self.retention_pending = begin(owned_domain, 'retain_inverse', token)
                        raise ConnectionError('Eval: retention not dispatched')
                    proof = super().retain_inverse(owned_domain, token, inverse_id)
                    result['dropped_native_ownership_proof'] = proof
                    raise TimeoutError('Eval: completed metadata reply withheld from journal')
            from bd_sandbox_edit import binding
            from bd_structural_tools import publish_after
            binding({'domain': domain, 'request_id': output.name + '_undo', 'reverts': edit['change_id']},
                fixture['component'], snapshot)
            with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as fault_wire:
                with FaultAdapter(fixture['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(fault_wire['port'])}) as fault_adapter:
                    inverse = log.revert(edit['change_id'], output.name + '_undo', fault_adapter, nullcontext)
            result['fault_inverse_wire'] = wire_result(fault_wire)
            inverse = publish_after(log, inverse, domain, fixture['component'])
        else:
            _, inverse, _ = value('bd_revert', {'change_id': edit['change_id'], 'request_id': output.name + '_undo'})
        result['inverse'] = inverse
        save()
        if inverse['status'] != 'verified_local':
            raise ValueError('Original inverse is not verified')
        restored = observation('restored')
        if verify_witness:
            result['witness_after_first_inverse'] = witness('check', 'after-first-inverse')
        if args.verify_topology_material:
            topology_material(edit['change_id'], 'undo', 'reverted', 2)
        if args.verify_source_material:
            source_material(edit['change_id'], 'inverse', 'reverted')
        result['restored'] = before['native'] == restored['native'] and before['public'] == restored['public']
        if not result['restored']:
            raise ValueError('Independent complete baseline did not restore')
        if args.verify_retention:
            expected_material = {'retained': True, 'profile': 'retained_inverse_v1', 'native_token': edit['change_id'],
                'owner_change_id': inverse['change_id'], 'state': 'reverted', 'model_setters_called': 0,
                'revert_of_revert_available': args.operation == 'set_literal' and not args.retention_fault}
            if args.retention_fault:
                if inverse.get('recovery_material', {}).get('status') != 'ownership_unconfirmed':
                    raise ValueError('Withheld metadata outcome was not left unconfirmed')
                from bd_instance_pending import pending_path
                marker_path = pending_path(domain)
                result['pending_before_reconcile'] = json.loads(marker_path.read_text(encoding='utf-8'))
                save_new(output / 'pending-before-reconcile.json', result['pending_before_reconcile'])
            elif inverse.get('recovery_material') != expected_material:
                raise ValueError('Inverse did not durably retain exact native material')
            _, status, reconcile_wire = value('bd_inspect', {'query': 'recovery', 'change_id': inverse['change_id'],
                **({'reconcile': True} if args.retention_fault else {})})
            result['material_ownership_verification'] = status
            result['material_reconcile_wire'] = reconcile_wire
            expected_retained = args.retention_fault != 'before_dispatch'
            expected_owner = {key: expected_material[key] for key in ('profile', 'native_token', 'owner_change_id')} if expected_retained else None
            if (status['material_state'] != ('retained' if expected_retained else 'not_retained') or status['material_ownership'] != expected_owner
                    or status['current_matches_terminal_observation'] is not True
                    or status['instance_quarantined'] is not False or status['model_setters_called'] != 0):
                raise ValueError('Fresh exact material ownership differs from actual inverse journal')
            if args.retention_fault:
                events = log.read(inverse['change_id'])
                reconciled = next(e['payload'] for e in events if e['kind'] == 'recovery_retention_reconciled')
                if reconciled['dispatch_count'] != 0 or not any(e['kind'] == 'recovery_retention_failed' for e in events):
                    raise ValueError('Metadata reconciliation dispatched or rewrote the failed outcome')
                check_pending(domain)
                fault_restored = observation('fault-restored')
                if fault_restored['native'] != before['native'] or fault_restored['public'] != before['public']:
                    raise ValueError('Fresh fault recovery baseline differs')
            result['main03a_scoped_verified'] = True
        if args.verify_managed_history:
            result['stage'] = 'managed_redo_started'; save()
            redo_arguments = {'change_id': inverse['change_id'], 'request_id': output.name + '_redo'}
            _, redo_preview, _ = value('bd_revert', {**redo_arguments, 'preview': True})
            if redo_preview['status'] != 'preview':
                raise ValueError('Managed redo preview failed')
            _, redo, _ = value('bd_revert', redo_arguments)
            result['managed_redo'] = redo; result['restored'] = False; save()
            if redo['status'] != 'verified_local' or not redo.get('after_snapshot'):
                raise ValueError('Managed actual redo was not verified')
            redone = observation('redone')
            if args.verify_source_material:
                source_material(edit['change_id'], 'redo', 'applied')
            if redone['native'] != after['native'] or redone['public'] != after['public']:
                raise ValueError('Independent full actual redo differs from original after')
            _, redo_diff, redo_diff_wire = value('bd_diff', {'change_id': redo['change_id']})
            if redo_diff != log.diff(redo['change_id']) or redo_diff_wire['request']['frames'] or redo_diff_wire['connections']:
                raise ValueError('Managed redo diff not exact offline journal')
            _, duplicate, duplicate_wire = value('bd_revert', redo_arguments)
            if duplicate != redo or duplicate_wire['connections']:
                raise ValueError('Managed request replay did not stay offline')
            _, managed_recovery, _ = value('bd_inspect', {'query': 'recovery', 'change_id': redo['change_id'], 'reconcile': True})
            if managed_recovery['dispatch_count'] or not managed_recovery['reconciled']:
                raise ValueError('Confirmed managed status query redispatched')
            _, final_inverse, _ = value('bd_revert', {'change_id': redo['change_id'], 'request_id': output.name + '_final_restore'})
            result['managed_final_inverse'] = final_inverse; save()
            if final_inverse['status'] != 'verified_local':
                raise ValueError('Managed final inverse not verified')
            final = observation('final-restored')
            if args.verify_source_material:
                source_material(edit['change_id'], 'final_inverse', 'reverted')
            result['restored'] = final['native'] == before['native'] and final['public'] == before['public']
            result['witness_final'] = witness('check')
            if not result['restored'] or not result['witness_final']['unchanged']:
                result['witness_failed_export'] = witness('export')
                result['witness_retained'] = True
                save()
                raise ValueError('Full native identity/order/field/source baseline did not restore')
            result['witness_released'] = witness('release')['released']
            result['witness_retained'] = not result['witness_released']
            if not result['witness_released']:
                raise ValueError('Verified native witness release not confirmed')
            _, stale_head, stale_wire = call('bd_revert', {'change_id': inverse['change_id'],
                'request_id': output.name + '_stale_head', 'preview': True}, expect_error=True)
            result['managed_stale_head'] = {'actual_tool_reply': stale_head, 'wire': stale_wire}
            result['managed_history_scoped_verified'] = True
        elif args.operation != 'set_literal' or args.retention_fault:
            _, rejection, rejection_wire = call('bd_revert', {'change_id': inverse['change_id'],
                'request_id': output.name + '_redo', 'preview': True}, expect_error=True)
            result['inverse_of_inverse_gap'] = {'actual_tool_error': rejection, 'wire': rejection_wire,
                'model_modified': False, 'required_function_complete': False}
        if verify_witness and not args.verify_managed_history:
            result['witness_final'] = witness('check', 'final')
            if result['restored'] is not True or result['witness_final']['unchanged'] is not True:
                raise ValueError('Full original native/source/identity/order witness did not restore')
            result['witness_released'] = witness('release')['released']
            result['witness_retained'] = not result['witness_released']
            if result['witness_retained']:
                raise ValueError('Verified full witness release not confirmed')
        result['sources_match'] = result['source_manifest'] == source_manifest()
        if not result['sources_match']:
            raise ValueError('Candidate sources changed')
        if args.verify_managed_history:
            result['managed_history_verified'] = True
            result['scope'] = 'Formal single-operation isolated Main literal edit/inverse/redo/final restore with strict native/public/source oracle'
            result['not_verified'] = [item for item in result['not_verified'] if item != 'inverse-of-inverse']
            result['not_verified'].extend(['three-way independent-change conflicts', 'persistent source fidelity across restart'])
        if args.verify_source_material:
            result['source_material_before_after_retention_verified'] = set(result['source_material_terminals']) == {
                'forward', 'inverse', 'redo', 'final_inverse'}
        result['passed'] = True
    except Exception as error:
        result['error'] = str(error)
        result['traceback'] = traceback.format_exc()
        if result.get('witness_retained') and 'witness_failed_export' not in result:
            try:
                result['witness_failed_export'] = witness('export', 'failed-export')
            except Exception as export_error:
                result['witness_export_error'] = str(export_error)
        # Never release failed/unknown witness material in a finally block.
    result['tool_calls'] = len(calls)
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'restored', 'tool_calls', 'actual_layout_fields_changed', 'error')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
