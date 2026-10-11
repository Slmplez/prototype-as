"""Prepare an exact isolated BDE editor before establishing formal baselines."""
import json
import os
from pathlib import Path
import shutil
import subprocess
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_class_configuration import validate_graph
from bd_instance_pending import check
from bde_isolated_runtime import live_manifest
from bde_main_workflow import wire_result


def prepare_editor(manifest_path, fixture_path, output):
    manifest, process, epoch = live_manifest(manifest_path)
    fixture_path, output = Path(fixture_path).resolve(), Path(output).resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not fixture_path.is_relative_to(owned):
        raise ValueError('Fresh owned preparation and isolated fixture required')
    fixture = json.loads(fixture_path.read_text(encoding='utf-8-sig'))
    check(dict(database=manifest['database'], process_epoch=epoch, oid=fixture['oid']))
    output.mkdir(parents=True)
    names = ('AscetBdeEditorPrepare.cs', 'AscetStructureRead.cs', 'bde_structure_read.st',
             'bde_class_configuration_read.st', 'bde_editor_prepare.st', 'bde_editor_preparation.py')
    sources = [service.ROOT / 'scripts' / name for name in names]
    result = dict(passed=False, manifest=str(Path(manifest_path).resolve()), fixture=str(fixture_path),
        component=fixture['component'], oid=fixture['oid'], process_epoch=epoch,
        source_manifest={str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources},
        business_model_calls=0, complete_case_pass=False, full_delivery=False,
        scope='Editor opening is fixture setup; persisted owner configuration graph observed, effective configuration and whole database purity not claimed')
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    save()
    try:
        source_dir = output / 'source'; source_dir.mkdir()
        for path in sources:
            shutil.copyfile(path, source_dir / path.name)
        binary = output / 'AscetBdeEditorPrepare.exe'
        dll = Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll')
        build = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetBdeEditorPrepare', '/r:'+str(dll), '/r:System.Web.Extensions.dll', '/out:'+str(binary),
            *['/resource:'+str(p)+','+p.name for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], capture_output=True, text=True, timeout=30)
        result['build'] = dict(exit_code=build.returncode, stdout=build.stdout, stderr=build.stderr)
        save()
        if build.returncode:
            raise ValueError('Fixed isolated editor host compilation failed')
        shutil.copyfile(dll, output / dll.name)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            live_manifest(manifest_path)
            reply = subprocess.run([str(binary), str(Path(manifest_path).resolve()), str(fixture_path), epoch,
                'prepare', str(output / 'observation.json')], capture_output=True, text=True, timeout=30,
                env={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])})
        result['wire'] = wire_result(wire)
        result['process'] = dict(exit_code=reply.returncode, stdout=reply.stdout, stderr=reply.stderr)
        observation = json.loads((output / 'observation.json').read_text(encoding='utf-8'))
        if reply.returncode or observation.get('status') != 'ok':
            raise ValueError('Editor initialization failed; retain exact intent and outcome: '+str(observation.get('error')))
        result['configuration_validation'] = validate_graph(observation['configuration_after'], fixture['oid'])
        result['configuration_changed_by_setup'] = observation['configuration_before'] != observation['configuration_after']
        result['opened'] = '|opened=true|' in observation['editor']
        result['sources_match'] = all(service.digest(p.read_bytes()) == result['source_manifest'][str(p.relative_to(service.ROOT))] for p in sources)
        live_manifest(manifest_path)
        result['passed'] = result['sources_match'] and not result['wire']['errors'] and observation['configuration_observation_stable']
    except Exception as error:
        result['error'] = str(error)
        if 'wire' in locals():
            result['wire'] = wire_result(wire)
    save()
    return result
