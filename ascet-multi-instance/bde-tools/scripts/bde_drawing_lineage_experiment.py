"""Read-only exact native layout/schema witnesses for retained drawing restoration."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_instance_pending import check as check_pending
from bd_native_graphical_effects import validate_current
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process


def validate_probe(probe, *, domain, token, observation):
    if (not isinstance(probe, dict) or probe.get('profile') != 'native_drawing_lineage_probe_v2'
            or probe.get('complete') is not True or probe.get('native_token') != token
            or probe.get('component_oid') != domain['oid'] or probe.get('diagram') != observation['diagram']
            or observation['diagram'] != 'Main'
            or probe.get('source_record_unchanged') is not True
            or probe.get('identity_registry_unchanged') is not True
            or type(probe.get('model_setters_called')) is not int or probe['model_setters_called'] != 0
            or probe.get('store_called') is not False):
        raise ValueError('Complete unchanged exact-scope lineage required')
    raw = validate_current(probe.get('raw_current'))
    schemas = probe.get('schemas')
    if not isinstance(schemas, dict):
        raise ValueError('Complete raw field schemas required')
    for entry in raw.values():
        if entry['kind'] == 'fields':
            fields = schemas.get(entry['class'])
            if (not isinstance(fields, list) or len(fields) != len(entry['value'])
                    or any(not isinstance(name, str) or not name for name in fields)
                    or len(fields) != len(set(fields))):
                raise ValueError('Raw field schema differs from native image')
    physical, drawing, retained = probe.get('physical'), probe.get('drawing'), probe.get('retained')
    if not isinstance(physical, list) or not isinstance(drawing, list) or not isinstance(retained, dict):
        raise ValueError('Complete physical/drawing/retained rosters required')
    for row in [*physical, *drawing, retained]:
        if (not isinstance(row, dict)
                or set(row) != {'ref', 'class', 'raw_ref', 'basic_raw_ref', 'drawing_order'}
                or not isinstance(row['ref'], str) or not re.fullmatch(r'[ne](0|[1-9][0-9]*)', row['ref'])
                or row['raw_ref'] not in raw or raw[row['raw_ref']]['class'] != row['class']
                or row['basic_raw_ref'] not in raw or type(row['drawing_order']) is not int):
            raise ValueError('Exact native and raw graphical identities required')
        basic = raw[row['basic_raw_ref']]
        if row['class'] == 'SGConnectionWrapperGO':
            fields = schemas[row['class']]
            if (not row['ref'].startswith('e') or 'graphObject' not in fields
                    or raw[row['raw_ref']]['value'][fields.index('graphObject')]
                    != {'class': basic['class'], 'ref': row['basic_raw_ref']}):
                raise ValueError('Wrapper drawing object differs from actual raw graphObject')
        elif not row['ref'].startswith('n') or row['raw_ref'] != row['basic_raw_ref']:
            raise ValueError('Node drawing object differs from actual raw identity')
        fields = schemas.get(basic['class'], [])
        if basic['kind'] != 'fields' or 'drawingOrder' not in fields:
            raise ValueError('Exact basic graphical drawingOrder field required')
        if basic['value'][fields.index('drawingOrder')] != {'class': 'SmallInteger', 'value': str(row['drawing_order'])}:
            raise ValueError('Drawing number differs from actual raw image')
    for field in ('ref', 'raw_ref', 'basic_raw_ref'):
        if (len({row[field] for row in physical}) != len(physical)
                or len({row[field] for row in drawing}) != len(drawing)
                or retained[field] in {row[field] for row in physical}):
            raise ValueError('Graphical identity collision or attached retained original')
    if {row['ref']: row for row in physical} != {row['ref']: row for row in drawing}:
        raise ValueError('Drawing and physical rosters differ')
    observed = {row['ref']: row for row in observation['entries'] if row['kind'] in ('node', 'edge')}
    if (len(observed) != len(physical) or set(observed) != {row['ref'] for row in physical}
            or any(observed[row['ref']]['native_class'] != row['class'] for row in physical)):
        raise ValueError('Lineage roster differs from complete native observation')
    if [row['drawing_order'] for row in drawing] != list(range(1, len(drawing) + 1)):
        raise ValueError('Complete normalized current drawing order required')
    parent = raw.get(probe.get('parent_raw_ref'), {})
    children = raw.get(probe.get('children_raw_ref'), {})
    if parent.get('class') != 'SGBlockDiagram' or parent.get('kind') != 'fields':
        raise ValueError('Exact raw diagram parent required')
    fields = schemas['SGBlockDiagram']
    if ('children' not in fields or children.get('kind') != 'collection'
            or parent['value'][fields.index('children')] != {'class': children['class'], 'ref': probe['children_raw_ref']}
            or children['value'] != [{'class': row['class'], 'ref': row['raw_ref']} for row in physical]):
        raise ValueError('Physical roster differs from actual raw parent collection')
    return {'passed': True, 'scope': 'identity/schema/physical/drawing evidence only; no restoration',
            'attached_objects': len(physical), 'retained_ref': retained['ref'], 'raw_objects': len(raw)}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    source, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (source, output)) or output.is_relative_to(source):
        raise ValueError('Separate owned source/output required')
    previous = json.loads((source / 'result.json').read_text())
    row = previous['rounds'][-1]
    if (previous.get('passed') is not False or row['inverse']['status'] != 'verified_local'
            or row['compensation']['status'] != 'conflict'):
        raise ValueError('Recorded second-inverse conflict required')
    journal = StructureJournal(source / 'journal')
    request = journal.read(row['edit']['change_id'])[0]['payload']
    domain = request['domain']
    manifest_path = Path(previous['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text())
    if (preparation.get('passed') is not True or domain['database'] != manifest['database']
            or endpoint_process(manifest['port']) != process['pid']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact prepared disposable instance required')
    check_pending(domain)
    output.mkdir(parents=True, exist_ok=False)
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
        'bde_structure_read.st', 'bde_session_guard.st', 'bde_native_graph_current.st',
        'bde_drawing_lineage_probe.st', 'bde_retained_layout_restore.st', 'bde_drawing_lineage_experiment.py')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    originals = lambda: {str(p.relative_to(source)): service.digest(p.read_bytes()) for p in source.rglob('*') if p.is_file()}
    result = {'passed': False, 'full_delivery': False, 'model_setters_called': 0, 'store_called': False,
        'scope': __doc__, 'source_manifest': hashes(), 'original_hashes': originals()}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2))
    save()
    wire = None
    try:
        binary = output / 'AscetDrawingLineageProbe.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetStructureSession', '/define:BDE_DRAWING_LINEAGE_EVAL', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode: raise ValueError('Fixed read-only probe build failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')
        class ProbeAdapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with ProbeAdapter(request['component'], environment=environment) as adapter:
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                if (result['native_before'] != row['inverse_expected_full'] or result['public_before'] != row['public_restored']):
                    raise ValueError('Known retained failure state changed; no repair inference')
                result['probe'] = adapter._exchange({'cmd': 'drawing_lineage_probe', 'token': row['independent_deletion']['change_id']})
                result['native_after'] = adapter.observe(domain, [])
                result['public_after'] = adapter.observe_public(domain)
                result['identity_validation'] = validate_probe(result['probe'], domain=domain,
                    token=row['independent_deletion']['change_id'], observation=result['native_before'])
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['passed'] = (result['identity_validation']['passed'] is True and result['probe']['source_record_unchanged'] is True
            and result['probe']['model_setters_called'] == 0 and result['probe']['store_called'] is False
            and result['native_before'] == result['native_after'] and result['public_before'] == result['public_after']
            and result['original_files_unchanged'] and not result['source_drift'] and not wire['errors'])
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
