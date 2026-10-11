"""Exact isolated primitive-message prepare/inspect/discard; no factory or history."""
import argparse
import json
import os
from pathlib import Path
import re
import shutil
import traceback
from unittest.mock import patch

import bd_instance_pending as pending
import bd_service as service
import bde_experiments as bench
from bd_create_material import same_material, validate
from bd_edit_journal import fingerprint
from bd_message_declaration_before import validate as validate_study
from bd_native_structure import NativeStructureAdapter
from bd_scope_inventory import validate as validate_pins
from bd_structure_journal import validate_creation
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, json_lines, save_new, verify_pages, wire_result
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True, help='Completed restored result; identity only')
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--kind', choices=('receive_message','send_message','send_receive_message'), default='receive_message')
    parser.add_argument('--model-type', choices=('cont','sdisc','udisc','log'), default='cont')
    parser.add_argument('--message-scope', choices=('local','imported','exported'))
    args = parser.parse_args()
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Fresh owned output and exact isolated Module study required')
    old = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if (old.get('passed') is not True or old.get('message_study_requested') is not True
            or old.get('creation_dispatched') is not False
            or old.get('original_graphical_source_order_alias_unchanged') is not True
            or old.get('collected_native_public_models_configuration_unchanged') is not True or old.get('witness_retained') is not False
            or old.get('message_study_retained') is not False
            or old.get('isolated_pending') is not False or old['process_epoch'] != epoch
            or old['domain']['database'] != manifest['database']
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Completed unchanged exact-epoch Module study required; no old token replay')
    validate_study(old['message_before_capture'], old['domain'], component=old['component'],
                   token=old['message_study_token'])
    domain = {**old['domain'], 'session': output.name}
    pending.check(domain)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    operation = dict(op='create_block', kind=args.kind, name='MessageBeforeCapture',
                     position=[320, 240], model_type=args.model_type)
    if args.message_scope is not None: operation['message_scope']=args.message_scope
    arguments = validate_creation(operation)
    token = 'edit_' + fingerprint(dict(domain=domain, purpose='message_prepare', operation=operation))
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='message_prepare_witness'))
    study_token = 'message_' + fingerprint(dict(domain=domain, purpose='message_prepare_body_witness'))
    result = dict(passed=False, scope='Primitive-message formal preview and native prepare/inspect/discard purity',
        source=str(source), manifest=old['manifest'], process_epoch=epoch, domain=domain,
        component=old['component'], operation=operation, native_token=token,
        witness_token=witness_token, study_token=study_token, source_manifest=source_manifest(),
        witness_retained=False, study_retained=False, prepared_retained=False,
        observer_calls=0, formal_tool_calls=0, documents=[], model_setters_called=0, store_called=False,
        creation_dispatched=False, history_dispatched=False, formal_forward_wal_executed=False,
        inverse_authorized=False, business_model_calls=0, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        target = output / 'source' / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, target)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CREATE_MATERIAL='identity_v1',
        ASCET_BD_CREATE_DECLARATIONS='message_body_v1')
    for key in ('ASCET_BD_CREATE_HISTORY', 'ASCET_BD_CREATE_DECLARATION_HISTORY',
                'ASCET_BD_CREATE_FINALIZE', 'ASCET_BD_CREATE_DECLARATION_FINALIZE'):
        environment.pop(key, None)
    calls = []
    try:
        binary = build_oracle(output, scope_lifecycle=True)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        def runtime():
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Exact isolated runtime changed; no epoch rebind')
        def native(label, callback):
            runtime(); result['observer_calls'] += 1
            wire = None; adapter = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        value = callback(adapter)
            except Exception as error:
                save_new(output / (label + '-failure.json'), dict(error=str(error),
                    wire=wire_result(wire) if wire is not None else None,
                    prepare_cleanup=getattr(adapter, 'prepare_cleanup', None)))
                raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value
        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))
        def study(action, label):
            value = native(label, lambda a: a._exchange(dict(cmd='message_before_study', action=action,
                token=study_token)))
            validate_study(value, domain, component=old['component'], token=study_token)
            return value
        def baseline(label):
            value = native(label, lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain),
                models=a.observe_models(domain), configuration=a._exchange(dict(cmd='main_configuration'))))
            if not compare(value['native']['entries'], value['public'])['passed']:
                raise ValueError('Complete public/native projection differs: ' + label)
            return value
        def record(row):
            save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
            calls.append(row); result['formal_tool_calls'] = len(calls); save()
        def tool(label, name, request):
            runtime()
            wire = None
            try:
                with bench.proxy(upstream_port=manifest['port']) as wire:
                    client = ToolClient(output, domain['session'], record)
                    client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
                    start = len(calls); meta, body, error = client.call(name, request)
            except Exception as failure:
                save_new(output / 'call-wire' / (label + '-failure.json'), dict(error=str(failure),
                    wire=wire_result(wire) if wire is not None else None))
                raise
            save_new(output / 'call-wire' / (label + '.json'), wire_result(wire))
            save_new(output / 'responses' / (label + '.json'), dict(meta=meta, body=body, is_error=error))
            if error: raise ValueError('Formal tool failed ' + label + ': ' + body)
            result['documents'].append(dict(label=label, **verify_pages(calls[start:], body, request.get('max_bytes', 12288))))
            return meta, body

        result['before'] = baseline('before')
        result['witness_retained'] = True; save()
        result['capture'] = witness('capture', 'original-witness-capture')
        result['study_retained'] = True; save()
        result['message_before_capture'] = study('capture', 'message-before-capture')
        result['compiled'] = native('create-compile', lambda a: a._exchange(dict(cmd='create_material_compile')))
        if result['compiled'] != dict(profile='native_create_material_v4', compiled=True,
                model_setters_called=0, store_called=False, write_authorized=False, managed_inverse_enabled=False):
            raise ValueError('Fixed message capture compile contract differs')
        meta, body = tool('read', 'bd_read', dict(component=old['component'], view='structure'))
        snapshot = service.load_record(meta['snapshot'], 's_', 'snapshots')
        if (snapshot['session'] != domain['session'] or snapshot['database'] != domain['database']
                or snapshot['ascet_process_epoch'] != epoch or snapshot['oid'] != domain['oid']
                or snapshot['dirty_editors'] != [0, 0] or snapshot['structure'] != result['before']['native']
                or json_lines(body) != [{**row, 'ref': 'Main/' + row['ref']} for row in result['before']['native']['entries']]):
            raise ValueError('Formal complete read differs from exact native baseline')
        result['snapshot'] = meta['snapshot']
        _, preview_body = tool('preview', 'bd_edit', dict(snapshot=meta['snapshot'], request_id=output.name+'-preview',
            operations=[operation], preview=True))
        result['preview'] = json.loads(preview_body)
        if result['preview']['status'] != 'preview' or list((service.STORE / 'edits').glob('edit_*')):
            raise ValueError('Preview allocated forward WAL or failed constraints')
        result['preview_message_check'] = study('check', 'message-before-after-preview')
        save_new(output / 'prepare-intent.json', dict(domain=domain, native_token=token,
            operation=operation, arguments=arguments, factory_dispatch_authorized=False, automatic_retry=False))
        result['prepared_retained'] = True; save()
        result['prepared'] = native('message-prepare', lambda a: dict(
            before=a.prepare(domain, token, 'create_block', arguments), material=a.create_material_prepared))
        material = result['prepared']['material']
        if (result['prepared']['before'] != result['before']['native']
                or material['declaration_material']['kind'] != args.kind
                or material['declaration_material']['model_type'] != args.model_type):
            raise ValueError('Original message material differs from complete baseline or requested role/type')
        save_new(output / 'prepared-material.json', dict(material=material, formal_forward_wal_executed=False))
        result['inspection'] = native('message-inspect', lambda a: a._exchange(dict(cmd='create_material', action='inspect_prepared', token=token)))
        validate(result['inspection'], token=token, oid=domain['oid'], kind=args.kind, phase='prepared')
        if not same_material(material, result['inspection'], token=token, oid=domain['oid'], kind=args.kind, phase='prepared'):
            raise ValueError('Complete original message prepared material differs across connection')
        result['prepared_message_check'] = study('check', 'message-before-after-prepare')
        result['prepared_witness_check'] = witness('check', 'original-witness-after-prepare')
        if not result['prepared_witness_check']['unchanged']: raise ValueError('Prepare changed full graphical/source/order/alias witness')
        result['discard'] = native('message-discard', lambda a: a.discard_prepared(domain, token))
        if result['discard'] != {'released': True}: raise ValueError('Exact message prepared release not confirmed')
        result['prepared_retained'] = False; save()
        result['after'] = baseline('after')
        result['final_message_check'] = study('check', 'message-before-after-discard')
        result['final_witness_check'] = witness('check', 'original-witness-after-discard')
        if result['after'] != result['before'] or not result['final_witness_check']['unchanged']:
            raise ValueError('Prepare/inspect/discard changed complete original baseline')
        result['study_release'] = study('release', 'message-before-release')
        result['study_retained'] = not result['study_release']['released']
        result['witness_release'] = witness('release', 'original-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        pending.check(domain); result['isolated_pending'] = False
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not any(result[key] for key in ('prepared_retained','study_retained','witness_retained'))
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        try:
            pins = native('failure-pins', lambda a: a._exchange(dict(cmd='scope_inventory')))
            validate_pins(pins)
            scoped = next(row for row in pins['entries'] if row['scope'] == domain['oid']+'/Main')
            if result['prepared_retained']:
                if 'DogeBDEStructureEditsV3:'+token in scoped['pins']:
                    status = native('failure-prepared-status', lambda a: a.recovery_status(domain, token))
                    result['failure_prepared_status'] = status
                    if status['state'] != 'prepared': raise ValueError('Unknown prepare is not provably prepared; retain material')
                    result['failure_discard'] = native('failure-prepared-discard', lambda a: a.discard_prepared(domain, token))
                    result['prepared_retained'] = not result['failure_discard']['released']
                else:
                    result['prepared_retained'] = False
            if result['study_retained']:
                if 'DogeBDEMainWorkflowWitnessesV1:'+study_token in scoped['pins']:
                    result['failure_message_check'] = study('check', 'failure-message-check')
                    result['failure_enum_release'] = study('release', 'failure-message-release')
                    result['study_retained'] = not result['failure_enum_release']['released']
                else:
                    result['study_retained'] = False
            if result['witness_retained']:
                if 'DogeBDEMainWorkflowWitnessesV1:'+witness_token in scoped['pins']:
                    result['failure_witness'] = witness('export', 'failure-witness-export')
                    result['failure_after'] = baseline('failure-after')
                    if result['failure_after'] == result.get('before') and result['failure_witness']['unchanged']:
                        result['failure_witness_release'] = witness('release', 'failure-witness-release')
                        result['witness_retained'] = not result['failure_witness_release']['released']
                else:
                    result['witness_retained'] = False
            pending.check(domain); result['isolated_pending'] = False
        except Exception as diagnostic:
            result['diagnostic_error'] = str(diagnostic)
    finally:
        result['sources_match'] = source_manifest() == result['source_manifest']
        save()
    print(json.dumps({key:result.get(key) for key in ('passed','error','diagnostic_error','observer_calls',
        'formal_tool_calls','prepared_retained','study_retained','witness_retained','isolated_pending','sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
