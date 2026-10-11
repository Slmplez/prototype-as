"""Separate production inverse for a recorded observed isolated experiment."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process
from bd_native_graphical_effects import validate_actual_diff


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--undo-independent-creation', action='store_true',
                        help='First formally undo the separately observed literal creation')
    args = parser.parse_args()
    source_path = args.experiment.resolve()
    output = args.output.resolve()
    workspace = service.ROOT / 'analysis/bde-experiments'
    if (not source_path.is_relative_to(workspace) or not output.is_relative_to(workspace)
            or output.is_relative_to(source_path)):
        raise ValueError('Separate owned experiment/output paths required')
    source = json.loads((source_path / 'result.json').read_text(encoding='utf-8'))
    baseline = source['rounds'][-1]
    edit = baseline['edit']
    token = edit['change_id']
    creation_token = None
    if args.undo_independent_creation:
        creation = baseline['independent_creation']
        if creation['status'] != 'applied_observed':
            raise ValueError('Independent creation must have a verified observed result')
        creation_token = creation['change_id']
    original_root = source_path / 'journal'
    if not original_root.is_dir(): original_root = source_path / 'state/edits'
    original = StructureJournal(original_root)
    events = original.read(token)
    request = events[0]['payload']
    if (source.get('passed') is not False or original.receipt(token, events)['status'] not in
            ('applied_observed', 'postcondition_mismatch') or request['operation'] not in ('delete_node', 'disconnect_data')):
        raise ValueError('An observed isolated failed experiment is required; unknown setters are not replayed')
    domain = request['domain']
    manifest_path = Path(source['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text(encoding='utf-8'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    if (preparation.get('passed') is not True or endpoint_process(manifest['port']) != process['pid']
            or domain['database'] != manifest['database']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact prepared live disposable runtime required')
    output.mkdir(parents=True, exist_ok=False)
    hashes = lambda: {str(path.relative_to(source_path)): service.digest(path.read_bytes())
                      for path in source_path.rglob('*') if path.is_file()}

    class SeparateJournal(StructureJournal):
        def read(self, change_id):
            return original.read(change_id) if change_id in (token, creation_token) else super().read(change_id)

    log = SeparateJournal(output / 'journal')
    result = {'passed': False, 'full_delivery': False, 'source_change_id': token,
              'original_wal_status': original.receipt(token, events)['status'], 'automatic_retry': False,
              'original_hashes': hashes(), 'stage': 'prepared_separate_inverse',
              'scope': 'production inverse of an observed isolated failure; original files remain immutable'}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    wire = None
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    try:
        result['production_binary_sha256'] = service.digest(compile_bridge().read_bytes())
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            adapter_env = dict(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(request['component'], request['diagram'], environment=adapter_env) as adapter:
                if creation_token is not None:
                    creation_source = original.read(creation_token)[0]['payload']
                    if (creation_source['domain'] != domain or creation_source['component'] != request['component']
                            or creation_source['operation'] != 'create_block' or creation_source['arguments'][1] != 'literal'):
                        raise ValueError('Exact independent same-component literal creation required')
                    result['creation_inverse'] = log.revert(creation_token, output.name + '-creation', adapter, nullcontext)
                    save()
                    if result['creation_inverse']['status'] != 'verified_local':
                        raise ValueError('Independent creation inverse failed; do not replay original')
                result['inverse'] = log.revert(token, output.name, adapter, nullcontext)
                result['stage'] = 'inverse_observed'
                save()
                if result['inverse']['status'] != 'verified_local':
                    raise ValueError('Separate inverse did not verify; preserve all material')
                inverse = log.read(result['inverse']['change_id'])
                current = next(event['payload'] for event in inverse if event['kind'] == 'prepared')
                actual = next(event['payload'] for event in inverse if event['kind'] == 'observed')
                result['graphical_validation'] = validate_actual_diff(current['graphical_current'], actual['graphical_actual'])
                result['native_after'] = adapter.observe(domain, [])
                result['public_after'] = adapter.observe_public(domain)
                result['native_exact_restored'] = result['native_after'] == baseline.get('full_before', baseline.get('before'))
                result['public_exact_restored'] = result['public_after'] == baseline['public_before']
        result['original_evidence_unchanged'] = hashes() == result['original_hashes']
        result['passed'] = (result['native_exact_restored'] and result['public_exact_restored']
                            and result['original_evidence_unchanged'] and not wire['errors'])
        result['stage'] = 'restoration_verified' if result['passed'] else 'verification_failed'
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'stage', 'error', 'original_evidence_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
