from types import SimpleNamespace
import unittest
from unittest.mock import Mock

from bd_native_literal import NativeLiteralAdapter


class AdapterCleanupTests(unittest.TestCase):
    def adapter(self):
        adapter = NativeLiteralAdapter('BDE_Tool_Experiments\\Trial_cleanup')
        adapter.process = SimpleNamespace(poll=Mock(return_value=1),
            stdin=Mock(), stdout=Mock(), stderr=Mock())
        adapter.threads = [Mock(), Mock()]
        return adapter

    def test_dead_bridge_stdin_flush_does_not_replace_the_primary_failure(self):
        adapter = self.adapter()
        adapter.process.stdin.close.side_effect = OSError(22, 'Invalid argument')
        with self.assertRaisesRegex(RuntimeError, 'original bridge failure'):
            with adapter:
                raise RuntimeError('original bridge failure')
        adapter.process.stdout.close.assert_called_once()
        adapter.process.stderr.close.assert_called_once()
        for thread in adapter.threads:
            thread.join.assert_called_once_with(timeout=1)
        self.assertIn('Invalid argument', adapter.stderr_tail[-1])

    def test_every_pipe_is_closed_after_multiple_cleanup_errors(self):
        adapter = self.adapter()
        adapter.process.stdin.close.side_effect = BrokenPipeError('stdin')
        adapter.process.stdout.close.side_effect = OSError('stdout')
        adapter.close()
        adapter.process.stderr.close.assert_called_once()
        self.assertEqual(len(adapter.stderr_tail), 2)


if __name__ == '__main__':
    unittest.main()
