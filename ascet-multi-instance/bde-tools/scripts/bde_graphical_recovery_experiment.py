"""Real ordinary edit/inverse with application receipt loss and read-only reconciliation."""
import argparse
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import subprocess
import traceback
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bd_recovery as recovery
import bde_experiments as bench
from bde_isolated_order_experiment import build_fixture
from bde_public_oracle import compare
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan
from bd_sandbox_edit import binding
from bd_windows_endpoint import endpoint_process


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--operation', choices=('delete_node', 'disconnect_data'), required=True)
    parser.add_argument('--repeats', choices=(1, 3), type=int, default=3)
    parser.add_argument('--reuse-fixture', type=Path)
    independent = parser.add_mutually_exclusive_group()
    independent.add_argument('--independent-edit', action='store_true')
    independent.add_argument('--independent-delete', action='store_true', help='Delete final literal and reconcile its causal inverse reply loss')
    args = parser.parse_args()
    manifest_path = args.manifest.resolve()
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text(encoding='utf-8'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    if (preparation.get('passed') is not True or preparation['instance_manifest'] != str(manifest_path)
            or endpoint_process(manifest['port']) != process['pid']):
        raise ValueError('Exact prepared disposable endpoint required')
    epoch = str(process['pid']) + '/' + process['start_time_utc']
    pending.check({'database': manifest['database'], 'process_epoch': epoch})
    args.output.mkdir(parents=True, exist_ok=False)
    state = args.output / 'state'
    state.mkdir()
    names = ('bde_graphical_recovery_experiment.py', 'bde_isolated_order_experiment.py', 'AscetBdeIsolatedFixture.cs',
        'AscetStructureSession.cs', 'AscetStructureRead.cs', 'bd_native_structure.py', 'bd_native_literal.py',
        'bd_edit_journal.py', 'bd_structure_journal.py', 'bd_recovery.py', 'bd_instance_pending.py',
        'bd_structural_tools.py', 'bd_native_graphical_effects.py', 'bde_structure_read.st', 'bde_structure_edit.st',
        'bde_native_graph_current.st', 'bde_delete_inverse_values.st', 'bd_delete_inverse.py', 'bde_recovery_status.st', 'bde_recovery_release.st', 'bde_parent_order_evidence.st',
        'bde_edge_restore_guard.st', 'bde_parent_order_inverse.st', 'bd_parent_order_effects.py', 'bd_collection_merge.py',
        'bde_drawing_order_evidence.st', 'bd_drawing_order_effects.py', 'bd_drawing_causal.py',
        'bde_native_collection_merge.st', 'bde_session_guard.st', 'bd_windows_endpoint.py')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in names}
    result = {'passed': False, 'full_delivery': False, 'scope': __doc__, 'manifest': str(manifest_path),
              'operation': args.operation, 'source_manifest': hashes(), 'rounds': [], 'automatic_retry': False,
              'independent_edit_enabled': args.independent_edit,
              'independent_deletion_enabled': args.independent_delete,
              'fault_scope': 'application discards a completed native reply;not actual host/transport/setter/store failure'}
    save = lambda: (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    wire = None
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    try:
        fixture_binary = build_fixture()
        result['production_binary_sha256'] = service.digest(compile_bridge().read_bytes())
        reuse_baseline = None
        if args.reuse_fixture:
            prior_path = args.reuse_fixture.resolve()
            prior = json.loads(prior_path.read_text(encoding='utf-8'))
            if (not prior_path.is_relative_to(service.ROOT / 'analysis/bde-experiments')
                    or prior.get('passed') is not True or Path(prior['manifest']).resolve() != manifest_path
                    or prior['process_epoch'] != epoch or prior['rounds'][-1].get('passed') is not True):
                raise ValueError('Verified restored same-runtime fixture required')
            reuse_baseline = prior['rounds'][-1]
            fixture = json.loads(Path(prior['fixture_result']).read_text(encoding='utf-8'))
            result['fixture_reused_from'] = str(prior_path)
        else:
            with patch.dict(os.environ, environment), service.live_lock():
                created = subprocess.run([str(fixture_binary), str(manifest_path), str(args.output / 'fixture'), epoch],
                    capture_output=True, text=True, encoding='utf-8', timeout=60, env=environment)
            result['fixture_process'] = {'exit_code': created.returncode, 'stdout': created.stdout, 'stderr': created.stderr}
            fixture = json.loads(sorted((args.output / 'fixture').glob('*.json'))[-1].read_text(encoding='utf-8'))
            if created.returncode != 0 or fixture.get('passed') is not True:
                raise ValueError('Fixture failed;do not replay')
        domain = {'session': args.output.name, 'database': manifest['database'], 'process_epoch': epoch, 'oid': fixture['oid']}
        result['component'] = fixture['component']
        result['fixture_variant'] = fixture['fixture_variant']
        with patch.object(service, 'STORE', state), bench.proxy(upstream_port=manifest['port']) as wire:
            adapter_env = dict(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            with patch.dict(os.environ, adapter_env):
                log = StructureJournal(state / 'edits')
                for index in range(args.repeats):
                    row = {'round': index, 'stage': 'before'}
                    result['rounds'].append(row)
                    with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                        before = adapter.observe(domain, [])
                        public = adapter.observe_public(domain)
                        if reuse_baseline is not None and (before != reuse_baseline['full_before']
                                or public != reuse_baseline['public_before']):
                            raise ValueError('Reused complete native/public baseline changed;no edit')
                        if compare(before['entries'], public)['passed'] is not True:
                            raise ValueError('Independent before oracle differs;no mutation')
                        target = fixture['target_node']
                        if args.operation == 'disconnect_data':
                            owners = {r['ref']: r['owner'] for r in before['entries'] if r['kind'] == 'pin'}
                            candidates = [r['ref'] for r in before['entries'] if r['kind'] == 'edge'
                                and owners[r['source']] == target and owners[r['target']] == fixture['partner_nodes'][0]]
                            if len(candidates) != 1: raise ValueError('Exact fixture edge required')
                            target = candidates[0]
                        operation, arguments, selected = plan({'structure': before}, {'op': args.operation, 'target': 'Main/' + target})
                        request = {'domain': domain, 'component': fixture['component'], 'diagram': 'Main',
                            'request_id': 'lost-apply-' + str(index), 'operation': operation, 'arguments': arguments, 'expect': fingerprint(selected)}
                        binding(request, fixture['component'], 's_' + '1' * 32)
                        exchange = adapter._exchange
                        def lose_reply(command):
                            value = exchange(command)
                            if command['cmd'] == 'apply':
                                row['dropped_native_reply_sha256'] = fingerprint(value)
                                raise OSError('Injected application-level completed apply receipt loss')
                            return value
                        adapter._exchange = lose_reply
                        row['before'] = before
                        row['public_before'] = public
                        row['edit'] = log.execute(request, adapter, nullcontext)
                        row['quarantine_after_loss'] = pending.pending_path(domain).exists()
                        row['apply_dispatches'] = adapter.commands.count('apply')
                    row['stage'] = 'unknown_apply'
                    save()
                    if row['edit']['status'] != 'outcome_unknown' or row['apply_dispatches'] != 1 or not row['quarantine_after_loss']:
                        raise ValueError('Lost reply was not quarantined correctly')
                    response = service.handle('bd_inspect', {'query': 'recovery', 'change_id': row['edit']['change_id'],
                        'reconcile': True, 'max_bytes': 16384}, domain['session'])
                    row['apply_reconciliation'] = json.loads(response['content'].split('\n\n', 1)[1])
                    receipt = row['apply_reconciliation'].get('receipt', {})
                    if (receipt.get('status') != 'applied_observed' or row['apply_reconciliation']['model_setters_called'] != 0
                            or pending.pending_path(domain).exists()):
                        raise ValueError('Apply terminal evidence failed to reconcile;no replay')
                    expected_restored, expected_public = deepcopy(before), deepcopy(public)
                    secondary_target = None
                    deleted_target = None
                    if args.independent_delete:
                        with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                            current = adapter.observe(domain, [])
                            rows = {entry['ref']: entry for entry in current['entries']}
                            deleted_target = fixture['final_anchor']
                            anchor = rows[deleted_target]
                            removed_refs = {deleted_target, *anchor['pins']}
                            if (anchor['kind'] != 'node' or anchor.get('literal') != '3.0'
                                    or deleted_target == fixture['target_node']
                                    or any(rows[ref]['kind'] != 'pin' or rows[ref]['owner'] != deleted_target for ref in anchor['pins'])
                                    or any(entry['kind'] == 'edge' and removed_refs.intersection((entry['source'], entry['target']))
                                           for entry in rows.values())):
                                raise ValueError('Exact unrelated unconnected original final literal required')
                            action, parameters, selected_delete = plan({'structure': current}, {'op': 'delete_node', 'target': 'Main/' + deleted_target})
                            secondary_request = {'domain': domain, 'component': fixture['component'], 'diagram': 'Main',
                                'request_id': 'later-delete-' + str(index), 'operation': action, 'arguments': parameters,
                                'expect': fingerprint(selected_delete)}
                            binding(secondary_request, fixture['component'], 's_' + '3' * 32)
                            row['stage'] = 'independent_deletion_started'
                            save()
                            row['independent_deletion'] = log.execute(secondary_request, adapter, nullcontext)
                            save()
                            if row['independent_deletion']['status'] != 'applied_observed':
                                raise ValueError('Independent deletion failed; no inverse retry')
                        expected_restored['entries'] = [entry for entry in expected_restored['entries'] if entry['ref'] not in removed_refs]
                        expected_restored['lookup_nodes'] -= 1
                        expected_public['nodes'] = [node for node in expected_public['nodes'] if 'n' + str(node['id']) != deleted_target]
                    if args.independent_edit:
                        with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                            current = adapter.observe(domain, [])
                            secondary_target = (fixture['target_node'] if args.operation == 'disconnect_data'
                                and fixture['fixture_variant'] == 'literal_fanout' else fixture['independent_node'])
                            original_literal = next(r for r in current['entries'] if r['ref'] == secondary_target)['literal']
                            action, parameters, selected_value = plan({'structure': current}, {'op': 'set_literal',
                                'target': 'Main/' + secondary_target, 'expect': {'text': original_literal}, 'value': {'text': '9.0'}})
                            row['stage'] = 'independent_value_started'
                            save()
                            row['independent_edit'] = log.execute({'domain': domain, 'component': fixture['component'],
                                'diagram': 'Main', 'request_id': 'later-value-' + str(index), 'operation': action,
                                'arguments': parameters, 'expect': fingerprint(selected_value)}, adapter, nullcontext)
                            if row['independent_edit']['status'] != 'applied_observed':
                                raise ValueError('Actual independent edit failed;no replay')
                        next(r for r in expected_restored['entries'] if r['ref'] == secondary_target)['literal'] = '9.0'
                        next(n for n in expected_public['nodes'] if 'n' + str(n['id']) == secondary_target)['literal'] = '9.0'
                        from bd_structural_tools import execute as execute_tool
                        with patch.dict(os.environ, {'ASCET_BD_STRUCTURAL_WRITES': '1'}):
                            preview = execute_tool('bd_revert', {'change_id': row['edit']['change_id'],
                                'request_id': 'preview-' + str(index), 'preview': True}, domain['session'], 16384)
                        row['inverse_tool_preview'] = json.loads(preview['content'].split('\n\n', 1)[1])
                        if row['inverse_tool_preview']['status'] != 'preview' or row['inverse_tool_preview']['setter_called'] is not False:
                            raise ValueError('Actual formal revert preview rejected independent edit')
                    with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                        adapter._ensure_open(domain)
                        exchange = adapter._exchange
                        def lose_inverse(command):
                            value = exchange(command)
                            if command['cmd'] == 'revert':
                                row['dropped_inverse_reply_sha256'] = fingerprint(value)
                                raise OSError('Injected application-level completed inverse receipt loss')
                            return value
                        adapter._exchange = lose_inverse
                        row['inverse'] = log.revert(row['edit']['change_id'], 'lost-inverse-' + str(index), adapter, nullcontext)
                        inverse_request = log.read(row['inverse']['change_id'])[0]['payload']
                        binding(inverse_request, fixture['component'], 's_' + '2' * 32)
                        row['inverse_dispatches'] = adapter.commands.count('revert')
                        row['quarantine_after_inverse_loss'] = pending.pending_path(domain).exists()
                    row['stage'] = 'unknown_inverse'
                    save()
                    if row['inverse']['status'] != 'outcome_unknown' or row['inverse_dispatches'] != 1 or not row['quarantine_after_inverse_loss']:
                        raise ValueError('Lost inverse reply was not quarantined correctly')
                    response = service.handle('bd_inspect', {'query': 'recovery', 'change_id': row['inverse']['change_id'],
                        'reconcile': True, 'max_bytes': 16384}, domain['session'])
                    row['inverse_reconciliation'] = json.loads(response['content'].split('\n\n', 1)[1])
                    if (row['inverse_reconciliation'].get('receipt', {}).get('status') != 'verified_local'
                            or row['inverse_reconciliation']['model_setters_called'] != 0 or pending.pending_path(domain).exists()):
                        raise ValueError('Inverse terminal evidence failed to reconcile;no replay')
                    with patch.object(recovery, 'NativeStructureAdapter', side_effect=AssertionError('Released record must not reconnect')):
                        row['released_reconciliation'] = json.loads(service.handle('bd_inspect', {'query': 'recovery',
                            'change_id': row['inverse']['change_id'], 'reconcile': True, 'max_bytes': 16384},
                            domain['session'])['content'].split('\n\n', 1)[1])
                    if row['released_reconciliation']['native_state'] != 'released':
                        raise ValueError('Durable released inverse was not independently validated')
                    if deleted_target is not None:
                        with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                            row['merged_native'] = adapter.observe(domain, [])
                            row['merged_public'] = adapter.observe_public(domain)
                        row['independent_deletion_preserved'] = row['merged_native'] == expected_restored and row['merged_public'] == expected_public
                        if not row['independent_deletion_preserved']:
                            raise ValueError('Primary reconciled inverse lost independent deletion')
                        from bd_structural_tools import execute as execute_tool
                        with patch.dict(os.environ, {'ASCET_BD_STRUCTURAL_WRITES': '1'}):
                            preview = execute_tool('bd_revert', {'change_id': row['independent_deletion']['change_id'],
                                'request_id': 'secondary-preview-' + str(index), 'preview': True}, domain['session'], 16384)
                        row['secondary_preview'] = json.loads(preview['content'].split('\n\n', 1)[1])
                        save()
                        if (row['secondary_preview']['status'] != 'preview'
                                or row['secondary_preview']['setter_called'] is not False
                                or row['secondary_preview']['validation'].get('drawing_evidence') != 'passed'):
                            raise ValueError('Actual secondary causal preview rejected')
                        with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                            adapter._ensure_open(domain)
                            exchange = adapter._exchange
                            def lose_secondary(command):
                                value = exchange(command)
                                if command['cmd'] == 'revert':
                                    row['dropped_secondary_reply_sha256'] = fingerprint(value)
                                    raise OSError('Injected application-level completed causal inverse receipt loss')
                                return value
                            adapter._exchange = lose_secondary
                            row['stage'] = 'causal_inverse_started'
                            save()
                            row['secondary_inverse'] = log.revert(row['independent_deletion']['change_id'],
                                'lost-secondary-inverse-' + str(index), adapter, nullcontext)
                            binding(log.read(row['secondary_inverse']['change_id'])[0]['payload'], fixture['component'], 's_' + '4' * 32)
                            row['secondary_dispatches'] = adapter.commands.count('revert')
                            row['quarantine_after_secondary_loss'] = pending.pending_path(domain).exists()
                        row['stage'] = 'unknown_causal_inverse'
                        save()
                        if (row['secondary_inverse']['status'] != 'outcome_unknown' or row['secondary_dispatches'] != 1
                                or not row['quarantine_after_secondary_loss']):
                            raise ValueError('Causal inverse receipt loss must quarantine exactly one completed dispatch')
                        response = service.handle('bd_inspect', {'query': 'recovery', 'change_id': row['secondary_inverse']['change_id'],
                            'reconcile': True, 'max_bytes': 16384}, domain['session'])
                        row['secondary_reconciliation'] = json.loads(response['content'].split('\n\n', 1)[1])
                        save()
                        if (row['secondary_reconciliation'].get('receipt', {}).get('status') != 'verified_local'
                                or row['secondary_reconciliation']['model_setters_called'] != 0 or pending.pending_path(domain).exists()):
                            raise ValueError('Completed causal inverse could not reconcile; no setter replay')
                        with patch.object(recovery, 'NativeStructureAdapter', side_effect=AssertionError('Released causal record must not reconnect')):
                            row['secondary_released_reconciliation'] = json.loads(service.handle('bd_inspect', {'query': 'recovery',
                                'change_id': row['secondary_inverse']['change_id'], 'reconcile': True, 'max_bytes': 16384},
                                domain['session'])['content'].split('\n\n', 1)[1])
                        if row['secondary_released_reconciliation']['native_state'] != 'released':
                            raise ValueError('Durable causal released proof validation failed')
                        secondary_events = log.read(row['secondary_inverse']['change_id'])
                        proof = next(event['payload'] for event in secondary_events if event['kind'] == 'prepared').get('drawing_order_witness')
                        if proof is not None and (proof['source_token'] != row['edit']['change_id']
                                or proof['source_inverse_id'] != row['inverse']['change_id']):
                            raise ValueError('Causal recovered proof differs from the actual reconciled primary inverse')
                        if fixture['fixture_variant'] == 'operator_chain' and args.operation == 'delete_node' and proof is None:
                            raise ValueError('Previously ambiguous operator chain requires a real recovered causal witness')
                        row['causal_witness_sha256'] = fingerprint(proof) if proof else None
                        expected_restored, expected_public = deepcopy(before), deepcopy(public)
                    with service.live_lock(), NativeStructureAdapter(fixture['component'], environment=adapter_env) as adapter:
                        row['native_after'] = adapter.observe(domain, [])
                        row['public_after'] = adapter.observe_public(domain)
                        row['exact_restored'] = row['native_after'] == expected_restored and row['public_after'] == expected_public
                        if secondary_target is not None and row['exact_restored']:
                            action, parameters, selected_cleanup = plan({'structure': row['native_after']}, {'op': 'set_literal',
                                'target': 'Main/' + secondary_target, 'expect': {'text': '9.0'}, 'value': {'text': original_literal}})
                            row['stage'] = 'compensation_started'
                            save()
                            row['compensation'] = log.execute({'domain': domain, 'component': fixture['component'],
                                'diagram': 'Main', 'request_id': 'compensate-' + str(index), 'operation': action,
                                'arguments': parameters, 'expect': fingerprint(selected_cleanup)}, adapter, nullcontext)
                            row['final_native'] = adapter.observe(domain, [])
                            row['final_public'] = adapter.observe_public(domain)
                            row['compensation_exact'] = (row['compensation']['status'] == 'applied_observed'
                                and row['final_native'] == before and row['final_public'] == public)
                    row['stage'] = 'restored_observed'
                    row['passed'] = row['exact_restored'] and (secondary_target is None or row.get('compensation_exact') is True)
                    save()
                    if not row['passed']: raise ValueError('Independent final restoration differs')
        result['source_drift'] = [name for name, sha in hashes().items() if sha != result['source_manifest'][name]]
        result['passed'] = all(row['passed'] for row in result['rounds']) and not result['source_drift'] and not wire['errors']
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'operation', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
