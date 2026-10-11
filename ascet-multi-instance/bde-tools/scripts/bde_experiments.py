"""Repeatable BDE read comparison with a loopback-only Cebra traffic counter.

No business-model mutations. Raw results remain local. Frame counts include
protocol housekeeping; they are not mislabeled as high-level API calls.
"""
from __future__ import annotations

import argparse
from collections import Counter
from contextlib import contextmanager
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import random
import re
import select
import socket
import statistics
import struct
import subprocess
import threading
import time

import bd_service

ROOT = Path(__file__).resolve().parents[1]
COMPONENT = r'\PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_dFxTar'


class FrameCounter:
    """CebraMessage framing: uint64 ID, int32 header count, int32 body size.

    Header entries are 5 bytes. Source: ToolClient.receiveCebraMessage.
    Payload is counted and discarded, never logged.
    """
    def __init__(self, trace_selectors=False):
        self.pending = bytearray()
        self.bytes = 0
        self.frames = 0
        self.error = None
        self.trace_selectors = trace_selectors
        self.selectors = Counter()

    def count_selector(self, frame, headers):
        # MethodCall prefixes are target/class/control, then selector. Never
        # decode parameters (which can contain model data or compiled source).
        selector = '<unclassified>'
        if headers >= 2 and frame[21] == ord('Z'):
            kind, count = struct.unpack_from('<ci', frame, 16)
            prefix = count * 8 if kind in (b'R', b'O') else count if kind in (b'C', b'X') else None
            length = struct.unpack_from('<i', frame, 22)[0]
            start = 16 + 5 * headers
            if prefix is not None and prefix >= 0 and 0 < length <= 128 and start + prefix + length <= len(frame):
                name = bytes(frame[start + prefix:start + prefix + length])
                if re.fullmatch(rb'[A-Za-z_][A-Za-z0-9_:]*', name):
                    selector = name.decode('ascii')
        self.selectors[selector] += 1

    def feed(self, data):
        self.bytes += len(data)
        if self.error:
            return
        self.pending.extend(data)
        while len(self.pending) >= 16:
            _, headers, body = struct.unpack_from('<Qii', self.pending)
            if not 0 <= headers <= 100000 or not 0 <= body <= 256 * 1024 * 1024:
                self.error = 'Invalid frame length; frame metrics unavailable'
                self.pending.clear()
                return
            size = 16 + 5 * headers + body
            if len(self.pending) < size:
                return
            self.frames += 1
            if self.trace_selectors:
                self.count_selector(self.pending[:size], headers)
            del self.pending[:size]

    def result(self):
        return {'bytes': self.bytes, 'frames': self.frames if not self.error and not self.pending else None,
                'parse_error': self.error, 'incomplete_bytes': len(self.pending),
                **({'selectors': dict(self.selectors.most_common())} if self.trace_selectors else {})}


@contextmanager
def proxy(upstream_port=32503, allow_client_reset=False):
    listener = socket.socket()
    listener.bind(('127.0.0.1', 0))
    listener.listen(1)
    listener.settimeout(.2)
    port = listener.getsockname()[1]
    stop = threading.Event()
    request, response = FrameCounter(os.environ.get('ASCET_BD_TRACE_SELECTORS') == '1'), FrameCounter()
    errors, client_resets = [], []
    state = {'port': port, 'request': request, 'response': response, 'errors': errors,
             'connections': 0, 'client_resets': client_resets}

    def relay():
        client = upstream = None
        try:
            while not stop.is_set():
                try:
                    client, _ = listener.accept()
                except socket.timeout:
                    continue
                state['connections'] += 1
                upstream = socket.create_connection(('127.0.0.1', upstream_port), timeout=3)
                client.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
                upstream.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
                disconnected = False
                while not stop.is_set() and not disconnected:
                    readable, _, _ = select.select([client, upstream], [], [], .2)
                    for source in readable:
                        try:
                            data = source.recv(65536)
                        except ConnectionResetError as error:
                            if not allow_client_reset or source is not client:
                                raise
                            client_resets.append({'connection': state['connections'], 'error': str(error)})
                            disconnected = True
                            break
                        if not data:
                            disconnected = True
                            break
                        (request if source is client else response).feed(data)
                        (upstream if source is client else client).sendall(data)
                client.close(); upstream.close()
                client = upstream = None
                # Never join a truncated frame to the next TCP stream.
                for counter in (request, response):
                    if counter.pending:
                        counter.error = 'Connection ended with an incomplete frame; frame metrics unavailable'
                        counter.pending.clear()
        except OSError as error:
            if not stop.is_set():
                errors.append(str(error))
        finally:
            if client:
                client.close()
            if upstream:
                upstream.close()

    thread = threading.Thread(target=relay, daemon=True)
    thread.start()
    try:
        yield state
    finally:
        stop.set()
        thread.join(4)
        listener.close()
        if thread.is_alive():
            errors.append('proxy did not terminate within 4 seconds')


