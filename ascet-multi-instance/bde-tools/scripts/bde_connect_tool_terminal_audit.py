"""Audit/release a known restored formal connect experiment; never replay writes."""
import argparse
import hashlib
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bd_connect_journal import context
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args(); prior, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Exact retained experiment and fresh owned output required')
    original = (prior / 'result.json').read_bytes(); x = json.loads(original)
    manifest, process, epoch = live_manifest(x['manifest']); domain = x['domain']
    if epoch != x['process_epoch'] or x.get('witness_retained') is not True:
        raise ValueError('Exact same-epoch retained witness required')
    pending.check(domain)
    for rel, digest in x['source_manifest'].items():
        if Path(rel).suffix in ('.cs', '.st') or rel in ('scripts/bd_connect_journal.py',
                'scripts/bd_native_structure.py', 'scripts/bd_structure_journal.py', 'scripts/bd_recovery.py'):
            if hashlib.sha256((service.ROOT / rel).read_bytes()).hexdigest() != digest:
                raise ValueError('Experiment kernel changed; cannot certify material release: ' + rel)
    material = x.get('material_retained') is True
    if material and (len(x.get('histories', [])) != 3
            or any(h['actual']['status'] != 'verified_local' for h in x['histories'])
            or x['histories'][-1].get('original_witness', {}).get('unchanged') is not True):
        raise ValueError('Only a known fully restored history can be released')
    output.mkdir(parents=True); service.STORE = prior / 'store'
    env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
        ASCET_BD_CONNECT_HISTORY='native_source_exact_v1')
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='formal_connect_original'))
    result = dict(passed=False, source_manifest=source_manifest(), model_setters_called=0, store_called=False,
        original_failed_verdict_preserved=True, original_result_sha256=hashlib.sha256(original).hexdigest(),
        process_epoch=epoch, pid=process['pid'], port=manifest['port'], formal_tool_calls=0)
    def native(label, callback):
        fresh, fresh_process, fresh_epoch = live_manifest(x['manifest'])
        if fresh != manifest or fresh_process != process or fresh_epoch != epoch:
            raise ValueError('Exact experiment runtime changed')
        with patch.dict(os.environ, env, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with NativeStructureAdapter(x['component'], timeout=30,
                    environment={**env, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as a:
                a.build = lambda: prior / 'AscetMainWorkflowOracle.exe'
                a._ensure_open(domain); value = callback(a)
        save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
        return value
    def witness(action, label):
        return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', token=witness_token, action=action)))
    result['before_release'] = witness('check', 'before-release')
    if result['before_release']['unchanged'] is not True:
        raise ValueError('Original full graph/native/source/order witness differs; keep material')
    if material:
        head = x['histories'][-1]['actual']['change_id']; log = StructureJournal(service.STORE / 'edits')
        if context(log, head)['current'] != x['before']:
            raise ValueError('Complete durable terminal is not original')
        calls = []
        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record); client.env.update(env, ASCET_BD_PROBE_PORT=str(wire['port']))
            meta, body, error = client.call('bd_inspect', dict(query='recovery', change_id=head))
        save_new(output / 'terminal-status-wire.json', wire_result(wire))
        save_new(output / 'terminal-status-response.json', dict(meta=meta, body=body, is_error=error))
        if error: raise ValueError(body)
        verify_pages(calls, body, 12288); status = json.loads(body)
        if status['terminal_verified'] is not True or status['model_setters_called'] != 0:
            raise ValueError('Fixed fresh terminal query unverified')
        result.update(terminal_status=status, formal_tool_calls=len(calls))
        result['material_release'] = native('material-release', lambda a: a.release(domain, x['native_token']))
        if result['material_release'].get('released') is not True:
            raise ValueError('Exact original material release unconfirmed')
        result['after_material_release'] = witness('check', 'after-material-release')
        if result['after_material_release']['unchanged'] is not True:
            raise ValueError('Release changed original witness')
    result['witness_release'] = witness('release', 'witness-release')
    if result['witness_release'].get('released') is not True:
        raise ValueError('Exact original witness release unconfirmed')
    if (prior / 'result.json').read_bytes() != original:
        raise ValueError('Original failed evidence changed')
    result['isolated_pending'] = pending.pending_path(domain).exists()
    result['passed'] = not result['isolated_pending']
    save_new(output / 'result.json', result)
    print(json.dumps(dict(passed=result['passed'], formal_tool_calls=result['formal_tool_calls'],
        model_setters_called=0, original_failed_verdict_preserved=True)))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
