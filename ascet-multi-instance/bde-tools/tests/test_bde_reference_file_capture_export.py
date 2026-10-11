"""Offline export controls with synthetic pages; never creates a native adapter.

Historical defect evidence: read-only chunk da07b3 accepted foreign_profile,
foreign token/component and generation=True with all five list counts zero.
That pre-fix call performed zero native calls and zero file writes. It is not
replayed as a passing result; the rejection control below covers the repair.
Static host/source checks describe code structure, not native execution.
"""
from copy import deepcopy
import ast
from pathlib import Path
import re
import unittest
from unittest.mock import patch

from bd_reference_file_compact import expand
import bde_reference_file_capture_experiment as capture


ROOT = Path(__file__).resolve().parents[1]
V3 = 'native_reference_file_observation_v3'
IDENTITY = {
    'native_token': 'edit_' + 'a' * 64,
    'component_oid': 'synthetic-owner', 'generation': 7, 'profile_index': 6,
    'library_class': 'CTreestdFputFgetDLL',
    'leaf_class': 'CTreeLocalVariableAttributeInterface',
    'file_class': 'CTSpaceCheckingIFil',
    'unique_number': 4, 'key_length': 53, 'data_number': 10, 'index_number': 11,
}
FALSE_FLAGS = ('complete_before_authorized', 'write_authorized', 'inverse_authorized',
               'cross_process_atomic', 'terminal_semantics_verified', 'store_called', 'commit_called')


def fixture(version=V3):
    sections = {name: [] for name in capture.SECTIONS}
    if version == V3:
        sections['gv_images'] = []
    summary = dict(IDENTITY, profile=version, phase='observational_census_match',
                   census_matches=True, model_setters_called=0,
                   **{name: False for name in FALSE_FLAGS})
    summary['list_counts'] = {name: len(rows) for name, rows in sections.items()}
    command = dict(cmd='commit_reference_file_capture', token=IDENTITY['native_token'],
                   profile_index=IDENTITY['profile_index'], section='', offset=0, limit=64)
    return summary, sections, command


class SyntheticAdapter:
    def __init__(self, sections, change=None):
        self.sections = deepcopy(sections)
        self.change = change
        self.commands = []

    def _exchange(self, command):
        self.commands.append(deepcopy(command))
        section = command['section']
        offset = command['offset']
        total = len(self.sections[section])
        next_offset = min(offset + command['limit'], total)
        page = dict(profile='native_reference_file_page_v1',
                    native_token=IDENTITY['native_token'], profile_index=IDENTITY['profile_index'],
                    section=section, offset=offset, next_offset=next_offset,
                    total=total, rows=deepcopy(self.sections[section][offset:next_offset]))
        if self.change is not None:
            self.change(page, len(self.commands))
        return page


