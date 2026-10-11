"""Read Class method signatures with public member and native identity checks."""
import argparse
from contextlib import contextmanager
import json
import os
from pathlib import Path
import subprocess
import sys
import time

import bd_service as service
import bde_experiments as bench


@contextmanager
def live_slot():
    started = time.monotonic()
    while True:
        entered = False
        try:
            with service.live_lock():
                entered = True
                yield
            return
        except service.ToolError as error:
            if entered or error.code != 'ASCET_BUSY' or time.monotonic() - started >= 30:
                raise
            time.sleep(2)


def public_projection(methods):
    def formal(row):
        return {key: row[key] for key in ('alias', 'name', 'slot', 'index')}
    return [{**{key: method[key] for key in ('alias', 'name', 'diagram')},
             'arguments': [formal(row) for row in method['arguments']],
             'return': None if method['return'] is None else formal(method['return'])}
            for method in methods]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT / 'scripts' / name for name in ('AscetClassInterfaceProbe.cs',
               'AscetStructureRead.cs', 'bde_structure_read.st', 'bde_class_interface_probe.st')]
    binary = service.ROOT / 'analysis/live-api/AscetClassInterfaceProbe.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    result = {'passed': False, 'model_setters_called': 0, 'observations': [],
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
              'not_verified': ['Class interface mutation/restoration', 'public direction predicates',
                               'shared caller graph changes', 'visual lifecycle']}
    try:
        service.ensure_probe()
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassInterfaceProbe',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': build.returncode, 'stdout': build.stdout, 'stderr': build.stderr}
        assert build.returncode == 0, result['build']
        for index in range(args.repeats):
            output = args.output / f'probe-{index}.json'
            started = time.perf_counter()
            with live_slot(), bench.proxy() as wire:
                process = subprocess.run([str(binary), args.component, str(output)], capture_output=True,
                    text=True, timeout=60, env={**os.environ, 'ASCET_BD_PROBE_PORT': str(wire['port'])})
            data = json.loads(output.read_text(encoding='utf-8')) if output.exists() else {'status': 'missing'}
            proof = {'passed': False}
            if data.get('status') == 'ok':
                methods = data['before']['methods']
                proof = {'passed': public_projection(methods) == data['public_before'],
                         'method_count': len(methods), 'formal_count': sum(len(m['arguments']) +
                            (m['return'] is not None) for m in methods),
                         'reference_count': len(data['before']['references']),
                         'owners_match': all(m['owner_matches'] and all(f['owner_matches']
                             for f in [*m['arguments'], *([m['return']] if m['return'] else [])]) for m in methods)}
            result['observations'].append({'artifact': str(output), 'proof': proof,
                'passed': data.get('status') == 'ok' and data.get('unchanged') is True
                          and proof['passed'] and proof.get('owners_match') is True,
                'elapsed_ms': (time.perf_counter() - started) * 1000, 'exit_code': process.returncode,
                'stdout': process.stdout, 'stderr': process.stderr,
                'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']})
            assert process.returncode == 0 and result['observations'][-1]['passed'] and not wire['errors'], {
                'status': data.get('status'), 'error': data.get('error'), 'proof': proof,
                'unchanged': data.get('unchanged'), 'artifact': str(output)}
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
                                         if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    sys.exit(main())
