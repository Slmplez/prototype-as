"""Release only unchanged failed field preflights; preserve their raw failures.

No model edits or store. Every witness is checked before and after prepared
material discard, and strict native release itself repeats the unchanged guard.
"""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--failed', type=Path, action='append', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    prior_path, output = args.preflight.resolve(), args.output.resolve()
    if not prior_path.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned preflight and fresh output required')
    prior = json.loads((prior_path / 'result.json').read_text(encoding='utf-8'))
    if prior.get('passed') is not True or len(prior['rounds']) != 9:
        raise ValueError('Complete three-fixture preflight required')
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    fixture = json.loads(sorted((prior_path / 'fixture-operator_fanout').glob('*.json'))[-1].read_text(encoding='utf-8'))
    if prior['process_epoch'] != epoch or fixture.get('passed') is not True:
        raise ValueError('Preflight instance epoch expired')
    failed_rows = []
    for failed in args.failed:
        failed = failed.resolve()
        if not failed.is_relative_to(owned):
            raise ValueError('Owned exact failed evidence required')
        row = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
        if (row['passed'] is not False or row['model_setters_called'] != 0
                or row['store_called'] is not False or row['witness_retained'] is not True
                or row['domain']['process_epoch'] != epoch or row['domain']['oid'] != fixture['oid']
                or row['domain']['database'] != manifest['database']
                or not row.get('failed_witness_export', {}).get('unchanged')):
            raise ValueError('Only failed no-setter preflights with original unchanged exports may be released')
        if any(service.digest((failed / 'source' / rel).read_bytes()) != value
               for rel, value in row['source_manifest'].items()):
            raise ValueError('Archived original failure sources differ')
        check_pending(row['domain'])
        failed_rows.append((failed, row))
    output.mkdir(parents=True)
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_PROBE_PORT=str(manifest['port']))
    result = {'passed': False, 'scope': 'Strict unchanged no-setter preflight cleanup only',
              'process_epoch': epoch, 'model_setters_called': 0, 'store_called': False,
              'original_failures_relabelled': False, 'complete_case_pass': False,
              'source_manifest': source_manifest(), 'rows': []}

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')

    def execute(row, label, command):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            adapter_class = NativeStructureAdapter if command['cmd'] == 'discard_prepared' else Observer
            with adapter_class(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(row['domain'])
                value = adapter._exchange(command)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    save()
    try:
        for index, (failed, row) in enumerate(failed_rows):
            entry = {'failed_evidence': str(failed), 'released': False}
            result['rows'].append(entry); save()
            witness = {'cmd': 'main_readonly_witness', 'token': row['witness_token']}
            entry['before'] = execute(row, str(index) + '-before', {**witness, 'action': 'check'})
            if entry['before']['unchanged'] is not True:
                raise ValueError('Failed original baseline changed; preserve all material')
            if row['prepared_retained']:
                entry['discard'] = execute(row, str(index) + '-discard',
                    {'cmd': 'discard_prepared', 'token': row['native_token']})
                if entry['discard']['released'] is not True:
                    raise ValueError('Prepared material discard not confirmed')
            entry['after'] = execute(row, str(index) + '-after', {**witness, 'action': 'check'})
            if entry['after']['unchanged'] is not True:
                raise ValueError('Discard changed original baseline; preserve witness')
            entry['release'] = execute(row, str(index) + '-release', {**witness, 'action': 'release'})
            entry['released'] = entry['release']['released'] is True
            if not entry['released']:
                raise ValueError('Strict original witness release not confirmed')
            save()
        result['source_unchanged'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['source_unchanged'] and all(row['released'] for row in result['rows'])
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
    save()
    print(json.dumps({'passed': result['passed'], 'released': sum(row['released'] for row in result['rows']),
                      'model_setters_called': 0, 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
