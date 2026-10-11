"""Same-coverage public/bulk reads plus actual Doge delivery for an exact fixture."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
import bde_experiments as bench
from bde_full_read_experiment import verify
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--component', required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'component': args.component, 'runs': [], 'calls': [],
              'scope': 'all raw collected semantic fields; process source and actual complete Tool.call delivery',
              'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes())
                  for f in (service.ROOT / 'scripts').glob('*') if f.suffix in ('.py', '.cs', '.st')
                  and f.name.startswith(('bd', 'AscetRead', 'format_bd'))}}
    for f in (service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'):
        result['source_manifest'][str(f.relative_to(service.ROOT))] = service.digest(f.read_bytes())
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    def record(call):
        result['calls'].append(call)
        save()
    try:
        binary = service.ensure_probe()
        reference = None
        for trial in range(args.repeats):
            for mode in ('field_getters', 'bulk_full'):
                os.environ.update(ASCET_BD_READ_BATCH='0', ASCET_BD_BULK_GRAPH='0',
                                  ASCET_BD_BULK_FULL='1' if mode == 'bulk_full' else '0')
                raw_path = (args.output / (mode + '-' + str(trial) + '.json')).resolve()
                with service.live_lock():
                    metrics, raw = bench.run([str(binary), args.component, str(raw_path), '--current', 'full'], raw_path)
                metrics.update(mode=mode, trial=trial)
                result['runs'].append(metrics)
                save()
                assert not metrics['error'] and not metrics['proxy_errors'], metrics
                if reference is None:
                    reference = raw
                metrics['verification'] = verify(reference, raw)
                metrics['processes'] = {d['name']: [p['name'] for p in d.get('processes', [])] for d in raw['diagrams']}
                save()
                print(json.dumps({k: metrics[k] for k in ('mode', 'trial', 'wall_ms', 'request_wire', 'processes')}), flush=True)
        client = ToolClient(args.output, str(args.output.resolve()), record)
        head, body, error = client.call('bd_read', {'component': args.component})
        assert not error, body
        snapshot = service.load_record(head['snapshot'], 's_', 'snapshots')
        assert body == snapshot['logic'], 'Incomplete Doge pagination delivery'
        raw_path = service.STORE / 'raw' / (snapshot['snapshot'] + '.json')
        raw = json.loads(raw_path.read_text(encoding='utf-8'))
        result['tool_delivery'] = {'snapshot': head['snapshot'], 'bytes': len(body.encode('utf-8')),
                                   'verification': verify(reference, raw)}
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
