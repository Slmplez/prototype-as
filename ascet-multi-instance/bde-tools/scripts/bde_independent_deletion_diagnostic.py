"""Read-only diagnosis of recorded independent-deletion order failures/conflicts."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan
from bd_edit_journal import NativePreconditionConflict
from bd_windows_endpoint import endpoint_process
from bde_public_oracle import compare, encoded


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--expected-conflict', action='store_true', help='Diagnose a retained second inverse drawing-gap refusal')
    args = parser.parse_args()
    source_path, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not source_path.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(source_path):
        raise ValueError('Separate owned source and output paths required')
    source = json.loads((source_path / 'result.json').read_text(encoding='utf-8'))
    row = source['rounds'][-1]
    if (source.get('passed') is not False or source.get('independent_edit') != 'delete_literal'
            or row['inverse']['status'] != 'verified_local'
            or row['compensation']['status'] != ('conflict' if args.expected_conflict else 'verified_local')):
        raise ValueError('Recorded completed inverse or explicit second-inverse conflict required')
    journal = StructureJournal(source_path / 'journal')
    request = journal.read(row['edit']['change_id'])[0]['payload']
    domain = request['domain']
    manifest_path = Path(source['manifest'])
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text(encoding='utf-8'))
    if (preparation.get('passed') is not True or endpoint_process(manifest['port']) != process['pid']
            or domain['database'] != manifest['database']
            or domain['process_epoch'] != str(process['pid']) + '/' + process['start_time_utc']):
        raise ValueError('Exact owned prepared runtime required')
    check_pending(domain)
    output.mkdir(parents=True, exist_ok=False)
    hashes = lambda: {str(path.relative_to(source_path)): service.digest(path.read_bytes())
                      for path in source_path.rglob('*') if path.is_file()}
    result = {'passed': False, 'model_setters_called': 0, 'store_called': False,
              'full_delivery': False, 'original_hashes': hashes(), 'manifest': str(manifest_path),
              'scope': 'read-only reproduction of a retained completed inverse verification failure'}
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    wire = None
    try:
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            adapter_env = dict(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(request['component'], environment=adapter_env) as adapter:
                native = adapter.observe(domain, [])
                public = adapter.observe_public(domain)
                result['native_current'], result['public_current'] = native, public
                if args.expected_conflict:
                    token = row['independent_deletion']['change_id']
                    result['preserved_independent_deletion'] = native == row['inverse_expected_full'] and public == row['public_restored']
                    result['inverse_refusals'] = []
                    for _ in range(2):
                        try:
                            adapter.validate_revert(domain, token)
                        except NativePreconditionConflict as error:
                            result['inverse_refusals'].append(str(error))
                        else:
                            raise ValueError('Expected native drawing-gap inverse refusal disappeared')
                    result['native_retained_status'] = adapter.recovery_status(domain, token)
                    result['native_after'] = adapter.observe(domain, [])
                    result['public_after'] = adapter.observe_public(domain)
                    result['bookends_equal'] = result['native_after'] == native and result['public_after'] == public
                else:
                    diagnose_order(adapter, domain, row, result, native, public)
        result['original_evidence_unchanged'] = hashes() == result['original_hashes']
        if args.expected_conflict:
            result['passed'] = (result['preserved_independent_deletion'] and result['bookends_equal']
                and result['original_evidence_unchanged'] and not wire['errors']
                and result['native_retained_status']['state'] == 'applied'
                and all('DRAWING_RESTORE_GAP_AMBIGUOUS' in error for error in result['inverse_refusals']))
            result['restoration_completed'] = False
        else:
            result['passed'] = (result['native_complete_equal'] and not result['public_exact_equal']
                and result['public_projection']['passed'] and result['public_complete_row_multisets_equal']
                and result['bookends_equal'] and result['original_evidence_unchanged'] and not wire['errors'])
        result['drawing_order_restored'] = False
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'native_complete_equal', 'public_exact_equal',
        'public_node_order_before', 'public_node_order_current', 'original_evidence_unchanged', 'error')}))
    return 0 if result['passed'] else 1


def diagnose_order(adapter, domain, row, result, native, public):
    result['native_complete_equal'] = native == row['full_before']
    result['public_exact_equal'] = public == row['public_before']
    result['public_projection'] = compare(row['full_before']['entries'], public)
    result['public_complete_row_multisets_equal'] = all(
        sorted(map(encoded, public[key])) == sorted(map(encoded, row['public_before'][key]))
        for key in ('nodes', 'edges', 'comments'))
    result['public_node_order_before'] = [node['id'] for node in row['public_before']['nodes']]
    result['public_node_order_current'] = [node['id'] for node in public['nodes']]
    target = next(ref for ref in row['independent_deleted_refs'] if ref.startswith('n'))
    operation, arguments, expected = plan({'structure': native}, {'op': 'delete_node', 'target': 'Main/' + target})
    result['read_only_preparation'] = adapter.validate(domain, operation, arguments)
    if result['read_only_preparation'] != expected:
        raise ValueError('Read-only preflight changed collected state')
    result['graphical_current'] = adapter.graphical_current
    result['native_after'] = adapter.observe(domain, [])
    result['public_after'] = adapter.observe_public(domain)
    result['bookends_equal'] = result['native_after'] == native and result['public_after'] == public


if __name__ == '__main__':
    raise SystemExit(main())