class CaptureExportTests(unittest.TestCase):
    def setUp(self):
        self.summary, self.sections, self.command = fixture()
        self.profile = deepcopy(IDENTITY)

    def export(self, adapter=None):
        if adapter is None:
            adapter = SyntheticAdapter(self.sections)
        with patch.object(capture.service, 'write_once') as written:
            result = capture.export_report(adapter, self.command, self.summary,
                                           Path('synthetic-pages-not-created'), self.profile)
        return result, adapter.commands, written

    def rejected_before_io(self, summary=None, command=None):
        adapter = SyntheticAdapter(self.sections)
        with patch.object(capture.service, 'write_once') as written:
            with self.assertRaises(ValueError):
                capture.export_report(adapter, self.command if command is None else command,
                                      self.summary if summary is None else summary,
                                      Path('synthetic-pages-not-created'), self.profile)
        self.assertEqual(adapter.commands, [])
        written.assert_not_called()

    def one_page(self):
        self.sections['events'] = [{'sequence': 1, 'state': 'sent'}]
        self.summary['list_counts']['events'] = 1

    def test_historical_foreign_zero_count_summary_is_now_rejected_without_io(self):
        foreign = deepcopy(self.summary)
        foreign.update(profile='foreign_profile', native_token='edit_' + 'b' * 64,
                       component_oid='foreign', generation=True, profile_index=True)
        self.rejected_before_io(foreign)

    def test_each_summary_namespace_and_original_file_identity_is_bound_before_io(self):
        for field, value in IDENTITY.items():
            changed = deepcopy(self.summary)
            changed[field] = value + 1 if type(value) is int else 'foreign-' + value
            with self.subTest(field=field):
                self.rejected_before_io(changed)

    def test_bool_and_float_cannot_alias_summary_integer_identity(self):
        for field, value in IDENTITY.items():
            if type(value) is not int:
                continue
            for invalid in (True, False, float(value), str(value)):
                changed = deepcopy(self.summary); changed[field] = invalid
                with self.subTest(field=field, invalid=invalid):
                    self.rejected_before_io(changed)

    def test_foreign_command_and_bool_profile_index_are_rejected_before_io(self):
        for field, invalid in [('token', 'edit_' + 'b' * 64), ('token', True),
                               ('profile_index', True), ('profile_index', 6.0), ('profile_index', 7)]:
            command = dict(self.command, **{field: invalid})
            with self.subTest(field=field, invalid=invalid):
                self.rejected_before_io(command=command)

    def test_missing_identity_or_unknown_version_is_rejected_before_io(self):
        for field in IDENTITY:
            value = deepcopy(self.summary); del value[field]
            with self.subTest(field=field): self.rejected_before_io(value)
        value = deepcopy(self.summary); value['profile'] = 'native_reference_file_observation_v4'
        self.rejected_before_io(value)

    def test_authority_and_setter_flags_are_not_bool_int_equivalent(self):
        for field in FALSE_FLAGS:
            for invalid in (True, 0, None):
                value = deepcopy(self.summary); value[field] = invalid
                with self.subTest(field=field, invalid=invalid): self.rejected_before_io(value)
        for invalid in (False, True, 0.0, 1, -1):
            value = deepcopy(self.summary); value['model_setters_called'] = invalid
            with self.subTest(setters=invalid): self.rejected_before_io(value)

    def test_v3_requires_exact_catalog_partition_before_any_page(self):
        for missing in self.sections:
            value = deepcopy(self.summary); del value['list_counts'][missing]
            with self.subTest(missing=missing): self.rejected_before_io(value)
        value = deepcopy(self.summary); value['list_counts']['foreign'] = 0
        self.rejected_before_io(value)

    def test_historical_versions_cannot_silently_transport_v3_catalog(self):
        for version in ('native_reference_file_observation_v1', 'native_reference_file_observation_v2'):
            value = deepcopy(self.summary); value['profile'] = version
            with self.subTest(version=version): self.rejected_before_io(value)
            del value['list_counts']['gv_images']
            sections = capture.validate_summary(value, self.profile)
            self.assertEqual(sections, capture.SECTIONS)

    def test_every_partition_count_is_strict_and_bounded(self):
        for field in self.sections:
            for invalid in (True, False, -1, 1000001, 0.0, '0', None):
                value = deepcopy(self.summary); value['list_counts'][field] = invalid
                with self.subTest(field=field, invalid=invalid): self.rejected_before_io(value)

    def test_empty_summary_has_no_io_and_preserves_only_observational_authority(self):
        result, commands, written = self.export()
        self.assertEqual(commands, []); written.assert_not_called()
        for name in self.sections: self.assertEqual(result[name], [])
        self.assertNotIn('list_counts', result); self.assertNotIn('profile_index', result)
        for name in FALSE_FLAGS: self.assertIs(result[name], False)

    def test_v3_pages_preserve_all_rows_order_and_catalog_roundtrip(self):
        first, second = [0] * 512, [0] * 512
        second[500] = 37
        self.sections['gv_images'] = [first, second]
        self.sections['events'] = [dict(sequence=n, state='observed', gv_state='observed',
                                       gv_image_index=1 + n % 2) for n in range(1, 66)]
        self.sections['records'] = [dict(synthetic_record=n) for n in range(17)]
        self.sections['keys_first'] = [[n] for n in range(3)]
        self.sections['keys_second'] = [[n] for n in range(3)]
        self.summary['list_counts'] = {name: len(rows) for name, rows in self.sections.items()}
        before = deepcopy((self.summary, self.sections, self.command, self.profile))
        result, commands, written = self.export()
        for name, rows in self.sections.items(): self.assertEqual(result[name], rows)
        self.assertEqual([(c['section'], c['offset'], c['limit']) for c in commands],
                         [('events', 0, 64), ('events', 64, 64),
                          ('records', 0, 8), ('records', 8, 8), ('records', 16, 8),
                          ('keys_first', 0, 64), ('keys_second', 0, 64), ('gv_images', 0, 64)])
        restored = expand(result)
        self.assertEqual(len(restored['events']), 65)
        for n, event in enumerate(restored['events'], 1):
            self.assertEqual(event['gv_raw'], [first, second][n % 2])
        self.assertEqual(written.call_count, 8)
        self.assertEqual((self.summary, self.sections, self.command, self.profile), before)

    def test_missing_rows_and_page_fields_are_rejected_and_retained_once(self):
        self.one_page()
        for change in (lambda p, _: p.pop('rows'), lambda p, _: p.update(rows=[]),
                       lambda p, _: p.update(rows=None), lambda p, _: p.update(next_offset=0),
                       lambda p, _: p.update(foreign='field')):
            adapter = SyntheticAdapter(self.sections, change)
            with patch.object(capture.service, 'write_once') as written:
                with self.assertRaises(ValueError):
                    capture.export_report(adapter, self.command, self.summary, Path('.'), self.profile)
            self.assertEqual(len(adapter.commands), 1); self.assertEqual(written.call_count, 1)

    def test_page_identity_bool_numbers_and_wrong_section_are_rejected(self):
        self.one_page()
        mutations = [('profile', 'foreign'), ('native_token', 'edit_' + 'b' * 64),
                     ('profile_index', True), ('profile_index', 6.0), ('section', 'records'),
                     ('offset', False), ('offset', 1), ('total', True), ('total', 2),
                     ('next_offset', True), ('next_offset', 2)]
        for field, invalid in mutations:
            adapter = SyntheticAdapter(self.sections, lambda page, _, k=field, v=invalid: page.update({k: v}))
            with self.subTest(field=field, invalid=invalid), patch.object(capture.service, 'write_once'):
                with self.assertRaises(ValueError):
                    capture.export_report(adapter, self.command, self.summary, Path('.'), self.profile)
            self.assertEqual(len(adapter.commands), 1)

    def test_out_of_order_page_is_rejected_without_retry(self):
        self.sections['records'] = list(range(9)); self.summary['list_counts']['records'] = 9
        adapter = SyntheticAdapter(self.sections, lambda p, _: p.update(offset=8, next_offset=9, rows=[8]))
        with patch.object(capture.service, 'write_once'), self.assertRaises(ValueError):
            capture.export_report(adapter, self.command, self.summary, Path('.'), self.profile)
        self.assertEqual(len(adapter.commands), 1)

    def test_replayed_first_page_instead_of_second_is_rejected(self):
        self.sections['records'] = list(range(9)); self.summary['list_counts']['records'] = 9
        first_page = []
        def replay(page, ordinal):
            if ordinal == 1: first_page.append(deepcopy(page))
            else: page.clear(); page.update(first_page[0])
        adapter = SyntheticAdapter(self.sections, replay)
        with patch.object(capture.service, 'write_once'), self.assertRaises(ValueError):
            capture.export_report(adapter, self.command, self.summary, Path('.'), self.profile)
        self.assertEqual([c['offset'] for c in adapter.commands], [0, 8])

    def test_transport_failure_is_propagated_once_without_replay(self):
        self.one_page()
        def lost_reply(page, ordinal):
            raise TimeoutError('synthetic uncertain page reply')
        adapter = SyntheticAdapter(self.sections, lost_reply)
        with patch.object(capture.service, 'write_once') as written, self.assertRaises(TimeoutError):
            capture.export_report(adapter, self.command, self.summary, Path('.'), self.profile)
        self.assertEqual(len(adapter.commands), 1); written.assert_not_called()

    def test_partial_unknown_observation_is_exported_without_claiming_eof(self):
        self.one_page()
        self.summary.update(phase='failed_incomplete', census_matches=False)
        self.sections['failures'] = ['zero return with unclassified GV']
        self.summary['list_counts']['failures'] = 1
        result, commands, _ = self.export()
        self.assertEqual(result['phase'], 'failed_incomplete')
        self.assertIs(result['census_matches'], False)
        self.assertIs(result['terminal_semantics_verified'], False)
        self.assertNotIn('eof_verified', result)
        self.assertTrue(all(c['action'] == 'page' for c in commands))


