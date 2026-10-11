"""Export ASCET/ETAS managed components to C# with the workspace ILSpy tool."""
import hashlib
import json
import subprocess
from pathlib import Path

WORKSPACE = Path(__file__).resolve().parents[1]
ROOT = Path(r'E:\ETAS\ASCET6.4')
DOTNET = Path(r'C:\Program Files\dotnet\dotnet.exe')
ILSPY = WORKSPACE / 'tools/ilspycmd/tools/net8.0/any/ilspycmd.dll'


def main():
    inventory = json.loads((WORKSPACE / 'analysis/managed-assemblies.json').read_text())
    results = []
    seen = set()
    for item in inventory:
        relative = Path(item['path'])
        if relative.name.endswith('.resources.dll'):
            continue
        if not (relative.name.lower().startswith(('etas.', 'etastime', 'cfw.'))
                or relative.name in {'WSCreator.exe', 'EtasToolStarter.exe'}):
            continue
        if item['sha256'] in seen:
            continue
        seen.add(item['sha256'])
        source = ROOT / relative
        if hashlib.sha256(source.read_bytes()).hexdigest() != item['sha256']:
            raise RuntimeError(f'Input changed since inventory: {source}')
        output = WORKSPACE / 'decompiled' / relative.stem
        proc = subprocess.run([str(DOTNET), str(ILSPY), '-p', '-o', str(output), str(source)],
                              capture_output=True, text=True, errors='replace')
        log = dict(source=str(source), sha256=item['sha256'], output=str(output),
                   exit_code=proc.returncode, stdout=proc.stdout, stderr=proc.stderr,
                   cs_files=len(list(output.rglob('*.cs'))))
        results.append(log)
        (WORKSPACE / 'analysis/decompilation-results.json').write_text(
            json.dumps(results, indent=2), encoding='utf-8')
        print(f"{relative}: exit={proc.returncode}, C# files={log['cs_files']}", flush=True)
    if any(item['exit_code'] for item in results):
        raise SystemExit(1)


if __name__ == '__main__':
    main()
