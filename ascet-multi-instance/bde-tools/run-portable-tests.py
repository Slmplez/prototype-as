"""Run self-contained contracts without ASCET or historical native fixtures."""
from pathlib import Path
import sys
import unittest

ROOT = Path(__file__).resolve().parent
sys.path[:0] = [str(ROOT / 'scripts'), str(ROOT / 'tests')]
MODULES = (
    'test_bd_module_references', 'test_bd_connect_journal', 'test_bd_connect_material',
    'test_bd_connect_history', 'test_bd_connect_local_history', 'test_bd_connect_local_plan',
    'test_bd_structural_diff_route', 'test_bd_structure_conflicts',
    'test_bd_read_contract', 'test_bd_write_contract', 'test_bd_pagination_integrity',
    'test_bd_paging_acceptance', 'test_bd_native_adapter_cleanup',
)

if __name__ == '__main__':
    suite = unittest.defaultTestLoader.loadTestsFromNames(MODULES)
    result = unittest.TextTestRunner(verbosity=2).run(suite)
    raise SystemExit(0 if result.wasSuccessful() and result.testsRun else 1)
