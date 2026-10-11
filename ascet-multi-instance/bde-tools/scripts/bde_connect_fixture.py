"""Create a fresh two-node Module fixture in an existing verified private runtime.

Does not start/restart ASCET or modify an existing component. Unknown fixture
writes retain the cross-store quarantine and are never automatically retried.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import uuid

import bd_instance_pending as pending
import bd_service as service
from bd_edit_journal import fingerprint
from bd_windows_endpoint import endpoint_process
from bde_experiments import proxy


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--read-probe', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest_path, prior, output = args.manifest.resolve(), args.read_probe.resolve(), args.output.resolve()
    if (not manifest_path.is_relative_to(service.ROOT / 'analysis') or not prior.is_relative_to(service.ROOT / 'analysis/bde-experiments')
            or not output.is_relative_to(service.ROOT / 'analysis/bde-experiments') or output.exists()):
        raise ValueError('Owned private manifest, read proof and fresh output required')
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    proof = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    port, pid = proof['port'], proof['pid']; native = proof['native']
    if (proof.get('passed') is not True or manifest['port'] != port or native['database'] != manifest['database']
            or not Path(manifest['runtime']).resolve().is_relative_to(manifest_path.parent)
            or not Path(manifest['database']).resolve().is_relative_to(manifest_path.parent)
            or endpoint_process(port) != pid):
        raise ValueError('Exact current private runtime/database read proof required')
    image = Path(manifest['runtime']) / 'icsrun/ASDBase.ic'
    if hashlib.sha256(image.read_bytes()).hexdigest() != manifest['patched_image_sha256']:
        raise ValueError('Private image differs from prepared manifest')
    # Check actual executable path as well as the listener owner before writing.
    reply = subprocess.run(['pwsh', '-NoProfile', '-Command',
        f'(Get-Process -Id {pid}).Path'], capture_output=True, text=True, check=True, timeout=10)
    if Path(reply.stdout.strip()).resolve() != (Path(manifest['runtime']) / 'ASCET.exe').resolve():
        raise ValueError('Listener does not run the exact manifested private executable')
    name = 'Trial_ConnectReferences_' + datetime.now(timezone.utc).strftime('%Y%m%d_%H%M%S') + '_' + uuid.uuid4().hex[:8]
    domain = dict(session=output.name, database=manifest['database'], process_epoch=native['process_epoch'], oid='new_fixture:' + name)
    pending.check(domain)
    output.mkdir(parents=True)
    result = dict(profile='bde_connect_fixture_v1', passed=False, manifest=str(manifest_path),
        port=port, pid=pid, process_epoch=domain['process_epoch'], intent=name, stage='build',
        ascet_started_or_restarted=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        sources = [service.ROOT / 'scripts' / file for file in ('AscetConnectFixture.cs', 'AscetStructureRead.cs')]
        for source in sources: shutil.copyfile(source, output / source.name)
        result['source_manifest'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest() for p in sources}
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copyfile(dll, output / dll.name)
        binary = output / 'AscetConnectFixture.exe'
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetConnectFixture',
            '/r:' + str(dll), '/r:System.Web.Extensions.dll', '/out:' + str(binary), *map(str, sources)],
            capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise RuntimeError('Fixture build failed')
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port) != pid: raise ValueError('Listener changed before fixture creation')
            marker = pending.begin(domain, 'create_isolated_connection_fixture', 'edit_' + fingerprint(domain))
            result.update(stage='dispatch', quarantine=str(marker)); save()
            with proxy(upstream_port=port) as wire:
                environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_PROBE_PORT=str(wire['port']))
                command = subprocess.run([str(binary), domain['process_epoch'], domain['database'], name, str(output / 'native.json')],
                    env=environment, capture_output=True, timeout=40)
                (output / 'native.stdout.log').write_bytes(command.stdout)
                (output / 'native.stderr.log').write_bytes(command.stderr)
            result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
            result['native'] = json.loads((output / 'native.json').read_text(encoding='utf-8-sig'))
            if command.returncode != 0 or result['native'].get('passed') is not True:
                raise RuntimeError('Fixture failed; keep intent/quarantine, do not replay')
            pending.confirmed(marker); result['quarantine_confirmed'] = True
            result.update(passed=True, stage='finished')
    except Exception as error:
        result['error'] = str(error)
    finally:
        save()
    print(json.dumps(dict(passed=result['passed'], output=str(output), error=result.get('error')), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
