"""Confirm only a retained terminal zero-leaf lifecycle refusal; no native calls."""
import argparse
import hashlib
import json
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_windows_endpoint import endpoint_process
from bde_reference_leaf_lifecycle_probe import verify_no_writer_refusal


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--evidence', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--port', type=int, required=True, help='Exact retained isolated endpoint')
    args = parser.parse_args()
    evidence, output = args.evidence.resolve(), args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments'
    if not evidence.is_relative_to(root) or not output.is_relative_to(root) or output.exists():
        raise ValueError('Owned retained evidence and fresh confirmation required')
    original = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
    native = json.loads((evidence / 'native.json').read_text(encoding='utf-8'))
    domain = original['domain']
    result = dict(profile='reference_leaf_zero_writer_refusal_confirmation_v1', passed=False,
        native_calls=0, writer_replayed=False, old_epoch_rebound=False, original_verdict_unchanged=True,
        recovery_hold_cleared=False, full_delivery=False, evidence=str(evidence))
    try:
        before = verify_no_writer_refusal(native, domain)
        if original.get('native_exit_code') != 0 or original['wire']['errors'] or 'cleanup_error' in native:
            raise ValueError('Complete terminal host and wire cleanup required')
        for name, sha in original['source_manifest'].items():
            if hashlib.sha256((evidence / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Original archived source changed')
        prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
        if prepared != dict(process_epoch=domain['process_epoch'], database=domain['database'],
                component=original['component'], component_oid=domain['oid'], before=before):
            raise ValueError('Exact original fsynced prepared material required')
        marker = Path(original['pending_record'])
        with service.live_lock():
            if endpoint_process(args.port) != int(domain['process_epoch'].split('/')[0]):
                raise ValueError('Original existing endpoint owner changed')
            row = json.loads(marker.read_text(encoding='utf-8'))
            if (marker != pending.pending_path(domain) or row['domain'] != domain
                    or row['command'] != 'research_absent_reference_lifecycle'
                    or row['managed_context']['evidence'] != str(evidence)
                    or row['managed_context']['original_sha256'] != service.digest(prepared)):
                raise ValueError('Exact original zero-writer pending binding required')
            pending.confirmed(marker)
        result.update(passed=True, pending_cleared_terminal_zero_leaf=True)
    except Exception as error: result['error'] = str(error)
    output.mkdir(parents=True)
    (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
