"""One private load of a confirmed workbench's own native source dump.

Research only. No external payload, arbitrary Smalltalk, native replay, model
setter, backend installation or record writer. Unknown results retain pending.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy
from bde_reference_leaf_noop_probe import run_handshake
from bde_fresh_serializer_dump_probe import SOURCES as DUMP_SOURCES, verify_dump
from bde_fresh_serializer_dump_confirm import verify_documents as verify_dump_documents

SOURCES = tuple(n for n in DUMP_SOURCES if n not in ('AscetFreshSerializerProbe.cs', 'bde_fresh_serializer_dump.st')) + (
    'AscetFreshExtractionProbe.cs', 'bde_fresh_serializer_extract.st',
    'bde_fresh_serializer_dump_probe.py', 'bde_fresh_serializer_dump_confirm.py')


def validate_confirmed_dump(proof, inventory, confirmation):
    summary = verify_dump(proof['native'], inventory)
    if (proof.get('profile') != 'bde_fresh_source_dump_experiment_v1' or proof.get('passed') is not True
            or type(proof.get('native_exit_code')) is not int or proof['native_exit_code'] != 0
            or proof.get('pending_retained_until_fresh_read') is not True or proof['wire']['errors']
            or proof['domain']['process_epoch'] != proof['native']['process_epoch']
            or proof['domain']['database'] != proof['native']['database']
            or proof['domain']['oid'] != proof['native']['component_oid']
            or confirmation.get('profile') != 'bde_fresh_source_dump_confirmation_v1'
            or confirmation.get('passed') is not True
            or confirmation.get('pending_cleared_verified_original_state') is not True
            or confirmation.get('original_state_preserved') is not True
            or confirmation.get('complete_public_bookends_preserved') is not True
            or type(confirmation.get('native_calls')) is not int or confirmation['native_calls'] != 0
            or confirmation.get('summary') != summary):
        raise ValueError('Successfully confirmed same-epoch native dump required')
    return summary


def validate_prepared(prepared, proof, inventory, confirmation, *, finish=False):
    validate_confirmed_dump(proof, inventory, confirmation)
    prior = proof['native']; fields = set(('profile component_oid workbench_index before payload_bytes '
        'graph_objects load_calls finish_existing_load persistent_write_calls store_called commit_called full_delivery').split())
    if (not isinstance(prepared, dict) or set(prepared) != fields
            or prepared['profile'] != 'isolated_fresh_source_extract_prepared_v1'
            or prepared['component_oid'] != prior['component_oid']
            or type(prepared['workbench_index']) is not int
            or prepared['workbench_index'] != prior['prepared']['workbench_index']
            or type(prepared['graph_objects']) is not int
            or prepared['graph_objects'] != prior['prepared']['graph_objects']
            or prepared['payload_bytes'] != prior['actual']['payload_bytes']
            or type(prepared['load_calls']) is not int or prepared['load_calls'] != int(finish)
            or prepared['finish_existing_load'] is not finish
            or type(prepared['persistent_write_calls']) is not int or prepared['persistent_write_calls'] != 0
            or any(prepared[k] is not False for k in ('store_called', 'commit_called', 'full_delivery'))
            or validate(prepared['before'], component_oid=prior['component_oid']) != prior['actual']['after']):
        raise ValueError('Exact confirmed retained dump, graph and original records required')
    # Python bool == int: do not allow boolean octets to pass equality.
    if any(type(b) is not int or not 0 <= b <= 255 for b in prepared['payload_bytes']):
        raise ValueError('Exact native payload octets required')
    return prepared['before']


def verify_extract(native, proof, inventory, confirmation, *, finish=False):
    prior = proof['native']
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('extraction_dispatched') is not True or native.get('write_dispatched') is not False
            or native.get('component_oid') != prior['component_oid']
            or native.get('process_epoch') != prior['process_epoch'] or native.get('database') != prior['database']
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in native):
        raise ValueError('Complete clean same-epoch extraction receipt required')
    original = validate_prepared(native['prepared'], proof, inventory, confirmation, finish=finish); actual = native['actual']
    fields = set(('profile component_oid workbench_index before after payload_bytes load_calls loader_error '
        'loaded_class loaded_objects source_projection_equivalent original_aliases extracted_references '
        'load_calls_this_dispatch finish_existing_load extracted_proxy_objects '
        'original_graph_preserved original_config_preserved owner_records_preserved payload_preserved '
        'loader_has_no_backend persistent_write_calls model_setters_called store_called commit_called '
        'automatic_retry production_inverse_authorized cross_module_supported full_delivery').split())
    if (not isinstance(actual, dict) or set(actual) != fields
            or actual['profile'] != 'isolated_fresh_source_extract_result_v1'
            or actual['component_oid'] != prior['component_oid']
            or type(actual['workbench_index']) is not int or actual['workbench_index'] != prior['prepared']['workbench_index']
            or type(actual['load_calls']) is not int or actual['load_calls'] != 1
            or type(actual['load_calls_this_dispatch']) is not int or actual['load_calls_this_dispatch'] != int(not finish)
            or actual['finish_existing_load'] is not finish
            or type(actual['extracted_proxy_objects']) is not int or actual['extracted_proxy_objects'] != 1
            or actual['loaded_class'] != 'SGTopGraphicsBlockDB'
            or type(actual['loaded_objects']) is not int or actual['loaded_objects'] != native['prepared']['graph_objects']
            or any(type(actual[k]) is not int or actual[k] != 0 for k in ('loader_error', 'original_aliases',
                'extracted_references', 'persistent_write_calls', 'model_setters_called'))
            or any(actual[k] is not True for k in ('source_projection_equivalent', 'original_graph_preserved',
                'original_config_preserved', 'owner_records_preserved', 'payload_preserved', 'loader_has_no_backend'))
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'automatic_retry',
                'production_inverse_authorized', 'cross_module_supported', 'full_delivery'))
            or actual['payload_bytes'] != prior['actual']['payload_bytes']
            or any(type(b) is not int for b in actual['payload_bytes'])
            or validate(actual['before'], component_oid=prior['component_oid']) != original
            or validate(actual['after'], component_oid=prior['component_oid']) != original):
        raise ValueError('Successful own-bytes equivalent nonaliasing no-write load required')
    return dict(load_calls=1, load_calls_this_dispatch=int(not finish), loader_error=0, loaded_objects=actual['loaded_objects'],
        payload_sha256=hashlib.sha256(bytes(actual['payload_bytes'])).hexdigest(), source_projection_equivalent=True,
        original_aliases=0, extracted_proxy_objects=1, extracted_references=0, original_state_preserved=True,
        persistent_write_calls=0, cross_module_supported=False, production_inverse_authorized=False,
        full_delivery=False, independent_confirmation_required=True)


def verify_archives(directory, document):
    for name, sha in document['source_manifest'].items():
        if Path(name).name != name or hashlib.sha256((directory / name).read_bytes()).hexdigest() != sha:
            raise ValueError('Archived source changed: ' + name)


def validate_continuation(failed, proof, inventory, confirmation, fresh):
    """Only finish the known self-proxy guard failure; never invoke load again."""
    old = failed.get('native', {}); prior = proof['native']; image = prior['actual']['after']
    if (failed.get('profile') != 'bde_fresh_source_extract_experiment_v1' or failed.get('passed') is not False
            or failed.get('parent_validated_original_before') is not True
            or type(failed.get('native_exit_code')) is not int or failed['native_exit_code'] != 0
            or failed['wire']['errors'] or old.get('complete_reply_received') is not True
            or old.get('extraction_dispatched') is not True or old.get('write_dispatched') is not False
            or old.get('actual') != 'BDE_FRESH_EXTRACT_EXECUTION_ERROR: Boundary-free dump unexpectedly extracted DB proxies'
            or any(type(old.get(k)) is not int or old[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in old
            or old['process_epoch'] != prior['process_epoch'] or old['database'] != prior['database']
            or old['component_oid'] != prior['component_oid']
            or failed['pid'] != proof['pid'] or failed['port'] != proof['port']
            or failed['domain']['process_epoch'] != prior['process_epoch']
            or failed['domain']['database'] != prior['database'] or failed['domain']['oid'] != prior['component_oid']):
        raise ValueError('Exact completed self-proxy guard refusal required; unknown loads cannot be resumed')
    # Old preparation schema predates the explicit finish mode. Check all fields,
    # not a tolerant version fallback for arbitrary failed preparations.
    old_prepared = old['prepared']
    if 'finish_existing_load' in old_prepared: raise ValueError('Only original one-load guard failure may be finished')
    validate_prepared(dict(old_prepared, finish_existing_load=False), proof, inventory, confirmation)
    from bd_module_persistent_references import validate as validate_refs
    read = fresh['native']['module_read']
    if (fresh.get('passed') is not True or fresh.get('persistent_owner_records_stable') is not True
            or fresh.get('persistent_complete_capture_verified') is not True
            or type(fresh.get('native_exit_code')) is not int or fresh['native_exit_code'] != 0 or fresh['wire']['errors']
            or fresh['pid'] != proof['pid'] or fresh['port'] != proof['port']
            or fresh['native']['process_epoch'] != prior['process_epoch'] or fresh['native']['database'] != prior['database']
            or read['component_oid'] != prior['component_oid'] or read['component'] != failed['component']
            or any(type(fresh['native'].get(k)) is not int or fresh['native'][k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in fresh['native']
            or len(read['owner_observations']) != 2 or len(read['persistent_observations']) != 2
            or any(validate(x, component_oid=prior['component_oid']) != image for x in read['owner_observations'])
            or any(validate_refs(x, component_oid=prior['component_oid']) != image['references'] for x in read['persistent_observations'])
            or fingerprint(read['observations']) != fingerprint(inventory['native']['module_read']['observations'])):
        raise ValueError('Independent unchanged full owner/reference/public double read required before finishing')
    return failed['domain']


def verify_pending(row, domain, evidence, prepared):
    expected = dict(domain=domain, command='research_fresh_source_extract_once', native_token='edit_' + fingerprint(domain),
        automatic_retry=False, managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'),
            original_sha256=fingerprint(prepared)))
    if fingerprint(row) != fingerprint(expected): raise ValueError('Exact original extraction pending required')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('dump-probe', 'dump-confirmation', 'output'):
        parser.add_argument('--' + name, type=Path, required=True)
    parser.add_argument('--continue-from', type=Path, help='Finish only the retained successful load from the known self-proxy guard failure; does not load again')
    parser.add_argument('--continuation-fresh-read', type=Path)
    args = parser.parse_args(); prior = args.dump_probe.resolve(); confirmed = args.dump_confirmation.resolve(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(root) for p in (prior, confirmed, output)) or output.exists():
        raise ValueError('Owned successful dump/confirmation and fresh output required')
    def read(path): return json.loads(path.read_text(encoding='utf-8'))
    proof = read(prior / 'result.json'); inventory = read(prior / 'inventory-proof.json'); confirmation = read(confirmed / 'result.json')
    validate_confirmed_dump(proof, inventory, confirmation)
    fresh_path = Path(confirmation['fresh_read']).resolve()
    if not fresh_path.is_relative_to(root) or Path(confirmation['evidence']).resolve() != prior:
        raise ValueError('Exact owned independent dump confirmation required')
    fresh = read(fresh_path / 'result.json')
    verify_dump_documents(proof, read(prior / 'native.json'), inventory, fresh, read(prior / 'prepared.json'), read(prior / 'dispatch.json'))
    verify_archives(prior, proof); verify_archives(fresh_path, fresh)
    inventory_path = Path(proof['inventory_probe']).resolve()
    if not inventory_path.is_relative_to(root) or read(inventory_path / 'result.json') != inventory:
        raise ValueError('Original inventory proof required')
    verify_archives(inventory_path, inventory)
    native = proof['native']; component = inventory['native']['module_read']['component']; index = native['prepared']['workbench_index']
    if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component): raise ValueError('Isolated Trial required')
    domain = dict(session=output.name, database=native['database'], process_epoch=native['process_epoch'], oid=native['component_oid'])
    port = proof['port']; pid = proof['pid']; continuation = args.continue_from.resolve() if args.continue_from else None
    if bool(continuation) != bool(args.continuation_fresh_read): raise ValueError('Continuation needs the independent fresh read')
    if continuation:
        continuation_fresh = args.continuation_fresh_read.resolve()
        if not continuation.is_relative_to(root) or not continuation_fresh.is_relative_to(root): raise ValueError('Owned continuation evidence required')
        failed = read(continuation / 'result.json'); fresh_continue = read(continuation_fresh / 'result.json')
        if read(continuation / 'dump-proof.json') != proof or read(continuation / 'inventory-proof.json') != inventory:
            raise ValueError('Continuation belongs to another dump')
        domain = validate_continuation(failed, proof, inventory, confirmation, fresh_continue)
        verify_archives(continuation, failed); verify_archives(continuation_fresh, fresh_continue)
        old_frame = read(continuation / 'prepared.json')
        if old_frame != dict(process_epoch=domain['process_epoch'], database=domain['database'], component=component,
                component_oid=domain['oid'], prepared=failed['native']['prepared']): raise ValueError('Original durable failure preparation differs')
        old_dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], workbench_index=index,
            command='isolated_fresh_source_extract_once', automatic_retry=False)
        if read(continuation / 'dispatch.json') != old_dispatch: raise ValueError('Original one-load dispatch required')
        marker_path = pending.pending_path(domain)
        if str(marker_path) != failed['pending_record']: raise ValueError('Original pending path differs')
        pending.check_restoration(domain); verify_pending(read(marker_path), domain, continuation, old_frame)
    else: pending.check(domain)
    if endpoint_process(port) != pid: raise ValueError('Endpoint changed')
    output.mkdir(parents=True)
    inputs = [service.ROOT / 'scripts' / n for n in SOURCES] + [Path(__file__)]
    hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    for path in inputs: shutil.copyfile(path, output / path.name)
    for name, doc in (('dump-proof', proof), ('inventory-proof', inventory), ('dump-confirmation', confirmation)):
        service.write_once(output / (name + '.json'), doc)
    result = dict(profile='bde_fresh_source_extract_experiment_v1', passed=False, domain=domain, port=port, pid=pid,
        component=component, dump_probe=str(prior), dump_confirmation=str(confirmed), source_manifest=hashes,
        ascet_started_or_restarted=False, automatic_retry=False, full_delivery=False)
    if continuation:
        result.update(continued_from=str(continuation), continuation_fresh_read=str(continuation_fresh),
            original_load_replayed=False, pending_record=str(marker_path))
    def save(): (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save(); marker = None
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copyfile(dll, output / dll.name); binary = output / 'AscetFreshExtractionProbe.exe'
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetFreshExtractionProbe',
            '/r:' + str(dll), '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(p) + ',' + p.name for p in inputs if p.suffix == '.st'],
            *[str(p) for p in inputs if p.suffix == '.cs']], capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise ValueError('Extraction bridge build failed')
        result['bridge_compile_passed'] = True
        with service.live_lock():
            if continuation:
                pending.check_restoration(domain); verify_pending(read(marker_path), domain, continuation, old_frame)
            else: pending.check(domain)
            if endpoint_process(port) != pid: raise ValueError('Endpoint changed before probe')
            def authorize():
                nonlocal marker
                frame = read(output / 'prepared.json')
                if (set(frame) != {'process_epoch', 'database', 'component', 'component_oid', 'prepared'}
                        or frame['process_epoch'] != domain['process_epoch'] or frame['database'] != domain['database']
                        or frame['component_oid'] != domain['oid'] or frame['component'] != component):
                    raise ValueError('Exact same-instance extraction preparation required')
                validate_prepared(frame['prepared'], proof, inventory, confirmation, finish=bool(continuation))
                if continuation:
                    verify_pending(read(marker_path), domain, continuation, old_frame); marker = marker_path
                else:
                    marker = pending.begin(domain, 'research_fresh_source_extract_once', 'edit_' + fingerprint(domain),
                        context=dict(evidence=str(output), original_material=str(output / 'prepared.json'), original_sha256=fingerprint(frame)))
                result.update(pending_record=str(marker), parent_validated_original_before=True); save()
            try:
                with proxy(upstream_port=port) as wire:
                    environment = {k: v for k, v in os.environ.items() if not k.startswith('ASCET_BD_')}
                    environment.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_NATIVE_TRACE='1')
                    result['native_exit_code'] = run_handshake([str(binary), str(pid), domain['process_epoch'], domain['database'], component,
                        str(output), str(index)] + (['--finish-existing-load'] if continuation else []), environment=environment,
                        output=output, authorize=authorize, serializer_extract=not bool(continuation), serializer_finish=bool(continuation))
            finally:
                if 'wire' in locals():
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
            if (output / 'native.json').exists():
                result['native'] = read(output / 'native.json')
                observed = result['native']
                if observed.get('extraction_dispatched') is False and not (output / 'dispatch.json').exists():
                    if marker is not None and not continuation: pending.confirmed(marker)
                    result['no_extract_dispatch_confirmed'] = True
                else:
                    result['summary'] = verify_extract(observed, proof, inventory, confirmation, finish=bool(continuation))
                    if result['native_exit_code'] or wire['errors'] or marker is None: raise ValueError('Extraction host/wire incomplete')
                    result['pending_retained_until_fresh_read'] = True
            result['sources_match'] = hashes == {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
            result['passed'] = bool(result.get('pending_retained_until_fresh_read') and result['sources_match'])
            if not result['passed']: raise ValueError(result.get('native', {}).get('error', 'No complete extraction'))
    except Exception as error: result['error'] = str(error)
    finally: save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
