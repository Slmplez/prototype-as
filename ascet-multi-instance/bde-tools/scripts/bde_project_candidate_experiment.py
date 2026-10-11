"""Independent Module message enumeration audit against native export buckets."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import shutil
import subprocess
import traceback

import bd_service as service
import bde_experiments as bench
from bd_project_messages import DECLARATION_FIELDS


def bag(rows):
    return Counter(service.dump({field:row[field] for field in DECLARATION_FIELDS}) for row in rows)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--project', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=range(1,4), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    sources = [service.ROOT/'scripts'/name for name in ('AscetProjectMessagesRead.cs','AscetStructureRead.cs',
               'bde_project_candidate_audit.st','bde_project_messages.st','bde_database_identity.st',
               'bde_project_candidate_experiment.py','bd_project_messages.py','bde_experiments.py')]
    result = {'passed':False,'rounds':[],'setter_called':False,'business_writes':False,
              'not_verified':['independent compatibility predicate','isolated ambiguity fixture',
                              'experimental targets','runtime delivery','reopen lifecycle'],
              'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in sources}}

    def save():
        (args.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')

    try:
        service.ensure_probe()
        dll = Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        shutil.copy2(dll, args.output / dll.name)
        compiler = Path(os.environ.get('WINDIR','C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        binaries = {}
        for name,template in [('production','bde_project_messages.st'),('audit','bde_project_candidate_audit.st')]:
            binary = args.output/(name+'.exe')
            build = subprocess.run([str(compiler),'/nologo','/platform:x86',f'/r:{dll}','/r:System.Web.Extensions.dll',
                f'/resource:{service.ROOT/"scripts"/template},bde_structure_read.st',
                f'/resource:{service.ROOT/"scripts/bde_database_identity.st"},bde_database_identity.st',
                '/main:AscetProjectMessagesRead',f'/out:{binary}',str(sources[0]),str(sources[1])],capture_output=True,timeout=30)
            (args.output/(name+'.build.stdout.log')).write_bytes(build.stdout)
            (args.output/(name+'.build.stderr.log')).write_bytes(build.stderr)
            assert build.returncode==0, build.stdout.decode(errors='replace')
            binaries[name]=binary
        for repeat in range(args.repeats):
            row = {'repeat':repeat,'reads':{}}
            result['rounds'].append(row)
            raw = {}
            with service.live_lock():
                for name in ('production','audit'):
                    output=args.output/(f'{name}-{repeat}.json')
                    metric, raw[name] = bench.run([str(binaries[name]),args.project,'-',str(output),'all'],output,180)
                    row['reads'][name]=metric
                    assert not metric['error'] and raw[name]['status']=='ok'
                    assert raw[name]['dirty_before']==raw[name]['dirty_after']>=0
            for key in ('database','database_session','ascet_process_epoch','project_oid'):
                assert raw['production'][key]==raw['audit'][key]
            production=raw['production']['structure'];audit=raw['audit']['structure']
            assert bag(production['declarations'])==bag(audit['declarations'])
            for name in ('production','audit'):
                assert bag(raw[name]['public_before']['declarations'])==bag(raw[name]['public_after']['declarations'])==bag(audit['declarations'])
            original={(binding['import']['owner_oid'],binding['import']['alias']):binding for binding in production['bindings']}
            audited={(binding['import']['owner_oid'],binding['import']['alias']):binding for binding in audit['audits']}
            assert len(original)==len(production['bindings']) and len(audited)==len(audit['audits']) and set(original)==set(audited)
            for key,binding in original.items():
                assert bag(binding['candidates'])==bag(audited[key]['candidates'])
                assert bag([r for r in binding['label_candidates'] if r['message']])==bag(audited[key]['label_candidates'])
            row.update(passed=True,declarations=len(audit['declarations']),imports=len(audited),
                       candidate_multiplicity=[len(binding['candidates']) for binding in audit['audits']])
            save()
        result['passed']=True
    except Exception:
        result['error']=traceback.format_exc()
    result['source_changes_during_run']=[name for name,sha in result['source_manifest'].items()
        if service.digest((service.ROOT/name).read_bytes())!=sha]
    if result['source_changes_during_run']:result['passed']=False
    save()
    print(json.dumps({'passed':result['passed'],'rounds':len(result['rounds'])}))
    return 0 if result['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
