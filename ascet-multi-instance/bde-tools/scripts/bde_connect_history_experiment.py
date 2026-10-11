"""Isolated fixed native connect/undo/retained-object redo; not formal Tool.call acceptance."""
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
from bd_connect_material import validate as validate_material
from bd_connect_history import preparation, observed
from bd_edit_journal import fingerprint, NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, VARIANTS
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--variant', choices=VARIANTS, default='operator_fanout')
    args = parser.parse_args()
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not prior.is_relative_to(owned):
        raise ValueError('Verified preflight and fresh owned output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous.get('passed') is not True or previous['process_epoch'] != epoch:
        raise ValueError('Verified exact current-epoch preflight required')
    fixture = json.loads(sorted((prior / ('fixture-' + args.variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
    if fixture.get('passed') is not True:
        raise ValueError('Complete original fixture required')
    output.mkdir(parents=True)
    domain = dict(session=output.name, database=manifest['database'], process_epoch=epoch, oid=fixture['oid'])
    pending.check(domain)
    token = 'edit_' + fingerprint(dict(domain=domain, purpose='native_connect_original'))
    witness_token = 'main_' + fingerprint(dict(domain=domain, purpose='full_original_witness'))
    result = dict(passed=False, scope='Fixed eval-only Main connect undo/redo; exact CURRENT only',
        source_manifest=source_manifest(), manifest=previous['manifest'], domain=domain, variant=args.variant,
        token=token, witness_token=witness_token, prepared_retained=False, actual_created_retained=False,
        witness_retained=False, histories=[], formal_tool_calls=0, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        destination = output / 'source' / rel; destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, destination)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_HISTORY='native_source_exact_v1')
    marker = None
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        def exchange(label, callback):
            # All business operations are serial and bound to the manifested live process.
            fresh, fresh_process, fresh_epoch = live_manifest(previous['manifest'])
            if fresh != manifest or fresh_process != process or fresh_epoch != epoch:
                raise ValueError('Original isolated process changed; never rebind retained material')
            with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(fixture['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain); value = callback(adapter)
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value

        def witness(action, label):
            return exchange(label, lambda adapter: adapter._exchange(
                dict(cmd='main_readonly_witness', action=action, token=witness_token)))

        def material(action, label, phase):
            value = exchange(label, lambda adapter: adapter._exchange(dict(cmd='connect_material', action=action, token=token)))
            return validate_material(value, token=token, component_oid=domain['oid'], source=result['source'],
                target=result['target'], phase=phase)

        result['capture'] = witness('capture', 'original-witness-capture'); result['witness_retained'] = True; save()
        result['before'] = exchange('before', lambda adapter: dict(native=adapter.observe(domain, []), public=adapter.observe_public(domain)))
        before = result['before']['native']
        if not compare(before['entries'], result['before']['public'])['passed']:
            raise ValueError('Independent public/native original differs')
        pins = [row for row in before['entries'] if row['kind'] == 'pin']
        edges = [row for row in before['entries'] if row['kind'] == 'edge']; occupied = {e['target'] for e in edges}
        source = max((p for p in pins if p['output'] and not p['input']),
            key=lambda p: sum(e['source'] == p['ref'] for e in edges))
        target = next(p for p in pins if p['input'] and not p['output'] and p['ref'] not in occupied and p['owner'] != source['owner'])
        result.update(source=source['ref'], target=target['ref']); save()
        result['compiled'] = exchange('history-compile', lambda adapter: adapter._exchange(dict(cmd='connect_history_compile')))
        result['prepared'] = exchange('forward-prepare', lambda adapter: adapter._preparation(adapter._exchange(
            dict(cmd='prepare', token=token, operation='connect_data',
                arguments=[[], source['ref'], target['ref']])), token))
        result['prepared_retained'] = True; save()
        if result['prepared'] != before:
            raise ValueError('Forward preparation changed full original observation')
        result['original_material'] = material('prepare', 'material-prepare', 'prepared')
        result['before_write_witness'] = witness('check', 'original-witness-before-write')
        if not result['before_write_witness']['unchanged']:
            raise ValueError('Zero-write preparation changed full original witness')
        save_new(output / 'forward-intent.json', dict(domain=domain, native_token=token,
            source=source['ref'], target=target['ref'], before=before, material=result['original_material'], automatic_retry=False))
        marker = pending.begin(domain, 'connect_eval_forward', token)
        result['forward'] = exchange('forward-actual', lambda adapter: adapter._exchange(dict(cmd='apply', token=token)))
        result['forward_reply_persisted'] = True; save()
        pending.confirmed(marker); marker = None
        marker = pending.begin(domain, 'connect_eval_actual_capture', token)
        result['actual_material'] = material('capture_attached', 'material-actual', 'attached')
        result['actual_created_retained'] = True; save()
        pending.confirmed(marker); marker = None
        result['applied'] = exchange('applied', lambda adapter: dict(native=adapter.observe(domain, []), public=adapter.observe_public(domain)))
        applied = result['applied']['native']
        if not compare(applied['entries'], result['applied']['public'])['passed']:
            raise ValueError('Independent public/native applied state differs')
        additions = {r['ref'] for r in applied['entries']} - {r['ref'] for r in before['entries']}
        if len(additions) != 1:
            raise ValueError('Created typed observation must own exactly one edge')
        result['created_read_alias'] = next(iter(additions)); save()
        current, expected, owner, state, sequence = applied, before, token, 'applied', 1
        for action in ('undo', 'redo', 'undo_again'):
            result_id = 'edit_' + fingerprint(dict(domain=domain, action=action))
            request = dict(cmd='connect_history', action='prepare', token=token, owner=owner, state=state,
                result_change_id=result_id, prepared_signature='')
            prepared = exchange(action + '-prepare', lambda adapter: adapter._exchange(request))
            prepared = preparation(prepared, token=token, owner=owner, state=state, result_id=result_id,
                sequence=sequence, current=current, expected=expected)
            row = dict(action=action, prepared=prepared, before=current, expected=expected, dispatched=False, verified=False)
            result['histories'].append(row); save()
            # Durable exact intent precedes the only possible mutation dispatch.
            save_new(output / (action + '-intent.json'), dict(domain=domain, prepared=prepared, automatic_retry=False))
            marker = pending.begin(domain, 'connect_eval_history', token,
                context=dict(owner=owner, state=state, result=result_id, signature=prepared['signature']))
            row['dispatched'] = True; save()
            actual = exchange(action + '-actual', lambda adapter: adapter._exchange({**request,
                'action': 'execute', 'prepared_signature': prepared['signature']}))
            row['actual'] = actual; save()
            row['actual'] = observed(actual, prepared); row['verified'] = True; save()
            pending.confirmed(marker); marker = None
            owner, sequence = result_id, sequence + 1
            state = actual['execution']['after_state']; current, expected = expected, current
            head_request = dict(cmd='connect_history', action='inspect', token=token, owner=owner, state=state,
                result_change_id='edit_' + fingerprint(dict(domain=domain, action=action, purpose='inspection')),
                prepared_signature='')
            row['actual_head_before_refusals'] = exchange(action + '-head-before-refusals',
                lambda adapter: adapter._exchange(head_request))
            def refuse(adapter, stale):
                try:
                    adapter._exchange(stale)
                except NativePreconditionConflict as error:
                    return dict(rejected=True, mutation_started=False, error=str(error))
                raise ValueError('Stale or unowned connect history dispatch was accepted')
            row['replay_refusal'] = exchange(action + '-replay-refused', lambda adapter: refuse(adapter,
                {**request, 'action': 'execute', 'prepared_signature': prepared['signature']}))
            row['signature_refusal'] = exchange(action + '-signature-refused', lambda adapter: refuse(adapter,
                {**head_request, 'action': 'execute', 'prepared_signature': prepared['signature']}))
            row['actual_head_after_refusals'] = exchange(action + '-head-after-refusals',
                lambda adapter: adapter._exchange(head_request))
            if row['actual_head_before_refusals'] != row['actual_head_after_refusals']:
                raise ValueError('Write refusal changed complete actual connection head')
            row['independent'] = exchange(action + '-independent', lambda adapter: dict(
                native=adapter.observe(domain, []), public=adapter.observe_public(domain)))
            if (row['independent']['native'] != current or not compare(current['entries'], row['independent']['public'])['passed']):
                raise ValueError('Independent complete typed/public observation differs from actual target')
            if state == 'reverted':
                row['full_original_witness'] = witness('check', action + '-original-witness')
                if row['full_original_witness']['unchanged'] is not True:
                    raise ValueError('Full original native/source/alias/physical/drawing witness not restored')
            save()
        result['released'] = exchange('material-release', lambda adapter: adapter.release(domain, token))
        if result['released'].get('released') is not True:
            raise ValueError('Exact original connect material release not confirmed')
        result['prepared_retained'] = result['actual_created_retained'] = False; save()
        result['final_original_witness'] = witness('check', 'final-original-witness')
        if result['final_original_witness']['unchanged'] is not True:
            raise ValueError('Release changed complete restored baseline')
        result['witness_release'] = witness('release', 'original-witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['sources_match'] = source_manifest() == result['source_manifest']
        result['passed'] = result['sources_match'] and not result['witness_retained'] and all(r['verified'] for r in result['histories'])
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc(), pending_marker=str(marker) if marker else None)
        if result['witness_retained']:
            try:
                result['failure_witness'] = witness('export', 'failure-witness-export')
            except Exception as export_error:
                result['failure_witness_error'] = str(export_error)
    save()
    print(json.dumps(dict(passed=result['passed'], variant=args.variant, error=result.get('error'),
        histories=len(result['histories']), formal_tool_calls=0, full_delivery=False)))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
