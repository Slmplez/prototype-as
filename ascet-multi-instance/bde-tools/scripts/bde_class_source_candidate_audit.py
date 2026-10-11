"""Observe exact private candidate presence on an owned instance without model writes."""
import argparse
import json
import os
from pathlib import Path
import traceback

import bd_class_tools as tools
from bd_class_source_candidate import audit_candidate_journal, validate_receipts
import bd_service as service
from bde_isolated_runtime import live_manifest
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--round', type=int, default=0)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--retained-images', action='store_true',
                        help='Also independently verify release of Class signature/material records containing the private images')
    parser.add_argument('--abandon-publication', action='store_true',
                        help='Discard only a retained preparation with zero native model steps; does not recover any published mutation')
    parser.add_argument('--publication-status', action='store_true',
                        help='Also require the fixed model publication recovery token to be absent')
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    experiment, output = args.experiment.resolve(), args.output.resolve()
    if not experiment.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(experiment):
        raise ValueError('Separate owned experiment and output required')
    previous = tools.load(experiment / 'result.json')
    row = previous['rounds'][args.round]
    token = row['candidate_token']
    original_input = tools.load(experiment / f"candidate-prepare-{args.round}" / 'input.json')
    tools.require_sandbox(original_input['component'])
    if previous['process_epoch'] != epoch:
        raise ValueError('Candidate process expired; native presence cannot be rebound')
    output.mkdir(parents=True, exist_ok=False)
    before_hashes = {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                     for path in experiment.rglob('*') if path.is_file()}
    service.STORE = output / 'state'
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    os.environ['ASCET_BD_ENDPOINT_PORT'] = str(manifest['port'])
    os.environ['ASCET_BD_PROBE_PORT'] = str(manifest['port'])
    os.environ['ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT'] = str(manifest['port'])
    os.environ['ASCET_BD_CLASS_OBSERVATION_MODE'] = 'public_oracle'
    result = {'passed': False, 'scope': 'Read-only native candidate absence and retained failure byte audit',
              'token': token, 'process_epoch': epoch, 'cebra_endpoint': manifest['port'],
              'model_setters_called': 0, 'store_called': False, 'full_delivery': False,
              'failed_experiment_restated_as_success': False}
    try:
        record = tools.capture(original_input['component'], 'candidate-audit-' + output.name)
        if record['database_session'] != original_input['expected_database_session'] or record['ascet_process_epoch'] != epoch:
            raise ValueError('Current candidate database/process identity differs')
        tools.write(output / 'expected.json', record['class_interface'])
        probe_input = {**tools.inputs(record),
            'expected_observation_path': str(output / 'expected.json'),
            'native_class_source_candidate': {'token': token, 'action': 'status'}}
        if args.abandon_publication:
            os.environ['ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY'] = '1'
            probe_input['native_class_model_publication_abandon'] = token
        if args.abandon_publication or args.publication_status:
            probe_input['native_class_model_publication_status'] = token
        if args.retained_images:
            created = tools.load(experiment / 'state/class-edits' / row['change_id'] / 'raw.json')
            probe_input['recovery_probe_selector'] = created['selector']
        tools.write(output / 'input.json', probe_input)
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            live_manifest(args.manifest)
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            raw, code = tools.invoke(output / 'input.json', output / 'raw.json', 'observe')
        live_manifest(args.manifest)
        result.update(exit_code=code, request=wire['request'].result(), response=wire['response'].result(),
                      wire_errors=wire['errors'], error=raw.get('error'))
        if code or raw.get('status') != 'observed' or raw.get('model_mutation_dispatched') is not False:
            raise ValueError('Native candidate status did not complete')
        result['verified_receipts'] = validate_receipts(raw, record['class_interface'], token, 'status',
            before=record['class_interface'], applied=record['class_interface'])
        result['journal'] = audit_candidate_journal(raw['candidate_journal'])
        result['all_candidates_absent'] = all(item['receipt']['candidate_present'] is False
                                             for item in raw['native_class_source_candidates'])
        if not result['all_candidates_absent'] or result['journal']['status'] != 'recorded':
            raise ValueError('A native candidate remains; status does not release or restore it')
        if args.retained_images:
            probes = raw.get('native_recovery_probe')
            result['all_retained_material_absent'] = (type(probes) is list
                and len(probes) == len(record['class_interface']['owners'])
                and all(item['checks']['material']['record_present'] is False and item['checks']['material']['state'] == 'absent'
                        and item['checks']['signature']['record_present'] is False and item['checks']['signature']['state'] == 'absent'
                        for item in probes))
            if not result['all_retained_material_absent']:
                raise ValueError('A retained Class material/signature record remains after restoration')
        if args.abandon_publication or args.publication_status:
            result['model_publication_status'] = raw.get('model_publication_status')
            if (result['model_publication_status'].get('state') != 'absent'
                    or result['model_publication_status'].get('model_steps') != 0):
                raise ValueError('A model publication recovery record remains')
            result['model_publication_abandoned'] = raw.get('model_publication_abandoned')
        result['passed'] = not wire['errors'] and all(wire[name].result()['parse_error'] is None
                                                    for name in ('request', 'response'))
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        after_hashes = {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                        for path in experiment.rglob('*') if path.is_file()}
        result['original_experiment_files_unchanged'] = before_hashes == after_hashes
        result['passed'] = result['passed'] and result['original_experiment_files_unchanged']
        tools.write(output / 'result.json', result)
    print(json.dumps({key: result.get(key) for key in ('passed', 'all_candidates_absent', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
