"""Run serialized disposable Class creation/inverse coverage; stop on any failed case."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import time

import bd_service as service
from bd_class_creation import MODEL_TYPES
from bd_class_selector import select_method
from bd_class_study_journal import audit
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--base-fixture', type=Path)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    output = args.output.resolve()
    if not output.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
        raise ValueError('Owned isolated experiment output required')
    output.mkdir(parents=True, exist_ok=False)
    sources = ('bde_class_creation_matrix.py', 'bde_class_fixture_experiment.py', 'AscetBdeClassFixture.cs',
               'bde_class_interface_study.py', 'AscetClassInterfaceStudy.cs', 'bde_class_argument_creation.st',
               'bd_class_creation.py', 'bd_class_interface_contract.py')
    from bd_class_tools import SOURCES
    sources = tuple(dict.fromkeys((*sources, *SOURCES)))
    result = {'passed': False, 'scope': 'three disposable fixtures x four primitive types x three native create/inverse rounds',
              'expected_rounds': 36, 'completed_rounds': 0, 'full_delivery': False,
              'production_native_creation_enabled': False, 'manifest': str(args.manifest.resolve()),
              'process_epoch': epoch, 'database': manifest['database'], 'fixtures': [], 'cases': [],
              'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sources}}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()

    def run(script, parameters, evidence, timeout):
        live_manifest(args.manifest)
        command = [sys.executable, str(service.ROOT / 'scripts' / script), '--manifest', str(args.manifest.resolve()), *parameters]
        started = time.perf_counter()
        process = subprocess.run(command, cwd=service.ROOT, capture_output=True, timeout=timeout)
        report = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
        receipt = {'command': command, 'exit_code': process.returncode,
                   'elapsed_ms': (time.perf_counter() - started) * 1000,
                   'stdout': process.stdout.decode(errors='replace'), 'stderr': process.stderr.decode(errors='replace'),
                   'artifact': str(evidence / 'result.json'), 'passed': report.get('passed') is True}
        live_manifest(args.manifest)
        return report, receipt

    try:
        for recipe, method_name in (('base', 'calc'), ('extended', 'transform'), ('mixed', 'aggregate')):
            if recipe == 'base' and args.base_fixture:
                fixture_path = args.base_fixture.resolve()
                if not fixture_path.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
                    raise ValueError('Owned disposable base fixture required')
                fixture_receipt = {'source': str(fixture_path), 'reused_after_verified_baseline_restoration': True}
            else:
                fixture_output = output / ('fixture-' + recipe)
                report, fixture_receipt = run('bde_class_fixture_experiment.py',
                    ['--output', str(fixture_output), *([] if recipe == 'base' else ['--' + recipe])], fixture_output, 180)
                if not fixture_receipt['passed'] or fixture_receipt['exit_code']:
                    result['failed_fixture'] = fixture_receipt
                    raise ValueError('Failed fixture creation; no automatic mutation retry')
                fixture_path = fixture_output / 'fixture.json'
            fixture = json.loads(fixture_path.read_text(encoding='utf-8'))
            if (fixture.get('status') != 'ok' or fixture['ascet_process_epoch'] != epoch
                    or fixture['database'].lower() != manifest['database'].lower()):
                raise ValueError('Fixture identity does not match the owned live runtime')
            candidates = [method for method in fixture['class_interface']['methods']
                          if method['diagram'] == 'Main' and method['name'] == method_name]
            if len(candidates) != 1:
                raise ValueError('Fixture recipe has no unique independently identified target method')
            selector = {'diagram': 'Main', 'method_alias': candidates[0]['alias']}
            select_method(fixture['class_interface'], selector)
            fixture_info = {'recipe': recipe, 'component': fixture['component'], 'oid': fixture['oid'],
                            'fixture': str(fixture_path), 'fixture_sha256': service.digest(fixture_path.read_bytes()),
                            'method_selector': selector, 'creation': fixture_receipt}
            result['fixtures'].append(fixture_info)
            save()
            for model_type in MODEL_TYPES:
                case_output = output / (recipe + '-' + model_type)
                selector_path = output / (recipe + '-' + model_type + '-selector.json')
                service.write_once(selector_path, {**selector, 'name': 'AddedInput', 'model_type': model_type})
                report, receipt = run('bde_class_interface_study.py', [
                    '--fixture', str(fixture_path), '--operation', 'closed_create_argument', '--auto-callers',
                    '--selector', str(selector_path), '--repeats', '3', '--output', str(case_output)], case_output, 360)
                receipt.update(recipe=recipe, model_type=model_type, completed_rounds=0)
                result['cases'].append(receipt)
                save()
                if not receipt['passed'] or receipt['exit_code'] or len(report['observations']) != 3:
                    raise ValueError('Failed native matrix case; inspect actual state and WAL before any further write')
                for index, observation in enumerate(report['observations']):
                    proof = observation['proof']
                    if (observation['status'] != 'ok' or observation['outstanding'] is not False
                            or not all(proof.get(key) is True for key in (
                                'signature_public_match', 'original_signature_restored', 'body_restored',
                                'caller_public_restored', 'all_owner_observations_restored',
                                'exact_creation_closure_verified', 'quarantine_cleared_after_actual_validation'))):
                        raise ValueError('Required exact closure/restoration evidence missing')
                    journal = audit(case_output / ('study-' + str(index) + '.wal'))
                    if journal['status'] != 'restored' or journal['dispatch_count'] != journal['completed_count']:
                        raise ValueError('Native journal did not complete and restore every step')
                    receipt['completed_rounds'] += 1
                    result['completed_rounds'] += 1
                save()
        result['passed'] = result['completed_rounds'] == result['expected_rounds']
    except Exception as error:
        result['error'] = repr(error)
    finally:
        result['source_drift'] = [name for name, digest in result['source_manifest'].items()
                                if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != digest]
        result['passed'] = result['passed'] and not result['source_drift']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'completed_rounds', 'expected_rounds', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
