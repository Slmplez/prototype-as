"""Separate order-only restoration of originals after completed inverse drift."""
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
import bd_instance_pending as pending
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_graphical_effects import validate_current, validate_actual_diff, _same_image
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
from bde_drawing_lineage_plan import attached_original_layout


def validate_probe(probe, domain, observation):
    if (probe.get('profile') != 'attached_order_probe_v1' or probe.get('complete') is not True
            or probe.get('component_oid') != domain['oid'] or probe.get('diagram') != 'Main'
            or probe.get('generation') != observation['generation']
            or probe.get('identity_registry_unchanged') is not True
            or type(probe.get('model_setters_called')) is not int or probe['model_setters_called'] != 0
            or probe.get('store_called') is not False):
        raise ValueError('Exact read-only attached scope required')
    raw = validate_current(probe['raw_current'])
    schemas = probe['schemas']
    for entry in raw.values():
        if entry['kind'] == 'fields':
            names = schemas.get(entry['class'], [])
            if (len(names) != len(entry['value']) or len(set(names)) != len(names)
                    or any(not isinstance(name, str) or not name for name in names)):
                raise ValueError('Exact complete native field schemas required')
    physical, drawing = probe['physical'], probe['drawing']
    if not isinstance(physical, list) or not isinstance(drawing, list):
        raise ValueError('Complete attached rosters required')
    for row in [*physical, *drawing]:
        if (set(row) != {'ref', 'class', 'raw_ref', 'basic_raw_ref', 'drawing_order'}
                or not re.fullmatch(r'[ne](0|[1-9][0-9]*)', row['ref'])
                or row['raw_ref'] not in raw or raw[row['raw_ref']]['class'] != row['class']
                or row['basic_raw_ref'] not in raw or type(row['drawing_order']) is not int):
            raise ValueError('Exact attached native identities required')
        member, basic = raw[row['raw_ref']], raw[row['basic_raw_ref']]
        if row['class'] == 'SGConnectionWrapperGO':
            if (not row['ref'].startswith('e') or member['value'][schemas[row['class']].index('graphObject')]
                    != {'class': basic['class'], 'ref': basic['ref']}):
                raise ValueError('Exact wrapper basic graph binding required')
        elif row['ref'][0] != 'n' or member['ref'] != basic['ref']:
            raise ValueError('Exact node basic graph identity required')
        if basic['value'][schemas[basic['class']].index('drawingOrder')] != {
                'class': 'SmallInteger', 'value': str(row['drawing_order'])}:
            raise ValueError('Actual raw drawing number differs')
    if any(len({row[key] for row in physical}) != len(physical) for key in ('ref', 'raw_ref', 'basic_raw_ref')):
        raise ValueError('Attached aliases collide')
    if (len(drawing) != len(physical) or len({row['ref'] for row in drawing}) != len(drawing)
            or {row['ref']: row for row in drawing} != {row['ref']: row for row in physical}
            or [row['drawing_order'] for row in drawing] != list(range(1, len(drawing) + 1))):
        raise ValueError('Unique complete normalized drawing roster required')
    entries = {row['ref']: row['native_class'] for row in observation['entries'] if row['kind'] in ('node', 'edge')}
    if entries != {row['ref']: row['class'] for row in physical}:
        raise ValueError('Probe differs from complete collected graph')
    parent, children = raw[probe['parent_raw_ref']], raw[probe['children_raw_ref']]
    if (parent['class'] != 'SGBlockDiagram' or children['class'] != 'OrderedCollection'
            or parent['value'][schemas['SGBlockDiagram'].index('children')]
            != {'class': children['class'], 'ref': children['ref']}
            or children['value'] != [{'class': row['class'], 'ref': row['raw_ref']} for row in physical]):
        raise ValueError('Exact parent physical collection binding required')
    return {'passed': True, 'attached_objects': len(physical), 'raw_objects': len(raw)}


