"""Create only the fixed empty isolated Project/Module fixture recipe."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import traceback

import bd_service as service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--reuse-modules', type=Path)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.ensure_probe()
    sources = [service.ROOT / 'scripts' / name for name in ('AscetBdeProjectFixture.cs', 'AscetStructureRead.cs')]
    guard = service.ROOT / 'scripts/bde_project_messages.st'
    settings = service.ROOT / 'scripts/bde_project_fixture_settings.st'
    binary = service.ROOT / 'analysis/live-api/AscetBdeProjectFixture.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    result = {'passed': False, 'business_writes': False,
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in [*sources, guard, settings]}}
    try:
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
            '/r:System.Web.Extensions.dll', '/main:AscetBdeProjectFixture', f'/out:{binary}',
            f'/resource:{guard},bde_project_messages.st',
            f'/resource:{settings},bde_project_fixture_settings.st',
            *map(str, sources)], capture_output=True, timeout=30)
        (args.output / 'build.stdout.log').write_bytes(build.stdout)
        (args.output / 'build.stderr.log').write_bytes(build.stderr)
        assert build.returncode == 0, build.stdout.decode(errors='replace')
        with service.live_lock():
            command = [str(binary), str((args.output / 'fixture.json').resolve())]
            if args.reuse_modules: command.append(str(args.reuse_modules.resolve()))
            metric, raw = bench.run(command, args.output / 'fixture.json', 60)
        result.update(metric=metric, fixture=raw)
        assert not metric['error'] and raw['status'] == 'ok'
        assert raw['source_common_fields_unchanged'] and not raw.get('guard_release_error')
        assert raw['dirty_before'] == raw['dirty_after'] == 0
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
        if service.digest((service.ROOT / name).read_bytes()) != digest]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
