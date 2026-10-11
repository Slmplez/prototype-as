"""Release only a proven pre-read failure after an independent complete live baseline check."""
import argparse
import os
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
import bd_instance_pending as pending
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    store, output = args.store.resolve(), args.output.resolve()
    if not store.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(store):
        raise ValueError('Separate owned store/output required')
    service.STORE = store
    intent = tools.read_intent(args.change_id)
    original = tools.root(args.change_id)
    raw = tools.load(original / 'raw.json')
    wal = original / 'native.wal'
    if (intent.get('reverts') or intent['domain']['process_epoch'] != epoch
            or intent['identity']['database'].lower() != manifest['database'].lower()
            or raw.get('stage') != 'before_read' or raw.get('model_mutation_dispatched') is not False
            or raw.get('outstanding') is not False or raw.get('journal') is not None
            or not wal.is_dir() or any(wal.iterdir())):
        raise ValueError('Exact retained pre-read failure with an empty native journal required')
    baseline = service.load_record(intent['snapshot'], 's_', 'snapshots')
    tools.require_sandbox(baseline['component'])
    marker = pending.pending_path(intent['domain'])
    if not marker.is_file():
        raise ValueError('Exact unreleased failed request quarantine required')
    before = {str(p.relative_to(original)): service.digest(p.read_bytes()) for p in original.rglob('*') if p.is_file()}
    marker_hash = service.digest(marker.read_bytes())
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'change_id': args.change_id,
              'model_setters_called': 0, 'original_failure_remains_failed': True}
    try:
        service.STORE = output / 'state'
        for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
            (service.STORE / name).mkdir(parents=True)
        os.environ.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
                          ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle')
        current = tools.capture(baseline['component'], 'unstarted-recovery-' + output.name)
        live_manifest(args.manifest)
        if (current['ascet_process_epoch'] != epoch or current['database_session'] != baseline['database_session']
                or current['class_interface'] != baseline['class_interface'] or current['dirty_editors'] != [0, 0]):
            raise ValueError('Complete public/native/configuration baseline differs; no quarantine released')
        if service.digest(marker.read_bytes()) != marker_hash:
            raise ValueError('The quarantine changed during the independent read')
        service.STORE = store
        with service.live_lock():
            live_manifest(args.manifest)
            tools.confirm_marker(args.change_id, intent)
        result.update(passed=True, complete_original_baseline_unchanged=True, pending_clear=not marker.exists())
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        after = {str(p.relative_to(original)): service.digest(p.read_bytes()) for p in original.rglob('*') if p.is_file()}
        result['original_failure_files_unchanged'] = before == after
        result['passed'] = result['passed'] and result['original_failure_files_unchanged']
        tools.write(output / 'result.json', result)
    print(service.dump(result))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
