"""Audit actual three-way inverse artifacts; never grants whole-tool acceptance."""
import argparse
from copy import deepcopy
import json
from pathlib import Path
import statistics

import bd_service as service
import bd_drawing_order_effects as drawing
from bd_structure_journal import StructureJournal
from bd_parent_order_effects import OPERATIONS
from bde_public_oracle import compare


def read(path):
    return json.loads(path.read_text(encoding='utf-8'))


def patched_graph(before, receipt):
    result = deepcopy(before)
    rows = {row['ref']: row for row in result['entries']}
    for delta in receipt['differences']:
        if rows.get(delta['ref']) != delta['before']:
            raise ValueError('Independent actual diff conflicts with original full graph')
        if delta['after'] is None:
            rows.pop(delta['ref'])
        else:
            rows[delta['ref']] = deepcopy(delta['after'])
    result['entries'] = [rows[ref] for ref in sorted(rows)]
    for field, kind in (('lookup_nodes', 'node'), ('lookup_edges', 'edge')):
        result[field] += sum(row['kind'] == kind for row in rows.values()) - sum(row['kind'] == kind for row in before['entries'])
    return result


def drawing_wal(path, row, recovery):
    journal = StructureJournal(path.parent / ('state/edits' if recovery else 'journal'))
    checked = 0
    for key in ('edit', 'inverse', 'independent_deletion', 'compensation'):
        if key not in row:
            continue
        events = journal.read(row[key]['change_id'])
        intent = events[0]['payload']
        inverse = 'reverts' in intent
        original = journal.read(intent['reverts']) if inverse else events
        request = original[0]['payload']
        if request['operation'] not in OPERATIONS:
            continue
        token = intent['reverts'] if inverse else row[key]['change_id']
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        observed = next(e['payload'] for e in events if e['kind'] == 'observed')
        drawing.validate_preparation(prepared.get('drawing_order_before'), prepared.get('drawing_order_expected'),
            token=token, diagram=request['diagram'], physical_before=prepared.get('parent_order_before'),
            physical_expected=prepared.get('parent_order_expected'))
        effects = observed.get('drawing_order_effects', [])
        if (not drawing.postcondition(effects, prepared['drawing_order_before'], prepared['drawing_order_expected'])
                or observed.get('drawing_order_differences') != drawing.differences(effects)):
            raise ValueError('Durable actual drawing effect differs from prepared expectation')
        if inverse:
            original_effects = next(e['payload'].get('drawing_order_effects', []) for e in original if e['kind'] == 'observed')
            drawing.validate_inverse(original_effects, prepared['drawing_order_before'], prepared['drawing_order_expected'],
                                     token=token, diagram=request['diagram'])
        checked += 1
    return checked


