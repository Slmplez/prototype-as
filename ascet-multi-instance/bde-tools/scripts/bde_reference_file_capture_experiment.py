"""One-shot read-only reference file observation in an existing isolated epoch.

An attempted capture is never replayed. Use --inspect-only after an unknown
reply to export the original retained result without invoking the scan.
"""
import argparse
import json
import os
import time
from pathlib import Path

import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest
from bde_reference_file_profile_experiment import read, validate_profile, BINDINGS


SECTIONS = ('events', 'records', 'keys_first', 'keys_second', 'failures')


def validate_summary(summary, profile):
    if (not isinstance(summary, dict)
            or summary.get('profile') not in ('native_reference_file_observation_v1', 'native_reference_file_observation_v2', 'native_reference_file_observation_v3')):
        raise ValueError('Fixed reference observation summary required')
    for key in ('native_token', 'component_oid', 'generation', 'profile_index',
                'library_class', 'leaf_class', 'file_class', 'unique_number', 'key_length', 'data_number', 'index_number'):
        if type(summary.get(key)) is not type(profile[key]) or summary[key] != profile[key]:
            raise ValueError('Original reference summary identity differs: ' + key)
    for key in ('complete_before_authorized', 'write_authorized', 'inverse_authorized',
                'cross_process_atomic', 'terminal_semantics_verified', 'store_called', 'commit_called'):
        if summary.get(key) is not False:
            raise ValueError('Reference summary cannot authorize a write or claim verified snapshot')
    if type(summary.get('model_setters_called')) is not int or summary['model_setters_called'] != 0:
        raise ValueError('Reference capture must not call model setters')
    sections = SECTIONS + (('gv_images',) if summary['profile'] == 'native_reference_file_observation_v3' else ())
    counts = summary.get('list_counts')
    if not isinstance(counts, dict) or set(counts) != set(sections):
        raise ValueError('Complete fixed captured section counts required')
    for section in sections:
        if type(counts[section]) is not int or not 0 <= counts[section] <= 1000000:
            raise ValueError('Exact bounded retained section count required')
    return sections


