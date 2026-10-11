import json
from pathlib import Path
import unittest
from unittest.mock import patch
import bd_service as service
from bd_write_contract import validate


class WriteContractTests(unittest.TestCase):
    def test_shared_corpus(self):
        for case in json.loads(Path(__file__).with_name('bde_write_contract_cases.json').read_text(encoding='utf-8')):
            with self.subTest(case=case['id']):
                if case['valid']:validate(case['tool'],case['args'],service.fail)
                else:
                    with self.assertRaises(service.ToolError):validate(case['tool'],case['args'],service.fail)

    def test_malformed_write_rejected_before_snapshot_or_native_io(self):
        args={'snapshot':'s_missing','request_id':'test','operations':[{'op':'delete_node','target':'Main/n1','recursive':True}]}
        with patch.object(service,'load_record',side_effect=AssertionError('No file lookup allowed')):
            with self.assertRaises(service.ToolError) as error:service.handle('bd_edit',args,'test')
        self.assertEqual(error.exception.code,'INVALID_INPUT')


if __name__=='__main__':unittest.main()
