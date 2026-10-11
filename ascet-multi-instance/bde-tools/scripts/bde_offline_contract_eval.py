"""Persist focused offline checks with source fingerprints; live tests stay skipped."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import bd_service as service


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    bun = Path.home() / '.bun/bin/bun.exe'
    jobs = [('python', [sys.executable, '-m', 'unittest', 'discover', '-s', 'scripts', '-p', 'test_bd*.py'], service.ROOT),
            ('doge', [str(bun), 'test', 'src/tools/BlockDiagramTool'], service.ROOT / 'Doge'),
            ('version', [str(bun), 'run', 'version'], service.ROOT / 'Doge')]
    env = dict(os.environ)
    # Tests can load real historical database identities, but must not read or
    # alter the user's live quarantine/lock records.
    env['LOCALAPPDATA'] = str((args.output / 'isolated-native-state').resolve())
    for key in ('ASCET_BD_CREATION_LIVE_TEST', 'ASCET_BD_STRUCTURAL_LIVE_TEST', 'ASCET_BD_LIVE_TEST',
                'ASCET_BD_SANDBOX_LIVE_TEST', 'ASCET_BD_HISTORY_TEST'):
        env[key] = '0'
    result = {'passed': False, 'scope': 'offline assertions only; live skips do not prove native acceptance', 'checks': [],
              'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes())
                  for f in (service.ROOT / 'scripts').glob('*') if f.suffix in ('.py', '.cs', '.st', '.json')
                  and f.name.startswith(('bd', 'test_bd', 'AscetStructure', 'AscetRead', 'AscetBde', 'AscetClass', 'AscetPrivate', 'format_bd'))}}
    for name in ('current_class_identity_plan.st', 'current_class_identity_probe.st',
                 'current_class_native_capture.st', 'current_class_native_actions.st',
                 'current_class_execution.st', 'current_class_capture_probe.st', 'current_class_inverse_probe.st',
                 'current_class_context_probe.st',
                 'CurrentClassIdentityProbe.cs', 'inspect_current_class_identity.py'):
        source = service.ROOT / 'scripts' / name
        result['source_manifest'][str(source.relative_to(service.ROOT))] = service.digest(source.read_bytes())
    for f in (service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))] = service.digest(f.read_bytes())
    adapter = service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts'
    result['source_manifest'][str(adapter.relative_to(service.ROOT))] = service.digest(adapter.read_bytes())
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    for name, command, cwd in jobs:
        start = time.perf_counter()
        process = subprocess.run(command, cwd=cwd, env=env, capture_output=True, text=True, encoding='utf-8', timeout=120)
        result['checks'].append({'name': name, 'command': command, 'cwd': str(cwd), 'exit_code': process.returncode,
                                'elapsed_ms': (time.perf_counter() - start) * 1000,
                                'stdout': process.stdout, 'stderr': process.stderr})
        save()
        print(json.dumps({'check': name, 'exit_code': process.returncode}), flush=True)
    result['passed'] = all(row['exit_code'] == 0 for row in result['checks'])
    save()
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
