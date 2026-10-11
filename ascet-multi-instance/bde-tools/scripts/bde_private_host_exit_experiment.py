"""Kill only disposable PRIVATE bridges after completion, then lookup exact same-epoch material."""
import argparse
import json
import os
from pathlib import Path
import queue
import time
import traceback
import uuid
from unittest.mock import patch

import bd_class_tools as tools
import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_literal import NativeLiteralAdapter
from bd_private_registry import PrivateWal, descriptor, validate_descriptor, audit_registry
from bde_class_detached_projection_experiment import compare_projection


SOURCES = (*tools.SOURCES, 'AscetPrivateRegistrySession.cs', 'bde_native_private_registry.st',
           'bd_private_registry.py', 'bde_private_host_exit_experiment.py', 'bd_private_step_journal.py',
           'bd_class_study_journal.py', 'bd_native_literal.py', 'bd_service.py', 'bde_experiments.py',
           'bd_private_physical_journal.py', 'bde_private_physical_experiment.py')


def manifest():
    return {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in SOURCES}


def build():
    files = [service.ROOT / 'scripts' / name for name in SOURCES]
    binary = service.ROOT / 'analysis/live-api/AscetPrivateRegistrySession.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.ensure_probe()
    if not binary.exists() or binary.stat().st_mtime < max(path.stat().st_mtime for path in files + [dll]):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetPrivateRegistrySession',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{path},{path.name}' for path in files if path.suffix == '.st'],
            *[str(path) for path in files if path.suffix == '.cs']], 30, build_step=True)
    return binary


class PrivateBridge(NativeLiteralAdapter):
    build = staticmethod(build)

    def __init__(self, binding, environment):
        self.binding = validate_descriptor(binding)
        if self.binding['source_manifest'] != manifest():
            raise ValueError('Private bridge source differs; original material cannot rebind')
        super().__init__(binding['domain']['component'], timeout=40, environment=environment)
        try:
            self._ensure_open(binding['domain'])
        except Exception:
            self.close()
            raise

    def open_request(self, domain):
        return {'cmd': 'open', 'domain': domain, 'token': self.binding['token'],
                'source_sha256': self.binding['source_sha256']}

    def request(self, action, index=0):
        return self._exchange({'cmd': 'wire', 'action': action, 'index': index})

    def terminate_after_native(self, action, index, signal):
        request = {'cmd': 'wire', 'action': action, 'index': index, 'exit_signal': str(signal.resolve())}
        self.commands.append('wire')
        self.process.stdin.write(json.dumps(request) + '\n')
        self.process.stdin.flush()
        self.native_request_pending = True
        deadline = time.monotonic() + 20
        value = None
        while self.process.poll() is None and time.monotonic() < deadline:
            try:
                value = json.loads(signal.read_text(encoding='utf-8'))
                break
            except (FileNotFoundError, PermissionError, json.JSONDecodeError):
                time.sleep(.02)
        if value is None:
            # Consume the already dispatched request; never send it again.
            try:
                reply = self.responses.get(timeout=40)
            except queue.Empty:
                reply = None
            raise RuntimeError('Native completed-window signal absent; do not replay: ' + str(reply))
        if (value['host_pid'] != self.process.pid or value['token'] != self.binding['token'] or
                value['action'] != action or value['index'] != index):
            raise ValueError('Dedicated bridge exit signal identity differs')
        self.process.kill()
        code = self.process.wait(timeout=5)
        if code == 0:
            raise ValueError('Dedicated bridge was not terminated abnormally')
        self.native_request_pending = False
        return {'host_pid': self.process.pid, 'exit_code': code, 'transport_failure': True, 'setter_replayed': False}


