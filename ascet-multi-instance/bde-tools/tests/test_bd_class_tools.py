"""Class six-tool contract checks with recorded native data, not online evidence."""
from contextlib import nullcontext
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
from bd_class_study_journal import read_events
from bd_edit_journal import JournalError


class ClassToolsTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.store = Path(self.temp.name)
        self.evidence = service.ROOT / 'analysis/bde-experiments/2026-10-02/bde-class-split-middle-03'
        self.applied = tools.load(self.evidence / 'apply-0.json')
        for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
            (self.store / name).mkdir()
        for replacement in (patch.object(service, 'STORE', self.store), patch.object(service, 'live_lock', nullcontext),
                            patch.dict('os.environ', {'ASCET_BD_CLASS_WRITES': '1'}),
                            patch.dict('os.environ', {'LOCALAPPDATA': str(self.store / 'native-state')}),
                            patch('bde_class_interface_study.endpoint_process', return_value=int(self.applied['ascet_process_epoch'].split('/')[0])),
                            patch.object(pending, 'pending_path', return_value=self.store / 'pending.json')):
            replacement.start()
            self.addCleanup(replacement.stop)
        self.restored = tools.load(self.evidence / 'inverse-0.json')
        self.record = tools.snapshot(self.applied, 'before', 'test', 'initial-offline-snapshot')
        self.op = {'op': tools.OPERATION, 'selector': deepcopy(self.applied['selector']),
            'layout_policy': 'follow_verified_pins_and_orthogonal_routes', 'sequence_policy': 'no_implicit_changes'}
        self.args = {'request_id': 'one', 'snapshot': self.record['snapshot'], 'operations': [self.op]}
        self.dispatches = []
        self.current = deepcopy(self.applied)
        self.probe_overrides = None
        self.observe_inputs = []
        replacement = patch.object(tools, 'invoke', side_effect=self.invoke)
        replacement.start()
        self.addCleanup(replacement.stop)

    def probes(self, raw):
        applied = raw['status'] == 'retained_applied'
        signature = {'registry_present': applied, 'retained_records': int(applied), 'capacity': 8,
            'record_present': applied, 'state': 'added' if applied else 'absent', 'selector_matches': applied,
            'original_formal_binding_matches': applied, 'after_signature_identity_matches': applied}
        material = {'registry_present': applied, 'retained_records': 4 if applied else 0, 'capacity': 8,
            'record_present': applied, 'state': 'applied' if applied else 'absent', 'selector_matches': applied,
            'native_owner_matches': applied, 'specification_matches': applied, 'stored_source_matches': applied,
            'original_object_identities_match': applied, 'detached_fields_profile': 'collected_graphics_v1',
            'current_graphical_fields_observed': True,
            'original_graphical_fields_checkpoint_present': applied, 'original_graphical_fields_match': applied,
            'native_binding_profile': 'native_collections_v1', 'original_binding_checkpoint_present': applied,
            'original_full_collections_match': applied, 'after_binding_checkpoint_present': applied,
            'after_native_bindings_match': applied}
        phase = 'restored' if raw['status'] == 'retained_restored' else 'after'
        return [{'component': owner['component'], 'oid': owner['oid'],
            'checks': {'signature': deepcopy(signature), 'material': deepcopy(material)}}
            for owner in tools.observation(raw, phase)['owners']]

    def body(self, result, session='test'):
        head, text = result['content'].split('\n\n', 1)
        meta = json.loads(head)
        while meta['page']['has_more']:
            resumed = service.handle('bd_read', {'cursor': meta['page']['next_cursor']}, session)
            head, part = resumed['content'].split('\n\n', 1)
            meta = json.loads(head)
            text += part
        return json.loads(text)

    def publish_wal(self, source, target, domain, origin=None):
        target.mkdir()
        previous = None
        for row in read_events(source):
            payload = row['payload']
            if row['kind'] == 'intent':
                payload['domain'] = domain
                if origin is not None:
                    payload['retained_origin'] = origin
            body = json.dumps(payload, separators=(',', ':'))
            checksum = hashlib.sha256('\n'.join((str(row['sequence']), row['kind'], row['utc'], previous or '', body)).encode()).hexdigest()
            event = {key: row[key] for key in ('sequence', 'kind', 'utc')}
            event.update({'previous': previous, 'payload_json': body, 'checksum': checksum})
            (target / f"{row['sequence']:06d}.json").write_text(json.dumps(event), encoding='utf-8')
            previous = checksum

    def invoke(self, inputs, output, command, selector=None, wal=None, quarantine=None):
        if command == 'observe':
            self.observe_inputs.append(tools.load(inputs))
            raw = deepcopy(self.current)
            if 'recovery_probe_selector' in tools.load(inputs):
                raw['native_recovery_probe'] = self.probe_overrides if self.probe_overrides is not None else self.probes(raw)
            if 'creation_probe_selector' in tools.load(inputs):
                raw['native_creation_preflight'] = 'validated'
            phase = 'restored' if raw['status'] == 'retained_restored' else 'after'
            raw['before'] = raw[phase]
            for index in range(4):
                raw[f'owner_scopes_observed_{index}'] = raw[f'owner_scopes_{phase}_{index}']
            raw.update(status='observed', model_setters_called=0, model_mutation_dispatched=False, outstanding=False)
            tools.write(output, raw)
            return raw, 0
        self.dispatches.append(command)
        identity = tools.load(inputs)
        domain = {'session': identity['journal_session'], 'database': identity['database'],
                  'oid': identity['oid'], 'process_epoch': identity['ascet_process_epoch']}
        inverse = command == 'inverse_retained'
        raw = deepcopy(self.restored if inverse else self.applied)
        raw['journal'] = str(wal.resolve())
        origin = None
        if inverse:
            original = tools.load(identity['retained_study_path'])
            source = Path(original['journal'])
            origin = {'journal': str(source), 'terminal_checksum': read_events(source)[-1]['checksum'], 'study_sha256': 'native-loader-tested-separately'}
        self.publish_wal(self.evidence / ('inverse-0.wal' if inverse else 'apply-0.wal'), wal, domain, origin)
        self.assertEqual(tools.load(quarantine)['domain'], domain)
        tools.write(output, raw)
        self.current = deepcopy(raw)
        return raw, 0

    def test_edit_returns_compact_actual_summary_and_snapshot(self):
        result = service.handle('bd_edit', self.args, 'test')
        value = self.body(result)
        self.assertFalse(result['is_error'])
        self.assertEqual(value['status'], 'verified_class_apply')
        self.assertNotIn('actual_patch', value)
        self.assertTrue(value['actual_patch_summary']['definition_changed'])
        after = service.load_record(value['after_snapshot'], 's_', 'snapshots')
        self.assertEqual(after['class_interface']['observation']['signature'], self.applied['after']['signature'])
        self.assertFalse((self.store / 'pending.json').exists())
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    @patch.object(tools.creation, 'NATIVE_WRITE_ACCEPTED', False)
    def test_creation_preview_checks_method_and_never_reserves_or_dispatches(self):
        self.current = deepcopy(self.restored)
        operation = {'op': 'create_class_argument',
            'selector': {key: self.op['selector'][key] for key in ('diagram', 'method_alias')},
            'name': 'FreshInput', 'model_type': 'cont', 'layout_policy': self.op['layout_policy'],
            'sequence_policy': 'no_implicit_changes'}
        result = self.body(service.handle('bd_edit', {**self.args, 'preview': True, 'operations': [operation]}, 'test'))
        self.assertEqual(result['status'], 'class_creation_preview')
        self.assertEqual(result['planned_input_pin_count'], 4)
        self.assertIn('NATIVE_CREATION_NOT_ACCEPTED', [row['code'] for row in result['refusal_reasons']])
        self.assertEqual(self.observe_inputs[-1]['creation_probe_selector'], tools.native_selector(operation))
        self.assertEqual(self.dispatches, [])
        self.assertFalse((self.store / 'class-edits').exists())
        with self.assertRaises(service.ToolError) as refused:
            service.handle('bd_edit', {**self.args, 'operations': [operation]}, 'test')
        self.assertEqual(refused.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertFalse((self.store / 'class-edits').exists())

    def test_same_request_never_replays_native_setter(self):
        first = self.body(service.handle('bd_edit', self.args, 'test'))
        second = self.body(service.handle('bd_edit', self.args, 'test'))
        self.assertEqual(first, second)
        self.assertEqual(len(self.dispatches), 1)

    def test_same_id_changed_selector_refuses(self):
        service.handle('bd_edit', self.args, 'test')
        alternate = deepcopy(self.args)
        method = next(row for row in self.applied['before']['signature']['methods'] if row['alias'] == self.op['selector']['method_alias'])
        alternate['operations'][0]['selector']['formal_alias'] = method['arguments'][0]['alias']
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_edit', alternate, 'test')
        self.assertEqual(error.exception.code, 'REQUEST_ID_CONFLICT')
        self.assertEqual(len(self.dispatches), 1)

    def test_historical_diff_and_find_do_not_call_native(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        with patch.object(tools, 'invoke', side_effect=AssertionError('must stay offline')):
            result = service.handle('bd_diff', {'change_id': value['change_id']}, 'other-session')
            self.assertEqual(self.body(result, 'other-session')['live_frames'], 0)
            found = service.handle('bd_find', {'snapshot': value['after_snapshot'], 'query': 'aggregate', 'kind': 'method'}, 'test')
            self.assertIn('aggregate', found['content'])

    def test_separate_inverse_and_repeated_inverse_preserve_original_fields(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        args = {'change_id': value['change_id'], 'request_id': 'inverse'}
        result = service.handle('bd_revert', args, 'test')
        receipt = self.body(result)
        self.assertFalse(result['is_error'])
        current = service.load_record(receipt['after_snapshot'], 's_', 'snapshots')
        self.assertEqual(current['class_interface']['observation']['signature'], self.applied['before']['signature'])
        self.assertEqual(self.body(service.handle('bd_revert', args, 'test')), receipt)
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument', 'inverse_retained'])
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_revert', {**args, 'request_id': 'another-inverse'}, 'test')
        self.assertEqual(error.exception.code, 'REVERT_UNAVAILABLE')

    def test_cross_session_refuses_before_native(self):
        with self.assertRaises(service.ToolError):
            service.handle('bd_edit', self.args, 'foreign')
        self.assertEqual(self.dispatches, [])

    def test_native_long_path_refuses_before_journal_or_quarantine(self):
        long_folder = self.store / ('x' * 220)
        with patch.object(tools, 'root', return_value=long_folder), \
                patch.object(tools, 'invoke', side_effect=AssertionError('No native request allowed')), \
                patch.object(pending, 'begin', side_effect=AssertionError('No quarantine allocation allowed')):
            with self.assertRaises(service.ToolError) as error:
                service.handle('bd_edit', self.args, 'test')
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertFalse(long_folder.exists())
        self.assertFalse((self.store / 'pending.json').exists())

    def test_preview_reports_exact_closure_without_reserving_edit_or_recovery(self):
        self.current = deepcopy(self.restored)
        result = service.handle('bd_edit', {**self.args, 'preview': True}, 'test')
        value = self.body(result)
        self.assertFalse(result['is_error'])
        self.assertEqual(value['status'], 'class_deletion_preview')
        self.assertEqual(value['planned_removal_counts']['pins'], 5)
        self.assertEqual(value['planned_removal_counts']['edges'], 5)
        self.assertEqual(value['write_eligibility'], 'prepare_required')
        self.assertEqual(value['model_setters_called'], 0)
        self.assertFalse(value['recovery_record_created'])
        self.assertFalse(value['edit_request_reserved'])
        self.assertNotIn('change_id', value)
        self.assertEqual(self.dispatches, [])
        self.assertFalse((self.store / 'class-edits').exists())
        self.assertFalse((self.store / 'pending.json').exists())
        self.body(service.handle('bd_edit', self.args, 'test'))
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_preview_rejects_stale_owner_baseline_without_edit_journal(self):
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_edit', {**self.args, 'preview': True}, 'test')
        self.assertEqual(error.exception.code, 'PRECONDITION_CONFLICT')
        self.assertEqual(self.dispatches, [])
        self.assertFalse((self.store / 'class-edits').exists())

    def test_preview_read_only_references_report_write_refusal(self):
        self.current = deepcopy(self.restored)
        self.current['write_resource_error'] = 'Unsupported Class reference'
        value = self.body(service.handle('bd_edit', {**self.args, 'preview': True}, 'test'))
        self.assertEqual(value['write_eligibility'], 'refused')
        self.assertEqual(value['write_resource_error'], 'Unsupported Class reference')
        self.assertEqual(self.dispatches, [])
        self.assertFalse((self.store / 'class-edits').exists())

    def test_preview_rejects_inconsistent_formal_pin_binding_before_observe(self):
        self.record['class_interface']['owners'][0]['scopes']['Main']['entries'] = [row for row in
            self.record['class_interface']['owners'][0]['scopes']['Main']['entries'] if row['kind'] != 'pin']
        tools.write(self.store / 'snapshots' / 'invalid-preview.json', self.record)
        with patch.object(tools, 'invoke', side_effect=AssertionError('must reject before native')):
            with self.assertRaises(JournalError) as error:
                tools.preview(self.record, self.op, 'invalid', 'test', 8192)
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')

    def test_inverse_preview_returns_inverse_patch_without_reserving_request(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        args = {'change_id': value['change_id'], 'request_id': 'inverse-preview', 'preview': True}
        plan = self.body(service.handle('bd_revert', args, 'test'))
        self.assertEqual(plan['status'], 'class_inverse_preview')
        self.assertEqual(plan['write_eligibility'], 'execute_recheck_required')
        self.assertEqual(plan['planned_definition_effect']['after'], self.applied['before']['signature'])
        self.assertEqual(plan['actual_effects'], 'not_observed; planned inverse of durable actual edit diff')
        self.assertFalse(plan['edit_request_reserved'])
        self.assertFalse(plan['recovery_record_created'])
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])
        self.assertEqual(len(list((self.store / 'class-edits').iterdir())), 1)
        self.assertFalse((self.store / 'pending.json').exists())
        args.pop('preview')
        self.body(service.handle('bd_revert', args, 'test'))
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument', 'inverse_retained'])

    def test_inverse_preview_hold_without_listener_remains_offline(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        holds = [{'record': 'immutable-recovery-hold'}]
        with patch('bde_class_interface_study.endpoint_process', side_effect=AssertionError('Known hold does not query endpoint')), patch.object(pending, 'restoration_holds', return_value=holds), \
                patch.object(tools, 'invoke', side_effect=AssertionError('Must not reconnect expired recovery')):
            plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'expired-preview', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual({row['code'] for row in plan['refusal_reasons']}, {'DATABASE_RESTORATION_REQUIRED'})
        self.assertEqual(plan['observed_preconditions'], 'not_checked')
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_expired_process_without_hold_does_not_connect(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        with patch('bde_class_interface_study.endpoint_process', return_value=1), \
                patch.object(tools, 'invoke', side_effect=AssertionError('Expired process does not connect')):
            plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'expired-preview', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(plan['refusal_reasons'][0]['code'], 'IDENTITY_UNRESOLVED')
        self.assertEqual(plan['native_recovery'], 'not_checked')

    def test_inverse_preview_missing_endpoint_reports_typed_refusal(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        with patch('bde_class_interface_study.endpoint_process', side_effect=RuntimeError('No listener')), \
                patch.object(tools, 'invoke', side_effect=AssertionError('Unavailable endpoint does not connect')):
            plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'missing-endpoint', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(plan['refusal_reasons'][0]['code'], 'NATIVE_ENDPOINT_UNAVAILABLE')

    def test_inverse_preview_missing_native_objects_refuses_same_after_values(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        self.probe_overrides = self.probes(self.current)
        self.probe_overrides[0]['checks']['material']['original_object_identities_match'] = False
        plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'lost-objects', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(plan['refusal_reasons'][0]['code'], 'NATIVE_RECOVERY_CONFLICT')
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_stale_complete_after_refuses_without_inverse_intent(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        self.current['after']['public_signature'].append({'extra_unrelated_change': True})
        plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'stale-inverse', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertIn('STRICT_INVERSE_BASELINE_REQUIRED', {row['code'] for row in plan['refusal_reasons']})
        self.assertEqual(plan['patch_analysis']['observation_fields_requiring_native_recheck'], ['public_signature'])
        self.assertFalse(plan['patch_analysis']['write_authorized'])
        self.assertEqual(len(list((self.store / 'class-edits').iterdir())), 1)
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_detached_graphical_change_refuses_without_inverse_intent(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        self.probe_overrides = self.probes(self.current)
        self.probe_overrides[0]['checks']['material']['original_graphical_fields_match'] = False
        plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'],
            'request_id': 'detached-fields-changed', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(plan['refusal_reasons'][0]['code'], 'NATIVE_RECOVERY_CONFLICT')
        self.assertEqual(len(list((self.store / 'class-edits').iterdir())), 1)
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_preserves_unrelated_field_but_native_execution_stays_strict(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        rows = self.current['owner_scopes_after_0']['Main']['entries']
        node = next(row for row in rows if row['kind'] == 'node')
        node['agent_note'] = 'later independent change'
        args = {'change_id': value['change_id'], 'request_id': 'merge-preview', 'preview': True}
        plan = self.body(service.handle('bd_revert', args, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        analysis = plan['patch_analysis']
        self.assertTrue(analysis['collected_graph_compatible'])
        resource = next(row for row in analysis['resources'] if row['oid'] == self.applied['after']['discovery']['callers'][0]['oid'] and row['diagram'] == 'Main')
        self.assertIn(node['ref'], {row['ref'] for row in resource['preserved_changes']})
        restored = next(row['after'] for row in resource['merged_differences'] if row['ref'] == node['ref'])
        self.assertEqual(restored['agent_note'], 'later independent change')
        self.assertFalse(analysis['native_merge_executor_available'])
        self.assertNotIn('expected_observation_path', self.observe_inputs[-1])
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_reports_exact_field_conflict_without_setter(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        rows = self.current['owner_scopes_after_0']['Main']['entries']
        node = next(row for row in rows if row['kind'] == 'node' and row['model_name'] == 'Instance0')
        node['pins'] = list(reversed(node['pins']))
        plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'conflict-preview', 'preview': True}, 'test'))
        self.assertFalse(plan['patch_analysis']['collected_graph_compatible'])
        self.assertTrue(any(delta.get('path') == ['pins'] for row in plan['patch_analysis']['resources'] for delta in row['conflicts']))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_type_change_is_not_python_boolean_numeric_equality(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        rows = self.current['owner_scopes_after_0']['Main']['entries']
        pin = next(row for row in rows if row['kind'] == 'pin' and row['input'] is True)
        pin['input'] = 1
        plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'typed-conflict', 'preview': True}, 'test'))
        self.assertFalse(plan['patch_analysis']['original_after_matches'])
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertIn('STRICT_INVERSE_BASELINE_REQUIRED', {row['code'] for row in plan['refusal_reasons']})
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])

    def test_inverse_preview_after_confirmed_inverse_does_not_reconnect(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'inverse'}, 'test'))
        with patch.object(tools, 'invoke', side_effect=AssertionError('Released recovery must stay offline')), \
                patch('bde_class_interface_study.endpoint_process', side_effect=AssertionError('Released inverse does not query endpoint')):
            plan = self.body(service.handle('bd_revert', {'change_id': value['change_id'], 'request_id': 'after-inverse', 'preview': True}, 'test'))
        self.assertEqual(plan['write_eligibility'], 'refused')
        self.assertEqual(plan['refusal_reasons'][0]['code'], 'REVERT_UNAVAILABLE')

    def test_read_only_reference_snapshot_cannot_authorize_a_native_write(self):
        self.current['write_resource_error'] = 'Unsupported Class reference'
        observed = tools.snapshot(self.current, 'before', 'test', 'reference-read-only')
        meta = service.manifest(observed)
        self.assertFalse(meta['capabilities']['edit'])
        self.assertEqual(meta['capabilities']['write_resource_error'], 'Unsupported Class reference')
        with self.assertRaises(JournalError) as error:
            tools.execute('bd_edit', {**self.args, 'snapshot': observed['snapshot']}, 'test', 8192)
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertEqual(self.dispatches, [])
        self.assertFalse((self.store / 'class-edits').exists())

    def test_invalid_policy_and_alias_refuse_before_native(self):
        for key, value in (('layout_policy', 'silent'), ('sequence_policy', 'allow_unassigned'), ('selector', {'name': 'Input'})):
            args = deepcopy(self.args)
            args['operations'][0][key] = value
            with self.subTest(key=key), self.assertRaises(service.ToolError):
                service.handle('bd_edit', args, 'test')
        self.assertEqual(self.dispatches, [])

    def test_writes_disabled_refuse_before_native(self):
        with patch.dict('os.environ', {'ASCET_BD_CLASS_WRITES': '0'}), self.assertRaises(service.ToolError):
            service.handle('bd_edit', self.args, 'test')
        self.assertEqual(self.dispatches, [])

    def test_class_manifest_declares_actual_coverage_and_strict_inverse(self):
        manifest = service.manifest(self.record)
        self.assertNotIn('method_bodies', manifest['collected'])
        self.assertEqual(manifest['capabilities']['inverse_policy'], 'strict_all_owner_after_baseline')
        self.assertIn('external type content', manifest['collected']['not_collected'])

    def test_retained_public_wrapper_is_diagnostic_not_current_owner_graph(self):
        raw = deepcopy(self.applied)
        first = deepcopy(tools.observation(raw, 'after'))
        raw['after']['callers'][0]['public_retained'] = {'stale': True}
        self.assertEqual(tools.observation(raw, 'after'), first)
        raw['after']['callers'][0]['public_tree']['Main']['nodes'][0]['position'][0] += 1
        self.assertNotEqual(tools.observation(raw, 'after'), first)

    def test_scope_or_graph_generation_change_is_not_graph_deletion(self):
        current = deepcopy(self.record)
        current['snapshot'] = 's_' + 'f' * 32
        current['class_interface']['owners'][0]['scopes']['Main']['generation'] += 1
        with self.assertRaises(service.ToolError) as error:
            service.semantic_diff(self.record, current)
        self.assertEqual(error.exception.code, 'IDENTITY_UNRESOLVED')

    def test_corrupt_intent_or_receipt_cannot_claim_verified(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        path = tools.root(value['change_id']) / 'receipt.json'
        receipt = json.loads(path.read_text())
        receipt['model_modified'] = False
        path.write_text(json.dumps(receipt), encoding='utf-8')
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_edit', self.args, 'test')
        self.assertEqual(error.exception.code, 'JOURNAL_CORRUPT')
        self.assertEqual(len(self.dispatches), 1)

    def test_unknown_request_is_not_dispatched_again(self):
        with patch.object(tools, 'invoke', side_effect=JournalError('OUTCOME_UNKNOWN', 'Injected helper exit')):
            with self.assertRaises(service.ToolError):
                service.handle('bd_edit', self.args, 'test')
        retry = service.handle('bd_edit', self.args, 'test')
        self.assertTrue(retry['is_error'])
        self.assertEqual(self.dispatches, [])

    def test_presentation_refusal_does_not_replay_edit(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_diff', {'change_id': value['change_id'], 'presentation': 'show'}, 'test')
        self.assertEqual(error.exception.code, 'CAPABILITY_UNAVAILABLE')
        self.assertEqual(len(self.dispatches), 1)

    def test_class_history_lists_definition_and_affected_caller_offline(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        for component in (self.record['component'], self.applied['before']['callers'][0]['component']):
            with patch.object(tools, 'invoke', side_effect=AssertionError('history must stay offline')):
                result = service.handle('bd_inspect', {'query': 'edits', 'component': component}, 'test')
            head, text = result['content'].split('\n\n', 1)
            self.assertEqual(json.loads(head)['records'], 1)
            self.assertEqual(json.loads(text)['change_id'], value['change_id'])

    def test_history_preserves_unknown_dispatch_and_corrupt_diagnostic(self):
        with patch.object(tools, 'invoke', side_effect=JournalError('OUTCOME_UNKNOWN', 'lost helper')):
            with self.assertRaises(service.ToolError):
                service.handle('bd_edit', self.args, 'test')
        listed = service.handle('bd_inspect', {'query': 'edits'}, 'test')
        self.assertIn('outcome_unknown', listed['content'])
        folder = next((self.store / 'class-edits').glob('edit_*'))
        (folder / 'intent.json').write_text('{}', encoding='utf-8')
        listed = service.handle('bd_inspect', {'query': 'edits', 'component': 'missing'}, 'test')
        self.assertIn('unreadable', listed['content'])

    def test_receipt_publication_failure_reconciles_without_replaying_setters(self):
        original_write = tools.write
        def failed_receipt(path, value):
            if path.name == 'receipt.json':
                raise OSError('Injected full disk')
            return original_write(path, value)
        with patch.object(tools, 'write', side_effect=failed_receipt), self.assertRaises(service.ToolError) as error:
            service.handle('bd_edit', self.args, 'test')
        self.assertEqual(error.exception.code, 'OUTCOME_UNKNOWN')
        change_id = next((self.store / 'class-edits').glob('edit_*')).name
        self.assertTrue((self.store / 'pending.json').exists())
        with patch.object(tools, 'invoke', side_effect=AssertionError('replay must stay offline')):
            self.assertTrue(service.handle('bd_edit', self.args, 'test')['is_error'])
            status = self.body(service.handle('bd_inspect', {'query': 'recovery', 'change_id': change_id}, 'test'))
        self.assertEqual(status['native_state'], 'retained_applied')
        resolved = self.body(service.handle('bd_inspect', {'query': 'recovery', 'change_id': change_id, 'reconcile': True}, 'test'))
        self.assertTrue(resolved['reconciled'])
        self.assertEqual(self.dispatches, ['retain_closed_delete_argument'])
        self.assertFalse((self.store / 'pending.json').exists())

    def test_inverse_pointer_failure_is_completed_on_replay_without_new_inverse(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        args = {'change_id': value['change_id'], 'request_id': 'inverse'}
        original_write = tools.write
        def failed_pointer(path, value):
            if path.name == 'inverse.json':
                raise OSError('Injected pointer failure')
            return original_write(path, value)
        with patch.object(tools, 'write', side_effect=failed_pointer), self.assertRaises(service.ToolError):
            service.handle('bd_revert', args, 'test')
        self.assertTrue((self.store / 'pending.json').exists())
        receipt = self.body(service.handle('bd_revert', args, 'test'))
        self.assertEqual(receipt['status'], 'verified_class_inverse')
        self.assertTrue((tools.root(value['change_id']) / 'inverse.json').exists())
        self.assertTrue((self.store / 'pending.json').exists())
        resolved = self.body(service.handle('bd_inspect', {'query': 'recovery', 'change_id': receipt['change_id'], 'reconcile': True}, 'test'))
        self.assertTrue(resolved['reconciled'])
        self.assertEqual(len(self.dispatches), 2)

    def test_partial_unknown_stays_quarantined_and_cross_session_reconcile_refuses(self):
        with patch.object(tools, 'invoke', side_effect=JournalError('OUTCOME_UNKNOWN', 'lost helper')):
            with self.assertRaises(service.ToolError):
                service.handle('bd_edit', self.args, 'test')
        change_id = next((self.store / 'class-edits').glob('edit_*')).name
        for session in ('test', 'foreign'):
            with self.subTest(session=session), self.assertRaises(service.ToolError):
                service.handle('bd_inspect', {'query': 'recovery', 'change_id': change_id, 'reconcile': True}, session)
        self.assertTrue((self.store / 'pending.json').exists())
        self.assertEqual(self.dispatches, [])

    def test_native_wal_from_another_change_cannot_claim_a_diff(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        path = tools.root(value['change_id']) / 'intent.json'
        intent = tools.load(path)
        intent['operation']['selector']['formal_alias'] += '00'
        path.unlink()
        tools.write(path, intent)
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_diff', {'change_id': value['change_id']}, 'test')
        self.assertEqual(error.exception.code, 'JOURNAL_CORRUPT')

    def test_reconcile_refuses_later_owner_change_and_foreign_barrier(self):
        value = self.body(service.handle('bd_edit', self.args, 'test'))
        self.current['owner_scopes_after_0']['Main']['generation'] += 1
        pending.begin(tools.domain(self.record), 'class_apply', str((tools.root(value['change_id']) / 'native.wal').resolve()))
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_inspect', {'query': 'recovery', 'change_id': value['change_id'], 'reconcile': True}, 'test')
        self.assertEqual(error.exception.code, 'PRECONDITION_CONFLICT')
        self.assertTrue((self.store / 'pending.json').exists())
        self.current = deepcopy(self.applied)
        marker = tools.load(self.store / 'pending.json')
        marker['native_token'] = 'foreign'
        (self.store / 'pending.json').write_text(json.dumps(marker), encoding='utf-8')
        with self.assertRaises(service.ToolError) as error:
            service.handle('bd_inspect', {'query': 'recovery', 'change_id': value['change_id'], 'reconcile': True}, 'test')
        self.assertEqual(error.exception.code, 'INSTANCE_OUTCOME_UNKNOWN')
        self.assertTrue((self.store / 'pending.json').exists())

    def test_backend_refuses_extra_or_multiple_operations_without_dispatch(self):
        for args in ({**self.args, 'operations': [self.op, self.op]}, {**self.args, 'force': True}):
            with self.assertRaises(service.ToolError):
                service.handle('bd_edit', args, 'test')
        self.assertEqual(self.dispatches, [])


if __name__ == '__main__':
    unittest.main()
