"""Confirm only the one-source-dump pending with independent unchanged originals.

No native call, native retry, epoch rebinding or removal of other pending/holds.
"""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate
from bd_module_persistent_references import validate as validate_references
from bd_windows_endpoint import endpoint_process
from bde_fresh_serializer_dump_probe import verify_dump


def verify_documents(original, native, inventory, fresh, prepared, dispatch):
    domain = original['domain']; before_native = inventory['native']; read = fresh['native']['module_read']
    if (original.get('profile') != 'bde_fresh_source_dump_experiment_v1' or original.get('passed') is not True
            or type(original.get('native_exit_code')) is not int or original['native_exit_code'] != 0
            or original.get('pending_retained_until_fresh_read') is not True or original['wire']['errors']
            or original['native'] != native
            or domain['process_epoch'] != before_native['process_epoch'] or domain['database'] != before_native['database']
            or domain['oid'] != before_native['module_read']['component_oid']
            or fresh.get('passed') is not True or fresh.get('persistent_owner_records_stable') is not True
            or fresh.get('persistent_complete_capture_verified') is not True
            or fresh['wire']['errors'] or type(fresh.get('native_exit_code')) is not int or fresh['native_exit_code'] != 0
            or fresh['pid'] != original['pid'] or fresh['port'] != original['port']
            or fresh['native']['process_epoch'] != domain['process_epoch']
            or fresh['native']['database'] != domain['database'] or read['component_oid'] != domain['oid']
            or read['component'] != before_native['module_read']['component']
            or any(type(fresh['native'][k]) is not int or fresh['native'][k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in fresh['native']):
        raise ValueError('Successful same-instance original dump and full independent fresh read required')
    summary = verify_dump(native, inventory)
    original_image = native['prepared']['before']
    if len(read['owner_observations']) != 2 or len(read['persistent_observations']) != 2:
        raise ValueError('Exactly two independent full owner/reference observations required')
    if any(validate(x, component_oid=domain['oid']) != original_image for x in read['owner_observations']):
        raise ValueError('Independent full raw owners differ from original after dump')
    if any(validate_references(x, component_oid=domain['oid']) != original_image['references'] for x in read['persistent_observations']):
        raise ValueError('Independent full references differ from original after dump')
    if fingerprint(read['observations']) != fingerprint(before_native['module_read']['observations']):
        raise ValueError('Public Module observations changed across isolated dump')
    expected_prepared = dict(process_epoch=domain['process_epoch'], database=domain['database'],
        component=read['component'], component_oid=domain['oid'], prepared=native['prepared'])
    expected_dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'],
        workbench_index=native['prepared']['workbench_index'], command='isolated_fresh_source_dump_once', automatic_retry=False)
    if fingerprint(prepared) != fingerprint(expected_prepared) or fingerprint(dispatch) != fingerprint(expected_dispatch):
        raise ValueError('Exact original durable preparation/one-shot dispatch required')
    return dict(summary=summary, full_owner_fresh_reads=2, full_reference_fresh_reads=2,
        complete_public_bookends_preserved=True, original_state_preserved=True, native_calls=0,
        serialization_replayed=False, old_epoch_rebound=False, full_delivery=False, production_inverse_authorized=False)


def verify_pending(row, domain, evidence, prepared):
    if (set(row) != {'domain', 'command', 'native_token', 'automatic_retry', 'managed_context'}
            or fingerprint(row['domain']) != fingerprint(domain) or row['command'] != 'research_fresh_source_dump_once'
            or row['native_token'] != 'edit_' + fingerprint(domain) or row['automatic_retry'] is not False
            or row['managed_context'] != dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'),
                original_sha256=fingerprint(prepared))):
        raise ValueError('Exact this-dump pending original-material binding required')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('evidence', 'fresh-read', 'output'): parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args(); evidence = args.evidence.resolve(); fresh_path = args.fresh_read.resolve(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, fresh_path, output)) or output.exists():
        raise ValueError('Owned evidence and fresh output required')
    def read(path): return json.loads(path.read_text(encoding='utf-8'))
    original = read(evidence / 'result.json'); native = read(evidence / 'native.json'); fresh = read(fresh_path / 'result.json')
    inventory = read(evidence / 'inventory-proof.json'); prepared = read(evidence / 'prepared.json'); dispatch = read(evidence / 'dispatch.json')
    prior = Path(original['inventory_probe']).resolve()
    if not prior.is_relative_to(root): raise ValueError('Owned original inventory evidence required')
    output.mkdir(parents=True)
    result = dict(profile='bde_fresh_source_dump_confirmation_v1', passed=False, native_calls=0, full_delivery=False,
        evidence=str(evidence), fresh_read=str(fresh_path))
    try:
        if fingerprint(inventory) != fingerprint(read(prior / 'result.json')): raise ValueError('Retained inventory proof differs')
        result.update(verify_documents(original, native, inventory, fresh, prepared, dispatch))
        result['source_hashes_checked'] = 0
        for directory, document in ((evidence, original), (fresh_path, fresh), (prior, inventory)):
            for name, sha in document['source_manifest'].items():
                if Path(name).name != name or hashlib.sha256((directory / name).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived proof source changed: ' + name)
                result['source_hashes_checked'] += 1
        with service.live_lock():
            if endpoint_process(fresh['port']) != fresh['pid']: raise ValueError('Endpoint owner changed after fresh read')
            marker = Path(original['pending_record'])
            if marker != pending.pending_path(original['domain']): raise ValueError('Exact dump instance pending path required')
            verify_pending(read(marker), original['domain'], evidence, prepared)
            service.write_once(output / 'verified-original-state.json', result)
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_verified_original_state=True)
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'summary')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
