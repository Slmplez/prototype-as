"""The fresh identity read path cannot weaken edit or inverse preconditions."""
from contextlib import nullcontext
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_class_tools as tools
import bd_service as service
from bd_edit_journal import JournalError


class ClassReadStrategyTests(unittest.TestCase):
    def test_native_read_identity_refuses_every_mutation_command_before_build_or_endpoint(self):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / 'input.json'
            tools.write(path, {'identity_resolution': 'native_read', 'caller_resolution': 'native'})
            with patch.object(tools, 'build', side_effect=AssertionError('Must refuse before building')):
                for command in ('add', 'recover', 'retain_closed_delete_argument', 'inverse_retained'):
                    with self.subTest(command=command), self.assertRaises(JournalError) as error:
                        tools.invoke(path, Path(folder) / 'output.json', command)
                    self.assertEqual(error.exception.code, 'INVALID_INPUT')

    def test_read_identity_cannot_reserve_wal_or_quarantine(self):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / 'input.json'
            tools.write(path, {'identity_resolution': 'native_read', 'caller_resolution': 'native'})
            with patch.object(tools, 'build', side_effect=AssertionError('Must refuse before building')):
                for args in ({'wal': Path(folder) / 'wal'}, {'quarantine': Path(folder) / 'pending'}):
                    with self.subTest(args=args), self.assertRaises(JournalError) as error:
                        tools.invoke(path, Path(folder) / 'output.json', 'observe', **args)
                    self.assertEqual(error.exception.code, 'INVALID_INPUT')

    def test_unknown_identity_mode_and_non_native_caller_resolution_refuse(self):
        with tempfile.TemporaryDirectory() as folder:
            path = Path(folder) / 'input.json'
            with patch.object(tools, 'build', side_effect=AssertionError('Must refuse before building')):
                for index, value in enumerate(({'identity_resolution': 'anything', 'caller_resolution': 'native'},
                                               {'identity_resolution': 'native_read'})):
                    input_path = path.with_name('input-' + str(index) + '.json')
                    tools.write(input_path, value)
                    with self.subTest(value=value), self.assertRaises(JournalError) as error:
                        tools.invoke(input_path, Path(folder) / 'output.json', 'observe')
                    self.assertEqual(error.exception.code, 'INVALID_INPUT')

    def test_default_capture_acquires_identity_in_complete_read_and_rejects_bad_bindings(self):
        evidence = service.ROOT / 'analysis/bde-experiments/2026-10-02/bde-class-preview-tools-03/state/raw'
        raw_path = next(evidence.glob('class_observe_*/raw.json'))
        raw = json.loads(raw_path.read_text(encoding='utf-8'))
        requests = []

        def invoke(inputs, output, command):
            requests.append((tools.load(inputs), command))
            return deepcopy(raw), 0

        with tempfile.TemporaryDirectory() as folder:
            store = Path(folder)
            for name in ('raw', 'snapshots', 'changes'):
                (store / name).mkdir()
            with patch.object(service, 'STORE', store), patch.object(service, 'live_lock', nullcontext), \
                    patch.dict('os.environ', {}, clear=True), patch.object(tools, 'invoke', side_effect=invoke), \
                    patch('bd_class_impact_tools.capture_raw', side_effect=AssertionError('No redundant identity probe')), \
                    patch('bd_class_impact_tools.validate_observation', side_effect=ValueError('bad native caller binding')):
                with self.assertRaises(JournalError) as error:
                    tools.capture(raw['component'], 'test')
                self.assertEqual(error.exception.code, 'READ_INCOMPLETE')
                self.assertEqual(requests[0], ({'status': 'ok', 'component': raw['component'],
                    'caller_resolution': 'native', 'identity_resolution': 'native_read'}, 'observe'))
                self.assertFalse(any((store / 'snapshots').iterdir()))


if __name__ == '__main__':
    unittest.main()
