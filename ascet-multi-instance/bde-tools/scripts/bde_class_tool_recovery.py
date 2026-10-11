"""Explicit Tool.call inverse for one confirmed retained Class experiment."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
import bde_experiments as bench
from bde_tool_client import ToolClient
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--session', required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, help='Bind recovery to an owned isolated runtime instead of the historical default endpoint')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.store.resolve()
    result = {'passed': False, 'change_id': args.change_id, 'calls': [], 'business_writes': False}
    client = ToolClient(args.output, args.session, result['calls'].append)
    port = 32503
    if args.manifest:
        manifest, _, epoch = live_manifest(args.manifest)
        port = manifest['port']
        result.update(process_epoch=epoch, endpoint_port=port)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(port),
                      ASCET_BD_ENDPOINT_PORT=str(port))
    try:
        intent = tools.read_intent(args.change_id)
        original = service.load_record(intent['snapshot'], 's_', 'snapshots')
        assert intent['domain']['session'] == args.session
        if args.manifest:
            tools.require_sandbox(original['component'])
            assert original['ascet_process_epoch'] == epoch and original['database'].lower() == manifest['database'].lower()
            _, applied, native_audit = tools.terminal_raw(args.change_id)
            assert native_audit['dispatch_count'] == native_audit['completed_count']
            with bench.proxy(upstream_port=port) as wire:
                client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                head, body, error = client.call('bd_read', {'component': original['component'], 'view': 'class_interface'})
            current = service.load_record(head['snapshot'], 's_', 'snapshots')
            assert not error and current['class_interface'] == tools.observation(applied, 'after')
            assert current['ascet_process_epoch'] == epoch and current['dirty_editors'] == [0, 0]
            assert not wire['errors']
            result['precondition_wire'] = {'request': wire['request'].result(), 'response': wire['response'].result()}
            live_manifest(args.manifest)
        with bench.proxy(upstream_port=port) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            _, restored = client.value('bd_revert', {'change_id': args.change_id, 'request_id': 'explicit-recovery-' + args.output.name})
        result['wire'] = {'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']}
        assert not wire['errors'] and restored['status'] == 'verified_class_inverse'
        result['receipt'] = restored
        after = service.load_record(restored['after_snapshot'], 's_', 'snapshots')
        assert after['class_interface'] == original['class_interface']
        with bench.proxy(upstream_port=port) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call('bd_read', {'component': original['component'], 'view': 'class_interface'})
        fresh = service.load_record(head['snapshot'], 's_', 'snapshots')
        assert not error and body == fresh['logic'] and fresh['class_interface'] == original['class_interface']
        assert not pending.pending_path(intent['domain']).exists()
        if args.manifest:
            live_manifest(args.manifest)
        result.update(passed=True, complete_original_baseline_restored=True, outstanding=False)
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
