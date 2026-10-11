"""Actual Doge Class creation chain on a manifested, disposable native fixture."""
import argparse
from copy import deepcopy
import json
import os
from pathlib import Path
import time
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_class_creation as creation
import bd_instance_pending as pending
from bd_class_study_journal import actual_diff, audit
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient
import bde_experiments as bench


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--baseline', type=Path, required=True)
    parser.add_argument('--selector', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--read-only', action='store_true')
    parser.add_argument('--bulk-write', action='store_true', help='Opt-in fixed complete bulk observation during creation/inverse')
    parser.add_argument('--query-cache', action='store_true', help='Reuse only the audited fixed read templates')
    parser.add_argument('--batch-observation', action='store_true', help='Combine fixed adjacent read calls inside ASCET')
    parser.add_argument('--configuration-guard', action='store_true', help='Fresh exact native configuration comparisons')
    args = parser.parse_args()
    require(not args.query_cache or args.bulk_write, 'Creation query cache requires the fixed bulk profile')
    require(not args.batch_observation or args.bulk_write, 'Observation batching requires the fixed bulk profile')
    require(not args.configuration_guard or args.bulk_write, 'Native configuration guard requires the fixed bulk profile')
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    for path in (args.fixture, args.baseline, args.selector, args.output):
        require(path.resolve().is_relative_to(owned), 'Owned disposable inputs/output required')
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    baseline_raw = json.loads(args.baseline.read_text(encoding='utf-8'))
    selector = json.loads(args.selector.read_text(encoding='utf-8'))
    require(fixture['ascet_process_epoch'] == epoch and baseline_raw['ascet_process_epoch'] == epoch
            and fixture['database'].lower() == manifest['database'].lower()
            and baseline_raw['database'].lower() == manifest['database'].lower()
            and baseline_raw['component'] == fixture['component'] and baseline_raw['oid'] == fixture['oid']
            and baseline_raw['outstanding'] is False, 'Exact independently restored fixture identity required')
    tools.require_sandbox(fixture['component'])
    baseline = tools.observation(baseline_raw, 'before')
    operation = {'op': creation.OPERATION,
        'selector': {key: selector[key] for key in ('diagram', 'method_alias')},
        'name': selector['name'], 'model_type': selector['model_type'],
        'layout_policy': 'follow_verified_pins_and_orthogonal_routes',
        'sequence_policy': 'no_implicit_changes'}
    creation.creation_plan(baseline, operation)
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=False)
    service.STORE = output / 'state'
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = [service.ROOT / 'scripts' / name for name in dict.fromkeys((*tools.SOURCES,
        'bde_class_creation_tool_experiment.py', 'bde_tool_client.py', 'bde_isolated_runtime.py',
        'bd_class_tools.py', 'bd_class_creation.py', 'bd_class_selector.py', 'bd_class_preview.py',
        'bd_class_interface_contract.py', 'bd_class_study_journal.py', 'bd_instance_pending.py',
        'bd_service.py', 'bd_write_contract.py'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    sources.append(service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts')
    fingerprints = lambda: {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    input_hashes = {str(p.resolve()): service.digest(p.read_bytes())
                    for p in (args.fixture, args.baseline, args.selector, args.manifest)}
    result = {'passed': False, 'full_delivery': False, 'business_writes': False,
        'scope': 'actual Doge Tool.call; primitive Class input creation, actual diff and strict complete-owner inverse',
        'read_only': args.read_only, 'bulk_write': args.bulk_write, 'query_cache': args.query_cache,
        'batch_observation': args.batch_observation,
        'configuration_guard': args.configuration_guard,
        'manifest': str(args.manifest.resolve()), 'process_epoch': epoch,
        'component': fixture['component'], 'model_type': operation['model_type'],
        'source_manifest': fingerprints(), 'input_hashes': input_hashes, 'rounds': [], 'tool_calls': [],
        'not_verified': ['native faults', 'unrelated Class edits preserved by inverse',
            'out/return/enum/complex Class creation', 'Class visual lifecycle', 'complete FLOW/AEB_Core/package']}

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    client = ToolClient(output, 'class-create-tools-' + output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']),
        ASCET_BD_CLASS_CREATION_BULK='1' if args.bulk_write else '0',
        ASCET_BD_CLASS_QUERY_CACHE='1' if args.query_cache else '0',
        ASCET_BD_CLASS_OBSERVATION_BATCH='1' if args.batch_observation else '0',
        ASCET_BD_CLASS_CONFIGURATION_GUARD='1' if args.configuration_guard else '0')
    os.environ['ASCET_BD_ENDPOINT_PORT'] = str(manifest['port'])
    log = Path(manifest['logs']) / 'crash.log'
    initial_log = log.read_bytes()
    save()

    def call(row, tool, request, mode='bulk_public_v1'):
        live_manifest(args.manifest)
        client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = mode
        started = time.perf_counter()
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, request)
        row.update(tool=tool, elapsed_ms=(time.perf_counter() - started) * 1000,
            request=wire['request'].result(), response=wire['response'].result(),
            wire_errors=wire['errors'], connections=wire['connections'], is_error=error, manifest=head,
            returned_body_bytes=len(body.encode('utf-8')))
        save()
        require(not wire['errors'] and row['request']['parse_error'] is None
                and row['response']['parse_error'] is None, 'Counting proxy did not parse complete native frames')
        live_manifest(args.manifest)
        return head, body, error

    def value(row, tool, request):
        head, body, error = call(row, tool, request)
        require(not error, body)
        return head, json.loads(body)

    def read(row, expected=None):
        head, body, error = call(row, 'bd_read',
            {'component': fixture['component'], 'view': 'class_interface', 'max_bytes': 8192}, 'public_oracle')
        require(not error, body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        require(record['logic'] == body and record['dirty_editors'] == [0, 0]
                and record['ascet_process_epoch'] == epoch and record['oid'] == fixture['oid']
                and record['database'].lower() == manifest['database'].lower(),
                'Complete independent Class read identity/dirty/pagination differs')
        require(record['class_interface'] == (baseline if expected is None else expected),
                'Complete independent native/public/configuration baseline differs')
        require(not record.get('write_resource_error'), 'Fixture has unsupported native write resources: ' + str(record.get('write_resource_error')))
        return record

    try:
        tools.build()
        for index in range(1 if args.read_only else args.repeats):
            row = {'round': index, 'outstanding': False, 'before': {}}
            result['rounds'].append(row)
            print(json.dumps({'round': index, 'stage': 'independent_read'}), flush=True)
            before = read(row['before'])
            if args.read_only:
                row.update(passed=True, complete_baseline_equal=True, model_setters_called=0)
                continue
            require(creation.NATIVE_WRITE_ACCEPTED, 'Parameterized native matrix must pass before formal mutation acceptance')
            edit = {'snapshot': before['snapshot'], 'request_id': f'create-{index}', 'operations': [operation]}
            row['preview'] = {}
            _, preview = value(row['preview'], 'bd_edit', {**edit, 'preview': True})
            require(preview['status'] == 'class_creation_preview' and preview['model_setters_called'] == 0
                    and preview['recovery_record_created'] is False and preview['edit_request_reserved'] is False
                    and preview['write_eligibility'] == 'prepare_required', 'Exact creation preview refused or allocated native mutation material')
            row['planned_input_pins'] = preview['planned_input_pin_count']
            row['edit'] = {}
            print(json.dumps({'round': index, 'stage': 'create'}), flush=True)
            _, applied = value(row['edit'], 'bd_edit', edit)
            row.update(change_id=applied['change_id'], outstanding=True)
            save()
            require(applied['status'] == 'verified_class_apply' and 'actual_patch' not in applied,
                    'Class apply must publish a compact verified receipt')
            folder = tools.root(applied['change_id'])
            raw = tools.load(folder / 'raw.json')
            require(raw['bulk_creation_write_observation'] is args.bulk_write
                    and raw['fixed_read_template_cache'] is args.query_cache
                    and raw['fixed_observation_batch'] is args.batch_observation
                    and raw['native_configuration_guard'] is args.configuration_guard
                    and raw['public_graph_strategy'] == ('bulk_public_v1' if args.bulk_write else 'public_oracle'),
                    'Native creation observation strategy differs from the selected experiment profile')
            row['apply_audit'] = audit(folder / 'native.wal')
            row['creation_effects'] = creation.creation_effects(raw, operation)
            require(row['apply_audit']['status'] == 'retained_applied'
                    and row['creation_effects']['created_input_pins'] == row['planned_input_pins'],
                    'Complete actual Class creation or WAL differs from preview')
            row['diff'] = {}
            _, patch = value(row['diff'], 'bd_diff', {'change_id': applied['change_id'], 'max_bytes': 2048})
            expected_patch = actual_diff(folder / 'native.wal')
            require(row['diff']['request']['frames'] == 0 and patch['live_frames'] == 0
                    and patch['definition_effect'] == expected_patch['definition_effect']
                    and patch['resource_effects'] == expected_patch['resource_effects'], 'Offline actual diff must match every WAL owner effect')
            row['replay'] = {}
            _, replayed = value(row['replay'], 'bd_edit', edit)
            require(replayed == applied and row['replay']['request']['frames'] == 0, 'Duplicate creation re-dispatched native work')
            altered = deepcopy(edit)
            altered['operations'][0]['name'] += '_Changed'
            row['intent_conflict'] = {}
            _, refusal, error = call(row['intent_conflict'], 'bd_edit', altered)
            require(error and 'REQUEST_ID_CONFLICT' in refusal and row['intent_conflict']['request']['frames'] == 0,
                    'Changed creation intent reused an immutable request id')
            stale = deepcopy(edit)
            stale['request_id'] = f'stale-create-{index}'
            stale['operations'][0]['name'] += '_Stale'
            row['native_conflict'] = {}
            _, body, error = call(row['native_conflict'], 'bd_edit', stale)
            refused = json.loads(body)
            require(error and refused['status'] == 'rejected_before_dispatch'
                    and refused['model_modified'] is False and row['native_conflict']['request']['frames'] > 0,
                    'A stale complete-owner snapshot must be refused by the live native precondition')
            rejected_folder = tools.root(refused['change_id'])
            rejected_raw = tools.load(rejected_folder / 'raw.json')
            require(rejected_raw['model_mutation_dispatched'] is False and rejected_raw['outstanding'] is False,
                    'A live stale-snapshot refusal dispatched mutation or left recovery material')
            if (rejected_folder / 'native.wal').exists():
                rejected_audit = audit(rejected_folder / 'native.wal')
                require(rejected_audit['dispatch_count'] == 0, 'Stale Class request entered a native setter')
            row['native_conflict'].update(change_id=refused['change_id'], model_setters_called=0)
            row['applied_oracle'] = {}
            read(row['applied_oracle'], tools.observation(raw, 'after'))
            row['history'] = []
            for owner in baseline['owners']:
                proof = {}
                row['history'].append(proof)
                _, body, error = call(proof, 'bd_inspect', {'query': 'edits', 'component': owner['component'], 'max_bytes': 2048})
                require(not error and applied['change_id'] in body and proof['request']['frames'] == 0,
                        'Offline edit history omitted an affected Class owner')
            row['recovery'] = {}
            _, recovery = value(row['recovery'], 'bd_inspect', {'query': 'recovery', 'change_id': applied['change_id']})
            require(recovery['native_state'] == 'retained_applied' and recovery['model_setters_called'] == 0
                    and recovery['instance_quarantined'] is False and row['recovery']['request']['frames'] == 0,
                    'Offline recovery state differs from the completed creation')
            inverse = {'change_id': applied['change_id'], 'request_id': f'inverse-{index}'}
            row['inverse_preview'] = {}
            _, preview = value(row['inverse_preview'], 'bd_revert', {**inverse, 'preview': True})
            require(preview['model_setters_called'] == 0 and preview['write_eligibility'] == 'execute_recheck_required',
                    'Actual complete-owner inverse preview refused or mutated')
            row['inverse'] = {}
            print(json.dumps({'round': index, 'stage': 'inverse'}), flush=True)
            _, restored = value(row['inverse'], 'bd_revert', inverse)
            row['inverse_change_id'] = restored['change_id']
            save()
            require(restored['status'] == 'verified_class_inverse', 'Native Class inverse is not verified')
            inverse_raw = tools.load(tools.root(restored['change_id']) / 'raw.json')
            require(inverse_raw['bulk_creation_write_observation'] is args.bulk_write
                    and inverse_raw['fixed_read_template_cache'] is args.query_cache
                    and inverse_raw['fixed_observation_batch'] is args.batch_observation
                    and inverse_raw['native_configuration_guard'] is args.configuration_guard
                    and inverse_raw['public_graph_strategy'] == ('bulk_public_v1' if args.bulk_write else 'public_oracle'),
                    'Native inverse observation strategy differs from the selected experiment profile')
            row['inverse_audit'] = audit(tools.root(restored['change_id']) / 'native.wal')
            require(row['inverse_audit']['status'] == 'retained_restored'
                    and row['inverse_audit']['retained_source_binding_verified'] is True
                    and row['inverse_audit']['dispatch_count'] == row['inverse_audit']['completed_count'],
                    'Inverse WAL does not prove every completed step against its retained original source')
            restored_record = service.load_record(restored['after_snapshot'], 's_', 'snapshots')
            require(restored_record['class_interface'] == baseline, 'Inverse did not restore exact complete native/public/configuration values')
            row['inverse_replay'] = {}
            _, replayed = value(row['inverse_replay'], 'bd_revert', inverse)
            require(replayed == restored and row['inverse_replay']['request']['frames'] == 0, 'Duplicate inverse re-dispatched native work')
            row['inverse_refusal'] = {}
            _, refusal, error = call(row['inverse_refusal'], 'bd_revert', {**inverse, 'request_id': f'new-inverse-{index}'})
            require(error and 'REVERT_UNAVAILABLE' in refusal and row['inverse_refusal']['request']['frames'] == 0,
                    'A completed inverse was allowed to run again')
            row['after'] = {}
            read(row['after'])
            row['outstanding'] = pending.pending_path(tools.domain(before)).exists()
            require(not row['outstanding'], 'Verified restoration left a pending native barrier')
            row.update(passed=True, complete_baseline_equal=True,
                owners=len(baseline['owners']), scopes=sum(len(owner['scopes']) for owner in baseline['owners']))
            save()
        result['passed'] = all(row.get('passed') is True for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        final_log = log.read_bytes()
        result['crash_log_append_only'] = final_log.startswith(initial_log)
        appended = final_log[len(initial_log):] if result['crash_log_append_only'] else final_log
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['source_drift'] = [name for name, digest in fingerprints().items() if digest != result['source_manifest'][name]]
        result['inputs_unchanged'] = all(service.digest(Path(name).read_bytes()) == digest for name, digest in input_hashes.items())
        result['passed'] = result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0
        result['passed'] = result['passed'] and not result['source_drift'] and result['inputs_unchanged']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
