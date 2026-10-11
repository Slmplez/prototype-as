"""Experimental sandbox adapter for EditJournal; no business writes enabled."""
from __future__ import annotations

import json
import os
from pathlib import Path
import queue
import subprocess
import threading

import bd_service
from bd_edit_journal import clone, NativePreconditionConflict


def compile_bridge():
    source = bd_service.ROOT / 'scripts/AscetLiteralSession.cs'
    binary = bd_service.ROOT / 'analysis/live-api/AscetLiteralSession.exe'
    # Reuse dependency validation and DLL staging, not the full reader itself.
    bd_service.ensure_probe()
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    if not binary.exists() or binary.stat().st_mtime < max(source.stat().st_mtime, dll.stat().st_mtime):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        bd_service.run_process([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}', '/r:System.Web.Extensions.dll',
                               f'/out:{binary}', str(source)], 30, build_step=True)
    return binary


class NativeLiteralAdapter:
    build = staticmethod(compile_bridge)

    def open_request(self, domain):
        return {'cmd': 'open', 'component': self.component, 'domain': domain}

    def __init__(self, component, *, timeout=12, environment=None):
        self.component = component
        self.timeout = timeout
        self.environment = environment
        self.process = None
        self.responses = queue.Queue()
        self.stderr_tail = []
        self.domain = None
        self.before = {}
        self.commands = []

    def _exchange(self, request):
        self.commands.append(request['cmd'])
        self.process.stdin.write(json.dumps(request, ensure_ascii=False) + '\n')
        self.process.stdin.flush()
        try:
            response = self.responses.get(timeout=self.timeout)
        except queue.Empty as error:
            self.process.kill()
            self.process.wait(timeout=5)
            raise TimeoutError('Native bridge response timed out; write outcome may be unknown') from error
        if response is None:
            raise RuntimeError('Native bridge exited before replying: ' + ''.join(self.stderr_tail)[-1000:])
        row = json.loads(response)
        if not row.get('ok'):
            if row.get('code') == 'PRECONDITION_CONFLICT' and row.get('mutation_started') is False:
                raise NativePreconditionConflict(row.get('error', 'Native precondition conflict'))
            raise RuntimeError(row.get('error', 'Native bridge error'))
        return row['result']

    def _ensure_open(self, domain):
        if self.process is not None:
            if domain != self.domain:
                raise ValueError('An adapter session cannot change identity domain')
            return
        binary = self.build()
        self.process = subprocess.Popen([str(binary)], stdin=subprocess.PIPE, stdout=subprocess.PIPE,
            stderr=subprocess.PIPE, text=True, encoding='utf-8', errors='strict', env=self.environment)
        def drain_output():
            try:
                for line in self.process.stdout:
                    self.responses.put(line)
            finally:
                self.responses.put(None)
        def drain_errors():
            for line in self.process.stderr:
                self.stderr_tail.append(line)
                del self.stderr_tail[:-20]
        self.threads = [threading.Thread(target=drain_output, daemon=True), threading.Thread(target=drain_errors, daemon=True)]
        for thread in self.threads:
            thread.start()
        self.domain = clone(domain)
        self._exchange(self.open_request(domain))

    def observe(self, domain, target):
        self._ensure_open(domain)
        result = self._exchange({'cmd': 'observe', 'target': target})
        self.before[target] = clone(result['fields'])
        return result

    def write_preflight(self, domain):
        from bd_instance_pending import check_restoration
        check_restoration(domain)

    def apply_literal(self, domain, target, value):
        if domain != self.domain or target not in self.before:
            raise ValueError('Local preparation is required before apply')
        self.write_preflight(domain)
        return self._exchange({'cmd': 'apply', 'target': target, 'value': value,
                               'expected_fields': self.before.pop(target)})

    def close(self):
        if self.process is None:
            return
        if self.process.poll() is None:
            try:
                self.process.stdin.write('{"cmd":"close"}\n')
                self.process.stdin.flush()
                self.process.wait(timeout=5)
            except (OSError, subprocess.TimeoutExpired):
                self.process.kill()
                self.process.wait(timeout=5)
        for stream in (self.process.stdin, self.process.stdout, self.process.stderr):
            try:
                stream.close()
            except OSError as error:
                # A dead bridge can leave buffered stdin unable to flush.
                # Still close the other pipes and preserve the command failure.
                self.stderr_tail.append('Bridge stream cleanup: ' + str(error))
        for thread in self.threads:
            thread.join(timeout=1)

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        self.close()
