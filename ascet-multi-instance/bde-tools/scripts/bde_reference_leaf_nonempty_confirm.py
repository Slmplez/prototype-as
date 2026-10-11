"""Zero-native independent confirmation of preserved reciprocal resize evidence.

The native verdict remains failed. Only absent-source CTError101 sysio text
may differ; all existing raw records and other absence fields remain exact.
The full before/actual/fresh observations and diagnostic difference are kept.
"""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bde_reference_leaf_nonempty_probe import verify_retained_nonempty, absence_diagnostic_delta


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for option in ('evidence', 'fresh-read', 'output'):
        parser.add_argument('--' + option, type=Path, required=True)
    args = parser.parse_args()
    evidence, read, output = args.evidence.resolve(), args.fresh_read.resolve(), args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, read, output)) or output.exists():
        raise ValueError('Owned immutable evidence and fresh confirmation output required')
    original = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
    native = json.loads((evidence / 'native.json').read_text(encoding='utf-8'))
    proof = json.loads((read / 'result.json').read_text(encoding='utf-8'))
    domain = original['domain']
    result = dict(profile='reference_leaf_nonempty_retained_confirmation_v1', passed=False,
        native_calls=0, writer_replayed=False, original_verdict_unchanged=True,
        old_epoch_rebound=False, full_delivery=False, original_evidence=str(evidence), fresh_read=str(read),
        exact_observation_restored=False, production_inverse_authorized=False)
    output.mkdir(parents=True)
    try:
        if (original.get('passed') is not False or original.get('native_exit_code') != 0
                or original['wire']['errors'] or 'cleanup_error' in native
                or proof.get('passed') is not True or proof.get('persistent_complete_capture_verified') is not True
                or proof['native']['process_epoch'] != domain['process_epoch']
                or proof['native']['database'] != domain['database']
                or proof['native']['dirty_before'] != 0 or proof['native']['dirty_after'] != 0
                or proof['native']['module_read']['component_oid'] != domain['oid']
                or proof['native']['module_read']['component'] != original['component']
                or proof['pid'] != original['pid'] or proof['port'] != original['port']):
            raise ValueError('Complete preserved failure and fresh same-runtime clean read required')
        for name, sha in original['source_manifest'].items():
            if hashlib.sha256((evidence / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Original archived research source changed')
            if name.endswith(('.st', '.cs')) and hashlib.sha256((service.ROOT / 'scripts' / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Native source changed since the preserved reply')
        for name, sha in proof['source_manifest'].items():
            if hashlib.sha256((read / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Fresh archived read source changed')
        result['summary'] = verify_retained_nonempty(native, domain)
        images = proof['native']['module_read']['persistent_observations']
        if len(images) != 2 or images[0] != images[1] or images[1] != native['actual']['stages'][-1]:
            raise ValueError('Fresh complete observations differ from final actual phase')
        result['fresh_diagnostic_deltas'] = [absence_diagnostic_delta(native['before'], image, domain) for image in images]
        prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
        if prepared != dict(process_epoch=domain['process_epoch'], database=domain['database'],
                component=original['component'], component_oid=domain['oid'], before=native['before']):
            raise ValueError('Fsynced original before does not match actual evidence')
        audit_paths = ('unpacked/smalltalk-source/ASDBase.ic/CTError.st',
            'unpacked/smalltalk-source/ASDBase.ic/CTError_class.st')
        result['diagnostic_source_audit'] = {}
        for relative in audit_paths:
            path = service.ROOT / relative
            destination = output / path.name
            destination.write_bytes(path.read_bytes())
            result['diagnostic_source_audit'][relative] = hashlib.sha256(path.read_bytes()).hexdigest()
        # The diagnostic is preserved, never reset by a native setter.
        result.update(persistent_reference_records_restored=True, original_absence_restored=True,
            fresh_complete_reference_read_verified=True)
        with service.live_lock():
            if endpoint_process(proof['port']) != proof['pid']:
                raise ValueError('Endpoint changed after fresh read')
            marker = Path(original['pending_record'])
            row = json.loads(marker.read_text(encoding='utf-8'))
            if (marker != pending.pending_path(domain) or row['domain'] != domain
                    or row['command'] != 'research_reciprocal_reference_resize_restore'
                    or row['managed_context']['evidence'] != str(evidence)
                    or row['managed_context']['original_material'] != str(evidence / 'prepared.json')
                    or row['managed_context']['original_sha256'] != fingerprint(prepared)
                    or row['native_token'] != 'edit_' + fingerprint(dict(domain=domain, purpose='isolated_reciprocal_reference_resize_restore'))):
                raise ValueError('Exact original pending binding required')
            service.write_once(output / 'verified-restoration.json', result)
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_verified_reference_restoration=True)
    except Exception as error:
        result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
