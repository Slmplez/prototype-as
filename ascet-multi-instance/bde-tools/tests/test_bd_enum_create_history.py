"""Enum actual-target, durable-origin and no-replay controls using synthetic execution."""
from contextlib import nullcontext
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock

from bd_create_history import preparation, observed
from bd_create_history_journal import context, execute, prepare
from bd_edit_journal import JournalError
from bd_enum_declaration_history import initial_origin, terminal_query
from bd_native_graphical_effects import _same_image
from bd_structure_journal import StructureJournal

ROOT = Path(__file__).resolve().parents[1]
TRIAL = ROOT / 'analysis/bde-experiments/2026-10-06/bde-enum-history-preflight-03'


def prepared_fixture():
    trial = json.loads((TRIAL / 'result.json').read_text(encoding='utf-8'))
    events = json.loads((TRIAL / 'original-forward-journal.json').read_text(encoding='utf-8'))
    material = next(e['payload']['create_material_actual'] for e in events if e['kind'] == 'observed')
    p = deepcopy(trial['preparation']); p['profile'] = 'native_create_enum_exact_preparation_v2'
    p['enum_origin'] = initial_origin(material)
    body = p['declaration_evidence']; body['profile'] = 'native_enum_declaration_exact_target_v2'
    proof = body['definition_evidence']; proof.update(profile='native_enum_definition_history_evidence_v2',
        phase='current', created_model_ref=body['created_model_ref'])
    return trial, events, p


def actual_diff(current, expected):
    right = {r['ref']: r for r in expected['objects']}; changes = []
    assert set(right) == {r['ref'] for r in current['objects']}
    for row in current['objects']:
        value = right[row['ref']]['value']
        if row['kind'] == 'fields':
            for index, (a, b) in enumerate(zip(row['value'], value), 1):
                if a != b: changes.append(dict(object=row['ref'], kind='fields', index=index, before=deepcopy(a), after=deepcopy(b)))
        elif row['kind'] != 'boundary' and not _same_image(row, row['value'], value):
            changes.append(dict(object=row['ref'], kind=row['kind'], index=None, before=deepcopy(row['value']), after=deepcopy(value)))
    return dict(profile='native_graphical_diff_v1', complete=True, new_objects=[],
        changes=changes, after_object_count=len(right))


def actual_fixture(p):
    proof = deepcopy(p['declaration_evidence']['definition_evidence'])
    proof.update(phase='target', persisted_target_verified=True,
        definition_references_current=deepcopy(proof['definition_references_expected']),
        definition_references_persisted_current=deepcopy(proof['definition_references_expected']))
    return dict(profile='native_create_exact_actual_v3', observation=deepcopy(p['expected']),
        execution=dict(profile='native_create_exact_execution_v3', native_token=p['native_token'],
            head_change_id=p['owner_change_id'], result_change_id=p['result_change_id'], sequence=p['sequence']+1,
            before_state=p['state'], after_state='reverted', model_operations=1,
            drawing_assignments=len(p['drawing_expected']['members']), store_started=True, store_completed=True,
            phase='terminal', native_primitives=0, source_primitives=0, declaration_primitives=0, terminal_verified=True),
        parent_before=deepcopy(p['parent_before']), parent_after=deepcopy(p['parent_expected']),
        drawing_before=deepcopy(p['drawing_before']), drawing_after=deepcopy(p['drawing_expected']),
        graphical_current=deepcopy(p['graphical_current']),
        graphical_actual=actual_diff(p['graphical_current'], p['graphical_expected']),
        source_actual_evidence=deepcopy(p['source_evidence']), allocator=deepcopy(p['allocator']),
        created_original_retained=True, native_target_verified=True, source_target_verified=True,
        declaration_current=deepcopy(p['declaration_evidence']['current']),
        declaration_actual=actual_diff(p['declaration_evidence']['current'], p['declaration_evidence']['expected']),
        declaration_schema=deepcopy(p['declaration_evidence']['current_schema']),
        declaration_target_verified=True, created_model_original_retained=True, enum_definition_evidence=proof)


