"""Reject incomplete or forged proofs before CURRENT bindings can authorize work."""
from copy import deepcopy
import unittest

from bd_class_current_identity import inspect_current_identity


class CurrentIdentityTests(unittest.TestCase):
    def setUp(self):
        self.token = 'cand_' + 'f' * 64
        self.current = {'observation': {'signature': {'oid': 'definition'}}, 'owners': [
            {'oid': oid, 'component': '\\BDE_Tool_Experiments\\Trial_' + oid,
             'scopes': {'Main': {'generation': 7}}} for oid in ('caller', 'definition')]}
        pin = {'native_key': 'Main/p2', 'connector_class': 'SGArgumentConnectorGO',
               'current': [10, 190], 'merged': [10, 180], 'restore_axes': ['y']}
        self.prepared = [{'oid': 'caller', 'runtime_patch': {'generation': 7,
            'targets': [{'native_key': 'Main/p1', 'kind': 'pin'}], 'native_layout_audit': {'pins': [pin]}}},
            {'oid': 'definition', 'runtime_patch': {'generation': 7, 'targets': []}}]
        self.proof = {'profile': 'class_current_identity_probe_v1', 'token': self.token,
            'definition_oid': 'definition', 'state': 'ready', 'model_setters_called': 0,
            'write_authorized': False, 'production_executor_available': False, 'owners': []}
        for owner in self.current['owners']:
            caller = owner['oid'] == 'caller'
            self.proof['owners'].append({'profile': 'class_current_identity_plan_v1', **owner,
                'token': self.token, 'generation': 7, 'model_setters_called': 0,
                'write_authorized': False, 'production_executor_available': False,
                'exact_current_targets': int(caller), 'existing_live_pins': int(caller),
                'planned_coordinate_setters': int(caller), 'observations': [
                    {'kind': 'pin', 'native_key': 'Main/p1', 'native_class': 'SGInterfaceGO',
                     'parent_binding': 'Main/n1/input', 'parent_size': 2, 'parent_class': 'SGMethodInterfacePortGO',
                     'exact_live_identity_verified': True},
                    {'kind': 'existing_pin', **pin, 'native_class': 'SGInterfaceGO',
                     'exact_live_identity_verified': True}] if caller else []})

    def check(self, proof=None):
        return inspect_current_identity(self.proof if proof is None else proof,
                                        self.token, self.current, self.prepared)

    def test_complete_target_and_existing_pin(self):
        value = self.check()
        self.assertEqual((value['owners_verified'], value['exact_current_targets'], value['existing_live_pins']), (2, 1, 1))
        self.assertFalse(value['production_executor_available'])

    def test_missing_or_duplicate_owner(self):
        for rows in (self.proof['owners'][:1], self.proof['owners'][:1] * 2):
            proof = deepcopy(self.proof)
            proof['owners'] = rows
            with self.assertRaises(ValueError):
                self.check(proof)

    def test_stale_generation(self):
        self.proof['owners'][0]['generation'] += 1
        with self.assertRaises(ValueError):
            self.check()

    def test_missing_hidden_pin_cannot_reduce_coverage(self):
        self.proof['owners'][0]['observations'].pop()
        self.proof['owners'][0]['existing_live_pins'] = 0
        with self.assertRaises(ValueError):
            self.check()

    def test_changed_current_or_desired_coordinate(self):
        for field in ('current', 'merged'):
            proof = deepcopy(self.proof)
            proof['owners'][0]['observations'][1][field][1] += 1
            with self.assertRaises(ValueError):
                self.check(proof)

    def test_duplicate_native_key(self):
        self.proof['owners'][0]['observations'][1]['native_key'] = 'Main/p1'
        with self.assertRaises(ValueError):
            self.check()

    def test_authority_or_model_writes(self):
        for field, value in (('write_authorized', True), ('model_setters_called', 1),
                             ('production_executor_available', True), ('state', 'published')):
            proof = deepcopy(self.proof)
            proof[field] = value
            with self.assertRaises(ValueError):
                self.check(proof)

    def test_false_native_identity_or_parent(self):
        for field, value in (('exact_live_identity_verified', False), ('parent_size', 0)):
            proof = deepcopy(self.proof)
            proof['owners'][0]['observations'][0][field] = value
            with self.assertRaises(ValueError):
                self.check(proof)


if __name__ == '__main__':
    unittest.main()
