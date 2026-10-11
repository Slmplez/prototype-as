"""Research existing-Module reference writer using an exact original no-op copy.

Requires an existing clean isolated Module and successful fixed read proof.
The native binary fsyncs original detached before and a no-retry dispatch marker
before the leaf call. No model edit/store/commit/abort/savepoint/restart occurs.
Unknown outcomes retain the cross-store quarantine; no implicit restoration.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import threading
import queue

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_module_persistent_references import validate, summarize
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy

SOURCES = ('AscetReferenceLeafNoopProbe.cs', 'AscetStructureRead.cs', 'bde_reference_leaf_noop.st',
    'bde_detached_value_reader.st', 'bde_module_persistent_references.st', 'bde_commit_reference_record.st',
    'bde_value_probe.st', 'bd_module_persistent_references.py', 'bd_persistent_references.py')


def run_handshake(command, *, environment, output, authorize, timeout=60, lifecycle=False, nonempty=False, finite_patch=False, owner_noop=False, owner_patch=False, serializer_dump=False, serializer_extract=False, serializer_finish=False, private_layout=False, source_payload=False):
    """No native writer command until parent validates fsynced before and starts WAL.

    The only stdin command is fixed WRITE_NOOP. The native host independently
    rechecks owner/current before writing. A timeout after authorization never
    clears the marker or retries. Failed preparation needs no write quarantine.
    """
    if sum(bool(x) for x in (finite_patch, owner_noop, owner_patch, serializer_dump, serializer_extract, serializer_finish, private_layout, source_payload)) > 1 or ((serializer_extract or serializer_finish or private_layout or source_payload) and (lifecycle or nonempty)):
        raise ValueError('Conflicting research handshake modes')
    ready = b'BDE_SOURCE_PAYLOAD_READY' if source_payload else b'BDE_FRESH_LAYOUT_READY' if private_layout else b'BDE_FRESH_FINISH_READY' if serializer_finish else b'BDE_FRESH_EXTRACT_READY' if serializer_extract else b'BDE_FRESH_SERIALIZER_READY' if serializer_dump else b'BDE_OWNER_PATCH_READY' if owner_patch else b'BDE_PERSISTENT_OWNER_READY' if owner_noop else b'BDE_FINITE_PATCH_READY' if finite_patch else b'BDE_REFERENCE_NONEMPTY_READY' if nonempty else b'BDE_REFERENCE_LIFECYCLE_READY' if lifecycle else b'BDE_REFERENCE_NOOP_READY'
    writer_command = b'WRITE_PRIVATE_LAYOUT_SOURCE_AND_RESTORE_ONCE\n' if source_payload else b'SERIALIZE_PRIVATE_LAYOUT_AFTER_ONCE\n' if private_layout else b'FINISH_EXISTING_LOADED_SOURCE_ONCE\n' if serializer_finish else b'EXTRACT_RETAINED_SOURCE_ONCE\n' if serializer_extract else b'SERIALIZE_FRESH_SOURCE_ONCE\n' if serializer_dump else b'EXECUTE_OWNER_PATCH_LIFECYCLE\n' if owner_patch else b'WRITE_ORIGINAL_OWNER_RECORDS_NOOP\n' if owner_noop else b'EXECUTE_FINITE_PATCH_LIFECYCLE\n' if finite_patch else b'WRITE_RECIPROCAL_RESIZE_AND_RESTORE\n' if nonempty else b'WRITE_EMPTY_AND_REMOVE\n' if lifecycle else b'WRITE_NOOP\n'
    with (output / 'native.stderr.log').open('wb') as stderr:
        child = subprocess.Popen(command, env=environment, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=stderr)
        first_line = queue.Queue(maxsize=1)
        def read_ready():
            prefix = b''
            for _ in range(32):
                line = child.stdout.readline(8193); prefix += line
                if not line or line in (ready + b'\r\n', ready + b'\n'):
                    break
                if len(line) > 8192 or len(prefix) > 65536:
                    break
            first_line.put(prefix)
        thread = threading.Thread(target=read_ready, daemon=True)
        thread.start(); first = b''
        try:
            try:
                first = first_line.get(timeout=timeout)
            except queue.Empty:
                raise TimeoutError('Research host did not prepare before the deadline; no writer authorized')
            if first.splitlines() and first.splitlines()[-1] == ready:
                authorize()
                tail, _ = child.communicate(writer_command, timeout=timeout)
            else:
                tail, _ = child.communicate(timeout=timeout)
            (output / 'native.stdout.log').write_bytes(first + tail)
            return child.returncode
        except Exception as error:
            child.kill()
            thread.join(timeout=1)
            tail, _ = child.communicate(timeout=5)
            if not first and not first_line.empty(): first = first_line.get_nowait()
            (output / 'native.stdout.log').write_bytes(first + tail)
            raise error


def verify_native(native, domain, component):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or native.get('dirty_before') != 0 or native.get('dirty_after') != 0):
        raise ValueError('Complete same-instance clean no-op reply required')
    before = validate(native['before'], component_oid=domain['oid'])
    actual = native['actual']
    required = {'profile', 'before', 'after', 'owner_key', 'outcome', 'owner_source_backend_preserved',
        'raw_readback_equal', 'persistent_leaf_write_calls', 'model_setters_called', 'store_called',
        'commit_called', 'flush_called', 'durable_inverse_verified'}
    if (not isinstance(actual, dict) or set(actual) != required
            or actual['profile'] != 'finite_reference_leaf_noop_result_v1'
            or type(actual['persistent_leaf_write_calls']) is not int or actual['persistent_leaf_write_calls'] != 1
            or type(actual['model_setters_called']) is not int or actual['model_setters_called'] != 0
            or any(actual[key] is not False for key in ('store_called', 'commit_called', 'flush_called', 'durable_inverse_verified'))
            or actual['owner_source_backend_preserved'] is not True or actual['raw_readback_equal'] is not True
            or actual['owner_key'] != before['owners'][0]['key']
            or actual['outcome'] != {'returned_class': 'CTSpaceCheckingIFil', 'is_ct_error': False}):
        raise ValueError('Exact successful no-op leaf outcome and readback required')
    after = validate(actual['after'], component_oid=domain['oid'])
    if actual['before'] != before or after != before:
        raise ValueError('Full finite original/readback changed; retain original and quarantine')
    return summarize(after, component_oid=domain['oid'])


def main(lifecycle=False, nonempty=False, finite_patch=False, owner_noop=False, owner_patch=False):
    lifecycle = lifecycle or nonempty
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--read-probe', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    prior, output = args.read_probe.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned successful probe and fresh result required')
    proof = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    if proof.get('passed') is not True or proof.get('persistent_complete_capture_verified') is not True:
        raise ValueError('Successful complete read-only proof required')
    native, port, pid = proof['native'], proof['port'], proof['pid']
    component = native['module_read']['component']
    if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component):
        raise ValueError('Existing isolated Trial required')
    domain = dict(session=output.name, database=native['database'], process_epoch=native['process_epoch'],
        oid=native['module_read']['component_oid'])
    pending.check(domain)
    if endpoint_process(port) != pid:
        raise ValueError('Existing endpoint owner changed')
    output.mkdir(parents=True)
    sources = SOURCES + (('AscetReferenceLeafLifecycleProbe.cs', 'bde_reference_leaf_lifecycle.st',
        'bde_reference_leaf_lifecycle_probe.py') if lifecycle else ())
    if nonempty:
        sources += ('AscetReferenceLeafNonemptyProbe.cs', 'bde_reference_leaf_nonempty.st',
            'bde_reference_leaf_nonempty_collector.st', 'bde_reference_leaf_nonempty_probe.py')
    if finite_patch:
        sources += ('AscetFiniteReferencePatchProbe.cs', 'bde_finite_reference_patch.st',
            'bde_finite_reference_patch_probe.st', 'bde_finite_reference_patch_probe.py', 'bd_finite_reference_patch.py')
    if owner_noop:
        sources += ('AscetPersistentOwnerNoopProbe.cs', 'bde_persistent_owner_records.st',
            'bde_persistent_owner_noop.st', 'bd_persistent_owner_records.py', 'bde_persistent_owner_noop_probe.py')
    if owner_patch:
        sources += ('AscetPersistentOwnerPatchProbe.cs', 'bde_persistent_owner_records.st',
            'bde_persistent_owner_patch.st', 'bde_persistent_owner_patch_probe.st',
            'bd_persistent_owner_records.py', 'bd_persistent_owner_patch.py', 'bde_persistent_owner_patch_probe.py')
    inputs = [service.ROOT / 'scripts' / name for name in sources] + [Path(__file__)]
    hashes = {path.name: hashlib.sha256(path.read_bytes()).hexdigest() for path in inputs}
    for path in inputs: shutil.copyfile(path, output / path.name)
    result = dict(profile='bde_persistent_owner_patch_experiment_v1' if owner_patch else 'bde_persistent_owner_noop_experiment_v1' if owner_noop else 'bde_finite_reference_patch_experiment_v1' if finite_patch else 'bde_reciprocal_reference_leaf_nonempty_experiment_v1' if nonempty else 'bde_absent_reference_leaf_lifecycle_experiment_v1' if lifecycle else 'bde_existing_reference_leaf_noop_experiment_v1', passed=False,
        domain=domain, component=component, read_probe=str(prior), source_manifest=hashes,
        port=port, pid=pid,
        ascet_started_or_restarted=False, native_inverse_implemented=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copyfile(dll, output / dll.name)
        entry = 'AscetPersistentOwnerPatchProbe' if owner_patch else 'AscetPersistentOwnerNoopProbe' if owner_noop else 'AscetFiniteReferencePatchProbe' if finite_patch else 'AscetReferenceLeafNonemptyProbe' if nonempty else 'AscetReferenceLeafLifecycleProbe' if lifecycle else 'AscetReferenceLeafNoopProbe'
        binary = output / (entry + '.exe')
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:' + entry,
            '/r:' + str(dll), '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(path) + ',' + path.name for path in inputs if path.suffix == '.st'],
            *[str(path) for path in inputs if path.suffix == '.cs']], capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise ValueError('No-op bridge build failed')
        result['bridge_compile_passed'] = True
        environment = {key: value for key, value in os.environ.items() if not key.startswith('ASCET_BD_')}
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port) != pid: raise ValueError('Listener changed before no-op research')
            purpose = 'isolated_persistent_owner_patch_lifecycle' if owner_patch else 'isolated_persistent_owner_noop' if owner_noop else 'isolated_finite_reference_patch_lifecycle' if finite_patch else 'isolated_reciprocal_reference_resize_restore' if nonempty else 'absent_reference_empty_lifecycle' if lifecycle else 'existing_reference_noop'
            token = 'edit_' + fingerprint(dict(domain=domain, purpose=purpose))
            marker = None
            def authorize():
                nonlocal marker
                prepared = json.loads((output / 'prepared.json').read_text(encoding='utf-8'))
                if (set(prepared) != {'process_epoch', 'database', 'component', 'component_oid', 'before'}
                        or prepared['process_epoch'] != domain['process_epoch'] or prepared['database'] != domain['database']
                        or prepared['component_oid'] != domain['oid'] or prepared['component'] != component):
                    raise ValueError('Exact same-runtime original before required before writer authorization')
                if owner_noop or owner_patch:
                    from bd_persistent_owner_records import validate as owner_validate
                    before = owner_validate(prepared['before'], component_oid=domain['oid'])['references']
                else:
                    before = validate(prepared['before'], component_oid=domain['oid'])
                row = before['owners'][1 if lifecycle else 0]['records'][0]
                if row['read_status'] != ('absent' if lifecycle else 'record'):
                    raise ValueError('Exact original record existence required before fixed research dispatch')
                if nonempty:
                    from bde_reference_leaf_nonempty_probe import validate_original
                    validate_original(before, domain)
                if endpoint_process(port) != pid: raise ValueError('Listener changed before leaf authorization')
                marker = pending.begin(domain, 'research_persistent_owner_patch_lifecycle' if owner_patch else 'research_persistent_owner_noop' if owner_noop else 'research_finite_reference_patch_lifecycle' if finite_patch else 'research_reciprocal_reference_resize_restore' if nonempty else 'research_absent_reference_lifecycle' if lifecycle else 'research_existing_reference_noop', token,
                    context=dict(evidence=str(output), original_material=str(output / 'prepared.json'),
                        original_sha256=fingerprint(prepared)))
                result['pending_record'] = str(marker); result['parent_validated_original_before'] = True; save()
            try:
                with proxy(upstream_port=port) as wire:
                    environment.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_NATIVE_TRACE='1')
                    try:
                        exit_code = run_handshake([str(binary), str(pid), domain['process_epoch'], domain['database'],
                            component, str(output)], environment=environment, output=output, authorize=authorize, lifecycle=lifecycle, nonempty=nonempty, finite_patch=finite_patch, owner_noop=owner_noop, owner_patch=owner_patch)
                    except (subprocess.TimeoutExpired, TimeoutError):
                        result['native_timeout'] = True
                        raise
                    result['native_exit_code'] = exit_code
            finally:
                if 'wire' in locals():
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(),
                        response=wire['response'].result(), errors=wire['errors'])
            if (output / 'native.json').exists():
                observed = json.loads((output / 'native.json').read_text(encoding='utf-8')); result['native'] = observed
                if observed.get('write_dispatched') is False and not (output / 'dispatch.json').exists():
                    # Terminal native host proves it never sent a writer request.
                    if marker is not None: pending.confirmed(marker)
                    result['pending_cleared_no_writer_dispatch'] = True
                elif lifecycle and observed.get('typed_no_writer_refusal') is True and not nonempty:
                    from bde_reference_leaf_lifecycle_probe import verify_no_writer_refusal
                    verify_no_writer_refusal(observed, domain)
                    if exit_code or wire['errors'] or 'cleanup_error' in observed or marker is None:
                        raise ValueError('Lifecycle refusal cleanup incomplete; quarantine retained')
                    pending.confirmed(marker); result['pending_cleared_typed_no_writer_refusal'] = True
                elif (observed.get('typed_no_writer_refusal') is True and observed.get('complete_reply_received') is True
                        and observed.get('process_epoch') == domain['process_epoch']
                        and observed.get('component_oid') == domain['oid']
                        and not lifecycle and observed.get('actual') == dict(profile='finite_reference_leaf_noop_failure_v1',
                            write_dispatched=False, automatic_retry=False, error=observed.get('actual', {}).get('error'))
                        and isinstance(observed['actual']['error'], str)):
                    if marker is None: raise ValueError('Typed refusal without original parent authorization')
                    pending.confirmed(marker); result['pending_cleared_typed_no_writer_refusal'] = True
                else:
                    if owner_patch:
                        from bde_persistent_owner_patch_probe import verify_owner_patch
                        result['summary'] = verify_owner_patch(observed, domain)
                    elif owner_noop:
                        from bde_persistent_owner_noop_probe import verify_owner_noop
                        result['summary'] = verify_owner_noop(observed, domain)
                    elif finite_patch:
                        from bde_finite_reference_patch_probe import verify_patch_probe
                        result['summary'] = verify_patch_probe(observed, domain)
                    elif nonempty:
                        from bde_reference_leaf_nonempty_probe import verify_nonempty
                        result['summary'] = verify_nonempty(observed, domain, component)
                    elif lifecycle:
                        from bde_reference_leaf_lifecycle_probe import verify_lifecycle
                        result['summary'] = verify_lifecycle(observed, domain, component)
                    else:
                        result['summary'] = verify_native(observed, domain, component)
                    if exit_code or wire['errors'] or 'cleanup_error' in observed or marker is None:
                        raise ValueError('No-op host or wire cleanup incomplete; quarantine retained')
                    if nonempty:
                        result['restored_in_complete_reply'] = True
                        result['pending_retained_until_fresh_read'] = True
                    else:
                        pending.confirmed(marker)
                        result['pending_cleared_verified_lifecycle' if lifecycle else 'pending_cleared_verified_noop'] = True
            result['sources_match'] = hashes == {path.name: hashlib.sha256(path.read_bytes()).hexdigest() for path in inputs}
            result['passed'] = bool(result.get('restored_in_complete_reply' if nonempty else 'pending_cleared_verified_lifecycle' if lifecycle else 'pending_cleared_verified_noop') and result['sources_match'])
            if not result['passed']: raise ValueError(result.get('native', {}).get('error', 'No complete verified no-op reply'))
    except Exception as error:
        result['error'] = str(error)
    finally:
        save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
