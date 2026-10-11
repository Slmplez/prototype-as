"""Retained native prepare and fixed patch plan preflight, no setters/store.

Uses only a preflighted isolated component. This is not edit/inverse acceptance.
"""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_native_material_evidence import reconcile
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--private-patch', action='store_true',
        help='Execute fixed nonzero patches only on freshly allocated private objects')
    parser.add_argument('--executor-profile', choices=('legacy', 'staged_v1'), default='staged_v1')
    parser.add_argument('--native-source-material', action='store_true',
        help='Capture retained source identity images in formal preparation; no model setters/store')
    parser.add_argument('--local-field-inverse', action='store_true',
        help='Bind fixed experimental local native/source planner and evaluate zero patches without setters/store')
    args = parser.parse_args()
    if args.local_field_inverse and not args.native_source_material:
        parser.error('Local native/source inverse requires original source material capture')
    prior_path, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior_path.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned preflight and fresh output required')
    prior = json.loads((prior_path / 'result.json').read_text(encoding='utf-8'))
    if prior.get('passed') is not True or len(prior['rounds']) != 9:
        raise ValueError('Verified three-fixture/three-round preflight required')
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if epoch != prior['process_epoch']:
        raise ValueError('Isolated fixture epoch expired')
    fixture = json.loads(sorted((prior_path / 'fixture-operator_fanout').glob('*.json'))[-1].read_text(encoding='utf-8'))
    if fixture.get('passed') is not True:
        raise ValueError('Verified isolated fixture required')
    domain = {'session': output.name, 'database': manifest['database'], 'process_epoch': epoch, 'oid': fixture['oid']}
    check_pending(domain)
    output.mkdir(parents=True)
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(manifest['port']))
    environment['ASCET_BD_OPERATION_EXECUTOR'] = args.executor_profile
    if args.native_source_material:
        environment['ASCET_BD_SOURCE_MATERIAL_CAPTURE'] = 'identity_v1'
    if args.local_field_inverse:
        environment['ASCET_BD_LOCAL_FIELD_INVERSE'] = 'native_source_v1'
    token = 'edit_' + fingerprint({'domain': domain, 'purpose': 'native_field_material_preflight'})
    witness_token = 'main_' + fingerprint({'domain': domain, 'purpose': 'independent_no_setter_witness'})
    result = {'passed': False, 'scope': 'MAIN-03C.2 fixed patch compilation/binding and zero-cell plans only; no model edits/inverses',
        'domain': domain, 'component': fixture['component'], 'native_token': token, 'witness_token': witness_token,
        'source_manifest': source_manifest(), 'model_setters_called': 0, 'store_called': False,
        'complete_case_pass': False, 'full_delivery': False, 'prepared_retained': False, 'witness_retained': False}
    result['executor_profile'] = args.executor_profile
    result['native_source_material_requested'] = args.native_source_material
    result['local_field_inverse_requested'] = args.local_field_inverse
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def execute(adapter_class, label, operation):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with adapter_class(fixture['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                value = operation(adapter)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    def witness(action, label):
        return execute(Observer, label, lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': action, 'token': witness_token}))

    try:
        result['capture'] = witness('capture', 'witness-capture')
        result['witness_retained'] = True; save()
        if not result['capture']['unchanged']:
            raise ValueError('Original witness already differs')
        before = execute(NativeStructureAdapter, 'before', lambda adapter: adapter.observe(domain, [fixture['final_anchor']]))
        target = next(row for row in before['entries'] if row['ref'] == fixture['final_anchor'])
        targets = [row['ref'] for row in before['entries']]
        result['before'] = before
        result['prepare_intent'] = {'operation': 'set_literal', 'arguments': [targets, target['ref'], '4321.5']}; save()
        prepared = execute(NativeStructureAdapter, 'prepare', lambda adapter: adapter.prepare(domain, token,
            'set_literal', result['prepare_intent']['arguments']))
        result['prepared_retained'] = True; result['prepared'] = prepared; save()
        material = execute(Observer, 'material', lambda adapter: adapter._exchange({'cmd': 'field_material_inspect', 'token': token}))
        result['material'] = material
        if args.local_field_inverse:
            local = material.get('local_inverse_preflight', {})
            if (material.get('local_inverse_profile') != 'native_source_local_inverse_v1'
                    or material.get('local_inverse_head_id') != token or set(local) != {'undo', 'redo'}
                    or any(plan != {'profile': 'native_source_local_inverse_v1', 'compatible': True,
                                    'native_cells': 0, 'source_cells': 0,
                                    'current_verified': True, 'execute_called': False} for plan in local.values())):
                raise ValueError('Fixed zero-write local native/source inverse preparation differs')
            result['local_inverse_preflight'] = local
        if args.native_source_material and (
                material['native_source_images_before_retained'] is not True
                or material['native_source_images_before_objects'] <= 0):
            raise ValueError('Complete original source identity images were not retained')
        if material['state'] != 'prepared' or not material['source_before_retained'] or set(material['phases']) != {'prepared'}:
            raise ValueError('Prepared native material phase/source does not match')
        phase = material['phases']['prepared']
        result['material_reconciliation'] = reconcile(material['original_graph'], material['original_fields'],
            phase['actual'], phase['graph'], phase['fields'])
        plans = material.get('field_patch_preflight', {})
        if set(plans) != {'undo', 'redo'} or any(
                plan['profile'] != 'native_field_patch_v2' or plan['direction'] != direction
                or plan['cell_count'] != 0 or plan['introduced_object_count'] != 0
                or plan['progress'] != {'state': 'prepared', 'completed_cells': 0,
                    'completed_primitives': 0, 'cell_count': 0, 'direction': direction}
                or plan['current_matches_expected'] is not True
                or plan['current_matches_desired'] is not True
                or plan['write_authorized'] is not False or plan['execute_called'] is not False
                for direction, plan in plans.items()):
            raise ValueError('Fixed bidirectional zero-cell preflight differs or implies execution')
        result['patch_preflight'] = plans
        if args.private_patch:
            private = execute(Observer, 'private-patch', lambda adapter: adapter._exchange(
                {'cmd': 'field_patch_private', 'token': token}))
            result['private_patch'] = private
            if (private['passed'] is not True or private['live_native_unchanged'] is not True
                    or private['profile'] != 'native_field_patch_private_v2'
                    or len(private['cases']) != 11 or len(set(private['cases'])) != 11
                    or any(private[key] <= 0 for key in
                        ('first_undo_primitives', 'redo_primitives', 'final_undo_primitives'))
                    or private['model_setters_called'] != 0 or private['store_called'] is not False
                    or private['actual_model_inverse_verified'] is not False):
                raise ValueError('Private nonzero patch checks differ or imply model execution')
        result['after_prepare_witness'] = witness('check', 'witness-after-prepare')
        if not result['after_prepare_witness']['unchanged']:
            raise ValueError('Prepare mutated native state; preserve original materials')
        result['prepared_discard'] = execute(NativeStructureAdapter, 'discard-prepared',
            lambda adapter: adapter.discard_prepared(domain, token))
        result['prepared_retained'] = False; save()
        result['after_discard_witness'] = witness('check', 'witness-after-discard')
        if not result['after_discard_witness']['unchanged']:
            raise ValueError('Discard changed original native state')
        result['witness_release'] = witness('release', 'witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        if result['witness_retained']:
            try:
                result['failed_witness_export'] = witness('export', 'witness-failed-export')
            except Exception as export_error:
                result['witness_export_error'] = str(export_error)
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'prepared_retained', 'witness_retained', 'model_setters_called', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
