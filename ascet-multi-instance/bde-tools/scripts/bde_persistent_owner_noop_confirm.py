"""Confirm only this owner no-op pending using independent complete fresh reads."""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bd_persistent_owner_records import validate
from bde_persistent_owner_noop_probe import verify_owner_noop


PURPOSE = 'isolated_persistent_owner_noop'
COMMAND = 'research_persistent_owner_noop'


def verify_documents(original, native, proof, read_before, prepared, dispatch, *, patch=False):
    domain = original['domain']
    if (original.get('profile') != ('bde_persistent_owner_patch_experiment_v1' if patch else 'bde_persistent_owner_noop_experiment_v1')
            or original.get('passed') is not True or original.get('native_exit_code') != 0
            or original['wire']['errors'] or native != original['native']
            or original.get('pending_retained_until_fresh_read') is not True
            or proof.get('passed') is not True or proof.get('persistent_owner_records_stable') is not True
            or proof.get('persistent_complete_capture_verified') is not True
            or proof['wire']['errors'] or proof['pid'] != original['pid'] or proof['port'] != original['port']
            or proof['native']['process_epoch'] != domain['process_epoch']
            or proof['native']['database'] != domain['database']
            or proof['native']['module_read']['component_oid'] != domain['oid']
            or proof['native']['module_read']['component'] != original['component']
            or any(type(proof['native'][k]) is not int or proof['native'][k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in proof['native']):
        raise ValueError('Original owner dispatch and successful same-runtime full fresh owner read required')
    if patch:
        from bde_persistent_owner_patch_probe import verify_owner_patch
        summary = verify_owner_patch(native, domain)
    else:
        summary = verify_owner_noop(native, domain)
    read = proof['native']['module_read']; owners = read['owner_observations']
    if len(owners) != 2:
        raise ValueError('Two complete independent owner observations required')
    for image in owners:
        validate(image, component_oid=domain['oid'])
        if fingerprint(image) != fingerprint(native['actual']['after']):
            raise ValueError('Full fresh owner records differ from original/actual including allocated tail')
    if (len(read['persistent_observations']) != 2
            or any(fingerprint(v) != fingerprint(native['before']['references']) for v in read['persistent_observations'])):
        raise ValueError('Full independent reference observations differ')
    if (read_before.get('passed') is not True or read_before['pid'] != original['pid']
            or read_before['port'] != original['port']
            or read_before['native']['process_epoch'] != domain['process_epoch']
            or read_before['native']['database'] != domain['database']
            or read_before['native']['module_read']['component_oid'] != domain['oid']
            or read_before['native']['module_read']['component'] != original['component']
            or read['observations'] != read_before['native']['module_read']['observations']):
        raise ValueError('Independent public Module bookends differ')
    if prepared != dict(process_epoch=domain['process_epoch'], database=domain['database'],
            component=original['component'], component_oid=domain['oid'], before=native['before']):
        raise ValueError('Original fsynced before binding differs')
    if dispatch != dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'],
            command='isolated_persistent_owner_patch_lifecycle' if patch else PURPOSE, automatic_retry=False):
        raise ValueError('Original fixed no-retry owner dispatch required')
    return dict(summary=summary, complete_public_bookends_preserved=True,
        full_owner_fresh_reads=2, full_reference_fresh_reads=2, native_calls=0,
        writer_replayed=False, old_epoch_rebound=False, full_delivery=False, production_inverse_authorized=False)


def verify_pending(row, domain, evidence, prepared, *, patch=False):
    purpose = 'isolated_persistent_owner_patch_lifecycle' if patch else PURPOSE
    command = 'research_persistent_owner_patch_lifecycle' if patch else COMMAND
    if (row['domain'] != domain or row['command'] != command
            or row['managed_context']['evidence'] != str(evidence)
            or row['managed_context']['original_material'] != str(evidence / 'prepared.json')
            or row['managed_context']['original_sha256'] != fingerprint(prepared)
            or row['native_token'] != 'edit_' + fingerprint(dict(domain=domain, purpose=purpose))):
        raise ValueError('Exact this-trial pending binding required')


def main(patch=False):
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
    prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
    dispatch = json.loads((evidence / 'dispatch.json').read_text(encoding='utf-8'))
    domain = original['domain']; output.mkdir(parents=True)
    result = dict(profile='persistent_owner_patch_confirmation_v1' if patch else 'persistent_owner_noop_confirmation_v1', passed=False, native_calls=0,
        writer_replayed=False, full_delivery=False, evidence=str(evidence), fresh_read=str(fresh))
    try:
        result.update(verify_documents(original, native, proof, read_before, prepared, dispatch, patch=patch))
        result['source_hashes_checked'] = 0
        for directory, document in ((evidence, original), (fresh, proof), (prior, read_before)):
            for name, sha in document['source_manifest'].items():
                if Path(name).name != name or hashlib.sha256((directory / name).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived proof source changed: ' + name)
                result['source_hashes_checked'] += 1
        with service.live_lock():
            if endpoint_process(proof['port']) != proof['pid']:
                raise ValueError('Listener changed after fresh read')
            marker = Path(original['pending_record'])
            if marker != pending.pending_path(domain): raise ValueError('Exact this-instance pending path required')
            verify_pending(json.loads(marker.read_text(encoding='utf-8')), domain, evidence, prepared, patch=patch)
            service.write_once(output / 'verified-restoration.json', result)
            pending.confirmed(marker)
        result.update(passed=True)
        result['pending_cleared_verified_owner_patch_restoration' if patch else 'pending_cleared_verified_owner_noop_restoration'] = True
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'summary')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
