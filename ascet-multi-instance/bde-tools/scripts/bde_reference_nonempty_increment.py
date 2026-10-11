"""Freeze bounded nonempty reciprocal evidence and controls; zero native calls."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

import bd_service as service
from bde_acceptance import source_manifest
from bde_reference_leaf_increment import CONTROLS
from bde_reference_leaf_nonempty_probe import verify_retained_nonempty, absence_diagnostic_delta


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    output = args.output.resolve()
    if not output.is_relative_to(root) or output.exists():
        raise ValueError('Fresh owned output required')
    output.mkdir(parents=True)
    result = dict(profile='bde_nonempty_reference_increment_v1', passed=False, node='T3.1',
        native_calls_by_report=0, full_delivery=False, production_write_authorized=False,
        persistent_reference_inverse_implemented=False, capture_attached_verified=False,
        complete_message_lifecycle_cases_passed=0, ascet_started_or_restarted=False,
        exact_observation_restored=False, unknown_writer_replayed=False)
    def read(name, file='result.json'):
        return json.loads((root / name / file).read_text(encoding='utf-8'))
    try:
        live_name, fresh_name, confirm_name = ('bde-reference-nonempty-live-04',
            'bde-reference-nonempty-fresh-01', 'bde-reference-nonempty-confirm-01')
        live, fresh, confirm = read(live_name), read(fresh_name), read(confirm_name)
        native = read(live_name, 'native.json')
        if (live['passed'] is not False or live['native_exit_code'] != 0 or live['wire']['errors']
                or fresh['passed'] is not True or fresh['persistent_complete_capture_verified'] is not True
                or confirm['passed'] is not True or confirm['native_calls'] != 0 or confirm['writer_replayed'] is not False
                or confirm['original_verdict_unchanged'] is not True
                or confirm['pending_cleared_verified_reference_restoration'] is not True):
            raise ValueError('Preserved native refusal and independent zero-replay confirmation required')
        summary = verify_retained_nonempty(native, live['domain'])
        images = fresh['native']['module_read']['persistent_observations']
        if len(images) != 2 or images[0] != images[1] or images[1] != native['actual']['stages'][-1]:
            raise ValueError('Fresh observations differ from actual final phase')
        for image in images: absence_diagnostic_delta(native['before'], image, live['domain'])
        checks = 0
        evidence_files = {}
        names = ('bde-reference-nonempty-before-01', 'bde-reference-nonempty-live-01',
            'bde-reference-nonempty-live-02', 'bde-reference-nonempty-live-03', live_name, fresh_name)
        for name in names:
            proof = read(name)
            for relative, sha in proof['source_manifest'].items():
                if hashlib.sha256((root / name / relative).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived proof source changed: ' + name + '/' + relative)
                checks += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'dispatch.json', 'build.log'):
                path = root / name / file
                if path.is_file(): evidence_files[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        for file in ('result.json', 'verified-restoration.json', 'CTError.st', 'CTError_class.st'):
            path = root / confirm_name / file
            evidence_files[confirm_name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        hashes = source_manifest()
        for relative, sha in hashes.items():
            destination = output / 'source' / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT / relative, destination)
            if hashlib.sha256(destination.read_bytes()).hexdigest() != sha:
                raise ValueError('Frozen source mismatch')
        result.update(source_manifest=hashes, evidence_sha256=evidence_files,
            checks=dict(frozen_source_files=len(hashes), archived_source_hashes_checked=checks),
            live_summary=summary, current_epoch=live['domain']['process_epoch'],
            nonempty_reciprocal_record_lifecycle_verified=True,
            lifecycle_proposal_profile='finite_reference_lifecycle_inverse_plan_v1',
            lifecycle_proposal_native_executor_implemented=False,
            physical_record_proposals_coalesced=True,
            wire={name: read(name)['wire'] for name in ('bde-reference-nonempty-before-01', live_name, fresh_name)},
            preserved_native_failures=list(names[1:5]), confirmation=confirm_name)
        modules = CONTROLS + ('test_bde_reference_leaf_nonempty_probe', 'test_bd_finite_reference_lifecycle')
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=service.ROOT / 'scripts', capture_output=True, timeout=60)
        log = controls.stdout + controls.stderr
        (output / 'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if controls.returncode or count is None: raise ValueError('Relevant controls failed')
        result['offline_controls'] = dict(tests=int(count[1]), exit_code=0, modules=list(modules),
            transcript_location='controls.log', online_acceptance=False,
            historical_overlapping_test_counts_added=False)
        result['next'] = ['Finite native patch/inverse executor with complete CURRENT guards and raw accounting',
            'T5.1 actual connect/diff/BDE/conflict/revert; persistent and model resource closure',
            'Disconnect/delete, Message matrix and remaining T0-T9 required scenarios']
        result['passed'] = True
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'checks', 'offline_controls', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
