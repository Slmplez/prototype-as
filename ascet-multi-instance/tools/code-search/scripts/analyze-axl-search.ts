import assert from 'node:assert/strict';
import { createRequire } from 'node:module';
import { readFile, writeFile, readdir, mkdir } from 'node:fs/promises';
import { resolve, join, relative } from 'node:path';
import { performance } from 'node:perf_hooks';
import { createHash } from 'node:crypto';
import { createReadStream } from 'node:fs';
import { createInterface } from 'node:readline';
import { ROOT } from '../src/bridge.js';
import { matchDocuments } from '../src/matcher.js';
import type { Snapshot, SourceDocument } from '../src/types.js';

const source = resolve(process.argv[2] ?? join(ROOT, '../../axl/AI_AEB'));
const output = resolve(process.argv[3] ?? join(ROOT, 'experiments/structure-discovery/axl-analysis'));
const { SaxesParser } = createRequire(join(ROOT, '../../axl_decoder_ts/package.json'))('saxes');
interface Xml { tag: string; attrs: Record<string, string>; text: string; children: Xml[] }
const child = (n: Xml, tag: string) => n.children.find(c => c.tag === tag);
function* walk(n: Xml): Generator<Xml> { yield n; for (const c of n.children) yield* walk(c); }
function parse(xml: string): Xml {
  const parser = new SaxesParser({ xmlns: true }), stack: Xml[] = []; let root: Xml | undefined;
  parser.on('doctype', () => { throw new Error('AXL XML contains a DTD'); });
  parser.on('opentag', (tag: any) => {
    assert.ok(stack.length < 256);
    const n: Xml = { tag: tag.local, attrs: Object.fromEntries(Object.values(tag.attributes).filter((a: any) => a.uri !== 'http://www.w3.org/2000/xmlns/').map((a: any) => [a.local, a.value])), text: '', children: [] };
    if (stack.length) stack.at(-1)!.children.push(n); else root = n;
    stack.push(n);
  });
  const append = (s: string) => { if (stack.length) stack.at(-1)!.text += s; };
  parser.on('text', append); parser.on('cdata', append); parser.on('closetag', () => stack.pop());
  parser.on('error', (e: Error) => { throw e; }); parser.write(xml).close(); assert.ok(root); return root;
}
async function files(dir: string): Promise<string[]> {
  const out: string[] = [];
  for (const e of await readdir(dir, { withFileTypes: true })) {
    if (e.isDirectory()) out.push(...await files(join(dir, e.name)));
    else if (e.name.endsWith('.amd')) out.push(join(dir, e.name));
  }
  return out.sort();
}
interface ExportField {
  file: string; xml_path: string; field: string; text: string; corpus: 'code' | 'graph' | 'binding';
  specification?: string; visibility?: string; method?: string; method_oid?: string;
  object_kind?: string; graphic_oid?: string; code_variant?: Record<string, string>;
  element_oid?: string; original_text?: string;
}
const fields: ExportField[] = [];
const hash = (s: string) => createHash('sha256').update(s).digest('hex');
const normalize = (s: string) => s.replace(/\r\n?/g, '\n');
function extractFields(root: Xml, file: string) {
  const visit = (n: Xml, parents: Xml[], path: string) => {
    const spec = parents.findLast(p => p.tag === 'Specification');
    const method = parents.findLast(p => p.tag === 'MethodBody');
    const variant = parents.findLast(p => p.tag === 'CodeVariant');
    const object = parents.at(-1)?.tag === 'DiagramElement' ? n : parents.findLast((p, i) => parents[i - 1]?.tag === 'DiagramElement');
    const put = (field: string, text: string | undefined, corpus: ExportField['corpus']) => {
      if (!text) return;
      fields.push({ file, xml_path: path, field, text: normalize(text), corpus,
        ...(spec ? { specification: spec.attrs.name, visibility: spec.attrs.public } : {}),
        ...(method ? { method: method.attrs.methodName, method_oid: method.attrs.methodOID } : {}),
        ...(object ? { object_kind: object.tag, graphic_oid: object.attrs.graphicOID } : {}),
        ...(n.tag === 'SimpleElement' ? { element_oid: n.attrs.elementOID } : {}),
        ...(variant ? { code_variant: variant.attrs } : {}) });
    };
    if (['CodeBlock', 'HeaderBlock'].includes(n.tag)) put(n.tag, n.text, 'code');
    if (spec && parents.some(p => p.tag === 'DiagramElements')) {
      if (['SimpleElement', 'ComplexElement'].includes(n.tag)) put('elementName', n.attrs.elementName, 'graph');
      if (['Hierarchy', 'HierarchyState', 'State'].includes(n.tag)) put('name', n.attrs.name, 'graph');
      if (n.tag === 'Literal') put('value', n.attrs.value, 'graph');
      if (n.tag === 'Operator') put('type', n.attrs.type, 'graph');
      if (n.tag === 'Comment') put('comment', n.text, 'graph');
      if (['MethodPort', 'ReturnPort', 'SequenceCall', 'SelectorPort', 'MemberGetPort', 'MemberSetPort', 'InputPort', 'OutputPort'].includes(n.tag)) {
        for (const attr of ['methodName', 'elementName', 'name']) if (n.attrs[attr] !== '--Absent--') put(attr, n.attrs[attr], 'graph');
      }
      if (n.tag === 'Transition') put('triggerName', n.attrs.triggerName, 'binding');
      if (n.tag === 'MethodAction') put('methodName', n.attrs.methodName, 'binding');
    }
    const ordinals = new Map<string, number>();
    for (const c of n.children) {
      const ordinal = (ordinals.get(c.tag) ?? 0) + 1; ordinals.set(c.tag, ordinal);
      visit(c, [...parents, n], path + '/' + c.tag + '[' + ordinal + ']');
    }
  };
  visit(root, [], '/' + root.tag + '[1]');
}
const report: any = { source, status: 'running', xml_documents: 0, tags: {}, graph_kinds: {}, code_blocks: 0,
  header_blocks: 0, saved_code_header_blocks: 0, schema_versions: {}, table_configs: {}, states: [], transitions: [], table_examples: [] };
