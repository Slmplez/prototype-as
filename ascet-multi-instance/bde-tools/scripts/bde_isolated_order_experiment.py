"""Run real ordinary-BDE deletion/WAL/inverse on a cold-backed disposable instance."""
import argparse
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import subprocess
import time
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
import bde_experiments as bench
from bde_public_oracle import compare


def build_fixture():
    service.ensure_probe()
    binary = service.ROOT / 'analysis/live-api/AscetBdeIsolatedFixture.exe'
    sdk = Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll')
    command = ['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
        '/main:AscetBdeIsolatedFixture', '/r:' + str(sdk), '/r:System.Web.Extensions.dll', '/out:' + str(binary),
        '/resource:' + str(service.ROOT / 'scripts/bde_structure_read.st') + ',bde_structure_read.st',
        '/resource:' + str(service.ROOT / 'scripts/bde_source_checkpoint_probe.st') + ',bde_source_checkpoint_probe.st',
        '/resource:' + str(service.ROOT / 'scripts/bde_source_checkpoint_validation.st') + ',bde_source_checkpoint_validation.st',
        str(service.ROOT / 'scripts/AscetBdeIsolatedFixture.cs'), str(service.ROOT / 'scripts/AscetStructureRead.cs')]
    service.run_process(command, 30, build_step=True)
    return binary


