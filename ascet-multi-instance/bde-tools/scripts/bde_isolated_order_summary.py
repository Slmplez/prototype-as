"""Summarize same-candidate isolated delete/disconnect trials without gate upgrades."""
import argparse
import json
from pathlib import Path
import statistics

import bd_service as service


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiments', nargs=6, type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    expected = {(operation, fixture) for operation in ('delete_node', 'disconnect_data')
                for fixture in ('literal_fanout', 'operator_chain', 'operator_fanout')}
    records = [(path, json.loads((path / 'result.json').read_text(encoding='utf-8'))) for path in args.experiments]
    candidate = records[0][1]['source_manifest']
    cases = []
    timings = {}
    for path, record in records:
        rounds = record['rounds']
        wire = record['wire']
        key = (record['operation'], record['fixture_variant'])
        valid = (record['passed'] is True and len(rounds) == 3 and record['source_manifest'] == candidate
                 and not record['source_drift'] and record['assertion_delta'] == 0 and not wire['errors']
                 and all(row['passed'] and row['exact_restored'] and row['graphical_apply_validation']['passed']
                     and row['graphical_inverse_validation']['passed']
                     and row['native_recovery_before_oracle']['current_graphical_matches_terminal'] is True
                     and row['native_recovery_after_oracle']['current_graphical_matches_terminal'] is True for row in rounds))
        for direction in ('requests', 'responses'):
            valid = valid and wire[direction]['parse_error'] is None and wire[direction]['incomplete_bytes'] == 0
        cases.append({'operation': key[0], 'fixture': key[1], 'passed': valid,
                      'artifact': str(path / 'result.json'), 'artifact_sha256': service.digest((path / 'result.json').read_bytes()),
                      'rounds': len(rounds), 'edit_ms': [row['edit_ms'] for row in rounds],
                      'inverse_ms': [row['inverse_ms'] for row in rounds], 'wire': wire})
    for operation in ('delete_node', 'disconnect_data'):
        timings[operation] = {}
        for direction in ('edit_ms', 'inverse_ms'):
            values = [value for case in cases if case['operation'] == operation for value in case[direction]]
            timings[operation][direction] = {'samples': len(values), 'min': min(values), 'median': statistics.median(values),
                                             'max': max(values), 'p95_accepted': False}
    drift = [name for name, sha in candidate.items() if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != sha]
    result = {'passed': len(set((case['operation'], case['fixture']) for case in cases)) == 6
                and {(case['operation'], case['fixture']) for case in cases} == expected
                and all(case['passed'] for case in cases) and not drift,
              'scope': 'two ordinary operations,three graph fixtures,three rounds each;not complete family/raw-field/fault/UI/FLOW acceptance',
              'full_delivery': False, 'cases': cases, 'timings': timings, 'source_manifest': candidate,
              'source_drift': drift, 'rounds': sum(case['rounds'] for case in cases),
              'not_verified': ['all native block families', 'full original raw-field/branch-Set identity',
                               'independent edit/detached-field conflicts', 'real native setter/store/transport faults',
                               'Class creation/local inverse', 'original display01 recovery', 'UI/FLOW/performance/release gates']}
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result[key] for key in ('passed', 'rounds', 'timings', 'source_drift')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
