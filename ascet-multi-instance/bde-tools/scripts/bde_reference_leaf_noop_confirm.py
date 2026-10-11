"""Reclassify a complete no-op reply plus fresh read without replaying any writer.

The failed original result remains unchanged. Only the exact retained pending
marker can be cleared. Old epochs, unknown replies, changed native sources,
raw tails, or current observations cannot pass as a confirmed original no-op.
"""
import argparse
import hashlib
import json
from pathlib import Path

import bd_instance_pending as pending
import bd_service as service
from bd_module_persistent_references import validate
from bd_windows_endpoint import endpoint_process
from bde_reference_leaf_noop_probe import verify_native


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--evidence', type=Path, required=True)
    parser.add_argument('--fresh-read', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    evidence, read, output = args.evidence.resolve(), args.fresh_read.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not path.is_relative_to(owned) for path in (evidence, read, output)) or output.exists():
        raise ValueError('Owned preserved no-op, fresh read, fresh confirmation required')
    original = json.loads((evidence / 'result.json').read_text(encoding='utf-8'))
    observed = json.loads((evidence / 'native.json').read_text(encoding='utf-8'))
    proof = json.loads((read / 'result.json').read_text(encoding='utf-8'))
    domain = original['domain']; marker = Path(original['pending_record'])
    result = dict(profile='bde_reference_noop_retained_confirmation_v1', passed=False, native_calls=0,
        original_evidence=str(evidence), original_verdict_unchanged=True, fresh_read=str(read),
        writer_replayed=False, recovery_hold_cleared=False, old_epoch_rebound=False, full_delivery=False)
    try:
        if (original.get('native_exit_code') != 0 or original['wire']['errors'] or proof.get('passed') is not True
                or proof.get('persistent_complete_capture_verified') is not True
                or proof['native']['process_epoch'] != domain['process_epoch']
                or proof['native']['database'] != domain['database']
                or proof['native']['module_read']['component_oid'] != domain['oid']):
            raise ValueError('Complete writer reply and same-runtime fresh read required')
        for name, sha in original['source_manifest'].items():
            if hashlib.sha256((evidence / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Archived original source changed')
            if name.endswith(('.st', '.cs')) and hashlib.sha256((service.ROOT / 'scripts' / name).read_bytes()).hexdigest() != sha:
                raise ValueError('Native no-op source changed; cannot reclassify its original reply')
        result['summary'] = verify_native(observed, domain, original['component'])
        current = validate(proof['native']['module_read']['persistent_observations'][1], component_oid=domain['oid'])
        if current != observed['before'] or current != observed['actual']['after']:
            raise ValueError('Fresh raw finite observation differs from the exact original no-op')
        prepared = json.loads((evidence / 'prepared.json').read_text(encoding='utf-8'))
        if prepared['before'] != observed['before'] or prepared['process_epoch'] != domain['process_epoch']:
            raise ValueError('Original fsynced before differs from native no-op')
        result['current_original_noop_verified'] = True
        with service.live_lock():
            if endpoint_process(proof['port']) != proof['pid']: raise ValueError('Endpoint changed before confirmation')
            retained = json.loads(marker.read_text(encoding='utf-8'))
            if (marker != pending.pending_path(domain) or retained['domain'] != domain
                    or retained['command'] != 'research_existing_reference_noop'
                    or retained['managed_context']['evidence'] != str(evidence)):
                raise ValueError('Exact original pending marker binding required')
            pending.confirmed(marker)
            result['pending_cleared_verified_noop'] = True
        result['passed'] = True
    except Exception as error: result['error'] = str(error)
    output.mkdir(parents=True)
    (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