def build_detached_probe():
    root = service.ROOT
    binary = root / 'analysis/live-api/AscetStructureDetachedEval.exe'
    sources = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs')
    resources = ('bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st',
        'bde_recovery_release.st', 'bde_recovery_status.st', 'bde_connection_group_guard.st',
        'bde_construction_group_guard.st', 'bde_native_collection_merge.st', 'bde_parent_order_inverse.st',
        'bde_parent_order_evidence.st', 'bde_edge_restore_guard.st', 'bde_native_graph_current.st',
        'bde_detached_material_probe.st', 'bde_delete_inverse_values.st', 'bde_drawing_order_evidence.st')
    sdk = Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll')
    compiled = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
        '/define:BDE_DETACHED_MATERIAL_EVAL', '/main:AscetStructureSession', '/r:' + str(sdk),
        '/r:System.Web.Extensions.dll', '/out:' + str(binary),
        *['/resource:' + str(root / 'scripts' / name) + ',' + name for name in resources],
        *[str(root / 'scripts' / name) for name in sources]], capture_output=True, text=True, timeout=30)
    if compiled.returncode:
        raise RuntimeError('Detached probe build failed: ' + compiled.stdout + compiled.stderr)
    return binary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--operation', choices=('delete_node', 'disconnect_data'), default='delete_node')
    parser.add_argument('--fixture', choices=('literal_fanout', 'operator_chain', 'operator_fanout'), default='literal_fanout')
    parser.add_argument('--detached-material', action='store_true', help='Real retained-field tamper and native refusal probes')
    parser.add_argument('--independent-edit', choices=('none', 'literal', 'add_literal', 'delete_literal'), default='none',
        help='Real later value/addition/deletion, preserved by original inverse and separately restored')
    parser.add_argument('--reuse-fixture', type=Path, help='Passing restored experiment on the same disposable runtime')
    parser.add_argument('--preflight-only', action='store_true', help='Compile/bind fixed helpers and validate without model setters')
    parser.add_argument('--partner', choices=(0, 1), type=int, default=0, help='Exact fixture destination for disconnect')
    args = parser.parse_args()
    if args.preflight_only and (not args.reuse_fixture or args.detached_material or args.independent_edit != 'none'):
        raise ValueError('Read-only preflight requires an existing fixture and no mutation studies')
    manifest_path = args.manifest.resolve()
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text(encoding='utf-8'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    if (preparation.get('passed') is not True or preparation['instance_manifest'] != str(manifest_path)
            or process['port'] != manifest['port'] or endpoint_process(manifest['port']) != process['pid']):
        raise ValueError('Passing preparation and live exact manifested endpoint are required')
    args.output.mkdir(parents=True, exist_ok=False)
    epoch = str(process['pid']) + '/' + process['start_time_utc']
    check_pending({'database': manifest['database'], 'process_epoch': epoch})
    names = ('AscetBdeIsolatedFixture.cs', 'AscetStructureRead.cs', 'AscetStructureSession.cs',
        'AscetStructureExperiment.cs', 'bd_native_structure.py', 'bd_native_literal.py', 'bd_structure_journal.py',
        'bd_edit_journal.py', 'bd_parent_order_effects.py', 'bd_parent_order_inverse.py', 'bd_collection_merge.py',
        'bd_recovery.py', 'bd_instance_pending.py', 'bd_service.py', 'bd_windows_endpoint.py', 'bd_native_graphical_effects.py',
        'bd_structural_tools.py', 'bd_structure_scope.py', 'bd_scope_effects.py', 'bd_delete_inverse.py', 'bd_drawing_order_effects.py',
        'bd_drawing_causal.py',
        'bde_isolated_order_experiment.py', 'bde_public_oracle.py', 'bde_experiments.py')
    resources = ('bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st',
        'bde_recovery_release.st', 'bde_recovery_status.st', 'bde_connection_group_guard.st',
        'bde_construction_group_guard.st', 'bde_native_collection_merge.st',
        'bde_parent_order_inverse.st', 'bde_parent_order_evidence.st', 'bde_edge_restore_guard.st', 'bde_native_graph_current.st',
        'bde_source_checkpoint_probe.st', 'bde_source_checkpoint_validation.st', 'bde_detached_material_probe.st', 'bde_delete_inverse_values.st', 'bde_drawing_order_evidence.st')
    source_manifest = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes())
                              for name in sorted(set(names + resources))}
    result = {'passed': False, 'scope': 'actual ordinary delete/disconnect/WAL/exact inverse on a disposable database',
        'operation': args.operation, 'fixture_variant': args.fixture,
        'detached_material_probe_enabled': args.detached_material,
        'independent_edit': args.independent_edit,
        'disconnect_partner': args.partner,
        'manifest': str(manifest_path), 'database': manifest['database'], 'process_epoch': epoch,
        'source_manifest': source_manifest(), 'rounds': [], 'automatic_retry': False,
        'full_delivery': False, 'original_display01_restored': False,
        'not_verified': [*(['independent edit preservation'] if args.independent_edit == 'none' else
                           ['independent node addition/deletion preservation'] if args.independent_edit == 'literal' else
                           ['independent deletion preservation', 'ambiguous-gap addition acceptance'] if args.independent_edit == 'add_literal' else
                           ['independent deletion across other families', 'ambiguous-gap addition acceptance']),
            'detached field tamper across all families' if args.detached_material else 'detached field tamper', 'actual setter/store faults',
            'Class local inverse/creation', 'full BDE UI/FLOW/performance/release acceptance']}
    if args.preflight_only:
        result.update(scope='read-only production helper compilation/binding and drawing preflight on an existing fixture',
                      preflight_only=True, model_setters_called=0, actual_mutation_acceptance=False)

    def save():
        if result['rounds']:
            result['stage'] = result['rounds'][-1]['stage']
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    save()
    logs = Path(manifest['logs']) / 'crash.log'
    wire = None
    crash_before = logs.read_bytes() if logs.exists() else b''
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    try:
        fixture_binary = build_fixture()
        result['fixture_binary_sha256'] = service.digest(fixture_binary.read_bytes())
        bridge = compile_bridge()
        result['production_binary_sha256'] = service.digest(bridge.read_bytes())
        adapter_type = NativeStructureAdapter
        if args.detached_material:
            probe_binary = build_detached_probe()
            result['probe_binary_sha256'] = service.digest(probe_binary.read_bytes())

            class DetachedAdapter(NativeStructureAdapter):
                build = staticmethod(lambda: probe_binary)

            adapter_type = DetachedAdapter
        reuse_baseline = None
        if args.reuse_fixture:
            prior_path = args.reuse_fixture.resolve()
            if not prior_path.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
                raise ValueError('Owned experiment reuse required')
            prior = json.loads(prior_path.read_text(encoding='utf-8'))
            if (prior.get('passed') is not True or Path(prior['manifest']).resolve() != manifest_path
                    or prior['process_epoch'] != epoch or prior['fixture_variant'] != args.fixture
                    or prior['rounds'][-1].get('passed') is not True):
                raise ValueError('Reuse requires a verified restored same-runtime fixture')
            reuse_baseline = prior['rounds'][-1]
            fixture_file = Path(prior['fixture_result'])
            fixture = json.loads(fixture_file.read_text(encoding='utf-8'))
            result.update(fixture_reused_from=str(prior_path), fixture_result=str(fixture_file),
                          fixture_reuse_source_sha256=service.digest(prior_path.read_bytes()))
        else:
            result['stage'] = 'fixture_started'
            save()
            with patch.dict(os.environ, environment), service.live_lock():
                completed = subprocess.run([str(fixture_binary), str(manifest_path), str(args.output / 'fixture'), epoch, args.fixture],
                    capture_output=True, text=True, encoding='utf-8', env=environment, timeout=60)
            result['fixture_process'] = {'exit_code': completed.returncode, 'stdout': completed.stdout, 'stderr': completed.stderr}
            fixture_records = sorted((args.output / 'fixture').glob('*.json'))
            if not fixture_records:
                raise ValueError('Fixture produced no durable preparation records')
            fixture = json.loads(fixture_records[-1].read_text(encoding='utf-8'))
            result['fixture_result'] = str(fixture_records[-1])
            if completed.returncode != 0 or fixture.get('passed') is not True:
                raise ValueError('Fixture creation failed; preserve intent and do not retry automatically')
        domain = {'session': args.output.name, 'database': manifest['database'],
            'process_epoch': epoch, 'oid': fixture['oid']}
        journal = StructureJournal(args.output / 'journal')
        result['component'] = fixture['component']
        result['aeb_copy'] = {'component': fixture['aeb_component'], 'oid': fixture['aeb_oid']}
        save()
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            adapter_env = dict(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            with adapter_type(fixture['component'], timeout=30, environment=adapter_env) as adapter:
                for index in range(args.repeats):
                    row = {'round': index, 'stage': 'observe_before'}
                    result['rounds'].append(row)
                    full_before = adapter.observe(domain, [])
                    public_before = adapter.observe_public(domain)
                    if reuse_baseline is not None and (full_before != reuse_baseline['full_before']
                            or public_before != reuse_baseline['public_before']):
                        raise ValueError('Reused fixture changed from complete independent restored baseline; no edit')
                    row['oracle_before'] = compare(full_before['entries'], public_before)
                    if row['oracle_before']['passed'] is not True:
                        raise ValueError('Independent public baseline differs; no edit')
                    target = fixture['target_node']
                    if args.operation == 'disconnect_data':
                        pins = {entry['ref']: entry['owner'] for entry in full_before['entries'] if entry['kind'] == 'pin'}
                        candidates = [entry['ref'] for entry in full_before['entries'] if entry['kind'] == 'edge'
                            and pins.get(entry['source']) == fixture['target_node']
                            and pins.get(entry['target']) == fixture['partner_nodes'][args.partner]]
                        if len(candidates) != 1:
                            raise ValueError('Exactly one independently scoped disconnect edge required')
                        target = candidates[0]
                    from bd_structural_tools import plan
                    operation, arguments, before = plan({'structure': full_before},
                        {'op': args.operation, 'target': 'Main/' + target})
                    request = {'domain': domain, 'component': fixture['component'], 'diagram': 'Main',
                        'request_id': args.operation + '-' + str(index), 'operation': operation,
                        'arguments': arguments, 'expect': fingerprint(before)}
                    row.update(before=before, full_before=full_before, public_before=public_before, stage='delete_started')
                    if args.preflight_only:
                        row['stage'] = 'read_only_preflight'
                        save()
                        started = time.perf_counter()
                        row['validated'] = adapter.validate(domain, operation, arguments)
                        row['preflight_ms'] = (time.perf_counter() - started) * 1000
                        row['drawing_order_before'] = adapter.drawing_order_before
                        row['drawing_order_expected'] = adapter.drawing_order_expected
                        row['physical_order_before'] = adapter.parent_order_before
                        row['physical_order_expected'] = adapter.parent_order_expected
                        row['release_compile_probe'] = adapter.discard_prepared(domain, 'edit_' + fingerprint({
                            'preflight_no_record': str(args.output.resolve()), 'round': index}))
                        row['final_native'] = adapter.observe(domain, [])
                        row['final_public'] = adapter.observe_public(domain)
                        row['passed'] = (row['validated'] == before and row['release_compile_probe'] == {'released': True}
                                         and row['final_native'] == full_before
                                         and row['final_public'] == public_before)
                        row['stage'] = 'read_only_preflight_observed'
                        save()
                        if not row['passed']:
                            raise ValueError('Read-only helper preflight changed complete public/native baseline')
                        continue
                    save()
                    started = time.perf_counter()
                    edit = journal.execute(request, adapter, nullcontext)
                    row.update(edit=edit, edit_ms=(time.perf_counter() - started) * 1000, stage='delete_observed')
                    save()
                    if edit['status'] != 'applied_observed':
                        raise ValueError('Actual deletion failed or mismatched; retain original material')
                    row['actual_diff'] = journal.diff(edit['change_id'])
                    prepared = next(event['payload'] for event in journal.read(edit['change_id']) if event['kind'] == 'prepared')
                    observed = next(event['payload'] for event in journal.read(edit['change_id']) if event['kind'] == 'observed')
                    from bd_native_graphical_effects import validate_actual_diff
                    row['graphical_apply_validation'] = validate_actual_diff(prepared['graphical_current'], observed['graphical_actual'])
                    from bd_recovery import graphical_observation
                    try:
                        native = adapter.recovery_status(domain, edit['change_id'])
                        row['native_recovery_before_oracle'] = native
                        row['graphical_recovery_validation'] = graphical_observation(prepared, prepared, native, edit['change_id'])['graphical_differences']
                    except Exception as error:
                        row['graphical_recovery_error'] = repr(error)
                    row['after'] = adapter.observe(domain, [])
                    row['public_after'] = adapter.observe_public(domain)
                    row['oracle_after'] = compare(row['after']['entries'], row['public_after'])
                    try:
                        native = adapter.recovery_status(domain, edit['change_id'])
                        row['native_recovery_after_oracle'] = native
                        row['graphical_recovery_after_oracle'] = graphical_observation(prepared, prepared, native, edit['change_id'])['graphical_differences']
                    except Exception as error:
                        row['graphical_recovery_after_oracle_error'] = repr(error)
                    row['replay_identical'] = journal.execute(request, adapter, nullcontext) == edit
                    if args.detached_material:
                        row['stage'] = 'detached_material_probe'
                        save()
                        row['detached_material'] = adapter._exchange({'cmd': 'detached_material_eval', 'token': edit['change_id']})
                        if row['detached_material'].get('passed') is not True:
                            raise ValueError('Real detached material tamper/refusal probe failed')
                        row['native_after_tamper'] = adapter.observe(domain, [])
                        row['public_after_tamper'] = adapter.observe_public(domain)
                        if row['native_after_tamper'] != row['after'] or row['public_after_tamper'] != row['public_after']:
                            raise ValueError('Probe-only tamper changed independent complete attached observations')
                    row['stage'] = 'inverse_started'
                    expected_restored, expected_public = deepcopy(full_before), deepcopy(public_before)
                    secondary_target = None
                    added_target = None
                    deleted_target = None
                    if args.independent_edit == 'literal':
                        secondary_target = fixture['target_node'] if args.operation == 'disconnect_data' and args.fixture == 'literal_fanout' else fixture['independent_node']
                        rows = {entry['ref']: entry for entry in row['after']['entries']}
                        original_literal = rows[secondary_target]['literal']
                        if original_literal not in ('1.0', '2.0'):
                            raise ValueError('Fixed same-width independent literal required')
                        action, parameters, secondary_before = plan({'structure': row['after']},
                            {'op': 'set_literal', 'target': 'Main/' + secondary_target,
                             'expect': {'text': original_literal}, 'value': {'text': '9.0'}})
                        secondary_request = {'domain': domain, 'component': fixture['component'], 'diagram': 'Main',
                            'request_id': 'later-value-' + str(index), 'operation': action,
                            'arguments': parameters, 'expect': fingerprint(secondary_before)}
                        row['stage'] = 'independent_edit_started'
                        save()
                        row['independent_edit'] = journal.execute(secondary_request, adapter, nullcontext)
                        save()
                        if row['independent_edit']['status'] != 'applied_observed':
                            raise ValueError('Independent literal edit did not verify; no inverse retry')
                        row['independent_current'] = adapter.observe(domain, [])
                        expected_after = deepcopy(row['after'])
                        next(entry for entry in expected_after['entries'] if entry['ref'] == secondary_target)['literal'] = '9.0'
                        if row['independent_current'] != expected_after:
                            raise ValueError('Independent literal changed unexpected complete fields or geometry')
                        next(entry for entry in expected_restored['entries'] if entry['ref'] == secondary_target)['literal'] = '9.0'
                        next(node for node in expected_public['nodes'] if 'n' + str(node['id']) == secondary_target)['literal'] = '9.0'
                        from bd_delete_inverse import plan as inverse_values_plan
                        scope_current = adapter.observe(domain, arguments[0])
                        row['independent_scope_changed'] = scope_current != observed['after']
                        row['independent_value_plan'] = inverse_values_plan(before, observed['after'], scope_current)
                        if not row['independent_scope_changed'] or not row['independent_value_plan']['compatible']:
                            raise ValueError('Actual later edit must change the original scoped observation compatibly')
                        row['stage'] = 'inverse_started_after_independent_edit'
                    if args.independent_edit == 'add_literal':
                        action, parameters, secondary_before = plan({'structure': row['after']},
                            {'op': 'create_block', 'kind': 'literal', 'name': '4.0', 'position': [600, 400]})
                        row['stage'] = 'independent_creation_started'
                        save()
                        row['independent_creation'] = journal.execute({'domain': domain, 'component': fixture['component'],
                            'diagram': 'Main', 'request_id': 'later-node-' + str(index), 'operation': action,
                            'arguments': parameters, 'expect': fingerprint(secondary_before)}, adapter, nullcontext)
                        save()
                        if row['independent_creation']['status'] != 'applied_observed':
                            raise ValueError('Independent creation did not verify; no original inverse retry')
                        row['independent_current'] = adapter.observe(domain, [])
                        existing_refs = {entry['ref'] for entry in row['after']['entries']}
                        added = [entry for entry in row['independent_current']['entries'] if entry['ref'] not in existing_refs]
                        added_nodes = [entry for entry in added if entry['kind'] == 'node' and entry.get('literal') == '4.0']
                        if len(added_nodes) != 1 or any(entry['kind'] not in ('node', 'pin') for entry in added):
                            raise ValueError('Exactly one independent literal and its pins required')
                        added_target = added_nodes[0]['ref']
                        expected_after = deepcopy(row['after'])
                        expected_after['entries'] = sorted(expected_after['entries'] + deepcopy(added), key=lambda entry: entry['ref'])
                        expected_after['lookup_nodes'] += 1
                        if row['independent_current'] != expected_after:
                            raise ValueError('Independent creation changed other complete observed fields')
                        expected_restored['entries'] = sorted(expected_restored['entries'] + deepcopy(added), key=lambda entry: entry['ref'])
                        expected_restored['lookup_nodes'] += 1
                        from bd_delete_inverse import plan as inverse_values_plan
                        scope_current = adapter.observe(domain, arguments[0])
                        row['independent_scope_changed'] = scope_current != observed['after']
                        row['independent_value_plan'] = inverse_values_plan(before, observed['after'], scope_current)
                        if not row['independent_scope_changed'] or not row['independent_value_plan']['compatible']:
                            raise ValueError('Original scope must detect changed global counts compatibly')
                        row['stage'] = 'inverse_started_after_independent_creation'
                    if args.independent_edit == 'delete_literal':
                        deleted_target = fixture['final_anchor']
                        rows = {entry['ref']: entry for entry in row['after']['entries']}
                        anchor = rows[deleted_target]
                        removed_refs = {deleted_target, *anchor['pins']}
                        if (anchor['kind'] != 'node' or anchor.get('literal') != '3.0'
                                or deleted_target == fixture['target_node']
                                or any(rows[ref]['kind'] != 'pin' or rows[ref]['owner'] != deleted_target
                                       for ref in anchor['pins'])
                                or any(entry['kind'] == 'edge' and removed_refs.intersection(
                                       (entry['source'], entry['target'])) for entry in rows.values())):
                            raise ValueError('Exact unrelated unconnected final literal required; no secondary deletion')
                        expected_after = deepcopy(row['after'])
                        expected_after['entries'] = [entry for entry in expected_after['entries'] if entry['ref'] not in removed_refs]
                        expected_after['lookup_nodes'] -= 1
                        expected_restored['entries'] = [entry for entry in expected_restored['entries'] if entry['ref'] not in removed_refs]
                        expected_restored['lookup_nodes'] -= 1
                        expected_public['nodes'] = [node for node in expected_public['nodes'] if 'n' + str(node['id']) != deleted_target]
                        action, parameters, secondary_before = plan({'structure': row['after']},
                            {'op': 'delete_node', 'target': 'Main/' + deleted_target})
                        row['stage'] = 'independent_deletion_started'
                        row['independent_expected_after'] = expected_after
                        row['independent_deleted_refs'] = sorted(removed_refs)
                        save()
                        row['independent_deletion'] = journal.execute({'domain': domain, 'component': fixture['component'],
                            'diagram': 'Main', 'request_id': 'later-delete-' + str(index), 'operation': action,
                            'arguments': parameters, 'expect': fingerprint(secondary_before)}, adapter, nullcontext)
                        save()
                        if row['independent_deletion']['status'] != 'applied_observed':
                            raise ValueError('Independent deletion did not verify; no original inverse retry')
                        row['independent_current'] = adapter.observe(domain, [])
                        row['independent_public'] = adapter.observe_public(domain)
                        row['independent_oracle'] = compare(expected_after['entries'], row['independent_public'])
                        if row['independent_current'] != expected_after or row['independent_oracle']['passed'] is not True:
                            raise ValueError('Independent deletion changed unexpected complete fields')
                        from bd_delete_inverse import plan as inverse_values_plan
                        scope_current = adapter.observe(domain, arguments[0])
                        row['independent_scope_changed'] = scope_current != observed['after']
                        row['independent_value_plan'] = inverse_values_plan(before, observed['after'], scope_current)
                        if not row['independent_scope_changed'] or not row['independent_value_plan']['compatible']:
                            raise ValueError('Original scope must detect independent deletion compatibly')
                        row['stage'] = 'inverse_started_after_independent_deletion'
                    save()
                    started = time.perf_counter()
                    row['inverse'] = journal.revert(edit['change_id'], 'restore-' + str(index), adapter, nullcontext)
                    row['inverse_ms'] = (time.perf_counter() - started) * 1000
                    save()
                    if row['inverse']['status'] != 'verified_local':
                        raise ValueError('Original inverse did not verify: ' + str(row['inverse'].get('error', row['inverse']['status'])))
                    row['restored'] = adapter.observe(domain, [])
                    row['public_restored'] = adapter.observe_public(domain)
                    row['actual_inverse_diff'] = journal.diff(row['inverse']['change_id'])
                    inverse_events = journal.read(row['inverse']['change_id'])
                    inverse_prepared = next(event['payload'] for event in inverse_events if event['kind'] == 'prepared')
                    inverse_observed = next(event['payload'] for event in inverse_events if event['kind'] == 'observed')
                    row['graphical_inverse_validation'] = validate_actual_diff(
                        inverse_prepared['graphical_current'], inverse_observed['graphical_actual'])
                    row['inverse_expected_full'] = expected_restored
                    row['exact_restored'] = row['restored'] == expected_restored and row['public_restored'] == expected_public
                    if added_target is not None:
                        row['public_merged_oracle'] = compare(expected_restored['entries'], row['public_restored'])
                        row['exact_restored'] = row['restored'] == expected_restored and row['public_merged_oracle']['passed']
                        if row['inverse']['status'] == 'verified_local' and row['exact_restored']:
                            action, parameters, cleanup_before = plan({'structure': row['restored']},
                                {'op': 'delete_node', 'target': 'Main/' + added_target})
                            row['stage'] = 'independent_creation_compensation_started'
                            save()
                            row['compensation'] = journal.execute({'domain': domain, 'component': fixture['component'],
                                'diagram': 'Main', 'request_id': 'compensate-node-' + str(index), 'operation': action,
                                'arguments': parameters, 'expect': fingerprint(cleanup_before)}, adapter, nullcontext)
                            row['final_native'] = adapter.observe(domain, [])
                            row['final_public'] = adapter.observe_public(domain)
                            row['compensation_exact'] = (row['compensation']['status'] == 'applied_observed'
                                and row['final_native'] == full_before and row['final_public'] == public_before)
                    if secondary_target is not None and row['inverse']['status'] == 'verified_local' and row['exact_restored']:
                        action, parameters, cleanup_before = plan({'structure': row['restored']},
                            {'op': 'set_literal', 'target': 'Main/' + secondary_target,
                             'expect': {'text': '9.0'}, 'value': {'text': original_literal}})
                        row['stage'] = 'independent_compensation_started'
                        save()
                        row['compensation'] = journal.execute({'domain': domain, 'component': fixture['component'],
                            'diagram': 'Main', 'request_id': 'compensate-value-' + str(index), 'operation': action,
                            'arguments': parameters, 'expect': fingerprint(cleanup_before)}, adapter, nullcontext)
                        row['final_native'] = adapter.observe(domain, [])
                        row['final_public'] = adapter.observe_public(domain)
                        row['compensation_exact'] = (row['compensation']['status'] == 'applied_observed'
                            and row['final_native'] == full_before and row['final_public'] == public_before)
                    if deleted_target is not None and row['exact_restored']:
                        row['stage'] = 'independent_deletion_inverse_started'
                        row['compensation_method'] = 'formal_inverse'
                        row['compensation_reverts'] = row['independent_deletion']['change_id']
                        save()
                        row['compensation'] = journal.revert(row['compensation_reverts'],
                            'restore-independent-delete-' + str(index), adapter, nullcontext)
                        save()
                        if row['compensation']['status'] != 'verified_local':
                            raise ValueError('Independent deletion inverse did not verify; preserve material')
                        row['actual_compensation_diff'] = journal.diff(row['compensation']['change_id'])
                        compensation_events = journal.read(row['compensation']['change_id'])
                        compensation_prepared = next(event['payload'] for event in compensation_events if event['kind'] == 'prepared')
                        compensation_observed = next(event['payload'] for event in compensation_events if event['kind'] == 'observed')
                        row['graphical_compensation_validation'] = validate_actual_diff(
                            compensation_prepared['graphical_current'], compensation_observed['graphical_actual'])
                        row['causal_drawing_witness'] = compensation_prepared.get('drawing_order_witness')
                        if row['causal_drawing_witness'] is not None:
                            proof = row['causal_drawing_witness']
                            if (proof['source_token'] != edit['change_id']
                                    or proof['source_inverse_id'] != row['inverse']['change_id']):
                                raise ValueError('Actual causal witness differs from the verified released primary inverse')
                            row['causal_durable_source'] = journal.causal_drawing_source(proof,
                                journal.read(row['compensation_reverts'])[0]['payload'])
                            if compensation_observed.get('drawing_order_witness_sha256') != fingerprint(proof):
                                raise ValueError('Actual inverse lacks exact durable causal proof checksum')
                        if args.fixture == 'operator_chain' and args.operation == 'delete_node' and row['causal_drawing_witness'] is None:
                            raise ValueError('Previously ambiguous operator-chain requires an actual causal witness')
                        row['final_native'] = adapter.observe(domain, [])
                        row['final_public'] = adapter.observe_public(domain)
                        row['compensation_exact'] = row['final_native'] == full_before and row['final_public'] == public_before
                    row['passed'] = (row['exact_restored'] and row['oracle_after']['passed']
                        and row['replay_identical'] and row['inverse']['status'] == 'verified_local'
                        and 'graphical_recovery_validation' in row and 'graphical_recovery_after_oracle' in row
                        and ((secondary_target is None and added_target is None and deleted_target is None)
                             or row.get('compensation_exact') is True))
                    row['stage'] = 'restored_observed'
                    save()
                    if not row['passed']:
                        raise ValueError('Actual independent inverse/postcondition evidence differs')
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(),
                              'errors': wire['errors']}
        result['source_drift'] = [name for name, sha in source_manifest().items() if sha != result['source_manifest'][name]]
        result['assertion_delta'] = max(0, (logs.read_bytes() if logs.exists() else b'')[len(crash_before):].count(b'Assertion failed'))
        result['passed'] = (all(row['passed'] for row in result['rounds']) and not result['source_drift']
            and not result['wire']['errors'] and result['assertion_delta'] == 0)
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(),
                              'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'stage', 'error', 'component')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
