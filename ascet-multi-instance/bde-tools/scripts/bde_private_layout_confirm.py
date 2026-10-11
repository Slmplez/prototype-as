"""Confirm only this private layout pending using full independent originals."""
import argparse
import json
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bde_fresh_serializer_dump_confirm import verify_documents as verify_dump_documents
from bde_fresh_serializer_extract_probe import verify_archives
from bde_private_layout_probe import verify_layout


def verify_documents(original, native, extracted, dump, inventory, fresh, prepared, dispatch, *, source_payload=False, source_extraction=None):
    domain = original['domain']
    if (original.get('profile') != ('bde_source_payload_lifecycle_experiment_v1' if source_payload else 'bde_private_layout_after_experiment_v1') or original.get('passed') is not True
            or type(original.get('native_exit_code')) is not int or original['native_exit_code'] != 0 or original['wire']['errors']
            or original.get('pending_retained_until_fresh_read') is not True or original['native'] != native
            or domain['oid'] != native['component_oid'] or domain['process_epoch'] != native['process_epoch']
            or domain['database'] != native['database'] or fresh['pid'] != original['pid'] or fresh['port'] != original['port']):
        raise ValueError('Exact completed bound private layout receipt required')
    if source_payload:
        from bde_source_payload_probe import verify_source_payload
        summary = verify_source_payload(native, extracted, source_extraction)
    else: summary = verify_layout(native, extracted)
    before = verify_dump_documents(dump, dump['native'], inventory, fresh,
        dict(process_epoch=domain['process_epoch'], database=domain['database'], component=original['component'],
            component_oid=domain['oid'], prepared=dump['native']['prepared']),
        dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=native['prepared']['workbench_index'],
            command='isolated_fresh_source_dump_once', automatic_retry=False))
    frame = dict(process_epoch=domain['process_epoch'], database=domain['database'], component=original['component'],
        component_oid=domain['oid'], prepared=native['prepared'])
    sent = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=native['prepared']['workbench_index'],
        command='isolated_source_payload_lifecycle_once' if source_payload else 'isolated_private_layout_after_once', automatic_retry=False)
    if fingerprint(prepared) != fingerprint(frame) or fingerprint(dispatch) != fingerprint(sent):
        raise ValueError('Original durable coordinate preparation and dispatch required')
    return dict(summary=summary, original_state_preserved=before['original_state_preserved'],
        full_owner_fresh_reads=2, full_reference_fresh_reads=2, complete_public_bookends_preserved=True,
        native_calls=0, private_edit_replayed=False, production_inverse_authorized=False, full_delivery=False)


def verify_pending(row, domain, evidence, prepared, *, source_payload=False):
    expected = dict(domain=domain, command='research_source_payload_lifecycle_once' if source_payload else 'research_private_layout_after_once', native_token='edit_' + fingerprint(domain),
        automatic_retry=False, managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'),
            original_sha256=fingerprint(prepared)))
    if fingerprint(row) != fingerprint(expected): raise ValueError('Exact original private layout pending required')


def main(source_payload=False):
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('evidence', 'fresh-read', 'output'): parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args(); evidence = args.evidence.resolve(); fresh_path = args.fresh_read.resolve(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (evidence, fresh_path, output)) or output.exists(): raise ValueError('Owned evidence and fresh output required')
    def read(path): return json.loads(path.read_text(encoding='utf-8'))
    original = read(evidence / 'result.json'); native = read(evidence / 'native.json'); fresh = read(fresh_path / 'result.json')
    extracted = read(evidence / ('layout-proof.json' if source_payload else 'extraction-proof.json')); prior = Path(original['extraction']).resolve()
    if not prior.is_relative_to(root) or read(prior / 'result.json') != extracted: raise ValueError('Exact original extraction proof required')
    source_extraction = None; archive = prior
    if source_payload:
        from bde_source_payload_probe import validate_proof
        source_extraction = read(evidence / 'extraction-proof.json')
        validate_proof(extracted, source_extraction, read(evidence / 'layout-confirmation.json'))
        archive = Path(extracted['extraction']).resolve()
        if not archive.is_relative_to(root) or read(archive / 'result.json') != source_extraction: raise ValueError('Exact original source extraction required')
    dump = read(archive / 'dump-proof.json'); inventory = read(archive / 'inventory-proof.json')
    output.mkdir(parents=True)
    result = dict(profile='bde_source_payload_lifecycle_confirmation_v1' if source_payload else 'bde_private_layout_after_confirmation_v1', passed=False, native_calls=0, full_delivery=False,
        evidence=str(evidence), fresh_read=str(fresh_path))
    try:
        frame = read(evidence / 'prepared.json')
        result.update(verify_documents(original, native, extracted, dump, inventory, fresh, frame, read(evidence / 'dispatch.json'),
            source_payload=source_payload, source_extraction=source_extraction))
        result['source_hashes_checked'] = 0
        for directory, doc in ((evidence, original), (prior, extracted), (fresh_path, fresh)):
            verify_archives(directory, doc); result['source_hashes_checked'] += len(doc['source_manifest'])
        with service.live_lock():
            if endpoint_process(fresh['port']) != fresh['pid']: raise ValueError('Endpoint changed after full read')
            marker = Path(original['pending_record'])
            if marker != pending.pending_path(original['domain']): raise ValueError('Original pending path required')
            verify_pending(read(marker), original['domain'], evidence, frame, source_payload=source_payload)
            service.write_once(output / 'verified-original-state.json', result)
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_verified_original_state=True)
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'summary')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
