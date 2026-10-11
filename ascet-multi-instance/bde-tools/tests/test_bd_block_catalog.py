"""Offline operation-discovery and native-source drift checks, never live acceptance."""
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
from bd_block_catalog import catalog
from bde_function_inventory import audit, input_counts, lookup_table


class BlockCatalogTests(unittest.TestCase):
    def test_scope_and_owner_restrictions_do_not_grant_unimplemented_routes(self):
        message = catalog(block_kind='receive_message', owner_kind='class')['families'][0]
        self.assertEqual(message['creation_reasons'], ['module_owner_required'])
        message = catalog(block_kind='receive_message', owner_kind='module', diagram_scope='child')['families'][0]
        self.assertEqual(message['creation_route'], 'declared_isolated_route')
        self.assertEqual(message['field_operations'], [])
        array = catalog(block_kind='array', owner_kind='module', diagram_scope='child')['families'][0]
        self.assertIn('child_creation_route_missing', array['creation_reasons'])
        self.assertEqual(array['field_operations'], [])
        hierarchy = catalog(block_kind='hierarchy', owner_kind='class')['families'][0]
        self.assertEqual(hierarchy['occurrence_operations'], [])
        self.assertIn('delete_hierarchy_port', hierarchy['interface_operations'])

    def test_enum_message_and_shared_declaration_contracts_are_explicit(self):
        enum = catalog(block_kind='enumeration', owner_kind='module')['families'][0]
        self.assertIn('new_definition', enum['creation']['optional'])
        self.assertIn('delete_shared_declaration', enum['unavailable'])
        message = catalog(block_kind='send_message', owner_kind='module')['families'][0]
        self.assertIn('enum', message['creation']['model_types'])
        self.assertIn('set_message_channel', message['unavailable'])
        self.assertFalse(catalog()['write_authorized'])
        self.assertFalse(catalog()['native_inventory_complete'])

    def test_inspector_pages_complete_catalog_without_native_io(self):
        with tempfile.TemporaryDirectory() as folder:
            store = Path(folder)
            for name in ('documents', 'cursors', 'delivery'): (store/name).mkdir()
            with patch.object(service, 'STORE', store), patch.object(service, 'live_lock', side_effect=AssertionError('Unexpected native access')), \
                    patch.object(service, 'run_process', side_effect=AssertionError('Unexpected process')):
                reply = service.handle('bd_inspect', {'query':'block_types', 'owner_kind':'module', 'max_bytes':2048}, 'catalog-test')
                pages = []
                while True:
                    self.assertLessEqual(len(reply['content'].encode('utf-8')), 2048)
                    header, text = reply['content'].split('\n\n', 1)
                    meta = json.loads(header)
                    pages.append(text)
                    if not meta['page']['has_more']: break
                    reply = service.handle('bd_read', {'cursor':meta['page']['next_cursor']}, 'catalog-test')
            observed = json.loads(''.join(pages))
            self.assertEqual(observed, catalog(owner_kind='module'))
            self.assertGreater(len(pages), 1)
            self.assertEqual(observed['native_requests'], 0)

    def test_invalid_queries_refuse_before_document_or_native_dispatch(self):
        invalid = [
            {'query':'block_types','owner_kind':'project'},
            {'query':'block_types','diagram_scope':'Main/h5'},
            {'query':'block_types','block_kind':'native_selector'},
            {'query':'block_types','snapshot':'s_'+'1'*32},
            {'query':'capabilities','block_kind':'array'},
            {'query':'block_types','block_kind':None},
        ]
        with patch.object(service, 'paged', side_effect=AssertionError('Unexpected file access')), \
                patch.object(service, 'run_process', side_effect=AssertionError('Unexpected process')):
            for request in invalid:
                with self.subTest(request=request), self.assertRaises(service.ToolError) as raised:
                    service.handle('bd_inspect', request, 'catalog-test')
                self.assertEqual(raised.exception.code, 'INVALID_INPUT')


class NativeInventoryTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls): cls.inventory = audit()

    def test_all_declared_factories_and_native_operator_contracts_are_accounted(self):
        value = self.inventory
        self.assertTrue(value['static_contract_checks_passed'])
        self.assertTrue(value['operators']['backend_matches'])
        self.assertTrue(value['controls']['backend_matches'])
        self.assertTrue(value['creation_schema']['backend_matches'])
        self.assertEqual(value['missing_native_factory_bindings'], [])
        self.assertEqual(len(value['families']), 26)
        self.assertEqual(sum(len(row['contexts']) for row in value['families']), 104)

    def test_gui_candidates_prevent_false_exhaustive_claim(self):
        value = self.inventory
        self.assertFalse(value['native_inventory_complete'])
        self.assertFalse(value['full_delivery'])
        self.assertEqual(value['native_requests'], 0)
        self.assertIn('junction', {row['family'] for row in value['gui_factory_candidates']})
        self.assertIn('return', {row['family'] for row in value['gui_factory_candidates']})
        self.assertTrue(all(row['line'] > 0 for row in value['gui_factory_candidates']))

    def test_partial_or_ambiguous_native_lookup_is_rejected(self):
        for body in ("keyArray: (#('a')); valueArray: (#(nil))",
                     "keyArray: (#('a' 'a')); valueArray: (#('A' 'B'))",
                     "keyArray: (#('a')); valueArray: (#('A' 'B'))"):
            with self.subTest(body=body), self.assertRaises(ValueError): lookup_table(body)
        with self.assertRaises(ValueError): input_counts("at: ('+') put: (nil). at: ('+') put: (2).")
        self.assertEqual(input_counts("at: ('!!=') put: (2)."), {'!=':2})


if __name__ == '__main__': unittest.main()
