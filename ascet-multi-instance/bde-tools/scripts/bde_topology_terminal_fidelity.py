"""Distinct, guarded exact-reference repair of a retained topology terminal.

This eval-only transaction is not a formal managed topology inverse.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failure', type=Path, required=True)
    parser.add_argument('--inverse-evidence', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    failure, inverse_path, output = (p.resolve() for p in (args.failure, args.inverse_evidence, args.output))
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (failure, inverse_path, output)) or output.exists():
        raise ValueError('Owned exact retained materials and fresh output required')
    prior = json.loads((failure / 'result.json').read_text(encoding='utf-8'))
    inverse = json.loads((inverse_path / 'result.json').read_text(encoding='utf-8'))
    if (prior.get('operation') not in ('disconnect_data', 'delete_node')
            or inverse.get('inverse', {}).get('status') != 'verified_local'
            or inverse.get('native_token') != prior['edit']['change_id']
            or inverse.get('historical_failure') != str(failure)
            or inverse.get('witness_retained') is not True
            or inverse['domain'] != prior['domain']):
        raise ValueError('Exact first observed inverse with retained original witness required')
    manifest, process, epoch = live_manifest(prior['manifest'])
    if epoch != prior['process_epoch']:
        raise ValueError('Original native/source identity epoch expired')
    domain = prior['domain']; pending.check(domain)
    output.mkdir(parents=True)
    transaction = 'edit_' + fingerprint({'domain': domain, 'terminal_fidelity': str(output)})
    result = {'passed': False, 'restored': False, 'historical_failure': str(failure),
        'inverse_evidence': str(inverse_path), 'manifest': prior['manifest'], 'process_epoch': epoch,
        'pid': process['pid'], 'port': manifest['port'], 'domain': domain,
        'transaction': transaction, 'native_token': prior['edit']['change_id'],
        'witness_token': prior['witness_capture']['token'], 'source_manifest': source_manifest(),
        'full_delivery': False, 'complete_case_pass': False, 'formal_topology_managed_inverse_enabled': False,
        'scope': 'Eval-only exact terminal native/source primitives; no independent changes allowed',
        'original_edit_redispatched': False, 'historical_failure_rewritten': False, 'witness_retained': True}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        binary = build_oracle(output)
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        result['native_io_attempts'] = 0
        save()
        print(json.dumps({'passed': False, 'native_io_attempts': 0, 'error': str(error)}))
        return 1
    for path in result['source_manifest']:
        destination = output / 'source' / path
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / path, destination)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']))

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def run(action, signature='', *, execute=False):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                marker = None
                if execute:
                    save_new(output / 'durable-intent.json', {'domain': domain, 'transaction': transaction,
                        'native_token': result['native_token'], 'action': action, 'prepared_signature': signature,
                        'automatic_retry': False})
                    marker = pending.begin(domain, 'topology_terminal_fidelity', transaction)
                value = adapter._exchange({'cmd': 'topology_terminal_fidelity', 'action': action,
                    'token': result['native_token'], 'transaction': transaction,
                    'witness_token': result['witness_token'], 'prepared_signature': signature})
                if execute:
                    save_new(output / 'durable-native-outcome.json', value)
                    proof = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': result['witness_token']})
                    save_new(output / 'independent-before-confirmation.json', proof)
                    if value['repair']['state'] != 'restored' or value['repair']['original_verified'] is not True or proof['unchanged'] is not True:
                        raise ValueError('Exact native/source/order/identity restoration not confirmed; keep quarantine')
                    pending.confirmed(marker)
        save_new(output / (action + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    try:
        result['prepared'] = run('prepare'); save()
        if result['prepared']['repair']['state'] != 'prepared' or result['prepared']['repair']['current_verified'] is not True:
            raise ValueError('Fidelity preparation is not guarded by complete CURRENT')
        signature = result['prepared']['repair']['signature']
        result['checked'] = run('check', signature); save()
        result['applied'] = run('apply', signature, execute=True); save()
        result['classified'] = run('inspect', signature); save()
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                final = {'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)}
                result['witness_final'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': result['witness_token']})
                before = json.loads((failure / 'before.json').read_text(encoding='utf-8'))
                result['restored'] = (before['native'] == final['native'] and before['public'] == final['public']
                    and result['witness_final']['unchanged'] is True)
                save_new(output / 'current-restored.json', final); save()
                if not result['restored']:
                    raise ValueError('Fresh complete native/public/original witness differs after fidelity repair')
                result['release'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'release', 'token': result['witness_token']})
                result['witness_retained'] = not result['release']['released']
        save_new(output / 'restoration-wire.json', wire_result(wire))
        result['sources_match'] = source_manifest() == result['source_manifest']
        pending.check(domain)
        result['passed'] = result['restored'] and result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        try:
            result['failed_classification'] = run('inspect')
        except Exception as inspect_error:
            result['classification_error'] = str(inspect_error)
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'witness_retained', 'error')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
