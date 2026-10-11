import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import ts from 'typescript';
import { JsonLineClient, ROOT } from '../src/bridge.js';

const packaged = resolve(process.env.ASCET_CLI_PACKAGE ?? process.argv[2] ?? '');
assert.ok(process.env.ASCET_CLI_PACKAGE || process.argv[2], 'Provide the extracted CLI package directory');
const manifestPath = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifestPath, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifestPath), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = resolve(process.env.ASCET_CLI_PACKAGE_REPORT_DIRECTORY ?? join(ROOT, 'experiments/cli-package', new Date().toISOString().replace(/[:.]/g, '-')));
await mkdir(directory, { recursive: true });
const report: Record<string, unknown> = { status: 'running', directory, package: packaged, manifest: manifestPath };
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const client = new JsonLineClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'],
  env, timeoutMs: 90_000 });
const examples: unknown[] = [];
async function call(name: string, request: unknown): Promise<any> {
  const response = await client.request(request) as any;
  examples.push({ name, request, response });
  assert.equal(response.status, 'ok', JSON.stringify(response));
  assert.ok(Buffer.byteLength(JSON.stringify(response)) <= 128 * 1024);
  return response;
}
try {
  const metadata = JSON.parse(await readFile(join(packaged, 'package.json'), 'utf8'));
  assert.equal(metadata.type, 'module'); assert.deepEqual(Object.keys(metadata.dependencies), ['ajv']);
  assert.deepEqual(metadata.pi.extensions, ['./dist/src/pi-extension.js']);
  const manifest = JSON.parse(await readFile(join(packaged, 'manifest.json'), 'utf8'));
  for (const entry of manifest.files) {
    assert.ok(!entry.path.split('/').some((part: string) => part === '..' || part === 'node_modules' || part.startsWith('mcp')));
    const file = join(packaged, entry.path), contents = await readFile(file);
    assert.equal(contents.length, entry.bytes);
    assert.equal(createHash('sha256').update(contents).digest('hex'), entry.sha256);
    if (entry.path.endsWith('.json')) JSON.parse(contents.toString('utf8'));
    if (entry.path.endsWith('.js')) {
      const ast = ts.createSourceFile(file, contents.toString('utf8'), ts.ScriptTarget.Latest, true, ts.ScriptKind.JS);
      const check = (specifier: string) => assert.ok(specifier.startsWith('./') || specifier.startsWith('../') || specifier.startsWith('node:'), specifier);
      const visit = (node: ts.Node) => {
        if ((ts.isImportDeclaration(node) || ts.isExportDeclaration(node)) && node.moduleSpecifier && ts.isStringLiteral(node.moduleSpecifier)) check(node.moduleSpecifier.text);
        if (ts.isCallExpression(node) && node.expression.kind === ts.SyntaxKind.ImportKeyword && ts.isStringLiteral(node.arguments[0])) check(node.arguments[0].text);
        ts.forEachChild(node, visit);
      };
      visit(ast);
    }
  }
  const help = execFileSync(process.execPath, [join(packaged, 'dist/src/cli.js'), '--help'], { windowsHide: true, stdio: 'pipe' });
  assert.equal(help.toString(), '');
  report.file_hashes_verified = manifest.files.length;
  report.runtime_requires_no_npm_install = true;
  const found = await call('find_method', { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact', debug: true });
  assert.equal(found.total_count, 1); assert.equal(found.debug.ascet_pid, identity.pid);
  const read = await call('read_method', { operation: 'read', ref: found.results[0].ref, if_unchanged: true });
  assert.ok(read.code?.length > 0);
  await call('read_lines', { operation: 'read', ref: found.results[0].ref, lines: { start: 1, end: 8 } });
  const search = await call('batch_search', { query: ['AEBLockTime', { text: '\\bAEBLockTime\\b', mode: 'regex' }], mode: 'identifier', group_by: 'object', limit: 1 });
  assert.ok(search.total_hits > 0); assert.equal(search.has_more, true);
  await call('search_next_page', { cursor: search.next_cursor });
  const singleQuery = await call('named_single_query_object', { tool: 'ascet_code_search', arguments: {
    query: { text: '\\bVxAct\\b', mode: 'regex', case_sensitive: true, id: 'input' },
    in: { component: found.results[0].ref, member: 'calc_pre' }, limit: 1 } });
  assert.equal(singleQuery.total_hits, [...read.code.matchAll(/\bVxAct\b/gu)].length);
  assert.equal(singleQuery.searches[0].id, 'input'); assert.ok(singleQuery.total_hits > 0);
  const init = await call('find_init', { operation: 'find', target: 'diagrams', component: 'AEB_State_Machine', diagram: 'Init', match: 'exact' });
  assert.equal(init.total_count, 1);
  const initRead = await call('read_init', { operation: 'read', ref: init.results[0].ref, include_graph: true, if_unchanged: true });
  assert.ok(initRead.diagram_text.includes('AEBLockTime')); assert.ok(initRead.graph.nodes.length > 0);
  const privateDiagram = await call('find_private', { operation: 'find', target: 'diagrams', diagram: 'SearchToolsPrivateAcceptance', match: 'exact', in: { visibility: 'private' } });
  assert.equal(privateDiagram.total_count, 1);
  const privateRead = await call('read_private', { operation: 'read', ref: privateDiagram.results[0].ref });
  assert.ok(privateRead.diagram_text.includes('987654.125'));
  const states = await call('find_states', { operation: 'find', target: 'states', component: 'AEB_State_Machine', match: 'exact' });
  const off = states.results.find((r: any) => r.state_id === 0 && r.diagram === 'Main');
  assert.ok(off);
  const state = await call('read_state', { operation: 'read', ref: off.ref });
  assert.equal(state.state_kind, 'state'); assert.equal(state.initial, true);
  assert.ok(state.outgoing.length > 0); assert.ok(Array.isArray(state.code_slots));
  const transitions = await call('find_transitions', { operation: 'find', target: 'transitions', component: 'AEB_State_Machine', match: 'exact' });
  const twenty = transitions.results.find((r: any) => r.transition_id === 20 && r.diagram === 'Main');
  assert.ok(twenty);
  const transition = await call('read_transition', { operation: 'read', ref: twenty.ref });
  assert.equal(transition.start_state.state_kind, 'junction'); assert.equal(transition.end_state.state_id, 0);
  assert.equal(transition.priority, 1); assert.ok(transition.code_slots.length > 0);
  await call('read_transition_slots', { operation: 'read', ref: transition.code_slots.map((r: any) => r.ref) });
  const objects = await call('find_objects', { operation: 'find', target: 'objects', in: { diagram: init.results[0].ref, object_kind: 'literal' } });
  assert.ok(objects.results.length > 0);
  const object = await call('read_object', { operation: 'read', ref: objects.results[0].ref, depth: 0 });
  assert.equal(object.object.kind, 'literal'); assert.ok(object.pins.length > 0);
  const namedComponent = await call('named_find_component', { tool: 'ascet_code_find', arguments: { target: 'components', name: 'DBR_Force2Pressure', match: 'exact' } });
  assert.equal(namedComponent.total_count, 1); assert.equal(namedComponent.results[0].component_type, 'SGClass');
  const namedInit = await call('named_find_class_init', { tool: 'ascet_code_find', arguments: { component: 'DBR_Force2Pressure', name: 'init', match: 'exact' } });
  assert.equal(namedInit.total_count, 1); assert.equal(namedInit.results[0].component_type, 'SGClass');
  const namedBody = await call('named_read_class_init', { tool: 'ascet_code_read', arguments: { ref: namedInit.results[0].ref, if_unchanged: true } });
  assert.equal(namedBody.component_type, 'SGClass'); assert.ok(namedBody.code.includes('pressure = 0;'));
  const placed = await call('named_search_placements', { tool: 'ascet_code_search', arguments: {
    query: ['AxCtrlLimGradAxMin', 'AxCtrlLimGradAxMax'], mode: 'identifier', group_by: 'object', limit: 20 } });
  const placementHits = placed.searches.flatMap((q: any) => q.results.flatMap((r: any) => r.hits ?? []));
  assert.equal(placementHits.length, 2); assert.notEqual(placementHits[0].ref, placementHits[1].ref);
  assert.equal(placementHits[0].referenced_component_path, placementHits[1].referenced_component_path);
  const placedBodies = await call('named_batch_local', { tool: 'ascet_code_read', arguments: { ref: placementHits.map((h: any) => h.ref), depth: 1 } });
  assert.ok(placedBodies.results.every((r: any) => r.object.referenced_component_path === placementHits[0].referenced_component_path));
  const referenced = await call('named_find_reference', { tool: 'ascet_code_find', arguments: {
    component: placementHits[0].referenced_component_path, member: 'calc', match: 'exact' } });
  assert.ok(referenced.results.length); assert.ok(referenced.results.every((r: any) => r.component_type === 'SGClass'));
  await call('named_batch_reference_code', { tool: 'ascet_code_read', arguments: { ref: referenced.results.map((r: any) => r.ref), if_unchanged: true } });
  await client.close();
  execFileSync(process.execPath, [join(dirname(process.execPath), 'node_modules/npm/bin/npm-cli.js'),
    'ci', '--offline', '--ignore-scripts', '--no-audit', '--no-fund'], { cwd: packaged, windowsHide: true, timeout: 90_000 });
  const { createAscetExtension } = await import((await import('node:url')).pathToFileURL(join(packaged, 'dist/src/pi-extension.js')).href);
  const { createAgentSession, DefaultResourceLoader, SessionManager, SettingsManager } = await import('@earendil-works/pi-coding-agent');
  const settings = SettingsManager.inMemory();
  const loader = new DefaultResourceLoader({ cwd: directory, agentDir: directory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true,
    extensionFactories: [createAscetExtension({ client: { env } })] });
  await loader.reload();
  const { session } = await createAgentSession({ cwd: directory, agentDir: directory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(directory), noTools: 'builtin' });
  try {
    assert.equal(session.agent.state.tools.length, 3);
    const tool = session.agent.state.tools.find(tool => tool.name === 'ascet_code_search')!;
    const result = await tool.execute('package-search', { query: 'AEBLockTime', mode: 'identifier', limit: 1 });
    assert.equal(result.isError, false);
    assert.equal((result.structuredContent as { status: string }).status, 'ok');
    report.packaged_pi_extension_live_verified = true;
  } finally {
    await session.abort(); await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose();
  }
  const rebuilt = join(directory, 'source-rebuild');
  await mkdir(rebuilt);
  execFileSync(process.execPath, [join(ROOT, 'node_modules/typescript/bin/tsc'), '-p', join(packaged, 'tsconfig.json'),
    '--typeRoots', join(ROOT, 'node_modules/@types'), '--outDir', join(rebuilt, 'dist')], { windowsHide: true });
  const resources = [['native-snapshot.st', 'snapshot.st'], ['state-source-reader.st', 'state-reader.st'],
    ['state-topology-reader.st', 'state-topology-reader.st'],
    ['graph-source-reader.st', 'graph-reader.st'], ['bde-source-reader.st', 'bde-reader.st'],
    ['bde-read-audit.st', 'bde-audit.st'], ['bde-prefilter.st', 'bde-prefilter.st'], ['bde-load-factory.st', 'bde-load-factory.st'],
    ['container-source-reader.st', 'container-source-reader.st'], ['saved-container-reader.st', 'saved-container-reader.st'],
    ['native-transport.st', 'native-transport.st']];
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + join(rebuilt, 'CodeSearchBridge.exe'),
    ...resources.map(([file, name]) => '/resource:' + join(packaged, file) + ',' + name), join(packaged, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const rebuiltClient = new JsonLineClient({ command: process.execPath, args: [join(rebuilt, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
  try {
    const result = await rebuiltClient.request({ query: { text: '\\bAEBLockTime\\b', mode: 'regex' }, group_by: 'object', limit: 1, debug: true }) as any;
    assert.equal(result.status, 'ok', JSON.stringify(result)); assert.ok(result.total_hits > 0);
    assert.equal(result.debug.ascet_pid, identity.pid);
    const read = await rebuiltClient.request({ operation: 'read', ref: result.searches[0].results[0].ref, if_unchanged: true }) as any;
    assert.equal(read.status, 'ok', JSON.stringify(read));
    report.packaged_sources_rebuilt_and_live_verified = true;
  } finally { await rebuiltClient.close(); }
  report.cli_calls = examples.length; report.status = 'passed';
  report.boundary = 'Extracted CLI verified by file hashes, built-in-only runtime imports and serial live calls without npm install. Extension then installed its dependencies and executed through the actual Pi SDK. Packaged TS/C#/Smalltalk sources rebuilt with development dependencies and installed ToolAPI DLL; rebuilt CLI regex/read passed. No model write or production-instance access.';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await client.close();
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  await writeFile(join(directory, 'examples.json'), JSON.stringify(examples, null, 2) + '\n');
  console.log(JSON.stringify(report, null, 2));
}
