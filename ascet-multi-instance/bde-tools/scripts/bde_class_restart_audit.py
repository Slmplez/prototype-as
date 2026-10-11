"""Compare a new-process read with immutable Class WAL; never restore or rebind it."""
import argparse
import json
from pathlib import Path

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
from bd_edit_journal import fingerprint


def compare(original, current):
    signature = current['signature']
    before, after = original['before'], original['after']
    def match(state):
        expected = {row['component']: row for row in state['callers']}
        callers = {row['component']: row for row in current['callers']}
        return {
            'method_signature': signature['methods'] == state['signature']['methods'],
            'definition_public_body': current['body'] == state['body'],
            'public_signature': current['public_signature'] == state['public_signature'],
            'caller_set': set(callers) == set(expected),
            'caller_public_trees': {name: name in expected and row['public_tree'] == expected[name]['public_tree']
                for name, row in callers.items()},
        }
    old_refs = {fingerprint(row): row for row in after['signature']['references']}
    now_refs = {fingerprint(row): row for row in signature['references']}
    baseline, applied = match(before), match(after)
    def all_match(row):
        return all(value if isinstance(value, bool) else all(value.values()) for value in row.values())
    aliases = {f['alias'] for method in signature['methods'] for f in method['arguments'] +
        ([method['return']] if method['return'] else [])}
    return {'original_baseline_matches_collected_public_fields': all_match(baseline),
        'applied_matches_collected_public_fields': all_match(applied), 'baseline_checks': baseline,
        'applied_checks': applied, 'selected_formal_present': original['selector']['formal_alias'] in aliases,
        'added_references': [now_refs[key] for key in sorted(now_refs.keys() - old_refs.keys())],
        'removed_references': [old_refs[key] for key in sorted(old_refs.keys() - now_refs.keys())],
        'coverage': 'method/formal aliases, definition public body, public signature, all captured direct caller public trees and reference identities',
        'not_compared': ['native in-memory identities across processes', 'native scope generations and edge refs',
            'effective configuration and runtime scheduling', 'complete external type content']}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--observation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--retain-restoration-guard', action='store_true')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.store.resolve()
    intent, original, _ = tools.terminal_raw(args.change_id)
    current = tools.load(args.observation)
    if (current.get('model_mutation_dispatched') is not False or current.get('dirty_before') != 0 or
            current.get('oid') != intent['domain']['oid'] or
            current.get('database', '').casefold() != intent['domain']['database'].casefold() or
            current.get('ascet_process_epoch') == intent['domain']['process_epoch'] or not current.get('before')):
        raise ValueError('Clean new-process observation of the exact same Class/database required')
    result = {'change_id': args.change_id, 'original_epoch': intent['domain']['process_epoch'],
        'observed_epoch': current['ascet_process_epoch'], 'comparison': compare(original, current['before']),
        'native_inverse_available': False, 'restored': False, 'outstanding': True,
        'action': 'retain_original_journal_and_failed_fixture; no setters or alias reconstruction',
        'live_requests': 0, 'model_setters_called': 0,
        'observation_source': str(args.observation.resolve()),
        'observation_sha256': service.digest(args.observation.read_bytes()),
        'wal_terminal_checksum': tools.bound_events(intent, tools.root(args.change_id) / 'native.wal')[-1]['checksum']}
    if args.retain_restoration_guard:
        if (result['comparison']['original_baseline_matches_collected_public_fields'] or
                not result['comparison']['applied_matches_collected_public_fields']):
            raise ValueError('Guard registration requires the retained known applied state, not restored or ambiguous state')
        with service.live_lock():
            path = pending.retain_unrestored(intent['domain'], args.change_id,
                tools.root(args.change_id) / 'native.wal', result['wal_terminal_checksum'],
                fingerprint(original['before']), fingerprint(original['after']))
        result['restoration_guard'] = str(path)
        result['guard_persists_across_restart_and_store'] = True
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps(result, ensure_ascii=True))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
