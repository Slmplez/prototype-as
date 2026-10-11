"""Measure Class signature propagation against cached and fresh caller graphs."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys

import bd_service as service
import bde_experiments as bench
from bd_class_interface_contract import deletion_effects
from bd_class_selector import select_formal
from bd_class_study_journal import actual_diff, audit, read_events, verify_restored_observation
import bd_instance_pending as pending
from bde_class_interface_probe import live_slot, public_projection
from bd_windows_endpoint import endpoint_process as native_endpoint_process


def endpoint_process():
    return native_endpoint_process(int(os.environ.get('ASCET_BD_ENDPOINT_PORT', '32503')))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, help='Bind research writes/reads to a prepared disposable BDE endpoint')
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=1)
    parser.add_argument('--recover', action='store_true')
    parser.add_argument('--observe', action='store_true')
    parser.add_argument('--confirm-restored-journal', type=Path, help='Read-only confirmation of a known restored WAL before removing its own pending marker')
    parser.add_argument('--inspect-materialize', action='store_true')
    parser.add_argument('--reconcile-materialize', action='store_true')
    parser.add_argument('--verify-fixture', action='store_true')
    parser.add_argument('--selector', type=Path, help='Exact diagram/method_alias/formal_alias/slot JSON')
    parser.add_argument('--auto-callers', action='store_true', help='Resolve owners only from native discovery; fixture remains an independent experiment oracle')
    parser.add_argument('--expect-resource-sha256', help='Optional optimistic precondition for the discovered binding resource closure')
    parser.add_argument('--expect-resource-conflict', action='store_true', help='Verify that a deliberately stale resource precondition rejects before all setters')
    parser.add_argument('--expect-configuration-sha256', help='Optional optimistic precondition for complete supported all-owner persisted configuration storage')
    parser.add_argument('--expect-configuration-conflict', action='store_true', help='Verify a stale configuration precondition refuses with zero setters')
    parser.add_argument('--allow-unassigned-sequence', action='store_true', help='Research only: allow observed unassigned sequence calls after return removal')
    parser.add_argument('--allow-pin-layout', action='store_true', help='Research only: record verified affected-Class caller pin movement and attached edge endpoint effects')
    parser.add_argument('--allow-adjacent-corner-layout', action='store_true', help='Research only: allow derived orthogonal first/last-corner movement with a complete independent public route oracle')
    parser.add_argument('--fail-journal-before-dispatch', action='store_true', help='Controlled fault: first started record fails; requires zero setters and no outstanding recovery')
    parser.add_argument('--operation', choices=('add', 'materialize', 'closed_create_argument', 'closed_delete_argument', 'closed_delete_return', 'delete_argument', 'delete_return'), default='add')
    args = parser.parse_args()
    manifest_path = args.manifest.resolve() if args.manifest else None
    if manifest_path:
        from bde_isolated_runtime import live_manifest
        manifest, owned_process, epoch = live_manifest(manifest_path)
        fixture_identity = json.loads(args.fixture.read_text(encoding='utf-8'))
        if fixture_identity['ascet_process_epoch'] != epoch or fixture_identity['database'].lower() != manifest['database'].lower():
            raise ValueError('Exact current disposable Class fixture identity required')
        os.environ['ASCET_BD_ENDPOINT_PORT'] = str(manifest['port'])
    args.output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT / 'scripts' / name for name in (
        'AscetClassInterfaceStudy.cs', 'AscetClassResourceClosure.cs', 'AscetClassStudyJournal.cs', 'AscetClassInterfaceProbe.cs', 'AscetStructureRead.cs',
        'AscetStructureExperiment.cs', 'bde_class_interface_probe.st', 'bde_class_interface_study.st',
        'bde_structure_read.st', 'bde_class_callers.st', 'bde_class_materialize.st', 'bde_class_formal_selector.st', 'bde_database_identity.st', 'bde_class_configuration_read.st', 'bde_class_configuration_oracle_v2.st', 'bde_class_recovery_probe.st', 'bde_public_graph_read.st', 'bde_public_signature_read.st', 'bd_class_configuration.py',
        'bd_class_interface_contract.py', 'bd_class_selector.py', 'bd_class_study_journal.py',
        'bd_instance_pending.py', 'bd_edit_journal.py', 'bde_class_interface_study.py', 'bde_class_read_template_cache.st')]
    sources += [service.ROOT / 'scripts' / name for name in ('bde_class_method_selector.st', 'bde_class_argument_creation.st', 'bde_class_detached_projection.st', 'bd_class_creation.py')]
    from bd_class_tools import SOURCES as bridge_sources
    sources = list(dict.fromkeys([*sources, *(service.ROOT / 'scripts' / name for name in bridge_sources)]))
    binary = service.ROOT / 'analysis/live-api/AscetClassInterfaceStudy.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    result = {'passed': False, 'business_writes': False, 'observations': [],
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        'not_verified': ['production edit/diff integration',
                         'whole-group conflict/fault/reload and visual lifecycle', 'complete signal delivery eval']}
    try:
        if args.expect_resource_sha256 and not args.auto_callers:
            raise ValueError('Resource preconditions require native automatic caller resolution')
        if args.expect_resource_conflict and (not args.expect_resource_sha256 or args.repeats != 1):
            raise ValueError('Expected conflict requires one run and an explicit stale closure precondition')
        if args.expect_configuration_sha256 and not args.auto_callers:
            raise ValueError('Configuration preconditions require native automatic caller resolution')
        if args.expect_configuration_conflict and (not args.expect_configuration_sha256 or args.repeats != 1):
            raise ValueError('Expected configuration conflict requires one run and an explicit stale precondition')
        if args.auto_callers and any((args.recover, args.inspect_materialize, args.reconcile_materialize, args.verify_fixture)):
            raise ValueError('Automatic resolution supports observation and closed deletion only')
        execution_input = args.fixture
        if args.auto_callers:
            fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
            execution_input = args.output / 'execution-input.json'
            inputs = {key: fixture[key] for key in ('status', 'database', 'component', 'oid', 'ascet_process_epoch')}
            inputs['caller_resolution'] = 'native'
            if args.expect_resource_sha256:
                inputs['expect_resource_closure_sha256'] = args.expect_resource_sha256
            if args.expect_configuration_sha256:
                inputs['expect_configuration_storage_sha256'] = args.expect_configuration_sha256
            execution_input.write_text(json.dumps(inputs, indent=2), encoding='utf-8')
            result['execution_input'] = str(execution_input)
            result['caller_resolution'] = 'native'
        if args.confirm_restored_journal and (not args.observe or args.repeats != 1):
            raise ValueError('Restoration confirmation requires one independent --observe run')
        creation_operation = None
        if args.operation == 'closed_create_argument':
            from bd_class_creation import validate_operation as validate_creation_operation
            if args.selector is None:
                raise ValueError('Parameterized creation requires an exact method/name/type selector')
            selection = json.loads(args.selector.read_text(encoding='utf-8'))
            if set(selection) != {'diagram', 'method_alias', 'name', 'model_type'}:
                raise ValueError('Exact four-field native creation selector required')
            creation_operation = validate_creation_operation({'op': 'create_class_argument',
                'selector': {key: selection[key] for key in ('diagram', 'method_alias')},
                'name': selection['name'], 'model_type': selection['model_type'],
                'layout_policy': 'follow_verified_pins_and_orthogonal_routes', 'sequence_policy': 'no_implicit_changes'})
        writes = not any((args.recover, args.observe, args.inspect_materialize, args.reconcile_materialize, args.verify_fixture))
        journaled = writes and (args.operation.startswith('closed_delete_') or args.operation == 'closed_create_argument')
        if args.fail_journal_before_dispatch and not journaled:
            raise ValueError('Journal write fault requires a closed formal deletion')
        if args.operation == 'closed_delete_return' and not args.allow_unassigned_sequence:
            raise ValueError('Return removal study requires explicit --allow-unassigned-sequence; scheduling remains unverified')
        if args.selector:
            selection = json.loads(args.selector.read_text(encoding='utf-8'))
            if creation_operation:
                from bd_class_selector import select_method
                select_method(json.loads(args.fixture.read_text(encoding='utf-8'))['class_interface'], creation_operation['selector'])
            else:
                select_formal(json.loads(args.fixture.read_text(encoding='utf-8'))['class_interface'], selection)
            result['selector'] = selection
        service.ensure_probe()
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassInterfaceStudy',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        for index in range(args.repeats):
            output = args.output / f'study-{index}.json'
            journal = args.output / f'study-{index}.wal'
            wire = None
            quarantine = None
            try:
                with live_slot():
                    endpoint_pid = endpoint_process()
                    if manifest_path:
                        live_manifest(manifest_path)
                    extra_env = {}
                    if journaled:
                        fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
                        domain = {'session': 'class-interface-study', 'database': fixture['database'],
                                  'oid': fixture['oid'], 'process_epoch': fixture['ascet_process_epoch']}
                        pending.check(domain)
                        quarantine = pending.pending_path(domain)
                        extra_env = {'ASCET_BD_CLASS_JOURNAL': str(journal.resolve()),
                                     'ASCET_BD_CLASS_PENDING': str(quarantine),
                                     'ASCET_BD_CLASS_JOURNAL_FAIL_EVENT': 'step_started' if args.fail_journal_before_dispatch else ''}
                    with bench.proxy(upstream_port=int(os.environ.get('ASCET_BD_ENDPOINT_PORT', '32503'))) as wire:
                        process = subprocess.run([str(binary), str(execution_input), str(output),
                            'verify_fixture' if args.verify_fixture else 'reconcile_materialize' if args.reconcile_materialize else 'inspect_materialize' if args.inspect_materialize else 'recover' if args.recover else 'observe' if args.observe else args.operation,
                            *([str(args.selector)] if args.selector else [])], capture_output=True,
                            text=True, timeout=90, env={**os.environ, 'ASCET_BD_PROBE_PORT': str(wire['port']),
                                                       'ASCET_BD_STUDY_ENDPOINT_PID': str(endpoint_pid), **extra_env})
                    if endpoint_process() != endpoint_pid:
                        raise RuntimeError('ASCET listener ownership changed during experiment')
            finally:
                if wire is not None:
                    result['last_wire'] = {'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']}
            data = json.loads(output.read_text(encoding='utf-8')) if output.exists() else {'status': 'missing'}
            proof = {}
            if journaled and journal.exists():
                proof['journal'] = audit(journal)
                (args.output / f'journal-audit-{index}.json').write_text(json.dumps(proof['journal'], indent=2), encoding='utf-8')
                (args.output / f'journal-diff-{index}.json').write_text(json.dumps(actual_diff(journal), indent=2), encoding='utf-8')
            if args.expect_resource_conflict or args.expect_configuration_conflict:
                assert process.returncode != 0 and data.get('status') == 'error', data
                expected_error = 'Class configuration storage precondition conflict' if args.expect_configuration_conflict else 'Class resource closure precondition conflict'
                assert expected_error in data.get('error', ''), data
                assert data.get('model_mutation_dispatched') is False and data.get('outstanding') is False, data
                assert not journal.exists() and quarantine is not None and not quarantine.exists(), data
                result['observations'].append({'artifact': str(output), 'status': data['status'],
                    'expected_failure': expected_error, 'model_setters_called': 0,
                    'outstanding': False, 'exit_code': process.returncode, **result['last_wire']})
                continue
            if args.fail_journal_before_dispatch:
                assert process.returncode != 0 and data.get('status') == 'error', data
                assert data.get('model_mutation_dispatched') is False and data.get('outstanding') is False, data
                assert 'Injected Class journal write failure' in data.get('error', ''), data
                assert proof['journal']['status'] == 'rejected_before_dispatch' and proof['journal']['dispatch_count'] == 0, proof
                assert quarantine is not None and not quarantine.exists(), 'Zero-setter fault left quarantine'
                result['observations'].append({'artifact': str(output), 'status': data['status'],
                    'expected_failure': 'write-ahead publication before first dispatch', 'model_setters_called': 0,
                    'outstanding': False, 'proof': proof, 'exit_code': process.returncode, **result['last_wire']})
                continue
            if data.get('status') == 'ok':
                before, after, restored = (data[key] for key in ('before', 'after', 'restored'))
                proof.update({'signature_public_match': all(public_projection(state['signature']['methods']) == state['public_signature']
                         for state in (before, after, restored)),
                    'original_signature_restored': before['signature'] == restored['signature'],
                    'body_restored': before['body'] == restored['body'],
                    'caller_public_restored': all(b['public_tree'] == r['public_tree'] and b['public_fresh'] == r['public_fresh']
                         for b, r in zip(before['callers'], restored['callers'])),
                    'callers': []})
                for owner_index, (b, a) in enumerate(zip(before['callers'], after['callers'])):
                    scopes = data.get(f'owner_scopes_after_{owner_index}')
                    cached = [row for scope in scopes.values() for row in scope['entries'] if row['kind'] == 'pin'] if scopes else [row for row in a['cached']['entries'] if row['kind'] == 'pin'] if a['cached'] else []
                    fresh = [pin for scope in a['public_tree'].values() for node in scope['nodes'] for pin in node['pins']] if 'unreadable' not in a['public_tree'] else []
                    retained = [pin for node in a['public_retained'].get('nodes', []) for pin in node['pins']]
                    proof['callers'].append({'component': a['component'], 'fresh_pins': len(fresh),
                        'cached_pins': len(cached), 'retained_root_pins': len(retained),
                        'pin_count_scope': 'all observed Main hierarchy scopes' if scopes else 'native cached root only; public all Main hierarchy scopes',
                        'added_fresh_extra_pins': sum(pin['name'].endswith('/Extra') for pin in fresh),
                        'added_cached_extra_pins': sum(pin['name'].endswith('/Extra') for pin in cached),
                        'reader_refused_stale_or_unstored': a['cached'] is None and bool(a.get('cached_error')),
                        'fresh_graph_unreadable': a['public_fresh'].get('unreadable'),
                        'before_generation': b['cached']['generation'],
                        'after_generation': a['cached']['generation'] if a['cached'] else None})
            result['observations'].append({'artifact': str(output), 'status': data.get('status'),
                'error': data.get('error'), 'outstanding': data.get('outstanding'), 'proof': proof,
                'exit_code': process.returncode, 'stdout': process.stdout, 'stderr': process.stderr, **result['last_wire']})
            assert process.returncode == 0 and data.get('status') == ('verified_fixture' if args.verify_fixture else 'reconciled' if args.reconcile_materialize else 'diagnosed' if args.inspect_materialize else 'recovered' if args.recover else 'observed' if args.observe else 'ok') and (args.inspect_materialize or data.get('outstanding') is False) and not wire['errors'], result['observations'][-1]
            if args.confirm_restored_journal:
                original = json.loads(args.confirm_restored_journal.with_suffix('.json').read_text(encoding='utf-8'))
                confirmation = verify_restored_observation(args.confirm_restored_journal, original, data)
                intent = read_events(args.confirm_restored_journal)[0]['payload']
                with live_slot():
                    if endpoint_process() != endpoint_pid:
                        raise RuntimeError('Endpoint changed before independent restoration confirmation')
                    marker_path = pending.pending_path(intent['domain'])
                    marker = json.loads(marker_path.read_text(encoding='utf-8'))
                    if marker.get('domain') != intent['domain'] or marker.get('native_token') != str(args.confirm_restored_journal.resolve()):
                        raise RuntimeError('Independent confirmation cannot clear another request quarantine')
                    pending.confirmed(marker_path)
                proof['restoration_confirmation'] = confirmation
                (args.output / 'restoration-confirmation.json').write_text(json.dumps(confirmation, indent=2), encoding='utf-8')
            if args.verify_fixture:
                verified = json.loads(args.fixture.read_text(encoding='utf-8'))
                verified['previous_ascet_process_epoch'] = verified['ascet_process_epoch']
                verified['ascet_process_epoch'] = data['ascet_process_epoch']
                verified['read_only_verification'] = {'artifact': str(output), 'sha256': service.digest(output.read_bytes()),
                    'source_fixture': str(args.fixture), 'source_sha256': service.digest(args.fixture.read_bytes()),
                    'model_setters_called': 0, 'native_inverse_across_restart_verified': False}
                (args.output / 'fixture.json').write_text(json.dumps(verified, indent=2), encoding='utf-8')
            if not any((args.recover, args.observe, args.inspect_materialize, args.reconcile_materialize, args.verify_fixture)):
                assert not any(state['body'].get('unreadable') or any(c['public_fresh'].get('unreadable') for c in state['callers']) for state in (before, restored)), proof
                assert all(proof[key] for key in ('signature_public_match', 'original_signature_restored', 'body_restored', 'caller_public_restored')), proof
                expected = json.loads(args.fixture.read_text(encoding='utf-8'))['callers']
                discovered = before['discovery']['callers']
                proof['discovered_callers_match'] = {r['oid'] for r in discovered} == {r['oid'] for r in expected}
                proof['discovered_occurrences_match'] = all(
                    sorted((s['diagram'], o['node']) for s in row['scopes'] for o in s['occurrences']) ==
                    sorted((o.get('diagram', 'Main'), o['node_id']) for o in next(e for e in expected if e['oid'] == row['oid'])['instances'])
                    for row in discovered)
                assert proof['discovered_callers_match'] and proof['discovered_occurrences_match'], proof
                if args.operation in ('materialize', 'closed_delete_argument', 'closed_delete_return', 'closed_create_argument'):
                    proof['stable_pins'] = all(c['cached'] is not None and c['cached_error'] is None and
                        all(type(pin['native']['id']) is int and pin['native']['id'] >= 0
                            for scope in c['public_tree'].values() for n in scope['nodes'] for pin in n['pins']) for c in after['callers'])
                    proof['stable_sequence_ids'] = all(pin['sequence'] is None or
                        type(pin['sequence']['id']) is int and pin['sequence']['id'] >= 0
                        for i in range(len(expected)) for scope in data[f'owner_scopes_after_{i}'].values()
                        for pin in scope['entries'] if pin['kind'] == 'pin')
                    proof['native_observation_restored'] = all(b['cached'] == r['cached']
                        for b, r in zip(before['callers'], restored['callers']))
                    owner_count = len(expected) + args.operation.startswith('closed_')
                    proof['original_objects_restored'] = all(data.get(f'caller_restore_{i}') == 'restored'
                        for i in range(owner_count))
                    proof['all_owner_observations_restored'] = all(data[f'owner_scopes_before_{i}'] == data[f'owner_scopes_restored_{i}']
                        for i in range(owner_count))
                    proof['post_edit_public_readable'] = not after['body'].get('unreadable') and not any(
                        c['public_fresh'].get('unreadable') for c in after['callers'])
                    assert all(proof[k] for k in ('stable_pins', 'native_observation_restored', 'original_objects_restored',
                                                 'stable_sequence_ids', 'all_owner_observations_restored', 'post_edit_public_readable')), proof
                    if args.operation.startswith('closed_'):
                        if creation_operation:
                            from bd_class_creation import creation_effects
                            effects = creation_effects(data, creation_operation, verify_restoration=True)
                        else:
                            effects = deletion_effects(data, allow_unassigned_sequence=args.allow_unassigned_sequence,
                                                   allow_pin_layout=args.allow_pin_layout,
                                                   allow_adjacent_corner_layout=args.allow_adjacent_corner_layout)
                        (args.output / f'actual-effects-{index}.json').write_text(json.dumps(effects, indent=2), encoding='utf-8')
                        proof['exact_creation_closure_verified' if creation_operation else 'exact_deletion_closure_verified'] = effects['requested_effect_verified']
                        assert proof['journal']['status'] == 'restored', proof
                        assert proof['journal']['dispatch_count'] == proof['journal']['completed_count'], proof
                        if args.auto_callers:
                            assert data['resource_closure_checks'] == proof['journal']['dispatch_count'], data['resource_closure_checks']
                            proof['automatic_resource_checks'] = data['resource_closure_checks']
                            assert 'callers' not in json.loads(execution_input.read_text(encoding='utf-8'))
                        assert quarantine is not None and quarantine.exists(), 'Missing write quarantine'
                        with live_slot():
                            if endpoint_process() != endpoint_pid:
                                raise RuntimeError('Endpoint changed before journal quarantine confirmation')
                            marker = json.loads(quarantine.read_text(encoding='utf-8'))
                            if marker.get('native_token') != str(journal.resolve()) or marker.get('domain') != domain:
                                raise RuntimeError('Class quarantine ownership changed')
                            pending.confirmed(quarantine)
                        proof['quarantine_cleared_after_actual_validation'] = True
                else:
                    assert all(row['reader_refused_stale_or_unstored'] for row in proof['callers']), proof
                if args.operation not in ('add', 'materialize', 'closed_delete_argument', 'closed_delete_return', 'closed_create_argument'):
                    result['precision_edit_gate'] = {'passed': False, 'reason':
                        'declaration-only deletion leaves graph occurrences/connected endpoints; production op not enabled'}
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
        if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
