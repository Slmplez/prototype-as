"""Recompute a finite-reference increment from saved online proof and offline controls.

No native call, model write, ASCET lifecycle or acceptance-ledger promotion.
Requires final same-source read/preflight artifacts; failures remain separate.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

from bd_module_persistent_references import validate, summarize, validate_receipt
from bd_connect_material import validate as validate_material
from bde_public_oracle import compare
import bd_service as service

SOURCES = ('AscetConnectCompileProbe.cs', 'AscetStructureSession.cs', 'bde_connect_compile_probe.py',
    'bde_connect_reference_preflight.py', 'bde_finite_reference_increment.py',
    'bde_module_persistent_references.st', 'bde_value_probe.st', 'bde_connect_material.st',
    'bd_module_persistent_references.py', 'bd_finite_reference_inverse.py', 'bd_connect_material.py',
    'bd_connect_journal.py', 'bd_structure_journal.py', 'bd_native_structure.py', 'bde_main_workflow.py',
    'test_bd_module_persistent_references.py', 'test_bd_finite_reference_inverse.py')
TESTS = ('test_bd_finite_reference_inverse', 'test_bd_module_persistent_references', 'test_bd_module_reference_inverse',
    'test_bd_module_references', 'test_bd_connect_journal', 'test_bd_connect_material', 'test_bd_connect_history',
    'test_bd_connect_local_history', 'test_bd_connect_local_plan', 'test_bd_structural_diff_route',
    'test_bd_structure_conflicts', 'test_bd_persistent_references')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--read-probe', type=Path, required=True)
    parser.add_argument('--second-read-probe', type=Path, required=True)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); output = args.output.resolve()
    if output.exists() or not output.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
        raise ValueError('Fresh owned increment directory required')
    output.mkdir(parents=True)
    def read(directory, name='result.json'):
        directory = directory.resolve()
        if not directory.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
            raise ValueError('Owned evidence directory required')
        return json.loads((directory / name).read_text(encoding='utf-8'))
    result = dict(profile='bde_finite_reference_increment_v1', passed=False, full_delivery=False,
        node='T3.1', message_lifecycle_cases_passed=0, capture_attached_verified=False,
        persistent_reference_inverse_implemented=False, native_calls_by_report=0,
        source_manifest={}, read_probes=[str(args.read_probe), str(args.second_read_probe)], preflight=str(args.preflight))
    try:
        for name in SOURCES:
            path = service.ROOT / 'scripts' / name
            result['source_manifest']['scripts/' + name] = hashlib.sha256(path.read_bytes()).hexdigest()
            destination = output / 'source' / 'scripts' / name; destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(path, destination)
        summaries = []
        for directory in (args.read_probe, args.second_read_probe):
            proof = read(directory)
            if (proof.get('passed') is not True or proof.get('persistent_complete_capture_verified') is not True
                    or proof['native']['dirty_before'] != 0 or proof['native']['dirty_after'] != 0):
                raise ValueError('Complete current finite read with unchanged clean-editor state required')
            native = proof['native']['module_read']
            snapshots = [validate(row, component_oid=native['component_oid']) for row in native['persistent_observations']]
            if len(snapshots) != 2 or snapshots[0] != snapshots[1]:
                raise ValueError('Two stable complete finite observations required')
            for name, sha in proof['source_manifest'].items():
                if hashlib.sha256((service.ROOT / 'scripts' / name).read_bytes()).hexdigest() != sha:
                    raise ValueError('Read proof source changed: ' + name)
            summaries.append(dict(component=native['component'], component_oid=native['component_oid'],
                summary=summarize(snapshots[0], component_oid=native['component_oid']), wire=proof['wire'],
                native_elapsed_ms=proof['native']['elapsed_ms']))
        p = read(args.preflight)
        if any(p.get(name) is not True for name in ('passed', 'prepared_verified', 'finite_original_prepared_record_bound',
                'apply_refused_before_native_dispatch', 'host_explicit_no_mutation_refusal', 'observed_original_unchanged', 'sources_match')):
            raise ValueError('Complete production v3 preflight and both zero-mutation refusals required')
        if p['discard'].get('released') is not True:
            raise ValueError('Exact prepared native token was not released')
        result['report_only_source_changes'] = []
        for relative, sha in p['source_manifest'].items():
            if hashlib.sha256((service.ROOT / relative).read_bytes()).hexdigest() != sha:
                # This offline report is not compiled or invoked by the native
                # preflight. Its own exact source is archived separately above.
                if relative == 'scripts/bde_finite_reference_increment.py':
                    result['report_only_source_changes'].append(relative)
                    continue
                raise ValueError('Preflight source changed: ' + relative)
        before, after = read(args.preflight, 'before.json'), read(args.preflight, 'after.json')
        if before != after or not compare(before['native']['entries'], before['public'])['passed']:
            raise ValueError('Original public/native graph and layout changed')
        prepared, inspected = read(args.preflight, 'prepared.json'), read(args.preflight, 'inspected.json')
        material = validate_material(prepared['material'], token=p['native_token'], component_oid=p['domain']['oid'],
            source=p['source'], target=p['target'], phase='prepared')
        if inspected != material or material['profile'] != 'native_connect_material_v3':
            raise ValueError('Complete inspected original v3 material required')
        raw = validate_receipt(material['module_persistent_references'], token=p['native_token'],
            component_oid=p['domain']['oid'], generation=prepared['before']['generation'], phase='prepared')
        if raw['before'] != read(args.read_probe)['native']['module_read']['persistent_observations'][1]:
            raise ValueError('Fresh original prepared reference records differ from read-only observations')
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v',
            *['scripts.' + name for name in TESTS]], cwd=service.ROOT,
            env=dict(os.environ, PYTHONPATH=str(service.ROOT / 'scripts')
                + (os.pathsep + os.environ['PYTHONPATH'] if os.environ.get('PYTHONPATH') else '')),
            capture_output=True, timeout=60)
        (output / 'controls.log').write_bytes(controls.stdout + controls.stderr)
        match = re.search(rb'Ran (\d+) tests', controls.stdout + controls.stderr)
        result['controls'] = dict(exit_code=controls.returncode, tests=int(match[1]) if match else 0,
            modules=list(TESTS), live_write_acceptance=False)
        if controls.returncode != 0 or not match: raise ValueError('Targeted controls did not pass')
        result.update(passed=True, read_summaries=summaries, original_prepared_reference_snapshot_summary=summarize(raw['before'], component_oid=p['domain']['oid']),
            prepared_verified=True, prepared_native_record_bound=True, python_apply_refused_before_io=True,
            native_bridge_no_mutation_refusal_verified=True, public_native_original_unchanged=True,
            preflight_wire=p['wire'], ascet_started_or_restarted=False)
    except Exception as error:
        result['error'] = str(error)
    (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(dict(passed=result['passed'], error=result.get('error'), output=str(output)), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
