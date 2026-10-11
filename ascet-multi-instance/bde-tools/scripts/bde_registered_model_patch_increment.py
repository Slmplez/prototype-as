"""Freeze registered-model patch prerequisite evidence without another live call."""
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
from bde_registered_model_patch_study import validate_private, validate_preflight


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); base = service.ROOT/'analysis/bde-experiments/2026-10-11'
    output = args.output.resolve()
    if not output.is_relative_to(base) or output.exists():
        raise ValueError('New owned evidence checkpoint required')
    output.mkdir(parents=True)
    result = dict(profile='bde_registered_model_patch_checkpoint_v1', passed=False,
                  native_calls_by_report=0, model_store_verified=False,
                  production_inverse_authorized=False, full_commit_resource_closure=False,
                  complete_message_lifecycle_cases_passed=0, required_cases_upgraded=False,
                  full_delivery=False, ascet_started_or_restarted=False)
    read = lambda p: json.loads(p.read_text(encoding='utf-8'))
    try:
        private = base/'bde-registered-model-private-03'
        preflight = base/'bde-registered-model-preflight-01'
        failed = base/'bde-registered-model-private-01'
        audit = read(base/'bde-connect-store-resources-preflight-03/original-audit.json')
        a,b,f = (read(d/'result.json') for d in (private, preflight, failed))
        if a['passed'] is not True or b['passed'] is not True or f['passed'] is not False:
            raise ValueError('Actual passed evidence and original failure required')
        private_summary = validate_private(read(private/'actual.json'))
        preflight_summary = validate_preflight(read(preflight/'actual.json'), audit)
        # The final validator tightened received-image checks after the live run.
        # Recompute from actual full images; do not recapture or upgrade old verdicts.
        archived = 0; evidence = {}
        for folder in (private, preflight, failed, base/'bde-registered-model-private-02'):
            prior = read(folder/'result.json')
            for relative, sha in prior['source_manifest'].items():
                path = folder/'source'/relative
                if hashlib.sha256(path.read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived source mismatch: '+relative)
                archived += 1
            for name in ('intent.json', 'result.json', 'actual.json', 'before.json', 'after.json', 'oracle-build.json'):
                path = folder/name
                if path.is_file(): evidence[folder.name+'/'+name] = service.digest(path.read_bytes())
        sources = source_manifest()
        for relative, sha in sources.items():
            dest = output/'source'/relative; dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT/relative, dest)
            if service.digest(dest.read_bytes()) != sha: raise ValueError('Frozen source mismatch')
        modules = ('test_bde_registered_model_patch_study', 'test_bd_commit_model_diff',
                   'test_bd_commit_model_images', 'test_bd_field_inverse', 'test_bd_parent_order_inverse')
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
                                  cwd=output/'source/scripts', capture_output=True, timeout=60)
        log = controls.stdout+controls.stderr; (output/'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if controls.returncode != 0 or count is None: raise ValueError('Frozen controls failed')
        result.update(passed=True, source_manifest=sources, frozen_source_files=len(sources),
                      archived_source_hashes_checked=archived, local_evidence_hashes=evidence,
                      private_executor=private_summary, retained_v6_preflight=preflight_summary,
                      full_public_native_bookends_equal=all(r['complete_public_native_bookends_equal'] for r in (a,b)),
                      original_preparation_evidence_unchanged=all(r['original_evidence_unchanged'] for r in (a,b)),
                      unsupported_reorder_failure_preserved=f['error'],
                      shared_member_reorder_supported=False,
                      offline_controls=dict(tests=int(count[1]), modules=list(modules),
                                            exit_code=0, executed_from_frozen_sources=True, online_acceptance=False),
                      native_wire={private.name:a['wire'], preflight.name:b['wire']})
    except Exception as error:
        result.update(passed=False, error=str(error))
    service.write_once(output/'result.json', result)
    (output/'README.md').write_text(
        '# Registered SG model patch prerequisite\n\n'
        'Retained v6 preflight: 271 original and CURRENT objects, zero candidate cells; '
        'no execution. The native three-part SG image adapter reuses the audited '
        'field/index/key/member/order primitive planner. Original schema and identity '
        'guards remain intact. CURRENT is not an applied-edit after receipt.\n\n'
        'The separate native private control executes undo, redo and second undo '
        '(7 primitives each) on six newly allocated object types. It preserves '
        'independent field/key/member/order changes, rejects touched overlap without '
        'a primitive, and verifies five original/schema/value/boundary/introduced guards. '
        'The initial shared-member reorder control failed; that restriction remains.\n\n'
        'Full independent public/native bookends remain identical in both passed runs. '
        'No Store/Commit, registered model mutation, restart or production inverse. '
        'Model/source/cache/control and persistent Store closure remain incomplete. '
        'Message 0/60, 43 required, T3.1/T5.1 and full_delivery=false are not upgraded.\n\n'
        'Reproduce from the existing no-write v6 preparation with '
        '`bde_registered_model_patch_study.py --preparation <original-dir> '
        '--mode preflight|private --output <new-dir>`; do not rebind old materials. '
        'Offline replay: `bde_registered_model_patch_increment.py --output <new-dir>`.\n'
        'The initial frozen replay failed an eager live-only `image_patch` import; '
        'moving the experiment builder import into main made the validators '
        'standalone. That failed checkpoint is retained.\n',
        encoding='utf-8')
    print(json.dumps({k:result.get(k) for k in ('passed','error','offline_controls',
                                              'frozen_source_files','archived_source_hashes_checked')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
