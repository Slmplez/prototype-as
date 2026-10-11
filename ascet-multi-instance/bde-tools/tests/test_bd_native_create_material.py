"""Preparation routing and fault boundaries; no live ASCET calls."""
import unittest
from unittest.mock import Mock, patch

from bd_native_structure import NativeStructureAdapter


class CreationPreparationTests(unittest.TestCase):
    domain = {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'p'}
    token = 'edit_' + 'a' * 64
    arguments = [[], 'literal', '1', 320, 240]

    def adapter(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_capture', environment={})
        adapter.create_material_capable = adapter.connect_history_capable = True
        adapter._ensure_open = Mock()
        adapter._preparation = Mock(return_value={'targets': [], 'entries': []})
        adapter.discard_prepared = Mock(return_value={'released': True})
        return adapter

    def prepare(self, adapter):
        with patch('bd_native_structure.bd_instance_pending.check'):
            return adapter.prepare(self.domain, self.token, 'create_block', self.arguments)

    def test_create_with_connect_enabled_never_dispatches_connect_capture(self):
        adapter = self.adapter()
        adapter._exchange = Mock(side_effect=[{'prepared': True}, {'capture': 'create'}])
        with patch('bd_create_material.validate', return_value={'validated': True}) as validate:
            before = self.prepare(adapter)
        self.assertEqual(before, {'targets': [], 'entries': []})
        self.assertEqual([c.args[0]['cmd'] for c in adapter._exchange.call_args_list],
                         ['prepare', 'create_material'])
        validate.assert_called_once_with({'capture': 'create'}, token=self.token,
                                        oid='oid', kind='literal', phase='prepared')
        self.assertIsNone(adapter.connect_material_prepared)
        adapter.discard_prepared.assert_not_called()

    def test_bad_capture_discards_only_the_received_prepared_token(self):
        adapter = self.adapter()
        adapter._exchange = Mock(side_effect=[{'prepared': True}, {'capture': 'bad'}])
        with patch('bd_create_material.validate', side_effect=ValueError('invalid capture')):
            with self.assertRaisesRegex(ValueError, 'invalid capture'):
                self.prepare(adapter)
        adapter.discard_prepared.assert_called_once_with(self.domain, self.token)
        self.assertEqual(adapter.prepare_cleanup, {'released': True})
        self.assertEqual(len(adapter._exchange.call_args_list), 2)

    def test_cleanup_failure_preserves_both_errors(self):
        adapter = self.adapter()
        adapter._exchange = Mock(side_effect=[{'prepared': True}, {'capture': 'bad'}])
        adapter.discard_prepared.side_effect = RuntimeError('cleanup unavailable')
        with patch('bd_create_material.validate', side_effect=ValueError('invalid capture')):
            with self.assertRaisesRegex(RuntimeError, 'invalid capture.*cleanup unavailable'):
                self.prepare(adapter)
        adapter.discard_prepared.assert_called_once_with(self.domain, self.token)

    def test_unknown_prepare_reply_does_not_guess_cleanup_or_retry(self):
        adapter = self.adapter()
        adapter._exchange = Mock(side_effect=TimeoutError('prepare reply lost'))
        with self.assertRaisesRegex(TimeoutError, 'prepare reply lost'):
            self.prepare(adapter)
        adapter._exchange.assert_called_once()
        adapter.discard_prepared.assert_not_called()

    def test_original_declaration_finalization_is_default_off_and_requires_all_profiles(self):
        self.assertFalse(NativeStructureAdapter('BDE_Tool_Experiments\\Trial_capture',environment={}).create_declaration_finalize_capable)
        enabled=dict(ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CREATE_MATERIAL='identity_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_FINALIZE='original_release_v1',
            ASCET_BD_CREATE_DECLARATIONS='body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='body_original_release_v1')
        self.assertTrue(NativeStructureAdapter('BDE_Tool_Experiments\\Trial_capture',environment=enabled).create_declaration_finalize_capable)
        for missing in ['ASCET_BD_CREATE_FINALIZE','ASCET_BD_CREATE_DECLARATION_HISTORY']:
            environment={k:v for k,v in enabled.items() if k!=missing}
            with self.assertRaisesRegex(ValueError,'requires'):
                NativeStructureAdapter('BDE_Tool_Experiments\\Trial_capture',environment=environment)

    def test_unknown_original_declaration_finalization_profile_refuses_before_io(self):
        with self.assertRaisesRegex(ValueError,'Unknown'):
            NativeStructureAdapter('BDE_Tool_Experiments\\Trial_capture',environment={'ASCET_BD_CREATE_DECLARATION_FINALIZE':'future'})


if __name__ == '__main__':
    unittest.main()
