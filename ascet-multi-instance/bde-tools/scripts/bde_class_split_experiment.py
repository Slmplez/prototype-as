"""Separate native Class apply/inverse calls with retained original objects."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_class_interface_contract import deletion_effects
from bd_class_study_journal import audit, actual_diff
from bde_class_interface_probe import live_slot
from bde_class_interface_study import endpoint_process


def load(path):
    return json.loads(path.read_text(encoding='utf-8'))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--selector', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--operation', choices=('closed_delete_argument', 'closed_delete_return'), required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=1)
    parser.add_argument('--restore-only', type=Path, help='Explicit inverse of an already confirmed retained apply result; never reapply it')
    parser.add_argument('--inverse-refusal', choices=('journal_before_dispatch', 'wrong_selector', 'altered_source'),
                        help='One controlled inverse rejection per retained apply, followed by a separately verified inverse')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    source_names = ('AscetClassInterfaceStudy.cs', 'AscetClassResourceClosure.cs', 'AscetClassStudyJournal.cs',
        'AscetClassInterfaceProbe.cs', 'AscetStructureRead.cs', 'AscetStructureExperiment.cs',
        'bde_class_interface_probe.st', 'bde_class_interface_study.st', 'bde_structure_read.st',
        'bde_class_callers.st', 'bde_class_materialize.st', 'bde_class_formal_selector.st',
        'bde_database_identity.st', 'bde_class_configuration_read.st', 'bde_class_configuration_oracle_v2.st', 'bde_public_graph_read.st', 'bde_public_signature_read.st', 'bd_class_configuration.py',
        'bd_class_interface_contract.py', 'bd_class_study_journal.py', 'bd_instance_pending.py',
        'bd_edit_journal.py', 'bde_class_split_experiment.py', 'bde_class_read_template_cache.st')
    sources = [service.ROOT / 'scripts' / name for name in source_names]
    binary = service.ROOT / 'analysis/live-api/AscetClassSplitStudy.exe'
    result = {'passed': False, 'business_writes': False, 'rounds': [],
        'mode': 'isolated separate native commands; not enabled production tools',
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        'not_verified': ['production request-id and after snapshots', 'unknown/partial recovery',
            'unrelated later model edit preservation', 'Class diff display', 'whole BDE/FLOW acceptance']}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def invoke(inputs, output, journal, command, endpoint_pid, quarantine, *, reject=False, selector_path=None, extra_env=None):
        with bench.proxy() as wire:
            process = subprocess.run([str(binary), str(inputs), str(output), command, str(selector_path or args.selector)],
                capture_output=True, text=True, timeout=90, env={**os.environ,
                    'ASCET_BD_PROBE_PORT': str(wire['port']), 'ASCET_BD_STUDY_ENDPOINT_PID': str(endpoint_pid),
                    'ASCET_BD_CLASS_JOURNAL': str(journal.resolve()), 'ASCET_BD_CLASS_PENDING': str(quarantine),
                    **(extra_env or {})})
        observation = load(output) if output.exists() else {}
        receipt = {'exit_code': process.returncode, 'artifact': str(output), 'journal': str(journal),
            'stdout': process.stdout, 'stderr': process.stderr, 'status': observation.get('status'),
            'outstanding': observation.get('outstanding'), 'error': observation.get('error'),
            'request': wire['request'].result(), 'response': wire['response'].result(), 'wire_errors': wire['errors']}
        result['last_command'] = receipt
        save()
        if (process.returncode == 0 if reject else process.returncode != 0) or wire['errors']:
            raise RuntimeError(receipt)
        if endpoint_process() != endpoint_pid:
            raise RuntimeError('Endpoint changed during native split operation')
        return observation, receipt

    try:
        if args.restore_only and args.repeats != 1:
            raise ValueError('An explicit retained inverse must not repeat')
        fixture = load(args.fixture)
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        service.ensure_probe()
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassInterfaceStudy',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        inputs = {key: fixture[key] for key in ('status', 'database', 'component', 'oid', 'ascet_process_epoch')}
        inputs['caller_resolution'] = 'native'
        domain = {'session': 'class-interface-study', 'database': fixture['database'],
            'oid': fixture['oid'], 'process_epoch': fixture['ascet_process_epoch']}
        for index in range(args.repeats):
            row = {'index': index}
            result['rounds'].append(row)
            with live_slot():
                endpoint_pid = endpoint_process()
                quarantine = pending.pending_path(domain)
                if args.restore_only:
                    applied_path = args.restore_only.resolve()
                    applied = load(applied_path)
                else:
                    pending.check(domain)
                    input_path = args.output / f'apply-input-{index}.json'
                    input_path.write_text(json.dumps(inputs, indent=2), encoding='utf-8')
                    applied_path = args.output / f'apply-{index}.json'
                    applied, row['apply'] = invoke(input_path, applied_path, args.output / f'apply-{index}.wal',
                        'retain_' + args.operation, endpoint_pid, quarantine)
                assert applied['status'] == 'retained_applied' and applied['outstanding'] is True
                assert applied['operation'] == args.operation
                row['apply_journal'] = audit(Path(applied['journal']))
                assert row['apply_journal']['status'] == 'retained_applied'
                effects = deletion_effects(applied, allow_pin_layout=True, allow_adjacent_corner_layout=True,
                    allow_unassigned_sequence=args.operation.endswith('return'), verify_restoration=False)
                (args.output / f'apply-effects-{index}.json').write_text(json.dumps(effects, indent=2), encoding='utf-8')
                assert applied['before']['configurations'] == applied['after']['configurations']
                marker = load(quarantine)
                assert marker['domain'] == domain and marker['native_token'] == applied['journal']
                inverse_input = {**inputs, 'retained_study_path': str(applied_path.resolve())}
                inverse_path = args.output / f'inverse-input-{index}.json'
                inverse_path.write_text(json.dumps(inverse_input, indent=2), encoding='utf-8')
                if args.inverse_refusal:
                    fault_input, fault_selector, fault_env = inverse_path, args.selector, {}
                    if args.inverse_refusal == 'journal_before_dispatch':
                        fault_env['ASCET_BD_CLASS_JOURNAL_FAIL_EVENT'] = 'step_started'
                    elif args.inverse_refusal == 'wrong_selector':
                        selector = {**load(args.selector), 'formal_alias': 'bytes:foreign'}
                        fault_selector = args.output / f'fault-selector-{index}.json'
                        fault_selector.write_text(json.dumps(selector), encoding='utf-8')
                    else:
                        altered = {**applied, 'database_session': 'foreign'}
                        altered_path = args.output / f'fault-source-{index}.json'
                        altered_path.write_text(json.dumps(altered), encoding='utf-8')
                        fault_input = args.output / f'fault-input-{index}.json'
                        fault_input.write_text(json.dumps({**inverse_input, 'retained_study_path': str(altered_path.resolve())}), encoding='utf-8')
                    rejected, row['inverse_rejection'] = invoke(fault_input, args.output / f'fault-{index}.json',
                        args.output / f'fault-{index}.wal', 'inverse_retained', endpoint_pid, quarantine,
                        reject=True, selector_path=fault_selector, extra_env=fault_env)
                    assert rejected['model_mutation_dispatched'] is False and rejected['outstanding'] is True
                    assert load(quarantine) == marker
                    if args.inverse_refusal == 'journal_before_dispatch':
                        fault = audit(args.output / f'fault-{index}.wal')
                        assert fault['status'] == 'rejected_before_dispatch' and fault['dispatch_count'] == 0
                    row['rejected_inverse_setters'] = 0
                    row['original_native_recovery_preserved'] = True
                restored, row['inverse'] = invoke(inverse_path, args.output / f'inverse-{index}.json',
                    args.output / f'inverse-{index}.wal', 'inverse_retained', endpoint_pid, quarantine)
                assert restored['status'] == 'retained_restored' and restored['outstanding'] is False
                row['inverse_journal'] = audit(args.output / f'inverse-{index}.wal')
                assert row['inverse_journal']['status'] == 'retained_restored'
                assert row['inverse_journal'].get('retained_source_binding_verified') is True
                assert all(restored['restored'][key] == applied['before'][key]
                    for key in ('signature', 'discovery', 'body', 'configurations', 'public_signature'))
                assert all(restored[f'owner_scopes_restored_{i}'] == applied[f'owner_scopes_before_{i}']
                    for i in range(row['apply_journal']['prepared_owners']))
                assert applied['dirty_before'] == applied['dirty_after'] == restored['dirty_before'] == restored['dirty_after'] == 0
                assert row['apply_journal']['dispatch_count'] == applied['configuration_guard_checks']
                assert row['inverse_journal']['dispatch_count'] == restored['configuration_guard_checks']
                diff = actual_diff(args.output / f'inverse-{index}.wal')
                (args.output / f'inverse-diff-{index}.json').write_text(json.dumps(diff, indent=2), encoding='utf-8')
                assert any(r['differences'] for r in diff['resource_effects'])
                assert load(quarantine) == marker
                pending.confirmed(quarantine)
                row['complete_original_baseline_restored'] = True
                row['quarantine_cleared_after_validation'] = True
            save()
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
        if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
