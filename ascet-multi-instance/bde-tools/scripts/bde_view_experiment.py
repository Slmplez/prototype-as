"""Probe the fixed sandbox's native BDE view chain with real frame metrics."""
import argparse
import json
from pathlib import Path

import bd_service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    source = bench.ROOT / 'scripts/AscetBdeViewProbe.cs'
    binary = bench.ROOT / 'analysis/live-api/AscetBdeViewProbe.exe'
    report = {'source': str(source), 'scope': 'fixed isolated fixture; open or inspect view, no model setter'}
    try:
        bd_service.ensure_probe()
        bd_service.run_process([
            r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe', '/nologo', '/platform:x86',
            r'/r:E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
            '/out:' + str(binary), str(source)], 30, build_step=True)
        with bd_service.live_lock():
            report['metric'], report['probe'] = bench.run(
                [str(binary), str((args.output / 'probe.json').resolve())], args.output / 'probe.json', 20)
        probe = report['probe'] or {}
        report['status'] = 'passed' if (
            not report['metric']['error'] and probe.get('same_local_fields') is True
            and probe.get('dirty_before') == probe.get('dirty_after')
        ) else 'failed'
    except Exception as error:
        report.update(status='failed', error=str(error))
    (args.output / 'result.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps(report, ensure_ascii=False))
    return 0 if report['status'] == 'passed' else 1


if __name__ == '__main__':
    raise SystemExit(main())
