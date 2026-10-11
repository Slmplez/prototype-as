"""Run the strict Class inverse only after complete independent move compensation."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
from bd_structure_journal import StructureJournal
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient
from bd_class_study_journal import audit


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--compensation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    source, compensation, output = args.source.resolve(), args.compensation.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (any(not path.is_relative_to(owned) for path in (source, compensation, output))
            or output.is_relative_to(source) or output.is_relative_to(compensation)):
        raise ValueError('Separate owned inverse evidence required')
    compensated = tools.load(compensation / 'result.json')
    if (compensated.get('passed') is not True or not compensated['restored_move']
            or not compensated['pending_cleared_after_complete_verification']
            or not compensated['exact_complete_class_applied_baseline_matches']
            or compensated['process_epoch'] != epoch or compensated['source'] != str(source)):
        raise ValueError('Exact complete move compensation required')
    service.STORE = source / 'state'
    class_id = compensated['class_apply']
    folder = tools.root(class_id)
    if (folder / 'inverse.json').exists():
        raise ValueError('Class inverse already recorded; inspect instead of replaying it')
    _, applied, apply_audit = tools.terminal_raw(class_id)
    if apply_audit['dispatch_count'] != apply_audit['completed_count']:
        raise ValueError('Original Class apply lacks completed native evidence')
    expected_after, expected_before = tools.observation(applied, 'after'), tools.observation(applied, 'before')
    if compensated['after'] != expected_after:
        raise ValueError('Compensated complete after differs from Class source')
    move_events = StructureJournal(service.STORE / 'edits').read(compensated['source_token'])
    move = move_events[0]['payload']
    if move['domain']['process_epoch'] != epoch or move_events[-1]['payload'].get('status') != 'outcome_unknown':
        raise ValueError('Original unknown move evidence changed')
    if pending.pending_path(move['domain']).exists():
        raise ValueError('Instance remains quarantined')
    original = {str(path.relative_to(source)): service.digest(path.read_bytes())
                for path in source.rglob('*') if path.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'scope': __doc__,
              'source': str(source), 'class_apply': class_id, 'process_epoch': epoch,
              'tool_calls': [], 'original_hashes': original, 'automatic_retry': False,
              'inverse_dispatched': False, 'complete_original_baseline_restored': False}
    client = ToolClient(output, move['domain']['session'], result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle', ASCET_BD_CLASS_QUERY_CACHE='0',
        ASCET_BD_CLASS_OBSERVATION_BATCH='0', ASCET_BD_CLASS_CONFIGURATION_GUARD='0')

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    def read(expected):
        head, body, error = client.call('bd_read', {'component': applied['component'],
            'view': 'class_interface', 'max_bytes': 8192})
        if error:
            raise ValueError(body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if (record['class_interface'] != expected or record['ascet_process_epoch'] != epoch
                or record['dirty_editors'] != [0, 0]):
            raise ValueError('Complete public/native/configuration baseline differs')
        return record['snapshot']

    save()
    try:
        result['before_snapshot'] = read(expected_after)
        result['inverse_dispatched'] = True
        save()
        head, body, error = client.call('bd_revert', {'change_id': class_id,
            'request_id': 'strict-class-inverse-after-verified-move-compensation-' + output.name})
        receipt = json.loads(body)
        result['receipt'] = receipt
        save()
        if error or receipt['status'] != 'verified_class_inverse':
            raise ValueError(body)
        result['inverse_native_audit'] = audit(tools.root(receipt['change_id']) / 'native.wal')
        result['restored_snapshot'] = read(expected_before)
        result['complete_original_baseline_restored'] = True
        result['pending_clear'] = not pending.pending_path(move['domain']).exists()
        live_manifest(args.manifest)
        result['passed'] = result['pending_clear']
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['original_changed_files'] = [name for name, digest in original.items()
            if not (source / name).exists() or service.digest((source / name).read_bytes()) != digest]
        result['new_source_evidence_files'] = [str(path.relative_to(source)) for path in source.rglob('*')
                                             if path.is_file() and str(path.relative_to(source)) not in original]
        result['passed'] = result['passed'] and not result['original_changed_files']
        save()
    print(json.dumps({key: result.get(key) for key in
                      ('passed', 'error', 'complete_original_baseline_restored', 'original_changed_files')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
