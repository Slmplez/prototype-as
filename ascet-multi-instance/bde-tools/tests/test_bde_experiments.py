import copy
import json
import os
import struct
import socket
import threading
import unittest

from bde_experiments import FrameCounter, ROOT, compare_projection, proxy


class ExperimentEvidenceTests(unittest.TestCase):
    def reset_proxy(self, partial):
        frame = struct.pack('<Qii', 12, 1, 3) + b'A' + struct.pack('<i', 3) + b'abc'
        server = socket.socket()
        server.bind(('127.0.0.1', 0)); server.listen(1); server.settimeout(5)
        failures = []
        def echo():
            try:
                for _ in range(2):
                    with server.accept()[0] as connection:
                        connection.settimeout(5)
                        while data := connection.recv(65536):
                            connection.sendall(data)
            except Exception as error:
                failures.append(error)
            finally:
                server.close()
        thread = threading.Thread(target=echo, daemon=True); thread.start()
        with proxy(upstream_port=server.getsockname()[1], allow_client_reset=True) as wire:
            first = socket.create_connection(('127.0.0.1', wire['port']), timeout=5)
            payload = frame[:9] if partial else frame
            first.sendall(payload)
            received = bytearray()
            while len(received) < len(payload):
                received.extend(first.recv(65536))
            first.setsockopt(socket.SOL_SOCKET, socket.SO_LINGER, struct.pack('hh' if os.name == 'nt' else 'ii', 1, 0))
            first.close()
            with socket.create_connection(('127.0.0.1', wire['port']), timeout=5) as client:
                client.sendall(frame)
                received = bytearray()
                while len(received) < len(frame):
                    received.extend(client.recv(65536))
                self.assertEqual(received, frame)
        thread.join(5)
        self.assertFalse(thread.is_alive()); self.assertFalse(failures)
        self.assertEqual(wire['connections'], 2)
        self.assertEqual(len(wire['client_resets']), 1)
        self.assertEqual(wire['errors'], [])
        return wire

    def test_proxy_client_rst_permits_next_connection(self):
        wire = self.reset_proxy(False)
        for direction in ('request', 'response'):
            self.assertEqual(wire[direction].result()['frames'], 2)
            self.assertIsNone(wire[direction].result()['parse_error'])

    def test_proxy_truncated_rst_never_joins_next_stream(self):
        wire = self.reset_proxy(True)
        for direction in ('request', 'response'):
            self.assertIsNone(wire[direction].result()['frames'])
            self.assertIn('incomplete frame', wire[direction].result()['parse_error'])

    def test_proxy_relays_and_counts_two_sequential_connections(self):
        frame = struct.pack('<Qii', 12, 1, 3) + b'A' + struct.pack('<i', 3) + b'abc'
        server = socket.socket()
        server.bind(('127.0.0.1', 0)); server.listen(1); server.settimeout(5)
        failures = []
        def echo():
            try:
                for _ in range(2):
                    with server.accept()[0] as connection:
                        connection.settimeout(5)
                        while data := connection.recv(65536):
                            connection.sendall(data)
            except Exception as error:
                failures.append(error)
            finally:
                server.close()
        thread = threading.Thread(target=echo, daemon=True); thread.start()
        with proxy(upstream_port=server.getsockname()[1]) as wire:
            for _ in range(2):
                with socket.create_connection(('127.0.0.1', wire['port']), timeout=5) as client:
                    client.sendall(frame[:9]); client.sendall(frame[9:])
                    received = bytearray()
                    while len(received) < len(frame):
                        received.extend(client.recv(65536))
                    self.assertEqual(received, frame)
        thread.join(5)
        self.assertFalse(thread.is_alive()); self.assertFalse(failures)
        self.assertEqual(wire['connections'], 2)
        self.assertEqual(wire['errors'], [])
        for direction in ('request', 'response'):
            self.assertEqual(wire[direction].result()['frames'], 2)
            self.assertEqual(wire[direction].result()['bytes'], len(frame)*2)

    def test_selector_trace_ignores_parameter_data_and_counts_fragmented_calls(self):
        def call(kind, target, selector, parameter):
            parts = [(kind, 1 if kind == b'R' else len(target)), (b'Z', len(selector)), (b'Z', len(parameter))]
            body = target + selector + parameter
            return struct.pack('<Qii', 12, len(parts), len(body)) + b''.join(k + struct.pack('<i', n) for k, n in parts) + body
        first = call(b'R', struct.pack('<q', 0x1234), b'getName', b'SECRET_MODEL_DATA')
        second = call(b'C', b'EsCompiler', b'evaluate:', b'SECRET_SOURCE')
        third = call(b'X', b'C', b'destroyObjectForId:', b'PRIVATE_ID')
        counter = FrameCounter(trace_selectors=True)
        counter.feed(first[:24])
        counter.feed(first[24:] + second + third)
        self.assertEqual(counter.result()['selectors'], {'getName': 1, 'evaluate:': 1, 'destroyObjectForId:': 1})
        self.assertNotIn('SECRET', json.dumps(counter.result()))
        self.assertEqual(sum(counter.result()['selectors'].values()), counter.result()['frames'])

    def test_fragmented_and_coalesced_wire_frames(self):
        frame = struct.pack('<Qii', 12, 1, 3) + b'A' + struct.pack('<i', 3) + b'abc'
        counter = FrameCounter()
        counter.feed(frame[:9])
        self.assertIsNone(counter.result()['frames'])
        counter.feed(frame[9:] + frame)
        self.assertEqual(counter.result()['frames'], 2)
        self.assertEqual(counter.result()['bytes'], len(frame) * 2)
        self.assertEqual(counter.result()['incomplete_bytes'], 0)

    def test_bad_lengths_do_not_produce_plausible_frame_count(self):
        counter = FrameCounter()
        counter.feed(struct.pack('<Qii', 0, -1, 0))
        self.assertIsNone(counter.result()['frames'])
        self.assertTrue(counter.result()['parse_error'])

    def test_projection_detects_missing_edges_wrong_values_and_parallel_edges(self):
        baseline = json.loads((ROOT / 'analysis/live-api/AEB_dFxTar.full.json').read_text(encoding='utf-8'))
        baseline['ascet_process_epoch'] = 'fixture'
        graph = next(d['graph'] for d in baseline['diagrams'] if d['name'] == 'Main')
        selected = [n for n in graph['nodes'] if n['id'] in (15, 176)]
        selected_pins = {p['native_id'] for n in selected for p in n['pins']}
        incident = [e for e in graph['edges'] if e['input']['native_id'] in selected_pins or e['output']['native_id'] in selected_pins]
        pin_refs = selected_pins | {e[end]['native_id'] for e in incident for end in ('input', 'output')}
        candidate = {k: baseline[k] for k in ('database', 'oid', 'ascet_process_epoch')}
        candidate['graph'] = {'nodes': copy.deepcopy(selected),
            'pins': [copy.deepcopy(p) for n in graph['nodes'] for p in n['pins'] if p['native_id'] in pin_refs],
            'edges': [{'input': e['input']['native_id'], 'output': e['output']['native_id'], 'type': e['type']} for e in incident]}
        self.assertEqual(compare_projection(baseline, candidate)['nodes'], 2)
        candidate['targets'] = '15,176'
        compare_projection(baseline, candidate)
        missing_scope = copy.deepcopy(candidate)
        missing_scope['graph'] = {'nodes': [], 'pins': [], 'edges': []}
        with self.assertRaisesRegex(ValueError, 'requested graph nodes'):
            compare_projection(baseline, missing_scope)
        wrong_scope = copy.deepcopy(candidate)
        wrong_scope['targets'] = '15'
        with self.assertRaisesRegex(ValueError, 'requested graph nodes'):
            compare_projection(baseline, wrong_scope)
        broken = copy.deepcopy(candidate)
        broken['graph']['edges'].pop()
        with self.assertRaisesRegex(ValueError, 'connection'):
            compare_projection(baseline, broken)
        broken = copy.deepcopy(candidate)
        next(n for n in broken['graph']['nodes'] if n['id'] == 176)['literal'] = 'changed'
        with self.assertRaisesRegex(ValueError, 'Node'):
            compare_projection(baseline, broken)
        graph['edges'].append(copy.deepcopy(incident[0]))
        with self.assertRaisesRegex(ValueError, 'multiplicity'):
            compare_projection(baseline, candidate)
        candidate['graph']['edges'].append(copy.deepcopy(candidate['graph']['edges'][0]))
        compare_projection(baseline, candidate)


if __name__ == '__main__':
    unittest.main()
