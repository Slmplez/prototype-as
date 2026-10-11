"""Live zero-write connection material preflight; not complete edit acceptance."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_connect_material import validate
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, VARIANTS
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Verified owned preflight and fresh output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous.get('passed') is not True or previous['process_epoch'] != epoch:
        raise ValueError('Verified exact current-epoch preflight required')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Three live isolated Main connection material preparations; no model writes',
        source_manifest=source_manifest(), manifest=previous['manifest'], process_epoch=epoch,
        pid=process['pid'], port=manifest['port'], rounds=[], model_setters_called=0, store_called=False,
        formal_edit_dispatched=False, complete_case_pass=False, full_delivery=False)
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        destination = output / 'source' / rel; destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, destination)
    try:
        binary = build_oracle(output)
    except Exception as error:
        result.update(error=str(error), stage='build', traceback=traceback.format_exc())
        save(); print(json.dumps(dict(passed=False, stage='build', error=str(error))))
        return 1
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_HISTORY='native_source_exact_v1')

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    for variant in VARIANTS:
        fixture = json.loads(sorted((prior / ('fixture-' + variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
        if fixture.get('passed') is not True:
            raise ValueError('Verified fixture required')
        domain = dict(session=output.name + '-' + variant, database=manifest['database'],
            process_epoch=epoch, oid=fixture['oid'])
        check_pending(domain)
        case = output / variant; case.mkdir()
        token = 'edit_' + fingerprint(dict(domain=domain, purpose='connect_material'))
        witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='connect_material_original'))
        row = dict(variant=variant, domain=domain, token=token, witness_token=witness_token,
            prepared_retained=False, witness_retained=False, passed=False)
        result['rounds'].append(row); save()

        def exchange(label, callback):
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(fixture['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain); value = callback(adapter)
            save_new(case / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return exchange(label, lambda adapter: adapter._exchange(
                dict(cmd='main_readonly_witness', action=action, token=witness_token)))

        def material(action, label, *, rejected=False):
            def dispatch(adapter):
                try:
                    value = adapter._exchange(dict(cmd='connect_material', action=action, token=token))
                except Exception as error:
                    if not rejected or 'BDE_CONNECT_MATERIAL_ERROR:' not in str(error):
                        raise
                    return dict(rejected=True, error=str(error))
                if rejected:
                    raise ValueError('Invalid connect material action was accepted')
                return validate(value, token=token, component_oid=domain['oid'], source=row['source'],
                    target=row['target'], phase='prepared')
            return exchange(label, dispatch)

        try:
            row['capture'] = witness('capture', 'witness-capture'); row['witness_retained'] = True; save()
            before = exchange('before', lambda adapter: dict(native=adapter.observe(domain, []), public=adapter.observe_public(domain)))
            if not compare(before['native']['entries'], before['public'])['passed']:
                raise ValueError('Independent native/public baseline differs')
            row['history_compile'] = exchange('history-compile', lambda adapter: adapter._exchange(
                dict(cmd='connect_history_compile')))
            if row['history_compile'] != dict(profile='native_connect_exact_execution_v1', compiled=True,
                    model_setters_called=0, store_called=False, write_authorized=False):
                raise ValueError('Fixed history compile-only contract differs')
            entries = before['native']['entries']; pins = [item for item in entries if item['kind'] == 'pin']
            edges = [item for item in entries if item['kind'] == 'edge']; occupied = {edge['target'] for edge in edges}
            source = max((pin for pin in pins if pin['output'] and not pin['input']),
                key=lambda pin: sum(edge['source'] == pin['ref'] for edge in edges))
            target = next(pin for pin in pins if pin['input'] and not pin['output']
                and pin['ref'] not in occupied and pin['owner'] != source['owner'])
            row.update(source=source['ref'], target=target['ref']); save()
            # This research driver explicitly exercises material prepare below.
            # The formal adapter now captures it automatically.
            prepared = exchange('prepare', lambda adapter: adapter._preparation(adapter._exchange(
                dict(cmd='prepare', token=token, operation='connect_data',
                    arguments=[[], source['ref'], target['ref']])), token))
            row['prepared_retained'] = True; save()
            if prepared != before['native']:
                raise ValueError('Connection preparation changed the full typed observation')
            row['material_prepared'] = material('prepare', 'material-prepare'); save()
            row['material_inspected'] = material('inspect_prepared', 'material-inspect')
            if row['material_inspected'] != row['material_prepared']:
                raise ValueError('Cross-call original material receipt changed')
            row['repeat_refusal'] = material('prepare', 'material-repeat-refused', rejected=True)
            row['uncalled_factory_refusal'] = material('capture_attached', 'material-uncalled-factory-refused', rejected=True)
            row['unowned_head_refusal'] = material('inspect_attached', 'material-unowned-head-refused', rejected=True)
            row['after_preparation'] = witness('check', 'witness-after-preparation')
            if row['after_preparation']['unchanged'] is not True:
                raise ValueError('Material preparation/guard changed complete native/source/order witness')
            row['discard'] = exchange('discard', lambda adapter: adapter.discard_prepared(domain, token))
            row['prepared_retained'] = False; save()
            row['after_discard'] = witness('check', 'witness-after-discard')
            if row['after_discard']['unchanged'] is not True:
                raise ValueError('Discard changed original complete witness')
            row['release'] = witness('release', 'witness-release')
            row['witness_retained'] = not row['release']['released']; row['passed'] = not row['witness_retained']; save()
        except Exception as error:
            row.update(error=str(error), traceback=traceback.format_exc())
            if row['witness_retained']:
                try:
                    row['failed_witness_export'] = witness('export', 'failed-witness-export')
                except Exception as export_error:
                    row['failed_witness_export_error'] = str(export_error)
            save(); print(json.dumps(dict(passed=False, variant=variant, error=str(error))))
            return 1
    result['sources_match'] = source_manifest() == result['source_manifest']
    result['passed'] = result['sources_match'] and len(result['rounds']) == 3 and all(row['passed'] for row in result['rounds'])
    save(); print(json.dumps(dict(passed=result['passed'], rounds=len(result['rounds']), model_setters_called=0, store_called=False)))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