def audit(path, recovery=False, material_only=False):
    value = read(path)
    if value.get('passed') is not True or len(value['rounds']) != 3 or value.get('source_drift') or value['wire']['errors']:
        raise ValueError('Three real passing rounds without drift/wire errors required: ' + str(path))
    if value.get('assertion_delta', 0) != 0 or material_only and value.get('detached_material_probe_enabled') is not True:
        raise ValueError('Material audit requires actual probes without new recorded assertions')
    for side in ('requests', 'responses'):
        if value['wire'][side]['parse_error'] is not None or value['wire'][side]['incomplete_bytes'] != 0:
            raise ValueError('Complete parsed Cebra frames required')
    for name, sha in value['source_manifest'].items():
        if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != sha:
            raise ValueError('Artifact is not the current source candidate: ' + name)
    tampers = 0
    drawing_checks = 0
    for row in value['rounds']:
        if 'bde_drawing_order_evidence.st' in value['source_manifest']:
            drawing_checks += drawing_wal(path, row, recovery)
        before = row['before'] if recovery else row['full_before']
        independent = row.get('independent_edit', row.get('independent_creation', row.get('independent_deletion')))
        if not material_only and (independent is None or independent['status'] != 'applied_observed'):
            raise ValueError('Actual independent edit/creation/deletion receipt required')
        expected = deepcopy(before) if material_only else patched_graph(before, independent)
        after = row['native_after'] if recovery else row['restored']
        public = row['public_after'] if recovery else row['public_restored']
        if after != expected or compare(expected['entries'], public)['passed'] is not True:
            raise ValueError('Complete preserved inverse differs from independently applied actual diff')
        compensation_status = 'verified_local' if 'independent_deletion' in row else 'applied_observed'
        if not material_only and (row.get('compensation_exact') is not True or row['final_native'] != before
                or row['final_public'] != row['public_before'] or row['compensation']['status'] != compensation_status):
            raise ValueError('Separately journaled compensation must restore the complete baseline')
        if 'independent_deletion' in row:
            if (row.get('compensation_method') != 'formal_inverse'
                    or row.get('compensation_reverts') != independent['change_id']
                    or row['compensation'].get('reverts') != independent['change_id']
                    or 'graphical_compensation_validation' not in row
                    or not row.get('actual_compensation_diff') or row['independent_oracle']['passed'] is not True):
                raise ValueError('Independent deletion requires an actual separately verified formal inverse')
        if recovery:
            preview = row['inverse_tool_preview']
            if (preview['status'] != 'preview' or preview['setter_called'] is not False
                    or preview['validation']['inverse_expected_matches'] is not True
                    or preview['validation']['original_after_matches'] is not False):
                raise ValueError('Actual tool preview must accept a genuinely changed scoped observation')
            for key in ('apply_reconciliation', 'inverse_reconciliation', 'released_reconciliation'):
                if row[key]['model_setters_called'] != 0 or row[key]['reconciled'] is not True:
                    raise ValueError('Reconciliation must not dispatch model setters')
            if (row['apply_dispatches'] != 1 or row['inverse_dispatches'] != 1
                    or row['released_reconciliation']['native_state'] != 'released'):
                raise ValueError('Original writes must execute once and released recovery must be durable')
        elif (row['inverse']['status'] != 'verified_local' or row['oracle_before']['passed'] is not True
                or not material_only and (row['independent_scope_changed'] is not True
                    or row['independent_value_plan']['compatible'] is not True or row['inverse_expected_full'] != expected)):
            raise ValueError('Genuine compatible scoped inverse and independent baseline oracle required')
        if 'detached_material' in row:
            material = row['detached_material']
            if (material['passed'] is not True or material['tamper_fields_restored'] is not True
                    or material['model_inverse_setters_called'] != 0 or material['store_called'] is not False):
                raise ValueError('Detached tamper probes must be restored before formal inverse')
            for case in material['cases']:
                if 'preview_refusal' in case or 'inverse_refusal' in case:
                    if (case.get('mutation_started') is not False
                            or not case.get('preview_refusal', '').startswith('BDE_STRUCTURE_CONFLICT:')
                            or not case.get('inverse_refusal', '').startswith('BDE_STRUCTURE_CONFLICT:')):
                        raise ValueError('Every native material tamper must refuse both paths before setters')
                    tampers += 1
    return {'artifact': str(path.relative_to(service.ROOT)), 'sha256': service.digest(path.read_bytes()),
            'operation': value['operation'], 'rounds': len(value['rounds']), 'recovery': recovery, 'material_only': material_only,
            'wire': value['wire'], 'application_receipt_losses': 6 if recovery else 0,
            'native_tamper_cases': tampers, 'native_precondition_refusals': tampers * 2,
            'drawing_wal_operations_checked': drawing_checks,
            **({} if recovery else {'edit_median_ms': statistics.median(row['edit_ms'] for row in value['rounds']),
                                   'inverse_median_ms': statistics.median(row['inverse_ms'] for row in value['rounds'])})}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--experiment', type=Path, action='append', default=[])
    parser.add_argument('--recovery', type=Path, action='append', default=[])
    parser.add_argument('--material', type=Path, action='append', default=[])
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'scope': __doc__, 'experiments': []}
    try:
        for path in args.experiment:
            result['experiments'].append(audit(path.resolve()))
        for path in args.recovery:
            result['experiments'].append(audit(path.resolve(), recovery=True))
        for path in args.material:
            result['experiments'].append(audit(path.resolve(), material_only=True))
        result['rounds'] = sum(row['rounds'] for row in result['experiments'])
        result['application_receipt_losses'] = sum(row['application_receipt_losses'] for row in result['experiments'])
        result['native_tamper_cases'] = sum(row['native_tamper_cases'] for row in result['experiments'])
        result['native_precondition_refusals'] = sum(row['native_precondition_refusals'] for row in result['experiments'])
        result['drawing_wal_operations_checked'] = sum(row['drawing_wal_operations_checked'] for row in result['experiments'])
        result['independent_edit_rounds'] = sum(row['rounds'] for row in result['experiments'] if not row['material_only'])
        result['passed'] = bool(result['experiments'])
    except Exception as error:
        result['error'] = repr(error)
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'rounds', 'application_receipt_losses', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
