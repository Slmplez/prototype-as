"""Freeze exact owner no-op/metadata patch evidence; no native calls or replay."""
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
from bde_persistent_owner_noop_probe import verify_owner_noop
from bde_persistent_owner_patch_probe import verify_owner_patch
from bde_persistent_owner_noop_confirm import verify_documents


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    if not output.is_relative_to(root) or output.exists(): raise ValueError('Fresh owned report required')
    output.mkdir(parents=True)
    result = dict(profile='bde_persistent_owner_patch_increment_v1', passed=False, node='T3.1',
        native_calls_by_report=0, full_delivery=False, production_write_authorized=False,
        production_connection_inverse_available=False, full_commit_resource_closure=False,
        model_persistent_edit_verified=False, payload_change_tested=False, capture_attached_verified=False,
        complete_message_lifecycle_cases_passed=0, ascet_started_or_restarted=False,
        old_epoch_rebound=False, unknown_writer_replayed=False)
    def load(name, file='result.json'):
        return json.loads((root / name / file).read_text(encoding='utf-8'))
    try:
        result['online'] = {}
        for mode, live, fresh, confirmation in (
                ('noop', 'bde-owner-noop-live-02', 'bde-owner-noop-fresh-01', 'bde-owner-noop-confirm-01'),
                ('patch', 'bde-owner-patch-live-02', 'bde-owner-patch-fresh-01', 'bde-owner-patch-confirm-01')):
            original, proof, confirmed = load(live), load(fresh), load(confirmation)
            native = load(live, 'native.json'); prior = Path(original['read_probe'])
            read_before = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
            verified = verify_documents(original, native, proof, read_before,
                load(live, 'prepared.json'), load(live, 'dispatch.json'), patch=mode == 'patch')
            pending_field = 'pending_cleared_verified_owner_' + mode + '_restoration'
            if confirmed.get('passed') is not True or confirmed.get(pending_field) is not True or confirmed.get('native_calls') != 0:
                raise ValueError('Independent exact this-purpose pending confirmation required')
            result['online'][mode] = verified
        names = ('bde-owner-noop-compile-01', 'bde-owner-noop-compile-02', 'bde-owner-noop-live-01',
            'bde-owner-noop-live-02', 'bde-owner-noop-fresh-01', 'bde-owner-patch-compile-01',
            'bde-owner-patch-compile-02', 'bde-owner-patch-probe-compile-01', 'bde-owner-patch-live-01',
            'bde-owner-patch-live-02', 'bde-owner-patch-fresh-01')
        hashes_checked = 0; evidence_hashes = {}
        for name in names:
            proof = load(name)
            for file, sha in proof['source_manifest'].items():
                if Path(file).name != file or hashlib.sha256((root / name / file).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived proof source differs: ' + name + '/' + file)
                hashes_checked += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'dispatch.json', 'build.log'):
                path = root / name / file
                if path.is_file(): evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        for name in ('bde-owner-noop-confirm-01', 'bde-owner-patch-confirm-01'):
            for file in ('result.json', 'verified-restoration.json'):
                path = root / name / file
                evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        sources = source_manifest()
        for relative, sha in sources.items():
            destination = output / 'source' / relative; destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT / relative, destination)
            if hashlib.sha256(destination.read_bytes()).hexdigest() != sha: raise ValueError('Frozen source differs')
        modules = CONTROLS + ('test_bde_reference_leaf_nonempty_probe', 'test_bd_finite_reference_lifecycle',
            'test_bd_finite_reference_patch', 'test_bde_finite_reference_patch_probe', 'test_bd_finite_reference_patch_journal',
            'test_bd_persistent_owner_records', 'test_bde_persistent_owner_noop_probe', 'test_bde_persistent_owner_noop_confirm',
            'test_bd_persistent_owner_patch', 'test_bde_persistent_owner_patch_probe')
        process = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=service.ROOT / 'scripts', capture_output=True, timeout=60)
        transcript = process.stdout + process.stderr; (output / 'controls.log').write_bytes(transcript)
        count = re.search(rb'Ran (\d+) tests', transcript)
        if process.returncode or count is None: raise ValueError('Related offline controls failed')
        result.update(source_manifest=sources, evidence_sha256=evidence_hashes,
            checks=dict(frozen_source_files=len(sources), archived_source_hashes_checked=hashes_checked),
            offline_controls=dict(tests=int(count[1]), exit_code=0, modules=list(modules), online_acceptance=False,
                historical_overlapping_test_counts_added=False),
            wire={name: load(name)['wire'] for name in ('bde-owner-noop-live-02', 'bde-owner-noop-fresh-01',
                'bde-owner-patch-live-02', 'bde-owner-patch-fresh-01')},
            preserved_prewrite_failures=['bde-owner-noop-compile-01', 'bde-owner-noop-live-01',
                'bde-owner-patch-compile-01', 'bde-owner-patch-live-01'])
        if source_manifest() != sources: raise ValueError('Sources changed during offline controls')
        result['next'] = ['Fresh source serializer and changed graphical payload with model/source/cache closure',
            'Formal original journal-bound owner inverse and combined reciprocal executor',
            'T5.1 actual connect/diff/original BDE/conflict/revert, then remaining T0-T9 and required gates']
        result['passed'] = True
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'checks', 'offline_controls', 'online', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
