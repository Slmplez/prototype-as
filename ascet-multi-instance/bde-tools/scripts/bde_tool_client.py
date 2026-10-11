"""Research client for actual Doge Tool.call with complete pagination."""
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import queue
import threading
import bd_service as service


class ToolClient:
    def __init__(self,output,session,record):
        self.output=output;self.session=session;self.record=record
        self.env=dict(os.environ,ASCET_BD_STORE=str(service.STORE.resolve()),ASCET_BD_STRUCTURAL_WRITES='1',ASCET_BD_PYTHON=sys.executable)

    def invoke(self, tool, args):
        p=subprocess.run([str(Path.home()/'.bun/bin/bun.exe'),'run','scripts/bde-tool-call-eval.ts'],cwd=service.ROOT/'Doge',
            input=json.dumps({'tool':tool,'args':args,'session':self.session}),capture_output=True,text=True,encoding='utf-8',env=self.env,timeout=90)
        if p.returncode:raise RuntimeError(p.stderr)
        return json.loads(p.stdout)

    def call(self,tool,args):
        started=time.perf_counter()
        response=self.invoke(tool,args)
        self.record({'tool':tool,'args':args,'response':response,'elapsed_ms':(time.perf_counter()-started)*1000})
        if '\n\n' not in response['content']:
            # Schema/backend input errors have no paged envelope. Preserve them
            # as error results so negative Tool.call cases can assert rejection.
            if response['is_error']:return {},response['content'],True
            raise RuntimeError(response['content'])
        head,body=response['content'].split('\n\n',1);first=meta=json.loads(head)
        while meta['page']['has_more']:
            _,part,error=self.call('bd_read',{'cursor':meta['page']['next_cursor']})
            if error:raise RuntimeError(part)
            body+=part
            break # Recursive call drains remaining pages; all invocations are recorded.
        return first,body,response['is_error']

    def value(self,tool,args):
        head,body,error=self.call(tool,args)
        if error:raise RuntimeError(body)
        return head,json.loads(body)


class PersistentToolClient(ToolClient):
    """Read eval in one existing Doge process; ASCET/Python lifecycle is unchanged."""

    def __init__(self, output, session, record):
        super().__init__(output, session, record)
        self.process = None
        self.responses = queue.Queue()
        self.stderr = []
        self.readers = []
        self.startup = None

    def receive(self):
        try:
            line = self.responses.get(timeout=95)
        except queue.Empty as error:
            raise RuntimeError('Doge eval response timed out; backend may still be running') from error
        if line is None:
            raise RuntimeError('Doge eval exited: ' + ''.join(self.stderr)[-4000:])
        return json.loads(line)

    def start(self):
        if self.process is not None:
            raise RuntimeError('Doge eval process already started')
        started = time.perf_counter()
        self.process = subprocess.Popen([str(Path.home()/'.bun/bin/bun.exe'), 'run',
            'scripts/bde-tool-call-eval.ts', '--stream'], cwd=service.ROOT/'Doge',
            stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
            text=True, encoding='utf-8', env=self.env, bufsize=1)

        def read_stdout():
            for line in self.process.stdout:
                self.responses.put(line)
            self.responses.put(None)

        def read_stderr():
            for line in self.process.stderr:
                self.stderr.append(line)

        for target in (read_stdout, read_stderr):
            thread = threading.Thread(target=target, daemon=True)
            self.readers.append(thread)
            thread.start()
        ready = self.receive()
        if ready.get('phase') != 'ready' or ready.get('pid') != self.process.pid:
            raise RuntimeError('Doge eval did not return its ready/PID handshake')
        self.startup = {'elapsed_ms': (time.perf_counter()-started)*1000, 'pid': ready['pid'],
            'scope': 'Doge eval module/application startup; excluded from steady Tool.call samples'}
        return self.startup

    def invoke(self, tool, args):
        if self.process is None:
            raise RuntimeError('Start the Doge eval process outside timed samples')
        if tool not in ('bd_read', 'bd_find', 'bd_inspect', 'bd_diff') or args.get('presentation') or args.get('reconcile'):
            raise RuntimeError('Persistent eval client is limited to read-only requests')
        environment = {key: self.env.get(key) for key in
            ('ASCET_BD_PROBE_PORT', 'ASCET_BD_CLASS_OBSERVATION_MODE')}
        self.process.stdin.write(json.dumps({'tool': tool, 'args': args, 'session': self.session,
            'environment': environment}) + '\n')
        self.process.stdin.flush()
        return self.receive()

    def close(self):
        if self.process is None:
            return
        self.process.stdin.close()
        # EOF waits for the current request. Never terminate a live native call.
        self.process.wait(timeout=100)
        for thread in self.readers:
            thread.join(timeout=2)
        self.process.stdout.close()
        self.process.stderr.close()
