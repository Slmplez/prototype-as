"""Create one fixed two-level hierarchy specimen in an isolated Trial Module."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import bd_service as service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    files = [service.ROOT / 'scripts' / name for name in
             ('AscetStructureRead.cs', 'AscetBdeHierarchyFixture.cs', 'bde_hierarchy_fixture_experiment.py')]
    manifest = {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files}
    binary = service.ROOT / 'analysis/live-api/AscetBdeHierarchyFixture.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    service.ensure_probe()
    build = subprocess.run([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
        '/r:System.Web.Extensions.dll', '/main:AscetBdeHierarchyFixture', f'/out:{binary}',
        str(files[0]), str(files[1])], capture_output=True, timeout=30)
    (args.output / 'build.stdout.log').write_bytes(build.stdout)
    (args.output / 'build.stderr.log').write_bytes(build.stderr)
    result = {'source_manifest': manifest, 'passed_public_fixture': False, 'business_writes': False}
    if build.returncode:
        result.update(status='failed_before_live_call', build_exit_code=build.returncode)
    else:
        with service.live_lock():
            metric, raw = bench.run([str(binary), str((args.output / 'fixture.json').resolve())],
                                     args.output / 'fixture.json', 60)
        result.update(status=raw.get('status'), metric=metric, component=raw.get('component'),
                      oid=raw.get('oid'), error=raw.get('error'),
                      passed_public_fixture=raw.get('status') == 'ok' and not metric['error'])
    result['source_changes_during_run'] = [name for name, digest in manifest.items()
        if service.digest((service.ROOT / name).read_bytes()) != digest]
    result['passed_public_fixture'] &= not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result))
    return 0 if result['passed_public_fixture'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
