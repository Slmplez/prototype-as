import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_class_tools as tools
import bde_class_interface_study as study


class ClassEndpointTests(unittest.TestCase):
    def test_listener_identity_uses_configured_endpoint_and_default(self):
        with patch.dict(os.environ, {}, clear=True), patch.object(study, 'native_endpoint_process', return_value=123) as listener:
            self.assertEqual(study.endpoint_process(), 123)
            listener.assert_called_once_with(32503)
        with patch.dict(os.environ, {'ASCET_BD_ENDPOINT_PORT': '32641'}), patch.object(study, 'native_endpoint_process', return_value=456) as listener:
            self.assertEqual(study.endpoint_process(), 456)
            listener.assert_called_once_with(32641)

    def test_invalid_port_refuses_before_native_listener_lookup(self):
        with patch.dict(os.environ, {'ASCET_BD_ENDPOINT_PORT': 'invalid'}), patch.object(study, 'native_endpoint_process') as listener:
            with self.assertRaises(ValueError):
                study.endpoint_process()
            listener.assert_not_called()

    def test_bridge_keeps_listener_endpoint_and_proxy_separate(self):
        with tempfile.TemporaryDirectory() as folder:
            folder = Path(folder)
            source, output = folder / 'input.json', folder / 'raw.json'
            tools.write(source, {'ascet_process_epoch': '456/epoch'})
            tools.write(output, {'ascet_process_epoch': '456/epoch'})
            with (patch.dict(os.environ, {'ASCET_BD_ENDPOINT_PORT': '32641', 'ASCET_BD_PROBE_PORT': '40001'}),
                  patch.object(study, 'endpoint_process', return_value=456),
                  patch.object(tools, 'build', return_value=Path('fixed.exe')),
                  patch('subprocess.run') as runner):
                runner.return_value.returncode = 0
                result, code = tools.invoke(source, output, 'observe')
                self.assertEqual(code, 0)
                self.assertEqual(result['ascet_process_epoch'], '456/epoch')
                self.assertEqual(runner.call_args.kwargs['env']['ASCET_BD_ENDPOINT_PORT'], '32641')
                self.assertEqual(runner.call_args.kwargs['env']['ASCET_BD_PROBE_PORT'], '40001')
                self.assertEqual(runner.call_args.kwargs['env']['ASCET_BD_STUDY_ENDPOINT_PID'], '456')


if __name__ == '__main__':
    unittest.main()