class EnumActualHistoryTests(unittest.TestCase):
    def setUp(self): self.trial, self.events, self.p = prepared_fixture()
    def validate(self):
        return preparation(self.p, token=self.p['native_token'], owner=self.p['owner_change_id'], state='applied',
            result_id=self.p['result_change_id'], sequence=1, kind='enumeration', current=self.p['before'],
            expected=self.p['expected'], oid=self.trial['domain']['oid'])

    def test_exact_original_origin_and_complete_synthetic_actual_targets(self):
        p=self.validate();self.assertEqual(observed(actual_fixture(p),p,oid=self.trial['domain']['oid'])['profile'],
            'native_create_exact_actual_v3')

    def test_missing_origin_cannot_authorize_execution(self):
        del self.p['enum_origin']
        with self.assertRaises(JournalError): self.validate()

    def test_foreign_forward_material_owner_is_rejected(self):
        self.p['enum_origin']['creation_material']['component_oid'] = 'foreign'
        with self.assertRaises(JournalError): self.validate()

    def test_full_previous_head_is_bound(self):
        self.p['enum_origin']['previous_declaration']['objects'][0]['value'][0] = {'class':'UndefinedObject','value':'nil'}
        with self.assertRaises(JournalError): self.validate()

    def test_database_current_must_match_retained_combined_head(self):
        self.p['declaration_evidence']['definition_evidence']['definition_references_persisted_current'] = []
        with self.assertRaisesRegex(JournalError,'database record CURRENT'): self.validate()

    def test_previous_head_field_schema_cannot_be_forged(self):
        row=next(r for r in self.p['enum_origin']['previous_schema']['objects'] if r['kind']=='fields')
        row['field_names'][0]='forged'
        with self.assertRaisesRegex(JournalError,'field schema binding'): self.validate()

    def test_combined_success_cannot_hide_wrong_database_target(self):
        p=self.validate();a=actual_fixture(p)
        a['enum_definition_evidence']['definition_references_persisted_current'] = deepcopy(
            p['declaration_evidence']['definition_evidence']['definition_references_current'])
        with self.assertRaisesRegex(JournalError,'database/loaded'): observed(a,p,oid=self.trial['domain']['oid'])

    def persisted_fixture(self):
        p=self.validate(); a=actual_fixture(p); a['profile']='native_create_exact_actual_v4'
        a['enum_persistence']=dict(profile='native_enum_owner_reference_commit_v1', component_oid=self.trial['domain']['oid'],
            owner_modified_started=True, owner_modified_completed=True, auto_commit_started=True,
            auto_commit_completed=True, native_source_declaration_targets_unchanged=True,
            model_setters_called=0, store_replayed=False)
        return p,a

    def test_exact_owner_reference_commit_with_full_targets(self):
        p,a=self.persisted_fixture()
        self.assertEqual(observed(a,p,oid=self.trial['domain']['oid'])['profile'],'native_create_exact_actual_v4')

    def test_missing_or_incomplete_owner_commit_cannot_pass(self):
        for key in ('owner_modified_completed','auto_commit_completed','native_source_declaration_targets_unchanged'):
            p,a=self.persisted_fixture(); a['enum_persistence'][key]=False
            with self.assertRaisesRegex(JournalError,'reference persistence'): observed(a,p,oid=self.trial['domain']['oid'])

    def test_persisted_flags_cannot_hide_wrong_reference_target(self):
        p,a=self.persisted_fixture();a['enum_definition_evidence']['definition_references_persisted_current']=[]
        with self.assertRaisesRegex(JournalError,'database/loaded'): observed(a,p,oid=self.trial['domain']['oid'])

    def test_persistence_cannot_claim_another_owner_or_replay_store(self):
        for key,value in (('component_oid','foreign'),('store_replayed',True)):
            p,a=self.persisted_fixture();a['enum_persistence'][key]=value
            with self.assertRaisesRegex(JournalError,'reference persistence'): observed(a,p,oid=self.trial['domain']['oid'])

    def test_flags_cannot_hide_missing_actual_declaration_change(self):
        p=self.validate();a=actual_fixture(p);a['declaration_actual']['changes'].pop()
        with self.assertRaisesRegex(JournalError,'reconstruct'): observed(a,p,oid=self.trial['domain']['oid'])

    def test_terminal_query_binds_current_namespace_and_both_reference_sets(self):
        p=self.validate();a=actual_fixture(p);proof=deepcopy(a['enum_definition_evidence'])
        proof.update(phase='current',persisted_target_verified=False,
            definition_references_expected=deepcopy(p['declaration_evidence']['definition_evidence']['definition_references_current']))
        cache=dict(namespace_bindings=[[r['ref'],r['ref']] for r in a['declaration_current']['objects']])
        self.assertEqual(terminal_query(proof,a,p,cache),proof)
        proof['definition_references_persisted_current'] = []
        with self.assertRaises(ValueError): terminal_query(proof,a,p,cache)

    def test_disabled_enum_history_refuses_before_native_read(self):
        with tempfile.TemporaryDirectory() as directory:
            log=StructureJournal(directory);path=log._path(self.p['native_token']);path.mkdir()
            for e in self.events:
                (path/(str(e['sequence']).zfill(6)+'.json')).write_text(json.dumps(e),encoding='utf-8')
            ctx=context(log,self.p['native_token']);adapter=Mock(create_history_capable=True,create_enum_history_capable=False)
            with self.assertRaisesRegex(JournalError,'Enum history execution profile'): prepare(adapter,ctx,self.p['result_change_id'])
            adapter.observe.assert_not_called();adapter.prepare_create_history.assert_not_called()

    def fake_adapter(self, lose_reply=False):
        adapter=Mock(create_history_capable=True,create_enum_history_capable=True)
        adapter.observe.return_value=deepcopy(self.p['before'])
        def native_prepare(domain,token,owner,state,result_id):
            p=deepcopy(self.p);p.pop('enum_origin');p['result_change_id']=result_id;return p
        adapter.prepare_create_history.side_effect=native_prepare
        def native_execute(domain,p):
            if lose_reply:raise ConnectionError('Synthetic lost Enum execution reply')
            return actual_fixture(p)
        adapter.execute_create_history.side_effect=native_execute
        return adapter

    def populate(self,directory):
        log=StructureJournal(directory);path=log._path(self.p['native_token']);path.mkdir()
        for e in self.events:
            (path/(str(e['sequence']).zfill(6)+'.json')).write_text(json.dumps(e),encoding='utf-8')
        return log

    def test_formal_wal_binds_actual_origin_diff_and_identical_duplicate(self):
        with tempfile.TemporaryDirectory() as directory:
            log=self.populate(directory);adapter=self.fake_adapter()
            receipt=execute(log,self.p['native_token'],'enum-mock-actual',adapter,nullcontext)
            self.assertEqual(receipt['status'],'verified_local')
            self.assertTrue(receipt['declaration_differences']['definition_reference_targets_verified'])
            self.assertEqual(execute(log,self.p['native_token'],'enum-mock-actual',adapter,nullcontext),receipt)
            self.assertEqual(adapter.execute_create_history.call_count,1)
            ctx=context(log,receipt['change_id'])
            self.assertEqual(ctx['state'],'reverted');self.assertEqual(ctx['sequence'],2)
            self.assertEqual(ctx['enum_origin']['target_declaration'],self.p['declaration_evidence']['current'])

    def test_unknown_enum_execution_is_not_redispatched(self):
        with tempfile.TemporaryDirectory() as directory:
            log=self.populate(directory);adapter=self.fake_adapter(lose_reply=True)
            receipt=execute(log,self.p['native_token'],'enum-mock-unknown',adapter,nullcontext)
            self.assertEqual(receipt['status'],'outcome_unknown')
            self.assertEqual(execute(log,self.p['native_token'],'enum-mock-unknown',adapter,nullcontext),receipt)
            self.assertEqual(adapter.execute_create_history.call_count,1)
            adapter.confirm_create_history.assert_not_called()


if __name__ == '__main__': unittest.main()
