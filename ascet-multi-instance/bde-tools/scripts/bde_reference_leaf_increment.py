"""Freeze requested-reference preparation and two bounded leaf experiments.

Report only: no native call, acceptance promotion, pending change or replay.
The original failed verdicts remain distinct from independent confirmations.
"""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import os
import re
import subprocess
import sys

import bd_service as service
from bde_acceptance import source_manifest
from bd_module_persistent_references import validate, validate_receipt, summarize
from bd_connect_material import validate as material_validate
from bde_reference_leaf_noop_probe import verify_native
from bde_reference_leaf_lifecycle_probe import verify_lifecycle, verify_no_writer_refusal

CONTROLS = ('test_bd_finite_reference_inverse', 'test_bd_module_persistent_references',
    'test_bd_module_reference_inverse', 'test_bd_module_references', 'test_bd_connect_journal',
    'test_bd_connect_material', 'test_bd_connect_history', 'test_bd_connect_local_history',
    'test_bd_connect_local_plan', 'test_bd_structural_diff_route', 'test_bd_structure_conflicts',
    'test_bd_persistent_references', 'test_bde_reference_leaf_noop_probe', 'test_bde_reference_leaf_lifecycle_probe')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    if not output.is_relative_to(root) or output.exists():
        raise ValueError('Fresh owned report output required')
    output.mkdir(parents=True)
    result = dict(profile='bde_requested_reference_leaf_increment_v1', passed=False,
        node='T3.1', native_calls_by_report=0, full_delivery=False,
        capture_attached_verified=False, persistent_reference_inverse_implemented=False,
        empty_reference_lifecycle_only=True, complete_message_lifecycle_cases_passed=0,
        production_write_authorized=False, old_epoch_rebound=False, unknown_writer_replayed=False)
    def load(name, file='result.json'):
        return json.loads((root / name / file).read_text(encoding='utf-8'))
    def archive_check(name):
        proof = load(name); count = 0
        for relative, sha in proof.get('source_manifest', {}).items():
            # Research archives use filenames; production preflight uses paths.
            candidates = [root / name / relative, root / name / 'source' / relative]
            found = next((p for p in candidates if p.is_file()), None)
            if found is None:
                current = service.ROOT / relative
                if not current.is_file() or hashlib.sha256(current.read_bytes()).hexdigest() != sha:
                    raise ValueError('Missing immutable proof source: ' + name + '/' + relative)
            elif hashlib.sha256(found.read_bytes()).hexdigest() != sha:
                raise ValueError('Archived proof source changed: ' + name + '/' + relative)
            count += 1
        return count
    try:
        read_name = 'bde-requested-reference-final-read-01'
        preflight_name = 'bde-requested-connect-final-preflight-01'
        read, preflight = load(read_name), load(preflight_name)
        if not read.get('passed') or not read.get('persistent_complete_capture_verified'):
            raise ValueError('Complete final requested read required')
        images = read['native']['module_read']['persistent_observations']
        oid = read['native']['module_read']['component_oid']
        if len(images) != 2 or images[0] != images[1]: raise ValueError('Two stable original requested reads required')
        baseline = validate(images[1], component_oid=oid)
        if len(baseline.get('requested_reciprocal_targets', [])) != 2:
            raise ValueError('Both explicit existing and absent targets required')
        for field in ('passed', 'prepared_verified', 'finite_original_prepared_record_bound',
                'apply_refused_before_native_dispatch', 'host_explicit_no_mutation_refusal',
                'observed_original_unchanged', 'sources_match'):
            if preflight.get(field) is not True: raise ValueError('Missing final preflight gate: ' + field)
        if load(preflight_name, 'before.json') != load(preflight_name, 'after.json'):
            raise ValueError('Final public/native bookends differ')
        prepared = load(preflight_name, 'prepared.json')
        material = material_validate(prepared['material'], token=preflight['native_token'], component_oid=oid,
            source=preflight['source'], target=preflight['target'], phase='prepared')
        receipt = validate_receipt(material['module_persistent_references'], token=preflight['native_token'],
            component_oid=oid, generation=prepared['before']['generation'], phase='prepared')
        if receipt['before'] != baseline or preflight['discard'].get('released') is not True:
            raise ValueError('Exact original requested capture/discard mismatch')
        old_noop = load('bde-reference-leaf-noop-live-03')
        noop_confirm = load('bde-reference-leaf-noop-confirm-01')
        lifecycle = load('bde-reference-leaf-lifecycle-live-02')
        lifecycle_confirm = load('bde-reference-leaf-lifecycle-confirm-01')
        if old_noop['passed'] is not False or lifecycle['passed'] is not False:
            raise ValueError('Original validator failure verdicts must remain preserved')
        noop_summary = verify_native(load('bde-reference-leaf-noop-live-03', 'native.json'), old_noop['domain'], old_noop['component'])
        lifecycle_summary = verify_lifecycle(load('bde-reference-leaf-lifecycle-live-02', 'native.json'), lifecycle['domain'], lifecycle['component'])
        for confirmation in (noop_confirm, lifecycle_confirm):
            if (confirmation.get('passed') is not True or confirmation.get('native_calls') != 0
                    or confirmation.get('writer_replayed') is not False
                    or confirmation.get('original_verdict_unchanged') is not True):
                raise ValueError('Independent zero-replay confirmation required')
        verify_no_writer_refusal(load('bde-reference-leaf-lifecycle-live-01', 'native.json'), load('bde-reference-leaf-lifecycle-live-01')['domain'])
        if load('bde-reference-leaf-lifecycle-refusal-confirm-01').get('passed') is not True:
            raise ValueError('Terminal zero-leaf refusal confirmation required')
        proof_names = (read_name, preflight_name, 'bde-reference-leaf-noop-live-03',
            'bde-reference-leaf-lifecycle-live-01', 'bde-reference-leaf-lifecycle-live-02')
        archive_checks = sum(archive_check(name) for name in proof_names)
        hashes = source_manifest()
        for relative, sha in hashes.items():
            destination = output / 'source' / relative; destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT / relative, destination)
            if hashlib.sha256(destination.read_bytes()).hexdigest() != sha:
                raise ValueError('Frozen source mismatch: ' + relative)
        result['source_manifest'] = hashes
        result['checks'] = dict(frozen_source_files=len(hashes), archived_source_hashes_checked=archive_checks)
        result['read_summary'] = summarize(baseline, component_oid=oid)
        result['noop_summary'] = noop_summary
        result['lifecycle_summary'] = lifecycle_summary
        result['wire'] = {name: load(name)['wire'] for name in
            (read_name, preflight_name, 'bde-reference-leaf-noop-live-03', 'bde-reference-leaf-lifecycle-live-02')}
        result['confirmations'] = ['bde-reference-leaf-noop-confirm-01', 'bde-reference-leaf-lifecycle-confirm-01',
            'bde-reference-leaf-lifecycle-refusal-confirm-01']
        result['retained_failures'] = ['bde-requested-finite-references-live-01', 'bde-reference-leaf-noop-live-01',
            'bde-reference-leaf-noop-live-02', 'bde-reference-leaf-noop-live-03',
            'bde-reference-leaf-lifecycle-live-01', 'bde-reference-leaf-lifecycle-live-02']
        restart = load('bde-requested-reference-increment-01', 'approved-restart-result.json')
        result['approved_private_restarts'] = 1
        result['current_epoch'] = str(restart['pid']) + '/' + restart['start_time_utc']
        result['normal_business_instance_restarted'] = False
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *CONTROLS],
            cwd=service.ROOT / 'scripts', env=dict(os.environ), capture_output=True, timeout=60)
        log = controls.stdout + controls.stderr
        (output / 'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if controls.returncode or count is None: raise ValueError('Reproducible report controls did not pass')
        result['offline_controls'] = dict(tests=int(count[1]), exit_code=controls.returncode,
            modules=list(CONTROLS), scope='Finite-reference/connect/raw/handshake modules, executed from scripts cwd',
            transcript_location='controls.log',
            historical_overlapping_test_counts_added=False, online_acceptance=False)
        result['next'] = ['Nonempty reference create/resize/delete and fresh independent readback',
            'General finite persistent patch/inverse with current conflicts and complete resource accounting',
            'T5.1 real connect/diff/BDE/conflict/revert then disconnect/delete and Message matrix']
        result['passed'] = True
    except Exception as error: result['error'] = str(error)
    (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'checks', 'read_summary', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