const bdeModels: any[] = [];
const declarations = new Map<string, string>();
const started = performance.now();
for (const file of await files(source)) {
  const root = parse(await readFile(file, 'utf8')); report.xml_documents++;
  const schema = root.attrs.schemaVersion ?? 'unspecified'; report.schema_versions[schema] = (report.schema_versions[schema] ?? 0) + 1;
  extractFields(root, relative(source, file));
  for (const n of walk(root)) {
    report.tags[n.tag] = (report.tags[n.tag] ?? 0) + 1;
    if (n.tag === 'CodeBlock') report.code_blocks++;
    if (n.tag === 'HeaderBlock') report.header_blocks++;
    if (n.tag === 'OneD' || n.tag === 'TwoD') {
      const key = [n.tag, n.attrs.interpolation ?? 'missing', n.attrs.extrapolation ?? 'missing'].join('/');
      report.table_configs[key] = (report.table_configs[key] ?? 0) + 1;
    }
    if (n.tag === 'DiagramElement') for (const g of n.children) report.graph_kinds[g.tag] = (report.graph_kinds[g.tag] ?? 0) + 1;
  }
  if (file.endsWith('.main.amd')) for (const n of walk(root)) if (n.tag === 'Element') {
    const attrs = child(n, 'ElementAttributes');
    if (attrs?.attrs.modelType === 'oned' && report.table_examples.length < 3) report.table_examples.push({
      file: relative(source, file), element: n.attrs.name, element_oid: n.attrs.OID,
      model_type: attrs.attrs.modelType, basic_model_type: attrs.attrs.basicModelType, unit: attrs.attrs.unit,
      dimensions: child(attrs, 'DimensionalType')?.attrs });
  }
  if (file.endsWith('.main.amd')) {
    const component = relative(source, file).replace(/\.main\.amd$/, '').replaceAll('/', '\\');
    for (const signature of walk(root)) if (['MethodSignature', 'RunnableSignature'].includes(signature.tag)) {
      for (const n of walk(signature)) if (['Argument', 'Return'].includes(n.tag) && n.attrs.OID) {
        declarations.set(component + '|' + n.attrs.OID, signature.attrs.name + '/' + (n.tag === 'Return' ? 'return' : n.attrs.name));
      }
    }
  }
  if (!file.endsWith('.specification.amd')) continue;
  const component_path = relative(source, file).replace(/\.specification\.amd$/, '').replaceAll('/', '\\');
  for (const spec of [...walk(root)].filter(n => n.tag === 'Specification')) {
    const bde = child(spec, 'BlockDiagramSpecification');
    if (bde) {
      const nodes: any[] = [], connections: any[] = [], pinRoles = new Map<string, 'input' | 'output'>();
      const collect = (container: Xml, scope: string) => {
        for (const wrapper of container.children.filter(c => c.tag === 'DiagramElement')) for (const n of wrapper.children) {
          const kind = n.tag === 'Operator' && n.attrs.type === 'MUX' ? 'control' :
            ({ SimpleElement: 'element', ComplexElement: 'element', Literal: 'literal', Operator: 'operator', Hierarchy: 'hierarchy' } as Record<string, string>)[n.tag];
          if (kind) nodes.push({ scope, id: Number(n.attrs.graphicOID), kind,
            name: n.attrs.elementName ?? n.attrs.value ?? n.attrs.name ?? n.attrs.type ?? '', element_oid: n.attrs.elementOID });
          const interfaces = child(n, 'Interfaces');
          if (interfaces) for (const p of walk(interfaces)) if (['ReturnPort', 'SelectorPort', 'MemberGetPort', 'MemberSetPort', 'InputPort', 'OutputPort'].includes(p.tag) && p.attrs.graphicOID !== undefined) {
            pinRoles.set(scope + ':' + p.attrs.graphicOID, ['ReturnPort', 'MemberGetPort', 'OutputPort'].includes(p.tag) ? 'output' : 'input');
          }
          if (n.tag === 'Connection') connections.push({ scope, from_pin: Number(child(n, 'Start')?.attrs.graphicOID), to_pin: Number(child(n, 'End')?.attrs.graphicOID) });
          const nested = child(n, 'DiagramElements'); if (nested) collect(nested, scope + '/' + n.attrs.graphicOID);
        }
      };
      const elements = child(bde, 'DiagramElements'); if (elements) collect(elements, 'root');
      bdeModels.push({ component_path, diagram: spec.attrs.name, nodes, connections, pinRoles });
    }
    const model = child(spec, 'StateMachineSpecification'); if (!model) continue;
    const objects: any[] = [], edges: any[] = [], pinOwners = new Map<string, Set<string>>();
    const collect = (container: Xml, ancestors: number[], prefix: string) => {
      for (const wrapper of container.children.filter(c => c.tag === 'DiagramElement')) for (const n of wrapper.children) {
        const id = Number(n.attrs.graphicOID), identity = [...ancestors, id].join('/');
        assert.ok(Number.isSafeInteger(id) && id >= 0);
        if (n.tag === 'Transition') {
          edges.push({ node: n, ancestors, id, identity, name: prefix + '/Transition #' + id }); continue;
        }
        if (!['State', 'HierarchyState', 'Junction'].includes(n.tag)) continue;
        const name = prefix + '/' + (n.attrs.name ?? (n.tag === 'Junction' ? 'junction #' : n.tag + ' #') + id);
        const obj = { component_path, diagram: spec.attrs.name, hierarchy_ids: ancestors, id, identity, name, native_kind: n.tag,
          initial: n.attrs.startState === 'true', history: n.attrs.history === 'true', actions: child(n, 'Actions')?.children.map(a => ({
            kind: a.tag, code: [...walk(a)].filter(c => c.tag === 'CodeBlock').map(c => c.text),
            bindings: [...walk(a)].filter(c => c.tag === 'MethodAction').map(c => c.attrs) })) ?? [] };
        objects.push(obj);
        for (const p of walk(child(n, 'Interfaces') ?? { tag: '', attrs: {}, text: '', children: [] })) if (p.tag === 'Connector' && p.attrs.graphicOID) {
          const key = ancestors.join('/') + ':' + p.attrs.graphicOID;
          const owners = pinOwners.get(key) ?? new Set<string>(); owners.add(identity); pinOwners.set(key, owners);
        }
        const nested = child(n, 'DiagramElements'); if (nested) collect(nested, [...ancestors, id], name);
      }
    };
    collect(child(model, 'DiagramElements')!, [], spec.attrs.name);
    for (const edge of edges) {
      const endpoint = (side: string) => {
        const pin = child(edge.node, side)?.attrs.graphicOID;
        const owners = [...(pinOwners.get(edge.ancestors.join('/') + ':' + (pin ?? '')) ?? [])];
        assert.equal(owners.length, 1, 'AXL endpoint must have one explicit Connector owner');
        return objects.find(o => o.identity === owners[0]);
      };
      const start = endpoint('Start'), end = endpoint('End');
      report.transitions.push({ component_path, diagram: spec.attrs.name, hierarchy_ids: edge.ancestors, id: edge.id, name: edge.name,
        start_id: start.id, start_hierarchy_ids: start.hierarchy_ids, end_id: end.id, end_hierarchy_ids: end.hierarchy_ids,
        priority: Number(edge.node.attrs.priority), trigger: edge.node.attrs.triggerName ?? null,
        actions: child(edge.node, 'Actions')?.children.map(a => ({ kind: a.tag, code: [...walk(a)].filter(c => c.tag === 'CodeBlock').map(c => c.text) })) ?? [] });
    }
    report.states.push(...objects);
  }
}
for (const field of fields) if (field.element_oid) {
  const component = field.file.replace(/\.specification\.amd$/, '').replaceAll('/', '\\');
  const qualified = declarations.get(component + '|' + field.element_oid);
  if (qualified) { field.original_text = field.text; field.text = qualified; }
}
report.parse_ms = performance.now() - started;
report.saved_code_header_blocks = report.code_blocks + report.header_blocks;
const documents: SourceDocument[] = fields.map(f => ({ kind: f.corpus, component_oid: f.file, component_path: f.file,
  implementation_oid: '', variant: JSON.stringify(f.code_variant ?? {}), member_id: f.xml_path + '/@' + f.field,
  member_name: f.method ?? f.specification ?? f.field, language: 'export_field', text: f.text,
  document_id: hash(JSON.stringify([f.file, f.xml_path, f.field])), source_sha256: hash(f.text) }));
