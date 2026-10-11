"""Compile and execute native transport regressions without an ASCET connection."""
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import unittest

import bd_service as service


@unittest.skipUnless(os.name == 'nt', 'Windows SDK transport test')
class NativeTransportTests(unittest.TestCase):
    def test_tagged_values_and_parent_evidence_envelopes(self):
        compiler = Path('C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe')
        sdk = Path('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll')
        if not compiler.is_file() or not sdk.is_file():
            self.skipTest('Local ASCET SDK/compiler unavailable')
        with tempfile.TemporaryDirectory(prefix='bde-transport-') as temporary:
            binary = Path(temporary) / 'TransportTests.exe'
            shutil.copy2(sdk, binary.parent / sdk.name)
            build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetStructureDecodeTests',
                '/r:' + str(sdk), '/r:System.Web.Extensions.dll', '/out:' + str(binary),
                str(service.ROOT / 'scripts/AscetStructureRead.cs'),
                str(service.ROOT / 'scripts/AscetStructureDecodeTests.cs')],
                capture_output=True, text=True, errors='replace', timeout=30)
            self.assertEqual(build.returncode, 0, build.stdout + build.stderr)
            result = subprocess.run([str(binary)], capture_output=True, text=True, errors='replace', timeout=20)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            count = re.search(r'Structural transport assertions: ([0-9]+)', result.stdout)
            self.assertIsNotNone(count)
            self.assertGreaterEqual(int(count[1]), 18)


if __name__ == '__main__':
    unittest.main()
