"""Listener identity parsing tests, without accessing ASCET or the network."""
import struct
import unittest

from bd_windows_endpoint import listener_pid


def row(pid=123, port=32503, address=0x0100007f, state=2):
    return struct.pack('<6I', state, address, ((port & 255) << 8) | (port >> 8), 0, 0, pid)


def table(*rows):
    return struct.pack('<I', len(rows)) + b''.join(rows)


class WindowsEndpointTests(unittest.TestCase):
    def test_exact_loopback_listener(self):
        self.assertEqual(listener_pid(table(row()), 32503), 123)

    def test_duplicate_bindings_same_owner(self):
        self.assertEqual(listener_pid(table(row(), row(address=0)), 32503), 123)

    def test_ambiguous_owner_refuses(self):
        with self.assertRaisesRegex(RuntimeError, 'Ambiguous'):
            listener_pid(table(row(), row(pid=456, address=0)), 32503)

    def test_other_ports_and_nonloopback_are_ignored(self):
        self.assertEqual(listener_pid(table(row(port=32504, pid=456), row(address=0x0200007f, pid=456), row()), 32503), 123)

    def test_nonlistener_is_ignored(self):
        self.assertEqual(listener_pid(table(row(state=5, pid=456), row()), 32503), 123)

    def test_no_listener_refuses(self):
        for value in (table(), table(row(port=32504)), table(row(address=0x0200007f)), table(row(state=5))):
            with self.subTest(table=value), self.assertRaisesRegex(RuntimeError, 'No ASCET'):
                listener_pid(value, 32503)

    def test_invalid_pid_refuses(self):
        with self.assertRaisesRegex(RuntimeError, 'Invalid ASCET listener owner'):
            listener_pid(table(row(pid=0)), 32503)

    def test_invalid_port_refuses(self):
        for port in (0, 65536, True, '32503', None):
            with self.subTest(port=port), self.assertRaisesRegex(RuntimeError, 'Invalid ASCET endpoint port'):
                listener_pid(table(row()), port)

    def test_truncated_tables_refuse(self):
        for value in (b'', b'\x00', table(row())[:-1], struct.pack('<I', 0xffffffff)):
            with self.subTest(table=value), self.assertRaises(RuntimeError):
                listener_pid(value, 32503)


if __name__ == '__main__':
    unittest.main()
