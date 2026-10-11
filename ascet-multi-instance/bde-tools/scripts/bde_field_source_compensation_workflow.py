"""Inspect/recover the exact retained isolated source failure; never resend undo."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_source_compensation import transaction_id
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
import bde_experiments as bench
from bde_main_workflow import build_oracle, save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--recover', action='store_true', help='Use formal bd_inspect recovery to reconcile a retained result or execute one first guarded source-only compensation')
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    failed, output = args.failed.resolve(), args.output.resolve()
    if not failed.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Exact owned failed trial and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if (prior['passed'] is not False or prior['witness_retained'] is not True
            or prior['process_epoch'] != epoch or prior['operation'] != 'set_literal'):
        raise ValueError('Retained isolated literal failure in same epoch required')
    service.STORE = failed / 'store'
    log = StructureJournal(service.STORE / 'edits')
    root_id = prior['edit']['change_id']
    inverses = []
    for directory in log.root.glob('edit_*'):
        events = log.read(directory.name)
        if (events[0]['payload'].get('reverts') == root_id
                and log.receipt(directory.name, events)['status'] == 'outcome_unknown'):
            inverses.append(directory.name)
    if len(inverses) != 1:
        raise ValueError('Exactly one retained failed inverse required')
    inverse_id = inverses[0]
    transaction = transaction_id(prior['domain'], root_id, inverse_id)
    output.mkdir(parents=True)
    result = {'passed': False, 'failed_trial': str(failed), 'domain': prior['domain'],
        'source_manifest': source_manifest(), 'native_token': root_id, 'failed_change_id': inverse_id,
        'source_transaction_id': transaction, 'source_compensation_requested': args.recover,
        'old_undo_replayed': False, 'complete_case_pass': False, 'failure_relabelled': False}
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']))
        def observe(label):
            wire = None
            try:
                with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(prior['component'], timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(prior['domain'])
                        witness = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': prior['witness_capture']['token']})
                        native = adapter.source_recovery(prior['domain'], root_id, 'inspect', transaction, inverse_id)
                save_new(output / (label + '.json'), {'witness': witness, 'source_recovery': native})
                return witness, native
            finally:
                if wire is not None:
                    save_new(output / (label + '-wire.json'), wire_result(wire))
        before, state = observe('before')
        result['before_native_unchanged'] = before['native_fields_unchanged']
        result['before_source_unchanged'] = before['source_unchanged']
        result['eligible'] = state['eligible']
        if args.recover:
            retained = state.get('compensation')
            retained_completed = (
                isinstance(retained, dict) and retained.get('state') == 'applied'
                and retained.get('transaction_id') == transaction
                and retained.get('native_token') == root_id
                and retained.get('failed_change_id') == inverse_id
                and retained.get('native_desired_verified') is True
                and retained.get('source_desired_verified') is True
                and retained.get('source_root_preserved') is True
                and before.get('unchanged') is True)
            result['retained_completed_classification'] = retained_completed
            if not state['eligible'] and not retained_completed:
                raise ValueError('Native progress does not authorize source-only compensation')
            calls = []
            def record(row):
                save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
                calls.append(row)
            wire = None
            try:
                with bench.proxy(upstream_port=manifest['port']) as wire:
                    client = ToolClient(output, prior['domain']['session'], record)
                    client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                    arguments = {'query': 'recovery', 'change_id': inverse_id, 'reconcile': True, 'max_bytes': 12288}
                    meta, body, error = client.call('bd_inspect', arguments)
                result['tool_calls'] = len(calls)
                if error:
                    raise ValueError('Formal source recovery rejected: ' + body)
                verify_pages(calls, body, 12288)
                recovery = json.loads(body)
                save_new(output / 'formal-recovery.json', recovery)
                if recovery.get('reconciled') is not True or recovery.get('receipt', {}).get('status') != 'verified_local':
                    raise ValueError('Formal recovery did not verify complete terminal')
            finally:
                if wire is not None:
                    save_new(output / 'formal-wire.json', wire_result(wire))
            after, final = observe('after')
            result['baseline_restored'] = after['unchanged']
            result['source_compensation'] = final['compensation']
            result['pending_cleared'] = not __import__('bd_instance_pending').pending_path(prior['domain']).exists()
            if not result['baseline_restored'] or not result['pending_cleared']:
                raise ValueError('Complete original native/source witness or pending reconciliation differs')
        else:
            result['model_setters_called'] = 0
            result['store_called'] = False
            result['pending_cleared'] = False
        result['source_unchanged'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['source_unchanged']
    except Exception as error:
        result['error'] = str(error)
        result['traceback'] = traceback.format_exc()
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'eligible', 'baseline_restored', 'pending_cleared', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
