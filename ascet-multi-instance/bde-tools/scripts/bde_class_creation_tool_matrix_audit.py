"""Audit all formal creation journals, then independently read the three restored fixtures."""
import argparse
import json
from pathlib import Path
import subprocess
import sys

import bd_service as service
import bd_class_tools as tools
import bd_class_creation as creation
from bde_isolated_runtime import live_manifest
from bd_class_study_journal import audit, read_events


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--native-matrix', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    matrix_path, native_path, output = args.matrix.resolve(), args.native_matrix.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (any(not path.is_relative_to(owned) for path in (matrix_path, native_path, output))
            or output.is_relative_to(matrix_path) or output.is_relative_to(native_path)):
        raise ValueError('Separate owned native/formal matrix and audit output required')
    matrix = json.loads((matrix_path / 'result.json').read_text(encoding='utf-8'))
    if (matrix.get('passed') is not True or matrix['expected_rounds'] != 36 or matrix['completed_rounds'] != 36
            or matrix['process_epoch'] != epoch or matrix['database'].lower() != manifest['database'].lower()):
        raise ValueError('Complete same-instance formal matrix required')
    hashes = lambda: {str(p.relative_to(matrix_path)): service.digest(p.read_bytes())
                      for p in matrix_path.rglob('*') if p.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'model_setters_called': 0,
        'scope': 'complete formal WAL/source/actual-effect audit plus fresh independent native/public/configuration baselines',
        'matrix_hashes': hashes(), 'source_drift': [], 'completed_rounds': 0,
        'created_input_pins': 0, 'completed_dispatches': 0, 'cases': []}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    try:
        roster = {(case['recipe'], case['model_type']) for case in matrix['cases']}
        if len(matrix['cases']) != 12 or roster != {(recipe, model_type)
                for recipe in ('base', 'extended', 'mixed') for model_type in creation.MODEL_TYPES}:
            raise ValueError('Formal matrix omits or duplicates a required fixture/type case')
        for case in matrix['cases']:
            case_path = Path(case['artifact']).resolve().parent
            if not case_path.is_relative_to(matrix_path):
                raise ValueError('Formal case evidence escaped its matrix')
            report = json.loads((case_path / 'result.json').read_text(encoding='utf-8'))
            if report.get('passed') is not True or report['read_only'] or len(report['rounds']) != 3:
                raise ValueError('Formal case lacks three actual completed tool rounds')
            result['source_drift'].extend(name for name, digest in report['source_manifest'].items()
                                         if service.digest((service.ROOT / name).read_bytes()) != digest)
            service.STORE = case_path / 'state'
            row = {'recipe': case['recipe'], 'model_type': case['model_type'], 'rounds': []}
            result['cases'].append(row)
            for round_row in report['rounds']:
                intent, applied, apply_audit = tools.terminal_raw(round_row['change_id'])
                inverse_intent, restored, inverse_audit = tools.terminal_raw(round_row['inverse_change_id'])
                bridge_results = [tools.load(tools.root(change_id) / 'raw.json') for change_id in
                                  (round_row['change_id'], round_row['inverse_change_id'])]
                if any(raw.get('fixed_observation_batch', False) is not matrix.get('batch_observation', False)
                       for raw in bridge_results):
                    raise ValueError('Native observation batching does not match the selected matrix profile')
                if any(raw.get('native_configuration_guard', False) is not matrix.get('configuration_guard', False)
                       for raw in bridge_results):
                    raise ValueError('Native configuration guard does not match the selected matrix profile')
                before = tools.observation(applied, 'before')
                if (inverse_intent['reverts'] != round_row['change_id']
                        or tools.observation(restored, 'restored') != before
                        or apply_audit['dispatch_count'] != apply_audit['completed_count']
                        or inverse_audit['dispatch_count'] != inverse_audit['completed_count']
                        or inverse_audit['retained_source_binding_verified'] is not True):
                    raise ValueError('Class journal lacks completed source-bound exact restoration')
                effects = creation.creation_effects(applied, intent['operation'])
                conflict = tools.load(tools.root(round_row['native_conflict']['change_id']) / 'raw.json')
                if conflict['model_mutation_dispatched'] is not False or conflict['outstanding'] is not False:
                    raise ValueError('Live stale conflict did not prove zero setters/no outstanding material')
                offline = ('diff', 'replay', 'intent_conflict', 'recovery', 'inverse_replay', 'inverse_refusal')
                if any(round_row[key]['request']['frames'] != 0 for key in offline):
                    raise ValueError('An offline Class path dispatched live native frames')
                inverse_events = read_events(tools.root(round_row['inverse_change_id']) / 'native.wal')
                if any(event['kind'] == 'step_started' and event['payload']['phase'] != 'inverse' for event in inverse_events):
                    raise ValueError('Class inverse journal contains unexpected apply/cleanup dispatch')
                row['rounds'].append({'round': round_row['round'], 'change_id': round_row['change_id'],
                    'inverse_change_id': round_row['inverse_change_id'], 'exact_restoration': True,
                    'created_input_pins': effects['created_input_pins'], 'offline_paths': list(offline),
                    'native_stale_conflict_zero_setters': True})
                result['completed_rounds'] += 1
                result['created_input_pins'] += effects['created_input_pins']
                result['completed_dispatches'] += apply_audit['completed_count'] + inverse_audit['completed_count']
                save()
        live_manifest(args.manifest)
        fresh = output / 'independent-native-audit'
        command = [sys.executable, str(service.ROOT / 'scripts/bde_class_creation_matrix_audit.py'),
            '--manifest', str(args.manifest.resolve()), '--matrix', str(native_path), '--output', str(fresh)]
        process = subprocess.run(command, cwd=service.ROOT, capture_output=True, timeout=360)
        fresh_report = json.loads((fresh / 'result.json').read_text(encoding='utf-8'))
        result['independent_native_audit'] = {'artifact': str(fresh / 'result.json'), 'command': command,
            'exit_code': process.returncode, 'passed': fresh_report.get('passed') is True,
            'stdout': process.stdout.decode(errors='replace'), 'stderr': process.stderr.decode(errors='replace')}
        if process.returncode or not result['independent_native_audit']['passed']:
            raise ValueError('Fresh independent complete native/public/configuration baseline audit failed')
        live_manifest(args.manifest)
        result['passed'] = result['completed_rounds'] == 36 and result['created_input_pins'] == matrix['created_input_pins']
    except Exception as error:
        result['error'] = repr(error)
    finally:
        result['matrix_files_unchanged'] = hashes() == result['matrix_hashes']
        result['passed'] = result['passed'] and result['matrix_files_unchanged'] and not result['source_drift']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'completed_rounds', 'created_input_pins', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
