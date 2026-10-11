import assert from 'node:assert/strict';
import { readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';

assert.ok(process.argv[2], 'Provide the full-regression report.json');
const path = resolve(process.argv[2]), directory = dirname(path);
const original = JSON.parse(await readFile(path, 'utf8'));
assert.ok(original.completed_utc && original.sources_and_graphs_unchanged && original.protected_processes_unchanged);
const results = structuredClone(original.results);
for (const result of results) {
  if (result.name !== 'verify-live' && result.name !== 'verify-advanced') continue;
  const evidence = JSON.parse(await readFile(join(directory, result.name + '.json'), 'utf8'));
  assert.equal(evidence.correctness_passed, true); assert.equal(evidence.model_stable, true);
  assert.ok(!evidence.fatal_error); assert.ok(result.exit_code === 0 || result.exit_code === 2);
  result.status = 'passed'; result.performance_target_passed = evidence.resident_target_passed === true;
}
assert.ok(results.every((r: any) => r.status === 'passed'), 'Unresolved correctness or delivery failure');
const suites = results.filter((r: any) => r.name.startsWith('verify-') && r.name !== 'verify-cli-package');
assert.equal(suites.length, 22); assert.equal(new Set(suites.map((r: any) => r.name)).size, 22);
const offline = await readFile(join(directory, 'offline.stdout.log'), 'utf8');
const count = (label: string) => Number(offline.match(new RegExp('(?:^|\\n).*?\\b' + label + ' (\\d+)'))?.[1]);
assert.equal(count('tests'), count('pass')); assert.equal(count('fail'), 0);
assert.equal(count('cancelled'), 0); assert.equal(count('skipped'), 0);
async function suiteReport(name: string) {
  const log = await readFile(join(directory, name + '.stdout.log'), 'utf8');
  const summary = JSON.parse(log.slice(log.lastIndexOf('\n{') + 1).trim());
  return JSON.parse(await readFile(join(summary.directory, 'report.json'), 'utf8'));
}
const model = await suiteReport('verify-model-generality'), diagrams = await suiteReport('verify-diagram-generality');
const packaged = await suiteReport('verify-cli-package');
const saved = await suiteReport('verify-saved-readers');
const live = JSON.parse(await readFile(join(directory, 'verify-live.json'), 'utf8'));
const total = (field: string) => Object.values(model.agent.coverage).reduce((n: number, c: any) => n + c[field], 0);
const assessment = {
  status: 'correctness_passed', original_report: path, original_runner_status: original.status,
  original_failed_stages: original.failed_stages,
  classification: 'Only benchmark exits 0/2 with explicit correctness_passed, model_stable and no fatal_error are accepted. Exit 2 remains a performance failure. Original logs/report are preserved.',
  offline_tests: count('tests'), correctness_suites: suites.length,
  sources: { components: original.final_snapshot.components, documents: original.final_snapshot.documents,
    diagrams: original.final_snapshot.diagrams, fingerprint: original.final_snapshot.fingerprint },
  member_verification: { components: total('components'), read_documents: total('read_documents'), read_pages: total('read_pages'),
    query_checks: total('query_checks'), requests: model.agent.requests, state_slots: model.state_slots },
  diagram_verification: { fields: diagrams.searchable_fields, query_checks: diagrams.query_checks,
    hit_coordinates: diagrams.compared_hit_coordinates, preview_lines: diagrams.checked_preview_lines,
    graph_reads: diagrams.graph_reads, oversized_graph_rejections: diagrams.oversized_graph_rejections,
    complete_diagram_reads: diagrams.diagrams_read },
  saved_record_verification: saved.payload.slice(saved.payload.lastIndexOf('COUNTS|')),
  delivery: { ...original.package, cli_calls: packaged.cli_calls, hashes_verified: packaged.file_hashes_verified,
    runtime_requires_no_npm_install: packaged.runtime_requires_no_npm_install,
    packaged_sources_rebuilt_and_live_verified: packaged.packaged_sources_rebuilt_and_live_verified },
  performance: { benchmark_target_passed: live.resident_target_passed,
    live_over_500ms: live.attempts.filter((a: any) => a.elapsed_ms >= 500).map((a: any) => ({ phase: a.phase, request: a.request, elapsed_ms: a.elapsed_ms })),
    diagram_global_batch_ms: diagrams.timings_ms['global-batch'] },
  sources_and_graphs_unchanged: true, protected_processes_unchanged: true,
  remaining_boundaries: ['Actual unsaved new/deleted Component workflows', 'Arbitrary vendor/custom node classes', 'Other Database sizes', 'Universal 500 ms or cold-load guarantee'],
};
await writeFile(join(directory, 'correctness-assessment.json'), JSON.stringify(assessment, null, 2) + '\n');
console.log(JSON.stringify(assessment, null, 2));