def compile_probes():
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    binary = ROOT / 'analysis/live-api/AscetScopedProbe.exe'
    subprocess.run([str(compiler), '/nologo', '/platform:x86', '/r:' + str(dll), '/r:System.Web.Extensions.dll',
                    '/out:' + str(binary), str(ROOT / 'scripts/AscetScopedProbe.cs')], check=True, capture_output=True)
    bd_service.ensure_probe()
    return binary


def topology(raw):
    """Exact common collected fields, without pretending coverage is equal."""
    if 'graph' in raw:
        graph = raw['graph']
        nodes = graph['nodes']
        pins = {int(p['native_id']): p for p in graph['pins']}
        edges = [(e['output'], e['input'], e['type']) for e in graph['edges']]
    else:
        graph = next(d['graph'] for d in raw['diagrams'] if d['name'] == 'Main')
        nodes = graph['nodes']
        pins = {int(p['native_id']): p for n in nodes for p in n['pins']}
        edges = [(e['output']['native_id'], e['input']['native_id'], e['type']) for e in graph['edges']]
    node_fields = {int(n['id']): {k: n[k] for k in ('kind', 'literal', 'operator') if k in n} for n in nodes}
    pin_fields = {ref: {k: p[k] for k in ('node_id', 'name', 'input', 'output', 'sequence') if k in p} for ref, p in pins.items()}
    return node_fields, pin_fields, Counter(edges)


def compare_projection(reference, candidate):
    if reference.get('oid') != candidate.get('oid') or reference.get('database', '').casefold() != candidate.get('database', '').casefold():
        raise ValueError('Different component/database')
    epoch = reference.get('ascet_process_epoch')
    if not epoch or epoch != candidate.get('ascet_process_epoch'):
        raise ValueError('ASCET process identity missing or changed')
    rn, rp, re = topology(reference)
    cn, cp, ce = topology(candidate)
    targets = candidate.get('targets')
    if targets is not None:
        expected_nodes = set(rn) if targets == 'all' else {int(value) for value in targets.split(',')}
        if set(cn) != expected_nodes:
            raise ValueError('Missing or extra requested graph nodes')
    for ref, values in cn.items():
        if rn.get(ref) != values:
            raise ValueError(f'Node mismatch: {ref}')
    for ref, values in cp.items():
        if rp.get(ref) != values:
            raise ValueError(f'Pin mismatch: {ref}')
    selected_pins = {ref for ref, values in rp.items() if values['node_id'] in cn}
    expected_edges = Counter({edge: count for edge, count in re.items() if edge[0] in selected_pins or edge[1] in selected_pins})
    if ce != expected_edges:
        raise ValueError('Incident connection set/multiplicity mismatch')
    expected_pins = selected_pins | {p for edge in expected_edges for p in edge[:2]}
    if set(cp) != expected_pins:
        raise ValueError('Missing or extra selected/boundary pins')
    return {'nodes': len(cn), 'pins_including_boundary': len(cp), 'edges': sum(ce.values()),
            'verified': 'exact common topology/literal/operator/pin/sequence projection; not complete model semantics'}


def layout_projection(raw):
    graph = raw['graph']
    return ({n['id']: (n['position'], n['size']) for n in graph['nodes']},
            Counter((e['output'], e['input'], e['type'], tuple(tuple(p) for p in e['points'])) for e in graph['edges']))


