"""PRIVATE composite recovery fails between real writes; observe/classify without replay."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback
import uuid
from unittest.mock import patch

import bd_class_tools as tools
import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_private_registry import PrivateWal, descriptor, validate_descriptor
from bd_private_physical_journal import audit_physical
from bde_private_host_exit_experiment import PrivateBridge, manifest, build
from bde_class_detached_projection_experiment import compare_projection


COLLECTION_CLASSES = ('OrderedCollection', 'Dictionary', 'Set', 'Array')


def physical_count(cell, class_name):
    if class_name == 'Array':
        return sum(left != right for left, right in zip(cell['before'], cell['after']))
    return len(cell['before']) + len(cell['after'])


def run_case(folder, domain, sources, environment, position, fault_stage, oracle, collection_class='OrderedCollection'):
    folder.mkdir(parents=True, exist_ok=False)
    binding = descriptor(domain, uuid.uuid4().hex, sources)
    service.write_once(folder / 'session.json', binding)
    bridge = None
    try:
        bridge = PrivateBridge(binding, environment)
        baseline_size = bridge._exchange({'cmd': 'size'})
        exported = bridge._exchange({'cmd': 'prepare'} if collection_class == 'OrderedCollection' else
                                    {'cmd': 'prepare_collection', 'collection_class': collection_class})
        wal = PrivateWal(folder / 'wal', binding, {'profile': 'private_physical_journal_v1',
            'domain': domain, 'token': binding['token'], 'fault_stage': fault_stage, 'position': position,
            'collection_class': collection_class,
            'production_write_authorized': False})
        wal.append('prepared', {'export': exported, 'descriptor': binding})
        wal.append('registry_bound', {'descriptor': binding})
        projection = {'oid': domain['oid'], 'component': domain['component'], 'scopes': exported['original_projection']}
        compare_projection(oracle, [projection])

        def verify():
            validate_descriptor(json.loads((folder / 'session.json').read_text(encoding='utf-8')), binding)
            if manifest() != sources:
                raise ValueError('Physical study source drift before request')

        def observe():
            reply = bridge.request('observe')
            wal.append('observed', {'reply': reply})
            return reply

        def dispatch(action, index, instruction):
            verify()
            wal.append('request_started', {'action': action, 'index': index, 'instruction': instruction})
            reply = bridge.request(action, index)
            wal.append('request_observed', {'reply': reply})
            return reply

        def refuse(action, index):
            before = bridge.request('observe')
            try:
                if action == 'release':
                    bridge._exchange({'cmd': 'release'})
                else:
                    bridge.request(action, index)
            except RuntimeError as error:
                failure = str(error)
            else:
                raise ValueError('Unknown/conflicting private recovery unexpectedly accepted ' + action)
            after = bridge.request('observe')
            if before != after:
                raise ValueError('Physical refusal changed CURRENT')
            wal.append('refused', {'action': action, 'index': index, 'error': failure, 'before': before, 'after': after})

        for index, instruction in enumerate(exported['steps'], 1):
            reply = dispatch('step', index, instruction)
        recovery = reply['recovery_plan']
        classes = {entry['ref']: entry['class'] for entry in exported['current']}
        target = next((index for index, entry in enumerate(recovery, 1) if entry['kind'] == 'collection' and
                       classes[entry['ref']] == collection_class and
                       physical_count(entry, collection_class) >= (3 if collection_class == 'OrderedCollection' else 2)), None)
        if target is None:
            raise ValueError('Actual private graph has no multi-write ' + collection_class + ' recovery unit; do not fabricate one')
        for index in range(1, target):
            reply = dispatch('recover', index, recovery[index - 1])
        reply = dispatch('physical_begin', target, recovery[target - 1])
        schedule = reply['physical_pending']['steps']
        fault_index = 1 if position == 0 else (len(schedule) + 1) // 2 if position == 1 else len(schedule)
        for index in range(1, fault_index):
            reply = dispatch('physical_next', index, schedule[index - 1])
        action = 'physical_fail_' + fault_stage
        verify()
        wal.append('request_started', {'action': action, 'index': fault_index, 'instruction': schedule[fault_index - 1]})
        try:
            bridge.request(action, fault_index)
        except RuntimeError as error:
            failure = str(error)
            if ('Injected private physical failure ' + ('before write' if fault_stage == 'before'
                    else 'after write before observation')) not in failure:
                raise
        else:
            raise ValueError('Native physical failure was not injected')
        wal.append('physical_failed', {'error': failure})
        # Kill only this dedicated bridge after its native error, before observing
        # the partial graph. Retained native material is the continuation authority.
        pid = bridge.process.pid
        bridge.process.kill()
        exit_code = bridge.process.wait(timeout=5)
        bridge.close()
        wal.append('host_terminated', {'host_pid': pid, 'exit_code': exit_code,
                                     'transport_failure': True, 'setter_replayed': False})
        verify()
        wal = PrivateWal(folder / 'wal', binding)
        bridge = PrivateBridge(binding, environment)
        retrieved = bridge._exchange({'cmd': 'lookup'})
        wal.append('registry_lookup', {'descriptor': binding, 'host_pid': bridge.process.pid,
                                     'commands': list(bridge.commands), 'export': retrieved})
        reply = observe()
        if reply['status']['state'] != 'physical_recovery_started' or reply['status']['actual_observation_complete'] is not False:
            raise ValueError('Native failure lost its unresolved physical state')
        refuse('physical_next', fault_index)
        refuse('recover', target)
        refuse('step', 1)
        refuse('release', 0)
        reply = dispatch('perturb', 0, exported['independent_ref'])
        before_conflict = reply
        dispatch('physical_disturb', 0, recovery[target - 1]['ref'])
        refuse('physical_reconcile', fault_index)
        reply = dispatch('physical_reset', 0, recovery[target - 1]['ref'])
        if reply['actual_changes'] != before_conflict['actual_changes']:
            raise ValueError('Exact physical conflict reset did not restore the observed partial graph')
        reply = dispatch('physical_reconcile', fault_index, schedule[fault_index - 1])
        if reply['result'] != ('applied' if fault_stage == 'after' else 'not_applied'):
            raise ValueError('Read-only CURRENT classification differs')
        next_index = fault_index + 1 if fault_stage == 'after' else fault_index
        if fault_stage == 'after':
            refuse('physical_next', fault_index)
        for index in range(next_index, len(schedule) + 1):
            reply = dispatch('physical_next', index, schedule[index - 1])
        for index in range(target + 1, len(recovery) + 1):
            reply = dispatch('recover', index, recovery[index - 1])
        if reply['status']['state'] != 'recovered' or reply['independent_x'] != exported['independent_x_before'] + 7:
            raise ValueError('Unknown partial recovery did not preserve an independent edit introduced after the fault')
        refuse('release', 0)
        reply = dispatch('reset', 0, exported['independent_ref'])
        registry_before = bridge._exchange({'cmd': 'size'})
        released = bridge._exchange({'cmd': 'release'})
        registry_after = bridge._exchange({'cmd': 'size'})
        if registry_after != baseline_size:
            raise ValueError('Physical recovery retained an unexpected registry root')
        wal.append('registry_released', {'reply': released, 'size_before': registry_before, 'size_after': registry_after})
        wal.append('finished', {'status': 'recovered'})
        checked = audit_physical(folder / 'wal', binding)
        service.write_once(folder / 'receipt.json', checked)
        return {'folder': str(folder.resolve()), 'receipt': checked, 'projection': projection,
                'baseline_registry_size': baseline_size, 'final_registry_size': registry_after}
    except Exception:
        failure = {'error': traceback.format_exc(), 'automatic_retry': False}
        if bridge is not None and bridge.process.poll() is None:
            try:
                failure['current'] = bridge.request('observe')
                failure['registry_size'] = bridge._exchange({'cmd': 'size'})
            except Exception:
                failure['observation_error'] = traceback.format_exc()
        service.write_once(folder / 'failure.json', failure)
        raise
    finally:
        if bridge is not None:
            bridge.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--collections', nargs='+', choices=COLLECTION_CLASSES, default=['OrderedCollection'])
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    for name in ('raw', 'snapshots', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = manifest()
    result = {'passed': False, 'source_manifest': sources, 'rounds': [], 'full_delivery': False,
        'scope': 'real PRIVATE collection recovery prefixes; controlled failures before/after one native primitive, then dedicated bridge death',
        'collection_classes': args.collections,
        'model_setters_called': 0, 'native_archive_available': False,
        'not_verified': ['failure inside one native primitive', 'actual primitive exception', 'production model mutation/store',
                         'ASCET restart', 'original display01 restoration']}
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    initial_log = log.read_bytes()
    before = None
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    try:
        build()
        for iteration in range(args.repeats):
            row = {'round': iteration, 'cases': []}
            result['rounds'].append(row)
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                before = tools.capture(args.component, str(args.output.resolve()))
            service.write_once(args.output / f'public-before-{iteration}.json', before)
            started = time.perf_counter()
            with service.live_lock(), bench.proxy(allow_client_reset=True) as traffic:
                environment = {**os.environ, 'ASCET_BD_ENDPOINT_PORT': '32503', 'ASCET_BD_PROBE_PORT': str(traffic['port'])}
                for owner in before['class_interface']['owners']:
                    domain = {'database': before['database'], 'database_session': before['database_session'],
                              'process_epoch': before['ascet_process_epoch'], 'oid': owner['oid'], 'component': owner['component']}
                    oracle = {**before['class_interface'], 'owners': [owner]}
                    for collection_class in args.collections:
                        for stage in ('before', 'after'):
                            positions = range(3) if collection_class == 'OrderedCollection' else (0, 2)
                            for position in positions:
                                folder = args.output / f'round-{iteration}' / owner['oid'] / collection_class / f'{stage}-{position}'
                                row['cases'].append(run_case(folder, domain, sources, environment, position, stage, oracle, collection_class))
                                save()
                                print(json.dumps({'round': iteration, 'owner': owner['oid'], 'collection': collection_class,
                                                  'stage': stage, 'position': position, 'passed': True}), flush=True)
            row.update(elapsed_ms=(time.perf_counter() - started) * 1000, connections=traffic['connections'],
                       request_frames=traffic['request'].result(), response_frames=traffic['response'].result(),
                       wire_errors=traffic['errors'], client_resets=traffic['client_resets'])
            if row['wire_errors'] or any(row[key]['frames'] is None for key in ('request_frames', 'response_frames')):
                raise ValueError('Physical study has invalid transport frame metrics')
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                after = tools.capture(args.component, before['session'])
            service.write_once(args.output / f'public-after-{iteration}.json', after)
            if (fingerprint(before['class_interface']) != fingerprint(after['class_interface']) or
                    any(before[key] != after[key] for key in ('database_session', 'ascet_process_epoch')) or
                    (service.STORE / 'class-edits').exists()):
                raise ValueError('Complete public bookends/domain changed or model journal allocated')
            projections = {case['projection']['oid']: case['projection'] for case in row['cases']}
            row['coverage'] = compare_projection(before['class_interface'], list(projections.values()))
            row.update(passed=True, independent_public_bookends_unchanged=True)
            save()
            print(json.dumps({'round': iteration, 'passed': True, 'cases': len(row['cases']), 'coverage': row['coverage']}), flush=True)
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
        if 'traffic' in locals():
            row.update(connections=traffic['connections'], request_frames=traffic['request'].result(),
                       response_frames=traffic['response'].result(), wire_errors=traffic['errors'], client_resets=traffic['client_resets'])
        if before is not None:
            try:
                with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                    after = tools.capture(args.component, before['session'])
                result['failure_public_bookend_unchanged'] = fingerprint(before['class_interface']) == fingerprint(after['class_interface'])
            except Exception:
                result['failure_public_bookend_error'] = traceback.format_exc()
    final_log = log.read_bytes()
    result['crash_log_append_only'] = final_log.startswith(initial_log)
    appended = final_log[len(initial_log):] if result['crash_log_append_only'] else final_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != sources[name]]
    result['passed'] &= not result['source_drift'] and result['new_assertion_count'] == 0
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'source_drift', 'new_assertion_count')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
