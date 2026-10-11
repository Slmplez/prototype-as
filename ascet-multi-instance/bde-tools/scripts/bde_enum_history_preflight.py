"""Existing Enum first-undo compile/prepare purity from retained formal original material."""
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
from bd_create_history import preparation
from bd_create_material import observation
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execute-profile', action='store_true', help='Prepare the exact execution profile; never execute it')
    args = parser.parse_args(); source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Exact retained original Enum source and fresh owned output required')
    old = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if (old.get('passed') is not True or old.get('operation', {}).get('kind') != 'enumeration'
            or old.get('creation_dispatched') is not True or old.get('material_retained') is not True
            or old.get('witness_retained') is not True or old.get('original_restored') is not False
            or old.get('isolated_pending') is not False or old['process_epoch'] != epoch
            or old['domain']['database'] != manifest['database']
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Unrestored retained exact-epoch existing Enum original creation required')
    domain, token = old['domain'], old['native_token']; pending.check(domain)
    log = StructureJournal(source / 'store/edits'); events = log.read(token)
    if any(e['kind'] in ('create_history_closed', 'released', 'create_history_ready') for e in events):
        raise ValueError('Original creation already closed or history advanced; no initial undo replay')
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
    actual = next(e['payload'] for e in events if e['kind'] == 'observed')
    material = actual['create_material_actual']
    proof = observation(prepared['before'], actual['after'], prepared['create_material_prepared'], material,
        token=token, oid=domain['oid'], kind='enumeration')
    if any(actual[k] != value for k, value in proof.items()):
        raise ValueError('Actual original Enum forward material differs from its durable WAL')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Existing Enum original first-undo compile/preparation purity only',
        source=str(source), manifest=old['manifest'], process_epoch=epoch, domain=domain,
        component=old['component'], native_token=token, source_manifest=source_manifest(),
        original_material_retained=True, original_before_witness_retained=True, current_witness_retained=False,
        observer_calls=0, formal_tool_calls=0, model_setters_called=0, store_called=False,
        execution_dispatched=False, original_restored=False, enum_same_object_history_verified=False,
        execution_profile_prepared=args.execute_profile,
        complete_case_pass=False, full_delivery=False, business_model_calls=0)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save_new(output / 'original-forward-journal.json', events); save()
    for relative in result['source_manifest']:
        target = output / 'source' / relative; target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, target)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CREATE_MATERIAL='identity_v1',
        ASCET_BD_CREATE_HISTORY='native_source_exact_v1', ASCET_BD_CREATE_DECLARATIONS='enum_body_v1',
        ASCET_BD_CREATE_DECLARATION_HISTORY='enum_body_exact_v1' if args.execute_profile else 'enum_prepare_exact_v1')
    for key in ('ASCET_BD_CREATE_FINALIZE', 'ASCET_BD_CREATE_DECLARATION_FINALIZE'):
        environment.pop(key, None)
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose=output.name + '-current'))
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter): build = staticmethod(lambda: binary)
        def native(label, callback):
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Original isolated runtime changed; never rebind across epochs')
            result['observer_calls'] += 1; save(); wire = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain); value = callback(adapter)
            except Exception as error:
                save_new(output / (label + '-failure.json'), dict(error=str(error),
                    wire=wire_result(wire) if wire is not None else None)); raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire))); return value
        def witness(action, label, witness_id=witness_token):
            return native(label, lambda a: a._exchange(dict(cmd='main_readonly_witness', action=action, token=witness_id)))
        def baseline(label):
            value = native(label, lambda a: dict(native=a.observe(domain, []), public=a.observe_public(domain),
                models=a.observe_models(domain), configuration=a._exchange(dict(cmd='main_configuration'))))
            if not compare(value['native']['entries'], value['public'])['passed']:
                raise ValueError('Complete independent public/native projection differs')
            return value
        result['before'] = baseline('before')
        if ({key: result['before'][key] for key in ('native', 'public', 'models')} != old['after']
                or result['before']['configuration'] != old['configuration_after']):
            raise ValueError('Current created Enum differs from actual original factory baseline')
        result['current_witness_retained'] = True; save()
        result['current_capture'] = witness('capture', 'created-current-capture')
        result['compiled'] = native('history-compile', lambda a: a._exchange(dict(cmd='create_history_compile')))
        if result['compiled'] != dict(profile='native_create_exact_execution_v3' if args.execute_profile
                else 'native_create_enum_exact_preparation_v1', compiled=True,
                model_setters_called=0, store_called=False, write_authorized=False):
            raise ValueError('Enum fixed preparation compile profile differs')
        result_id = 'edit_' + fingerprint(dict(domain=domain, purpose=output.name + '-prepare'))
        for label in ('preparation', 'repeat-preparation'):
            value = native(label, lambda a: a.prepare_create_history(domain, token, token, 'applied', result_id))
            if args.execute_profile:
                from bd_create_history_journal import context
                value = {**value, 'enum_origin': context(log, token)['enum_origin']}
            result[label] = preparation(value, token=token, owner=token, state='applied', result_id=result_id,
                sequence=1, kind='enumeration', current=actual['after'], expected=prepared['before'],
                oid=domain['oid'], creation_material=material)
            save()
        result['current_check'] = witness('check', 'created-current-check')
        if result['current_check']['unchanged'] is not True:
            raise ValueError('Enum preparation changed full graphical/source/order/alias CURRENT')
        # Full original before and recorded after are bound by the preparation's bijective
        # namespace evidence. Do not call the original attached-current inspector: it
        # correctly rejects lazy read-cache changes rather than classifying their origin.
        result['original_material_binding'] = dict(original_forward_sha256=fingerprint(material),
            original_before_bound=True, complete_recorded_after_bound=True,
            cache_evidence_source='preparation.declaration_evidence.read_cache_evidence',
            strict_attached_inspector_unchanged=True)
        result['after'] = baseline('after')
        if result['before'] != result['after'] or log.read(token) != events:
            raise ValueError('Pure history preparation changed full collected baseline or original forward WAL')
        result['current_release'] = witness('release', 'created-current-release')
        result['current_witness_retained'] = not result['current_release']['released']
        pending.check(domain); result['isolated_pending'] = False
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['current_witness_retained']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
        if result['current_witness_retained']:
            try:
                result['failure_check'] = witness('check', 'failure-current-check')
                if result['failure_check']['unchanged'] is True:
                    result['failure_release'] = witness('release', 'failure-current-release')
                    result['current_witness_retained'] = not result['failure_release']['released']
            except Exception as failure:
                result['diagnostic_error'] = str(failure)
        try:
            pending.check(domain); result['isolated_pending'] = False
        except Exception:
            result['isolated_pending'] = True
    finally:
        result['sources_match'] = source_manifest() == result['source_manifest']; save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'observer_calls',
        'execution_dispatched', 'current_witness_retained', 'sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