def validate_actual(prepared, actual, probe, plan):
    summary = validate_actual_diff(prepared['graphical_current'], actual)
    raw = validate_current(prepared['graphical_current'])
    numbers = {row['basic_raw_ref']: plan['drawing'].index(row['ref']) + 1 for row in probe['physical']}
    terminal = {(ref, 'drawingOrder'): row['value'][probe['schemas'][row['class']].index('drawingOrder')]
                for ref, row in raw.items() if ref in numbers}
    parent = raw[probe['parent_raw_ref']]
    terminal[(parent['ref'], 'lastChildrenNumber')] = parent['value'][probe['schemas'][parent['class']].index('lastChildrenNumber')]
    if actual['new_objects']:
        raise ValueError('Order-only restoration cannot allocate graphical objects')
    for change in actual['changes']:
        if change['kind'] != 'fields':
            raise ValueError('Order-only restoration cannot alter collection or value content')
        ref = change['object']
        name = probe['schemas'][raw[ref]['class']][change['index'] - 1]
        if ref in numbers and name == 'drawingOrder':
            expected = numbers[ref]
        elif ref == probe['parent_raw_ref'] and name == 'lastChildrenNumber':
            expected = len(plan['physical'])
        else:
            raise ValueError('Unexpected order-only field change: ' + ref + '/' + name)
        if change['after'] != {'class': 'SmallInteger', 'value': str(expected)}:
            raise ValueError('Actual order-only field differs from full original expectation')
        terminal[(ref, name)] = change['after']
    expected = {(ref, 'drawingOrder'): {'class': 'SmallInteger', 'value': str(number)} for ref, number in numbers.items()}
    expected[(parent['ref'], 'lastChildrenNumber')] = {'class': 'SmallInteger', 'value': str(len(plan['physical']))}
    if terminal != expected:
        raise ValueError('Actual diff omits required complete original drawing effects')
    return summary


