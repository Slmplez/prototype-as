"""Measure complete Class creation/inverse Tool.call, with separate public-oracle checks."""
import argparse
from copy import deepcopy
import json
import math
import os
from pathlib import Path
import statistics
import time
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_class_creation as creation
import bd_instance_pending as pending
from bd_class_study_journal import audit
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient, PersistentToolClient
import bde_experiments as bench


class SerializedClassClient(PersistentToolClient):
    """Reuse the real Doge module while serializing only this fixed Class workflow."""

    def invoke(self, tool, args):
        if tool not in ('bd_edit', 'bd_revert'):
            return super().invoke(tool, args)
        if self.process is None or args.get('preview'):
            raise RuntimeError('Started serialized Class eval and actual operation required')
        if tool == 'bd_edit' and (len(args.get('operations', [])) != 1
                or args['operations'][0].get('op') != creation.OPERATION):
            raise RuntimeError('Persistent Class write eval only accepts primitive input creation')
        environment = {key: self.env.get(key) for key in
                       ('ASCET_BD_PROBE_PORT', 'ASCET_BD_CLASS_OBSERVATION_MODE')}
        self.process.stdin.write(json.dumps({'tool': tool, 'args': args,
            'session': self.session, 'environment': environment}) + '\n')
        self.process.stdin.flush()
        return self.receive()


def check(condition, message):
    if not condition:
        raise ValueError(message)


