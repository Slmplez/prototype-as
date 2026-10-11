import json
from pathlib import Path
import unittest
from unittest.mock import patch
import bd_service as service
from bd_read_contract import validate


class ReadContractTests(unittest.TestCase):
    def test_manifest_experimental_edit_matches_snapshot_kind_and_owner(self):
        record={'snapshot':'s_'+'1'*32,'session':'test','component':'BDE_Tool_Experiments\\Trial_test',
            'database':'db','observed_at_utc':'now','counts':{},'unresolved_bindings':'not_collected',
            'structure':{'diagram_kind':'block_diagram'},'scope':{'targets':[]}}
        with patch.dict('os.environ',{'ASCET_BD_STRUCTURAL_WRITES':'1'}):
            self.assertTrue(service.manifest(record)['capabilities']['edit'])
            record['component']='PlatformLibrary\\Business'
            self.assertFalse(service.manifest(record)['capabilities']['edit'])

    def test_shared_corpus_before_any_native_io(self):
        for case in json.loads(Path(__file__).with_name('bde_read_contract_cases.json').read_text(encoding='utf-8')):
            with self.subTest(case=case['id']):
                if case['valid']:validate(case['tool'],case['args'],service.fail)
                else:
                    with self.assertRaises(service.ToolError):validate(case['tool'],case['args'],service.fail)

    def test_checks_accepts_actual_edit_observation_without_inventing_dirty_state(self):
        record={'snapshot':'s_'+'1'*32,'oid':'oid','structure':{'entries':[]},'counts':{},'unresolved_bindings':'not_collected'}
        with patch.object(service,'load_record',return_value=record),patch.object(service,'paged',side_effect=lambda text,*args:json.loads(text)):
            result=service.handle('bd_inspect',{'query':'checks','snapshot':record['snapshot']},'test')
        self.assertEqual(result['dirty_editors'],'not_collected_in_edit_observation')
        self.assertEqual(result['structural_validation'],'observed_scope_only')


if __name__=='__main__':unittest.main()