def run(command, output, timeout=55):
    with proxy() as traffic:
        environment = dict(os.environ, ASCET_BD_PROBE_PORT=str(traffic['port']))
        started = time.perf_counter()
        diagnostics = ''
        try:
            process = subprocess.run(command, env=environment, capture_output=True, timeout=timeout)
            error = None if process.returncode == 0 else f'exit {process.returncode}'
            if error:
                diagnostics = (process.stdout + process.stderr).decode('utf-8', errors='replace')[-4000:]
        except subprocess.TimeoutExpired:
            error = 'timeout; probe process terminated'
        wall = (time.perf_counter() - started) * 1000
    raw = json.loads(output.read_text(encoding='utf-8')) if output.exists() else {}
    return {'wall_ms': round(wall, 3), 'request_wire': traffic['request'].result(), 'response_wire': traffic['response'].result(),
            'proxy_errors': traffic['errors'], 'error': error, 'diagnostics': diagnostics, 'probe_status': raw.get('status'),
            'probe_error': raw.get('error'), 'read_ms': raw.get('read_ms'), 'probe_ms': raw.get('elapsed_ms'),
            'output_bytes': output.stat().st_size if output.exists() else 0, 'artifact': str(output)}, raw


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, default=3)
    parser.add_argument('--component', default=COMPONENT)
    args = parser.parse_args()
    if not 1 <= args.repeats <= 10:
        parser.error('repeats must be 1..10')
    args.output.mkdir(parents=True, exist_ok=True)
    scoped = compile_probes()
    report = {'started_utc': datetime.now(timezone.utc).isoformat(), 'component': args.component,
              'metric_note': 'wire frames include housekeeping; loopback proxy overhead applies to every measured variant', 'runs': []}

    def save():
        (args.output / 'results.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')

    # Same lock as native Doge reads. The experiment never runs probes in parallel.
    bd_service.STORE.mkdir(parents=True, exist_ok=True)
    with bd_service.live_lock():
        baseline_path = args.output / 'baseline.json'
        metric, baseline = run([str(ROOT / 'analysis/live-api/AscetReadProbe.exe'), args.component, str(baseline_path), '--current', 'full'], baseline_path)
        report['baseline'] = metric
        save()
        if metric['error'] or baseline.get('status') != 'ok':
            print(json.dumps({'status': 'live_baseline_unavailable', 'report': str(args.output / 'results.json'), 'error': metric['probe_error']}, ensure_ascii=False), flush=True)
            return 2
        variants = [(strategy, targets, layout) for strategy in ('public', 'handles') for targets in ('all', '15,176') for layout in ('semantic', 'layout')]
        trials = [(repeat, variant) for repeat in range(args.repeats) for variant in variants]
        random.Random(20260929).shuffle(trials)
        for repeat, (strategy, targets, layout) in trials:
            label = f'{strategy}-{targets.replace(",", "_")}-{layout}'
            path = args.output / f'{label}-{repeat}.json'
            metric, raw = run([str(scoped), args.component, str(path), strategy, targets, layout], path)
            metric.update(variant=label, repeat=repeat)
            if not metric['error'] and raw.get('status') == 'ok':
                try:
                    metric['verification'] = compare_projection(baseline, raw)
                except (ValueError, KeyError, TypeError) as error:
                    metric['verification_error'] = str(error)
            report['runs'].append(metric)
            save()
            print(json.dumps({k: metric[k] for k in ('variant', 'wall_ms', 'probe_status', 'error')} | {'verified': 'verification' in metric}), flush=True)
        report['summary'] = {}
        layout_reference = next((json.loads(Path(r['artifact']).read_text(encoding='utf-8')) for r in report['runs']
                                 if r['variant'] == 'public-all-layout' and 'verification' in r), None)
        for row in report['runs']:
            if row['variant'].endswith('-layout') and 'verification' in row and layout_reference:
                raw = json.loads(Path(row['artifact']).read_text(encoding='utf-8'))
                rn, re = layout_projection(layout_reference)
                cn, ce = layout_projection(raw)
                _, cp, _ = topology(raw)
                selected = {ref for ref, fields in cp.items() if fields['node_id'] in cn}
                expected = Counter({key: count for key, count in re.items() if key[0] in selected or key[1] in selected})
                row['layout_equal_to_public_reference'] = all(rn.get(ref) == value for ref, value in cn.items()) and ce == expected
        final_path = args.output / 'baseline-final.json'
        metric, final = run([str(ROOT / 'analysis/live-api/AscetReadProbe.exe'), args.component, str(final_path), '--current', 'full'], final_path)
        report['final_baseline'] = metric
        if not metric['error'] and final.get('status') == 'ok':
            def record(raw, sid):
                return {'snapshot': sid, 'session': 'experiment', 'database': raw['database'], 'oid': raw['oid'],
                        'ascet_process_epoch': raw.get('ascet_process_epoch'), 'compact': bd_service.build(raw)[0]}
            report['whole_collected_semantics_unchanged'] = not bd_service.semantic_diff(record(baseline, 'before'), record(final, 'after'))
        for strategy, targets, layout in variants:
            label = f'{strategy}-{targets.replace(",", "_")}-{layout}'
            rows = [r for r in report['runs'] if r['variant'] == label]
            good = [r for r in rows if 'verification' in r and not r['proxy_errors'] and r['request_wire']['frames'] is not None
                    and (layout != 'layout' or r.get('layout_equal_to_public_reference') is True)]
            report['summary'][label] = {'trials': len(rows), 'verified_trials': len(good),
                'wall_ms_median': statistics.median(r['wall_ms'] for r in good) if good else None,
                'request_frames_median': statistics.median(r['request_wire']['frames'] for r in good) if good else None,
                'output_bytes_median': statistics.median(r['output_bytes'] for r in good) if good else None}
        report['finished_utc'] = datetime.now(timezone.utc).isoformat()
        save()
    return 0 if report.get('whole_collected_semantics_unchanged') and all(r['verified_trials'] == args.repeats for r in report['summary'].values()) else 1


if __name__ == '__main__':
    raise SystemExit(main())
