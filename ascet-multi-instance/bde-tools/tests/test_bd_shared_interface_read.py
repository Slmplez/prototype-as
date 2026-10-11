"""A failed shared-interface read must not publish a stale structural snapshot."""
from contextlib import nullcontext
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_structural_tools as structural


class SharedInterfaceReadTests(unittest.TestCase):
    def capture_error(self, message):
        with tempfile.TemporaryDirectory() as folder:
            store = Path(folder)
            (store / 'raw').mkdir()

            def failed_probe(command, timeout, build_step=False):
                if build_step:
                    return
                Path(command[3]).write_text(json.dumps({'status': 'error', 'error': message}), encoding='utf-8')
                service.fail('BRIDGE_FAILED', 'native probe failed', exit_code=1)

            with patch.object(service, 'STORE', store), patch.object(service, 'ensure_probe'), \
                    patch.object(service, 'live_lock', nullcontext), \
                    patch.object(service, 'run_process', side_effect=failed_probe), \
                    patch.object(service, 'commit_observation') as publish:
                with self.assertRaises(service.ToolError) as error:
                    structural.capture('BDE_Tool_Experiments\\Trial_InterfaceCaller_test', 'session')
                publish.assert_not_called()
                return error.exception

    def test_shared_signature_requires_explicit_refresh(self):
        error = self.capture_error('BDE_STRUCTURE_ERROR: BDE_SHARED_INTERFACE_CHANGED: old caller pins')
        self.assertEqual(error.code, 'INTERFACE_REFRESH_REQUIRED')
        self.assertIn('old caller pins', error.details['diagnostic'])
        self.assertEqual(error.details['model_setters_called'], 0)

    def test_unstored_pin_cannot_be_published_as_pnil(self):
        error = self.capture_error('BDE_STRUCTURE_ERROR: BDE_UNSTORED_PIN: no identity')
        self.assertEqual(error.code, 'INTERFACE_REFRESH_REQUIRED')

    def test_other_bridge_failure_keeps_original_code(self):
        error = self.capture_error('No ASCET handle')
        self.assertEqual(error.code, 'BRIDGE_FAILED')


if __name__ == '__main__':
    unittest.main()
