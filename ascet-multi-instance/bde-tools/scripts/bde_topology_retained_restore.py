"""Restore an observed topology edit whose inverse preview was rejected before writes.

Use a distinct formal inverse request. Never resend the original edit or unknown.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failure', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    prior_path, output = args.failure.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior_path.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned observed failure and fresh output required')
    prior = json.loads((prior_path / 'result.json').read_text(encoding='utf-8'))
    edit = prior.get('edit', {})
    if (prior.get('passed') is not False or prior.get('operation') not in ('disconnect_data', 'delete_node')
            or edit.get('status') != 'applied_observed' or prior.get('inverse') is not None
            or prior.get('witness_retained') is not True or not prior.get('witness_capture')):
        raise ValueError('Observed topology edit, rejected first inverse and original witness required')
    rejected = json.loads(sorted((prior_path / 'tool-calls').glob('*.json'))[-1].read_text(encoding='utf-8'))
    if rejected.get('tool') != 'bd_revert' or rejected.get('args', {}).get('preview') is not True:
        raise ValueError('Only write-free preview rejection is supported')
    reply = json.loads(rejected['response']['content'].split('\n\n', 1)[-1])
    if reply.get('status') != 'rejected' or reply.get('setter_called') is not False or reply.get('recovery_record_created') is not False:
        raise ValueError('No-write/no-transaction preview rejection proof required')
    manifest, process, epoch = live_manifest(prior['manifest'])
    if epoch != prior['process_epoch']:
        raise ValueError('Retained native identity epoch expired')
    domain = prior['domain']; check_pending(domain)
    output.mkdir(parents=True)
    service.STORE = prior_path / 'store'
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1',
        ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1', ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    for key in ('ASCET_BD_LOCAL_FIELD_INVERSE', 'ASCET_BD_SOURCE_IDENTITY_NORMALIZATION'):
        environment.pop(key, None)
    result = {'passed': False, 'restored': False, 'historical_failure': str(prior_path),
        'manifest': prior['manifest'], 'domain': domain, 'pid': process['pid'], 'port': manifest['port'],
        'native_token': edit['change_id'], 'witness_token': prior['witness_capture']['token'],
        'source_manifest': source_manifest(), 'complete_case_pass': False, 'full_delivery': False,
        'formal_topology_managed_inverse_enabled': False, 'original_edit_redispatched': False,
        'historical_failure_rewritten': False, 'witness_retained': True}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    binary = build_oracle(output)
    for path in result['source_manifest']:
        destination = output / 'source' / path
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / path, destination)

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def native(label, callback):
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                value = callback(adapter)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    calls = []

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
        calls.append(row)

    def call(tool, arguments):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls)
            meta, body, error = client.call(tool, arguments)
        save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error:
            raise ValueError('Formal request failed: ' + body)
        verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return json.loads(body), wire_result(wire)

    try:
        after = json.loads((prior_path / 'after.json').read_text(encoding='utf-8'))
        current = native('current-before-restore', lambda adapter: {
            'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)})
        if current['native'] != after['native'] or current['public'] != after['public']:
            raise ValueError('Observed applied topology changed; no inverse dispatched')
        inverse_args = {'change_id': edit['change_id'], 'request_id': output.name + '_distinct_inverse'}
        result['preview'], _ = call('bd_revert', {**inverse_args, 'preview': True}); save()
        if result['preview']['status'] != 'preview' or result['preview']['setter_called'] is not False:
            raise ValueError('Fixed inverse preflight not write-free')
        result['inverse'], _ = call('bd_revert', inverse_args); save()
        if result['inverse']['status'] != 'verified_local':
            raise ValueError('Distinct actual inverse not verified')
        result['diff'], diff_wire = call('bd_diff', {'change_id': result['inverse']['change_id']})
        if (diff_wire['connections'] or diff_wire['request']['frames'] or diff_wire['response']['frames']
                or result['diff'] != StructureJournal(service.STORE / 'edits').diff(result['inverse']['change_id'])):
            raise ValueError('Actual inverse diff is not exact offline journal')
        result['material'] = native('topology-material-undo', lambda adapter: adapter._exchange(
            {'cmd': 'topology_material_inspect', 'token': edit['change_id']}))
        material = result['material']
        if (material['execution_sequence'] != 2 or material['execution_direction'] != 'undo'
                or material['state'] != 'reverted' or material['phases']['after']['source_current_matches'] is not True):
            raise ValueError('Actual second native/source head unavailable')
        before = json.loads((prior_path / 'before.json').read_text(encoding='utf-8'))
        final = native('current-restored', lambda adapter: {
            'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)})
        result['witness_final'] = native('witness-final', lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': 'check', 'token': result['witness_token']}))
        result['restored'] = (before['native'] == final['native'] and before['public'] == final['public']
            and result['witness_final']['unchanged'] is True)
        save()
        if not result['restored']:
            raise ValueError('Original complete native/source/IDs/physical/drawing witness did not restore')
        result['witness_release'] = native('witness-release', lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': 'release', 'token': result['witness_token']}))
        result['witness_retained'] = not result['witness_release']['released']
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        if result['witness_retained']:
            try:
                result['failed_witness_export'] = native('witness-failed-export', lambda adapter: adapter._exchange(
                    {'cmd': 'main_readonly_witness', 'action': 'export', 'token': result['witness_token']}))
            except Exception as export_error:
                result['witness_export_error'] = str(export_error)
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'tool_calls', 'witness_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
