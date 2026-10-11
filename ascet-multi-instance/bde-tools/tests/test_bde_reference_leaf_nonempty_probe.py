"""Tamper controls on complete reciprocal evidence; no native acceptance."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from bd_persistent_references import decode
from bde_reference_leaf_noop_probe import run_handshake
from bde_reference_leaf_nonempty_probe import validate_original, verify_nonempty, verify_retained_nonempty, absence_diagnostic_delta
from test_bd_module_persistent_references import snapshot, record, absent_record, OID, OWNER, SOURCE


def raw_record(key, role, members, tail):
    row = record(key, role, members, tail=tail)
    attribute = row['attribute'].encode('ascii')
    raw = [0, 60] + key + list(attribute + b'\0' * (34 - len(attribute)))
    raw += list((len(members) * 21).to_bytes(4, 'little')) + list(len(members).to_bytes(4, 'little'))
    for member in members: raw += [1] + member
    row['allocated_bytes'] = raw + tail
    row['bytes'] = raw
    return row


def recensus(value):
    value['profile'] = 'native_module_persistent_reference_snapshot_v2'
    value['requested_reciprocal_targets'] = sorted([OWNER, SOURCE])
    value['reciprocal_targets'] = sorted([OWNER, SOURCE])
    value['reciprocal_records'] = [deepcopy(next(o for o in value['owners'] if o['key'] == key)['records'][1])
        for key in value['reciprocal_targets']]
    checks = []
    for key, row in zip(value['reciprocal_targets'], value['reciprocal_records']):
        for owner in value['owners']:
            out = owner['records'][0]
            outgoing = [] if out['read_status'] == 'absent' else [e['global_id'] for e in decode(out, owner['key'])['entries']]
            count = sum(e['global_id'] == owner['key'] for e in decode(row, key)['entries'])
            checks.append(dict(owner_key=owner['key'], target_key=key, outgoing_member=key in outgoing,
                inbound_owner_count=count, consistent=(key in outgoing) == (count > 0)))
    value['membership_checks'] = checks
    return value


class NonemptyTests(unittest.TestCase):
    domain = dict(oid=OID, process_epoch='pid/epoch', database='isolated')

    def native(self):
        before = snapshot()
        before['owners'][0]['records'] = [raw_record(OWNER, 'owner_references', [SOURCE], [71, 72]),
            raw_record(OWNER, 'owner_referenced_by', [], [81, 82])]
        before['owners'][1]['records'] = [absent_record(SOURCE, 'owner_references'),
            raw_record(SOURCE, 'owner_referenced_by', [OWNER], [91, 92])]
        before = recensus(before)
        stages = []
        for count in (1, 2, 1, 0):
            image = deepcopy(before)
            if count:
                image['owners'][1]['records'][0] = raw_record(SOURCE, 'owner_references', [OWNER, SOURCE][:count], [])
                image['owners'][0]['records'][1] = raw_record(OWNER, 'owner_referenced_by', [SOURCE], [81, 82])
                if count == 2:
                    image['owners'][1]['records'][1] = raw_record(SOURCE, 'owner_referenced_by', [OWNER, SOURCE], [91, 92])
            stages.append(recensus(image))
        rows = [(1, stages[0]['owners'][1]['records'][0]), (2, stages[0]['owners'][0]['records'][1]),
            (1, stages[1]['owners'][1]['records'][0]), (3, stages[1]['owners'][1]['records'][1]),
            (1, stages[2]['owners'][1]['records'][0]), (3, stages[2]['owners'][1]['records'][1]),
            (1, None), (2, stages[3]['owners'][0]['records'][1])]
        outcomes = []
        for index, row in rows:
            result = dict(operation='delete' if row is None else 'write', record_index=index,
                returned_class='SmallInteger' if row is None else 'CTSpaceCheckingIFil')
            if row is not None:
                result.update(planned_bytes=deepcopy(row['allocated_bytes']), raw_bytes=deepcopy(row['allocated_bytes']))
            outcomes.append(result)
        actual = dict(profile='finite_reference_leaf_nonempty_result_v1', before=deepcopy(before),
            after=deepcopy(before), stages=stages, outcomes=outcomes, owner_source_backend_preserved=True,
            persistent_leaf_write_calls=7, persistent_leaf_delete_calls=1, model_setters_called=0,
            store_called=False, commit_called=False, flush_called=False, durable_inverse_verified=False)
        return dict(passed=True, complete_reply_received=True, write_dispatched=True, component_oid=OID,
            process_epoch='pid/epoch', database='isolated', dirty_before=0, dirty_after=0, before=before, actual=actual)

    def test_complete_closed_lifecycle_does_not_grant_durable_inverse(self):
        result = verify_nonempty(self.native(), self.domain, 'Trial')
        self.assertEqual(result['source_entry_counts'], [1, 2, 1, 0])
        self.assertFalse(result['durable_reference_inverse_verified'])

    def test_missing_before_coverage_or_original_absence_rejected(self):
        for mutate in (lambda v: v.pop('requested_reciprocal_targets'),
                lambda v: v['owners'][1]['records'].__setitem__(0, raw_record(SOURCE, 'owner_references', [], []))):
            value = self.native()['before']; mutate(value)
            with self.assertRaises(ValueError): validate_original(value, self.domain)

    def test_wrong_counts_dirty_epoch_and_authority_rejected(self):
        for mutate in (lambda v: v.update(dirty_after=1), lambda v: v.update(process_epoch='old'),
                lambda v: v.update(complete_reply_received=False),
                lambda v: v['actual'].update(persistent_leaf_write_calls=6),
                lambda v: v['actual'].update(durable_inverse_verified=True)):
            value = self.native(); mutate(value)
            with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')

    def test_swapped_or_omitted_native_operations_rejected(self):
        value = self.native(); value['actual']['outcomes'][0]['record_index'] = 2
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')
        value = self.native(); value['actual']['outcomes'].pop()
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')

    def test_corrupt_header_and_planned_bytes_rejected(self):
        for offset in (0, 2, 22, 56, 60, 64):
            value = self.native(); value['actual']['outcomes'][0]['planned_bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')

    def test_unrelated_change_or_nonexact_restoration_rejected(self):
        value = self.native(); value['actual']['stages'][0]['owners'][0]['records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')
        value = self.native(); value['actual']['after'] = deepcopy(value['actual']['stages'][2])
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')

    def test_record_tail_loss_and_guessed_inverse_rejected(self):
        value = self.native(); value['actual']['outcomes'][3]['raw_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')
        value = self.native(); value['actual']['outcomes'][5]['planned_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): verify_nonempty(value, self.domain, 'Trial')

    def test_only_exact_ready_can_dispatch_fixed_nonempty_command(self):
        calls = []
        code = "print('BDE_REFERENCE_NONEMPTY_READY',flush=True); import sys; assert sys.stdin.readline() == 'WRITE_RECIPROCAL_RESIZE_AND_RESTORE\\n'"
        with tempfile.TemporaryDirectory() as folder:
            self.assertEqual(run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ),
                output=Path(folder), authorize=lambda: calls.append('wal'), nonempty=True, timeout=3), 0)
        self.assertEqual(calls, ['wal'])

    def retained(self):
        native = self.native()
        actual = native['actual']
        actual['stages'][-1]['owners'][1]['records'][0]['sysio_code'] = "winError: 158"
        native['actual'] = {k: actual[k] for k in ('stages', 'outcomes', 'persistent_leaf_write_calls', 'persistent_leaf_delete_calls')}
        native['actual'].update(profile='finite_reference_leaf_nonempty_failure_v1', write_dispatched=True,
            automatic_retry=False, error='Complete original finite restoration differs')
        return native

    def test_preserved_failure_keeps_exact_observation_false_and_diagnostic_delta(self):
        result = verify_retained_nonempty(self.retained(), self.domain)
        self.assertFalse(result['exact_observation_restored'])
        self.assertTrue(result['persistent_reference_records_restored'])
        self.assertEqual(result['diagnostic_changes'][0]['path'], '/owners/1/records/0/sysio_code')

    def test_diagnostic_comparison_cannot_hide_bytes_route_uerr_or_status(self):
        for mutate in (lambda v: v['owners'][1]['records'][0].update(uerr_code='9'),
                lambda v: v['owners'][1]['records'][0].update(error_number=158),
                lambda v: v['owners'][0]['records'][1]['allocated_bytes'].__setitem__(-1, 25),
                lambda v: v['owners'][1]['records'][0]['actual_file_key'].__setitem__(0, 2)):
            native = self.retained(); after = native['actual']['stages'][-1]; mutate(after)
            with self.assertRaises(ValueError): absence_diagnostic_delta(native['before'], after, self.domain)

    def test_incomplete_failure_or_wrong_terminal_error_cannot_confirm(self):
        for mutate in (lambda v: v['actual']['stages'].pop(), lambda v: v['actual'].update(error='Timeout'),
                lambda v: v['actual'].update(persistent_leaf_write_calls=6),
                lambda v: v['actual'].update(automatic_retry=True)):
            native = self.retained(); mutate(native)
            with self.assertRaises(ValueError): verify_retained_nonempty(native, self.domain)


if __name__ == '__main__': unittest.main()
