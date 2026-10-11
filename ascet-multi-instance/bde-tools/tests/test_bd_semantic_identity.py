"""Semantic reads must retain exact endpoint identity before publication."""
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service


class SemanticIdentityTests(unittest.TestCase):
    def test_invalid_epoch_cannot_publish_snapshot(self):
        with tempfile.TemporaryDirectory() as folder, patch.object(service, 'STORE', Path(folder)):
            (service.STORE / 'raw').mkdir()
            for epoch in (None, '', '0/2026-10-02T08:23:11.2491625Z', '123/invalid', True):
                def probe(command, timeout):
                    Path(command[2]).write_text(json.dumps({'status': 'ok', 'ascet_process_epoch': epoch}), encoding='utf-8')
                with self.subTest(epoch=epoch), patch.object(service, 'ensure_probe', return_value=Path('probe.exe')), \
                        patch.object(service, 'run_process', side_effect=probe), \
                        patch.object(service, 'commit_observation', side_effect=AssertionError('Cannot publish')):
                    with self.assertRaises(service.ToolError) as error:
                        service.capture_locked('Library\\Component', 'test')
                    self.assertEqual(error.exception.code, 'IDENTITY_UNRESOLVED')

    @unittest.skipUnless(os.name == 'nt', 'Installed Windows .NET compiler required')
    def test_native_listener_parser_selects_only_exact_loopback_listener(self):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        with tempfile.TemporaryDirectory() as folder:
            binary = Path(folder) / 'EndpointTests.exe'
            shutil.copyfile(dll, Path(folder) / dll.name)
            result = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetReadEndpointTests',
                '/r:System.Web.Extensions.dll', '/r:' + str(dll), '/out:' + str(binary),
                str(service.ROOT / 'scripts/AscetReadProbe.cs'), str(service.ROOT / 'scripts/AscetReadEndpointTests.cs')],
                capture_output=True, text=True, timeout=30)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            result = subprocess.run([str(binary)], capture_output=True, text=True, timeout=10)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            self.assertIn('13 native endpoint parser cases passed', result.stdout)


if __name__ == '__main__':
    unittest.main()
