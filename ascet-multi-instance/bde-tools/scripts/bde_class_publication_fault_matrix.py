"""Serial real publication completion-loss, exact classification and recovery matrix."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import traceback

import bd_class_tools as tools
import bd_service as service
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--recipe', choices=('base', 'extended', 'mixed'), action='append')
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--dispatch', type=int, action='append', help='Focused smoke points; default tests every actual dispatch')
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    output, matrix = args.output.resolve(), args.matrix.resolve()
    if not output.is_relative_to(owned) or not matrix.is_relative_to(owned) or output.is_relative_to(matrix):
        raise ValueError('Separate owned matrix and output required')
    source = tools.load(matrix / 'result.json')
    if source.get('passed') is not True or source['process_epoch'] != epoch or source['completed_rounds'] != 36:
        raise ValueError('A complete same-instance restored creation matrix is required')
    recipes = args.recipe or ['base', 'extended', 'mixed']
    if len(recipes) != len(set(recipes)):
        raise ValueError('Unique recipe roster required')
    cases = []
    for recipe in recipes:
        original = tools.load(matrix / (recipe + '-cont') / 'study-2.json')
        owner_count = len(tools.observation(original, 'before')['owners'])
        positions = args.dispatch or list(range(1, 5 + 2 * owner_count))
        if len(positions) != len(set(positions)) or any(type(p) is not int or not 1 <= p <= 4 + 2 * owner_count for p in positions):
            raise ValueError('Unique bounded physical dispatch positions required')
        for repeat in range(args.repeats):
            for position in positions:
                cases.append((recipe, repeat, position))
    output.mkdir(parents=True, exist_ok=False)
    source_paths = [p for p in (service.ROOT / 'scripts').glob('*')
        if p.suffix in ('.py', '.cs', '.st') and p.name.startswith(('bd', 'test_bd', 'AscetClass', 'AscetStructure', 'AscetPrivate'))]
    source_paths += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    hashes = lambda: {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in source_paths}
    result = {'passed': False, 'full_delivery': False, 'process_epoch': epoch,
        'scope': 'Actual native actions before lost coordinator WAL completion; not a Cebra disconnect or inside-setter failure',
        'recipes': recipes, 'repeats': args.repeats, 'planned_cases': len(cases), 'completed_cases': 0,
        'source_manifest': hashes(), 'cases': [], 'source_drift': [],
        'production_executor_available': False}
    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')
    def run(row, name, script, arguments, expected_code=0):
        live_manifest(args.manifest)
        row['stage'] = name
        save()
        process = subprocess.run([sys.executable, str(service.ROOT / 'scripts' / script), *arguments],
            cwd=service.ROOT, capture_output=True, text=True, encoding='utf-8', timeout=300)
        (output / (row['name'] + '-' + name + '.stdout.txt')).write_text(process.stdout, encoding='utf-8')
        (output / (row['name'] + '-' + name + '.stderr.txt')).write_text(process.stderr, encoding='utf-8')
        row[name + '_exit_code'] = process.returncode
        save()
        live_manifest(args.manifest)
        if process.returncode != expected_code:
            raise ValueError(name + ' failed; inspect exact child evidence before any retry')
    common = ['--manifest', str(args.manifest.resolve())]
    try:
        for recipe, repeat, position in cases:
            name = f'{recipe}-{repeat}-dispatch-{position:02d}'
            short = 'c' + str(len(result['cases']) + 1).zfill(3)
            trial, classified, recovered, cleanup, audit = (output / (short + suffix)
                for suffix in ('', 'c', 'r', 'x', 'a'))
            row = {'name': name, 'recipe': recipe, 'repeat': repeat, 'dispatch': position, 'passed': False,
                   'artifacts': {key: str(value) for key, value in zip(
                       ('trial', 'classify', 'reconcile', 'cleanup', 'audit'), (trial, classified, recovered, cleanup, audit))}}
            result['cases'].append(row)
            run(row, 'trial', 'bde_class_independent_edit_experiment.py', common + ['--matrix', str(matrix),
                '--recipe', recipe, '--repeats', '1', '--source-plan', '--stage-candidate', '--runtime-source-audit',
                '--retained-runtime-audit', '--storage-witness-audit', '--runtime-patch-audit', '--model-publication-study',
                '--publication-fault-after-dispatch', str(position), '--output', str(trial)], expected_code=1)
            failed = tools.load(trial / 'result.json')
            raw = tools.load(trial / 'model-publication-0/raw.json')
            fault = raw.get('injected_publication_completion_loss')
            if (failed['passed'] is not False or failed['source_drift'] or not failed['inputs_unchanged']
                    or failed['new_assertion_count'] or type(fault) is not dict or fault['dispatch_index'] != position
                    or raw['model_publication_outstanding'] is not True):
                raise ValueError('Trial is not the exact expected completed-native/unconfirmed-WAL fault')
            row['expected_original_failure_preserved'] = True
            arguments = common + ['--experiment', str(trial), '--round', '0']
            run(row, 'classify', 'bde_class_model_publication_recovery.py', arguments + ['--action', 'classify', '--output', str(classified)])
            proof = tools.load(classified / 'result.json')
            plan = proof['recovery_plan']
            if (proof['passed'] is not True or plan['confirmed_dispatches'] != position - 1
                    or plan['unknown_step'] != fault['step'] or plan['unknown_native_action_completed'] is not True):
                raise ValueError('Native classification does not prove the exact lost completion')
            run(row, 'reconcile', 'bde_class_model_publication_recovery.py', arguments + ['--action', 'reconcile', '--output', str(recovered)])
            recovery = tools.load(recovered / 'result.json')
            if recovery['passed'] is not True or recovery['recovery_plan'] != plan or not recovery['complete_current_restored']:
                raise ValueError('Exact remaining-plan recovery differs from read-only classification')
            run(row, 'cleanup', 'bde_class_independent_edit_cleanup.py', arguments + ['--output', str(cleanup)])
            restored = tools.load(cleanup / 'result.json')
            if not restored['passed'] or not restored['complete_original_baseline_restored'] or restored['original_changed_files']:
                raise ValueError('Complete Class/ordinary baseline not restored')
            run(row, 'audit', 'bde_class_source_candidate_audit.py', arguments + ['--retained-images', '--publication-status', '--output', str(audit)])
            absent = tools.load(audit / 'result.json')
            if (not absent['passed'] or not absent['all_candidates_absent'] or not absent['all_retained_material_absent']
                    or absent['model_publication_status']['state'] != 'absent' or not absent['original_experiment_files_unchanged']):
                raise ValueError('Native records or original evidence remain unresolved')
            row.update(passed=True, stage='verified', native_stage=plan['stage'],
                original_dispatches=position, remaining_model_steps=plan['model_recovery_steps'],
                recovery_actions=[s['command'] for s in plan['steps']],
                complete_current_restored=True, complete_original_baseline_restored=True, records_absent=True)
            result['completed_cases'] += 1
            save()
            print(json.dumps({'case': name, 'passed': True, 'completed': result['completed_cases'], 'planned': len(cases)}), flush=True)
        result['passed'] = result['completed_cases'] == len(cases)
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['source_drift'] = [name for name, value in hashes().items() if result['source_manifest'][name] != value]
        result['passed'] = result['passed'] and not result['source_drift']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'completed_cases', 'planned_cases', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
