"""Separate processes and stores must share the local ASCET critical section."""
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch
import bd_service as service


class InstanceLockTests(unittest.TestCase):
    def test_different_store_cannot_enter_then_can_after_release(self):
        with tempfile.TemporaryDirectory() as folder, patch.dict(os.environ, {'LOCALAPPDATA': folder}):
            command = [sys.executable, '-c', "import sys; sys.path.insert(0,sys.argv[1]); import bd_service as s;\ntry:\n with s.live_lock(): print('entered')\nexcept s.ToolError as e: print(e.code)", str(service.ROOT/'scripts')]
            environment = dict(os.environ, ASCET_BD_STORE=str(Path(folder)/'other-store'))
            with service.live_lock():
                r = subprocess.run(command,env=environment,capture_output=True,text=True,timeout=10)
                self.assertEqual(r.returncode,0,r.stderr)
                self.assertEqual(r.stdout.strip(),'ASCET_BUSY')
            r = subprocess.run(command,env=environment,capture_output=True,text=True,timeout=10)
            self.assertEqual(r.returncode,0,r.stderr)
            self.assertEqual(r.stdout.strip(),'entered')


if __name__ == '__main__':
    unittest.main()
