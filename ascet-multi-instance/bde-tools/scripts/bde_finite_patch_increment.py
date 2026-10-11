"""Freeze exact bounded native patch evidence and relevant controls; zero native calls."""
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
from bde_finite_reference_patch_probe import verify_patch_probe
from bd_finite_reference_patch import diagnostic_delta


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    if not output.is_relative_to(root) or output.exists(): raise ValueError('Fresh owned report required')
    output.mkdir(parents=True)
    result = dict(profile='bde_finite_native_patch_increment_v1', passed=False, node='T3.1',
        native_calls_by_report=0, production_write_authorized=False,
        production_connection_inverse_available=False, full_commit_resource_closure=False,
        capture_attached_verified=False, complete_message_lifecycle_cases_passed=0,
        full_delivery=False, ascet_started_or_restarted=False, old_epoch_rebound=False,
        unknown_writer_replayed=False)
    def read(name, file='result.json'):
        return json.loads((root / name / file).read_text(encoding='utf-8'))
    try:
        live, fresh, confirmation = ('bde-finite-patch-live-05', 'bde-finite-patch-fresh-02', 'bde-finite-patch-confirm-02')
        native = read(live, 'native.json'); proof = read(live); newer = read(fresh); confirmed = read(confirmation)
        guard_name = 'bde-finite-patch-native-guards-01'; guard = read(guard_name)
        if (proof['passed'] is not True or proof['native_exit_code'] != 0 or proof['wire']['errors']
                or native != proof['native'] or newer['passed'] is not True or newer['wire']['errors']
                or confirmed['passed'] is not True or confirmed['native_calls'] != 0
                or confirmed['writer_replayed'] is not False
                or confirmed['pending_cleared_verified_reference_restoration'] is not True
                or confirmed['complete_public_bookends_preserved'] is not True
                or guard['passed'] is not True or guard['finite_patch_native_guards_verified'] is not True):
            raise ValueError('Native leaf lifecycle, preparation guards and independent fresh confirmation required')
        summary = verify_patch_probe(native, proof['domain'])
        images = newer['native']['module_read']['persistent_observations']
        if len(images) != 2 or images[0] != images[1] or images[0] != native['actual']['after']:
            raise ValueError('Two complete fresh reads differ from final actual')
        for image in images: diagnostic_delta(native['before'], image)
        hashes_checked = 0; evidence_hashes = {}
        names = ('bde-finite-patch-compile-01', 'bde-finite-patch-compile-02', 'bde-finite-patch-compile-03',
            'bde-finite-patch-live-01', 'bde-finite-patch-live-02', 'bde-finite-patch-live-03',
            'bde-finite-patch-live-04', 'bde-finite-patch-fresh-01', 'bde-finite-patch-harden-compile-01',
            'bde-finite-patch-harden-compile-02', guard_name, live, fresh)
        for name in names:
            document = read(name)
            for file, sha in document['source_manifest'].items():
                if hashlib.sha256((root / name / file).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived source changed: ' + name + '/' + file)
                hashes_checked += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'dispatch.json', 'build.log'):
                path = root / name / file
                if path.is_file(): evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        for name in ('bde-finite-patch-confirm-01', confirmation):
            for file in ('result.json', 'verified-restoration.json'):
                path = root / name / file; evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        sources = source_manifest()
        for relative, sha in sources.items():
            destination = output / 'source' / relative; destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT / relative, destination)
            if hashlib.sha256(destination.read_bytes()).hexdigest() != sha: raise ValueError('Frozen source differs')
        result.update(source_manifest=sources, evidence_sha256=evidence_hashes,
            checks=dict(frozen_source_files=len(sources), archived_source_hashes_checked=hashes_checked),
            live_summary=summary, current_epoch=proof['domain']['process_epoch'],
            native_leaf_executor_implemented=True, native_leaf_executor_scope='isolated_Module_and_source_only',
            native_preparation_refusals=7, immutable_export_zero_writer_control_verified=True,
            independent_fresh_read_confirmed=True, exact_observation_restored=summary['exact_observation_restored'],
            wal_bound_inverse_request_implemented=True, wal_bound_inverse_request_online_verified=False,
            complete_public_bookends_preserved=True,
            wire={name: read(name)['wire'] for name in (guard_name, live, fresh)},
            preserved_prewrite_failures=list(names[:1] + names[3:6]),
            confirmation=confirmation)
        modules = CONTROLS + ('test_bde_reference_leaf_nonempty_probe', 'test_bd_finite_reference_lifecycle',
            'test_bd_finite_reference_patch', 'test_bde_finite_reference_patch_probe', 'test_bd_finite_reference_patch_journal')
        process = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=service.ROOT / 'scripts', capture_output=True, timeout=60)
        transcript = process.stdout + process.stderr; (output / 'controls.log').write_bytes(transcript)
        count = re.search(rb'Ran (\d+) tests', transcript)
        if process.returncode or count is None: raise ValueError('Relevant offline controls failed')
        result['offline_controls'] = dict(tests=int(count[1]), exit_code=0, modules=list(modules),
            online_acceptance=False, historical_overlapping_test_counts_added=False)
        if source_manifest() != sources: raise ValueError('Sources changed during report controls')
        result['next'] = ['Persistent owner object and model/source/cache patch closure',
            'T5.1 actual connect/diff/original BDE/conflict/revert',
            'Disconnect/delete, Message60cases, Enum/Class/Hierarchy, crossModule/A2A/XPass, Doge/AEB_Core and all required gates']
        result['passed'] = True
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'checks', 'offline_controls', 'live_summary', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
