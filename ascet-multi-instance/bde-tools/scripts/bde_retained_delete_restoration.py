"""Explicit separate restoration of an unknown isolated deletion, never edit replay."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import traceback

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import EditJournal, fingerprint
from bd_native_graphical_effects import validate_actual_diff


RESOURCES = ('bde_edge_restore_guard.st', 'bde_native_collection_merge.st', 'bde_parent_order_inverse.st',
             'bde_native_graph_current.st', 'bde_native_graph_current_probe.st',
             'bde_class_detached_projection.st', 'bde_public_graph_read.st',
             'bde_retained_delete_restore.st', 'bde_structure_read.st')
SOURCES = (*RESOURCES, 'AscetBdeRetainedRestore.cs', 'AscetStructureRead.cs', 'bd_native_graphical_effects.py',
           'bde_retained_delete_restoration.py', 'test_bde_retained_delete_restoration.py')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execute', action='store_true')
    args = parser.parse_args()
    experiment = args.experiment.resolve()
    previous = json.loads((experiment / 'result.json').read_text(encoding='utf-8'))
    edit = previous['rounds'][-1]['edit']
    original_events = EditJournal(experiment / 'journal').read(edit['change_id'])
    source = original_events[0]['payload']
    if previous.get('passed') is not False or edit.get('status') != 'outcome_unknown' or edit.get('automatic_retry') is not False:
        raise ValueError('An unknown non-replayed isolated deletion is required')
    if source['operation'] != 'delete_node' or source['diagram'] != 'Main':
        raise ValueError('An ordinary Main deletion is required')
    fixture = json.loads((service.ROOT / previous['fixture_result']).read_text(encoding='utf-8'))
    manifest = Path(previous['manifest']).resolve()
    domain = source['domain']
    if (domain['oid'] != fixture['oid'] or source['component'] != fixture['component']
            or domain['process_epoch'] != previous['process_epoch']):
        raise ValueError('Exact durable/native restoration domain required')
    workspace = service.ROOT / 'analysis/bde-experiments'
    if any(not path.is_relative_to(workspace) for path in (experiment, manifest, args.output.resolve())):
        raise ValueError('Owned BDE experiment paths required')
    if args.output.resolve().is_relative_to(experiment) or args.output.resolve().is_relative_to(manifest.parent):
        raise ValueError('New restoration evidence must not modify original evidence/runtime')
    args.output.mkdir(parents=True, exist_ok=False)
    hashes = lambda: {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                      for path in experiment.rglob('*') if path.is_file()}
    source_hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in SOURCES}
    repair_token = 'edit_' + fingerprint({'operation': 'restore_unknown_deletion', 'source_token': edit['change_id'],
        'source_terminal_checksum': original_events[-1]['checksum'], 'domain': domain,
        'request_id': args.output.name, 'execute': args.execute})
    result = {'passed': False, 'scope': __doc__, 'mode': 'execute' if args.execute else 'preview',
        'source_token': edit['change_id'], 'restoration_token': repair_token, 'original_hashes': hashes(),
        'source_manifest': source_hashes(), 'original_wal_status': 'outcome_unknown',
        'restored': False, 'full_delivery': False, 'pending_cleared': False, 'automatic_retry': False}
    try:
        service.ensure_probe()
        binary = args.output.resolve() / 'AscetBdeRetainedRestore.exe'
        service.run_process(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetBdeRetainedRestore', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll',
            '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in RESOURCES],
            str(service.ROOT / 'scripts/AscetBdeRetainedRestore.cs'),
            str(service.ROOT / 'scripts/AscetStructureRead.cs')], 30, build_step=True)
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', binary.parent / 'Etas.AscetNET.dll')
        native_folder = args.output / 'native'
        native_folder.mkdir()
        with service.live_lock():
            marker_path = pending.pending_path(domain)
            marker = json.loads(marker_path.read_text(encoding='utf-8'))
            marker_hash = service.digest(marker_path.read_bytes())
            if marker['domain'] != domain or marker['native_token'] != edit['change_id'] or marker['command'] != 'apply':
                raise ValueError('Exact original quarantine owner required')
            result['original_pending'] = {'path': str(marker_path), 'sha256': marker_hash, 'value': marker}
            service.write_once(args.output / 'intent.json', {key: result[key] for key in
                ('source_token', 'restoration_token', 'original_wal_status', 'original_pending', 'source_manifest', 'mode')})
            completed = subprocess.run([str(binary), str(manifest), str(native_folder.resolve()), domain['process_epoch'],
                fixture['component'], fixture['oid'], edit['change_id'], repair_token, result['mode']],
                capture_output=True, text=True, encoding='utf-8', timeout=45)
            result['process'] = {'exit_code': completed.returncode, 'stdout': completed.stdout, 'stderr': completed.stderr}
            records = sorted(native_folder.glob('*.json'))
            result['native_records'] = [str(path) for path in records]
            for path in records:
                envelope = json.loads(path.read_text(encoding='utf-8'))
                if service.digest(envelope['payload_json'].encode('utf-8')) != envelope['payload_sha256']:
                    raise ValueError('Native restoration evidence checksum differs')
            native = json.loads(json.loads(records[-1].read_text(encoding='utf-8'))['payload_json'])
            result['native'] = native
            result['source_drift'] = [name for name, sha in source_hashes().items() if sha != result['source_manifest'][name]]
            result['original_evidence_unchanged'] = hashes() == result['original_hashes']
            valid = (completed.returncode == 0 and native.get('passed') is True
                     and native['prepared']['source_record_keys_and_state_unchanged'] is True
                     and native['private_current_probe']['passed'] is True
                     and native['private_current_probe']['model_setters_called'] == 0
                     and all(native['prepared_after_public'][key] is True for key in
                             ('current_verified', 'plan_verified', 'source_verified', 'endpoints_verified'))
                     and result['original_evidence_unchanged'] and not result['source_drift'])
            if args.execute:
                baseline = previous['rounds'][-1]
                result['actual_graphical_diff_validation'] = validate_actual_diff(
                    native['current_graphical_image'], native['actual_graphical_fields'])
                result['public_exact_restored'] = fingerprint(native.get('public_after')) == fingerprint(baseline['public_before'])
                result['native_exact_restored'] = fingerprint(native.get('native_after')) == fingerprint(baseline['full_before'])
                result['restored'] = (valid and native.get('restored') is True
                                     and result['public_exact_restored'] and result['native_exact_restored']
                                     and native['native_restoration']['endpoints_verified'] is True
                                     and native['native_restoration']['source_record_keys_and_state_unchanged'] is True)
                valid = result['restored']
            else:
                valid = valid and native['model_mutation_dispatched'] is False
            result['passed'] = valid
            service.write_once(args.output / 'verification.json', result)
            if args.execute and valid:
                if service.digest(marker_path.read_bytes()) != marker_hash:
                    raise ValueError('Another request changed the quarantine; retain marker')
                pending.confirmed(marker_path)
                result['pending_cleared'] = True
                service.write_once(args.output / 'quarantine-release.json', {'restoration_token': repair_token,
                    'source_token': edit['change_id'], 'verified_sha256': service.digest((args.output / 'verification.json').read_bytes()),
                    'original_marker_sha256': marker_hash, 'original_wal_status': 'outcome_unknown',
                    'public_exact_restored': True, 'native_exact_restored': True, 'replayed_delete': False})
    except Exception as error:
        result.update(passed=False, error=repr(error), traceback=traceback.format_exc())
    finally:
        result['original_evidence_unchanged'] = hashes() == result['original_hashes']
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'restored', 'pending_cleared', 'original_evidence_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