const queries = [
  { query: 'AEBLockTime', mode: 'identifier_occurrence' as const },
  { query: 'getAt', mode: 'identifier_occurrence' as const },
  { query: 'init_trigger', mode: 'identifier_occurrence' as const },
  { query: 'AEB_State_Off', mode: 'text' as const },
  { query: '\\bAEB[A-Za-z_0-9]*Active\\b', mode: 'regex' as const },
];
const timings: number[] = [], examples: unknown[] = [];
const byId = new Map(documents.map((d, i) => [d.document_id, fields[i]]));
for (const q of queries) {
  let result = matchDocuments(documents, q.query, q.mode, true);
  assert.ok(result.total_occurrences > 0, 'Real export query must have matches: ' + q.query);
  for (let i = 0; i < 20; i++) {
    const start = performance.now(); result = matchDocuments(documents, q.query, q.mode, true); timings.push(performance.now() - start);
  }
  examples.push({ ...q, matched_fields: result.matched_documents, occurrences: result.total_occurrences,
    examples: result.results.slice(0, 3).map(d => {
      const f = byId.get(d.document_id)!; return { ...f, text: f.text.slice(0, 400), preview_truncated: f.text.length > 400,
        matches: d.matches?.slice(0, 2) };
    }) });
}
// XML/layout/signature syntax is never supplied as a searchable field.
for (const syntax of ['graphicOID', 'SignatureValue', '<Position', 'sequenceNumber']) {
  assert.equal(matchDocuments(documents.filter(d => d.kind !== 'code'), syntax, 'text', true).total_occurrences, 0, syntax);
}
const sorted = timings.toSorted((a, b) => a - b);
report.field_search = { fields: fields.length, queries: examples, samples: timings.length,
  median_ms: sorted[Math.floor(sorted.length / 2)], p95_ms: sorted[Math.ceil(sorted.length * .95) - 1], max_ms: sorted.at(-1),
  boundary: 'Development analysis using the existing matcher on decoded, detached exported fields. Excludes export, parse, live model access, graph reconstruction, Agent response construction and IPC. No new live CLI backend or persistent index.',
  excluded_graph_syntax_checks: ['graphicOID', 'SignatureValue', '<Position', 'sequenceNumber'],
  code_text_boundary: 'Saved code/comments remain intact; XML-like text or bit shifts such as 1<<Position in genuine source are still searchable.' };
