"""Read finite original rows from a retained v5 preparation; no rescan or write."""
import argparse
import json
import os
from pathlib import Path
import time

import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def main():
    p = argparse.ArgumentParser(description=__doc__)
    for field in ('manifest', 'preparation', 'output'):
        p.add_argument('--' + field, type=Path, required=True)
    a = p.parse_args()
    manifest, _, epoch = live_manifest(a.manifest)
    original = json.loads(a.preparation.read_text(encoding='utf-8'))
    if original.get('passed') is not True or original['process_epoch'] != epoch:
        raise ValueError('Exact original live v5 preparation required')
    prepared = original['prepared_resources'][0]
    if prepared['profile'] != 'native_commit_prepare_v5':
        raise ValueError('Original same-dispatch reference baseline required')
    folder = a.preparation.parent
    report = json.loads((folder/'reference-report.json').read_text(encoding='utf-8'))
    audit = json.loads((folder/'audit.json').read_text(encoding='utf-8'))
    owner = audit['original_capture']['owner_key']
    old = audit['original_reciprocal_capture']
    targets = [row['global_id'] for row in old['records']]
    from bd_persistent_references import decode
    from bd_commit_reference_lookup import validate, record_rows
    from bd_commit_reference_write_set import plan, check_inbound
    # A proposed new target is selected solely from the original frozen baseline.
    # This tests evidence/plan composition, not a real new model connection.
    existing = {(tuple(r['global_id']), r['attribute']): r for r in report['records']}
    candidate = next(r for r in report['records'] if r['attribute'] == 'DBReferencedByList'
                     and r['global_id'] not in targets and r['global_id'] != owner
                     and r['declared_blob_size'] <= 21 * 4096
                     and all(r['raw_bytes'][i] == 1 for i in range(64, 64+r['declared_blob_size'], 21))
                     and all(r['raw_bytes'][i+1:i+21] != owner for i in range(64, 64+r['declared_blob_size'], 21)))
    requests = [dict(global_id=key, attribute='DBReferencedByList') for key in targets + [candidate['global_id']]]
    if len(requests) >= 16:
        raise ValueError('This test requires room for one unknown-key negative observation')
    unknown = dict(global_id=[0]*20, attribute='DBReferencedByList')
    if (tuple(unknown['global_id']), unknown['attribute']) in existing:
        raise ValueError('Chosen unknown-key control was observed in original material')
    a.output.mkdir(parents=True, exist_ok=False)
    result = dict(passed=False, native_token=original['native_token'], process_epoch=epoch,
        process_started=False, process_restarted=False, new_scan_performed=False,
        current_reference_file_checked=False, model_edit_verified=False, full_delivery=False,
        write_authorized=False, inverse_authorized=False,
        scope='finite original lookup and offline proposed added-target reference plan only')
    service.write_once(a.output/'intent.json', result)
    started = time.perf_counter()
    try:
        binary = compile_bridge()
        sources = source_manifest()
        sources[binary.relative_to(service.ROOT).as_posix()] = service.digest(binary.read_bytes())
        service.write_once(a.output/'source-manifest.json', sources)
        with service.live_lock(), proxy(manifest['port']) as wire:
            env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'], environment=env, timeout=50) as adapter:
                before = adapter.observe(original['domain'], [])
                command = dict(cmd='commit_reference_baseline_lookup', token=original['native_token'], requests=requests+[unknown])
                service.write_once(a.output/'request.json', command)
                traffic_before = wire['response'].result()
                lookup_start = time.perf_counter()
                response = adapter._exchange(command)
                result['lookup_ms'] = (time.perf_counter()-lookup_start)*1000
                traffic_after = wire['response'].result()
                result['lookup_response_frames'] = traffic_after['frames']-traffic_before['frames']
                result['lookup_response_bytes'] = traffic_after['bytes']-traffic_before['bytes']
                service.write_once(a.output/'response.json', response)
                validate(response, prepared=prepared, requests=requests+[unknown])
                for row in response['rows']:
                    expected = existing.get((tuple(row['global_id']),row['attribute']))
                    if row['record'] != expected:
                        raise ValueError('Finite selected record differs from original full exported bytes')
                try:
                    record_rows(response, prepared=prepared, requests=requests+[unknown])
                except ValueError:
                    result['not_observed_cannot_be_used_as_before'] = True
                else:
                    raise ValueError('Unobserved key was incorrectly accepted as original absence')
                # A second fixed selection excludes the negative control. Both are
                # retained reads, never prepare, scan or current record capture.
                complete = adapter._exchange(dict(command, requests=requests))
                service.write_once(a.output/'positive-response.json', complete)
                converted = record_rows(complete, prepared=prepared, requests=requests)
                new_entries = decode(old['outgoing_record'], owner)['entries'] + [dict(tag=1,global_id=candidate['global_id'])]
                write_set = plan(owner, old['outgoing_record'], new_entries)
                inbound = check_inbound(write_set, converted)
                service.write_once(a.output/'proposed-reference-plan.json', dict(outgoing=write_set,inbound=inbound))
                if len(inbound['patches']) != 1 or inbound['patches'][0]['operation'] != 'append_owner':
                    raise ValueError('One proposed added-target owner patch required')
                result['existing_original_targets'] = len(targets)
                result['new_target_original_record_selected'] = True
                result['proposed_inbound_patch_count'] = len(inbound['patches'])
                result['all_selected_rows_match_full_original_baseline'] = True
                result['typed_graph_unchanged'] = adapter.observe(original['domain'], []) == before
                result['native_commands'] = adapter.commands
            result['traffic'] = dict(request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        result['sources_unchanged'] = all(service.digest((service.ROOT/name).read_bytes()) == h for name,h in sources.items())
        result['process_epoch_unchanged'] = live_manifest(a.manifest)[2] == epoch
        result['passed'] = result['typed_graph_unchanged'] and result['sources_unchanged'] and result['process_epoch_unchanged']
    except Exception as error:
        result['error'] = repr(error)
    result['wall_ms'] = (time.perf_counter()-started)*1000
    service.write_once(a.output/'result.json', result)
    print(json.dumps({k:result.get(k) for k in ('passed','error','lookup_ms','lookup_response_bytes','typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
