"""Bind the actual duplex native preparation to public classification and raw role bits."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_create_history import preparation
from bd_declaration_material import schema
from bd_edit_journal import JournalError
from bd_message_declaration_history import initial_origin

ROOT=Path(__file__).resolve().parents[1]
TRIAL=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-duplex-history-preflight-01'


class DuplexHistoryTests(unittest.TestCase):
    def setUp(self):
        trial=json.loads((TRIAL/'result.json').read_text(encoding='utf-8'))
        self.p=json.loads((TRIAL/'preparation.json').read_text(encoding='utf-8'))['result']
        self.material=json.loads((Path(trial['source'])/'result.json').read_text(encoding='utf-8'))['material']
        self.p['message_origin']=initial_origin(self.material)
        self.kw=dict(token=self.p['native_token'],owner=self.p['owner_change_id'],state='applied',
            result_id=self.p['result_change_id'],sequence=1,kind='send_receive_message',
            current=self.p['before'],expected=self.p['expected'],oid=trial['domain']['oid'],creation_material=self.material)

    def check(self):return preparation(self.p,**self.kw)
    def model(self):return next(r for r in self.p['before']['entries'] if r['kind']=='model')

    def test_real_public_duplex_classification_and_raw_both_role_bits_pass(self):
        self.assertEqual(self.model()['message'],dict(global_label='MessageBeforeCapture',scope='local',
            send=False,receive=False,send_receive=True))
        self.assertEqual(self.check(),self.p)

    def test_inclusive_public_flags_are_not_accepted_as_api_classification(self):
        self.model()['message'].update(send=True,receive=True)
        with self.assertRaisesRegex(JournalError,'typed role'):self.check()

    def test_public_api_class_cannot_be_substituted(self):
        self.model()['native_class']='EtasAPIModelSendMessage'
        with self.assertRaises(JournalError):self.check()

    def test_primitive_type_or_scope_cannot_be_substituted(self):
        for key,value in (('model_type','sdisc'),('message',dict(global_label='MessageBeforeCapture',scope='exported',
            send=False,receive=False,send_receive=True))):
            model=self.model();old=deepcopy(model);model[key]=value
            with self.subTest(key=key),self.assertRaises(JournalError):self.check()
            model.clear();model.update(old)

    def test_raw_communication_bits_remain_independently_guarded(self):
        body=self.p['declaration_evidence'];objects,names=schema(body['current'],body['current_schema'])
        model=body['created_model_ref'];index=names[model].index('attributes')
        objects[model]['value'][index]={'class':'SmallInteger','value':'134217728'}
        with self.assertRaises(JournalError):self.check()

    def test_both_database_and_loaded_reference_heads_stay_guarded(self):
        proof=self.p['declaration_evidence']['message_evidence']
        proof['owner_database_record_references_current'].append(['foreign','SGProject'])
        with self.assertRaises(JournalError):self.check()


if __name__=='__main__':unittest.main()
