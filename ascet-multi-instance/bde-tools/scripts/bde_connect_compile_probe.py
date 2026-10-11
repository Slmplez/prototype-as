"""Compile fixed connection templates in an existing ASCET; never edit.

By default this validates runtime compilation only. With --component it also
executes the fixed read-only Module collector twice, never a connection block.
Neither mode starts ASCET or establishes edit/inverse acceptance.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

import bd_service as service
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy

SOURCES = ('AscetConnectCompileProbe.cs', 'AscetStructureRead.cs',
    'bde_connect_material.st', 'bde_structure_stage_guard.st', 'bde_connect_history.st',
    'bde_module_reference_snapshot.st', 'bde_module_reference_probe.st', 'bd_module_references.py',
    'bde_commit_reference_record.st', 'bde_module_persistent_references.st', 'bde_value_probe.st',
    'bd_module_persistent_references.py', 'bd_persistent_references.py',
    'bde_reference_leaf_noop.st', 'bde_detached_value_reader.st', 'bde_reference_leaf_lifecycle.st',
    'bde_connect_preparation_guard_probe.st')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--port', type=int, required=True)
    parser.add_argument('--target-key', action='append', default=[], help='Explicit 20-byte reference key as lowercase hex; up to 16 identity inputs, not original images')
    parser.add_argument('--pid', type=int, required=True)
    selection = parser.add_mutually_exclusive_group()
    selection.add_argument('--component', help='Optional exact existing Module path; read only')
    selection.add_argument('--list-trials', action='store_true', help='Read existing isolated ModuleBDE names only')
    parser.add_argument('--persistent-references', action='store_true', help='Also read finite Module/source raw reference records twice; requires --component')
    parser.add_argument('--native-guard-controls', action='store_true', help='Execute staged guard on three detached non-executable test frames; no production edit')
    parser.add_argument('--allow-incomplete-observation', action='store_true', help='Validate retained failed-read evidence; does not pass complete raw capture')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    from bd_module_persistent_references import target_requests
    targets = target_requests(args.target_key)
    if targets and not args.persistent_references:
        parser.error('--target-key requires --persistent-references')
    if args.persistent_references and not args.component:
        parser.error('--persistent-references requires --component')
    if args.native_guard_controls and not args.component:
        parser.error('--native-guard-controls requires --component')
    if args.allow_incomplete_observation and not args.persistent_references:
        parser.error('--allow-incomplete-observation requires --persistent-references')
    output = args.output.resolve()
    if not output.is_relative_to(service.ROOT / 'analysis/bde-experiments') or output.exists():
        raise ValueError('Fresh owned experiment output required')
    if endpoint_process(args.port) != args.pid:
        raise ValueError('Exact existing ASCET listener PID required')
    output.mkdir(parents=True)
    inputs = [service.ROOT / 'scripts' / name for name in SOURCES]
    inputs.append(Path(__file__))
    hashes = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
    for source in inputs:
        shutil.copyfile(source, output / source.name)
    result = dict(profile='bde_connect_compile_experiment_v1', passed=False,
        scope='fixed compilation and read-only Module reference observation' if args.component else
            'fixed compilation and existing ModuleBDE name census' if args.list_trials else
            'fixed Smalltalk runtime compilation only', port=args.port, pid=args.pid,
        source_manifest=hashes, ascet_started_or_restarted=False,
        persistent_reference_inverse_implemented=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copyfile(dll, output / dll.name)
        binary = output / 'AscetConnectCompileProbe.exe'
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86',
            '/main:AscetConnectCompileProbe', '/r:' + str(dll), '/r:System.Web.Extensions.dll',
            '/out:' + str(binary), *['/resource:' + str(p) + ',' + p.name for p in inputs if p.suffix == '.st'],
            *[str(p) for p in inputs if p.suffix == '.cs']], capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        result['bridge_compile_passed'] = build.returncode == 0
        if build.returncode:
            raise RuntimeError('Probe build failed; see build.log')
        with service.live_lock():
            if endpoint_process(args.port) != args.pid:
                raise ValueError('Listener changed before probe')
            try:
                with proxy(upstream_port=args.port) as wire:
                    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(args.port),
                        ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_NATIVE_TRACE='1')
                    try:
                        native = subprocess.run([str(binary), str(args.pid), str(output / 'native.json')]
                            + ([args.component] if args.component else ['--list-trials'] if args.list_trials else [])
                            + (['--persistent-references'] if args.persistent_references else [])
                            + ([','.join(targets)] if targets else [])
                            + (['--native-guard-controls'] if args.native_guard_controls else []),
                            env=environment, capture_output=True, timeout=60)
                        (output / 'native.stdout.log').write_bytes(native.stdout)
                        (output / 'native.stderr.log').write_bytes(native.stderr)
                        result['native_exit_code'] = native.returncode
                    except subprocess.TimeoutExpired as error:
                        (output / 'native.stdout.log').write_bytes(error.stdout or b'')
                        (output / 'native.stderr.log').write_bytes(error.stderr or b'')
                        result['native_timeout'] = True
                        raise
            finally:
                if 'wire' in locals():
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(),
                        response=wire['response'].result(), errors=wire['errors'])
        if (output / 'native.json').exists():
            result['native'] = json.loads((output / 'native.json').read_text(encoding='utf-8-sig'))
        if args.component and result.get('native', {}).get('passed') is True:
            from bd_module_references import validate_snapshot
            read = result['native']['module_read']
            observations = [validate_snapshot(value, component_oid=read['component_oid']) for value in read['observations']]
            if len(observations) != 2 or observations[0] != observations[1]:
                raise ValueError('Two exact same-owner Module observations differ; preserve both')
            result['module_observations_stable'] = True
            if args.native_guard_controls:
                guard = read['native_guard_controls']
                if (guard.get('profile') != 'native_connect_preparation_guard_controls_v1'
                        or guard.get('component_oid') != read['component_oid']
                        or guard.get('guard_invocations') != 3 or guard.get('model_setters_called') != 0
                        or any(guard.get(k) is not False for k in ('production_token_used', 'store_called',
                            'persistent_write_called', 'connection_edit_dispatched'))
                        or [c.get('mode') for c in guard.get('controls', [])] != ['apply', 'revert', 'validate_revert']
                        or any(c.get('rejected') is not True or c.get('detached_material_preserved') is not True
                            or c.get('error') != 'Finite Module reference capture is preparation-only; persistent write and inverse closure remain unverified'
                            for c in guard['controls'])):
                    raise ValueError('Three exact detached native guard refusals required')
                result['native_guard_controls_verified'] = True
            if args.persistent_references:
                from bd_module_persistent_references import validate, summarize
                values = [validate(value, component_oid=read['component_oid'],
                    require_complete=not args.allow_incomplete_observation) for value in read['persistent_observations']]
                if len(values) != 2 or values[0] != values[1]:
                    raise ValueError('Two exact finite raw reference observations differ; preserve both')
                result['persistent_observations_stable'] = True
                result['persistent_complete_capture_verified'] = values[0]['complete']
                result['incomplete_observation_allowed'] = args.allow_incomplete_observation
                result['persistent_reference_summary'] = summarize(values[0], component_oid=read['component_oid'],
                    require_complete=not args.allow_incomplete_observation)
        result['sources_match'] = hashes == {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs}
        result['passed'] = (result.get('native_exit_code') == 0 and result.get('native', {}).get('passed') is True
            and result['sources_match'] and not wire['errors'])
        if not result['passed'] and result.get('native', {}).get('error'):
            result['error'] = result['native']['error']
    except Exception as error:
        result['error'] = str(error)
    finally:
        save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
