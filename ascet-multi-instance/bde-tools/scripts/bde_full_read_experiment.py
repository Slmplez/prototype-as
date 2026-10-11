"""Equal-coverage full semantic reader comparison, never writes ASCET models."""
import argparse
import hashlib
import json
from pathlib import Path
import random
import statistics

import bd_service
import bde_experiments as bench
from format_bd_api_read import build


def semantic_payload(raw):
    # Keep ALL other raw fields, including metadata, formulas, default data,
    # duplicate occurrences, pin sequences, pagination and method source.
    ignored = {'started_at_utc', 'observed_at_utc', 'elapsed_ms', 'cleanup', 'read_profile'}
    return {k: v for k, v in raw.items() if k not in ignored}


def verify(reference, raw):
    if raw.get('status') != 'ok' or raw.get('issues'):
        raise ValueError('Incomplete reader result')
    if not raw.get('ascet_process_epoch') or raw['ascet_process_epoch'] != reference['ascet_process_epoch']:
        raise ValueError('Process identity changed')
    if raw.get('dirty_editor_count_before') != 0 or raw.get('dirty_editor_count_after') != 0:
        raise ValueError('Dirty state is not clean')
    if semantic_payload(reference) != semantic_payload(raw):
        keys = sorted(k for k in set(reference) | set(raw)
                      if semantic_payload(reference).get(k) != semantic_payload(raw).get(k))
        raise ValueError('Raw full-payload mismatch: ' + ','.join(keys))
    compact, counts, unresolved = build(raw)
    return {'raw_all_semantic_fields_equal': True,
            'semantic_sha256': bd_service.digest(semantic_payload(raw)),
            'counts': counts, 'unresolved_bindings': unresolved}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--before-binary', type=Path, required=True)
    parser.add_argument('--repeats', type=int, default=3)
    args = parser.parse_args()
    if not 1 <= args.repeats <= 5:
        parser.error('repeats must be 1..5')
    args.output.mkdir(parents=True, exist_ok=False)
    binaries = {'before': args.before_binary.resolve(), 'after': bd_service.ensure_probe()}
    report = {'component': bench.COMPONENT, 'runs': [], 'binary_sha256': {
        key: hashlib.sha256(path.read_bytes()).hexdigest() for key, path in binaries.items()},
        'scope': 'same complete collected semantics, not a scoped topology comparison',
        'cache': 'single observation only; repeated occurrences reuse first sample; not atomic'}

    def save():
        (args.output / 'results.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')

    def run(version, label):
        path = args.output / (label + '.json')
        metric, raw = bench.run([str(binaries[version]), bench.COMPONENT, str(path.resolve()), '--current', 'full'], path)
        metric.update(version=version, cleanup=raw.get('cleanup'), profile=raw.get('read_profile'))
        return metric, raw

    with bd_service.live_lock():
        metric, baseline = run('before', 'baseline')
        report['baseline'] = metric
        save()
        if metric['error'] or metric['proxy_errors']:
            raise RuntimeError('Baseline failed; see retained results')
        verify(baseline, baseline)
        trials = [(version, i) for version in binaries for i in range(args.repeats)]
        random.Random(20260930).shuffle(trials)
        for version, repeat in trials:
            metric, raw = run(version, version + '-' + str(repeat))
            try:
                metric['verification'] = verify(baseline, raw)
            except (ValueError, KeyError, TypeError) as error:
                metric['verification_error'] = str(error)
            metric['clean'] = bool('verification' in metric and not metric['error'] and not metric['proxy_errors']
                and all(metric[wire]['frames'] is not None for wire in ('request_wire', 'response_wire')))
            report['runs'].append(metric)
            save()
            print(json.dumps({k: metric[k] for k in ('version', 'wall_ms', 'clean', 'request_wire', 'verification_error') if k in metric}), flush=True)
        report['summary'] = {}
        for version in binaries:
            rows = [r for r in report['runs'] if r['version'] == version]
            good = [r for r in rows if r['clean']]
            report['summary'][version] = {'trials': len(rows), 'clean': len(good),
                **{key: statistics.median(r[key] for r in good) if good else None for key in ('wall_ms', 'output_bytes')},
                'request_frames': statistics.median(r['request_wire']['frames'] for r in good) if good else None,
                'cleanup_ms': statistics.median(r['cleanup']['elapsed_ms'] for r in good) if good else None}
        save()
    return 0 if all(r['clean'] for r in report['runs']) else 1


if __name__ == '__main__':
    raise SystemExit(main())
