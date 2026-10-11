"""Fresh-owner confirmation tamper controls; no IO, pending clear or native calls."""
from copy import deepcopy
from pathlib import Path
import unittest

from bd_edit_journal import fingerprint
from bde_persistent_owner_noop_confirm import verify_documents, verify_pending, PURPOSE, COMMAND
from test_bde_persistent_owner_noop_probe import native_fixture, DOMAIN


class OwnerConfirmTests(unittest.TestCase):
    def documents(self):
        native = native_fixture(); domain = dict(DOMAIN, session='this-trial'); before = native['before']
        read = dict(component='BDE_Tool_Experiments\\Trial_Test', component_oid=domain['oid'], observations=[{}, {}],
            owner_observations=[deepcopy(before), deepcopy(before)],
            persistent_observations=[deepcopy(before['references']), deepcopy(before['references'])])
        proof = dict(passed=True, persistent_owner_records_stable=True, persistent_complete_capture_verified=True,
            pid=123, port=32631, wire=dict(errors=[]), native=dict(process_epoch=domain['process_epoch'],
                database=domain['database'], dirty_before=0, dirty_after=0, module_read=read))
        original = dict(profile='bde_persistent_owner_noop_experiment_v1', passed=True, native_exit_code=0,
            wire=dict(errors=[]), native=deepcopy(native), domain=domain, pid=123, port=32631,
            pending_retained_until_fresh_read=True, component=read['component'])
        prepared = dict(process_epoch=domain['process_epoch'], database=domain['database'],
            component=read['component'], component_oid=domain['oid'], before=deepcopy(before))
        dispatch = dict(process_epoch=domain['process_epoch'], component_oid=domain['oid'], command=PURPOSE, automatic_retry=False)
        return [original, native, proof, deepcopy(proof), prepared, dispatch]

    def test_complete_confirmation_remains_leaf_only(self):
        value = verify_documents(*self.documents())
        self.assertEqual(value['native_calls'], 0); self.assertFalse(value['production_inverse_authorized'])

    def test_fresh_must_read_full_owners_twice(self):
        for mutate in (lambda r: r['owner_observations'].pop(), lambda r: r.pop('owner_observations'),
                lambda r: r['owner_observations'][1]['owners'][0]['allocated_bytes'].__setitem__(-1, 88),
                lambda r: r['persistent_observations'].pop()):
            docs = self.documents(); mutate(docs[2]['native']['module_read'])
            with self.subTest(mutate=mutate), self.assertRaises((ValueError, KeyError)): verify_documents(*docs)

    def test_before_dispatch_runtime_and_public_bookends_tamper_refused(self):
        for index, mutate in ((0, lambda d: d.update(profile='finite_reference')),
                (2, lambda d: d['native'].update(process_epoch='other')),
                (2, lambda d: d['native'].update(dirty_after=True)),
                (3, lambda d: d['native']['module_read'].update(observations=[{'changed': True}])),
                (4, lambda d: d.update(before={})), (5, lambda d: d.update(automatic_retry=True)),
                (5, lambda d: d.update(command='isolated_finite_reference_patch_lifecycle'))):
            docs = self.documents(); mutate(docs[index])
            with self.subTest(index=index, mutate=mutate), self.assertRaises(ValueError): verify_documents(*docs)

    def test_only_exact_pending_can_be_cleared(self):
        docs = self.documents(); domain = docs[0]['domain']; prepared = docs[4]; evidence = Path('owned')
        row = dict(domain=domain, command=COMMAND,
            managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'),
                original_sha256=fingerprint(prepared)),
            native_token='edit_' + fingerprint(dict(domain=domain, purpose=PURPOSE)))
        verify_pending(row, domain, evidence, prepared)
        for mutate in (lambda r: r.update(native_token='other'), lambda r: r.update(command='other'),
                lambda r: r['domain'].update(process_epoch='old'),
                lambda r: r['managed_context'].update(original_sha256='current-substitution')):
            bad = deepcopy(row); mutate(bad)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_pending(bad, domain, evidence, prepared)

    def test_patch_confirmation_cannot_accept_noop_evidence(self):
        with self.assertRaises(ValueError): verify_documents(*self.documents(), patch=True)

    def test_owner_patch_complete_confirmation_and_cross_purpose_refusal(self):
        from test_bde_persistent_owner_patch_probe import fixture as patch_fixture
        docs = self.documents(); native = patch_fixture()
        docs[1] = native; docs[0].update(profile='bde_persistent_owner_patch_experiment_v1', native=deepcopy(native))
        docs[5]['command'] = 'isolated_persistent_owner_patch_lifecycle'
        result = verify_documents(*docs, patch=True)
        self.assertEqual(result['summary']['lifecycle_phases'], 6)
        with self.assertRaises(ValueError): verify_documents(*docs)
        domain = docs[0]['domain']; evidence = Path('owned'); prepared = docs[4]
        row = dict(domain=domain, command='research_persistent_owner_patch_lifecycle',
            managed_context=dict(evidence=str(evidence), original_material=str(evidence / 'prepared.json'),
                original_sha256=fingerprint(prepared)), native_token='edit_' + fingerprint(dict(
                    domain=domain, purpose='isolated_persistent_owner_patch_lifecycle')))
        verify_pending(row, domain, evidence, prepared, patch=True)
        with self.assertRaises(ValueError): verify_pending(row, domain, evidence, prepared)


if __name__ == '__main__': unittest.main()
