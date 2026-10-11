"""Zero-model-write production v2/v3 preparation on an existing Trial.

Requires a fresh successful fixed read probe on the same process/component.
No model apply, inverse, factory, store, editor close or ASCET lifecycle is
dispatched. V3 verifies Python refusal; optional host-gate verification sends
one apply protocol request which must return explicit no-mutation refusal.
"""
import argparse
import json
import os
from pathlib import Path
import re
import shutil

import bd_service as service
from bd_connect_material import validate
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_windows_endpoint import endpoint_process
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--read-probe', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--persistent-references', action='store_true', help='Bind finite raw Module/source/reciprocal records to v3; preparation only')
    parser.add_argument('--verify-host-write-gate', action='store_true', help='Send one explicitly rejected host apply request; no Smalltalk apply dispatch')
    args = parser.parse_args()
    if args.verify_host_write_gate and not args.persistent_references:
        parser.error('--verify-host-write-gate requires --persistent-references')
    prior, output = args.read_probe.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned successful read probe and fresh output required')
    proof = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    if proof.get('passed') is not True or proof.get('module_observations_stable') is not True:
        raise ValueError('Successful existing Module probe required')
    if args.persistent_references and proof.get('persistent_complete_capture_verified') is not True:
        raise ValueError('Successful complete finite current reference read required')
    native, port, pid = proof['native'], proof['port'], proof['pid']
    component = native['module_read']['component']
    targets = []
    if args.persistent_references:
        from bd_module_persistent_references import validate as validate_finite, target_requests
        original_snapshot = validate_finite(native['module_read']['persistent_observations'][1],
            component_oid=native['module_read']['component_oid'])
        targets = target_requests([bytes(key).hex() for key in original_snapshot.get('requested_reciprocal_targets', [])])
    if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component):
        raise ValueError('Existing isolated Trial Module required')
    if endpoint_process(port) != pid:
        raise ValueError('Probe process is no longer the listener owner')
    domain = dict(session=output.name, database=native['database'],
        process_epoch=native['process_epoch'], oid=native['module_read']['component_oid'])
    check_pending(domain)
    output.mkdir(parents=True)
    token = 'edit_' + fingerprint(dict(domain=domain, purpose='zero_write_v2_prepare'))
    result = dict(profile='bde_connect_reference_preflight_v1', passed=False,
        domain=domain, component=component, native_token=token, read_probe=str(prior),
        source_manifest=source_manifest(), stage='build', model_setters_called=0, store_called=False,
        connection_edit_dispatched=False, persistent_reference_inverse_implemented=False,
        ascet_started_or_restarted=False, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    def evidence(name, value):
        (output / (name + '.json')).write_text(json.dumps(value, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        destination = output / 'source' / relative; destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, destination)
    try:
        binary = compile_bridge()
        environment = {key: value for key, value in os.environ.items() if not key.startswith('ASCET_BD_')}
        environment.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_HISTORY='native_source_exact_v1',
            ASCET_BD_CONNECT_REFERENCES='module_persistent_v1' if args.persistent_references else 'module_inbound_v1', ASCET_BD_NATIVE_TRACE='1')
        with service.live_lock():
            check_pending(domain)
            if endpoint_process(port) != pid:
                raise ValueError('Exact listener changed before preflight')
            with proxy(upstream_port=port) as wire:
                try:
                    with NativeStructureAdapter(component, timeout=40,
                            connect_reference_targets=targets,
                            environment=dict(environment, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                        result['stage'] = 'observe'; save()
                        before = adapter.observe(domain, []); public_before = adapter.observe_public(domain)
                        evidence('before', dict(native=before, public=public_before))
                        result['public_before'] = compare(before['entries'], public_before)
                        if result['public_before']['passed'] is not True:
                            raise ValueError('Native/public baseline differs')
                        pins = [row for row in before['entries'] if row['kind'] == 'pin']
                        edges = [row for row in before['entries'] if row['kind'] == 'edge']
                        occupied = {edge['target'] for edge in edges}
                        pairs = [(source, target) for source in pins for target in pins
                            if source['output'] and not source['input'] and target['input'] and not target['output']
                            and target['ref'] not in occupied and source['owner'] != target['owner']]
                        if not pairs:
                            raise ValueError('Existing isolated Main has no distinct-owner output/free-input pair; no fixture was created')
                        source, target = pairs[0]; source_ref, target_ref = source['ref'], target['ref']
                        result.update(stage='prepare', source=source_ref, target=target_ref); save()
                        prepared = adapter.prepare(domain, token, 'connect_data', [[], source_ref, target_ref])
                        evidence('prepared', dict(before=prepared, material=adapter.connect_material_prepared))
                        if prepared != before:
                            raise ValueError('Preparation changed the full semantic observation')
                        if adapter.connect_material_prepared['module_references']['before'] != native['module_read']['observations'][1]['image']:
                            raise ValueError('Module references changed since the read probe; retain preparation')
                        if args.persistent_references:
                            raw = adapter.connect_material_prepared['module_persistent_references']['before']
                            if raw != native['module_read']['persistent_observations'][1]:
                                raise ValueError('Finite raw references changed since the read probe; retain preparation')
                            result['finite_original_prepared_record_bound'] = True
                        result['stage'] = 'inspect_prepared'; save()
                        inspected = validate(adapter._exchange(dict(cmd='connect_material', action='inspect_prepared', token=token)),
                            token=token, component_oid=domain['oid'], source=source_ref, target=target_ref, phase='prepared')
                        evidence('inspected', inspected)
                        if inspected != adapter.connect_material_prepared:
                            raise ValueError('Prepared material or references changed before any edit')
                        result['prepared_verified'] = True
                        if args.persistent_references:
                            from bd_edit_journal import NativePreconditionConflict
                            before_commands = len(adapter.commands)
                            try:
                                adapter.apply(token)
                            except NativePreconditionConflict as error:
                                result['apply_refusal'] = str(error)
                            else:
                                raise ValueError('Finite reference preparation gate failed to refuse application')
                            if len(adapter.commands) != before_commands:
                                raise ValueError('Write refusal dispatched a native command')
                            result['apply_refused_before_native_dispatch'] = True
                            if args.verify_host_write_gate:
                                result['stage'] = 'host_write_refusal'; save()
                                try:
                                    adapter._exchange(dict(cmd='apply', token=token))
                                except NativePreconditionConflict as error:
                                    result['host_apply_refusal'] = str(error)
                                    result['host_explicit_no_mutation_refusal'] = True
                                else:
                                    raise ValueError('Native bridge failed to refuse preparation-only application')
                        result['stage'] = 'discard'; save()
                        result['discard'] = adapter.discard_prepared(domain, token)
                        after = adapter.observe(domain, []); public_after = adapter.observe_public(domain)
                        evidence('after', dict(native=after, public=public_after))
                        if after != before or public_after != public_before:
                            raise ValueError('Preparation/discard altered original observed graph/layout/model values')
                        result['observed_original_unchanged'] = True
                        result['native_commands'] = adapter.commands.copy()
                finally:
                    if 'adapter' in locals():
                        result['native_commands'] = adapter.commands.copy()
                        result['native_stderr_tail'] = adapter.stderr_tail.copy()
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(),
                        response=wire['response'].result(), errors=wire['errors'])
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['sources_match'] and result.get('prepared_verified') is True and result.get('observed_original_unchanged') is True
        result['stage'] = 'finished'
    except Exception as error:
        result['error'] = str(error)
    finally:
        save()
    print(json.dumps(dict(passed=result['passed'], stage=result['stage'], error=result.get('error'), output=str(output)), ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
