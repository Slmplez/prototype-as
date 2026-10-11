"""Exercise the actual C# dispatch closure gate using recorded native bindings."""
from copy import deepcopy
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest


class ResourceClosureTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.root = Path(__file__).resolve().parents[1]
        cls.temp = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.temp.cleanup)
        cls.binary = Path(cls.temp.name) / 'closure.exe'
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        result = subprocess.run([str(compiler), '/nologo', '/r:System.Web.Extensions.dll', f'/out:{cls.binary}',
            str(cls.root / 'scripts/AscetClassResourceClosure.cs'),
            str(cls.root / 'scripts/AscetClassResourceClosureTest.cs')], capture_output=True, text=True, timeout=30)
        if result.returncode:
            raise AssertionError(result.stdout + result.stderr)
        study = json.loads((cls.root / 'analysis/bde-experiments/2026-10-02/bde-class-journal-primary-02/study-0.json').read_text(encoding='utf-8'))
        cls.sample = study['before']['discovery']
        # Older evidence lacks resource_scopes; the public tree supplies an independent oracle.
        public = {row['component']: row['public_tree'] for row in study['before']['callers']}
        for row in cls.sample['callers']:
            row['resource_scopes'] = sorted(public[row['component']])
            row['non_bde_diagrams'] = []

    def setUp(self):
        self.discovery = deepcopy(self.sample)

    def invoke(self, value=None, read_only=False):
        value = self.discovery if value is None else value
        source = Path(self.temp.name) / 'input.json'
        source.write_text(json.dumps({'discovery': value, 'definition_oid': self.sample['definition_oid']}), encoding='utf-8')
        return subprocess.run([str(self.binary), str(source), *(['read'] if read_only else [])], capture_output=True, text=True, timeout=10)

    def rejected(self, text):
        result = self.invoke()
        self.assertEqual(result.returncode, 1, result.stdout)
        self.assertIn(text, result.stdout)

    def test_pin_deletion_and_layout_do_not_change_binding_closure(self):
        baseline = self.invoke()
        self.assertEqual(baseline.returncode, 0, baseline.stdout)
        for owner in self.discovery['callers']:
            for scope in owner['scopes']:
                for node in scope['occurrences']:
                    node['pins'] = []
        self.assertEqual(self.invoke().stdout, baseline.stdout)

    def test_owner_order_is_irrelevant(self):
        baseline = self.invoke().stdout
        self.discovery['callers'].reverse()
        for owner in self.discovery['callers']:
            owner['resource_scopes'].reverse()
            owner['scopes'].reverse()
            owner['declarations'].reverse()
            for scope in owner['scopes']:
                scope['occurrences'].reverse()
        self.assertEqual(self.invoke().stdout, baseline)

    def test_new_owner_changes_closure(self):
        baseline = self.invoke().stdout
        owner = deepcopy(self.discovery['callers'][0])
        owner['oid'] += '-new'
        owner['component'] += '_new'
        self.discovery['callers'].append(owner)
        changed = self.invoke()
        self.assertEqual(changed.returncode, 0)
        self.assertNotEqual(changed.stdout, baseline)

    def test_new_empty_scope_changes_closure(self):
        baseline = self.invoke().stdout
        self.discovery['callers'][0]['resource_scopes'].append('Main/h999')
        changed = self.invoke()
        self.assertEqual(changed.returncode, 0)
        self.assertNotEqual(changed.stdout, baseline)

    def test_occurrence_model_binding_changes_closure(self):
        baseline = self.invoke().stdout
        owner = self.discovery['callers'][0]
        declaration = deepcopy(owner['declarations'][0])
        declaration['ref'] += '01'
        owner['declarations'].append(declaration)
        owner['scopes'][0]['occurrences'][0]['model_ref'] = declaration['ref']
        self.assertNotEqual(self.invoke().stdout, baseline)

    def test_business_owner_refused(self):
        self.discovery['callers'][0]['component'] = 'PlatformLibrary\\Business'
        self.rejected('isolated supported resource domain')

    def test_nested_directory_prefix_refused(self):
        self.discovery['callers'][0]['component'] += '\\Business'
        self.rejected('isolated supported resource domain')

    def test_unknown_reference_refused(self):
        self.discovery['excluded'].append({'oid': 'other', 'reason': 'not_code_owner'})
        self.rejected('Unsupported Class reference')

    def test_read_preserves_project_reference_without_granting_write_authority(self):
        baseline = self.invoke(read_only=True).stdout
        self.discovery['excluded'].append({'oid': 'project-oid', 'native_class': 'SGProject', 'reason': 'not_code_owner'})
        observed = self.invoke(read_only=True)
        self.assertEqual(observed.returncode, 0, observed.stdout)
        self.assertIn('project-oid', observed.stdout)
        self.assertNotEqual(observed.stdout, baseline)
        self.rejected('Unsupported Class reference')

    def test_read_still_rejects_duplicate_reference_and_business_caller(self):
        self.discovery['excluded'].append(deepcopy(self.discovery['excluded'][0]))
        self.assertEqual(self.invoke(read_only=True).returncode, 1)
        self.discovery = deepcopy(self.sample)
        self.discovery['callers'][0]['component'] = 'PlatformLibrary\\Business'
        self.assertEqual(self.invoke(read_only=True).returncode, 1)

    def test_unclassified_code_owner_reference_refused(self):
        self.discovery['excluded'].append({'oid': 'other', 'reason': 'no_direct_class_declaration'})
        self.rejected('Unsupported Class reference')

    def test_declaration_only_owner_refused(self):
        self.discovery['callers'][0]['scopes'] = []
        self.rejected('Declaration-only')

    def test_non_bde_diagram_refused(self):
        self.discovery['callers'][0]['non_bde_diagrams'] = ['ESDL']
        self.rejected('non-BDE')

    def test_other_root_refused(self):
        self.discovery['callers'][0]['resource_scopes'].append('Other')
        self.rejected('Unsupported or duplicate')

    def test_scope_parent_missing_refused(self):
        owner = next(row for row in self.discovery['callers'] if len(row['resource_scopes']) > 1)
        owner['resource_scopes'].remove('Main/h1')
        self.rejected('Incomplete')

    def test_occurrence_duplicate_refused(self):
        scope = self.discovery['callers'][0]['scopes'][0]
        scope['occurrences'].append(deepcopy(scope['occurrences'][0]))
        self.rejected('duplicate Class occurrence')

    def test_definition_identity_refused(self):
        self.discovery['definition_oid'] = 'different'
        self.rejected('definition identity')

    def test_capacity_refused_before_native_preparation(self):
        original = deepcopy(self.discovery['callers'][0])
        for i in range(6):
            owner = deepcopy(original)
            owner['oid'] += str(i)
            owner['component'] += str(i)
            self.discovery['callers'].append(owner)
        self.rejected('one to seven')


if __name__ == '__main__':
    unittest.main()
