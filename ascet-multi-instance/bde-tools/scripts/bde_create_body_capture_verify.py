"""Verify retained actual variable body creation and offline diff; never replay creation."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_create_material import validate, observation, same_material
from bd_declaration_material import summary as body_summary
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', required=True, type=Path); parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args(); source = args.source.resolve(); output = args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Original owned retained actual creation and fresh output required')
    old = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if (old['passed'] is not False or old['creation_dispatched'] is not True or old['material_retained'] is not True
            or old['declaration_capture_enabled'] is not True or old['operation']['kind'] != 'variable'
            or old['process_epoch'] != epoch or old['isolated_pending'] is not False
            or old['error'] != 'Complete actual factory material changed across connection'):
        raise ValueError('Exact recorded post-capture export-order driver failure required')
    token = old['native_token']; domain = old['domain']; pending.check(domain)
    original_sha = service.digest((source / 'result.json').read_bytes())
    output.mkdir(parents=True); service.STORE = source / 'store'; log = StructureJournal(service.STORE / 'edits')
    events = log.read(token)
    if log.receipt(token, events)['status'] != 'applied_observed':
        raise ValueError('Original actual creation is not durably observed; do not replay')
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
    actual = next(e['payload'] for e in events if e['kind'] == 'observed')
    if actual['create_material_actual']['profile'] != 'native_create_material_v2':
        raise ValueError('Original before and actual-after declaration capture required')
    result = dict(passed=False, scope='Read-only retained variable original-before/actual-after WAL verification; no history',
        source=str(source), manifest=old['manifest'], process_epoch=epoch, domain=domain, component=old['component'],
        native_token=token, source_manifest=source_manifest(), model_setters_called=0, store_called=False,
        creation_redispatched=False, inverse_dispatched=False, witness_retained=False, formal_tool_calls=0,
        complete_case_pass=False, full_delivery=False, declaration_history_verified=False, original_restored=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        target = output / 'source' / rel; target.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(service.ROOT / rel, target)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1', ASCET_BD_CREATE_DECLARATIONS='body_v1')
    witness_token = 'main_' + fingerprint(dict(domain=domain, study=output.name)); result['witness_token'] = witness_token
    calls = []
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter): build = staticmethod(lambda: binary)
        def runtime():
            if live_manifest(old['manifest']) != (manifest, process, epoch): raise ValueError('Exact runtime changed; no rebind')
        def native(label, callback):
            runtime()
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(old['component'], timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain); value = callback(adapter)
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire))); return value
        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))
        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
            calls.append(row); result['formal_tool_calls'] = len(calls); save()
        def tool(label, name, arguments):
            runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client = ToolClient(output, domain['session'], record); client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                start = len(calls); meta, body, error = client.call(name, arguments)
            metrics = wire_result(wire); save_new(output / (label + '-wire.json'), metrics)
            if error: raise ValueError('Formal offline tool failed: ' + body)
            if metrics['connections'] or metrics['request']['frames'] or metrics['response']['frames']:
                raise ValueError('Recorded diff/duplicate unexpectedly accessed ASCET')
            save_new(output / (label + '-response.json'), dict(meta=meta, body=body))
            verify_pages(calls[start:], body, arguments.get('max_bytes', 12288)); return json.loads(body)
        result['capture'] = witness('capture', 'current-witness-capture'); result['witness_retained'] = True; save()
        expected = observation(prepared['before'], actual['after'], prepared['create_material_prepared'], actual['create_material_actual'],
            token=token, oid=domain['oid'], kind='variable')
        if any(actual.get(k) != v for k, v in expected.items()):
            raise ValueError('Original complete actual WAL differs from strict declaration evidence')
        result['body_summary'] = body_summary(actual['create_material_actual']['declaration_material'])
        result['original_before_capture_verified'] = True
        result['material'] = native('retained-material-inspect', lambda a: a._exchange(dict(cmd='create_material', action='inspect_attached', token=token)))
        if not same_material(result['material'], actual['create_material_actual'], token=token, oid=domain['oid'], kind='variable', phase='attached'):
            raise ValueError('Actual original native material changed; not unordered enumeration')
        result['repeat_material'] = native('retained-material-repeat', lambda a: a._exchange(dict(cmd='create_material', action='inspect_attached', token=token)))
        if not same_material(result['material'], result['repeat_material'], token=token, oid=domain['oid'], kind='variable', phase='attached'):
            raise ValueError('Original native declaration material changed across connections')
        result['current'] = native('current-native-public', lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain)))
        if result['current']['native'] != actual['after'] or not compare(result['current']['native']['entries'], result['current']['public'])['passed']:
            raise ValueError('Full current native/public head differs from durable actual creation')
        result['diff'] = tool('actual-diff', 'bd_diff', dict(change_id=token))
        observations = result['diff'].get('observations', [])
        projected = [x['create_material']['declaration_material'] for x in observations if 'create_material' in x]
        if projected != [result['body_summary']]:
            raise ValueError('Formal bd_diff lacks complete actual declaration summary')
        request = json.loads((source / 'forward-intent.json').read_text(encoding='utf-8'))['request']
        result['duplicate'] = tool('duplicate-original-request', 'bd_edit', request)
        if result['duplicate'] != old['edit']: raise ValueError('Duplicate original creation receipt differs')
        result['check'] = witness('check', 'current-witness-check')
        if result['check']['unchanged'] is not True: raise ValueError('Read-only verification changed full current witness')
        result['release'] = witness('release', 'current-witness-release'); result['witness_retained'] = not result['release']['released']
        result['original_failure_verdict_preserved'] = service.digest((source / 'result.json').read_bytes()) == original_sha
        result['sources_match'] = source_manifest() == result['source_manifest']; pending.check(domain); result['isolated_pending'] = False
        result['passed'] = result['sources_match'] and result['original_failure_verdict_preserved'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        if result['witness_retained']:
            try: result['failure_witness'] = witness('export', 'failure-current-witness')
            except Exception as diagnostic: result['diagnostic_error'] = str(diagnostic)
    finally: save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','body_summary','witness_retained','creation_redispatched','original_failure_verdict_preserved')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
