"""Verify read-only native inverse preflight, conflicts, and exact restoration."""
import argparse
import json
from pathlib import Path
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_native_structure import NativeStructureAdapter


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'rounds': [], 'outstanding': [], 'baseline_restored': False,
              'business_writes': False, 'scope': 'one isolated Main literal fixture; native inverse preflight only'}
    files = list((service.ROOT / 'scripts').glob('bd*.py'))
    files += [service.ROOT / 'scripts' / name for name in ('AscetStructureRead.cs', 'AscetStructureSession.cs',
        'AscetStructureExperiment.cs', 'bde_structure_read.st', 'bde_structure_edit.st',
        'bde_session_guard.st', 'bde_recovery_release.st', 'bde_recovery_status.st', 'bde_revert_preflight_experiment.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'inverse-preflight-' + args.output.name, record)
    outstanding = result['outstanding']

    def call(tool, arguments, error=False):
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, failed = client.call(tool, arguments)
        assert failed == error and not traffic['errors'], body
        return head, body if tool == 'bd_read' else json.loads(body), traffic['request'].result()['frames']

    domain = None
    baseline = None

    def observe():
        with service.live_lock():
            adapter = NativeStructureAdapter(args.component)
            try:
                return {'public': adapter.observe_public(domain), 'models': adapter.observe_models(domain)}
            finally:
                adapter.close()

    try:
        save()
        head, _, _ = call('bd_read', {'component': args.component, 'view': 'structure'})
        sid = head['snapshot']
        snapshot = service.load_record(sid, 's_', 'snapshots')
        domain = {'session': client.session, 'database': snapshot['database'], 'oid': snapshot['oid'],
                  'process_epoch': snapshot['ascet_process_epoch']}
        baseline = observe()
        for index in range(3):
            row = {}
            result['rounds'].append(row)
            _, edit, _ = call('bd_edit', {'snapshot': sid, 'request_id': f'create-{index}', 'operations': [
                {'op': 'create_block', 'kind': 'literal', 'name': '11', 'position': [1120, 880]}]})
            assert edit['status'] == 'applied_observed'
            original = edit['change_id']
            outstanding.append(original)
            after = observe()
            created = next(delta['after']['ref'] for delta in edit['differences']
                           if delta['before'] is None and delta['after']['kind'] == 'node')
            for _ in range(2):
                _, preview, frames = call('bd_revert', {'change_id': original, 'request_id': f'preview-{index}', 'preview': True})
                assert preview['status'] == 'preview' and preview['setter_called'] is False
                assert preview['recovery_record_created'] is False
                row.setdefault('preview_frames', []).append(frames)
                assert observe() == after
            _, moved, _ = call('bd_edit', {'snapshot': edit['after_snapshot'], 'request_id': f'move-{index}',
                'operations': [{'op': 'move_node', 'target': 'Main/' + created, 'position': [1200, 960]}]})
            assert moved['status'] == 'applied_observed'
            outstanding.append(moved['change_id'])
            changed = observe()
            _, preview, _ = call('bd_revert', {'change_id': original, 'request_id': f'conflict-{index}', 'preview': True}, True)
            assert preview['status'] == 'conflict' and observe() == changed
            _, restored, _ = call('bd_revert', {'change_id': moved['change_id'], 'request_id': f'unmove-{index}'})
            assert restored['status'] == 'verified_local'
            outstanding.remove(moved['change_id'])
            _, preview, _ = call('bd_revert', {'change_id': original, 'request_id': f'preview-after-{index}', 'preview': True})
            assert preview['status'] == 'preview' and observe() == after
            _, restored, _ = call('bd_revert', {'change_id': original, 'request_id': f'restore-{index}'})
            assert restored['status'] == 'verified_local'
            outstanding.remove(original)
            assert observe() == baseline
            row['passed'] = True
            head, _, _ = call('bd_read', {'component': args.component, 'view': 'structure'})
            sid = head['snapshot']
            save()
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        assert not result['source_changes_during_run']
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        for change in list(reversed(outstanding)):
            try:
                _, restored, _ = call('bd_revert', {'change_id': change, 'request_id': 'cleanup-' + change[-16:]})
                assert restored['status'] == 'verified_local'
                outstanding.remove(change)
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
                break
        if baseline is not None:
            try:
                result['baseline_restored'] = observe() == baseline
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
        save()
    print(json.dumps({key: result[key] for key in ('passed', 'baseline_restored', 'outstanding', 'error', 'cleanup_error') if key in result}))
    return 0 if result['passed'] and result['baseline_restored'] and not outstanding else 1


if __name__ == '__main__':
    raise SystemExit(main())
