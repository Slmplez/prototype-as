"""Generate and independently decode one precisely changed private layout.

Only the retained own-bytes clone is edited. Live model/source/database changes
are forbidden; this helper does not grant production move or inverse support.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy
from bde_reference_leaf_noop_probe import run_handshake
from bde_fresh_serializer_dump_probe import SOURCES as DUMP_SOURCES
from bde_fresh_serializer_extract_probe import verify_extract, verify_archives

SOURCES = tuple(n for n in DUMP_SOURCES if n not in ('AscetFreshSerializerProbe.cs', 'bde_fresh_serializer_dump.st')) + (
    'AscetFreshLayoutProbe.cs', 'bde_fresh_serializer_layout_after.st', 'bde_fresh_serializer_extract_probe.py',
    'bde_fresh_serializer_dump_probe.py', 'bde_fresh_serializer_dump_confirm.py')


def validate_proof(proof, dump, inventory, dump_confirmation, confirmation):
    summary = verify_extract(proof['native'], dump, inventory, dump_confirmation, finish='continued_from' in proof)
    if (proof.get('passed') is not True or proof.get('profile') != 'bde_fresh_source_extract_experiment_v1'
            or type(proof.get('native_exit_code')) is not int or proof['native_exit_code'] != 0 or proof['wire']['errors']
            or proof.get('pending_retained_until_fresh_read') is not True
            or confirmation.get('profile') != 'bde_fresh_source_extract_confirmation_v1' or confirmation.get('passed') is not True
            or confirmation.get('pending_cleared_verified_original_state') is not True
            or confirmation.get('summary') != summary or confirmation.get('original_state_preserved') is not True
            or confirmation.get('complete_public_bookends_preserved') is not True
            or type(confirmation.get('native_calls')) is not int or confirmation['native_calls'] != 0
            or proof['domain']['process_epoch'] != proof['native']['process_epoch']
            or proof['domain']['database'] != proof['native']['database'] or proof['domain']['oid'] != proof['native']['component_oid']):
        raise ValueError('Confirmed exact native source extraction required before private layout generation')
    return summary


def validate_prepared(prepared, proof):
    fields = set(('profile component_oid workbench_index before graph_objects target_logic_id target_class '
        'before_position after_position private_field_writes persistent_write_calls full_delivery').split())
    native = proof['native']
    if (not isinstance(prepared, dict) or set(prepared) != fields
            or prepared['profile'] != 'isolated_private_layout_after_prepared_v1'
            or prepared['component_oid'] != native['component_oid']
            or type(prepared['workbench_index']) is not int or prepared['workbench_index'] != native['prepared']['workbench_index']
            or type(prepared['graph_objects']) is not int or prepared['graph_objects'] != native['actual']['loaded_objects']
            or prepared['target_class'] != 'SGOperatorGODB' or type(prepared['target_logic_id']) is not int
            or not 0 <= prepared['target_logic_id'] <= 2147483647
            or any(type(prepared[k]) is not int or prepared[k] != 0 for k in ('private_field_writes', 'persistent_write_calls'))
            or prepared['full_delivery'] is not False
            or validate(prepared['before'], component_oid=native['component_oid']) != native['actual']['after']):
        raise ValueError('Exact isolated zero-write private coordinate preparation required')
    a, b = prepared['before_position'], prepared['after_position']
    if (not isinstance(a, list) or not isinstance(b, list) or len(a) != 2 or len(b) != 2
            or any(type(v) is not int or abs(v) > 1000011 for v in a + b)
            or abs(a[0]) > 1000000 or abs(a[1]) > 1000000 or b != [a[0] + 11, a[1]]):
        raise ValueError('Only the exact x+11/y-unchanged private coordinate experiment is allowed')
    return prepared['before']


def verify_layout(native, proof):
    prior = proof['native']
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('layout_dispatched') is not True or native.get('write_dispatched') is not False
            or native.get('component_oid') != prior['component_oid']
            or native.get('process_epoch') != prior['process_epoch'] or native.get('database') != prior['database']
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in native):
        raise ValueError('Complete clean same-epoch private layout receipt required')
    original = validate_prepared(native['prepared'], proof); a = native['actual']; p = native['prepared']
    fields = set(('profile component_oid workbench_index before after target_logic_id target_class before_position after_position '
        'actual_diff payload_bytes dump_calls load_calls dumper_error loader_error decoded_objects changed_projection_equivalent '
        'private_source_restored original_graph_preserved original_config_preserved owner_records_preserved private_field_writes '
        'model_setters_called persistent_write_calls store_called commit_called production_inverse_authorized full_delivery').split())
    if (not isinstance(a, dict) or set(a) != fields or a['profile'] != 'isolated_private_layout_after_result_v1'
            or any(fingerprint(a[k]) != fingerprint(p[k]) or type(a[k]) != type(p[k]) for k in ('component_oid', 'workbench_index', 'target_logic_id',
                'target_class', 'before_position', 'after_position'))
            or any(type(a[k]) is not int or a[k] != 1 for k in ('dump_calls', 'load_calls'))
            or type(a['decoded_objects']) is not int or a['decoded_objects'] != p['graph_objects']
            or type(a['private_field_writes']) is not int or a['private_field_writes'] != 2
            or any(type(a[k]) is not int or a[k] != 0 for k in ('dumper_error', 'loader_error', 'model_setters_called', 'persistent_write_calls'))
            or any(a[k] is not True for k in ('changed_projection_equivalent', 'private_source_restored',
                'original_graph_preserved', 'original_config_preserved', 'owner_records_preserved'))
            or any(a[k] is not False for k in ('store_called', 'commit_called', 'production_inverse_authorized', 'full_delivery'))
            or validate(a['before'], component_oid=prior['component_oid']) != original
            or validate(a['after'], component_oid=prior['component_oid']) != original):
        raise ValueError('Exact changed private layout/decoded projection/restoration/no-live-write result required')
    diff = [dict(kind='private_source_coordinate', target_logic_id=p['target_logic_id'], field='position.x',
        before=p['before_position'][0], after=p['after_position'][0])]
    if fingerprint(a['actual_diff']) != fingerprint(diff): raise ValueError('Actual diff must report exactly the one private coordinate change')
    payload = a['payload_bytes']
    if (not isinstance(payload, list) or not 1 <= len(payload) <= 4194304
            or any(type(b) is not int or not 0 <= b <= 255 for b in payload)
            or payload == prior['actual']['payload_bytes']):
        raise ValueError('Complete changed native payload required')
    return dict(scope='private source only', actual_diff=diff, payload_size=len(payload),
        payload_sha256=hashlib.sha256(bytes(payload)).hexdigest(), dump_calls=1, load_calls=1,
        decoded_objects=a['decoded_objects'], changed_projection_equivalent=True, private_source_restored=True,
        original_state_preserved=True, persistent_write_calls=0, production_move_verified=False,
        production_inverse_authorized=False, full_delivery=False, independent_confirmation_required=True)


def main(source_payload=False):
    parser = argparse.ArgumentParser(description=__doc__)
    for name in (('layout' if source_payload else 'extraction'), 'confirmation', 'output'): parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args(); prior = (args.layout if source_payload else args.extraction).resolve(); confirmed = args.confirmation.resolve(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (prior, confirmed, output)) or output.exists(): raise ValueError('Owned proof and fresh output required')
    def read(path): return json.loads(path.read_text(encoding='utf-8'))
    proof = read(prior / 'result.json'); confirmation = read(confirmed / 'result.json')
    if source_payload:
        from bde_source_payload_probe import validate_proof as validate_source_proof, validate_prepared as prepare_source, verify_source_payload
        extracted = read(prior / 'extraction-proof.json')
        validate_source_proof(proof, extracted, confirmation)
    else:
        dump = read(prior / 'dump-proof.json'); inventory = read(prior / 'inventory-proof.json'); dc = read(prior / 'dump-confirmation.json')
        validate_proof(proof, dump, inventory, dc, confirmation)
    if Path(confirmation['evidence']).resolve() != prior: raise ValueError('Confirmation belongs to another extraction')
    verify_archives(prior, proof)
    native = proof['native']; port = proof['port']; pid = proof['pid']; component = proof['component']; index = native['prepared']['workbench_index']
    domain = dict(session=output.name, database=native['database'], process_epoch=native['process_epoch'], oid=native['component_oid'])
    pending.check(domain)
    if endpoint_process(port) != pid: raise ValueError('Exact existing endpoint required')
    output.mkdir(parents=True)
    names = SOURCES + (('AscetSourcePayloadProbe.cs', 'bde_source_payload_lifecycle.st', 'bde_persistent_owner_patch.st',
        'bde_source_payload_probe.py', 'bd_serialized_source_candidate.py', 'bd_persistent_owner_patch.py') if source_payload else ())
    inputs = [service.ROOT / 'scripts' / n for n in names] + [Path(__file__)]
    hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    for path in inputs: shutil.copyfile(path, output / path.name)
    service.write_once(output / ('layout-proof.json' if source_payload else 'extraction-proof.json'), proof)
    service.write_once(output / ('layout-confirmation.json' if source_payload else 'extraction-confirmation.json'), confirmation)
    if source_payload: service.write_once(output / 'extraction-proof.json', extracted)
    result = dict(profile='bde_source_payload_lifecycle_experiment_v1' if source_payload else 'bde_private_layout_after_experiment_v1', passed=False, domain=domain, port=port, pid=pid,
        component=component, extraction=str(prior), confirmation=str(confirmed), source_manifest=hashes,
        ascet_started_or_restarted=False, automatic_retry=False, full_delivery=False)
    def save(): (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save(); marker = None
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        entry = 'AscetSourcePayloadProbe' if source_payload else 'AscetFreshLayoutProbe'
        shutil.copyfile(dll, output / dll.name); binary = output / (entry + '.exe')
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:' + entry, '/r:' + str(dll),
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(p) + ',' + p.name for p in inputs if p.suffix == '.st'],
            *[str(p) for p in inputs if p.suffix == '.cs']], capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise ValueError('Private layout bridge build failed')
        result['bridge_compile_passed'] = True
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port) != pid: raise ValueError('Endpoint changed before layout research')
            def authorize():
                nonlocal marker
                frame = read(output / 'prepared.json')
                if (set(frame) != {'process_epoch', 'database', 'component', 'component_oid', 'prepared'}
                        or frame['process_epoch'] != domain['process_epoch'] or frame['database'] != domain['database']
                        or frame['component_oid'] != domain['oid'] or frame['component'] != component):
                    raise ValueError('Exact durable original private layout preparation required')
                if source_payload: prepare_source(frame['prepared'], proof, extracted)
                else: validate_prepared(frame['prepared'], proof)
                marker = pending.begin(domain, 'research_source_payload_lifecycle_once' if source_payload else 'research_private_layout_after_once', 'edit_' + fingerprint(domain),
                    context=dict(evidence=str(output), original_material=str(output / 'prepared.json'), original_sha256=fingerprint(frame)))
                result.update(pending_record=str(marker), parent_validated_original_before=True); save()
            try:
                with proxy(upstream_port=port) as wire:
                    environment = {k: v for k, v in os.environ.items() if not k.startswith('ASCET_BD_')}
                    environment.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_NATIVE_TRACE='1')
                    result['native_exit_code'] = run_handshake([str(binary), str(pid), domain['process_epoch'], domain['database'],
                        component, str(output), str(index)], environment=environment, output=output, authorize=authorize,
                        private_layout=not source_payload, source_payload=source_payload)
            finally:
                if 'wire' in locals(): result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
            if (output / 'native.json').exists():
                result['native'] = read(output / 'native.json'); observed = result['native']
                if observed.get('payload_lifecycle_dispatched' if source_payload else 'layout_dispatched') is False and not (output / 'dispatch.json').exists():
                    if marker is not None: pending.confirmed(marker)
                    result['no_layout_dispatch_confirmed'] = True
                else:
                    result['summary'] = verify_source_payload(observed, proof, extracted) if source_payload else verify_layout(observed, proof)
                    if result['native_exit_code'] or wire['errors'] or marker is None: raise ValueError('Layout host/wire incomplete')
                    result['pending_retained_until_fresh_read'] = True
            result['sources_match'] = hashes == {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
            result['passed'] = bool(result.get('pending_retained_until_fresh_read') and result['sources_match'])
            if not result['passed']: raise ValueError(result.get('native', {}).get('error', 'No complete private layout reply'))
    except Exception as error: result['error'] = str(error)
    finally: save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