def export_report(adapter, command, summary, output, profile):
    sections = validate_summary(summary, profile)
    if (type(command.get('profile_index')) is not int or command['profile_index'] != profile['profile_index']
            or command.get('token') != profile['native_token']):
        raise ValueError('Exact original export command binding required')
    counts = summary['list_counts']
    report = {k: v for k, v in summary.items() if k not in ('list_counts', 'profile_index')}
    for section in sections:
        total = counts[section]
        if type(total) is not int or not 0 <= total <= 1000000:
            raise ValueError('Exact bounded retained section count required')
        rows = []
        while len(rows) < total:
            offset = len(rows)
            limit = 8 if section == 'records' else 64
            page = adapter._exchange(dict(command, action='page', section=section, offset=offset, limit=limit))
            service.write_once(output / f'{section}-{offset:07d}.json', page)
            if (set(page) != {'profile', 'native_token', 'profile_index', 'section', 'offset', 'next_offset', 'total', 'rows'}
                    or page['profile'] != 'native_reference_file_page_v1'
                    or page['native_token'] != command['token'] or page['profile_index'] != command['profile_index']
                    or type(page['profile_index']) is not int or page['section'] != section
                    or type(page['offset']) is not int or page['offset'] != offset
                    or type(page['total']) is not int or page['total'] != total
                    or type(page['next_offset']) is not int
                    or page['next_offset'] != min(offset + limit, total)
                    or not isinstance(page['rows'], list) or len(page['rows']) != page['next_offset'] - offset):
                raise ValueError('Original retained page identity/order/count changed')
            rows.extend(page['rows'])
        report[section] = rows
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('manifest', 'preparation', 'profile', 'output'):
        parser.add_argument('--' + name, type=Path, required=True)
    parser.add_argument('--inspect-only', action='store_true')
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    original = read(args.preparation)
    profile = read(args.profile)
    if original.get('passed') is not True or original['process_epoch'] != epoch:
        raise ValueError('Exact original live preparation required')
    validate_profile(profile, original)
    args.output.mkdir(parents=True, exist_ok=False)
    page_dir = args.output / 'pages'
    page_dir.mkdir()
    result = dict(passed=False, process_epoch=epoch, process_started=False, process_restarted=False,
        automatic_retry=False, native_token=original['native_token'], full_delivery=False,
        model_edit_verified=False, write_authorized=False, inverse_authorized=False,
        complete_before_authorized=False, cross_process_atomic=False,
        scan_requested=not args.inspect_only, profile_index=profile['profile_index'])
    service.write_once(args.output / 'intent.json', result)
    try:
        binary = compile_bridge()
        # Freeze executed templates and bridge/driver dependencies; independent
        # validators can be developed concurrently without changing this run.
        files = set(service.ROOT.joinpath('scripts').glob('*.st'))
        files.update(service.ROOT.joinpath('scripts', name) for name in (
            'AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
            'bd_native_structure.py', 'bd_native_literal.py', 'bd_service.py', 'bde_structure_stages.py',
            'bde_experiments.py', 'bde_isolated_runtime.py', 'bde_reference_file_capture_experiment.py',
            'bde_reference_file_profile_experiment.py'))
        files.update({binary, BINDINGS})
        for p in (args.preparation, args.profile, args.manifest):
            files.add(p.resolve())
        inputs = {p.relative_to(service.ROOT).as_posix(): service.digest(p.read_bytes()) for p in sorted(files)}
        for name in inputs:
            target = args.output / 'source' / name
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes((service.ROOT / name).read_bytes())
        service.write_once(args.output / 'source-manifest.json', inputs)
        external = {}
        for role, dependency in (
                ('compile_sdk', Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))),
                ('runtime_sdk', binary.with_name('Etas.AscetNET.dll'))):
            raw = dependency.read_bytes()
            external[role] = dict(path=str(dependency.resolve()), sha256=service.digest(raw))
            (args.output / (role + '.dll')).write_bytes(raw)
        service.write_once(args.output / 'external-inputs.json', external)
        with service.live_lock(), proxy(manifest['port']) as wire:
            environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(wire['port']))
            try:
                with NativeStructureAdapter(original['component'], environment=environment, timeout=300) as adapter:
                    before = adapter.observe(original['domain'], [])
                    service.write_once(args.output / 'before.json', before)
                    command = dict(cmd='commit_reference_file_capture', token=original['native_token'],
                        profile_index=profile['profile_index'], section='', offset=0, limit=64)
                    started = time.perf_counter()
                    summary = adapter._exchange(dict(command, action='inspect' if args.inspect_only else 'scan'))
                    result['scan_or_inspect_seconds'] = time.perf_counter() - started
                    service.write_once(args.output / 'summary.json', summary)
                    report = export_report(adapter, command, summary, page_dir, profile)
                    service.write_once(args.output / 'report.json', report)
                    after = adapter.observe(original['domain'], [])
                    service.write_once(args.output / 'after.json', after)
                    result.update(typed_graph_unchanged=before == after, native_commands=adapter.commands,
                        phase=report['phase'], records_observed=len(report['records']), event_count=len(report['events']),
                        failures=report['failures'], summary_bytes=(args.output / 'summary.json').stat().st_size,
                        report_bytes=(args.output / 'report.json').stat().st_size)
                    # The independent validator is intentionally a later step.
                    # Export success alone is not a snapshot or write gate.
                    result['observation_exported'] = True
                    result['passed'] = before == after and report.get('census_matches') is True and report.get('phase') == 'observational_census_match'
            finally:
                result['traffic'] = dict(request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
        if live_manifest(args.manifest)[2] != epoch:
            raise ValueError('Original reference process epoch changed')
        result['sources_unchanged'] = all(service.digest((service.ROOT/name).read_bytes()) == wanted for name, wanted in inputs.items())
        if not result['sources_unchanged']:
            raise ValueError('Executed reference capture inputs changed')
        result['sdk_sources_unchanged'] = all(service.digest(Path(row['path']).read_bytes()) == row['sha256'] for row in external.values())
        if not result['sdk_sources_unchanged']:
            raise ValueError('Compiled or running reference SDK dependency changed')
    except Exception as error:
        result.update(passed=False, error=repr(error))
        service.write_once(args.output / 'unknown-or-failed.json', dict(error=repr(error), automatic_retry=False,
            native_token=original['native_token'], profile_index=profile['profile_index'], inspect_only_required=True))
    service.write_once(args.output / 'result.json', result)
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'profile_index', 'phase', 'records_observed', 'typed_graph_unchanged', 'failures')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