await mkdir(output, { recursive: true });
await writeFile(join(output, 'searchable-fields.jsonl'), fields.map(f => JSON.stringify(f)).join('\n') + '\n');
const trace = (await readFile(join(ROOT, 'experiments/structure-discovery/2026-10-03-cold/requests.jsonl'), 'utf8')).trim().split('\n').map(s => JSON.parse(s));
const live = trace.filter(r => r.name === 'state_relation_batch').flatMap(r => r.response.results);
const slots = trace.filter(r => r.name === 'code_slots_batch').flatMap(r => r.response.results);
let statesChecked = 0, transitionsChecked = 0, slotsChecked = 0, triggersChecked = 0;
const slotKinds: Record<string, string> = { EntryAction: 'state_entry', StaticAction: 'state_static', ExitAction: 'state_exit',
  Condition: 'transition_condition', Action: 'transition_action' };
function checkSlots(object: any, element: 'state' | 'transition') {
  for (const action of object.actions) for (const code of action.code) {
    const r = slots.find((r: any) => r.component_path === object.component_path && r.diagram === object.diagram &&
      r.kind === slotKinds[action.kind] && r[element + '_id'] === object.id && JSON.stringify(r.state_hierarchy_ids) === JSON.stringify(object.hierarchy_ids));
    assert.ok(r, 'Exported saved slot must have a live code read: ' + object.name + '/' + action.kind);
    assert.equal(normalize(r.code), normalize(code)); slotsChecked++;
  }
}
for (const s of report.states) {
  const r = live.find((r: any) => r.component_path === s.component_path && r.diagram === s.diagram && r.kind === 'state' && r.state_id === s.id && JSON.stringify(r.state_hierarchy_ids) === JSON.stringify(s.hierarchy_ids));
  assert.ok(r, 'Exported State must be found in live model: ' + s.name); assert.equal(r.state, s.name); assert.equal(r.initial, s.initial); assert.equal(r.history, s.history);
  assert.equal(r.state_kind, s.native_kind === 'Junction' ? 'junction' : s.native_kind === 'HierarchyState' ? 'hierarchy' : 'state');
  checkSlots(s, 'state'); statesChecked++;
}
for (const t of report.transitions) {
  const r = live.find((r: any) => r.component_path === t.component_path && r.diagram === t.diagram && r.kind === 'transition' && r.transition_id === t.id && JSON.stringify(r.state_hierarchy_ids) === JSON.stringify(t.hierarchy_ids));
  assert.ok(r, 'Exported Transition must be found in live model');
  assert.equal(r.start_state.state_id, t.start_id); assert.equal(r.end_state.state_id, t.end_id); assert.equal(r.priority, t.priority);
  assert.deepEqual(r.start_state.state_hierarchy_ids, t.start_hierarchy_ids); assert.deepEqual(r.end_state.state_hierarchy_ids, t.end_hierarchy_ids);
  if (t.trigger) { assert.equal(r.code_slots.find((s: any) => s.kind === 'transition_trigger_binding')?.method_binding.method, t.trigger); triggersChecked++; }
  checkSlots(t, 'transition'); transitionsChecked++;
}
report.live_comparison = { states_checked: statesChecked, transitions_checked: transitionsChecked, saved_code_slots_checked: slotsChecked,
  trigger_bindings_checked: triggersChecked, endpoints_priority_equal: true,
  boundary: 'Existing exported snapshot is checked only for matching original Component paths/Diagram names/hierarchy/native IDs. Extra live test Components are not represented in the export. No freshness claim for an old AXL.' };
