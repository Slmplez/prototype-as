"""Measure the fixed structural reader (separate coverage from full semantic read)."""
import argparse
import json
from pathlib import Path
import bd_service
import bde_experiments as bench


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--component', required=True)
    p.add_argument('--diagram', default='Main')
    p.add_argument('--targets', default='all')
    p.add_argument('--output', type=Path, required=True)
    a = p.parse_args()
    a.output.mkdir(parents=True, exist_ok=False)
    binary = bench.ROOT / 'analysis/live-api/AscetStructureRead.exe'
    bd_service.ensure_probe()
    bd_service.run_process([r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe', '/nologo', '/platform:x86',
        r'/r:E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
        '/resource:' + str(bench.ROOT / 'scripts/bde_structure_read.st') + ',bde_structure_read.st',
        '/out:' + str(binary), str(bench.ROOT / 'scripts/AscetStructureRead.cs')], 30, build_step=True)
    with bd_service.live_lock():
        metric, raw = bench.run([str(binary), a.component, a.diagram, str((a.output / 'probe.json').resolve()), a.targets], a.output / 'probe.json', 25)
    result = {'metric': metric, 'status': raw.get('status'), 'same_dirty': raw.get('dirty_before') == raw.get('dirty_after')}
    (a.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result))
    return 0 if raw.get('status') == 'ok' and not metric['error'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
