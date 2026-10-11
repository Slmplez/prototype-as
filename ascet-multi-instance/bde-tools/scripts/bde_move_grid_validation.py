"""Validate exact literal moves on the unresolved fixture without new writes."""
import argparse
import json
import os
from pathlib import Path
import traceback

import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_isolated_runtime import live_manifest
from bde_public_oracle import compare
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (any(not path.is_relative_to(owned) for path in (source, output))
            or output.is_relative_to(source) or source.is_relative_to(output)):
        raise ValueError('Separate owned validation evidence required')
    journal = StructureJournal(source / 'state/edits')
    events = journal.read(args.change_id)
    request = events[0]['payload']
    if (request['domain']['process_epoch'] != epoch or request['operation'] != 'move_node'
            or events[-1]['payload'].get('status') != 'outcome_unknown'):
        raise ValueError('Exact same-runtime unresolved move required')
    marker = pending.pending_path(request['domain'])
    marker_before = marker.read_bytes()
    marker_value = json.loads(marker_before)
    if (marker_value['native_token'] != args.change_id or marker_value['command'] != 'apply'
            or marker_value['domain'] != request['domain']):
        raise ValueError('Exact original unknown-move pending marker required')
    hashes = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes())
                      for path in source.rglob('*') if path.is_file()}
    before_hashes = hashes()
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'restored': False,
              'model_setters_called': 0, 'source_hashes': before_hashes,
              'scope': 'literal grid validate refusal and accepted aligned preview; no prepare/apply/revert',
              'cases': [], 'automatic_retry': False}
    log = Path(manifest['logs']) / 'crash.log'
    log_before = log.read_bytes()

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    save()
    try:
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(request['component'], environment=env) as adapter:
                before = adapter.observe(request['domain'], [])
                public_before = adapter.observe_public(request['domain'])
                result['before_oracle'] = compare(before['entries'], public_before)
                if result['before_oracle']['passed'] is not True:
                    raise ValueError('Complete public/native geometry bookend differs')
                for position, rejected in (([137, 361], True), ([140, 360], False),
                                           ([141, 360], True), ([140, 361], True),
                                           ([100, 320], False)):
                    row = {'position': position, 'expected_refusal': rejected}
                    result['cases'].append(row)
                    try:
                        row['observation'] = adapter.validate(request['domain'], 'move_node',
                            [request['arguments'][0], request['arguments'][1], *position])
                        row['rejected'] = False
                    except RuntimeError as error:
                        row.update(rejected=True, error=str(error))
                        if not rejected or 'BDE_GRID_ALIGNMENT_REQUIRED:' not in str(error):
                            raise
                    if row['rejected'] is not rejected:
                        raise ValueError('Literal alignment preflight did not match the case')
                    row['passed'] = True
                    save()
                result['after'] = adapter.observe(request['domain'], [])
                result['public_after'] = adapter.observe_public(request['domain'])
                result['complete_geometry_unchanged'] = result['after'] == before
                result['complete_public_geometry_unchanged'] = result['public_after'] == public_before
                result['commands'] = list(adapter.commands)
            result['wire'] = {'requests': wire['request'].result(),
                              'responses': wire['response'].result(), 'errors': wire['errors']}
        live_manifest(args.manifest)
        result['passed'] = (all(row.get('passed') is True for row in result['cases'])
                            and result['complete_geometry_unchanged']
                            and result['complete_public_geometry_unchanged']
                            and not result['wire']['errors']
                            and result['wire']['requests']['parse_error'] is None
                            and result['wire']['responses']['parse_error'] is None)
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        log_after = log.read_bytes()
        result['crash_log_append_only'] = log_after.startswith(log_before)
        appended = log_after[len(log_before):] if result['crash_log_append_only'] else log_after
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['source_files_unchanged'] = hashes() == before_hashes
        result['pending_marker_unchanged'] = marker.exists() and marker.read_bytes() == marker_before
        result['passed'] = (result['passed'] and result['source_files_unchanged']
                            and result['pending_marker_unchanged']
                            and result['crash_log_append_only'] and result['new_assertion_count'] == 0)
        save()
    print(json.dumps({key: result.get(key) for key in
                      ('passed', 'error', 'restored', 'source_files_unchanged', 'pending_marker_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
