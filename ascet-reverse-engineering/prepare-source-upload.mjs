import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import assert from 'node:assert/strict';

const workspace = path.resolve(process.argv[2] ?? 'E:/Repo/ASCET');
const repository = path.resolve(process.argv[3] ?? path.join(workspace, 'prototype-as'));
const target = path.join(repository, 'ascet-reverse-engineering');
assert.ok(fs.existsSync(path.join(repository, '.git')), 'Use an existing Git checkout');
assert.ok(!fs.existsSync(target), 'Do not overwrite a prior source delivery');
const roots = {
  decompiled: ['.cs', '.csproj', '.resx', '.manifest', '.rtf', '.xml'],
  'unpacked/dotnet': ['.cs', '.csproj', '.resx', '.manifest', '.rtf', '.xml', '.json', '.log'],
  'unpacked/java': ['.java', '.json', '.txt', '.log'],
  'unpacked/smalltalk-source': ['.st', '.html', '.json', '.md'],
  'analysis/smalltalk-recovery/vm-c': ['.c', '.tsv'],
};
const sourceKinds = new Set(['.cs', '.java', '.st', '.c']);
const files = [], excluded = [];
const sha = value => crypto.createHash('sha256').update(value).digest('hex');
let verified = 0;
function copy(relative) {
  const source = path.join(workspace, relative);
  const destination = path.join(target, relative);
  const data = fs.readFileSync(source);
  assert.ok(data.length < 100 * 1024 * 1024, 'GitHub file limit: ' + relative);
  if (sourceKinds.has(path.extname(relative).toLowerCase())) assert.ok(!data.includes(0), 'Unexpected binary source: ' + relative);
  fs.mkdirSync(path.dirname(destination), { recursive: true });
  fs.writeFileSync(destination, data);
  const digest = sha(data);
  assert.equal(sha(fs.readFileSync(destination)), digest, 'Copied bytes changed');
  files.push({ path: relative.replaceAll('\\', '/'), bytes: data.length, sha256: digest });
  if (++verified % 5000 === 0) console.log(JSON.stringify({ event: 'copy_verified', files: verified }));
}
for (const [root, allowed] of Object.entries(roots)) {
  const walk = directory => {
    for (const entry of fs.readdirSync(path.join(workspace, directory), { withFileTypes: true })) {
      const relative = path.join(directory, entry.name);
      if (entry.isDirectory()) walk(relative);
      else if (entry.isFile() && allowed.includes(path.extname(entry.name).toLowerCase())) copy(relative);
      else if (entry.isFile()) excluded.push({ path: relative.replaceAll('\\', '/'), bytes: fs.statSync(path.join(workspace, relative)).size, reason: 'Outside text-source/evidence allowlist' });
      else throw new Error('Unexpected non-regular entry: ' + relative);
    }
  };
  walk(root);
}
for (const name of ['FORMAT.md', 'source-audit.json', 'snapshot-audit.json', 'link-audit.json', 'unresolved-method-bindings.json',
  'orphan-method-audit.json', 'orphan-ASDBase.ic-0x204c8f64.body.txt', 'tests.log', 'dispatch-table.json']) copy('analysis/smalltalk-recovery/' + name);
for (const name of ['dotnet-results.json', 'java-results.json', 'smalltalk-results.json', 'smalltalk-structure.json',
  'dotnet-smalltalk-selectors.json', 'limitations-and-errors.json', 'verification.json']) copy('analysis/full/' + name);
for (const name of ['decompile_dotnet.py', 'decompile_smalltalk.py', 'smalltalk_image.py', 'recover_smalltalk_methods.py',
  'report_smalltalk_recovery.py', 'test_smalltalk_recovery.py', 'verify_smalltalk_recovery.py', 'inspect_smalltalk_method.py',
  'audit_smalltalk_orphans.py', 'map_smalltalk.py', 'audit_decompilation.py', 'process_all.py', 'unpack_all.py',
  'unpack_extra.py', 'unpack_omf.py', 'ppc_disassemble.py', 'verify_coverage.py',
  'inspect_ascet.py', 'vast_bytecode.py', 'vast_image.py', 'vast_methods.py']) copy('scripts/' + name);
fs.copyFileSync(import.meta.filename, path.join(target, 'prepare-source-upload.mjs'));
files.sort((a, b) => a.path.localeCompare(b.path, 'en'));
const groups = Object.fromEntries(Object.keys(roots).map(root => {
  const selected = files.filter(f => f.path.startsWith(root + '/'));
  return [root, { files: selected.length, bytes: selected.reduce((sum, f) => sum + f.bytes, 0),
    source_files: selected.filter(f => sourceKinds.has(path.extname(f.path))).length }];
}));
const manifest = { schema_version: 1, created_utc: new Date().toISOString(),
  source_workspace: workspace, target_directory: 'ascet-reverse-engineering',
  provenance: 'Existing ASCET 6.4 reverse-engineering outputs. No new decompilation or runtime-equivalence claim.',
  vendor_runtime_included: false, database_included: false,
  source_files: files.filter(f => sourceKinds.has(path.extname(f.path))).length,
  copied_files: files.length, copied_bytes: files.reduce((sum, f) => sum + f.bytes, 0),
  max_file_bytes: Math.max(...files.map(f => f.bytes)), groups, excluded, files };
fs.writeFileSync(path.join(target, 'manifest.json'), JSON.stringify(manifest, null, 2) + '\n');
fs.writeFileSync(path.join(target, 'SHA256SUMS'), files.map(f => f.sha256 + '  ' + f.path).join('\n') + '\n');
console.log(JSON.stringify({ event: 'copy_complete', copied_files: manifest.copied_files, source_files: manifest.source_files,
  bytes: manifest.copied_bytes, max_file_bytes: manifest.max_file_bytes, excluded: excluded.length, groups }));
