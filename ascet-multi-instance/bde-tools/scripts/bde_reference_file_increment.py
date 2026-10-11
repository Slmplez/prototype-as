"""Freeze and verify the limited reference-file observation increment, offline."""
import argparse
import json
import sys
from pathlib import Path

import bd_service as service
from bde_acceptance import source_manifest

DAY = service.ROOT / 'analysis/bde-experiments/2026-10-07'
LATEST = DAY / 'bde-reference-file-capture-live-04'


def read(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))


def digest(path):
    return service.digest(path.read_bytes())


def freeze(directory):
    directory.mkdir(parents=True, exist_ok=False)
    sources = source_manifest()
    for name in sources:
        target = directory / 'archive' / name
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes((service.ROOT / name).read_bytes())
    evidence = {}
    folders = [DAY / ('bde-reference-file-profile-live-' + str(i).zfill(2)) for i in range(1, 11)]
    folders += [DAY / ('bde-reference-file-capture-live-' + str(i).zfill(2)) for i in range(1, 5)]
    folders += [DAY / name for name in ('bde-reference-file-profile-development-01',
        'bde-reference-file-snapshot-development-01', 'bde-reference-file-snapshot-route-01')]
    for folder in folders:
        if not folder.is_dir():
            raise ValueError('Original reference evidence missing: ' + str(folder))
        for path in folder.rglob('*'):
            if path.is_file() and '__pycache__' not in path.parts:
                evidence[path.relative_to(service.ROOT).as_posix()] = digest(path)
    for path in (DAY / 'bde-commit-reciprocal-prepare-live-01/result.json',
                 DAY / 'bde-commit-reciprocal-current-tool-live-03/audit.json'):
        evidence[path.relative_to(service.ROOT).as_posix()] = digest(path)
    service.write_once(directory / 'manifest.json', dict(sources=sources, evidence=evidence))


def verify(directory, *, frozen_only=False):
    manifest = read(directory / 'manifest.json')
    checks = 0
    for name, expected in manifest['sources'].items():
        if digest(directory / 'archive' / name) != expected:
            raise ValueError('Archived source changed: ' + name)
        checks += 1
        if not frozen_only:
            if digest(service.ROOT / name) != expected:
                raise ValueError('Current source changed: ' + name)
            checks += 1
    for name, expected in manifest['evidence'].items():
        if digest(service.ROOT / name) != expected:
            raise ValueError('Original evidence changed: ' + name)
        checks += 1
    for name, expected in read(LATEST / 'source-manifest.json').items():
        if digest(LATEST / 'source' / name) != expected:
            raise ValueError('Executed capture source changed: ' + name)
        checks += 1
    for role, row in read(LATEST / 'external-inputs.json').items():
        if digest(LATEST / (role + '.dll')) != row['sha256']:
            raise ValueError('Executed SDK archive changed')
        checks += 1
    result = read(LATEST / 'result.json')
    observation = read(LATEST / 'summary.json')
    independent = read(LATEST / 'independent-validation-01.json')
    proof = independent['proof']
    for flag in ('passed', 'typed_graph_unchanged', 'sources_unchanged', 'sdk_sources_unchanged'):
        if result.get(flag) is not True:
            raise ValueError('Real latest capture failed: ' + flag)
    if (proof['passed'] is not True or independent['codec_roundtrip_exact'] is not True
            or not independent['previous_raw_record_map_comparison']['all_original_raw_bytes_equal']
            or proof['records'] != observation['count_before'] or proof['records'] != observation['count_after']
            or proof['first_keys'] != proof['records'] or proof['second_keys'] != proof['records']
            or observation['identity_before_checked'] is not True or observation['identity_after_checked'] is not True
            or observation['list_counts']['failures'] != 0):
        raise ValueError('Complete observed record/key/identity coverage not verified')
    for key in ('write_authorized', 'inverse_authorized', 'complete_before_authorized', 'cross_process_atomic', 'terminal_semantics_verified'):
        if proof[key] is not False or observation[key] is not False:
            raise ValueError('Read observation cannot silently authorize an edit or snapshot')
    for name, expected in independent['inputs_sha256'].items():
        path = Path(name)
        if not path.is_absolute():
            path = service.ROOT / path
        if digest(path) != expected:
            raise ValueError('Independent validator input changed: ' + name)
        checks += 1
    preserved = []
    for i in range(1, 4):
        path = DAY / ('bde-reference-file-capture-live-' + str(i).zfill(2)) / 'result.json'
        old = read(path)
        if old['passed'] is not False or old['process_epoch'] != result['process_epoch']:
            raise ValueError('Original failed captures must remain failed in the original epoch')
        preserved.append(dict(path=path.relative_to(service.ROOT).as_posix(), failures=old.get('failures'), error=old.get('error')))
    prior = read(DAY / 'bde-reference-file-capture-live-03/result.json')
    crosscheck = read(DAY / 'bde-reference-file-capture-live-03/reciprocal-crosscheck-01.json')
    if crosscheck['passed'] is not True or crosscheck['targets'] != 9:
        raise ValueError('Original nine reciprocal records were not independently matched')
    return dict(passed=True, scope='read-only complete observed reference record/key census; no write authorization',
        full_delivery=False, complete_required_cases_newly_passed=0, process_epoch=result['process_epoch'],
        process_starts=0, process_stops=0, process_restarts=0, hash_checks=checks,
        archived_sources=len(manifest['sources']), evidence_files=len(manifest['evidence']),
        independent_proof=proof, original_nine_reciprocal_raw_records_equal=True,
        lossless_catalog=dict(images=independent['gv_catalog_images'], raw_bytes=independent['gv_catalog_raw_bytes'],
            original_event_gv_bytes=independent['expanded_event_gv_raw_bytes'], roundtrip_exact=True),
        observed_costs=dict(previous_failed_capture={key: prior[key] for key in ('scan_or_inspect_seconds', 'report_bytes', 'summary_bytes', 'traffic')},
            current={key: result[key] for key in ('scan_or_inspect_seconds', 'report_bytes', 'summary_bytes', 'traffic')},
            same_record_coverage=True, controlled_performance_benchmark=False,
            limitation='Prior capture failed dynamic function-byte guard; runtime was warmed. Costs include complete audit export and are not bd_read latency.'),
        offline_controls=dict(profile=20, observation=29, compact_codec=14, export=19, distinct=82,
            note='Separate executed suites; observation suite preserved OK output without a surfaced numeric exit code. No synthetic control is native validation.'),
        failures_preserved=preserved,
        next_steps=['Bind a newly captured baseline to the same edit preparation dispatch',
            'Establish explicit per-resource persistent patch guards and inverse',
            'Complete message wiring/deletion, enum lifecycle, cross-module flow and full delivery gates'],
        limitations=['Three terminal outcomes remain unclassified; do not call them verified EOF',
            'No cross-process atomicity or complete commit closure proof',
            'No edit/store/commit/inverse executed in this increment',
            'Historic before materials and business restoration holds remain unchanged'])


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--directory', type=Path, required=True)
    p.add_argument('--freeze', action='store_true')
    p.add_argument('--frozen-only', action='store_true')
    p.add_argument('--output', type=Path)
    args = p.parse_args()
    if args.freeze:
        freeze(args.directory)
    result = verify(args.directory, frozen_only=args.frozen_only)
    service.write_once(args.output or args.directory / 'result.json', result)
    print(json.dumps({k: result[k] for k in ('passed', 'hash_checks', 'archived_sources', 'evidence_files', 'full_delivery')}))
    return 0


if __name__ == '__main__':
    sys.exit(main())
