"""Distinct guarded original-object restoration for a retained failed field forward.

Experimental isolated recovery only. It preserves the original unknown WAL and
pending marker until separate durable formal classification is implemented.
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
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bd_source_inverse_oracle import decode_graph, equal
from bd_native_graphical_effects import same_current


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--prepared', type=Path,
        help='Exact immutable preparation; applying a new or already-started transaction is prohibited')
    parser.add_argument('--inspect-prepared', type=Path,
        help='Readonly classification of an already retained undispatched preparation; never prepares or applies again')
    args = parser.parse_args()
    if args.prepared is not None and args.inspect_prepared is not None:
        parser.error('Choose apply or readonly prepared classification')
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not failed.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned retained failure and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['passed'] is not False or prior['witness_retained'] is not True or epoch != prior['process_epoch']:
        raise ValueError('Retained failure and original live epoch required')
    domain = prior['domain']; marker = pending_path(domain)
    marker_bytes = marker.read_bytes(); pending = json.loads(marker_bytes)
    if pending['domain'] != domain or pending['command'] != 'apply':
        raise ValueError('Exact failed forward quarantine required')
    token, witness = pending['native_token'], prior['capture']['token']
    original_result_sha = service.digest((failed / 'result.json').read_bytes())
    prepared_trial = None
    inspected_trial = None
    prior_preparation = args.prepared or args.inspect_prepared
    if prior_preparation is not None:
        prepared_path = prior_preparation.resolve()
        if not prepared_path.is_relative_to(owned):
            raise ValueError('Owned immutable preparation required')
        retained_trial = json.loads((prepared_path / 'result.json').read_text(encoding='utf-8'))
        if (retained_trial.get('mode') != 'prepare' or retained_trial.get('model_mutation_dispatched') is not False
                or retained_trial['domain'] != domain or retained_trial['native_token'] != token
                or retained_trial['witness_token'] != witness or retained_trial['original_result_sha256'] != original_result_sha):
            raise ValueError('Verified exact same-epoch preparation required')
        if args.prepared is not None:
            if retained_trial.get('passed') is not True:
                raise ValueError('Only a verified retained preparation can be applied')
            prepared_trial = retained_trial
        else:
            inspected_trial = retained_trial
        transaction = retained_trial['transaction']
    else:
        transaction = 'edit_' + fingerprint({'domain': domain, 'failed': token,
            'original_result_sha256': original_result_sha, 'purpose': 'field_failure_compensation', 'request_id': output.name})
    output.mkdir(parents=True)
    result = {'passed': False, 'restored': False, 'scope': 'Separate eval-only guarded original native/source compensation',
        'mode': 'apply' if prepared_trial else 'prepare', 'failed_trial': str(failed),
        'manifest': prior['manifest'], 'process_epoch': epoch, 'domain': domain,
        'component': prior['component'], 'native_token': token, 'transaction': transaction,
        'witness_token': witness, 'original_result_sha256': original_result_sha,
        'pending_sha256': service.digest(marker_bytes), 'source_manifest': source_manifest(),
        'original_edit_replayed': False, 'model_mutation_dispatched': False,
        'complete_case_pass': False, 'full_delivery': False, 'pending_cleared': False}
    if inspected_trial is not None:
        result['retained_preparation_readonly_classification'] = str(prior_preparation.resolve())
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        destination = output / 'source' / relative; destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, destination)
    wire = None
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        def request(action, signature=''):
            return {'cmd': 'field_failure_compensation', 'token': token, 'transaction': transaction,
                'witness_token': witness, 'action': action, 'prepared_signature': signature}
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                result['before_witness'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': witness})
                save()
                if prior_preparation is None:
                    save_new(output / 'intent.json', {'domain': domain, 'native_token': token, 'transaction': transaction,
                        'witness': witness, 'pending_sha256': result['pending_sha256'], 'automatic_retry': False})
                    reply = adapter._exchange(request('prepare'))
                else:
                    reply = adapter._exchange(request('inspect'))
                result['preparation'] = reply; save()
                plan = reply['compensation']
                if (plan['transaction'] != transaction or plan['witness'] != witness or plan['state'] != 'prepared'
                        or plan['current_verified'] is not True or plan['original_forward_status_unchanged'] is not True
                        or reply['original_edit_replayed'] is not False or reply['store_called'] is not False
                        or any(plan[k]['state'] != 'prepared' or plan[k]['completed_primitives'] != 0
                            for k in ('native_progress', 'source_progress'))):
                    raise ValueError('Exact undispatched original compensation material required')
                if prepared_trial is not None:
                    old = prepared_trial['preparation']['compensation']
                    if old != plan or prepared_trial['source_manifest'] != result['source_manifest']:
                        raise ValueError('Retained prepared material or fixed sources changed')
                result['prepared_check'] = adapter._exchange(request('check', plan['signature']))
                save()
                if prepared_trial is not None:
                    if marker.read_bytes() != marker_bytes or service.digest((failed / 'result.json').read_bytes()) != original_result_sha:
                        raise ValueError('Original quarantine/failed evidence changed before dispatch')
                    save_new(output / 'compensation-started.json', {'transaction': transaction,
                        'native_token': token, 'prepared_sha256': fingerprint(plan), 'automatic_retry': False})
                    result['model_mutation_dispatched'] = True; save()
                    reply = adapter._exchange(request('apply', plan['signature']))
                    result['compensation_observed'] = reply; save()
                    proof = reply['compensation']
                    if (proof['state'] != 'restored' or proof['original_verified'] is not True
                            or proof['original_forward_status_unchanged'] is not True
                            or any(proof[k]['state'] != 'applied' for k in ('native_progress', 'source_progress'))
                            or proof['primitive_writes'] != sum(proof[k]['completed_primitives'] for k in ('native_progress', 'source_progress'))
                            or not equal(decode_graph(proof['source_after'], domain['oid']), decode_graph(proof['expected_source'], domain['oid']))):
                        raise ValueError('Original native/source restoration/progress proof differs')
                    save_new(output / 'compensation-finished.json', {'transaction': transaction,
                        'status': 'restored_current_epoch', 'primitive_writes': proof['primitive_writes'],
                        'outcome_sha256': fingerprint(reply), 'automatic_retry': False})
                    result['fresh_compensation'] = adapter._exchange(request('inspect'))
                    if result['fresh_compensation'] != reply:
                        raise ValueError('Fresh compensation differs from durable terminal observation')
                result['after_witness'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': witness})
        if prepared_trial is None:
            compared = ('generation', 'physical', 'drawing', 'ids_unchanged', 'source_unchanged',
                'native_fields_unchanged', 'physical_identity_order_unchanged', 'drawing_identity_order_unchanged')
            result['preparation_unchanged'] = (all(result['before_witness'][k] == result['after_witness'][k] for k in compared)
                and same_current(result['before_witness']['terminal_graph'], result['after_witness']['terminal_graph']))
            result['passed'] = result['preparation_unchanged']
        else:
            result['restored'] = result['after_witness']['unchanged'] is True
            result['passed'] = result['restored']
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['pending_retained'] = marker.read_bytes() == marker_bytes
        result['original_failure_unchanged'] = service.digest((failed / 'result.json').read_bytes()) == original_result_sha
        result['passed'] = result['passed'] and result['sources_match'] and result['pending_retained'] and result['original_failure_unchanged']
    except Exception as error:
        result['passed'] = False; result['error'] = str(error); result['traceback'] = traceback.format_exc()
    finally:
        if wire is not None:
            result['wire'] = wire_result(wire)
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'mode', 'pending_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