class CaptureHostStaticControls(unittest.TestCase):
    def test_unknown_exit_precedes_every_main_finally_remote_cleanup(self):
        source = (ROOT / 'scripts/AscetStructureSession.cs').read_text(encoding='utf-8-sig')
        main = source[source.index('    static void Main()'):]
        cleanup = main[main.index('        finally'):]
        # Static boundary check only; no C# execution or finalizer behavior is claimed.
        active = re.sub(r'//[^\n]*', '', cleanup)
        self.assertRegex(active, r'finally\s*\{\s*if\s*\(referenceFileQueryUnknown\)\s*Environment.Exit\(0\);')
        exit_position = active.index('Environment.Exit(0)')
        for remote in ('ascet.nullHandle()', 'ascet.createControlMessageCall(', 'api.finalize()',
                       'GC.Collect()', 'GC.WaitForPendingFinalizers()', 'ascet.DisconnectFromTool()'):
            self.assertGreater(active.index(remote), exit_position)

    def test_sdk_archive_uses_exact_compile_setting_and_sibling_runtime_dll(self):
        capture_tree = ast.parse((ROOT / 'scripts/bde_reference_file_capture_experiment.py').read_text(encoding='utf-8-sig'))
        bridge_tree = ast.parse((ROOT / 'scripts/bd_native_structure.py').read_text(encoding='utf-8-sig'))
        bridge = next(n for n in bridge_tree.body if isinstance(n, ast.FunctionDef) and n.name == 'compile_bridge')
        bridge_dll = next(n.value for n in bridge.body if isinstance(n, ast.Assign)
                          and any(isinstance(t, ast.Name) and t.id == 'dll' for t in n.targets))
        main = next(n for n in capture_tree.body if isinstance(n, ast.FunctionDef) and n.name == 'main')
        archive_loop = next(n for n in ast.walk(main) if isinstance(n, ast.For)
                            and ast.unparse(n.target) == '(role, dependency)')
        roles = {row.elts[0].value: row.elts[1] for row in archive_loop.iter.elts}
        self.assertEqual(set(roles), {'compile_sdk', 'runtime_sdk'})
        self.assertEqual(ast.dump(roles['compile_sdk']), ast.dump(bridge_dll))
        self.assertEqual(ast.unparse(roles['runtime_sdk']), "binary.with_name('Etas.AscetNET.dll')")
        loop_code = ast.unparse(archive_loop)
        self.assertIn('raw = dependency.read_bytes()', loop_code)
        self.assertIn('sha256=service.digest(raw)', loop_code)
        self.assertIn("(args.output / (role + '.dll')).write_bytes(raw)", loop_code)
        whole = ast.unparse(main)
        self.assertIn("service.write_once(args.output / 'external-inputs.json', external)", whole)
        self.assertIn("service.digest(Path(row['path']).read_bytes()) == row['sha256']", whole)
        self.assertIn("if not result['sdk_sources_unchanged']:", whole)


if __name__ == '__main__':
    unittest.main()
