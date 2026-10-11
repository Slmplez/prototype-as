"""Separate exact retained-literal restoration from immutable causal layout evidence."""
import argparse
import json
import os
from pathlib import Path
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
from bde_drawing_lineage_experiment import validate_probe
from bde_drawing_lineage_plan import original_layout


def validate_restoration_actual(prepared, restored, probe, plan):
    current, actual = prepared['graphical_current'], restored['graphical_actual']
    summary = validate_actual_diff(current, actual)
    bindings = validate_current(current)
    allowed_numbers = {row['basic_raw_ref']: plan['drawing'].index(row['ref']) + 1
                       for row in [*probe['physical'], probe['retained']]}
    expected_children = [{'class': row['class'], 'ref': row['raw_ref']} for ref in plan['physical']
                         for row in [*probe['physical'], probe['retained']] if row['ref'] == ref]
    for change in actual['changes']:
        ref, index = change['object'], change.get('index')
        cls = bindings[ref]['class']
        if ref == probe['children_raw_ref'] and change['kind'] == 'collection':
            if change['after'] != expected_children:
                raise ValueError('Actual physical membership differs from original raw identities')
        elif change['kind'] == 'fields':
            name = probe['schemas'][cls][index - 1]
            if ref in allowed_numbers and name == 'drawingOrder':
                if change['after'] != {'class': 'SmallInteger', 'value': str(allowed_numbers[ref])}:
                    raise ValueError('Actual drawing number differs from original full layout')
            elif ref == probe['parent_raw_ref'] and name == 'lastChildrenNumber':
                if change['after'] != {'class': 'SmallInteger', 'value': str(len(plan['physical']))}:
                    raise ValueError('Actual drawing allocation count differs')
            else:
                raise ValueError('Unexpected actual graphical field effect: ' + ref + '/' + name)
        else:
            raise ValueError('Unexpected actual graphical collection/value effect')
    if actual['new_objects']:
        raise ValueError('Unaccepted new raw graphical objects during retained restoration')
    return summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execute', action='store_true')
    args = parser.parse_args()
    source, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (source, output)) or output.is_relative_to(source):
        raise ValueError('Separate owned immutable source/output required')
    previous = json.loads((source / 'result.json').read_text())
    row = previous['rounds'][-1]
    if (previous.get('passed') is not False or row['inverse']['status'] != 'verified_local'
            or row['compensation']['status'] != 'conflict'):
        raise ValueError('Recorded retained secondary conflict required; no completed inverse replay')
    journal = StructureJournal(source / 'journal')
    primary_events = journal.read(row['edit']['change_id'])
    secondary_events = journal.read(row['independent_deletion']['change_id'])
    primary = primary_events[0]['payload']
    secondary = secondary_events[0]['payload']
    if (secondary['domain'] != primary['domain'] or primary['diagram'] != secondary['diagram']
            or secondary['operation'] != 'delete_node' or primary['diagram'] != 'Main'
            or secondary_events[-1]['kind'] != 'finished'
            or secondary_events[-1]['payload']['status'] != 'applied_observed'):
        raise ValueError('Exact completed secondary original deletion required')
    domain = primary['domain']
    original_prepared = next(event['payload'] for event in primary_events if event['kind'] == 'prepared')
    manifest_path = Path(previous['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text())
    if (preparation.get('passed') is not True or domain['database'] != manifest['database']
            or endpoint_process(manifest['port']) != process['pid']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact prepared disposable live endpoint required')
    pending.check(domain)
    output.mkdir(parents=True, exist_ok=False)
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
             'bde_structure_read.st', 'bde_session_guard.st', 'bde_native_graph_current.st',
             'bde_drawing_lineage_probe.st', 'bde_retained_layout_restore.st',
             'bde_drawing_lineage_plan.py', 'bde_drawing_lineage_experiment.py',
             'bde_retained_layout_restoration.py', 'bd_native_graphical_effects.py')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    originals = lambda: {str(p.relative_to(source)): service.digest(p.read_bytes()) for p in source.rglob('*') if p.is_file()}
    result = {'passed': False, 'restored': False, 'full_delivery': False,
              'source_manifest': hashes(), 'original_hashes': originals(), 'mode': 'execute' if args.execute else 'preview',
              'source_token': row['independent_deletion']['change_id'], 'automatic_retry': False,
              'model_mutation_dispatched': False, 'original_primary_inverse_replayed': False}
    repair_token = 'edit_' + fingerprint({'source_token': result['source_token'],
        'source_checksum': secondary_events[-1]['checksum'], 'request_id': output.name, 'execute': args.execute})
    result['restoration_token'] = repair_token
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2))
    save()
    wire = None
    try:
        binary = output / 'AscetRetainedLayoutRestore.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetStructureSession', '/define:BDE_DRAWING_LINEAGE_EVAL', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode: raise ValueError('Fixed restoration bridge compilation failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')
        class RestoreAdapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with RestoreAdapter(primary['component'], environment=environment) as adapter:
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                if result['native_before'] != row['inverse_expected_full'] or result['public_before'] != row['public_restored']:
                    raise ValueError('Known complete retained failure state changed')
                probe = adapter._exchange({'cmd': 'drawing_lineage_probe', 'token': result['source_token']})
                result['probe'] = probe
                result['identity_validation'] = validate_probe(probe, domain=domain,
                    token=result['source_token'], observation=result['native_before'])
                plan = original_layout(original_prepared, row['full_before'], probe, result['native_before'])
                if plan['retained_ref'] != secondary['arguments'][1]:
                    raise ValueError('Original deletion target differs from retained layout evidence')
                result['plan'] = plan
                prepare_request = {'cmd': 'retained_layout_restore', 'action': 'prepare',
                                   'token': result['source_token'], 'restoration_token': repair_token,
                                   'physical': plan['physical'], 'drawing': plan['drawing']}
                prepared = adapter._exchange(prepare_request)
                result['prepared'] = prepared
                if (prepared['state'] != 'prepared' or prepared['source_record_unchanged'] is not True
                        or prepared['physical_expected'] != plan['physical'] or prepared['drawing_expected'] != plan['drawing']
                        or prepared['generation'] != plan['generation'] or prepared['component_oid'] != domain['oid']
                        or prepared['source_token'] != result['source_token'] or prepared['restoration_token'] != repair_token):
                    raise ValueError('Native prepared expectation differs from original WAL proof')
                a, b = validate_current(prepared['graphical_current']), validate_current(probe['raw_current'])
                if set(a) != set(b) or any(a[key]['class'] != b[key]['class'] or a[key]['kind'] != b[key]['kind']
                    or not _same_image(a[key], a[key]['value'], b[key]['value']) for key in a):
                    raise ValueError('Prepared raw image differs from independently captured CURRENT')
                current_request = {key: prepare_request[key] for key in ('cmd', 'token', 'restoration_token')}
                if prepared['prepared_signature'] != repair_token + '/current/1':
                    raise ValueError('Native prepared signature differs from exact restoration token')
                current_request['prepared_signature'] = prepared['prepared_signature']
                result['native_after_preparation'] = adapter.observe(domain, [])
                result['public_after_preparation'] = adapter.observe_public(domain)
                if (result['native_after_preparation'] != result['native_before']
                        or result['public_after_preparation'] != result['public_before']):
                    raise ValueError('Read-only preparation changed complete model')
                result['prepared_check'] = adapter._exchange({**current_request, 'action': 'check'})
                try:
                    adapter._exchange({**current_request, 'action': 'check', 'prepared_signature': repair_token + '/wrong'})
                except RuntimeError as error:
                    if 'Durable restoration CURRENT signature differs' not in str(error):
                        raise
                    result['wrong_signature_refusal'] = {'passed': True, 'setter_called': False, 'error': str(error)}
                else:
                    raise ValueError('Altered durable signature was incorrectly accepted')
                result['native_after_refusal'] = adapter.observe(domain, [])
                result['public_after_refusal'] = adapter.observe_public(domain)
                if (result['native_after_refusal'] != result['native_before']
                        or result['public_after_refusal'] != result['public_before']):
                    raise ValueError('No-setter signature refusal changed complete model')
                result['prepared_check_after_refusal'] = adapter._exchange({**current_request, 'action': 'check'})
                service.write_once(output / 'prepared.json', result)
                if args.execute:
                    if originals() != result['original_hashes'] or hashes() != result['source_manifest']:
                        raise ValueError('Original/source evidence changed before restoration dispatch')
                    marker = pending.begin(domain, 'retained_layout_restore', repair_token)
                    result['pending_marker'] = str(marker)
                    result['model_mutation_dispatched'] = True
                    service.write_once(output / 'restore-started.json', {
                        'restoration_token': repair_token, 'source_token': result['source_token'],
                        'prepared_sha256': service.digest((output / 'prepared.json').read_bytes()),
                        'plan_sha256': fingerprint(plan), 'automatic_retry': False})
                    restored = adapter._exchange({**current_request, 'action': 'execute'})
                    result['native_restoration'] = restored
                    result['actual_validation'] = validate_restoration_actual(prepared, restored, probe, plan)
                    result['native_after'] = adapter.observe(domain, [])
                    result['public_after'] = adapter.observe_public(domain)
                    result['restored'] = (restored['state'] == 'restored' and restored['source_record_unchanged'] is True
                        and result['native_after'] == row['full_before'] and result['public_after'] == row['public_before'])
                    service.write_once(output / 'restore-observed.json', result)
                    if not result['restored']:
                        raise ValueError('Exact full native/public original baseline restoration failed; quarantine retained')
                    if originals() != result['original_hashes'] or hashes() != result['source_manifest']:
                        raise ValueError('Original/source evidence changed before quarantine release')
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
