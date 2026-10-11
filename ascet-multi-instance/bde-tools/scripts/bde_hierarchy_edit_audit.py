"""Audit saved full public observations against the allowed actual edge patches."""
import argparse
from collections import Counter
import json
from pathlib import Path
from bde_public_oracle import public_projection, native_projection
import bd_service as service


def signature(tree):
    return tuple((scope, tuple(sorted(counts.items()))) for scope, counts in sorted(tree.items()))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError('Evidence output must be new')
    result = json.loads(args.result.read_text(encoding='utf-8'))
    assert result['passed'] and not result['outstanding'] and not result['source_changes_during_run']
    baseline = {scope: public_projection(graph) for scope, graph in result['public_baseline'].items()}
    allowed = {signature(baseline)}
    patch_count = 0
    for case in result['cases']:
        state = {scope: Counter(counts) for scope, counts in baseline.items()}
        for operation in ('disconnect', 'connect'):
            receipt = case[operation]
            assert receipt['status'] == 'applied_observed' and receipt['requested_effect_verified']
            assert len(receipt['differences']) == 1
            patch = receipt['differences'][0]
            for side in ('before', 'after'):
                assert patch[side] is None or patch[side]['kind'] == 'edge'
            removed = native_projection([patch['before']]) if patch['before'] else Counter()
            assert all(state[case['scope']][row] >= count for row, count in removed.items())
            state[case['scope']] -= removed
            state[case['scope']] += native_projection([patch['after']]) if patch['after'] else Counter()
            allowed.add(signature(state))
            patch_count += 1
        assert signature(state) == signature(baseline)
        if 'rewire' in case:
            receipt = case['rewire']
            assert receipt['status'] == 'applied_observed' and receipt['requested_effect_verified']
            assert len(receipt['differences']) == 1
            patch = receipt['differences'][0]
            assert all(patch[side]['kind'] == 'edge' for side in ('before', 'after'))
            assert patch['before']['target'] == patch['after']['target']
            assert patch['before']['source'] != patch['after']['source']
            removed = native_projection([patch['before']])
            assert all(state[case['scope']][row] >= count for row, count in removed.items())
            state[case['scope']] -= removed
            state[case['scope']] += native_projection([patch['after']])
            allowed.add(signature(state))
            patch_count += 1
    assert result['public_observations']
    for index, observation in enumerate(result['public_observations']):
        actual = {scope: public_projection(graph) for scope, graph in observation.items()}
        assert signature(actual) in allowed, f'Unexpected full public-tree change at observation {index}'
    evidence = {'passed': True, 'source_result_sha256': service.digest(args.result.read_bytes()),
        'audit_source_sha256': service.digest(Path(__file__).read_bytes()), 'online_calls': 0,
        'public_observations': len(result['public_observations']), 'actual_edge_patches': patch_count,
        'scope': 'all saved public-tree projection fields and multiplicity; each observation matches baseline or one allowed actual patch',
        'not_verified': ['native object identity', 'parent children order', 'declarations', 'method bodies', 'Undo', 'visual appearance']}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(evidence, indent=2), encoding='utf-8')
    print(json.dumps(evidence))


if __name__ == '__main__':
    main()
