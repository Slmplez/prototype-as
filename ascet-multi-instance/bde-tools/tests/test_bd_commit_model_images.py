"""Rejection controls for exported loaded-model before material; offline only."""
from copy import deepcopy
import unittest
from bd_commit_model_images import validate_audit
import test_bd_commit_resources as fixtures


def fixture():
    proof=fixtures.CommitResourceTests().models()
    proof.update(objects=4,field_objects=2,value_objects=1,boundary_class_counts={'DBProxy':1})
    prepared=fixtures.receipt();prepared.update(profile='native_commit_prepare_v2',registered_models=proof)
    return dict(component_oid=prepared['component_oid'],generation=7,native_token=prepared['native_token'],
        prepared_receipt=prepared,registered_models=proof,original_capture=dict(before_read=dict(cache_entries=[
            dict(registered_object={'class':'SGClass','ref':'r1'}),
            dict(registered_object={'class':'SGLibrary','ref':'r2'})])),registered_model_original_image=[
            dict(binding={'class':'SGClass','ref':'r1'},kind='fields',field_names=['name','proxy'],value=[
                {'class':'String','ref':'r3'},{'class':'DBProxy','ref':'r4'}]),
            dict(binding={'class':'SGLibrary','ref':'r2'},kind='fields',field_names=['owner'],value=[{'class':'SGClass','ref':'r1'}]),
            dict(binding={'class':'String','ref':'r3'},kind='value',field_names=[],value=[65,66]),
            dict(binding={'class':'DBProxy','ref':'r4'},kind='boundary',field_names=[],value=None)])


class CommitModelImageTests(unittest.TestCase):
    def test_complete_loaded_before_is_explicitly_not_a_transitive_closure(self):
        result=validate_audit(fixture())
        self.assertEqual((result['roots'],result['field_objects'],result['value_objects']),(2,2,1))
        self.assertFalse(result['full_model_transitive_closure']);self.assertFalse(result['inverse_authorized'])

    def test_partial_duplicate_schema_values_or_member_binding_refused(self):
        for edit in (
            lambda d:d['registered_model_original_image'].pop(),
            lambda d:d['registered_model_original_image'][1].update(binding={'class':'SGLibrary','ref':'r1'}),
            lambda d:d['registered_model_original_image'][0].update(field_names=['name']),
            lambda d:d['registered_model_original_image'][2].update(value=[True]),
            lambda d:d['registered_model_original_image'][3].update(value=[]),
            lambda d:d['registered_model_original_image'][0]['value'][0].update(ref='missing'),
            lambda d:d['registered_models'].update(field_objects=3),
            lambda d:d['original_capture']['before_read']['cache_entries'].pop()):
            with self.subTest(edit=edit):
                value=deepcopy(fixture());edit(value)
                with self.assertRaises(ValueError):validate_audit(value)


if __name__=='__main__':unittest.main()