def run_case(folder, domain, sources, environment, position, owner_projection):
    binding = descriptor(domain, uuid.uuid4().hex, sources)
    folder.mkdir(parents=True, exist_ok=False)
    service.write_once(folder / 'session.json', binding)
    bridge = None
    try:
        bridge = PrivateBridge(binding, environment)
        size_before = bridge._exchange({'cmd': 'size'})
        exported = bridge._exchange({'cmd': 'prepare'})
        count = exported['status']['primitive_count']
        stop = 1 if position == 0 else (count + 1) // 2 if position == 1 else count
        wal = PrivateWal(folder / 'wal', binding, {'profile': 'private_step_journal_v1', 'domain': domain,
            'token': binding['token'], 'stop': stop, 'production_write_authorized': False})
        wal.append('prepared', {'export': exported})
        wal.append('registry_bound', {'descriptor': binding})
        compare_projection(owner_projection, [{'component': domain['component'], 'oid': domain['oid'],
                                               'scopes': exported['original_projection']}])

        def refused(command):
            before = bridge.request('observe')
            try:
                bridge._exchange({'cmd': command})
            except RuntimeError as error:
                failure = str(error)
            else:
                raise ValueError('Private registry unexpectedly accepted ' + command)
            after = bridge.request('observe')
            wal.append('registry_refused', {'command': command, 'error': failure, 'before': before, 'after': after})
            if before != after:
                raise ValueError('Private registry refusal changed CURRENT')

        refused('duplicate_register')
        refused('release')
        for command in ('wrong_source_lookup', 'wrong_epoch_lookup', 'wrong_database_lookup',
                        'wrong_owner_lookup', 'missing_token_lookup', 'replacement_lookup'):
            refused(command)

        def dispatch(action, index, instruction, kill=False):
            nonlocal bridge, wal
            validate_descriptor(json.loads((folder / 'session.json').read_text(encoding='utf-8')), binding)
            if manifest() != sources:
                raise ValueError('Source drift before private dispatch')
            wal.append('step_started', {'token': binding['token'], 'action': action, 'index': index, 'instruction': instruction})
            if not kill:
                reply = bridge.request(action, index)
                wal.append('step_observed', {'reply': reply})
                return reply
            death = bridge.terminate_after_native(action, index, folder / (action + '-completed.json'))
            bridge.close()
            wal.append('host_terminated', death)
            # Validate disk evidence before connecting; use the retained block only.
            wal = PrivateWal(folder / 'wal', binding)
            bridge = PrivateBridge(binding, environment)
            retrieved = bridge._exchange({'cmd': 'lookup'})
            wal.append('registry_lookup', {'descriptor': binding, 'host_pid': bridge.process.pid,
                'commands': list(bridge.commands), 'export': retrieved})
            reply = bridge.request('observe')
            wal.append('reconciled', {'reply': reply, 'read_only': True})
            return reply

        for index in range(1, stop + 1):
            reply = dispatch('step', index, exported['steps'][index - 1], index == stop)
        recovery = reply['recovery_plan']
        dispatch('perturb', 0, exported['independent_ref'])
        for index, instruction in enumerate(recovery, 1):
            reply = dispatch('recover', index, instruction, index == len(recovery))
        if reply['independent_x'] != exported['independent_x_before'] + 7:
            raise ValueError('Host-loss recovery did not preserve independent edit')
        refused('release')
        reply = dispatch('reset', 0, exported['independent_ref'])
        registry_before = bridge._exchange({'cmd': 'size'})
        released = bridge._exchange({'cmd': 'release'})
        registry_after = bridge._exchange({'cmd': 'size'})
        if registry_after != size_before:
            raise ValueError('Private registry root leaked after complete recovery')
        wal.append('registry_released', {'reply': released, 'size_before': registry_before, 'size_after': registry_after})
        wal.append('finished', {'status': 'recovered', 'reply': reply})
        receipt = audit_registry(folder / 'wal', binding)
        terminal_errors = {}
        for command in ('lookup', 'wire'):
            try:
                if command == 'wire':
                    bridge.request('observe')
                else:
                    bridge._exchange({'cmd': command})
            except RuntimeError as error:
                terminal_errors[command] = str(error)
            else:
                raise ValueError('Released private context remained callable')
        if ('Private registry token missing' not in terminal_errors['lookup'] or
                'Private wire released' not in terminal_errors['wire']):
            raise ValueError('Private release did not invalidate stale handles')
        service.write_once(folder / 'release-guards.json', terminal_errors)
        return {'position': position, 'folder': str(folder.resolve()), 'receipt': receipt,
                'baseline_registry_size': size_before, 'final_registry_size': registry_after}
    except Exception:
        failure = {'error': traceback.format_exc(), 'automatic_retry': False}
        if bridge is not None and bridge.process.poll() is None and not getattr(bridge, 'native_request_pending', False):
            try:
                failure['current'] = bridge.request('observe')
                failure['registry_size'] = bridge._exchange({'cmd': 'size'})
            except Exception:
                failure['observation_error'] = traceback.format_exc()
        elif bridge is not None and getattr(bridge, 'native_request_pending', False):
            failure['observation_skipped'] = 'Outstanding native reply; do not misattribute a later FIFO response'
        service.write_once(folder / 'failure.json', failure)
        raise
    finally:
        if bridge is not None:
            bridge.close()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--repeats', choices=(1, 3), type=int, default=3)
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    for name in ('raw', 'snapshots', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = manifest()
    result = {'passed': False, 'source_manifest': sources, 'rounds': [], 'full_delivery': False,
        'scope': 'dedicated C# host termination after native PRIVATE completion before WAL result; ASCET stays alive',
        'model_setters_called': 0, 'native_archive_available': False,
        'not_verified': ['ASCET restart', 'packet loss before native completion', 'partial physical mutation',
                         'production inverse', 'original display01 restoration', 'registry capacity exhaustion']}
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
            row['before_snapshot'] = before['snapshot']
            service.write_once(args.output / f'public-before-{iteration}.json', before)
            started = time.perf_counter()
            with service.live_lock(), bench.proxy(allow_client_reset=True) as traffic:
                environment = {**os.environ, 'ASCET_BD_ENDPOINT_PORT': '32503',
                               'ASCET_BD_PROBE_PORT': str(traffic['port'])}
                for owner in before['class_interface']['owners']:
                    domain = {'database': before['database'], 'database_session': before['database_session'],
                              'process_epoch': before['ascet_process_epoch'], 'oid': owner['oid'], 'component': owner['component']}
                    # Limit the independent oracle to this owner, retaining every scope and public getter.
                    observed = before['class_interface']
                    owner_oracle = {**observed, 'owners': [owner]}
                    for position in range(3):
                        folder = args.output / f'round-{iteration}' / owner['oid'] / f'position-{position}'
                        row['cases'].append(run_case(folder, domain, sources, environment, position, owner_oracle))
                        save()
            row.update(elapsed_ms=(time.perf_counter() - started) * 1000, connections=traffic['connections'],
                       request_frames=traffic['request'].result(), response_frames=traffic['response'].result(),
                       wire_errors=traffic['errors'], client_resets=traffic['client_resets'])
            if row['wire_errors'] or any(row[key]['parse_error'] or row[key]['frames'] is None
                                       for key in ('request_frames', 'response_frames')):
                raise ValueError('Private exit experiment transport framing failed')
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                after = tools.capture(args.component, before['session'])
            service.write_once(args.output / f'public-after-{iteration}.json', after)
            if (fingerprint(before['class_interface']) != fingerprint(after['class_interface']) or
                    any(before[key] != after[key] for key in ('database_session', 'ascet_process_epoch')) or
                    (service.STORE / 'class-edits').exists()):
                raise ValueError('Complete independent public bookends/domain changed or model journal allocated')
            projections = [json.loads((Path(case['folder']) / 'wal/000001.json').read_text(encoding='utf-8')) for case in row['cases'][::3]]
            row['coverage'] = compare_projection(before['class_interface'],
                [{'component': case['receipt']['domain']['component'], 'oid': case['receipt']['domain']['oid'],
                  'scopes': json.loads(item['payload_json'])['export']['original_projection']}
                 for case, item in zip(row['cases'][::3], projections)])
            row.update(passed=True, independent_public_bookends_unchanged=True)
            save()
            print(json.dumps({'round': iteration, 'passed': True, 'sessions': len(row['cases']), 'coverage': row['coverage']}), flush=True)
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
        if 'traffic' in locals():
            row.update(connections=traffic['connections'], wire_errors=traffic['errors'],
                       client_resets=traffic['client_resets'], request_frames=traffic['request'].result(),
                       response_frames=traffic['response'].result())
        if before is not None:
            try:
                with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                    after = tools.capture(args.component, before['session'])
                result['failure_public_bookend_unchanged'] = fingerprint(before['class_interface']) == fingerprint(after['class_interface'])
            except Exception:
                result['failure_public_bookend_error'] = traceback.format_exc()
    current_log = log.read_bytes()
    result['crash_log_append_only'] = current_log.startswith(initial_log)
    appended = current_log[len(initial_log):] if result['crash_log_append_only'] else current_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != sources[name]]
    result['passed'] &= not result['source_drift'] and result['new_assertion_count'] == 0
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'source_drift', 'new_assertion_count')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
