"""Confirm private extraction after independent unchanged full owner reads.

No native call. Clear only the exact original bound pending, including a
documented finish that used the existing load without replaying it.
"""
import argparse
import json
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bde_fresh_serializer_dump_confirm import verify_documents as verify_dump_documents
from bde_fresh_serializer_extract_probe import verify_extract, verify_archives, verify_pending, validate_continuation


def verify_documents(original, native, dump, inventory, dump_confirmation, fresh, prepared, dispatch):
    domain = original['domain']; finish = 'continued_from' in original
    if (original.get('profile') != 'bde_fresh_source_extract_experiment_v1' or original.get('passed') is not True
            or type(original.get('native_exit_code')) is not int or original['native_exit_code'] != 0
            or original.get('pending_retained_until_fresh_read') is not True or original['wire']['errors']
            or original['native'] != native
            or domain['process_epoch'] != dump['native']['process_epoch']
            or domain['database'] != dump['native']['database'] or domain['oid'] != dump['native']['component_oid']
            or fresh['pid'] != original['pid'] or fresh['port'] != original['port']
            or (finish and original.get('original_load_replayed') is not False)):
        raise ValueError('Complete bound same-instance extraction receipt required')
    summary = verify_extract(native, dump, inventory, dump_confirmation, finish=finish)
    # Reuse the full raw/public double-read contract against the original dump.
    verified_original = verify_dump_documents(dump, dump['native'], inventory, fresh,
        dict(process_epoch=domain['process_epoch'], database=domain['database'], component=original['component'],
            component_oid=domain['oid'], prepared=dump['native']['prepared']),
        dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=native['prepared']['workbench_index'],
            command='isolated_fresh_source_dump_once', automatic_retry=False))
    expected_prepared = dict(process_epoch=domain['process_epoch'], database=domain['database'], component=original['component'],
        component_oid=domain['oid'], prepared=native['prepared'])
    expected_dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'],
        workbench_index=native['prepared']['workbench_index'],
        command='isolated_fresh_source_finish_once' if finish else 'isolated_fresh_source_extract_once', automatic_retry=False)
    if fingerprint(prepared) != fingerprint(expected_prepared) or fingerprint(dispatch) != fingerprint(expected_dispatch):
        raise ValueError('Exact durable extraction preparation and explicit dispatch required')
    return dict(summary=summary, original_state_preserved=verified_original['original_state_preserved'],
        complete_public_bookends_preserved=True, full_owner_fresh_reads=2, full_reference_fresh_reads=2,
        native_calls=0, load_replayed=False, old_epoch_rebound=False, production_inverse_authorized=False, full_delivery=False)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('evidence', 'fresh-read', 'output'): parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args(); evidence = args.evidence.resolve(); fresh_path = args.fresh_read.resolve(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, fresh_path, output)) or output.exists():
        raise ValueError('Owned evidence and fresh output required')
    def read(path): return json.loads(path.read_text(encoding='utf-8'))
    original = read(evidence / 'result.json'); native = read(evidence / 'native.json'); fresh = read(fresh_path / 'result.json')
    dump = read(evidence / 'dump-proof.json'); inventory = read(evidence / 'inventory-proof.json')
    dump_confirmation = read(evidence / 'dump-confirmation.json')
    output.mkdir(parents=True)
    result = dict(profile='bde_fresh_source_extract_confirmation_v1', passed=False, native_calls=0, full_delivery=False,
        evidence=str(evidence), fresh_read=str(fresh_path))
    try:
        result.update(verify_documents(original, native, dump, inventory, dump_confirmation, fresh,
            read(evidence / 'prepared.json'), read(evidence / 'dispatch.json')))
        dump_path = Path(original['dump_probe']).resolve(); confirmation_path = Path(original['dump_confirmation']).resolve()
        if (not dump_path.is_relative_to(root) or not confirmation_path.is_relative_to(root)
                or read(dump_path / 'result.json') != dump or read(confirmation_path / 'result.json') != dump_confirmation):
            raise ValueError('Exact original dump/confirmation documents required')
        result['source_hashes_checked'] = 0
        for directory, doc in ((evidence, original), (fresh_path, fresh), (dump_path, dump)):
            verify_archives(directory, doc); result['source_hashes_checked'] += len(doc['source_manifest'])
        pending_evidence = evidence; pending_frame = read(evidence / 'prepared.json')
        if 'continued_from' in original:
            pending_evidence = Path(original['continued_from']).resolve(); before_fresh = Path(original['continuation_fresh_read']).resolve()
            if not pending_evidence.is_relative_to(root) or not before_fresh.is_relative_to(root): raise ValueError('Owned continuation proof required')
            failed = read(pending_evidence / 'result.json'); f = read(before_fresh / 'result.json')
            if fingerprint(validate_continuation(failed, dump, inventory, dump_confirmation, f)) != fingerprint(original['domain']):
                raise ValueError('Original continuation pending domain differs')
            verify_archives(pending_evidence, failed); verify_archives(before_fresh, f)
            pending_frame = read(pending_evidence / 'prepared.json')
        with service.live_lock():
            if endpoint_process(fresh['port']) != fresh['pid']: raise ValueError('Endpoint changed after fresh read')
            marker = Path(original['pending_record'])
            if marker != pending.pending_path(original['domain']): raise ValueError('Exact extraction pending path required')
            verify_pending(read(marker), original['domain'], pending_evidence, pending_frame)
            service.write_once(output / 'verified-original-state.json', result)
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_verified_original_state=True)
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'summary')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
