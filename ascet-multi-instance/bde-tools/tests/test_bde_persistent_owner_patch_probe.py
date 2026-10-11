"""Owner metadata lifecycle reply tamper controls; not online BDE edit QA."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from bd_persistent_owner_patch import project
from bde_persistent_owner_patch_probe import verify_owner_patch, version_candidate
from bde_reference_leaf_noop_probe import run_handshake
from test_bde_persistent_owner_noop_probe import native_fixture, DOMAIN


def fixture():
    native = native_fixture(); before = native['before']; original_owner, original_source = before['owners']
    owner, source = version_candidate(original_owner), version_candidate(original_source)
    phases = ((1, source), (0, owner), (1, original_source), (0, original_owner), (1, source), (1, original_source))
    results = []; expected = before
    for index, row in phases:
        current = expected['owners'][index]
        patch = dict(global_id=current['global_id'], role=current['role'], operation='write_existing_owner_record', current=current, candidate=row)
        after = project(expected, [patch])
        results.append(dict(profile='isolated_persistent_owner_patch_result_v1', before=expected, candidate=deepcopy(after),
            after=deepcopy(after), outcomes=[dict(role=current['role'], global_id=current['global_id'], operation=patch['operation'],
                returned_class='CTSpaceCheckingIFil')], persistent_leaf_write_calls=1, persistent_leaf_delete_calls=0,
            owner_source_backend_preserved=True, model_setters_called=0, store_called=False, commit_called=False,
            full_commit_resource_closure=False, automatic_retry=False))
        expected = after
    replay = dict(profile='isolated_persistent_owner_patch_failure_v1', phase='guard', error='Owner patch execution cannot replay',
        write_dispatched=False, persistent_leaf_write_calls=0, persistent_leaf_delete_calls=0, outcomes=[], automatic_retry=False)
    controls = [deepcopy(replay), {**deepcopy(replay), 'error': 'Complete owner CURRENT conflict before dispatch'},
        dict(profile='owner_patch_preparation_refusal_v1', error='Complete owner CURRENT conflict before preparation', write_dispatched=False)]
    controls += [deepcopy(replay) for _ in range(5)]
    names = ('extra_field', 'delete_operation', 'foreign_key', 'boolean_extent', 'immutable_header', 'getter_mismatch', 'duplicate')
    messages = ('Exact five-field existing owner patch required', 'Existing owner write operation required',
        'Distinct exact owned search key required', 'Exact owner integer extent/state required',
        'Owner immutable search header differs', 'Native owner candidate header/getters differ', 'Distinct exact owned search key required')
    native['actual'] = dict(profile='isolated_persistent_owner_patch_probe_result_v1', before=deepcopy(before), after=deepcopy(before),
        results=results, controls=controls, preparation_controls=[dict(name=n, error=m, rejected=True, write_dispatched=False) for n, m in zip(names, messages)],
        detached_exports_isolated=True, unrelated_owner_change_preserved=True, model_setters_called=0, store_called=False,
        commit_called=False, full_commit_resource_closure=False, automatic_retry=False)
    return native


class OwnerPatchProbeTests(unittest.TestCase):
    def test_exact_six_phase_records_do_not_grant_graphical_edit_acceptance(self):
        result = verify_owner_patch(fixture(), DOMAIN)
        self.assertTrue(result['unrelated_owner_change_preserved']); self.assertEqual(result['persistent_leaf_write_calls'], 6)
        self.assertFalse(result['model_persistent_edit_verified']); self.assertFalse(result['payload_change_tested'])

    def test_any_guard_cannot_hide_writes(self):
        for i in range(8):
            value = fixture(); value['actual']['controls'][i]['write_dispatched'] = True
            with self.subTest(i=i), self.assertRaises(ValueError): verify_owner_patch(value, DOMAIN)

    def test_raw_tail_unrelated_owner_and_outcomes_tampering_refused(self):
        for mutate in (lambda a: a['results'][2]['after']['owners'][0]['allocated_bytes'].__setitem__(-1, 77),
                lambda a: a['results'][1]['outcomes'].clear(),
                lambda a: a['results'][0].update(persistent_leaf_write_calls=True),
                lambda a: a['results'][0]['after']['references'].update(full_commit_resource_closure=True),
                lambda a: a['preparation_controls'][0].update(error='different'),
                lambda a: a.update(detached_exports_isolated=False), lambda a: a['results'].pop()):
            value = fixture(); mutate(value['actual'])
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_owner_patch(value, DOMAIN)

    def test_fixed_owner_patch_handshake(self):
        calls = []; code = "print('BDE_OWNER_PATCH_READY',flush=True); import sys; assert sys.stdin.readline() == 'EXECUTE_OWNER_PATCH_LIFECYCLE\\n'"
        with tempfile.TemporaryDirectory() as temp:
            status = run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ), output=Path(temp),
                authorize=lambda: calls.append('authorized'), owner_patch=True, timeout=3)
        self.assertEqual(status, 0); self.assertEqual(calls, ['authorized'])


if __name__ == '__main__': unittest.main()
