"""Fixed read-only enum diagnostics; no caller selectors or model mutations."""
import argparse
import json
import os
from pathlib import Path
import bd_service as service
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    source = service.ROOT / 'scripts/AscetStructureRead.cs'
    template = service.ROOT / 'scripts/bde_enum_audit.st'
    binary = service.ROOT / 'analysis/live-api/AscetEnumAudit.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    service.run_process([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
        '/r:System.Web.Extensions.dll', f'/resource:{template},bde_structure_read.st',
        f'/out:{binary}', str(source)], 30, build_step=True)
    raw_path = (args.output / 'native.json').resolve()
    with service.live_lock():
        metric, raw = bench.run([str(binary), args.component, 'Main', str(raw_path), 'all'], raw_path)
    result = {'passed': not metric['error'] and not metric['proxy_errors'] and
              raw.get('status') == 'ok' and raw.get('dirty_before') == raw.get('dirty_after') == 0,
              'component': args.component, 'metrics': metric, 'audit': raw,
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes())
                                  for p in (source, template, Path(__file__))}}
    (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
