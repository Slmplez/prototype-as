"""Replay recorded Class WAL with synthetic later states; no live ASCET access."""
import argparse
from copy import deepcopy
import json
from pathlib import Path
import time
import traceback

import bd_service as service
from bd_class_inverse_analysis import analyze_inverse
from bd_class_study_journal import actual_diff, read_events


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    files = ('bd_class_inverse_analysis.py', 'bd_class_tools.py', 'bd_class_study_journal.py',
             'bd_structure_journal.py', 'test_bd_class_inverse_analysis.py', 'test_bd_class_tools.py',
             'bde_class_inverse_analysis_experiment.py')
    manifest = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    inputs = {str(path.relative_to(args.source)): service.digest(path.read_bytes())
              for path in args.source.rglob('*') if path.is_file()}
    result = {'passed': False, 'scope': __doc__, 'online_evidence': False, 'native_merge_verified': False,
              'cebra_connections': 0, 'model_setters_called': 0, 'source_manifest': manifest,
              'recorded_input_hashes': inputs, 'cases': []}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    try:
        for index in range(3):
            root = args.source / f'apply-{index}.wal'
            patch = actual_diff(root)
            if patch['status'] != 'retained_applied':
                raise ValueError('Recorded complete actual applied WAL required')
            events = read_events(root)
            before = next(row['payload'] for row in events if row['kind'] == 'prepared_all')
            after = next(row['payload'] for row in events if row['kind'] == 'observed' and row['payload']['phase'] == 'after')
            after = {key: value for key, value in after.items() if key != 'phase'}
            exact = analyze_inverse(before, after, deepcopy(after))
            if not exact['collected_graph_compatible'] or not exact['original_after_matches']:
                raise ValueError('Recorded exact after failed collected graph inverse analysis')
            scenarios = [('recorded_exact_after', deepcopy(after))]
            current = deepcopy(after)
            first = current['owners'][0]['scopes']['Main']
            first['entries'].append({'ref': 'c_synthetic_later', 'kind': 'comment',
                'native_class': 'SGCommentGO', 'text': 'synthetic independent later comment',
                'position': [200, 300], 'size': [100, 20]})
            scenarios.append(('synthetic_unrelated_comment', current))
            current = deepcopy(after)
            touched = next(resource for resource in patch['resource_effects']
                           if any(delta['before'] and delta['after'] and delta['before'].get('route') != delta['after'].get('route')
                                  for delta in resource['differences']))
            delta = next(delta for delta in touched['differences']
                         if delta['before'] and delta['after'] and delta['before'].get('route') != delta['after'].get('route'))
            owner = next(owner for owner in current['owners'] if owner['oid'] == touched['oid'])
            row = next(row for row in owner['scopes'][touched['diagram']]['entries'] if row['ref'] == delta['ref'])
            row['route'] = [[x + 10, y] for x, y in row['route']]
            scenarios.append(('synthetic_touched_route_conflict', current))
            for name, observed in scenarios:
                started = time.perf_counter()
                analysis = analyze_inverse(before, after, observed)
                elapsed = (time.perf_counter() - started) * 1000
                compatible = name != 'synthetic_touched_route_conflict'
                if analysis['collected_graph_compatible'] != compatible or analysis['write_authorized']:
                    raise ValueError('Collected value merge/conflict expectation failed')
                if name == 'synthetic_unrelated_comment' and not any(
                        item['ref'] == 'c_synthetic_later' for resource in analysis['resources']
                        for item in resource['preserved_changes']):
                    raise ValueError('Later comment was not preserved')
                if not compatible and not any(conflict['code'] == 'TOUCHED_FIELD_CONFLICT'
                        and conflict.get('path') == ['route'] for resource in analysis['resources'] for conflict in resource['conflicts']):
                    raise ValueError('Exact changed route field conflict missing')
                artifact = args.output / f'round-{index}-{name}.json'
                artifact.write_text(json.dumps({'before': before, 'after': after, 'current': observed,
                                               'analysis': analysis}, indent=2), encoding='utf-8')
                result['cases'].append({'round': index, 'scenario': name, 'passed': True,
                    'elapsed_ms': elapsed, 'artifact': str(artifact.resolve()),
                    'collected_graph_compatible': compatible, 'native_write_eligibility': 'not_authorized'})
                save()
        result['passed'] = len(result['cases']) == 9
    except Exception:
        result['error'] = traceback.format_exc()
    result['input_files_unchanged'] = inputs == {str(path.relative_to(args.source)): service.digest(path.read_bytes())
        for path in args.source.rglob('*') if path.is_file()}
    result['source_manifest_unchanged'] = all(service.digest((service.ROOT / 'scripts' / name).read_bytes()) == sha
                                             for name, sha in manifest.items())
    result['passed'] &= result['input_files_unchanged'] and result['source_manifest_unchanged']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'scope', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