def same_current(left, right):
    before, after = validate_current(left), validate_current(right)
    return (before.keys() == after.keys() and all(
        row['class'] == after[ref]['class'] and row['kind'] == after[ref]['kind']
        and _same_image(row, row['value'], after[ref]['value']) for ref, row in before.items()))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execute', action='store_true')
    args = parser.parse_args()
    source, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not path.is_relative_to(owned) for path in (source, output)) or output.is_relative_to(source):
        raise ValueError('Separate owned original/output paths required')
    previous = json.loads((source / 'result.json').read_text())
    row = previous['rounds'][-1]
    if (previous.get('passed') is not False or previous.get('independent_edit') != 'delete_literal'
            or row['inverse']['status'] != 'verified_local' or row['compensation']['status'] != 'verified_local'
            or row['final_native'] != row['full_before'] or row['final_public'] == row['public_before']):
        raise ValueError('Completed inverse with recorded exact drawing drift required')
    events = StructureJournal(source / 'journal').read(row['edit']['change_id'])
    request, prepared_original = events[0]['payload'], next(event['payload'] for event in events if event['kind'] == 'prepared')
    domain = request['domain']
    manifest_path = Path(previous['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text())
    if (preparation.get('passed') is not True or domain['database'] != manifest['database']
            or endpoint_process(manifest['port']) != process['pid']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact owned prepared disposable runtime required')
    pending.check(domain)
    output.mkdir(parents=True, exist_ok=False)
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
             'bde_structure_read.st', 'bde_session_guard.st', 'bde_native_graph_current.st',
             'bde_attached_drawing_order.st', 'bde_attached_order_restoration.py', 'bde_drawing_lineage_plan.py')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    originals = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes()) for path in source.rglob('*') if path.is_file()}
    token = 'edit_' + fingerprint({'original': row['edit']['change_id'], 'request_id': output.name, 'execute': args.execute})
    result = {'passed': False, 'restored': False, 'full_delivery': False, 'restoration_token': token,
              'source_manifest': hashes(), 'original_hashes': originals(), 'model_mutation_dispatched': False,
              'completed_inverse_replayed': False, 'automatic_retry': False, 'mode': 'execute' if args.execute else 'preview'}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2))
    save()
    wire = None
    try:
        binary = output / 'AscetAttachedOrderRestore.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetStructureSession', '/define:BDE_DRAWING_LINEAGE_EVAL', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode:
            raise ValueError('Fixed attached-order bridge compilation failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')
        class Adapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with Adapter(request['component'], environment=environment) as adapter:
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                if result['native_before'] != row['final_native'] or result['public_before'] != row['final_public']:
                    raise ValueError('Known complete original failed state changed')
                command = {'cmd': 'attached_drawing_order', 'restoration_token': token}
                probe = adapter._exchange({**command, 'action': 'probe'})
                result['probe'] = probe
                result['probe_validation'] = validate_probe(probe, domain, result['native_before'])
                plan = attached_original_layout(prepared_original, row['full_before'], probe, result['native_before'])
                result['plan'] = plan
                prepared = adapter._exchange({**command, 'action': 'prepare', 'physical': plan['physical'], 'drawing': plan['drawing']})
                result['prepared'] = prepared
                if (prepared['state'] != 'prepared' or prepared['component_oid'] != domain['oid']
                        or prepared['generation'] != plan['generation'] or prepared['restoration_token'] != token
                        or prepared['physical_expected'] != plan['physical'] or prepared['drawing_expected'] != plan['drawing']
                        or not same_current(prepared['graphical_current'], probe['raw_current'])):
                    raise ValueError('Native preparation differs from complete original proof')
                current_command = {**command, 'prepared_signature': prepared['prepared_signature']}
                try:
                    adapter._exchange({**current_command, 'action': 'check', 'prepared_signature': token + '/wrong'})
                except RuntimeError as error:
                    if 'Frozen signature changed' not in str(error):
                        raise
                    result['wrong_signature_refused'] = True
                else:
                    raise ValueError('Forged frozen signature was accepted')
                result['prepared_check'] = adapter._exchange({**current_command, 'action': 'check'})
                result['native_after_check'] = adapter.observe(domain, [])
                result['public_after_check'] = adapter.observe_public(domain)
                if (result['native_after_check'] != result['native_before'] or result['public_after_check'] != result['public_before']):
                    raise ValueError('Read-only preparation/refusal changed complete model')
                service.write_once(output / 'prepared.json', result)
                if args.execute:
                    if originals() != result['original_hashes'] or hashes() != result['source_manifest']:
                        raise ValueError('Frozen original/source evidence changed')
                    marker = pending.begin(domain, 'attached_order_restore', token)
                    result['pending_marker'] = str(marker)
                    service.write_once(output / 'restore-started.json', {'restoration_token': token,
                        'prepared_sha256': service.digest((output / 'prepared.json').read_bytes()), 'automatic_retry': False})
                    result['model_mutation_dispatched'] = True
                    restored = adapter._exchange({**current_command, 'action': 'execute'})
                    result['native_restoration'] = restored
                    result['actual_validation'] = validate_actual(prepared, restored['graphical_actual'], probe, plan)
                    result['native_after'] = adapter.observe(domain, [])
                    result['public_after'] = adapter.observe_public(domain)
                    result['restored'] = (restored['state'] == 'restored'
                        and restored['physical_current'] == plan['physical'] and restored['drawing_current'] == plan['drawing']
                        and result['native_after'] == row['full_before'] and result['public_after'] == row['public_before'])
                    service.write_once(output / 'restore-observed.json', result)
                    if not result['restored']:
                        raise ValueError('Exact full native/public baseline restoration failed; quarantine retained')
                    if originals() != result['original_hashes'] or hashes() != result['source_manifest']:
                        raise ValueError('Original/source evidence changed before pending release')
                    pending.confirmed(marker)
                    result['pending_cleared'] = True
                result['passed'] = result['restored'] if args.execute else True
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['passed'] = result['passed'] and result['original_files_unchanged'] and not result['source_drift'] and not wire['errors']
    except Exception as error:
        result.update(passed=False, error=repr(error), traceback=traceback.format_exc())
    finally:
        result['original_files_unchanged'] = originals() == result['original_hashes']
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'restored', 'model_mutation_dispatched')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
