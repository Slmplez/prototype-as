"""Compare retained scoped-reader binaries on the previously failing coverage."""
import argparse
import hashlib
import json
from pathlib import Path
import random
import statistics

import bd_service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--before-binary', type=Path, required=True)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--repeats', type=int, default=3)
    args = parser.parse_args()
    if not 1 <= args.repeats <= 5:
        parser.error('repeats must be 1..5')
    args.output.mkdir(parents=True, exist_ok=False)
    current = bench.compile_probes()
    binaries = {'before': args.before_binary.resolve(), 'after': current}
    baseline = json.loads(args.reference.read_text(encoding='utf-8'))
    report = {'reference': str(args.reference), 'binary_sha256': {
        name: hashlib.sha256(path.read_bytes()).hexdigest() for name, path in binaries.items()}, 'runs': []}

    def save():
        (args.output / 'results.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')

    trials = [(version, strategy, i) for version in binaries for strategy in ('public', 'handles')
              for i in range(args.repeats)]
    random.Random(20260930).shuffle(trials)
    with bd_service.live_lock():
        for version, strategy, repeat in trials:
            path = args.output / f'{version}-{strategy}-{repeat}.json'
            metric, raw = bench.run([str(binaries[version]), bench.COMPONENT, str(path.resolve()),
                                     strategy, 'all', 'semantic'], path, 25)
            metric.update(version=version, strategy=strategy, repeat=repeat)
            try:
                if metric['error'] or raw.get('status') != 'ok':
                    raise ValueError('Probe did not complete')
                metric['verification'] = bench.compare_projection(baseline, raw)
            except (ValueError, KeyError, TypeError) as error:
                metric['verification_error'] = str(error)
            metric['clean'] = bool('verification' in metric and not metric['proxy_errors']
                and all(metric[wire]['frames'] is not None for wire in ('request_wire', 'response_wire')))
            metric['cleanup'] = raw.get('cleanup')
            report['runs'].append(metric)
            save()
            print(json.dumps({k: metric[k] for k in ('version', 'strategy', 'wall_ms', 'clean', 'proxy_errors')}), flush=True)
        # Lifecycle changed for local layout reads too: verify once per strategy.
        report['local_checks'] = []
        for strategy in ('public', 'handles'):
            path = args.output / f'after-{strategy}-local-layout.json'
            metric, raw = bench.run([str(current), bench.COMPONENT, str(path.resolve()), strategy, '15,176', 'layout'], path, 20)
            try:
                if metric['error'] or raw.get('status') != 'ok':
                    raise ValueError('Local probe did not complete')
                metric['verification'] = bench.compare_projection(baseline, raw)
            except (ValueError, KeyError, TypeError) as error:
                metric['verification_error'] = str(error)
            metric['clean'] = bool('verification' in metric and not metric['proxy_errors']
                and all(metric[wire]['frames'] is not None for wire in ('request_wire', 'response_wire')))
            report['local_checks'].append({'metric': metric, 'raw': raw})
            save()
        public, handles = (r['raw'] for r in report['local_checks'])
        report['local_layout_equal'] = (all(r['metric']['clean'] for r in report['local_checks'])
            and bench.layout_projection(public) == bench.layout_projection(handles))
        report['summary'] = {}
        for version in binaries:
            for strategy in ('public', 'handles'):
                rows = [r for r in report['runs'] if r['version'] == version and r['strategy'] == strategy]
                good = [r for r in rows if r['clean']]
                report['summary'][version + '-' + strategy] = {
                    'trials': len(rows), 'clean_trials': len(good),
                    'wall_ms_median': statistics.median(r['wall_ms'] for r in good) if good else None,
                    'request_frames_median': statistics.median(r['request_wire']['frames'] for r in good) if good else None,
                    'output_bytes_median': statistics.median(r['output_bytes'] for r in good) if good else None}
        save()
    return 0 if all(r['clean'] for r in report['runs'] if r['version'] == 'after') and report['local_layout_equal'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
