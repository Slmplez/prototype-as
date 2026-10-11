"""One supplemental original-reference PRIVATE repair; never promote a failed run."""
import argparse
import json
import os
from pathlib import Path
import subprocess

import bd_class_tools as tools
import bd_service as service
from bd_edit_journal import fingerprint
from bd_private_registry import validate_descriptor, STATIC_EXPORT
from bde_private_host_exit_experiment import PrivateBridge, manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--case', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--action', choices=('repair_ordered_prefix', 'repair_probe_collision'), default='repair_ordered_prefix')
    args = parser.parse_args()
    binding = validate_descriptor(json.loads((args.case / 'session.json').read_text(encoding='utf-8')))
    if binding['source_manifest'] != manifest():
        raise ValueError('Original failed material source cannot rebind')
    failure = json.loads((args.case / 'failure.json').read_text(encoding='utf-8'))
    args.output.mkdir(parents=True, exist_ok=False)
    sources = ['AscetPrivatePhysicalRepair.cs', 'bde_native_private_physical_repair.st',
               'bde_native_private_registry.st', 'bde_private_physical_repair_experiment.py']
    supplemental = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sources}
    result = {'passed': False, 'full_delivery': False, 'original_failed_run_remains_failed': True,
              'original_binding': binding, 'supplemental_source_manifest': supplemental,
              'scope': 'compensate exact confirmed removal prefix, then minimal original-reference private recovery',
              'model_setters_called': 0, 'restoration_hold_released': False}
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    files = [service.ROOT / 'scripts' / name for name in tools.SOURCES] + [service.ROOT / 'scripts' / name for name in sources]
    binary = service.ROOT / 'analysis/live-api/AscetPrivatePhysicalRepair.exe'
    service.run_process(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
        '/main:AscetPrivatePhysicalRepair', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
        f'/out:{binary}', *[f'/resource:{path},{path.name}' for path in files if path.suffix == '.st'],
        *[str(path) for path in files if path.suffix == '.cs']], 30, build_step=True)
    environment = {**os.environ, 'ASCET_BD_ENDPOINT_PORT': '32503'}
    with service.live_lock():
        bridge = PrivateBridge(binding, environment)
        try:
            retained = bridge._exchange({'cmd': 'lookup'})
            observed = bridge.request('observe')
            if observed != failure['current']:
                raise ValueError('Original failed complete private observation changed')
            service.write_once(args.output / 'original-observation.json', observed)
        finally:
            bridge.close()
        service.write_once(args.output / 'repair-started.json', {'descriptor': binding,
            'expected_observation_sha256': fingerprint(observed), 'action': args.action,
            'supplemental_source_manifest': supplemental, 'production_write_authorized': False})
        process = subprocess.run([str(binary), str((args.case / 'session.json').resolve()), args.action,
                                  str((args.case / 'failure.json').resolve())], env=environment,
                                 capture_output=True, text=True, encoding='utf-8', timeout=40)
        result.update(exit_code=process.returncode, stdout=process.stdout, stderr=process.stderr)
        save()
        if process.returncode != 0:
            raise RuntimeError('Supplemental repair failed; original registry retained')
        bridge = PrivateBridge(binding, environment)
        try:
            after = bridge._exchange({'cmd': 'lookup'})
            if any(fingerprint(retained[key]) != fingerprint(after[key]) for key in STATIC_EXPORT):
                raise ValueError('Supplemental repair replaced static native material')
            sequence = 0
            def dispatch(action, index):
                nonlocal sequence
                service.write_once(args.output / f'continuation-{sequence:03d}-started.json', {'action': action, 'index': index})
                reply = bridge.request(action, index)
                service.write_once(args.output / f'continuation-{sequence:03d}-observed.json', reply)
                sequence += 1
                return reply
            while after['physical_pending'] is not None:
                after = dispatch('physical_next', after['physical_pending']['completed'] + 1)
            while after['status']['recovered'] < len(after['recovery_plan']):
                after = dispatch('recover', after['status']['recovered'] + 1)
            if after['status']['state'] != 'recovered' or after['independent_x'] != retained['independent_x_before'] + 7:
                raise ValueError('Supplemental recovery did not preserve independent edit')
            service.write_once(args.output / 'recovered-observation.json', bridge.request('observe'))
            reset = bridge.request('reset')
            if reset['current_matches'] is not True:
                raise ValueError('Supplemental private CURRENT not restored')
            release = bridge._exchange({'cmd': 'release'})
            size = bridge._exchange({'cmd': 'size'})
            if size != 0:
                raise ValueError('Unexpected private registry roots after supplementary release')
            result.update(passed=True, exact_original_static_material_preserved=True,
                          original_registry_released=True, final_registry_size=size, reset=reset, release=release)
        finally:
            bridge.close()
    result['original_source_drift'] = [name for name, digest in manifest().items() if binding['source_manifest'][name] != digest]
    result['passed'] &= not result['original_source_drift']
    save()
    print(json.dumps({key: result[key] for key in ('passed', 'original_failed_run_remains_failed', 'final_registry_size')}))


if __name__ == '__main__':
    main()
