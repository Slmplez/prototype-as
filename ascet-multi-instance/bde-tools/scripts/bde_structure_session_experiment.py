"""Online isolated structural journal experiment; never edits business originals."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import time
import bd_service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
import bde_experiments as bench


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--reference', type=Path, required=True)
    p.add_argument('--operation', required=True)
    p.add_argument('--arguments', required=True, help='JSON array: target refs, then typed operation parameters')
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--retain', action='store_true', help='Leave a journalled fixture repair applied')
    p.add_argument('--verify-public', action='store_true')
    a = p.parse_args()
    a.output.mkdir(parents=True, exist_ok=False)
    raw = json.loads(a.reference.read_text(encoding='utf-8'))
    domain = {k: raw[v] for k, v in {'process_epoch': 'ascet_process_epoch', 'database': 'database', 'oid': 'oid'}.items()}
    domain['session'] = 'structural-experiment'
    arguments = json.loads(a.arguments)
    compile_bridge()
    journal = StructureJournal(a.output / 'journal')
    result = {}
    start = time.perf_counter()
    try:
        with bd_service.live_lock(), bench.proxy() as wire:
            env = dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(raw['component'], environment=env) as adapter:
                if a.verify_public:
                    result['public_before'] = adapter.observe_public(domain)
                before = adapter.observe(domain, arguments[0])
                result['before'] = before
                request = {'domain': domain, 'request_id': a.output.name, 'component': raw['component'], 'diagram': 'Main',
                    'operation': a.operation, 'arguments': arguments, 'expect': fingerprint(before)}
                edit = journal.execute(request, adapter, nullcontext)
                result['edit'] = edit
                if a.verify_public:
                    result['public_applied'] = adapter.observe_public(domain)
                if edit['status'] == 'applied_observed':
                    result['replay_equal'] = journal.execute(request, adapter, nullcontext) == edit
                    if not a.retain:
                        result['revert'] = journal.revert(edit['change_id'], a.output.name + '-revert', adapter, nullcontext)
                result['after'] = adapter.observe(domain, arguments[0])
                result['restored'] = result['after'] == before
                if a.verify_public:
                    result['public_restored'] = adapter.observe_public(domain)
                    result['independent_restored'] = result['public_restored'] == result['public_before']
            result['metric'] = {'wall_ms': round((time.perf_counter()-start)*1000, 3),
                'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}
    except Exception as error:
        result.update(passed=False, error=repr(error), automatic_retry=False)
        (a.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
        raise
    result['passed'] = result['restored'] and result.get('replay_equal', False) and result.get('revert', {}).get('status') == 'verified_local'
    result['validation_scope'] = 'apply_idempotency_revert'
    if a.retain:
        result['passed'] = result.get('replay_equal', False) and result.get('edit', {}).get('requested_effect_verified') is True
        result['validation_scope'] = 'apply_idempotency_retained_for_followup; revert_not_run'
    if a.verify_public:
        result['passed'] = result['passed'] and (a.retain or result['independent_restored']) and result['public_applied'] != result['public_before']
    (a.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    print(json.dumps({'passed': result['passed'], 'edit': result['edit'], 'revert': result.get('revert'), 'metric': result['metric']}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