def summary(rows):
    values = sorted(row['tool_call_ms'] for row in rows)
    return {'samples': len(values), 'median_ms': statistics.median(values),
        'p95_ms': values[math.ceil(.95 * len(values)) - 1], 'max_ms': max(values),
        'request_frames': sorted({row['request']['frames'] for row in rows}),
        'response_bytes': [row['response']['bytes'] for row in rows],
        'all_under_1000ms': all(value < 1000 for value in values),
        'p95_under_1000ms': values[math.ceil(.95 * len(values)) - 1] < 1000}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--native-matrix', type=Path, required=True)
    parser.add_argument('--recipe', choices=('base', 'extended', 'mixed'), required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3, 30), default=30)
    parser.add_argument('--bulk-write', action='store_true')
    parser.add_argument('--query-cache', action='store_true')
    parser.add_argument('--doge-lifecycle', choices=('per_call', 'resident'), default='resident')
    parser.add_argument('--trace-selectors', action='store_true')
    parser.add_argument('--profile-native', action='store_true')
    parser.add_argument('--batch-observation', action='store_true')
    parser.add_argument('--configuration-guard', action='store_true')
    args = parser.parse_args()
    check(not args.query_cache or args.bulk_write, 'Creation query cache requires the fixed bulk profile')
    check(not args.batch_observation or args.bulk_write, 'Observation batching requires the fixed bulk profile')
    check(not args.configuration_guard or args.bulk_write, 'Native configuration guard requires the fixed bulk profile')
    manifest, _, epoch = live_manifest(args.manifest)
    native_path, output = args.native_matrix.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    check(native_path.is_relative_to(owned) and output.is_relative_to(owned)
          and not output.is_relative_to(native_path), 'Separate owned native evidence and output required')
    native = json.loads((native_path / 'result.json').read_text(encoding='utf-8'))
    check(native['passed'] is True and native['completed_rounds'] == 36
          and native['process_epoch'] == epoch and native['database'].lower() == manifest['database'].lower(),
          'Complete same-instance native matrix required')
    candidates = [row for row in native['fixtures'] if row['recipe'] == args.recipe]
    check(len(candidates) == 1, 'Unique independently restored fixture required')
    fixture = candidates[0]
    before_raw = json.loads((native_path / (args.recipe + '-cont') / 'study-2.json').read_text(encoding='utf-8'))
    baseline = tools.observation(before_raw, 'before')
    tools.require_sandbox(fixture['component'])
    operation = {'op': creation.OPERATION, 'selector': fixture['method_selector'], 'name': 'PerfInput',
        'model_type': 'cont', 'layout_policy': 'follow_verified_pins_and_orthogonal_routes',
        'sequence_policy': 'no_implicit_changes'}
    creation.creation_plan(baseline, operation)
    output.mkdir(parents=True, exist_ok=False)
    service.STORE = output / 'state'
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = [service.ROOT / 'scripts' / name for name in dict.fromkeys((*tools.SOURCES,
        'bde_class_creation_performance.py', 'bde_tool_client.py', 'bde_experiments.py', 'bde_isolated_runtime.py',
        'bd_windows_endpoint.py', 'bd_class_tools.py', 'bd_class_creation.py', 'bd_class_selector.py',
        'bd_class_interface_contract.py', 'bd_class_study_journal.py', 'bd_instance_pending.py',
        'bd_service.py', 'bd_write_contract.py'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    sources.append(service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts')
    hashes = lambda: {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    result = {'passed': False, 'full_delivery': False, 'performance_accepted': False, 'business_writes': False,
        'scope': 'fresh complete actual Class input creation and exact inverse; all Tool.call pages',
        'recipe': args.recipe, 'repeats': args.repeats, 'bulk_write': args.bulk_write,
        'query_cache': args.query_cache, 'doge_lifecycle': args.doge_lifecycle, 'process_epoch': epoch,
        'profile_native': args.profile_native,
        'batch_observation': args.batch_observation,
        'configuration_guard': args.configuration_guard,
        'source_manifest': hashes(), 'rounds': [], 'tool_calls': [],
        'timing_scope': 'actual complete Tool.call including Python/native bridge/identity/WAL/snapshot publication and every page; proxy shutdown and independent public-oracle validation separate',
        'not_verified': ['other argument types', 'other fixtures', 'cold ASCET images',
            'native faults', 'Class local inverse preserving unrelated changes', 'whole G0-G7/AEB_Core/FLOW/package']}

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    client_type = SerializedClassClient if args.doge_lifecycle == 'resident' else ToolClient
    client = client_type(output, 'class-create-perf-' + output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']),
        ASCET_BD_CLASS_CREATION_BULK='1' if args.bulk_write else '0',
        ASCET_BD_CLASS_QUERY_CACHE='1' if args.query_cache else '0',
        ASCET_BD_CLASS_OBSERVATION_BATCH='1' if args.batch_observation else '0',
        ASCET_BD_CLASS_CONFIGURATION_GUARD='1' if args.configuration_guard else '0',
        ASCET_BD_CLASS_PROFILE='1' if args.profile_native else '0')
    if args.trace_selectors:
        os.environ['ASCET_BD_TRACE_SELECTORS'] = '1'
    log = Path(manifest['logs']) / 'crash.log'
    initial_log = log.read_bytes()
    save()

    def call(row, tool, arguments, mode='bulk_public_v1'):
        live_manifest(args.manifest)
        client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = mode
        # Independent public bookends must remain on the per-field reader.
        client.env['ASCET_BD_CLASS_OBSERVATION_BATCH'] = '1' if args.batch_observation and mode == 'bulk_public_v1' else '0'
        begin = time.perf_counter()
        first = len(result['tool_calls'])
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            started = time.perf_counter()
            head, body, error = client.call(tool, arguments)
            completed = time.perf_counter()
        row.update(tool=tool, tool_call_ms=(completed - started) * 1000,
            calls_elapsed_ms=sum(item['elapsed_ms'] for item in result['tool_calls'][first:]),
            instrumented_elapsed_ms=(time.perf_counter() - begin) * 1000,
            tool_call_count=len(result['tool_calls']) - first,
            body_utf8_bytes=len(body.encode('utf-8')), request=wire['request'].result(),
            response=wire['response'].result(), wire_errors=wire['errors'], is_error=error)
        save()
        check(not wire['errors'] and row['request']['parse_error'] is None
              and row['response']['parse_error'] is None, 'Actual native wire counter is incomplete')
        live_manifest(args.manifest)
        check(not error, body)
        return head, body

    def read(row, expected):
        head, body = call(row, 'bd_read', {'component': fixture['component'],
            'view': 'class_interface', 'max_bytes': 16384}, 'public_oracle')
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        check(record['logic'] == body and record['class_interface'] == expected
              and record['dirty_editors'] == [0, 0] and record['ascet_process_epoch'] == epoch
              and record['oid'] == fixture['oid'] and record['database'].lower() == manifest['database'].lower(),
              'Complete independent native/public/configuration oracle differs')
        return record

    try:
        tools.build()
        if args.doge_lifecycle == 'resident':
            result['doge_application_startup'] = client.start()
            save()
        for index in range(args.repeats):
            row = {'round': index, 'outstanding': False, 'before_oracle': {}, 'edit': {}}
            result['rounds'].append(row)
            before = read(row['before_oracle'], baseline)
            _, body = call(row['edit'], 'bd_edit', {'snapshot': before['snapshot'],
                'request_id': f'create-{index}', 'operations': [deepcopy(operation)]})
            applied = json.loads(body)
            row.update(change_id=applied['change_id'], outstanding=True)
            save()
            check(applied['status'] == 'verified_class_apply', 'Actual creation receipt is not verified')
            raw = tools.load(tools.root(applied['change_id']) / 'raw.json')
            if args.profile_native:
                row['edit']['native_profile'] = raw['native_profile']
            check(raw['bulk_creation_write_observation'] is args.bulk_write,
                  'Native write observation strategy differs')
            check(raw['fixed_read_template_cache'] is args.query_cache, 'Native creation cache profile differs')
            check(raw['fixed_observation_batch'] is args.batch_observation, 'Native creation batching profile differs')
            check(raw['native_configuration_guard'] is args.configuration_guard, 'Native creation configuration guard differs')
            row['creation_effects'] = creation.creation_effects(raw, operation)
            row['applied_oracle'] = {}
            read(row['applied_oracle'], tools.observation(raw, 'after'))
            row['inverse'] = {}
            _, body = call(row['inverse'], 'bd_revert', {'change_id': applied['change_id'], 'request_id': f'inverse-{index}'})
            restored = json.loads(body)
            row['inverse_change_id'] = restored['change_id']
            inverse_raw = tools.load(tools.root(restored['change_id']) / 'raw.json')
            check(inverse_raw['native_configuration_guard'] is args.configuration_guard,
                  'Native inverse configuration guard differs')
            if args.profile_native:
                row['inverse']['native_profile'] = inverse_raw['native_profile']
            save()
            check(restored['status'] == 'verified_class_inverse', 'Actual inverse receipt is not verified')
            restored_record = service.load_record(restored['after_snapshot'], 's_', 'snapshots')
            check(restored_record['class_interface'] == baseline, 'Exact complete inverse baseline differs')
            row['inverse_audit'] = audit(tools.root(restored['change_id']) / 'native.wal')
            check(row['inverse_audit']['retained_source_binding_verified'] is True
                  and row['inverse_audit']['dispatch_count'] == row['inverse_audit']['completed_count'],
                  'Inverse lacks complete retained source-bound journal proof')
            row['after_oracle'] = {}
            read(row['after_oracle'], baseline)
            row['outstanding'] = pending.pending_path(tools.domain(before)).exists()
            check(not row['outstanding'], 'Complete restoration left a native pending barrier')
            row.update(passed=True, complete_original_baseline_restored=True)
            save()
            print(json.dumps({'round': index, 'edit_ms': row['edit']['tool_call_ms'],
                'inverse_ms': row['inverse']['tool_call_ms'], 'edit_frames': row['edit']['request']['frames'],
                'inverse_frames': row['inverse']['request']['frames']}), flush=True)
        result['passed'] = all(row.get('passed') is True for row in result['rounds'])
        result['edit_statistics'] = summary([row['edit'] for row in result['rounds']])
        result['inverse_statistics'] = summary([row['inverse'] for row in result['rounds']])
        result['performance_accepted'] = args.repeats == 30 and all(result[key]['p95_under_1000ms']
            for key in ('edit_statistics', 'inverse_statistics'))
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if args.doge_lifecycle == 'resident' and client.process is not None:
            try:
                client.close()
            except Exception:
                result['client_close_error'] = traceback.format_exc()
                result['passed'] = False
        final_log = log.read_bytes()
        result['crash_log_append_only'] = final_log.startswith(initial_log)
        appended = final_log[len(initial_log):] if result['crash_log_append_only'] else final_log
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['passed'] = result['passed'] and result['crash_log_append_only'] and not result['new_assertion_count'] and not result['source_drift']
        result['performance_accepted'] = result['performance_accepted'] and result['passed']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'performance_accepted', 'edit_statistics', 'inverse_statistics', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
