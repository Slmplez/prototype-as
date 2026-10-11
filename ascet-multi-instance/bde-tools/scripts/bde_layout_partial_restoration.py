"""Inspect a partially executed retained layout restoration without replaying it."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import traceback
from unittest.mock import patch

import bd_instance_pending as pending
import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_native_graphical_effects import validate_actual_diff
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
from bde_retained_layout_restoration import validate_restoration_actual


def validate_store_actual(prepared, actual, schemas, expected_count):
    from bd_native_graphical_effects import validate_current
    summary = validate_actual_diff(prepared['graphical_current'], actual)
    parents = [row for row in validate_current(prepared['graphical_current']).values() if row['class'] == 'SGBlockDiagram']
    if len(parents) != 1 or actual['new_objects']:
        raise ValueError('Exact existing sole Main parent required for store-only effects')
    parent = parents[0]
    index = schemas['SGBlockDiagram'].index('lastChildrenNumber') + 1
    terminal = parent['value'][index - 1]
    for change in actual['changes']:
        if (change['object'] != parent['ref'] or change['kind'] != 'fields' or change.get('index') != index
                or change['after'] != {'class': 'SmallInteger', 'value': str(expected_count)}):
            raise ValueError('Store-only effect differs from exact rebuilt original child count')
        terminal = change['after']
    if terminal != {'class': 'SmallInteger', 'value': str(expected_count)}:
        raise ValueError('Store outcome omits the exact original rebuilt child count')
    return summary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--complete-store', action='store_true')
    parser.add_argument('--completed', type=Path)
    args = parser.parse_args()
    source, failed, output = args.experiment.resolve(), args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (any(not p.is_relative_to(owned) for p in (source, failed, output))
            or output.is_relative_to(source) or output.is_relative_to(failed)):
        raise ValueError('Separate owned failed/source/output required')
    old = json.loads((failed / 'result.json').read_text())
    completed_source = args.completed.resolve() if args.completed else None
    if args.complete_store and completed_source:
        raise ValueError('Completed outcomes are read-only; never repeat the store')
    if completed_source and (not completed_source.is_relative_to(owned) or output.is_relative_to(completed_source)):
        raise ValueError('Separate owned completed-outcome evidence required')
    completed_old = json.loads((completed_source / 'result.json').read_text()) if completed_source else None
    if completed_old and (completed_old.get('passed') is not False
            or completed_old.get('store_dispatch_requested') is not True
            or completed_old['completion_observed']['state'] != 'restored'
            or completed_old['completion_observed']['completion_only'] is not True):
        raise ValueError('Recorded completed original store-only outcome required')
    if old.get('passed') is not False or old.get('model_mutation_dispatched') is not True or old.get('restored') is not False:
        raise ValueError('Genuine recorded partial restoration required')
    previous = json.loads((source / 'result.json').read_text())
    row = previous['rounds'][-1]
    journal = StructureJournal(source / 'journal')
    request = journal.read(row['edit']['change_id'])[0]['payload']
    domain = request['domain']
    manifest_path = Path(previous['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    if (old['source_token'] != row['independent_deletion']['change_id']
            or domain['database'] != manifest['database'] or endpoint_process(manifest['port']) != process['pid']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact original source and prepared live instance required')
    marker_path = pending.pending_path(domain)
    marker = json.loads(marker_path.read_text())
    if marker['native_token'] != old['restoration_token'] or marker['command'] != 'retained_layout_restore' or marker['domain'] != domain:
        raise ValueError('Exact retained partial-restoration quarantine required')
    output.mkdir(parents=True, exist_ok=False)
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
             'bde_structure_read.st', 'bde_session_guard.st', 'bde_native_graph_current.st',
             'bde_retained_layout_restore.st', 'bde_layout_partial_restoration.py',
             'bde_retained_layout_restoration.py', 'bd_native_graphical_effects.py')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    originals = lambda folder: {str(p.relative_to(folder)): service.digest(p.read_bytes()) for p in folder.rglob('*') if p.is_file()}
    result = {'passed': False, 'restored': False, 'full_delivery': False, 'model_setters_called': 0,
              'store_called': False, 'source_manifest': hashes(), 'original_hashes': originals(source),
              'failed_hashes': originals(failed), 'pending_sha256': service.digest(marker_path.read_bytes())}
    result['mode'] = 'complete_store' if args.complete_store else 'diagnostic'
    if completed_source:
        result['mode'] = 'read_only_completed_reconciliation'
        result['completed_hashes'] = originals(completed_source)
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2))
    save()
    wire = None
    try:
        binary = output / 'AscetLayoutPartialDiagnostic.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetStructureSession', '/define:BDE_DRAWING_LINEAGE_EVAL', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]], capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode: raise ValueError('Fixed diagnostic bridge compilation failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')
        class DiagnosticAdapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with DiagnosticAdapter(request['component'], environment=environment) as adapter:
                adapter._ensure_open(domain)
                command = {'cmd': 'retained_layout_restore', 'action': 'inspect', 'token': old['source_token'],
                           'restoration_token': old['restoration_token'], 'prepared_signature': old['prepared']['prepared_signature']}
                if completed_old:
                    command['restoration_token'] = completed_old['completion_token']
                    command['prepared_signature'] = completed_old['completion_prepared']['prepared_signature']
                before = adapter._exchange(command)
                result['before'] = before
                if completed_old:
                    result['actual_validation'] = validate_store_actual(completed_old['completion_prepared'],
                        before['graphical_actual'], old['probe']['schemas'], len(old['plan']['physical']))
                    if fingerprint(before['combined_graphical_current']) != fingerprint(old['prepared']['graphical_current']):
                        raise ValueError('Completed original CURRENT differs from initial durable image')
                    result['combined_actual_validation'] = validate_restoration_actual(old['prepared'],
                        {'graphical_actual': before['combined_graphical_actual']}, old['probe'], old['plan'])
                else:
                    result['actual_validation'] = validate_restoration_actual(old['prepared'], before, old['probe'], old['plan'])
                after = adapter._exchange(command)
                result['after'] = after
                result['matches_prepared_expected_order'] = (before['physical_current'] == old['plan']['physical']
                    and before['drawing_current'] == old['plan']['drawing']
                    and before['numbers_current'] == list(range(1, len(old['plan']['drawing']) + 1)))
                result['passed'] = (before['state'] == ('restored' if completed_old else 'restore_started') and before['retained_object_attached'] is True
                    and before['detached_intrinsic_guard_matches'] is True and before['model_setters_called'] == 0
                    and before['store_called'] is False and result['matches_prepared_expected_order']
                    and fingerprint(before) == fingerprint(after))
                if completed_old:
                    if not result['passed'] or before['source_record_unchanged'] is not True or before['completion_only'] is not True:
                        raise ValueError('Complete unchanged exact original restoration outcome required')
                    result['native_restored'] = adapter.observe(domain, [])
                    result['public_restored'] = adapter.observe_public(domain)
                    result['restored'] = (result['native_restored'] == row['full_before'] and result['public_restored'] == row['public_before'])
                    result['passed'] = result['restored']
                    result['original_files_unchanged'] = originals(source) == result['original_hashes']
                    result['failed_files_unchanged'] = originals(failed) == result['failed_hashes']
                    result['completed_files_unchanged'] = originals(completed_source) == result['completed_hashes']
                    if (not result['restored'] or not result['original_files_unchanged'] or not result['failed_files_unchanged']
                            or not result['completed_files_unchanged'] or hashes() != result['source_manifest']
                            or service.digest(marker_path.read_bytes()) != result['pending_sha256']):
                        raise ValueError('Exact original-state verification required; quarantine retained')
                    service.write_once(output / 'reconciliation-verified.json', result)
                    pending.confirmed(marker_path)
                    result['pending_cleared'] = True
                    service.write_once(output / 'quarantine-release.json', {'completed_token': completed_old['completion_token'],
                        'original_pending_sha256': result['pending_sha256'], 'store_replayed': False,
                        'verification_sha256': service.digest((output / 'reconciliation-verified.json').read_bytes())})
                if args.complete_store:
                    if not result['passed']:
                        raise ValueError('Known exact partially restored original layout required before store')
                    completion_token = 'edit_' + fingerprint({'operation': 'complete_partial_layout_store',
                        'partial_token': old['restoration_token'], 'source_token': old['source_token'],
                        'partial_evidence_sha256': service.digest((failed / 'result.json').read_bytes()),
                        'request_id': output.name})
                    result['completion_token'] = completion_token
                    completion_request = {'cmd': 'retained_layout_restore', 'token': old['source_token'],
                        'restoration_token': completion_token, 'partial_restoration_token': old['restoration_token']}
                    prepared = adapter._exchange({**completion_request, 'action': 'prepare_completion'})
                    result['completion_prepared'] = prepared
                    if (prepared['state'] != 'prepared' or prepared['completion_only'] is not True
                            or prepared['source_record_unchanged'] is not True
                            or prepared['physical_expected'] != old['plan']['physical']
                            or prepared['drawing_expected'] != old['plan']['drawing']
                            or prepared['physical_before'] != old['plan']['physical']
                            or prepared['drawing_before'] != old['plan']['drawing']
                            or prepared['prepared_signature'] != completion_token + '/current/1'):
                        raise ValueError('Exact already-attached store-only preparation required')
                    completion_request['prepared_signature'] = prepared['prepared_signature']
                    result['completion_check'] = adapter._exchange({**completion_request, 'action': 'check'})
                    if (originals(source) != result['original_hashes'] or originals(failed) != result['failed_hashes']
                            or service.digest(marker_path.read_bytes()) != result['pending_sha256']
                            or hashes() != result['source_manifest']):
                        raise ValueError('Frozen source/quarantine evidence changed before store-only completion')
                    service.write_once(output / 'completion-prepared.json', result)
                    service.write_once(output / 'completion-started.json', {'completion_token': completion_token,
                        'original_pending_sha256': result['pending_sha256'], 'automatic_retry': False,
                        'prepared_sha256': service.digest((output / 'completion-prepared.json').read_bytes()),
                        'graphical_setters_replayed': False})
                    result['store_dispatch_requested'] = True
                    completed = adapter._exchange({**completion_request, 'action': 'execute'})
                    result['completion_observed'] = completed
                    result['store_called'] = True
                    result['completion_actual_validation'] = validate_actual_diff(prepared['graphical_current'], completed['graphical_actual'])
                    result['completion_store_actual_validation'] = validate_store_actual(prepared,
                        completed['graphical_actual'], old['probe']['schemas'], len(old['plan']['physical']))
                    if fingerprint(completed['combined_graphical_current']) != fingerprint(old['prepared']['graphical_current']):
                        raise ValueError('Combined restoration image differs from original durable preparation')
                    result['combined_actual_validation'] = validate_restoration_actual(old['prepared'],
                        {'graphical_actual': completed['combined_graphical_actual']}, old['probe'], old['plan'])
                    result['native_restored'] = adapter.observe(domain, [])
                    result['public_restored'] = adapter.observe_public(domain)
                    result['restored'] = (completed['state'] == 'restored' and completed['completion_only'] is True
                        and completed['source_record_unchanged'] is True
                        and result['native_restored'] == row['full_before'] and result['public_restored'] == row['public_before'])
                    result['passed'] = result['restored']
                    result['original_files_unchanged'] = originals(source) == result['original_hashes']
                    result['failed_files_unchanged'] = originals(failed) == result['failed_hashes']
                    if (not result['restored'] or not result['original_files_unchanged'] or not result['failed_files_unchanged']
                            or hashes() != result['source_manifest']
                            or service.digest(marker_path.read_bytes()) != result['pending_sha256']):
                        raise ValueError('Exact verified original-state restoration required; quarantine retained')
                    service.write_once(output / 'completion-verified.json', result)
                    pending.confirmed(marker_path)
                    result['pending_cleared'] = True
                    service.write_once(output / 'quarantine-release.json', {'completion_token': completion_token,
                        'original_pending_sha256': result['pending_sha256'], 'graphical_setters_replayed': False,
                        'verification_sha256': service.digest((output / 'completion-verified.json').read_bytes())})
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['original_files_unchanged'] = originals(source) == result['original_hashes']
        result['failed_files_unchanged'] = originals(failed) == result['failed_hashes']
        result['pending_unchanged'] = (not marker_path.exists()) if result.get('pending_cleared') else (
            service.digest(marker_path.read_bytes()) == result['pending_sha256'])
        result['passed'] = (result['passed'] and result['original_files_unchanged'] and result['failed_files_unchanged']
                            and result['pending_unchanged'] and not result['source_drift'] and not wire['errors'])
    except Exception as error:
        result.update(passed=False, error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'matches_prepared_expected_order', 'restored')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