const frozen: Snapshot = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
let bdeNodes = 0, bdeConnections = 0, qualifiedNames = 0, orientedConnections = 0, muxControls = 0; const differences: unknown[] = [];
for (const model of bdeModels) {
  const component = frozen.components.find(c => c.path === model.component_path);
  const live = frozen.diagrams?.find(d => d.component_oid === component?.oid && d.name === model.diagram);
  if (!live) { differences.push({ component_path: model.component_path, diagram: model.diagram, issue: 'No matching live Diagram in frozen oracle' }); continue; }
  for (const n of model.nodes) {
    const qualified = declarations.get(model.component_path + '|' + n.element_oid);
    if (qualified) { n.name = qualified; qualifiedNames++; }
    if (n.kind === 'control') muxControls++;
    const actual = live.nodes.find(p => p.scope === n.scope && p.id === n.id);
    if (actual && actual.name === n.name && actual.kind === n.kind) bdeNodes++;
    else differences.push({ component_path: model.component_path, diagram: model.diagram, exported_node: n, live_node: actual ?? null });
  }
  for (const e of model.connections) {
    if (model.pinRoles.get(e.scope + ':' + e.from_pin) === 'input' && model.pinRoles.get(e.scope + ':' + e.to_pin) === 'output') {
      [e.from_pin, e.to_pin] = [e.to_pin, e.from_pin]; orientedConnections++;
    }
    if (live.connections.some(p => p.scope === e.scope && p.from_pin === e.from_pin && p.to_pin === e.to_pin)) bdeConnections++;
    else differences.push({ component_path: model.component_path, diagram: model.diagram, exported_connection: e });
  }
}
report.bde_comparison = { diagrams: bdeModels.length, equal_node_names_kinds: bdeNodes, equal_connections: bdeConnections,
  method_qualified_names_resolved_by_oid: qualifiedNames, connections_oriented_by_exported_pin_roles: orientedConnections,
  exported_mux_operator_classified_as_control: muxControls,
  differences: differences.length, examples: differences.slice(0, 10),
  boundary: 'Only exported BDE Element/Literal/Operator/Hierarchy IDs and names plus saved Connection endpoints are compared. Virtual layout ports, absent Component dependencies and differing export/live snapshots are not assumed equivalent.' };
