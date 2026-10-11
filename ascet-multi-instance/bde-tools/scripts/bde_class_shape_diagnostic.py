"""Bounded read-only diagnostic for the retained nested-Class failure."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import subprocess
import traceback

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter


def build():
    sources = [service.ROOT / 'scripts' / name for name in ('AscetStructureSession.cs', 'AscetStructureRead.cs', 'AscetStructureExperiment.cs')]
    resources = [service.ROOT / 'scripts' / name for name in ('bde_structure_read.st', 'bde_session_guard.st', 'bde_class_shape_probe.st', 'bde_class_shape_recovery.st')]
    binary = service.ROOT / 'analysis/live-api/AscetClassShapeDiagnostic.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    process = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetStructureSession', '/define:BDE_CLASS_SHAPE_EVAL',
        '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
        *[f'/resource:{p},{p.name}' for p in resources], *map(str, sources)], capture_output=True, text=True, timeout=30)
    if process.returncode:
        raise RuntimeError(process.stdout + process.stderr)
    return binary


class DiagnosticAdapter(NativeStructureAdapter):
    build = staticmethod(build)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failure', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    failure = json.loads(args.failure.read_text(encoding='utf-8'))
    result = {'passed': False, 'model_setters_called': 0}
    try:
        with service.live_lock(), bench.proxy() as wire:
            with DiagnosticAdapter(failure['baseline']['Main']['component'], environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                adapter._ensure_open(failure['domain'])
                result['shapes'] = adapter._exchange({'cmd': 'class_shape', 'token': failure['outstanding'][-1]})
                result['public_tree'] = adapter._exchange({'cmd': 'observe_public_tree'})
                result['models'] = adapter.observe_models(failure['domain'])
        result['request'] = wire['request'].result()
        result['response'] = wire['response'].result()
        result['proxy_errors'] = wire['errors']
        def bag(rows):
            return Counter(json.dumps(row, sort_keys=True) for row in rows)
        shapes = result['shapes']
        result['record_vs_fresh_multiset_equal'] = bag(shapes['record_shape']) == bag(shapes['fresh_shape'])
        result['record_vs_fresh_order_equal'] = shapes['record_shape'] == shapes['fresh_shape']
        result['passed'] = not wire['errors']
    except Exception:
        result['error'] = traceback.format_exc()
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'record_vs_fresh_multiset_equal', 'record_vs_fresh_order_equal')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
