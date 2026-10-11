"""Isolated current Module audit, with fresh identity and read-only source/order witnesses.

This neither creates messages nor proves their full declaration lifecycle.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_instance_pending as pending
import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_message_declaration_inventory import validate
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--study-before', action='store_true',help='Capture original primitive owner/type/configuration body; no factory')
    args = parser.parse_args()
    output = args.output.resolve()
    if (output.exists() or not output.is_relative_to(service.ROOT / 'analysis/bde-experiments')
            or not args.component.startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Fresh owned output and an isolated existing Module required')
    manifest, process, epoch = live_manifest(args.manifest)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    result = dict(passed=False, scope='Existing isolated Module original roles only; no full body/history',
        manifest=str(args.manifest.resolve()), process_epoch=epoch, component=args.component,
        source_manifest=source_manifest(), formal_tool_calls=0, observer_calls=0,
        complete_case_pass=False, full_delivery=False, complete_body_capture=False,
        creation_dispatched=False, history_dispatched=False, inverse_authorized=False,
        model_setters_called=0, store_called=False, business_model_calls=0,
        witness_retained=False, message_study_retained=False,message_study_requested=args.study_before,
        calls=[], measurements=[])
    domain = None
    environment = {k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    environment.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1')

    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')

    def check_runtime():
        if live_manifest(args.manifest) != (manifest,process,epoch):
            raise ValueError('Current isolated runtime changed; identity cannot be rebound')

    def record(call):
        result['calls'].append(call); result['formal_tool_calls'] += 1; save()

    save()
    for relative in result['source_manifest']:
        destination = output / 'source' / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, destination)
    try:
        binary = build_oracle(output,scope_lifecycle=args.study_before)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda:binary)

        with patch.dict(os.environ,environment,clear=True):
            client = ToolClient(output, output.name, record)
            client.env['ASCET_BD_STRUCTURAL_WRITES'] = '0'
            check_runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                head, body, failed = client.call('bd_read',dict(component=args.component,view='structure'))
            result['measurements'].append(dict(label='formal-read',wire=wire_result(wire)))
            if failed: raise ValueError(body)
        snapshot = service.load_record(head['snapshot'],'s_','snapshots')
        domain = dict(session=client.session,database=snapshot['database'],oid=snapshot['oid'],
            process_epoch=snapshot['ascet_process_epoch'])
        if domain['database'] != manifest['database'] or domain['process_epoch'] != epoch:
            raise ValueError('Fresh Module observation did not identify the prepared private runtime')
        result['domain'] = domain; result['initial_snapshot'] = snapshot['snapshot']; pending.check(domain)
        token = 'main_' + fingerprint(dict(domain=domain,output=str(output)))
        result['witness_token'] = token
        message_token='message_'+fingerprint(dict(domain=domain,study=str(output)))
        result['message_study_token']=message_token

        def native(label,callback):
            check_runtime(); pending.check(domain)
            result['observer_calls'] += 1
            wire = None
            try:
                with patch.dict(os.environ,environment,clear=True), service.live_lock(), \
                        bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(args.component,timeout=30,environment={**environment,
                            'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        value = callback(adapter)
            except Exception as error:
                measured = dict(label=label,wire=None if wire is None else wire_result(wire))
                result['measurements'].append(measured)
                save_new(output/(label+'.json'),dict(error=str(error),**measured)); save(); raise
            measured = dict(label=label,wire=wire_result(wire))
            result['measurements'].append(measured)
            save_new(output/(label+'.json'),dict(result=value,**measured)); save()
            return value

        def baseline(label):
            return native(label,lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),
                models=a.observe_models(domain),configuration=a._exchange(dict(cmd='main_configuration'))))

        def witness(action,label):
            return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=token)))

        def message_study(action,label):
            return native(label,lambda a:a._exchange(dict(cmd='message_before_study',action=action,token=message_token)))

        def validate_study(value):
            from bd_message_declaration_before import validate as validate_before
            return validate_before(value,domain,component=args.component,token=message_token)

        def pins(label):
            from bd_scope_inventory import validate as validate_pins
            value=native(label,lambda a:a._exchange(dict(cmd='scope_inventory')))
            validate_pins(value)
            return next(r for r in value['entries'] if r['scope']==domain['oid']+'/Main')

        result['before'] = baseline('before')
        result['witness_retained'] = True; save()
        result['witness_capture'] = witness('capture','witness-capture')
        result['inventory'] = native('message-inventory',lambda a:a._exchange(dict(cmd='message_declaration_inventory')))
        result['inventory_summary'] = validate(result['inventory'],domain,component=args.component)
        result['inventory_repeat'] = native('message-inventory-repeat',lambda a:a._exchange(dict(cmd='message_declaration_inventory')))
        validate(result['inventory_repeat'],domain,component=args.component)
        if result['inventory_repeat'] != result['inventory']:
            raise ValueError('Complete original Module roles or reference sets changed across connections')
        if args.study_before:
            result['message_study_retained']=True;save()
            result['message_before_capture']=message_study('capture','message-before-capture')
            result['message_before_summary']=validate_study(result['message_before_capture'])
            result['message_before_check']=message_study('check','message-before-check')
            validate_study(result['message_before_check'])
            if result['message_before_capture']['before']!=result['message_before_check']['before']:
                raise ValueError('Original Module image namespace changed across connections')
            result['message_pins']=pins('message-pins')
            if 'DogeBDEMainWorkflowWitnessesV1:'+message_token not in result['message_pins']['pins']:
                raise ValueError('Original message body did not pin native namespace')
        result['after'] = baseline('after')
        result['witness_check'] = witness('check','witness-check')
        if result['before'] != result['after'] or result['witness_check']['unchanged'] is not True:
            raise ValueError('Original complete graphical/source/order/alias or collected baseline changed')
        result['witness_release'] = witness('release','witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        if args.study_before:
            result['message_only_pins']=pins('message-only-pins')
            if result['message_only_pins']['pins']!=['DogeBDEMainWorkflowWitnessesV1:'+message_token]:
                raise ValueError('Expected retained original message body only')
            def refuse_retirement(adapter):
                try:
                    adapter._exchange(dict(cmd='scope_retire',expected_generation=result['message_only_pins']['generation']))
                except Exception as error:
                    if 'Structural scope retained; refusing retirement' not in str(error):raise
                    return dict(refused=True,error=str(error))
                raise ValueError('Original Module body permitted namespace retirement')
            result['message_retirement_refused']=native('message-retirement-refused',refuse_retirement)
            result['message_after_refusal']=message_study('check','message-after-retirement-refusal')
            validate_study(result['message_after_refusal'])
            result['after_pin_refusal']=baseline('after-pin-refusal')
            if result['after_pin_refusal']!=result['before']:
                raise ValueError('Namespace rejection changed collected Module baseline')
            result['message_before_release']=message_study('release','message-before-release')
            validate_study(result['message_before_release'])
            result['message_study_retained']=not result['message_before_release']['released']
        result['original_graphical_source_order_alias_unchanged'] = True
        result['collected_native_public_models_configuration_unchanged'] = True
        result['sources_match'] = source_manifest()==result['source_manifest']
        check_runtime(); pending.check(domain); result['isolated_pending'] = False
        result['passed'] = result['sources_match'] and not result['witness_retained'] and not result['message_study_retained']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        if result['message_study_retained'] and domain is not None:
            try:
                scoped=pins('failure-message-pins')
                if 'DogeBDEMainWorkflowWitnessesV1:'+message_token in scoped['pins']:
                    result['failure_message_export']=message_study('export','failure-message-export')
                    validate_study(result['failure_message_export'])
                    result['failure_message_release']=message_study('release','failure-message-release')
                    validate_study(result['failure_message_release'])
                    result['message_study_retained']=not result['failure_message_release']['released']
                else:
                    result['failed_message_capture_has_no_retained_pin']=True
                    result['message_study_retained']=False
            except Exception as diagnostic:
                result['message_diagnostic_error']=str(diagnostic)
        if result['witness_retained'] and domain is not None:
            try:
                result['failure_check'] = witness('check','failure-witness-check')
                result['failure_after'] = baseline('failure-after')
                if result['failure_check']['unchanged'] is True and result['failure_after']==result.get('before'):
                    result['failure_release'] = witness('release','failure-witness-release')
                    result['witness_retained'] = not result['failure_release']['released']
                pending.check(domain); result['isolated_pending'] = False
            except Exception as diagnostic:
                result['diagnostic_error'] = str(diagnostic)
        result['sources_match'] = source_manifest()==result['source_manifest']
    finally:
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','inventory_summary','observer_calls',
        'formal_tool_calls','witness_retained','message_study_retained','message_before_summary',
        'isolated_pending','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
