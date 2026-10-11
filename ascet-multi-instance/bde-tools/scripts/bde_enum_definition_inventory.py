"""Fixed isolated, read-only enum definition inventory with current-state witnesses.

This study does not create a definition, capture a complete declaration body, or
authorize an inverse. It never reuses a released creation/history token.
"""
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
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def validate(value, domain, *, selected=None):
    if (value.get('profile') != 'enum_definition_inventory_v1'
            or value.get('component_oid') != domain['oid']
            or not value.get('folder_oid')
            or value.get('full_body_capture') is not False
            or value.get('inverse_authorized') is not False
            or value.get('model_setters_called') != 0
            or value.get('store_called') is not False):
        raise ValueError('Exact zero-write inventory receipt required')
    definitions = value['definitions']
    if (len(definitions) > 256
            or len({row['oid'] for row in definitions}) != len(definitions)
            or len({row['name'] for row in definitions}) != len(definitions)
            or any(row['native_class'] != 'SGEnumerationDB'
                   or not row['path'].lstrip('\\').startswith('BDE_Tool_Experiments\\')
                   for row in definitions)):
        raise ValueError('Isolated exact enum definition identities required')
    if selected is None:
        if value['selected'] is not None:
            raise ValueError('Catalog must not claim a selected definition')
        return
    actual = value['selected']
    if actual['oid'] != selected['oid'] or selected not in definitions:
        raise ValueError('Exact existing definition changed identity')
    rows = actual['objects']
    roles = [row['role'] for row in rows]
    if len(roles) != len(set(roles)) or not {'owner', 'definition',
            'primitiveVariables', 'complexVariables'}.issubset(roles):
        raise ValueError('Incomplete enum inventory roles')
    classes = {row['role']: row['binding']['native_class'] for row in rows}
    if classes['owner'] != 'SGClass' or classes['definition'] != 'SGEnumerationDB':
        raise ValueError('Expected original owner and enum definition classes')
    for row in rows:
        fields = row['fields']
        if (len(row['field_names']) != len(fields)
                or row['field_names'] != [field['field'] for field in fields]
                or [field['slot'] for field in fields] != list(range(1, len(fields) + 1))):
            raise ValueError('Incomplete contiguous actual native slot schema')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True,
                        help='Completed isolated restoration result; identity only')
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--study-before', action='store_true', help='Capture bounded original enum body, without model writes')
    args = parser.parse_args()
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Owned completed result and fresh study output required')
    prior = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(prior['manifest'])
    if (prior['passed'] is not True or prior['original_restored'] is not True
            or prior['material_retained'] is not False or prior['witness_retained'] is not False
            or prior['isolated_pending'] is not False or prior['process_epoch'] != epoch
            or not prior['component'].startswith('BDE_Tool_Experiments\\Trial_')
            or prior['domain']['database'] != manifest['database']):
        raise ValueError('Exact restored isolated current epoch required; no history replay')
    domain = {**prior['domain'], 'session': output.name}
    pending.check(domain)
    output.mkdir(parents=True)
    service.STORE = output / 'store'
    witness_token = 'main_' + fingerprint(dict(domain=domain, study=output.name))
    enum_study_token = 'enum_' + fingerprint(dict(domain=domain, enum_before=output.name))
    result = dict(passed=False, scope='Bounded current enum roles, no full body or inverse',
        source=str(source), manifest=prior['manifest'], process_epoch=epoch,
        domain=domain, component=prior['component'], source_manifest=source_manifest(),
        witness_token=witness_token, witness_retained=False, enum_structure_verified=False,
        model_setters_called=0, store_called=False, creation_dispatched=False,
        history_dispatched=False, formal_tool_calls=0, business_model_calls=0,
        complete_case_pass=False, full_delivery=False, full_body_capture=False,
        inverse_authorized=False, observer_calls=0, enum_study_token=enum_study_token,
        enum_study_retained=False, enum_before_study_requested=args.study_before)

    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False,
            indent=2) + '\n', encoding='utf-8')

    save()
    for relative in result['source_manifest']:
        destination = output / 'source' / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, destination)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    try:
        binary = build_oracle(output, scope_lifecycle=args.study_before)

        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        def native(label, callback):
            if live_manifest(prior['manifest']) != (manifest, process, epoch):
                raise ValueError('Exact runtime changed; never rebind')
            wire = None
            result['observer_calls'] += 1
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), \
                        bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(prior['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        value = callback(adapter)
            except Exception as failure:
                save_new(output / (label + '.json'), dict(error=str(failure),
                    wire=wire_result(wire) if wire is not None else None))
                raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return native(label, lambda adapter: adapter._exchange(dict(
                cmd='main_readonly_witness', action=action, token=witness_token)))

        def baseline(label):
            return native(label, lambda adapter: dict(native=adapter.observe(domain, []),
                models=adapter.observe_models(domain),
                configuration=adapter._exchange(dict(cmd='main_configuration'))))

        def enum_study(action, label):
            return native(label, lambda adapter: adapter._exchange(dict(cmd='enum_before_study',
                action=action, token=enum_study_token, name=result['selected']['name'])))

        def check_enum(value):
            from bd_enum_declaration_before import validate as validate_before
            return validate_before(value, oid=domain['oid'], definition_oid=result['selected']['oid'], token=enum_study_token)

        result['before'] = baseline('before')
        result['witness_capture'] = witness('capture', 'current-witness-capture')
        result['witness_retained'] = True
        save()
        result['catalog'] = native('enum-catalog', lambda adapter: adapter._exchange(
            dict(cmd='enum_definition_inventory', name='')))
        validate(result['catalog'], domain)
        candidates = sorted((row for row in result['catalog']['definitions']
            if re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}', row['name'])), key=lambda row: row['name'])
        if candidates:
            selected = candidates[0]
            result['selected'] = selected
            result['inventory'] = native('enum-definition', lambda adapter: adapter._exchange(
                dict(cmd='enum_definition_inventory', name=selected['name'])))
            validate(result['inventory'], domain, selected=selected)
            result['inventory_repeat'] = native('enum-definition-repeat', lambda adapter: adapter._exchange(
                dict(cmd='enum_definition_inventory', name=selected['name'])))
            validate(result['inventory_repeat'], domain, selected=selected)
            if result['inventory'] != result['inventory_repeat']:
                raise ValueError('Repeated exact enum role evidence changed')
            result['enum_structure_verified'] = True
            if args.study_before:
                result['enum_study_retained'] = True
                save()
                result['enum_before_capture'] = enum_study('capture', 'enum-before-capture')
                result['enum_before_summary'] = check_enum(result['enum_before_capture'])
                result['enum_before_check'] = enum_study('check', 'enum-before-check')
                check_enum(result['enum_before_check'])
                if result['enum_before_capture']['before'] != result['enum_before_check']['before']:
                    raise ValueError('Original enum namespace/image changed across connections')
                result['enum_pins'] = native('enum-pins', lambda adapter: adapter._exchange(dict(cmd='scope_inventory')))
                from bd_scope_inventory import validate as validate_pins
                validate_pins(result['enum_pins'])
                scoped = next(row for row in result['enum_pins']['entries'] if row['scope'] == domain['oid'] + '/Main')
                if 'DogeBDEMainWorkflowWitnessesV1:' + enum_study_token not in scoped['pins']:
                    raise ValueError('Original enum study did not pin native namespace')
        else:
            result['enum_structure_reason'] = 'No exact supported existing isolated enum name found; no definition created'
        result['after'] = baseline('after')
        result['witness_check'] = witness('check', 'current-witness-check')
        if result['after'] != result['before'] or result['witness_check']['unchanged'] is not True:
            raise ValueError('Complete current graphical/source or collected model/configuration baselines changed')
        result['witness_release'] = witness('release', 'current-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        if result['enum_study_retained']:
            result['enum_only_pins'] = native('enum-only-pins', lambda adapter: adapter._exchange(dict(cmd='scope_inventory')))
            from bd_scope_inventory import validate as validate_pins
            validate_pins(result['enum_only_pins'])
            scoped = next(row for row in result['enum_only_pins']['entries'] if row['scope'] == domain['oid'] + '/Main')
            if scoped['pins'] != ['DogeBDEMainWorkflowWitnessesV1:' + enum_study_token]:
                raise ValueError('Expected enum-only retained namespace pin')
            def refuse_retirement(adapter):
                try:
                    adapter._exchange(dict(cmd='scope_retire', expected_generation=scoped['generation']))
                except Exception as error:
                    if 'Structural scope retained; refusing retirement' not in str(error):
                        raise
                    return dict(refused=True, error=str(error), generation=scoped['generation'])
                raise ValueError('Retained original enum study allowed namespace retirement')
            result['enum_retirement_refused'] = native('enum-retirement-refused', refuse_retirement)
            result['enum_before_final_check'] = enum_study('check', 'enum-before-final-check')
            check_enum(result['enum_before_final_check'])
            result['after_pin_refusal'] = baseline('after-pin-refusal')
            if result['after_pin_refusal'] != result['before']:
                raise ValueError('Rejected enum namespace retirement changed collected model/configuration')
            result['enum_before_release'] = enum_study('release', 'enum-before-release')
            check_enum(result['enum_before_release'])
            result['enum_study_retained'] = not result['enum_before_release']['released']
        result['sources_match'] = source_manifest() == result['source_manifest']
        pending.check(domain)
        result['isolated_pending'] = False
        result['passed'] = result['sources_match'] and not result['witness_retained'] and not result['enum_study_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        if result['enum_study_retained']:
            try:
                inventory = native('failure-enum-pins', lambda adapter: adapter._exchange(dict(cmd='scope_inventory')))
                scoped = next(row for row in inventory['entries'] if row['scope'] == domain['oid'] + '/Main')
                if 'DogeBDEMainWorkflowWitnessesV1:' + enum_study_token in scoped['pins']:
                    result['failure_enum_export'] = enum_study('export', 'failure-enum-export')
                    check_enum(result['failure_enum_export'])
                    result['failure_enum_release'] = enum_study('release', 'failure-enum-release')
                    check_enum(result['failure_enum_release'])
                    result['enum_study_retained'] = not result['failure_enum_release']['released']
                else:
                    result['enum_study_retained'] = False
                    result['failed_enum_capture_has_no_retained_pin'] = True
            except Exception as diagnostic:
                result['enum_diagnostic_error'] = str(diagnostic)
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('export', 'failure-current-witness')
                result['failure_after'] = baseline('failure-after')
                result['failure_check'] = witness('check', 'failure-current-witness-check')
                if (result['failure_after'] == result['before']
                        and result['failure_check']['unchanged'] is True):
                    result['failure_release'] = witness('release', 'failure-current-witness-release')
                    result['witness_retained'] = not result['failure_release']['released']
                pending.check(domain)
                result['isolated_pending'] = False
            except Exception as diagnostic:
                result['diagnostic_error'] = str(diagnostic)
        result['sources_match'] = source_manifest() == result['source_manifest']
    finally:
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error',
        'enum_structure_verified', 'enum_structure_reason', 'observer_calls',
        'witness_retained', 'enum_study_retained', 'isolated_pending', 'sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
