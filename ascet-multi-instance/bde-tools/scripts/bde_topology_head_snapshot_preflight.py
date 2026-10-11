"""Verify a frozen actual-head export against sealed history without model writes."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_topology_head_snapshot import validate
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--history', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    history, output = args.history.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not history.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned passing history and fresh output required')
    previous = json.loads((history / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous['passed'] is not True or previous['restored'] is not True or previous['process_epoch'] != epoch:
        raise ValueError('Restored same-epoch actual history required')
    domain, component = previous['domain'], previous['component']
    original, owner = previous['edit_a']['change_id'], previous['undo_a_with_b']['change_id']
    frozen = json.loads((history / 'owned-plan-after-b-cleanup.json').read_text(encoding='utf-8'))['result']
    token = 'main_' + fingerprint({'domain': domain, 'head_snapshot': output.name})
    output.mkdir(parents=True)
    candidate = source_manifest()
    result = dict(passed=False, source_manifest=candidate, manifest=previous['manifest'],
        process_epoch=epoch, pid=process['pid'], port=manifest['port'], component=component,
        domain=domain, history=str(history), native_token=original, actual_owner=owner,
        operation=frozen['operation'], witness_token=token, witness_retained=False,
        model_setters_called=0, store_called=False, formal_tool_calls=0,
        formal_managed_topology_inverse_dispatched=False, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in candidate:
        dest = output / 'source' / rel; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, dest)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    binary = None
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    def call(label, request):
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(component, timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                try:
                    data = {'result': adapter._exchange(request)}
                except RuntimeError as error:
                    data = {'error': str(error)}
        data['wire'] = wire_result(wire); save_new(output / (label + '.json'), data)
        return data
    def witness(action):
        answer = call('witness-' + action, {'cmd': 'main_readonly_witness', 'token': token, 'action': action})
        if 'error' in answer:
            raise ValueError(answer['error'])
        return answer['result']
    try:
        binary = build_oracle(output)
        result['capture'] = witness('capture'); result['witness_retained'] = True; save()
        answer = call('correct-owner', dict(cmd='topology_owned_head_snapshot', token=original, owner=owner, state='reverted'))
        if 'error' in answer:
            raise ValueError(answer['error'])
        snapshot = validate(answer['result'], domain=domain, token=original, owner=owner,
            state='reverted', operation=frozen['operation'], previous_owner=original)
        checks = dict(before=snapshot['before'] == frozen['before'], after=snapshot['after'] == frozen['after'],
            parent_before=snapshot['parent_before'] == frozen['parentBefore'],
            parent_after=snapshot['parent_after'] == frozen['parentAfter'],
            drawing_before=snapshot['drawing_before'] == frozen['drawingBefore'],
            drawing_after=snapshot['drawing_after'] == frozen['drawingAfter'],
            historical_after_not_current=snapshot['after'] != frozen['current'])
        result['frozen_history_checks'] = checks
        if not all(checks.values()):
            raise ValueError('Export differs from frozen actual history or substitutes current for historical after')
        for label, fields in (('wrong-owner', {'owner': previous['cleanup_b']['change_id'], 'state': 'reverted'}),
                               ('wrong-state', {'owner': owner, 'state': 'applied'})):
            answer = call(label, {'cmd': 'topology_owned_head_snapshot', 'token': original, **fields})
            if 'Actual topology snapshot owner/state/sequence expired' not in answer.get('error', ''):
                raise ValueError('Exact native snapshot owner/state not refused: ' + label)
        result['wrong_owner_and_state_refused'] = True
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
    finally:
        if result['witness_retained']:
            result['after'] = witness('check')
            if result['after']['unchanged'] is True:
                result['release'] = witness('release'); result['witness_retained'] = not result['release']['released']
            else:
                result['export'] = witness('export')
        result['sources_match'] = candidate == source_manifest()
        result['passed'] = (not result.get('error') and result.get('wrong_owner_and_state_refused') is True
            and result.get('after', {}).get('unchanged') is True and not result['witness_retained']
            and result['sources_match'])
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'witness_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
