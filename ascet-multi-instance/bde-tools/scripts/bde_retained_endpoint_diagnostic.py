"""Read the exact failed isolated deletion record without rebinding its graph."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import traceback

import bd_service as service


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    experiment = args.experiment.resolve()
    previous = json.loads((experiment / 'result.json').read_text(encoding='utf-8'))
    edit = previous['rounds'][-1]['edit']
    if previous.get('passed') is not False or edit.get('status') != 'outcome_unknown' or edit.get('automatic_retry') is not False:
        raise ValueError('An unknown non-replayed isolated deletion is required')
    fixture = json.loads((service.ROOT / previous['fixture_result']).read_text(encoding='utf-8'))
    manifest = Path(previous['manifest']).resolve()
    if (not manifest.is_relative_to(service.ROOT / 'analysis/bde-experiments')
            or not experiment.is_relative_to(service.ROOT / 'analysis/bde-experiments')
            or not args.output.resolve().is_relative_to(service.ROOT / 'analysis/bde-experiments')):
        raise ValueError('Owned BDE experiment paths are required')
    if args.output.resolve().is_relative_to(experiment) or args.output.resolve().is_relative_to(manifest.parent):
        raise ValueError('Diagnostic output must be outside original evidence/runtime')
    args.output.mkdir(parents=True, exist_ok=False)
    original_hashes = lambda: {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                             for path in experiment.rglob('*') if path.is_file()}
    names = ('AscetBdeRetainedEndpointProbe.cs', 'AscetStructureRead.cs', 'bde_retained_endpoint_probe.st',
             'bde_retained_endpoint_diagnostic.py', 'bde_edge_restore_guard.st',
             'bde_native_collection_merge.st', 'bde_parent_order_inverse.st')
    source_hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in names}
    result = {'passed': False, 'scope': __doc__, 'original_hashes': original_hashes(),
              'source_manifest': source_hashes(), 'restored': False, 'automatic_retry': False,
              'pending_cleared': False, 'full_delivery': False}
    try:
        service.ensure_probe()
        binary = args.output.resolve() / 'AscetBdeRetainedEndpointProbe.exe'
        service.run_process(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetBdeRetainedEndpointProbe', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            '/resource:' + str(service.ROOT / 'scripts/bde_retained_endpoint_probe.st') + ',bde_retained_endpoint_probe.st',
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name
              for name in ('bde_edge_restore_guard.st', 'bde_native_collection_merge.st', 'bde_parent_order_inverse.st')],
            str(service.ROOT / 'scripts/AscetBdeRetainedEndpointProbe.cs'),
            str(service.ROOT / 'scripts/AscetStructureRead.cs')], 30, build_step=True)
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', binary.parent / 'Etas.AscetNET.dll')
        native_output = args.output.resolve() / 'native.json'
        with service.live_lock():
            completed = subprocess.run([str(binary), str(manifest), str(native_output), previous['process_epoch'],
                fixture['component'], fixture['oid'], edit['change_id']], capture_output=True, text=True,
                encoding='utf-8', timeout=30)
        result['process'] = {'exit_code': completed.returncode, 'stdout': completed.stdout, 'stderr': completed.stderr}
        result['native'] = json.loads(native_output.read_text(encoding='utf-8'))
        result['source_drift'] = [name for name, sha in source_hashes().items() if result['source_manifest'][name] != sha]
        result['original_evidence_unchanged'] = original_hashes() == result['original_hashes']
        observation = result['native'].get('observation', {})
        result['passed'] = (completed.returncode == 0 and result['native'].get('passed') is True
                            and observation.get('native_record_unchanged') is True
                            and observation.get('parent_order_unchanged') is True
                            and result['original_evidence_unchanged'] and not result['source_drift'])
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        result['original_evidence_unchanged'] = original_hashes() == result['original_hashes']
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'restored', 'original_evidence_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
