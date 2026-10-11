import copy
import unittest

import test_bd_commit_persistent_owners as fixtures
from bd_commit_owner_current import validate, differences, summary, validate_event, projection


def pair():
    _, original = fixtures.fixture()
    current = copy.deepcopy(original)
    current['profile'] = 'native_persistent_owners_current_v1'
    current['summary']['profile'] = 'native_persistent_owners_current_summary_v1'
    return original, current


class CurrentOwners(unittest.TestCase):
    def test_full_unchanged_and_no_authority(self):
        original,current = pair()
        self.assertEqual(differences(original,current),[])
        value=summary(original,current)
        self.assertEqual(value['records_checked'],6)
        self.assertTrue(value['raw_records_match_original'])
        self.assertFalse(value['inverse_authorized'])

    def test_actual_source_raw_change_and_inputs_immutable(self):
        original,current = pair()
        record=current['owners'][1]['records'][0]
        record['allocated_bytes'][129]=7;record['bytes'][129]=7
        before=copy.deepcopy((original,current))
        value=summary(original,current)
        self.assertEqual(value['changed_physical_records'],1)
        self.assertFalse(value['raw_records_match_original'])
        changes=differences(original,current)
        self.assertTrue(any(r['locus']=='persistent_owner/spec_source/owner' and r['field']=='allocated_bytes' for r in changes))
        self.assertEqual((original,current),before)

    def test_original_cannot_be_current(self):
        original,_=pair()
        with self.assertRaises(ValueError):validate(original,original)

    def test_current_cannot_authorize_inverse(self):
        original,current=pair();current['summary']['inverse_authorized']=True
        with self.assertRaises(ValueError):validate(current,original)

    def test_current_identity_change_refused(self):
        original,current=pair()
        current['owners'][1]['model_binding']['ref']='foreign'
        current['summary']['owners'][1]['model_ref']='foreign'
        with self.assertRaises(ValueError):validate(current,original)

    def test_current_cross_token_refused(self):
        original,current=pair()
        current['native_token']='edit_'+'b'*64
        current['summary']['native_token']=current['native_token']
        with self.assertRaises(ValueError):validate(current,original)

    def test_truncated_physical_tail_refused(self):
        original,current=pair();current['owners'][1]['records'][0]['allocated_bytes'].pop()
        with self.assertRaises(ValueError):validate(current,original)

    def test_wal_actual_tamper_rejected(self):
        original,current=pair()
        event=dict(profile='bde_commit_owner_current_event_v1',original=original,current=current,actual_changes=[])
        prepared=dict(profile='native_commit_prepare_v6',persistent_owners=original['summary'])
        validate_event(event,prepared)
        event['current']['owners'][1]['records'][0]['allocated_bytes'][129]=9
        event['current']['owners'][1]['records'][0]['bytes'][129]=9
        with self.assertRaises(ValueError):validate_event(event,prepared)

    def test_wal_before_cannot_be_replaced_by_current(self):
        original,current=pair()
        event=dict(profile='bde_commit_owner_current_event_v1',original=current,current=current,actual_changes=[])
        with self.assertRaises(ValueError):validate_event(event,dict(profile='native_commit_prepare_v6',persistent_owners=original['summary']))

    def test_agent_projection_keeps_full_bytes_in_wal(self):
        original,current=pair()
        current['owners'][1]['records'][0]['allocated_bytes'][129]=9
        current['owners'][1]['records'][0]['bytes'][129]=9
        event=dict(profile='bde_commit_owner_current_event_v1',original=original,current=current,actual_changes=differences(original,current))
        result=projection(event,dict(profile='native_commit_prepare_v6',persistent_owners=original['summary']))
        self.assertEqual(result['physical_ranges'][0]['ranges'][0]['offset'],129)
        self.assertEqual(result['changed_physical_records'],1)
        self.assertNotIn('allocated_bytes',result)


if __name__=='__main__':unittest.main()
