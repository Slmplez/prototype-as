"""Validate each declared operator/control factory in an isolated ordinary BDE."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
from bd_structure_journal import OPERATOR_INPUTS


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--names',help='Comma-separated exact factory names; omit for entire catalog')
    args=parser.parse_args();args.output.mkdir(parents=True,exist_ok=False)
    rows=[]
    factories=[('operator',name) for name in OPERATOR_INPUTS]+[('control',name) for name in ['Break','IfThen','Case','While','Switch','IfThenElse','MUX']]
    if args.names:
        names=args.names.split(',')
        if set(names)-{name for _,name in factories}:raise ValueError('Unknown factory name')
        factories=[pair for pair in factories if pair[1] in names]
    for index,(kind,name) in enumerate(factories):
        for trial in range(3):
            label=f'{index:02}-{kind}-{trial}'
            operation={'op':'create_block','kind':kind,'name':name,'position':[500,500]}
            path=args.output/(label+'.json');path.write_text(json.dumps(operation),encoding='utf-8')
            p=subprocess.run([sys.executable,str(Path(__file__).with_name('bde_creation_experiment.py')),
                '--reference',str(args.reference),'--operation',str(path),'--output',str(args.output/label)],
                capture_output=True,text=True,encoding='utf-8',timeout=90)
            (args.output/(label+'.log')).write_text(p.stdout+p.stderr,encoding='utf-8')
            result_path=args.output/label/'result.json'
            result=json.loads(result_path.read_text(encoding='utf-8')) if result_path.exists() else {}
            rows.append({'kind':kind,'name':name,'trial':trial,'passed':result.get('passed',False),
                         'error':result.get('error'),'artifact':str(result_path)})
            (args.output/'summary.json').write_text(json.dumps(rows,indent=2),encoding='utf-8')
            print(json.dumps(rows[-1]),flush=True)
            if not rows[-1]['passed']:return 1
    return 0


if __name__=='__main__':raise SystemExit(main())
