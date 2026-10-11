"""Real Doge six-tool Class formal deletion and separate inverse acceptance."""
import argparse
from copy import deepcopy
import json
import os
from pathlib import Path
import sys
import time
import traceback

import bd_service as service
import bd_class_tools as class_tools
import bd_instance_pending as pending
import bde_experiments as bench
from bde_tool_client import ToolClient
from bde_class_interface_probe import public_projection
from bd_class_study_journal import audit, actual_diff


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--selector', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--presentation', action='store_true', help='Native scoped show/clear; visual acceptance is reported separately')
    parser.add_argument('--visual-pause', action='store_true', help='Pause after show for screenshot/zoom/scroll inspection; implies presentation')
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    selector = json.loads(args.selector.read_text(encoding='utf-8'))
    service.STORE = (args.output / 'state').resolve()
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = [service.ROOT / 'scripts' / name for name in (*class_tools.SOURCES,
        'bd_class_tools.py', 'bd_class_configuration.py', 'bd_class_interface_contract.py',
        'bd_class_selector.py', 'bd_class_study_journal.py', 'bd_edit_history.py', 'bd_service.py',
        'bd_edit_journal.py', 'bd_instance_pending.py', 'bde_tool_client.py', 'bde_class_tool_experiment.py',
        'bd_class_presentation.py', 'bd_connection_presentation.py', 'bd_native_presentation.py',
        'AscetBdeOverlay.cs', 'bde_overlay.st', 'bde_overlay_experiment.py')]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'business_writes': False, 'rounds': [], 'tool_calls': [],
        'scope': 'real Doge Tool.call; isolated Class deletion; strict all-owner inverse',
        'not_verified': ['Class creation', 'partial native recovery', 'preservation of later unrelated edits',
            'Class BDE presentation', 'whole BDE/FLOW acceptance'],
        'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}}

    def save():
        destination = args.output / 'result.json'
        temporary = args.output / 'result.tmp'
        temporary.write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
        temporary.replace(destination)

    client = ToolClient(args.output, 'class-tools-' + args.output.name, lambda row: result['tool_calls'].append(row))
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503')
    if args.presentation or args.visual_pause:
        client.env.update(ASCET_BD_NATIVE_PRESENTATION='1', ASCET_BD_ENDPOINT_PORT='32503')

    def call(tool, request):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            started = time.perf_counter()
            head, body, error = client.call(tool, request)
        proof = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
            'request': wire['request'].result(), 'response': wire['response'].result(),
            'wire_errors': wire['errors'], 'connections': wire['connections'],
            'returned_body_bytes': len(body.encode('utf-8')), 'is_error': error}
        result['last_call'] = proof
        save()
        assert not wire['errors'] and proof['request']['parse_error'] is None, proof
        return head, body, error, proof

    def value(tool, request):
        head, body, error, proof = call(tool, request)
        assert not error, body
        return head, json.loads(body), proof

    def fixture_check(record):
        state = record['class_interface']['observation']
        assert state['signature'] == fixture['class_interface'], 'Independent original Class signature differs'
        assert state['body'] == fixture['class_graph'], 'Independent original Class public body differs'
        assert state['public_signature'] == public_projection(fixture['class_interface']['methods'])
        expected = {row['component']: row for row in fixture['callers']}
        assert set(expected) == {row['component'] for row in state['callers']}
        for caller in state['callers']:
            oracle = expected[caller['component']]
            assert caller['public_tree'] == oracle['public_tree'], 'Independent original caller public tree differs'

    save()
    try:
        class_tools.build()
        for index in range(args.repeats):
            row = {'index': index, 'outstanding': False}
            result['rounds'].append(row)
            print(json.dumps({'round': index, 'stage': 'read'}), flush=True)
            head, body, error, row['read'] = call('bd_read', {'component': fixture['component'], 'view': 'class_interface'})
            assert not error, body
            record = service.load_record(head['snapshot'], 's_', 'snapshots')
            assert body == record['logic'], 'All paginated Class logic must be byte-equivalent'
            fixture_check(record)
            assert record['ascet_process_epoch'] == fixture['ascet_process_epoch']
            original = deepcopy(record['class_interface'])
            _, found, error, row['find'] = call('bd_find', {'snapshot': record['snapshot'], 'query': 'aggregate', 'kind': 'method'})
            assert not error and selector['method_alias'] in found
            op = {'op': class_tools.OPERATION, 'selector': selector,
                'layout_policy': 'follow_verified_pins_and_orthogonal_routes',
                'sequence_policy': 'allow_unassigned' if selector['slot'] == 'return' else 'no_implicit_changes'}
            edit = {'snapshot': record['snapshot'], 'request_id': f'apply-{index}', 'operations': [op]}
            _, refusal, error, proof = call('bd_edit', {**edit, 'preview': True})
            assert error and 'CAPABILITY_UNAVAILABLE' in refusal and proof['request']['frames'] == 0
            print(json.dumps({'round': index, 'stage': 'apply'}), flush=True)
            _, applied, row['edit'] = value('bd_edit', edit)
            row.update(change_id=applied['change_id'], outstanding=True)
            save()
            assert applied['status'] == 'verified_class_apply' and 'actual_patch' not in applied
            applied_record = service.load_record(applied['after_snapshot'], 's_', 'snapshots')
            native = class_tools.load(class_tools.root(applied['change_id']) / 'raw.json')
            row['apply_audit'] = audit(class_tools.root(applied['change_id']) / 'native.wal')
            assert row['apply_audit']['status'] == 'retained_applied'
            assert applied_record['class_interface'] == class_tools.observation(native, 'after')
            _, patch, row['diff'] = value('bd_diff', {'change_id': applied['change_id'], 'max_bytes': 2048})
            assert row['diff']['request']['frames'] == 0 and patch['live_frames'] == 0
            assert patch['resource_effects'] == actual_diff(class_tools.root(applied['change_id']) / 'native.wal')['resource_effects']
            assert patch['definition_effect']['before'] != patch['definition_effect']['after']
            _, replayed, row['replay'] = value('bd_edit', edit)
            assert replayed == applied and row['replay']['request']['frames'] == 0
            altered = deepcopy(edit)
            methods = original['observation']['signature']['methods']
            if selector['slot'] == 'argument':
                altered['operations'][0]['selector']['formal_alias'] = next(method['arguments'][0]['alias']
                    for method in methods if method['alias'] == selector['method_alias'])
            else:
                alternate = next(method for method in methods if method['alias'] != selector['method_alias'] and method['return'])
                altered['operations'][0]['selector'].update(method_alias=alternate['alias'], formal_alias=alternate['return']['alias'])
            _, refused, error, row['intent_conflict'] = call('bd_edit', altered)
            assert error and 'REQUEST_ID_CONFLICT' in refused and row['intent_conflict']['request']['frames'] == 0
            for owner in original['owners']:
                _, listing, error, proof = call('bd_inspect', {'query': 'edits', 'component': owner['component'], 'max_bytes': 2048})
                assert not error and applied['change_id'] in listing and proof['request']['frames'] == 0
            _, recovery, proof = value('bd_inspect', {'query': 'recovery', 'change_id': applied['change_id']})
            assert recovery['native_state'] == 'retained_applied' and recovery['model_setters_called'] == 0
            assert proof['request']['frames'] == 0 and recovery['instance_quarantined'] is False
            if args.presentation or args.visual_pause:
                print(json.dumps({'round': index, 'stage': 'show'}), flush=True)
                _, shown, row['show'] = value('bd_diff', {'change_id': applied['change_id'], 'presentation': 'show'})
                assert shown['model_edit_replayed'] is False and shown['model_setters_called'] == 0
                assert all(not entry['result']['is_error'] for entry in shown['resources'])
                row['native_presentation_resources'] = [{key: entry[key] for key in ('component', 'diagram')} for entry in shown['resources']]
                row['visual_verified'] = False
                save()
                if args.visual_pause:
                    print('VISUAL_PAUSE: ' + applied['change_id'], flush=True)
                    input()
                _, cleared, row['clear'] = value('bd_diff', {'change_id': applied['change_id'], 'presentation': 'clear'})
                assert cleared['model_edit_replayed'] is False and cleared['model_setters_called'] == 0
                assert all(not entry['result']['is_error'] for entry in cleared['resources'])
            print(json.dumps({'round': index, 'stage': 'inverse'}), flush=True)
            inverse = {'change_id': applied['change_id'], 'request_id': f'inverse-{index}'}
            _, restored, row['inverse'] = value('bd_revert', inverse)
            assert restored['status'] == 'verified_class_inverse'
            row['inverse_change_id'] = restored['change_id']
            restored_record = service.load_record(restored['after_snapshot'], 's_', 'snapshots')
            assert restored_record['class_interface'] == original, 'Complete original all-owner observation must restore'
            fixture_check(restored_record)
            _, replayed, row['inverse_replay'] = value('bd_revert', inverse)
            assert replayed == restored and row['inverse_replay']['request']['frames'] == 0
            _, refusal, error, proof = call('bd_revert', {**inverse, 'request_id': f'new-inverse-{index}'})
            assert error and 'REVERT_UNAVAILABLE' in refusal and proof['request']['frames'] == 0
            head, body, error, row['fresh_restoration'] = call('bd_read', {'component': fixture['component'], 'view': 'class_interface'})
            assert not error
            fresh = service.load_record(head['snapshot'], 's_', 'snapshots')
            fixture_check(fresh)
            assert fresh['class_interface'] == original and body == fresh['logic']
            row['outstanding'] = pending.pending_path(class_tools.domain(record)).exists()
            assert row['outstanding'] is False
            row['complete_baseline_restored'] = True
            row['passed'] = True
            save()
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
        result['traceback'] = traceback.format_exc()
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
        if service.digest((service.ROOT / name).read_bytes()) != sha]
    result['passed'] = result['passed'] and not result['source_changes_during_run']
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'output': str(args.output)}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
