"""The finalization tool must persist recovery binding before journal execution."""
import json
from pathlib import Path
import shutil
import tempfile
import unittest
from unittest.mock import patch
import bd_service as service
from bd_edit_journal import fingerprint

ROOT=Path(__file__).resolve().parents[1]


class ToolBindingTests(unittest.TestCase):
    def test_finalization_recovery_binding_exists_before_any_execution(self):
        with tempfile.TemporaryDirectory() as folder:
            store=Path(folder);shutil.copytree(ROOT/'analysis/bde-experiments/2026-10-06/bde-create-history-sealed-wal-01/edits',store/'edits')
            (store/'documents').mkdir()
            fixture=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-create-literal-finalize-preflight-01/result.json').read_text(encoding='utf-8'))
            head=fixture['head'];domain=fixture['domain'];old=ROOT/'analysis/bde-experiments/2026-10-06/bde-create-literal-tool-capture-01/store/edit-bindings'/(head+'.json')
            (store/'edit-bindings').mkdir();shutil.copyfile(old,store/'edit-bindings'/old.name)
            request_id='offline-tool-finalize';rid='edit_'+fingerprint(dict(domain=domain,request_id=request_id))
            seen=[]
            def finalized(log,token,request_id,adapter,live_lock):
                value=json.loads((store/'edit-bindings'/(rid+'.json')).read_text(encoding='utf-8'))
                checksum=value.pop('integrity_sha256');self.assertEqual(checksum,service.digest(value))
                seen.append(value)
                self.assertEqual(seen[0]['domain'],domain)
                return dict(status='finalized',change_id=rid)
            with patch.object(service,'STORE',store),patch.dict('os.environ',{'ASCET_BD_STRUCTURAL_WRITES':'1'}),\
                    patch('bd_structural_tools.NativeStructureAdapter'),patch('bd_structural_tools.publish_after',side_effect=lambda log,r,*a:r),\
                    patch('bd_create_finalize_journal.execute',side_effect=finalized):
                result=service.handle('bd_revert',dict(change_id=head,request_id=request_id,finalize=True),domain['session'])
            self.assertEqual(len(seen),1);self.assertFalse(result['is_error'])


if __name__=='__main__':unittest.main()
