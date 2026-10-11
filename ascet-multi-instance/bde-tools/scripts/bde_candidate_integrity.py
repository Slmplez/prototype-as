"""Compare saved candidate source fingerprints to current files without ASCET access."""
import argparse
import hashlib
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]


def check_artifact(path):
    path = path.resolve()
    if not path.is_relative_to(ROOT):
        raise ValueError('Candidate evidence must be in the workspace')
    raw = path.read_bytes()
    value = json.loads(raw)
    manifest = value.get('source_manifest')
    if type(manifest) is not dict or not manifest:
        raise ValueError('Nonempty source manifest required')
    drift = []
    for name, expected in manifest.items():
        if type(name) is not str or type(expected) is not str or not re.fullmatch('[0-9a-f]{64}', expected):
            raise ValueError('Exact source filename and SHA256 required')
        relative = Path(name.replace('\\', '/'))
        source = ((ROOT / 'scripts' / relative) if len(relative.parts) == 1 else ROOT / relative).resolve()
        if not source.is_relative_to(ROOT):
            raise ValueError('Candidate source must be in the workspace')
        actual = hashlib.sha256(source.read_bytes()).hexdigest() if source.is_file() else None
        if actual != expected:
            drift.append(name)
    return {'artifact': path.relative_to(ROOT).as_posix(),
            'artifact_sha256': hashlib.sha256(raw).hexdigest(),
            'experiment_passed': value.get('passed') is True,
            'source_count': len(manifest), 'source_drift': drift,
            'source_manifest_matches_current': not drift}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--artifact', type=Path, action='append', required=True)
    parser.add_argument('--ledger', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    checks = [check_artifact(path) for path in args.artifact]
    ledger = json.loads(args.ledger.read_text(encoding='utf-8'))
    missing = sum(item['state'] == 'missing' for case in ledger['cases'] for item in case['evidence'])
    result = {'passed': all(check['experiment_passed'] and check['source_manifest_matches_current']
                            for check in checks) and missing == 0,
              'scope': 'Current candidate source integrity only; not full delivery acceptance',
              'checks': checks, 'ledger': str(args.ledger), 'ledger_case_count': len(ledger['cases']),
              'missing_evidence_links': missing, 'full_delivery': False,
              'model_setters_called': 0, 'cebra_connections': 0}
    args.output.mkdir(parents=True, exist_ok=False)
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'source_counts': [row['source_count'] for row in checks],
                      'missing_evidence_links': missing}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
