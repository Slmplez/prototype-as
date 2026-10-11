"""Three ordinary fixtures x three route/text/move/delete/inverse chains."""
import argparse
import json
from pathlib import Path
import subprocess
import sys


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    fixtures=['BDE_Tool_Experiments\\Trial_data_20260930_012339',
              'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955',
              'BDE_Tool_Experiments\\Trial_Messages_20260930_132738']
    result={'passed':False,'scenarios':[],'scope':'route plus continuous chain; not full tool eval'}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    save()
    for index,component in enumerate(fixtures):
        for trial in range(3):
            folder=a.output/f'{index}-{trial}'
            p=subprocess.run([sys.executable,str(Path(__file__).with_name('bde_chain_experiment.py')),
                '--route','--component',component,'--output',str(folder)],capture_output=True,text=True,encoding='utf-8',timeout=180)
            (a.output/f'{index}-{trial}.log').write_text(p.stdout+p.stderr,encoding='utf-8')
            row=json.loads((folder/'result.json').read_text(encoding='utf-8')) if (folder/'result.json').exists() else {}
            result['scenarios'].append({'component':component,'trial':trial,'passed':row.get('passed',False),'artifact':str(folder/'result.json')});save()
            print(json.dumps(result['scenarios'][-1]),flush=True)
            if not row.get('passed'):return 1
    result['passed']=True;save();return 0


if __name__=='__main__':raise SystemExit(main())
