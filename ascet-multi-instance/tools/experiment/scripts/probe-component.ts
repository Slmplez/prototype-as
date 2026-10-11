import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
const componentPath = process.env.ASCET_COMPONENT_PATH;
if (!manifest || !componentPath) throw new Error('Set ASCET_EXPERIMENT_MANIFEST and ASCET_COMPONENT_PATH.');
const configurations = (process.env.ASCET_COMPONENT_CONFIGURATIONS ?? 'Default,test,Test').split(',').map(value => value.trim()).filter(Boolean);
const artifactRoot = join(ROOT, 'artifacts', 'component-probe-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot });
const report: any = { manifest, componentPath, configurations, started: new Date().toISOString(), attempts: [] };
let sessionId = '';
try {
  const attached = await broker.call('exp_attach', { instanceRef: manifest });
  if (!attached.ok) throw new Error(JSON.stringify(attached));
  sessionId = attached.sessionId;
  if (attached.observedState.open) await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true });
  const catalog = await broker.call('exp_catalog', { sessionId, query: componentPath });
  report.catalog = catalog.ok ? catalog.components : catalog.error;
  for (const configuration of configurations) {
    const opened = await broker.call('exp_open', { sessionId, componentPath, configuration });
    const attempt: any = { configuration, ok: opened.ok, error: opened.error, observedState: opened.observedState };
    if (opened.error?.evidence?.diagnosticsFile) {
      attempt.diagnosticsFile = opened.error.evidence.diagnosticsFile;
      try { attempt.diagnostics = await readFile(opened.error.evidence.diagnosticsFile, 'utf8'); } catch (error) { attempt.diagnosticsReadError = String(error); }
    }
    report.attempts.push(attempt);
    if (opened.ok) {
      const inspected = await broker.call('exp_inspect', { sessionId });
      const signals = await broker.call('exp_signals', { sessionId, query: '', kind: 'all', offset: 0, limit: 200 });
      const configurationRead = await broker.call('exp_configure', { sessionId, action: 'read' });
      report.opened = { configuration, inspect: inspected.observedState, signals: signals.ok ? signals.signals : signals.error, actualConfiguration: configurationRead.ok ? configurationRead.configuration : configurationRead.error };
      await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true });
      break;
    }
  }
  report.status = report.opened ? 'opened' : 'open_failed';
} catch (error) {
  report.status = 'probe_failed'; report.error = String(error);
  process.exitCode = 1;
} finally {
  if (sessionId) await broker.call('exp_detach', { sessionId });
  await broker.close();
  await mkdir(artifactRoot, { recursive: true });
  const file = join(artifactRoot, 'report.json');
  await writeFile(file, JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ status: report.status, componentPath, report: file, attempts: report.attempts?.length, error: report.error }, null, 2));
}
