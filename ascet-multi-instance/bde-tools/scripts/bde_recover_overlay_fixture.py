"""Explicit recovery of the recorded sandbox priority after the overlay crash.

This is a new journalled edit in the current epoch, not a replay of the expired
native inverse. All collected fixture rows must match the recorded crash state.
"""
from contextlib import nullcontext
import json
from pathlib import Path
import bd_service as service
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bd_native_structure import NativeStructureAdapter


def main():
    root = service.ROOT/'analysis/bde-experiments/2026-09-30'
    previous = root/'doge-structure-overlay-02'
    recovery = json.loads((previous/'recovery-required.json').read_text(encoding='utf-8'))
    events = [json.loads(p.read_text(encoding='utf-8')) for p in sorted((previous/'edits'/recovery['original_change']).glob('*.json'))]
    old_after = next(e['payload']['after'] for e in events if e['kind'] == 'observed')
    old_before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')
    reference = json.loads((root/'structure-postrestart-02/probe.json').read_text(encoding='utf-8'))
    domain = {'session': 'explicit-overlay-recovery', 'process_epoch': reference['ascet_process_epoch'],
              'database': reference['database'], 'oid': reference['oid']}
    if domain['oid'] != recovery['oid'] or domain['database'].casefold() != events[0]['payload']['domain']['database'].casefold():
        raise RuntimeError('Recovery identity differs')
    output = root/'overlay-recovery-01'
    output.mkdir(exist_ok=False)
    result = {'original_change': recovery['original_change'], 'kind': 'new_epoch_explicit_repair', 'passed': False}
    try:
        with service.live_lock(), NativeStructureAdapter(recovery['component']) as adapter:
            before = adapter.observe(domain, [])
            if before['entries'] != old_after['entries']:
                raise RuntimeError('Current collected fixture differs from recorded crash state')
            result['public_before'] = adapter.observe_public(domain)
            targets = [r['ref'] for r in before['entries']]
            scoped = adapter.observe(domain, targets)
            request = {'domain': domain, 'request_id': 'restore-t8-priority-after-restart',
                       'component': recovery['component'], 'diagram': 'Main', 'operation': 'set_transition_priority',
                       'arguments': [targets, 't8', 3], 'expect': fingerprint(scoped)}
            result['edit'] = StructureJournal(output/'journal').execute(request, adapter, nullcontext)
            result['public_after'] = adapter.observe_public(domain)
            after = adapter.observe(domain, [])
            result['after'] = after
            result['all_collected_rows_restored'] = after['entries'] == old_before['entries']
            result['passed'] = result['all_collected_rows_restored'] and result['edit'].get('requested_effect_verified') is True
    except Exception as error:
        result['error'] = str(error)
        raise
    finally:
        (output/'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
        print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'edit': result.get('edit')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
