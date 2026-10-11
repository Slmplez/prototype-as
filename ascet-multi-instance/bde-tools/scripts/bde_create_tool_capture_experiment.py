"""Formal isolated creation and actual durable capture; original history remains retained."""
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
from bd_create_material import validate, observation, same_material
from bd_edit_journal import clone, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal, validate_creation
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages, VARIANTS
from bde_public_oracle import compare
from bde_tool_client import ToolClient

MESSAGE_KINDS = ('receive_message', 'send_message', 'send_receive_message')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--variant', choices=VARIANTS, default='operator_fanout')
    parser.add_argument('--kind', choices=('literal', 'operator', 'variable', 'enumeration') + MESSAGE_KINDS, required=True)
    parser.add_argument('--declarations', action='store_true', help='Retain full original variable, existing-enum or primitive-message declaration before/actual after')
    args = parser.parse_args()
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not prior.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Verified owned preflight and fresh owned output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous.get('passed') is not True or previous['process_epoch'] != epoch:
        raise ValueError('Verified exact current-epoch preflight required')
    if args.kind == 'enumeration' or args.kind in MESSAGE_KINDS:
        expected_profile = 'native_create_material_v4' if args.kind in MESSAGE_KINDS else 'native_create_material_v3'
        if (not args.declarations or previous.get('prepared_retained') is not False
                or previous.get('study_retained') is not False or previous.get('witness_retained') is not False
                or previous.get('creation_dispatched') is not False
                or previous['operation']['kind'] != args.kind
                or previous['prepared']['material']['profile'] != expected_profile
                or previous['source_manifest'] != source_manifest()):
            raise ValueError('Version-bound pure exact declaration preflight required before factory dispatch')
        fixture = dict(passed=True, ascet_process_epoch=epoch, database=previous['domain']['database'],
                       component=previous['component'], oid=previous['domain']['oid'])
    else:
        fixture = json.loads(sorted((prior / ('fixture-' + args.variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
    if (fixture.get('passed') is not True or fixture['ascet_process_epoch'] != epoch
            or fixture['database'] != manifest['database']
            or not fixture['component'].strip('\\').startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact current isolated complete fixture required')
    if args.kind in MESSAGE_KINDS:
        # The exact role/name/type/scope passed its own complete zero-factory preflight.
        operation = clone(previous['operation'])
    else:
        operation = dict(op='create_block', kind=args.kind, position=[320, 240],
                     name={'literal': '7', 'operator': '+', 'variable': 'CreateCaptureVariable',
                           'enumeration': 'CreateCaptureEnumeration'}[args.kind])
    if args.kind == 'enumeration':
        operation['definition'] = previous['operation']['definition']
    if args.kind == 'operator':
        operation['arity'] = 2
    if args.kind == 'variable':
        operation['model_type'] = 'cont'
    validate_creation(operation)
    if args.declarations and args.kind not in ('variable', 'enumeration') + MESSAGE_KINDS:
        raise ValueError('Audited variable/existing enum/primitive message factory required for declaration body capture')
    domain = dict(session=output.name, database=manifest['database'], process_epoch=epoch, oid=fixture['oid'])
    pending.check(domain)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    for name in ('snapshots', 'raw', 'documents', 'cursors', 'edits'):
        (service.STORE / name).mkdir(parents=True)
    result = dict(passed=False, scope='Formal isolated create actual diff/capture only; no inverse acceptance',
        manifest=previous['manifest'], process_epoch=epoch, domain=domain, component=fixture['component'],
        variant=args.variant, operation=operation, source_manifest=source_manifest(),
        formal_tool_calls=0, documents=[], creation_dispatched=False, material_retained=False,
        witness_retained=False, original_restored=False, managed_create_inverse_enabled=False,
        declaration_body_restore_verified=False, business_model_calls=0,
        complete_case_pass=False, full_delivery=False)
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
    for key in ('ASCET_BD_CREATE_HISTORY', 'ASCET_BD_CREATE_DECLARATION_HISTORY',
                'ASCET_BD_CREATE_FINALIZE', 'ASCET_BD_CREATE_DECLARATION_FINALIZE'):
        environment.pop(key, None)
    if args.declarations:
        environment['ASCET_BD_CREATE_DECLARATIONS'] = ('message_body_v1' if args.kind in MESSAGE_KINDS
            else 'enum_body_v1' if args.kind == 'enumeration' else 'body_v1')
        result['declaration_capture_enabled'] = True
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='complete_creation_original'))
    result['witness_token'] = witness_token
    calls = []
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        def check_runtime():
            fresh, fresh_process, fresh_epoch = live_manifest(previous['manifest'])
            if (fresh, fresh_process, fresh_epoch) != (manifest, process, epoch):
                raise ValueError('Exact original runtime changed; never rebind retained material')

        def native(label, callback):
            check_runtime()
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(fixture['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain)
                    try:
                        value = callback(adapter)
                    except Exception as error:
                        save_new(output / (label + '-failure.json'), dict(error=str(error), wire=wire_result(wire)))
                        raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))

        def observe(label):
            value = native(label, lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain),
                                                models=a.observe_models(domain)))
            if not compare(value['native']['entries'], value['public'])['passed']:
                raise ValueError('Complete independent public/native observation differs: ' + label)
            return value

        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
            calls.append(row)
            result['formal_tool_calls'] = len(calls)
            save()

        def tool(label, name, arguments, offline=False):
            check_runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client = ToolClient(output, domain['session'], record)
                client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                start = len(calls)
                meta, body, error = client.call(name, arguments)
            frames = wire_result(wire)
            save_new(output / 'call-wire' / (label + '.json'), frames)
            save_new(output / 'responses' / (label + '.json'), dict(meta=meta, body=body, is_error=error))
            if error:
                raise ValueError('Formal tool failed ' + label + ': ' + body)
            result['documents'].append(dict(label=label, **verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))))
            if offline and (frames['request']['frames'] != 0 or frames['connections'] != 0):
                raise ValueError('Offline duplicate/diff made native calls: ' + label)
            return meta, body if name == 'bd_read' else json.loads(body)

        result['original_capture'] = witness('capture', 'original-witness-capture')
        result['witness_retained'] = True
        result['before'] = observe('before')
        result['configuration_before'] = native('configuration-before', lambda a: a._exchange(dict(cmd='main_configuration')))
        from bd_class_configuration import validate_graph
        validate_graph(result['configuration_before'], domain['oid'])
        result['compile'] = native('create-compile', lambda a: a._exchange(dict(cmd='create_material_compile')))
        meta, _ = tool('read', 'bd_read', dict(component=fixture['component'], view='structure'))
        request = dict(snapshot=meta['snapshot'], request_id=output.name + '-forward', operations=[operation])
        _, result['preview'] = tool('forward-preview', 'bd_edit', {**request, 'preview': True})
        if result['preview']['status'] != 'preview' or list((service.STORE / 'edits').glob('edit_*')):
            raise ValueError('Preview allocated edit material or failed constraints')
        result['preview_purity'] = witness('check', 'original-witness-after-preview')
        if result['preview_purity']['unchanged'] is not True:
            raise ValueError('Preview changed complete original witness')
        save_new(output / 'forward-intent.json', dict(domain=domain, request=request, automatic_retry=False))
        result['creation_dispatched'] = True
        save()
        _, result['edit'] = tool('forward-actual', 'bd_edit', request)
        token = result['edit']['change_id']
        result['native_token'] = token
        result['material_retained'] = True
        save()
        if result['edit']['status'] != 'applied_observed':
            raise ValueError('Actual creation did not finish observed; retain materials')
        journal = StructureJournal(service.STORE / 'edits')
        events = journal.read(token)
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        actual = next(e['payload'] for e in events if e['kind'] == 'observed')
        validated = observation(prepared['before'], actual['after'], prepared['create_material_prepared'],
            actual['create_material_actual'], token=token, oid=domain['oid'], kind=args.kind)
        if any(actual.get(key) != value for key, value in validated.items()):
            raise ValueError('Durable actual WAL differs from complete captured evidence')
        result['wal_validation'] = {k:validated[k] for k in ('graphical_differences','parent_order_differences','drawing_order_differences')}
        result['material'] = native('actual-material-inspect', lambda a: a._exchange(dict(
            cmd='create_material', action='inspect_attached', token=token)))
        validate(result['material'], token=token, oid=domain['oid'], kind=args.kind, phase='attached')
        if not same_material(result['material'], actual['create_material_actual'],
                token=token, oid=domain['oid'], kind=args.kind, phase='attached'):
            raise ValueError('Complete actual factory material changed across connection')
        result['after'] = observe('after')
        if result['after']['native'] != actual['after']:
            raise ValueError('Independent full native/public head differs from durable actual creation')
        result['configuration_after'] = native('configuration-after', lambda a: a._exchange(dict(cmd='main_configuration')))
        validate_graph(result['configuration_after'], domain['oid'])
        _, result['diff'] = tool('actual-diff', 'bd_diff', dict(change_id=token), offline=True)
        _, duplicate = tool('duplicate', 'bd_edit', request, offline=True)
        if duplicate != result['edit']:
            raise ValueError('Identical request did not return identical durable receipt')
        pending.check(domain)
        result['isolated_pending'] = False
        result['original_current'] = witness('export', 'original-witness-after-create')
        if result['original_current']['unchanged'] is True:
            raise ValueError('Actual create did not alter original native witness')
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('export', 'failure-witness-export')
            except Exception as export_error:
                result['witness_export_error'] = str(export_error)
        try:
            pending.check(domain)
            result['isolated_pending'] = False
        except Exception as pending_error:
            result['isolated_pending'] = True
            result['pending_error'] = str(pending_error)
    finally:
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','material_retained',
        'isolated_pending','original_restored','sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
