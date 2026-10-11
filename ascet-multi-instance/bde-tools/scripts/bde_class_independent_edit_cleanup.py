"""Separately compensate confirmed ordinary/Class edits after a retained research failure."""
import argparse
import json
import os
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
import bd_instance_pending as pending
from bd_class_source_candidate import audit_candidate_journal, validate_receipts
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--round', type=int, default=0)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--ordinary-compensation', type=Path,
                        help='Use an already confirmed ordinary inverse receipt instead of repeating it')
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    experiment, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not experiment.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(experiment):
        raise ValueError('Separate owned research failure and cleanup evidence required')
    previous = tools.load(experiment / 'result.json')
    row = previous['rounds'][args.round]
    service.STORE = experiment / 'state'
    intent = tools.read_intent(row['change_id'])
    if intent['domain']['process_epoch'] != epoch:
        raise ValueError('Original edit process expired')
    pending.check(intent['domain'])
    original = {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                for path in experiment.rglob('*') if path.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'process_epoch': epoch, 'full_delivery': False, 'experiment': str(experiment),
              'original_failure_remains_failed': True, 'tool_calls': []}
    client = ToolClient(output, intent['domain']['session'], result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']), ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle')
    os.environ.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle')

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    def call(tool, arguments):
        live_manifest(args.manifest)
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, arguments)
        if error or wire['errors'] or any(wire[key].result()['parse_error'] is not None for key in ('request', 'response')):
            raise ValueError(body)
        return head, body

    try:
        if args.ordinary_compensation:
            previous_cleanup = tools.load(args.ordinary_compensation / 'result.json')
            if (previous_cleanup['process_epoch'] != epoch or not args.ordinary_compensation.resolve().is_relative_to(owned)):
                raise ValueError('Ordinary compensation context differs')
            receipt = previous_cleanup['ordinary_inverse']
            if receipt.get('reverts') != row['ordinary_change_id']:
                raise ValueError('Confirmed ordinary inverse belongs to another edit')
            result['ordinary_inverse_reused_without_dispatch'] = True
        else:
            _, body = call('bd_revert', {'change_id': row['ordinary_change_id'], 'request_id': 'cleanup-ordinary-' + output.name})
            receipt = json.loads(body)
        if receipt.get('status') not in ('verified_local', 'applied_observed'):
            raise ValueError('Ordinary inverse lacks verified actual effects')
        result['ordinary_inverse'] = receipt
        save()
        head, _ = call('bd_read', {'component': intent['identity']['component'], 'view': 'class_interface', 'max_bytes': 8192})
        current = service.load_record(head['snapshot'], 's_', 'snapshots')
        _, applied, _ = tools.terminal_raw(row['change_id'])
        if current['class_interface'] != tools.observation(applied, 'after'):
            raise ValueError('Ordinary compensation does not restore the complete applied Class baseline')
        candidate_output = output / 'candidate-release'
        candidate_output.mkdir()
        tools.write(candidate_output / 'expected.json', current['class_interface'])
        tools.write(candidate_output / 'input.json', {**tools.inputs(current),
            'expected_observation_path': str(candidate_output / 'expected.json'),
            'native_class_source_candidate': {'token': row['candidate_token'], 'action': 'release'}})
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            released, code = tools.invoke(candidate_output / 'input.json', candidate_output / 'raw.json', 'observe')
        if code or wire['errors']:
            raise ValueError('Private candidate release failed: ' + str(released.get('error')))
        result['candidate_release'] = validate_receipts(released, current['class_interface'], row['candidate_token'],
            'release', before=current['class_interface'], applied=current['class_interface'])
        result['candidate_journal'] = audit_candidate_journal(released['candidate_journal'])
        _, body = call('bd_revert', {'change_id': row['change_id'], 'request_id': 'cleanup-class-' + output.name})
        receipt = json.loads(body)
        if receipt.get('status') != 'verified_class_inverse':
            raise ValueError('Strict Class compensation failed')
        result['class_inverse'] = receipt
        head, _ = call('bd_read', {'component': intent['identity']['component'], 'view': 'class_interface', 'max_bytes': 8192})
        final = service.load_record(head['snapshot'], 's_', 'snapshots')
        if final['class_interface'] != tools.observation(applied, 'before') or pending.pending_path(intent['domain']).exists():
            raise ValueError('Complete original Class/ordinary/configuration baseline not restored')
        result.update(passed=True, complete_original_baseline_restored=True, pending_clear=True)
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['original_changed_files'] = [name for name, digest in original.items()
            if not (experiment / name).exists() or service.digest((experiment / name).read_bytes()) != digest]
        result['new_evidence_files'] = [str(path.relative_to(experiment)) for path in experiment.rglob('*')
                                      if path.is_file() and str(path.relative_to(experiment)) not in original]
        result['passed'] = result['passed'] and not result['original_changed_files']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'complete_original_baseline_restored', 'original_changed_files')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
