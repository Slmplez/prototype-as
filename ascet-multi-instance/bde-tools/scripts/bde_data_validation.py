"""Validate ordinary BDE edits on the existing isolated data fixture, serially."""
import argparse
import json
from pathlib import Path
import subprocess
import sys

import bd_service as service


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    raw = json.loads(args.reference.read_text(encoding='utf-8'))
    if raw['component'] != 'BDE_Tool_Experiments\\Trial_data_20260930_012339' or raw['oid'] != '040ts00000001qg714f06gl6l0bgk':
        raise ValueError('This validation is restricted to the recorded isolated data fixture')
    if raw['structure']['diagram_kind'] != 'block_diagram' or raw['dirty_after'] != 0:
        raise ValueError('Expected a clean ordinary BDE reference')
    rows = {row['ref']: row for row in raw['structure']['entries']}
    edges = [row for row in rows.values() if row['kind'] == 'edge']
    if len(edges) != 1 or edges[0]['source'] != 'p8' or edges[0]['target'] != 'p3':
        raise ValueError('Fixture baseline differs; no writes started')
    targets = sorted(rows)
    cases = [('connect_data', [targets, 'p6', 'p4']),
             ('disconnect_data', [targets, edges[0]['ref']]),
             ('rewire_data', [targets, edges[0]['ref'], 'p6']),
             ('delete_node', [targets, 'n7'])]
    args.output.mkdir(parents=True, exist_ok=False)
    report = {'scope': 'ordinary BDE isolated fixture; not state-machine or business validation',
              'passed': False, 'cases': []}
    for operation, arguments in cases:
        folder = args.output / operation
        proc = subprocess.run([sys.executable, str(service.ROOT/'scripts/bde_structure_session_experiment.py'),
            '--reference', str(args.reference.resolve()), '--operation', operation,
            '--arguments', json.dumps(arguments), '--verify-public', '--output', str(folder.resolve())],
            text=True, capture_output=True)
        (args.output / (operation + '.log')).write_text(proc.stdout + proc.stderr, encoding='utf-8')
        result = json.loads((folder/'result.json').read_text(encoding='utf-8')) if (folder/'result.json').exists() else {}
        report['cases'].append({'operation': operation, 'exit_code': proc.returncode,
            'passed': result.get('passed', False), 'requested_effect_verified': result.get('edit', {}).get('requested_effect_verified'),
            'independent_restored': result.get('independent_restored'), 'metric': result.get('metric')})
        (args.output/'result.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
        if proc.returncode or not result.get('passed'):
            break  # Preserve recovery materials; never continue after an uncertain mutation.
    report['passed'] = len(report['cases']) == len(cases) and all(c['passed'] for c in report['cases'])
    (args.output/'result.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report))
    return 0 if report['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
