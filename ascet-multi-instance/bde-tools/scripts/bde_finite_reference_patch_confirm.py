"""Confirm native leaf trial via fresh full read; no writer, retry or epoch rebind."""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bd_finite_reference_patch import diagnostic_delta
from bde_finite_reference_patch_probe import verify_patch_probe


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('evidence', 'fresh-read', 'output'):
        parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args()
    evidence, fresh, output = args.evidence.resolve(), args.fresh_read.resolve(), args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, fresh, output)) or output.exists():
        raise ValueError('Owned evidence and fresh output required')
    original = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
    native = json.loads((evidence / 'native.json').read_text(encoding='utf-8'))
    proof = json.loads((fresh / 'result.json').read_text(encoding='utf-8'))
    prior = Path(original['read_probe'])
    if not prior.is_relative_to(root): raise ValueError('Owned original read proof required')
    read_before = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    domain = original['domain']
    output.mkdir(parents=True)
    result = dict(profile='finite_reference_patch_confirmation_v1', passed=False,
        native_calls=0, writer_replayed=False, old_epoch_rebound=False, full_delivery=False,
        production_inverse_authorized=False, evidence=str(evidence), fresh_read=str(fresh))
    try:
        if (original.get('passed') is not True or original.get('native_exit_code') != 0
                or original['wire']['errors'] or native != original['native']
                or proof.get('passed') is not True or proof.get('persistent_complete_capture_verified') is not True
                or proof['wire']['errors'] or proof['pid'] != original['pid'] or proof['port'] != original['port']
                or proof['native']['process_epoch'] != domain['process_epoch']
                or proof['native']['database'] != domain['database']
                or proof['native']['module_read']['component_oid'] != domain['oid']
                or proof['native']['module_read']['component'] != original['component']
                or type(proof['native']['dirty_before']) is not int or proof['native']['dirty_before'] != 0
                or type(proof['native']['dirty_after']) is not int or proof['native']['dirty_after'] != 0):
            raise ValueError('Successful original dispatch and same-runtime fresh full read required')
        result['summary'] = verify_patch_probe(native, domain)
        reads = proof['native']['module_read']['persistent_observations']
        if len(reads) != 2 or any(fingerprint(v) != fingerprint(native['actual']['after']) for v in reads):
            raise ValueError('Two fresh observations must match complete actual final phase')
        result['fresh_diagnostic_deltas'] = [diagnostic_delta(native['before'], value) for value in reads]
        if (read_before.get('passed') is not True or read_before['native']['process_epoch'] != domain['process_epoch']
                or read_before['native']['module_read']['component_oid'] != domain['oid']
                or proof['native']['module_read']['observations'] != read_before['native']['module_read']['observations']):
            raise ValueError('Complete independent public Module bookends differ')
        result['complete_public_bookends_preserved'] = True
        result['source_hashes_checked'] = 0
        for directory, document in ((evidence, original), (fresh, proof), (prior, read_before)):
            for name, sha in document['source_manifest'].items():
                if hashlib.sha256((directory / name).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived proof source changed: ' + name)
                result['source_hashes_checked'] += 1
        prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
        if prepared != dict(process_epoch=domain['process_epoch'], database=domain['database'],
                component=original['component'], component_oid=domain['oid'], before=native['before']):
            raise ValueError('Original fsynced before binding differs')
        dispatch = json.loads((evidence / 'dispatch.json').read_text(encoding='utf-8'))
        if dispatch != dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'],
                command='isolated_finite_reference_patch_lifecycle', automatic_retry=False):
            raise ValueError('Original fixed no-retry dispatch marker required')
        with service.live_lock():
            if endpoint_process(proof['port']) != proof['pid']:
                raise ValueError('Listener changed after fresh read')
            marker = Path(original['pending_record'])
            row = json.loads(marker.read_text(encoding='utf-8'))
            if (marker != pending.pending_path(domain) or row['domain'] != domain
                    or row['command'] != 'research_finite_reference_patch_lifecycle'
                    or row['managed_context']['evidence'] != str(evidence)
                    or row['managed_context']['original_material'] != str(evidence / 'prepared.json')
                    or row['managed_context']['original_sha256'] != fingerprint(prepared)
                    or row['native_token'] != 'edit_' + fingerprint(dict(domain=domain, purpose='isolated_finite_reference_patch_lifecycle'))):
                raise ValueError('Exact this-trial pending binding required')
            service.write_once(output / 'verified-restoration.json', result)
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_verified_reference_restoration=True)
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'summary', 'complete_public_bookends_preserved')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
