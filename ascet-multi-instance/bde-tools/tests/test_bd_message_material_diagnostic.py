"""Real full diagnostic image replay and unsafe-change controls, offline only."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_declaration_material import schema
from bd_message_material_diagnostic import validate,same_diagnostic

ROOT=Path(__file__).resolve().parents[1]
DIAG=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-duplex-diagnostic-02/result.json'


class MessageMaterialDiagnosticTests(unittest.TestCase):
    def setUp(self):
        saved=json.loads(DIAG.read_text(encoding='utf-8'));self.value=deepcopy(saved['diagnostic'])
        original=json.loads((Path(saved['source'])/'result.json').read_text(encoding='utf-8'))
        self.material=original['material'];self.token=saved['native_token'];self.oid=saved['domain']['oid']

    def check(self,value):return validate(value,self.material,token=self.token,oid=self.oid)

    def test_real_complete_cache_only_change_is_classified(self):
        result=self.check(self.value)
        self.assertEqual((result['recorded_objects'],result['current_objects'],len(result['changes'])),(200,218,5))
        self.assertTrue(result['safe_for_history_preparation']);self.assertFalse(result['write_authorized'])

    def test_unordered_object_and_schema_tables_preserve_semantics(self):
        value=deepcopy(self.value)
        for name in ('recorded','current','recorded_schema','current_schema'):value[name]['objects'].reverse()
        self.assertTrue(same_diagnostic(self.value,value));self.assertTrue(self.check(value)['proven_cache_only'])

    def test_ordered_array_change_is_detected_even_inside_cache(self):
        value=deepcopy(self.value)
        row=next(r for r in value['current']['objects'] if r['ref']=='v199');row['value'].reverse()
        self.assertFalse(same_diagnostic(self.value,value))

    def test_wrong_original_role_type_generation_ref_is_refused(self):
        for key,replacement in (('kind','send_message'),('model_type','cont'),('generation',999),('created_model_ref','v1')):
            value=deepcopy(self.value);value[key]=replacement
            with self.subTest(key=key),self.assertRaises(ValueError):self.check(value)

    def test_incomplete_original_or_current_object_roster_is_refused(self):
        for name in ('recorded','current'):
            value=deepcopy(self.value);value[name]['objects'].pop()
            with self.subTest(name=name),self.assertRaises(ValueError):self.check(value)

    def test_noncache_change_cannot_use_successful_native_cache_guard(self):
        value=deepcopy(self.value);rows,names=schema(value['current'],value['current_schema'])
        rows[value['owner_ref']]['value'][names[value['owner_ref']].index('comment')]={'class':'SmallInteger','value':'1'}
        with self.assertRaises(ValueError):self.check(value)
        value['cache_guard']='BDE_DECLARATION_CACHE_GUARD_ERROR: Non-cache declaration field changed: comment'
        result=self.check(value);self.assertFalse(result['safe_for_history_preparation'])
        self.assertIn('Non-cache',result['cache_classification_error'])

    def test_changed_source_is_not_promoted_by_cache_only_declarations(self):
        value=deepcopy(self.value);value['source_after_unchanged']=False
        self.assertFalse(self.check(value)['safe_for_history_preparation'])

    def test_write_authorization_or_changed_reference_set_is_refused(self):
        for key,replacement in (('write_authorized',True),('model_setters_called',True),('owner_references_current',[])):
            value=deepcopy(self.value);value[key]=replacement
            with self.subTest(key=key),self.assertRaises(ValueError):self.check(value)


if __name__=='__main__':unittest.main()
