"""Confirm a retained lifecycle reply against a fresh read, without leaf replay."""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_module_persistent_references import validate
from bd_windows_endpoint import endpoint_process
from bde_reference_leaf_lifecycle_probe import verify_lifecycle


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--evidence', type=Path, required=True)
    parser.add_argument('--fresh-read', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    evidence, read, output = args.evidence.resolve(), args.fresh_read.resolve(), args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, read, output)) or output.exists():
        raise ValueError('Owned preserved lifecycle, fresh read and fresh confirmation required')
    original = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
    native = json.loads((evidence / 'native.json').read_text(encoding='utf-8'))
    proof = json.loads((read / 'result.json').read_text(encoding='utf-8'))
    domain = original['domain']
    result = dict(profile='reference_leaf_lifecycle_retained_confirmation_v1', passed=False,
        native_calls=0, writer_replayed=False, original_verdict_unchanged=True,
        recovery_hold_cleared=False, old_epoch_rebound=False, full_delivery=False,
        original_evidence=str(evidence), fresh_read=str(read))
    try:
        if (original.get('native_exit_code') != 0 or original['wire']['errors'] or 'cleanup_error' in native
                or proof.get('passed') is not True or proof.get('persistent_complete_capture_verified') is not True
                or proof['native']['process_epoch'] != domain['process_epoch']
                or proof['native']['database'] != domain['database']
                or proof['native']['module_read']['component_oid'] != domain['oid']):
            raise ValueError('Complete same-runtime native reply and fresh read required')
        for name, sha in original['source_manifest'].items():
            if hashlib.sha256((evidence / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Archived original source changed')
            if name.endswith(('.st', '.cs')) and hashlib.sha256((service.ROOT / 'scripts' / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Native lifecycle source changed; cannot reinterpret original reply')
        result['summary'] = verify_lifecycle(native, domain, original['component'])
        images = proof['native']['module_read']['persistent_observations']
        if len(images) != 2 or any(validate(image, component_oid=domain['oid']) != native['before'] for image in images):
            raise ValueError('Fresh complete raw references do not equal exact original before')
        prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
        if prepared != dict(process_epoch=domain['process_epoch'], database=domain['database'],
                component=original['component'], component_oid=domain['oid'], before=native['before']):
            raise ValueError('Original fsynced before differs from lifecycle reply')
        marker = Path(original['pending_record'])
        with service.live_lock():
            if endpoint_process(proof['port']) != proof['pid']:
                raise ValueError('Fresh read endpoint changed')
            row = json.loads(marker.read_text(encoding='utf-8'))
            if (marker != pending.pending_path(domain) or row['domain'] != domain
                    or row['command'] != 'research_absent_reference_lifecycle'
                    or row['managed_context']['evidence'] != str(evidence)
                    or row['managed_context']['original_sha256'] != fingerprint(prepared)
                    or row['native_token'] != 'edit_' + fingerprint(dict(domain=domain, purpose='absent_reference_empty_lifecycle'))):
                raise ValueError('Exact original lifecycle pending binding required')
            pending.confirmed(marker)
        result.update(passed=True, fresh_original_absence_verified=True, pending_cleared_verified_lifecycle=True)
    except Exception as error: result['error'] = str(error)
    output.mkdir(parents=True)
    (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
