"""Retain/verify/export/release original declaration images in current after-state only."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_graphical_effects import validate_current, same_current, validate_actual_diff
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def validate_images(value, domain, native_token, study_token):
    if (value.get('profile') != 'retained_declaration_images_study_v1'
            or value.get('component_oid') != domain['oid'] or value.get('native_token') != native_token
            or value.get('study_token') != study_token or value.get('unchanged') is not True
            or value.get('inverse_authorized') is not False or value.get('complete_body_capture') is not False
            or value.get('retained_after_state_only') is not True or value.get('definition_body_captured') is not True
            or value.get('model_setters_called') != 0 or value.get('store_called') is not False):
        raise ValueError('Fixed bounded after-only declaration receipt differs')
    rows = validate_current(value['current_image'])
    validate_actual_diff(value['current_image'], value['actual_diff'])
    if (not same_current(value['current_image'], value['after_image'])
            or value['actual_diff']['changes'] or value['actual_diff']['new_objects']):
        raise ValueError('Declaration native actual image changed')
    for image_key, schema_key in [('current_image', 'current_schema'), ('after_image', 'after_schema')]:
        objects = validate_current(value[image_key])
        schema = value[schema_key]
        if schema['complete'] is not True or len(schema['objects']) != len(objects):
            raise ValueError('Complete declaration field schema required')
        names = {}
        for row in schema['objects']:
            native = objects.get(row['ref'])
            if (native is None or row['ref'] in names or row['class'] != native['class']
                    or row['kind'] != native['kind'] or not isinstance(row['field_names'], list)
                    or len(set(row['field_names'])) != len(row['field_names'])
                    or (len(row['field_names']) != len(native['value']) if native['kind'] == 'fields' else bool(row['field_names']))):
                raise ValueError('Exact field index/name alignment required')
            names[row['ref']] = row['field_names']
        tables = [row for row in objects.values() if row['class'] == 'LookupTable']
        if len(tables) < 2:
            raise ValueError('Original declaration LookupTable storage unavailable')
        for row in tables:
            if row['kind'] != 'fields' or names[row['ref']] != ['elementCount', 'keys', 'values']:
                raise ValueError('Actual LookupTable slots required, not logical entries')
            for member in row['value'][1:]:
                child = objects.get(member.get('ref'))
                if child is None or child['class'] != 'Array' or child['kind'] != 'collection':
                    raise ValueError('Complete LookupTable array storage required')
    for cls in ['SGClass', 'SGVariable', 'SGReal', 'SGClassImplConfig', 'SGClassValueConfig', 'SGImplConfiguration', 'SGValueConfiguration']:
        if not any(row['class'] == cls and row['kind'] == 'fields' for row in rows.values()):
            raise ValueError('Declaration owned role unavailable: ' + cls)
    for oid, cls, ref in value['linked_configurations']:
        if not oid or ref not in rows or rows[ref]['class'] != cls or rows[ref]['kind'] != 'fields':
            raise ValueError('Configuration native identity link differs')
    return dict(native_objects=len(rows), native_fields=sum(len(row['value']) for row in rows.values() if row['kind'] == 'fields'),
                lookup_tables=sum(row['class'] == 'LookupTable' for row in rows.values()),
                boundaries=sum(row['kind'] == 'boundary' for row in rows.values()),
                classes=sorted({row['class'] for row in rows.values()}))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args(); source = args.source.resolve(); output = args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Owned retained creation and fresh evidence output required')
    prior = json.loads((source / 'result.json').read_text(encoding='utf-8')); domain = prior['domain']
    manifest, process, epoch = live_manifest(prior['manifest'])
    if (prior['passed'] is not True or prior['operation']['kind'] != 'variable'
            or prior['material_retained'] is not True or prior['process_epoch'] != epoch
            or prior['isolated_pending'] is not False):
        raise ValueError('Exact retained current-epoch variable after-state required')
    pending.check(domain); output.mkdir(parents=True); service.STORE = output / 'store'
    witness_token = 'main_' + fingerprint(dict(domain=domain, study=output.name))
    study_token = 'decl_' + fingerprint(dict(domain=domain, image_study=output.name))
    result = dict(passed=False, scope='Read-only current-after declaration image study; not before capture or inverse',
        source=str(source), manifest=prior['manifest'], process_epoch=epoch, domain=domain, component=prior['component'],
        native_token=prior['native_token'], study_token=study_token, source_manifest=source_manifest(),
        witness_token=witness_token, witness_retained=False, declaration_study_outcome='not_started',
        complete_body_capture=False, inverse_authorized=False, complete_case_pass=False, full_delivery=False,
        model_setters_called=0, store_called=False, creation_redispatched=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for name in result['source_manifest']:
        target = output / 'source' / name; target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / name, target)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CREATE_MATERIAL='identity_v1', ASCET_BD_NATIVE_TRACE='1')
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        def native(label, callback):
            if live_manifest(prior['manifest']) != (manifest, process, epoch):
                raise ValueError('Exact epoch changed; no rebind')
            evidence = {}; adapter = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(prior['component'], timeout=45, environment={**environment, 'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain); value = callback(adapter); evidence['result'] = value
                return value
            except Exception as error:
                evidence['error'] = str(error)
                raise
            finally:
                if adapter is not None: evidence['trace'] = list(adapter.stderr_tail)
                if 'wire' in locals(): evidence['wire'] = wire_result(wire)
                save_new(output / (label + '.json'), evidence)
        def witness(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_token)))
        def study(action, label):
            return native(label, lambda a: a._exchange(dict(cmd='main_declaration_images', action=action,
                token=prior['native_token'], study_token=study_token)))
        result['before'] = native('before', lambda a: dict(native=a.observe(domain, []), models=a.observe_models(domain)))
        if result['before']['native'] != prior['after']['native']:
            raise ValueError('Retained graph differs; no replay or rebind')
        result['configuration_before'] = native('configuration-before', lambda a: a._exchange(dict(cmd='main_configuration')))
        result['witness_capture'] = witness('capture', 'current-witness-capture'); result['witness_retained'] = True; save()
        result['declaration_study_outcome'] = 'capture_attempted'; save()
        result['image_capture'] = study('capture', 'declaration-image-capture')
        result['declaration_study_outcome'] = 'retained'; save()
        result['image_summary'] = validate_images(result['image_capture'], domain, prior['native_token'], study_token)
        result['image_check'] = study('check', 'declaration-image-check')
        validate_images(result['image_check'], domain, prior['native_token'], study_token)
        if not same_current(result['image_capture']['current_image'], result['image_check']['current_image']):
            raise ValueError('Original declaration images changed across connections')
        result['after'] = native('after', lambda a: dict(native=a.observe(domain, []), models=a.observe_models(domain)))
        result['configuration_after'] = native('configuration-after', lambda a: a._exchange(dict(cmd='main_configuration')))
        result['witness_check'] = witness('check', 'current-witness-check')
        if (result['before'] != result['after'] or result['configuration_before'] != result['configuration_after']
                or result['witness_check']['unchanged'] is not True):
            raise ValueError('Read-only declaration image study changed full current baselines')
        result['image_release'] = study('release', 'declaration-image-release')
        validate_images(result['image_release'], domain, prior['native_token'], study_token)
        if result['image_release']['released'] is not True:
            raise ValueError('Verified declaration images not released')
        result['declaration_study_outcome'] = 'released'; save()
        result['witness_release'] = witness('release', 'current-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['sources_match'] = source_manifest() == result['source_manifest']
        pending.check(domain); result['isolated_pending'] = False
        result['passed'] = result['sources_match'] and not result['witness_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        if result['witness_retained']:
            try: result['failure_witness'] = witness('export', 'failure-current-witness')
            except Exception as diagnostic: result['diagnostic_error'] = str(diagnostic)
    finally:
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'witness_retained', 'declaration_study_outcome', 'image_summary', 'sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
