"""Serial smoke coverage for supported ordinary BDE creation kinds; not a full eval gate."""
import argparse
import json
from pathlib import Path
import subprocess
import sys


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--kinds', required=True)
    args = parser.parse_args()
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    args.output.mkdir(parents=True, exist_ok=False)
    results = []
    for kind in args.kinds.split(','):
        op = {'op': 'create_block', 'kind': kind, 'name': 'Eval_' + kind, 'position': [1600, 200]}
        if kind == 'enumeration':
            op['definition'] = fixture['enum_path']
        elif kind == 'component':
            op['definition'] = fixture['source_path']
        elif kind == 'operator':
            op.update(name='+', arity=2)
        elif kind == 'control':
            op.update(name='MUX', arity=2)
        elif kind == 'existing_model':
            op['name'] = 'AEB_CurrentState'
        elif kind == 'delta_t':
            op['name'] = 'dT'
        operation = args.output / (kind + '.json')
        operation.write_text(json.dumps(op), encoding='utf-8')
        command = [sys.executable, str(Path(__file__).with_name('bde_creation_experiment.py')),
                   '--reference', str(args.reference), '--operation', str(operation), '--output', str(args.output / kind)]
        completed = subprocess.run(command, capture_output=True, text=True, timeout=90)
        (args.output / (kind + '.stdout.txt')).write_text(completed.stdout + completed.stderr, encoding='utf-8')
        result_path = args.output / kind / 'result.json'
        row = json.loads(result_path.read_text(encoding='utf-8')) if result_path.exists() else {'passed':False,'error':'No result'}
        results.append({'kind':kind,'passed':row.get('passed',False),'error':row.get('error')})
        (args.output/'summary.json').write_text(json.dumps(results,ensure_ascii=False,indent=2),encoding='utf-8')
        print(json.dumps(results[-1]), flush=True)
        if not row.get('passed'):
            return 1
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
