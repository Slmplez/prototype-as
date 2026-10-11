"""Read-only serialized diagram source type audit for immutable checkpoint design."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component',required=True)
    parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    binary=service.ROOT/'analysis/live-api/AscetSourceAudit.exe'
    template=service.ROOT/'scripts/bde_source_audit.st';source=service.ROOT/'scripts/AscetStructureRead.cs'
    compiler=Path(os.environ.get('WINDIR','C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll=Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.run_process([str(compiler),'/nologo','/platform:x86','/define:BDE_SOURCE_AUDIT',f'/r:{dll}','/r:System.Web.Extensions.dll',
        f'/out:{binary}',f'/resource:{template},bde_structure_read.st',str(source)],30,build_step=True)
    with service.live_lock():
        service.run_process([str(binary),a.component,'Main',str(a.output/'result.json'),'all'],30)
    result=json.loads((a.output/'result.json').read_text())
    result['source_manifest']={str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (template,source,Path(__file__))}
    (a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    print(json.dumps(result))


if __name__=='__main__':main()
