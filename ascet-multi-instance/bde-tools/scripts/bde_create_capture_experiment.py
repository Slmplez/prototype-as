"""Same-epoch isolated create capture preflight; no creation or inverse dispatch."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import validate_creation
from bd_create_material import validate
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, VARIANTS
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--variant', choices=VARIANTS, default='operator_fanout')
    parser.add_argument('--declarations', action='store_true', help='Fixed body_v1 variable before capture; no factory dispatch')
    args = parser.parse_args()
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not prior.is_relative_to(owned):
        raise ValueError('Verified owned preflight and fresh owned output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous.get('passed') is not True or previous['process_epoch'] != epoch:
        raise ValueError('Verified exact same-epoch preflight required')
    fixture = json.loads(sorted((prior / ('fixture-' + args.variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
    if (fixture.get('passed') is not True or fixture['ascet_process_epoch'] != epoch
            or fixture['database'] != manifest['database']
            or not fixture['component'].strip('\\').startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact current isolated complete fixture required')
    domain = dict(session=output.name, database=manifest['database'], process_epoch=epoch, oid=fixture['oid'])
    pending.check(domain)
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Fixed Main create material compile/prepare/inspect/discard only',
        manifest=previous['manifest'], process_epoch=epoch, domain=domain, component=fixture['component'],
        variant=args.variant, source_manifest=source_manifest(), preparations=[], witness_retained=False,
        model_setters_called=0, store_called=False, formal_tool_calls=0, creation_dispatched=False,
        complete_case_pass=False, full_delivery=False, business_model_calls=0)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        destination = output / 'source' / rel
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, destination)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CREATE_MATERIAL='identity_v1')
    if args.declarations:
        environment['ASCET_BD_CREATE_DECLARATIONS'] = 'body_v1'
        result['declaration_capture_enabled'] = True
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='complete_creation_preflight'))
    current_token = None
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        def native(label, callback):
            fresh, fresh_process, fresh_epoch = live_manifest(previous['manifest'])
            if (fresh, fresh_process, fresh_epoch) != (manifest, process, epoch):
                raise ValueError('Exact original runtime changed; never rebind retained material')
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                try:
                    with Observer(fixture['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        value = callback(adapter)
                except Exception as error:
                    save_new(output / (label + '-failure.json'), dict(error=str(error), wire=wire_result(wire),
                        prepared_cleanup=getattr(adapter, 'prepare_cleanup', None)))
                    raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness',
                                                          action=action, token=witness_token)))

        result['capture'] = witness('capture', 'original-witness-capture')
        result['witness_retained'] = True
        save()
        before = native('before', lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain)))
        result['before'] = before
        if not compare(before['native']['entries'], before['public'])['passed']:
            raise ValueError('Complete original native/public projection differs')
        result['compiled'] = native('create-compile', lambda a: a._exchange(dict(cmd='create_material_compile')))
        if result['compiled'] != dict(profile='native_create_material_v2' if args.declarations else 'native_create_material_v1', compiled=True,
                model_setters_called=0, store_called=False, write_authorized=False, managed_inverse_enabled=False):
            raise ValueError('Fixed native capture compile contract differs')
        save()
        operations = [dict(op='create_block', kind='literal', name='7', position=[320, 240]),
                      dict(op='create_block', kind='operator', name='+', position=[320, 240], arity=2),
                      dict(op='create_block', kind='variable', name='CreateCaptureVariable',
                           position=[320, 240], model_type='cont')]
        if args.declarations:
            operations = [operation for operation in operations if operation['kind'] == 'variable']
        for index, operation in enumerate(operations):
            arguments = validate_creation(operation)
            token = 'edit_' + fingerprint(dict(domain=domain, operation=operation))
            row = dict(operation=operation, token=token, prepared_retained=False)
            result['preparations'].append(row)
            label = str(index) + '-' + operation['kind']
            save()
            row['prepared'] = native(label + '-prepare', lambda a: dict(
                before=a.prepare(domain, token, 'create_block', arguments),
                material=a.create_material_prepared))
            current_token = token
            row['prepared_retained'] = True
            save()
            if row['prepared']['before'] != before['native']:
                raise ValueError('Preparation changed complete original typed observation')
            row['inspection'] = native(label + '-inspect', lambda a: a._exchange(dict(
                cmd='create_material', action='inspect_prepared', token=token)))
            validate(row['inspection'], token=token, oid=domain['oid'], kind=operation['kind'], phase='prepared')
            if row['inspection'] != row['prepared']['material']:
                raise ValueError('Original prepared material changed across connection')
            row['purity'] = witness('check', label + '-prepared-witness')
            if row['purity']['unchanged'] is not True:
                raise ValueError('Capture preparation changed complete native/source/order/alias witness')
            row['discard'] = native(label + '-discard', lambda a: a.discard_prepared(domain, token))
            if row['discard'] != {'released': True}:
                raise ValueError('Exact prepared material discard not confirmed')
            row['prepared_retained'] = False
            current_token = None
            row['after_discard'] = witness('check', label + '-discarded-witness')
            if row['after_discard']['unchanged'] is not True:
                raise ValueError('Prepared discard changed complete original witness')
            save()
        result['final'] = native('final', lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain)))
        if result['final'] != before:
            raise ValueError('Final complete native/public observation changed')
        result['witness_release'] = witness('release', 'original-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc(), prepared_token=current_token)
        if current_token is not None:
            try:
                result['failed_prepared_discard'] = native('failed-prepared-discard', lambda a: a.discard_prepared(domain, current_token))
            except Exception as cleanup_error:
                result['prepared_cleanup_error'] = str(cleanup_error)
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('export', 'failure-witness-export')
                if result['failure_witness']['unchanged']:
                    result['failure_witness_release'] = witness('release', 'failure-witness-release')
                    result['witness_retained'] = not result['failure_witness_release']['released']
            except Exception as export_error:
                result['witness_export_error'] = str(export_error)
    finally:
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','witness_retained','prepared_token','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
