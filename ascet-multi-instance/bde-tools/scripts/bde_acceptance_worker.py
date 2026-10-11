"""Fixed offline unittest adapters with per-test/subtest evidence and I/O refusal."""
import argparse
import functools
import json
import os
from pathlib import Path
import time
import unittest
from unittest.mock import patch

from bde_acceptance import ADAPTERS, save_new


class RecordedResult(unittest.TestResult):
    def __init__(self):
        super().__init__()
        self.rows = []
        self.current = None

    def startTest(self, test):
        super().startTest(test)
        self.current = {"id": test.id(), "status": "not_run", "assertion_count": 0,
                        "subtests": [], "started": time.perf_counter()}
        self.rows.append(self.current)

    def addSuccess(self, test):
        super().addSuccess(test)
        self.current["status"] = "pass"

    def addFailure(self, test, error):
        super().addFailure(test, error)
        self.current.update(status="fail", details=self._exc_info_to_string(error, test))

    def addError(self, test, error):
        super().addError(test, error)
        if self.current is not None:
            self.current.update(status="error", details=self._exc_info_to_string(error, test))
        else:
            self.rows.append({"id": test.id(), "status": "error", "assertion_count": 0,
                              "details": self._exc_info_to_string(error, test)})

    def addSkip(self, test, reason):
        super().addSkip(test, reason)
        # This Python runtime reports decorator skips before startTest.
        if self.current is None:
            self.current = {"id": test.id(), "assertion_count": 0, "subtests": [],
                            "started": time.perf_counter()}
            self.rows.append(self.current)
        self.current.update(status="skip", details=reason)

    def addExpectedFailure(self, test, error):
        super().addExpectedFailure(test, error)
        self.current.update(status="expected_failure", details=self._exc_info_to_string(error, test))

    def addUnexpectedSuccess(self, test):
        super().addUnexpectedSuccess(test)
        self.current["status"] = "unexpected_success"

    def addSubTest(self, test, subtest, error):
        super().addSubTest(test, subtest, error)
        row = {"id": subtest.id(), "status": "pass" if error is None else "fail"}
        if error is not None:
            row["details"] = self._exc_info_to_string(error, test)
            self.current["status"] = "fail"
        self.current["subtests"].append(row)

    def stopTest(self, test):
        if self.current is not None:
            self.current["elapsed_ms"] = (time.perf_counter() - self.current.pop("started")) * 1000
        super().stopTest(test)
        self.current = None


def execute(adapter, output):
    descriptor = ADAPTERS[adapter]
    if descriptor["kind"] != "python":
        raise ValueError("Only a registered Python adapter can run in this worker")
    result = RecordedResult()
    attempts = []
    import bd_service as service
    def refuse(*args, **kwargs):
        attempts.append("native_io")
        raise AssertionError("Offline acceptance adapter must not dispatch native I/O")
    def counted(original):
        @functools.wraps(original)
        def wrapped(*args, **kwargs):
            if result.current is not None:
                result.current["assertion_count"] += 1
            return original(*args, **kwargs)
        return wrapped
    mocks = [patch.object(service, name, side_effect=refuse) for name in
             ("run_process", "ensure_probe", "capture", "capture_locked", "capture_scoped_locked")]
    mocks += [patch.object(unittest.TestCase, name, counted(getattr(unittest.TestCase, name)))
              for name in dir(unittest.TestCase) if name.startswith("assert")
              and callable(getattr(unittest.TestCase, name))]
    try:
        for mocker in mocks:
            mocker.start()
        suite = unittest.defaultTestLoader.loadTestsFromNames(descriptor["tests"])
        suite.run(result)
    finally:
        for mocker in reversed(mocks):
            mocker.stop()
    raw = {"kind": "python", "tests": result.rows, "native_io_attempts": len(attempts),
           "offline_environment": {"store": os.environ.get("ASCET_BD_STORE"),
                                   "native_state": os.environ.get("LOCALAPPDATA")}}
    save_new(output, raw)
    return 0 if result.wasSuccessful() and not attempts else 1


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--adapter", choices=[key for key, value in ADAPTERS.items() if value["kind"] == "python"], required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    raise SystemExit(execute(args.adapter, args.output))


if __name__ == "__main__":
    main()
