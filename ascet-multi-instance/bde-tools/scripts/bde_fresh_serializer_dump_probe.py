"""Run one fixed retained-source dump with durable original/dispatch witnesses.

No caller Smalltalk, binary input, model edit or DB writer is accepted. Unknown
execution retains quarantine. A successful dump requires an independent full
owner-record read before quarantine can be cleared.
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

SOURCES = ('AscetFreshSerializerProbe.cs', 'AscetStructureRead.cs', 'bde_fresh_serializer_dump.st',
    'bde_module_persistent_references.st', 'bde_commit_reference_record.st',
    'bde_reference_leaf_nonempty_collector.st', 'bde_persistent_owner_records.st',
    'bde_value_probe.st', 'bde_detached_value_reader.st', 'bd_persistent_owner_records.py',
    'bd_module_persistent_references.py', 'bd_persistent_references.py',
    'bde_reference_leaf_noop_probe.py', 'bd_instance_pending.py', 'bd_windows_endpoint.py',
    'bde_fresh_serializer_prepare.st', 'bde_fresh_serializer_inventory.st')


def validate_inventory_proof(proof):
    if (not isinstance(proof, dict) or proof.get('passed') is not True
            or proof.get('fresh_serializer_source_inventory_captured') is not True
            or proof.get('persistent_owner_records_stable') is not True
            or proof.get('persistent_complete_capture_verified') is not True
            or proof.get('fresh_serializer_source_inventory_blockers') != []
            or proof.get('native_exit_code') != 0 or type(proof.get('native_exit_code')) is not int
            or proof.get('wire', {}).get('errors') != []):
        raise ValueError('Successful complete zero-blocker inventory receipt required')
    native = proof['native']; read = native['module_read']; inventory = read['serializer_inventory']
    if (native.get('passed') is not True or 'cleanup_error' in native
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or inventory.get('profile') != 'isolated_fresh_serializer_inventory_v1'
            or inventory.get('component_oid') != read['component_oid']
            or type(inventory.get('workbench_index')) is not int or not 1 <= inventory['workbench_index'] <= 16
            or type(inventory.get('objects')) is not int or not 1 <= inventory['objects'] <= 16384
            or inventory.get('blockers') != [] or type(inventory.get('model_setters_called')) is not int
            or inventory['model_setters_called'] != 0
            or any(inventory.get(k) is not False for k in ('serialization_called', 'store_called', 'commit_called',
                'persistent_write_called', 'call_closure_complete', 'serialization_authorized'))):
        raise ValueError('Complete clean capture-only inventoried workbench required')
    original = validate(inventory['before'], component_oid=read['component_oid'])
    if validate(inventory['after'], component_oid=read['component_oid']) != original or len(read['owner_observations']) != 2:
        raise ValueError('Exact two stable complete inventoried owner observations required')
    if any(validate(x, component_oid=read['component_oid']) != original for x in read['owner_observations']):
        raise ValueError('Inventory originals differ from independent full owner reads')
    return original


def validate_prepared(prepared, proof):
    validate_inventory_proof(proof)
    read = proof['native']['module_read']; inventory = read['serializer_inventory']
    fields = set(('profile component_oid workbench_index before graph_objects dump_calls load_calls '
        'persistent_write_calls store_called commit_called full_delivery').split())
    if (not isinstance(prepared, dict) or set(prepared) != fields
            or prepared['profile'] != 'isolated_fresh_source_dump_prepared_v1'
            or prepared['component_oid'] != read['component_oid']
            or type(prepared['workbench_index']) is not int or prepared['workbench_index'] != inventory['workbench_index']
            or type(prepared['graph_objects']) is not int or prepared['graph_objects'] != inventory['objects']
            or not 1 <= prepared['graph_objects'] <= 16384
            or any(type(prepared[k]) is not int or prepared[k] != 0 for k in ('dump_calls', 'load_calls', 'persistent_write_calls'))
            or any(prepared[k] is not False for k in ('store_called', 'commit_called', 'full_delivery'))):
        raise ValueError('Exact inventoried zero-call dump preparation required')
    original = validate(prepared['before'], component_oid=read['component_oid'])
    if original != inventory['before'] or original != inventory['after'] or any(original != x for x in read['owner_observations']):
        raise ValueError('Prepared CURRENT must equal retained inventoried originals')
    return original


def verify_dump(native, proof):
    prior = proof['native']; read = prior['module_read']
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('serialization_dispatched') is not True or native.get('write_dispatched') is not False
            or native.get('component_oid') != read['component_oid'] or native.get('process_epoch') != prior['process_epoch']
            or native.get('database') != prior['database']
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in native):
        raise ValueError('Complete same-epoch clean dump receipt required')
    original = validate_prepared(native['prepared'], proof); actual = native['actual']
    fields = set(('profile component_oid workbench_index before after payload_bytes payload_size dump_calls load_calls '
        'persistent_write_calls dumper_error dump_returned_true original_graph_preserved original_config_preserved '
        'owner_records_preserved model_setters_called store_called commit_called automatic_retry production_inverse_authorized full_delivery').split())
    if (not isinstance(actual, dict) or set(actual) != fields or actual['profile'] != 'isolated_fresh_source_dump_result_v1'
            or actual['component_oid'] != read['component_oid'] or type(actual['workbench_index']) is not int
            or actual['workbench_index'] != native['prepared']['workbench_index']
            or type(actual['dump_calls']) is not int or actual['dump_calls'] != 1
            or any(type(actual[k]) is not int or actual[k] != 0 for k in ('load_calls', 'persistent_write_calls', 'dumper_error', 'model_setters_called'))
            or any(actual[k] is not True for k in ('dump_returned_true', 'original_graph_preserved', 'original_config_preserved', 'owner_records_preserved'))
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'automatic_retry', 'production_inverse_authorized', 'full_delivery'))
            or validate(actual['before'], component_oid=read['component_oid']) != original
            or validate(actual['after'], component_oid=read['component_oid']) != original):
        raise ValueError('Successful one-dump/no-write receipt with exact preserved witnesses required')
    payload = actual['payload_bytes']
    if (not isinstance(payload, list) or any(type(b) is not int or not 0 <= b <= 255 for b in payload)
            or type(actual['payload_size']) is not int or actual['payload_size'] != len(payload) or not 1 <= len(payload) <= 4194304):
        raise ValueError('Complete bounded native source payload required')
    stored = original['owners'][1]['bytes'][130:]
    return dict(dump_calls=1, load_calls=0, persistent_write_calls=0, payload_size=len(payload),
        payload_sha256=hashlib.sha256(bytes(payload)).hexdigest(), stored_blob_size=len(stored),
        stored_blob_sha256=hashlib.sha256(bytes(stored)).hexdigest(), payload_equals_stored_blob=payload == stored,
        original_graph_preserved=True, original_config_preserved=True, full_delivery=False,
        production_inverse_authorized=False, independent_confirmation_required=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--inventory-probe', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); prior = args.inventory_probe.resolve(); output = args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned inventory proof and fresh output required')
    proof = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    validate_inventory_proof(proof)
    for name, sha in proof['source_manifest'].items():
        if Path(name).name != name or hashlib.sha256((prior / name).read_bytes()).hexdigest() != sha:
            raise ValueError('Archived inventory source differs: ' + name)
    native = proof['native']; read = native['module_read']; port = proof['port']; pid = proof['pid']
    component = read['component']; index = read['serializer_inventory']['workbench_index']
    if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component) or type(index) is not int or not 1 <= index <= 16:
        raise ValueError('Exact isolated retained source required')
    domain = dict(session=output.name, database=native['database'], process_epoch=native['process_epoch'], oid=read['component_oid'])
    pending.check(domain)
    if endpoint_process(port) != pid: raise ValueError('Endpoint owner changed')
    output.mkdir(parents=True)
    inputs = [service.ROOT / 'scripts' / n for n in SOURCES] + [Path(__file__)]
    hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    for path in inputs: shutil.copyfile(path, output / path.name)
    shutil.copyfile(prior / 'result.json', output / 'inventory-proof.json')
    result = dict(profile='bde_fresh_source_dump_experiment_v1', passed=False, domain=domain, port=port, pid=pid,
        component=component, inventory_probe=str(prior),
        source_manifest=hashes, ascet_started_or_restarted=False, automatic_retry=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save(); marker = None
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copyfile(dll, output / dll.name); binary = output / 'AscetFreshSerializerProbe.exe'
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetFreshSerializerProbe',
            '/r:' + str(dll), '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(p) + ',' + p.name for p in inputs if p.suffix == '.st'],
            *[str(p) for p in inputs if p.suffix == '.cs']], capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise ValueError('Serializer bridge build failed')
        result['bridge_compile_passed'] = True
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port) != pid: raise ValueError('Endpoint owner changed before probe')
            def authorize():
                nonlocal marker
                frame = json.loads((output / 'prepared.json').read_text(encoding='utf-8'))
                if (set(frame) != {'process_epoch', 'database', 'component', 'component_oid', 'prepared'}
                        or frame['process_epoch'] != domain['process_epoch'] or frame['database'] != domain['database']
                        or frame['component_oid'] != domain['oid'] or frame['component'] != component):
                    raise ValueError('Same-instance durable dump preparation required')
                validate_prepared(frame['prepared'], proof)
                marker = pending.begin(domain, 'research_fresh_source_dump_once', 'edit_' + fingerprint(domain),
                    context=dict(evidence=str(output), original_material=str(output / 'prepared.json'), original_sha256=fingerprint(frame)))
                result['pending_record'] = str(marker); result['parent_validated_original_before'] = True; save()
            try:
                with proxy(upstream_port=port) as wire:
                    environment = {k: v for k, v in os.environ.items() if not k.startswith('ASCET_BD_')}
                    environment.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_NATIVE_TRACE='1')
                    result['native_exit_code'] = run_handshake([str(binary), str(pid), domain['process_epoch'], domain['database'], component,
                        str(output), str(index)], environment=environment, output=output, authorize=authorize, serializer_dump=True)
            finally:
                if 'wire' in locals():
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
            if (output / 'native.json').exists():
                result['native'] = json.loads((output / 'native.json').read_text(encoding='utf-8'))
                observed = result['native']
                if observed.get('serialization_dispatched') is False and not (output / 'dispatch.json').exists():
                    if marker is not None: pending.confirmed(marker)
                    result['no_dump_dispatch_confirmed'] = True
                else:
                    result['summary'] = verify_dump(observed, proof)
                    if result['native_exit_code'] or wire['errors'] or marker is None: raise ValueError('Dump host/wire incomplete')
                    result['pending_retained_until_fresh_read'] = True
            result['sources_match'] = hashes == {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
            result['passed'] = bool(result.get('pending_retained_until_fresh_read') and result['sources_match'])
            if not result['passed']: raise ValueError(result.get('native', {}).get('error', 'No confirmed complete dump'))
    except Exception as error: result['error'] = str(error)
    finally: save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