await writeFile(join(output, 'bde-differences.json'), JSON.stringify(differences, null, 2) + '\n');
const wanted = new Set([
  'EtasAPIDatabase>>exportToXMLFiles:usePath:withReferences:', 'EtasAPIDatabase>>exportToZIPFile:useFilePathName:withReferences:',
  'SGBezierConnectionGODB>>writeXML:class:', 'SGStateGODB>>internalWriteXMLAttrs:', 'SGStateGODB>>internalWriteXMLElements:class:',
]);
report.recovered_export_methods = [];
const methods = createInterface({ input: createReadStream(join(ROOT, '../../analysis/smalltalk-recovery/methods/ASDBase.ic/methods.jsonl')), crlfDelay: Infinity });
for await (const line of methods) {
  const m = JSON.parse(line), bindings = m.bindings?.filter((b: any) => wanted.has(b.clazz + '>>' + b.selector)) ?? [];
  if (bindings.length) report.recovered_export_methods.push({ bindings, address: m.address, bytecode_bytes: m.code_bytes, literals: m.literal_descriptions });
}
assert.ok(report.recovered_export_methods.length >= 5);
report.recovery_boundary = 'Smalltalk bytecode and literal recovery confirms selectors/serialized field names; it is not a complete original Smalltalk source reconstruction.';
report.status = 'passed'; await mkdir(output, { recursive: true }); await writeFile(join(output, 'report.json'), JSON.stringify(report, null, 2) + '\n');
console.log(JSON.stringify({ status: report.status, xml_documents: report.xml_documents, parse_ms: report.parse_ms,
  code_blocks: report.code_blocks, header_blocks: report.header_blocks, saved_code_header_blocks: report.saved_code_header_blocks,
  graph_kinds: report.graph_kinds, table_configs: report.table_configs,
  states: report.states.length, transitions: report.transitions.length, live_comparison: report.live_comparison,
  bde_comparison: { ...report.bde_comparison, examples: undefined },
  field_search: { fields: fields.length, samples: timings.length, median_ms: report.field_search.median_ms,
    p95_ms: report.field_search.p95_ms, max_ms: report.field_search.max_ms }, report: join(output, 'report.json') }, null, 2));
