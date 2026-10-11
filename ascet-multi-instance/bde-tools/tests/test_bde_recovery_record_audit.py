import struct
import unittest

from bde_recovery_record_audit import PROFILES, containing_records, locate_records


class RecoveryRecordAuditTests(unittest.TestCase):
    GID = bytes.fromhex('0101de0000000000ea070a020e57d02224730000')

    def record(self, profile):
        data = bytearray(profile['fixed_size'] + 32)
        data[1] = profile['fixed_size']
        data[2:20] = self.GID[:18]
        data[38:46] = b'ASDClass'
        data[71:79] = b'original'
        txn = profile['transaction_id']
        data[txn:txn + 2] = self.GID[18:]
        struct.pack_into('<I', data, profile['blob_size'], 32)
        return data

    def test_split_identity_profiles(self):
        for profile in PROFILES:
            with self.subTest(profile=profile['name']):
                candidates, _ = locate_records(b'prefix' + self.record(profile), self.GID)
                self.assertEqual(len(candidates), 1)
                self.assertEqual(candidates[0]['record_offset'], 6)
                self.assertEqual(candidates[0]['blob_size'], 32)
                self.assertEqual(candidates[0]['profile'], profile['name'])

    def test_serialized_alias_is_not_a_record(self):
        candidates, _ = locate_records(b'\0' * 12 + self.GID + b'\0' * 140, self.GID)
        self.assertEqual(candidates, [])

    def test_transaction_mismatch(self):
        profile = PROFILES[0]
        data = self.record(profile)
        data[profile['transaction_id']] ^= 1
        candidates, rejected = locate_records(data, self.GID)
        self.assertEqual(candidates, [])
        self.assertTrue(any(row['reason'] == 'split transactionId differs' for row in rejected))

    def test_truncated_blob(self):
        candidates, rejected = locate_records(self.record(PROFILES[0])[:-1], self.GID)
        self.assertEqual(candidates, [])
        self.assertTrue(any(row['reason'] == 'blob size/bounds' for row in rejected))

    def test_invalid_class_name(self):
        data = self.record(PROFILES[0])
        data[38] = 255
        candidates, _ = locate_records(data, self.GID)
        self.assertEqual(candidates, [])

    def test_scan_bound_does_not_silently_drop_records(self):
        with self.assertRaises(ValueError):
            locate_records(self.GID[:18] * 257, self.GID)

    def wrapped_record(self):
        data = self.record(PROFILES[0])
        data[1] = 0
        return b'\xfa\xfa' + struct.pack('<II', len(data) + 10, len(data)) + data

    def test_zero_marker_requires_independent_lengths(self):
        candidates, _ = locate_records(self.wrapped_record(), self.GID)
        self.assertEqual(len(candidates), 1)
        data = self.record(PROFILES[0])
        data[1] = 0
        self.assertEqual(locate_records(data, self.GID)[0], [])

    def test_wrapper_length_disagreement(self):
        data = bytearray(self.wrapped_record())
        struct.pack_into('<I', data, 6, 1)
        self.assertEqual(locate_records(data, self.GID)[0], [])

    def test_alias_container_checks_blob_boundaries(self):
        data = bytearray(self.wrapped_record())
        data[-20:] = self.GID
        candidates = containing_records(data, self.GID)
        self.assertEqual(len(candidates), 1)
        self.assertEqual(candidates[0]['alias_offsets'], [len(data) - 20])
        self.assertEqual(containing_records(data[:-1], self.GID), [])

    def test_slack_sighting_is_not_live_blob_membership(self):
        data = bytearray(self.wrapped_record())
        allocated = len(data) + len(self.GID)
        struct.pack_into('<I', data, 2, allocated)
        data += self.GID
        self.assertEqual(containing_records(data, self.GID), [])
        sightings = containing_records(data, self.GID, include_allocation=True)
        self.assertEqual(len(sightings), 1)
        self.assertFalse(sightings[0]['alias_within_used_blob'])


if __name__ == '__main__':
    unittest.main()
