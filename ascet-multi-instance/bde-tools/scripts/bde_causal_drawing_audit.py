"""Read-only causal double-inverse proof and fresh complete baseline audit."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
import bd_drawing_order_effects as drawing
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    path = args.experiment.resolve()
    if not path.is_relative_to(service.ROOT / 'analysis/bde-experiments'):
        raise ValueError('Owned original experiment required')
    original = json.loads((path / 'result.json').read_text(encoding='utf-8'))
    manifest_path = Path(original['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    recovery_case = original.get('independent_deletion_enabled') is True
    journal = StructureJournal(path / ('state/edits' if recovery_case else 'journal'))
    recorded_domain = journal.read(original['rounds'][0]['edit']['change_id'])[0]['payload']['domain']
    if (endpoint_process(manifest['port']) != process['pid']
            or recorded_domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact original live disposable process required')
    def hashes():
        return {str(file.relative_to(path)): service.digest(file.read_bytes()) for file in path.rglob('*') if file.is_file()}
    before_hashes = hashes()
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'scope': __doc__, 'original_experiment_passed': original['passed'],
        'original_experiment': str(path / 'result.json'), 'full_delivery': False,
        'model_setters_called': 0, 'store_calls': 0, 'automatic_retry': False, 'proofs': []}
    names = ('bde_causal_drawing_audit.py', 'bd_drawing_causal.py', 'bd_drawing_order_effects.py',
             'bd_structure_journal.py', 'bd_native_structure.py', 'AscetStructureRead.cs')
    result['source_manifest'] = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in names}
    try:
        for row in original['rounds']:
            primary_id, secondary_id = row['edit']['change_id'], row['independent_deletion']['change_id']
            inverse_id = row['inverse']['change_id']
            compensation_id = row['secondary_inverse' if recovery_case else 'compensation']['change_id']
            secondary, compensation = journal.read(secondary_id), journal.read(compensation_id)
            if any(journal.receipt(token, journal.read(token))['status'] != 'verified_local'
                   for token in (inverse_id, compensation_id)):
                raise ValueError('Both actual inverses must have completed before this read-only audit')
            prepared = next(event['payload'] for event in compensation if event['kind'] == 'prepared')
            observed = next(event['payload'] for event in compensation if event['kind'] == 'observed')
            effects = next(event['payload']['drawing_order_effects'] for event in secondary if event['kind'] == 'observed')
            proof = prepared.get('drawing_order_witness')
            if proof is not None:
                if proof['source_token'] != primary_id or proof['source_inverse_id'] != inverse_id:
                    raise ValueError('Causal source must be the actual primary edit and completed inverse')
                drawing.validate_inverse(effects, prepared['drawing_order_before'], prepared['drawing_order_expected'],
                    token=secondary_id, diagram=secondary[0]['payload']['diagram'], witness=proof,
                    source_lookup=lambda value: journal.causal_drawing_source(value, secondary[0]['payload']),
                    component_oid=secondary[0]['payload']['domain']['oid'], generation=prepared['before']['generation'])
                if observed.get('drawing_order_witness_sha256') != fingerprint(proof):
                    raise ValueError('Actual causal proof hash differs')
            elif original['fixture_variant'] == 'operator_chain' and original['operation'] == 'delete_node':
                raise ValueError('Previously ambiguous operator chain needs a real causal proof')
            if not drawing.postcondition(observed.get('drawing_order_effects'), prepared['drawing_order_before'], prepared['drawing_order_expected']):
                raise ValueError('Exact actual drawing order differs from preparation')
            result['proofs'].append({'round': row['round'], 'witness_used': proof is not None,
                'source_token': proof['source_token'] if proof else None,
                'source_inverse_id': proof['source_inverse_id'] if proof else None,
                'witness_sha256': fingerprint(proof) if proof else None})
        domain = secondary[0]['payload']['domain']
        pending.check(domain)
        env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
        with patch.dict(os.environ, env), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with NativeStructureAdapter(original['component'], environment={**env, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                result['native_after'] = adapter.observe(domain, [])
                result['public_after'] = adapter.observe_public(domain)
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        baseline = original['rounds'][0]
        result['complete_baseline_restored'] = (result['native_before'] == baseline['before' if recovery_case else 'full_before'] == result['native_after']
            and result['public_before'] == baseline['public_before'] == result['public_after'])
        result['original_files_unchanged'] = hashes() == before_hashes
        result['passed'] = result['complete_baseline_restored'] and result['original_files_unchanged'] and not result['wire']['errors']
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'complete_baseline_restored', 'original_files_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
