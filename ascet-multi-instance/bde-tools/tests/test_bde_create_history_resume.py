"""Fixed resume boundaries using real sealed creation/first-undo ancestry offline."""
from copy import deepcopy
import json
from pathlib import Path
import unittest
from bde_create_history_tool_experiment import resume_context
from bd_structure_journal import StructureJournal

ROOT=Path(__file__).resolve().parents[1]


class ResumeTests(unittest.TestCase):
    def setUp(self):
        self.source=ROOT/'analysis/bde-experiments/2026-10-06/bde-create-literal-tool-capture-01'
        self.old=json.loads((self.source/'result.json').read_text(encoding='utf-8'))
        self.prior=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-create-literal-history-tools-01/result.json').read_text(encoding='utf-8'))
        self.log=StructureJournal(ROOT/'analysis/bde-experiments/2026-10-06/bde-create-history-sealed-wal-01/edits')

    def test_resume_uses_completed_actual_undo_head_and_original_created_witness(self):
        head,ctx,witness=resume_context(self.old,self.prior,self.source,self.log)
        self.assertNotEqual(head,self.old['native_token'])
        self.assertEqual(ctx['state'],'reverted');self.assertEqual(ctx['sequence'],2)
        self.assertEqual(witness,self.prior['created_capture']['token'])

    def test_unknown_or_pending_is_not_a_completed_resume(self):
        for key,value in (('isolated_pending',True),('witness_retained',False)):
            prior=deepcopy(self.prior);prior[key]=value
            with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)
        prior=deepcopy(self.prior);prior['histories'][0]['receipt']['status']='outcome_unknown'
        with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)

    def test_foreign_epoch_or_model_cannot_rebind_same_named_creation(self):
        prior=deepcopy(self.prior);prior['process_epoch']='new-epoch'
        with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)
        prior=deepcopy(self.prior);prior['domain']['oid']='other-owner'
        with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)

    def test_wrong_or_extra_history_is_not_a_first_undo_resume(self):
        prior=deepcopy(self.prior);prior['histories'][0]['receipt']['change_id']=self.old['native_token']
        with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)
        prior=deepcopy(self.prior);prior['histories'].append(prior['histories'][0])
        with self.assertRaises(ValueError):resume_context(self.old,prior,self.source,self.log)


if __name__=='__main__':unittest.main()
