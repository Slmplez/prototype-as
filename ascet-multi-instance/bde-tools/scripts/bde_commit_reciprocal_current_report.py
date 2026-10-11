"""Freeze and independently verify original-target current query evidence, without ASCET."""
import argparse
from collections import Counter
import json
from pathlib import Path
import shutil

import bd_service as service
from bde_acceptance import source_manifest
from bd_commit_model_diff import recompute
from bd_commit_resources import status, summary
from bd_commit_reciprocal_current import delta


DAY = service.ROOT / 'analysis/bde-experiments/2026-10-07'
PREPARE = DAY / 'bde-commit-reciprocal-prepare-live-01'
TOOL = DAY / 'bde-commit-reciprocal-current-tool-live-03'


def read(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))


def freeze(directory):
    directory.mkdir(exist_ok=False, parents=True)
    sources = source_manifest()
    for name in ('analysis/live-api/AscetStructureSession.exe', 'analysis/live-api/Etas.AscetNET.dll',
                 'Doge/scripts/bde-tool-call-eval.ts', 'scripts/bde_tool_client.py'):
        sources[name] = service.digest((service.ROOT / name).read_bytes())
    for name in sources:
        output = directory / 'archive' / name
        output.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / name, output)
    evidence = {}
    for folder in (PREPARE, TOOL, DAY/'bde-commit-reciprocal-current-tool-live-01',
                   DAY/'bde-commit-reciprocal-current-tool-live-02', DAY/'bde-commit-reciprocal-current-development-01'):
        if not folder.is_dir():
            raise ValueError('Missing original evidence: ' + str(folder))
        for path in folder.rglob('*'):
            if path.is_file() and '__pycache__' not in path.parts:
                evidence[path.relative_to(service.ROOT).as_posix()] = service.digest(path.read_bytes())
    service.write_once(directory/'manifest.json', dict(sources=sources, evidence=evidence))


def verify(directory):
    manifest = read(directory/'manifest.json')
    hashes = 0
    for name, wanted in manifest['sources'].items():
        if (service.digest((directory/'archive'/name).read_bytes()) != wanted
                or service.digest((service.ROOT/name).read_bytes()) != wanted):
            raise ValueError('Archived/current source differs: ' + name)
        hashes += 2
    for name, wanted in manifest['evidence'].items():
        if service.digest((service.ROOT/name).read_bytes()) != wanted:
            raise ValueError('Original evidence changed: ' + name)
        hashes += 1
    for name, wanted in read(TOOL/'source-manifest.json').items():
        if service.digest((service.ROOT/name).read_bytes()) != wanted:
            raise ValueError('Actual latest Tool.call source changed: ' + name)
        hashes += 1
    original = read(PREPARE/'audit.json')
    audit = read(TOOL/'audit.json')
    result = read(TOOL/'result.json')
    failure = read(DAY/'bde-commit-reciprocal-current-tool-live-01/result.json')
    if (failure['passed'] is not False or 'value:value:value:value:' not in failure.get('error', '')):
        raise ValueError('Original unsupported block-arity failure must remain unchanged')
    if (audit['original_reciprocal_capture'] != original['original_reciprocal_capture']
            or audit['prepared_receipt'] != original['prepared_receipt']):
        raise ValueError('Original same-dispatch before was changed')
    actual = recompute(audit)
    current = audit['reciprocal_checks'][-1]
    reciprocal = delta(audit['original_reciprocal_capture'], current)
    wal = read(TOOL/'diff.json')['commit_resource_checks'][0]['status']
    status(wal, token=audit['native_token'], component_oid=audit['component_oid'], checked=True)
    if (result['passed'] is not True or result['typed_graph_unchanged'] is not True
            or result['original_wal_unchanged'] is not True or result['fixed_sources_unchanged'] is not True
            or actual != wal['actual_changes'] or summary(wal) != result['agent_summary']
            or current['summary'] != wal['reciprocal_summary']
            or not result['offline_diff_zero_native_frames'] or not result['offline_history_zero_native_frames']):
        raise ValueError('Current reciprocal query/WAL/Doge evidence disagrees')
    partial = [row for row in audit['reciprocal_checks'] if row['phase'] != 'checked']
    if len(partial) != 1 or len(partial[0]['records']) != 1 or 'resource_check_index' in partial[0]:
        raise ValueError('Original partial failed query material must remain retained and incomplete')
    return dict(passed=True, source_count=len(manifest['sources']), hash_checks=hashes,
        process_epoch=result['process_epoch'], native_token=audit['native_token'],
        original_before_unchanged=True, original_failed_query_material_retained=True,
        current_reciprocal_summary=current['summary'], reciprocal_actual_changes=len(reciprocal),
        full_actual_changes=len(actual), actual_change_fields=dict(Counter(row['field'] for row in actual)),
        typed_graph_unchanged=True, actual_doge_tool_call_verified=True,
        original_wal_unchanged=True, offline_diff_history_native_frames=0,
        agent_pagination=result['pagination'], diff_pagination=result['diff_pagination'],
        history_pagination=result['history_pagination'],
        ascet_start_count=0, ascet_restart_count=0, model_setters_called=0,
        new_outgoing_targets_captured=False, full_persistent_write_set_captured=False,
        persistent_inverse_verified=False, business_original_restoration_verified_this_increment=False,
        new_complete_required_cases_passed=0, full_delivery=False, goal_status='active',
        next_implementation='Same-preparation complete reference-file before snapshot, then bounded actual persistent edit/diff/local inverse')


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--directory', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--freeze', action='store_true')
    args = p.parse_args()
    if args.freeze:
        freeze(args.directory)
    result = verify(args.directory)
    service.write_once(args.output, result)
    print(json.dumps({key: result[key] for key in ('passed', 'source_count', 'hash_checks', 'full_actual_changes', 'full_delivery')}))


if __name__ == '__main__':
    main()
