"""Run fixed isolated structural operations with durable step logs and wire counts."""
import argparse
import json
from pathlib import Path
import bd_service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--kind', choices=['data', 'state'], required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    source = bench.ROOT / 'scripts/AscetStructureExperiment.cs'
    binary = bench.ROOT / 'analysis/live-api/AscetStructureExperiment.exe'
    bd_service.ensure_probe()
    bd_service.run_process([r'C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe', '/nologo', '/platform:x86',
        r'/r:E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
        '/out:' + str(binary), str(source)], 30, build_step=True)
    with bd_service.live_lock():
        metric, _ = bench.run([str(binary), str(args.output.resolve()), args.kind], args.output / 'probe.json', 45)
    events = [json.loads(p.read_text(encoding='utf-8')) for p in sorted(args.output.glob('[0-9]*.json'))]
    passed = not metric['error'] and not metric['proxy_errors'] and events and events[-1]['kind'] == 'result'
    result = {'status': 'passed' if passed else 'failed', 'metric': metric, 'events': events,
              'source_sha256': bd_service.digest(source.read_text(encoding='utf-8'))}
    (args.output / 'result.json').write_text(json.dumps(result, indent=2, ensure_ascii=False), encoding='utf-8')
    print(json.dumps({'status': result['status'], 'metric': metric, 'last_event': events[-1] if events else None}, ensure_ascii=False))
    return 0 if passed else 1


if __name__ == '__main__':
    raise SystemExit(main())
