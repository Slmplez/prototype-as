"""Presentation-only diagnostic of a persisted Class patch after process loss.

This never rebinds an edit or inverse. Fresh native scopes own the temporary
drawing domains, after complete recorded public after-state comparison.
"""
import argparse
from copy import deepcopy
import json
import os
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
from bd_class_presentation import resources
from bd_connection_presentation import present_resources
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bde_class_restart_audit import compare
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--observation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--visual-pause', action='store_true')
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=1)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.store.resolve()
    intent, original, _ = tools.terminal_raw(args.change_id)
    observed = tools.load(args.observation)
    comparison = compare(original, observed['before'])
    if not comparison['applied_matches_collected_public_fields'] or observed['dirty_before'] != 0:
        raise ValueError('The read-only persisted after-state comparison must pass')
    scopes = deepcopy(resources(args.change_id, intent, original))
    service.STORE = (args.output / 'state').resolve()
    token = 'edit_' + fingerprint({'diagnostic': str(args.output.resolve()),
        'epoch': observed['ascet_process_epoch'], 'source_change': args.change_id})
    result = {'passed': False, 'diagnostic_only': True, 'source_change_id': args.change_id,
        'original_journal_modified': False, 'inverse_rebound': False, 'model_setters_called': 0,
        'native_inverse_available': False, 'visual_acceptance': 'not_verified',
        'comparison': comparison, 'calls': [], 'scopes': [], 'rounds': [],
        'outstanding_edit_preserved': True,
        'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes())
            for name in (*tools.SOURCES, 'bde_overlay.st', 'AscetBdeOverlay.cs',
                'bd_class_presentation.py', 'bde_overlay_experiment.py',
                'bde_class_display_diagnostic.py')}}
    baseline = {}
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    log_before = log.read_bytes()
    fresh_inputs = {key: observed[key] for key in ('database', 'component', 'oid', 'ascet_process_epoch')}
    fresh_inputs.update(status='ok', caller_resolution='native',
        journal_session='class-persisted-display-diagnostic',
        expected_database_session=observed['database_session'])
    tools.write(args.output / 'input.json', fresh_inputs)

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def capture(row):
        with bench.proxy() as wire:
            env = dict(os.environ, ASCET_BD_ENDPOINT_PORT='32503', ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(row['component'], row['diagram'], environment=env) as adapter:
                value = adapter.observe(row['domain'], [])
        result['calls'].append({'stage': 'observe', 'component': row['component'], 'diagram': row['diagram'],
            'commands': adapter.commands, 'request': wire['request'].result(), 'response': wire['response'].result(),
            'errors': wire['errors']})
        save()
        if wire['errors'] or any(c not in ('open', 'observe') for c in adapter.commands):
            raise ValueError('Read-only diagnostic command coverage failed')
        return value

    def guard():
        for row in scopes:
            if capture(row) != baseline[(row['domain']['oid'], row['diagram'])]:
                raise ValueError('Fresh diagnostic scope changed; no drawing opened')

    def capture_owners(stage):
        with service.live_lock(), bench.proxy() as wire:
            port_before = os.environ.get('ASCET_BD_PROBE_PORT')
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            try:
                value, code = tools.invoke(args.output / 'input.json',
                    args.output / (stage + '.json'), 'observe')
            finally:
                if port_before is None:
                    os.environ.pop('ASCET_BD_PROBE_PORT', None)
                else:
                    os.environ['ASCET_BD_PROBE_PORT'] = port_before
        result['calls'].append({'stage': stage, 'request': wire['request'].result(),
            'response': wire['response'].result(), 'errors': wire['errors']})
        save()
        if (code or wire['errors'] or value.get('status') != 'observed' or
                value.get('model_setters_called') != 0 or value.get('dirty_before') != 0 or
                value.get('dirty_after') != 0):
            raise ValueError('Complete read-only Class owner observation failed: ' + str(value.get('error')))
        return tools.observation(value, 'observed')

    try:
        os.environ['ASCET_BD_ENDPOINT_PORT'] = '32503'
        owner_baseline = capture_owners('owners-before')
        for row in scopes:
            row['domain'].update(process_epoch=observed['ascet_process_epoch'],
                database_session=observed['database_session'], session='class-persisted-display-diagnostic')
            value = capture(row)
            baseline[row['domain']['oid'], row['diagram']] = value
            result['scopes'].append({'component': row['component'], 'diagram': row['diagram'], 'before': value})
        save()
        for index in range(args.repeats):
            row = {'round': index}
            result['rounds'].append(row)
            try:
                row['show'] = present_resources(scopes, {'change_id': token, 'presentation': 'show'}, guard)
                save()
                row['owners_after_show_unchanged'] = capture_owners(f'owners-shown-{index}') == owner_baseline
                save()
                if args.visual_pause:
                    print(json.dumps({'round': index, 'stage': 'visual_pause', 'show_errors': [r['result'] for r in row['show']['resources'] if r['result']['is_error']]}), flush=True)
                    input('Press Enter after inspecting native windows; this only clears presentation: ')
            finally:
                row['clear'] = present_resources(scopes, {'change_id': token, 'presentation': 'clear'}, lambda: None)
                save()
            guard()
            row['owners_after_clear_unchanged'] = capture_owners(f'owners-cleared-{index}') == owner_baseline
            row['exact_native_scopes_unchanged'] = True
            row['passed'] = all(row[key] for key in ('owners_after_show_unchanged', 'owners_after_clear_unchanged')) and not any(
                item['result']['is_error'] for phase in ('show', 'clear') for item in row[phase]['resources'])
            save()
            if not row['passed']:
                break
        result['passed'] = len(result['rounds']) == args.repeats and all(row['passed'] for row in result['rounds'])
        result['exact_native_scopes_unchanged'] = all(row.get('exact_native_scopes_unchanged') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    log_after = log.read_bytes()
    result['crash_log_append_only'] = log_after.startswith(log_before)
    appended = log_after[len(log_before):] if result['crash_log_append_only'] else log_after
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['passed'] = result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'visual_acceptance': result['visual_acceptance']}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
