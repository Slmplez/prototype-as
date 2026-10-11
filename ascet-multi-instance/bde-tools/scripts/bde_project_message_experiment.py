"""Read-only Project Module/message probe with an independent public projection."""
import argparse
import json
import os
from pathlib import Path
import subprocess

import bd_service as service
import bde_experiments as bench
from bd_project_messages import analyze_messages, compare_project


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--project', required=True)
    parser.add_argument('--messages', default='TargetStateAEB,CurrentStateAEB')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    files = [service.ROOT / 'scripts' / name for name in (
        'AscetStructureRead.cs', 'AscetProjectMessagesRead.cs', 'bde_project_messages.st',
        'bd_project_messages.py', 'bde_project_message_experiment.py', 'bde_experiments.py', 'bde_database_identity.st')]
    manifest = {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files}
    binary = service.ROOT / 'analysis/live-api/AscetProjectMessagesRead.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    service.ensure_probe()
    build = subprocess.run([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
        '/r:System.Web.Extensions.dll', f'/resource:{files[2]},bde_structure_read.st',
        f'/resource:{files[-1]},bde_database_identity.st',
        '/main:AscetProjectMessagesRead', f'/out:{binary}', str(files[0]), str(files[1])],
        capture_output=True, timeout=30)
    (args.output / 'build.stdout.log').write_bytes(build.stdout)
    (args.output / 'build.stderr.log').write_bytes(build.stderr)
    result = {'source_manifest': manifest, 'online_evidence': False, 'setter_called': False,
              'editable_refs': False, 'scope': 'Project declaration lookup and bounded alias chains; not complete signal path'}
    if build.returncode:
        result.update(status='failed_before_live_call', build_exit_code=build.returncode)
    else:
        with service.live_lock():
            metric, raw = bench.run([str(binary), args.project, '-',
                str((args.output / 'probe.json').resolve()), args.messages], args.output / 'probe.json', 120)
        result.update(status=raw.get('status'), metric=metric, online_evidence=True,
                      native_query_ms=raw.get('native_query_ms'),
                      same_dirty=(raw.get('dirty_before', -1) == raw.get('dirty_after', -2)
                                  and raw.get('dirty_before', -1) >= 0))
        if raw.get('status') == 'ok':
            result['independent_oracle'] = compare_project(raw['structure'], raw['public_before'])
            result['public_unchanged'] = compare_project(raw['public_before'], raw['public_after'])['passed']
            analysis = analyze_messages(raw['structure'])
            (args.output / 'message-bindings.json').write_text(json.dumps(analysis, indent=2), encoding='utf-8')
            result['counts'] = {key: len(raw['structure'][key]) for key in ('modules', 'declarations', 'bindings')}
            result['resolution_counts'] = analysis['counts']
        else:
            result['error'] = raw.get('error', metric.get('error'))
    result['runtime_manifest'] = {str(path): service.digest(path.read_bytes())
                                  for path in (dll, binary, compiler) if path.is_file()}
    result['source_changes_during_run'] = [name for name, digest in manifest.items()
        if service.digest((service.ROOT / name).read_bytes()) != digest]
    result['passed_collected_public_projection'] = bool(result.get('status') == 'ok'
        and not result['metric']['error'] and result['same_dirty']
        and result['independent_oracle']['passed'] and result['public_unchanged']
        and not result['source_changes_during_run'])
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result))
    return 0 if result['passed_collected_public_projection'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
