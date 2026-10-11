import struct
import unittest
import zlib

from bde_recovery_swapper_audit import PROFILE_PREFIX, decode_stream, header_inventory, scan_containers


class RecoverySwapperAuditTests(unittest.TestCase):
    def stream(self, parts):
        result = PROFILE_PREFIX + b'\0' * 12
        for index, part in enumerate(parts):
            header = bytes((55, int(index == len(parts) - 1), 0, 0))
            result += header + struct.pack('<II', len(part), zlib.crc32(part)) + b'\0' * 8 + part
        return result

    def test_multiple_segments_and_exact_boundary(self):
        data = self.stream([b'a' * 20, b'b' * 24])
        row = decode_stream(data + b'other record', 0)
        self.assertEqual(row['end'], len(data))
        self.assertEqual(len(row['segments']), 2)

    def test_crc_rejects_partial_old_bytes(self):
        data = bytearray(self.stream([b'a' * 20]))
        data[-1] ^= 1
        with self.assertRaisesRegex(ValueError, 'CRC'):
            decode_stream(data, 0)

    def test_truncated_segment(self):
        with self.assertRaisesRegex(ValueError, 'bounds'):
            decode_stream(self.stream([b'a' * 20])[:-1], 0)

    def test_alias_must_be_within_segment(self):
        data = self.stream([b'x' * 16 + b'ALIAS' + b'x' * 8])
        containers, _, count = scan_containers(data + b'ALIAS', b'ALIAS')
        self.assertEqual(len(containers), 1)
        self.assertEqual(count, 1)
        self.assertEqual(len(containers[0]['alias_offsets']), 1)

    def test_unsupported_header(self):
        data = bytearray(self.stream([b'a' * 20]))
        data[4] = 255
        with self.assertRaisesRegex(ValueError, 'profile'):
            decode_stream(data, 0)

    def test_inventory_retains_unsupported_versions(self):
        supported = self.stream([b'a' * 20])
        other = bytearray(supported)
        other[4] = 3
        row = header_inventory(supported + other + b'ALIAS', b'ALIAS')
        self.assertEqual(row['variants'][PROFILE_PREFIX.hex()], 1)
        self.assertEqual(row['variants'][bytes(other[:8]).hex()], 1)
        self.assertEqual(row['nearest_preceding_headers'][0]['header']['offset'], len(supported))


if __name__ == '__main__':
    unittest.main()
