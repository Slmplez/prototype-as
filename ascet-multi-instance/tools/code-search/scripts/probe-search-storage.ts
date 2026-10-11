import { execFileSync } from 'node:child_process';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT, JsonLineClient } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/storage-probe'); await mkdir(directory, { recursive: true });
const source = `[:db :mode :input | db handleExceptionsIn: [
 | output seen inspect walk paths visitPath sourceOwner sourceRoot | output := WriteStream on: String new. seen := Set new.
 visitPath := [:value :path :depth |
  (depth <= 128 and: [value ~~ sourceOwner and: [value ~~ sourceRoot]]) ifTrue: [
   ((value isKindOf: String) or: [value isKindOf: Symbol]) ifTrue: [
    ((value asString asLowercase includesSubstring: 'return') or: [value asString asLowercase includesSubstring: 'set']) ifTrue: [
     output nextPutAll: 'MATCH '; nextPutAll: path; nextPutAll: ' = '; nextPutAll: value asString; cr]
   ] ifFalse: [
   ((value isKindOf: ByteArray) or: [value isNil or: [value isNumber]]) ifFalse: [
    (paths includes: value) ifFalse: [paths add: value.
     (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :entry |
      visitPath value: key value: path, '/key' value: depth + 1.
      visitPath value: entry value: path, '/', key printString value: depth + 1]] ifFalse: [
     ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [
      1 to: value size do: [:i | visitPath value: (value at: i) value: path, '/', i printString value: depth + 1]] ifFalse: [
     (value isKindOf: SGGraphicObjectsDB) ifTrue: [
      1 to: value class instSize do: [:i | visitPath value: (value instVarAt: i) value: path, '/', (value class allInstVarNames at: i) asString value: depth + 1]]]]
    ]]]
  ]
 ].
 inspect := [:object | | names | (seen includes: object class) ifFalse: [
  seen add: object class. output nextPutAll: object class name asString; cr.
  names := object class allInstVarNames.
  1 to: object class instSize do: [:i | | v | v := object instVarAt: i.
   output nextPutAll: (names at: i); nextPutAll: ': '; nextPutAll: v class name asString; nextPutAll: ' '.
   ((v isKindOf: String) or: [v isKindOf: Symbol]) ifTrue: [output nextPutAll: v asString].
   ((names at: i) asString = 'returnPorts' or: [(names at: i) asString = 'selectorPorts']) ifTrue: [output nextPutAll: v printString].
   (v isNumber or: [v isNil]) ifTrue: [output nextPutAll: v printString].
   ((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [
    output nextPutAll: v size printString.
    v do: [:entry | output nextPutAll: ' ['; nextPutAll: entry class name asString; nextPutAll: ']'.
      (entry isKindOf: SGGraphicObjectsDB) ifTrue: [inspect value: entry]]]. output cr
  ]]].
 walk := [:tree | inspect value: tree. tree blocks do: [:b | b isHierarchyDB ifTrue: [walk value: b] ifFalse: [inspect value: b]].
  tree others do: [:b | inspect value: b]].
 (db library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | c | c := key getObjectIfUndefined: [:unused | nil].
  (c notNil and: [c isValidObject and: [c isContainer not]]) ifTrue: [c specifications do: [:s |
   (s isBdSpecification and: [s specSourceInternalOrNil notNil]) ifTrue: [
    walk value: s specSourceInternalOrNil.
    paths := IdentitySet new. sourceOwner := s specSourceInternalOrNil dbObject. sourceRoot := s specSourceInternalOrNil graphicBlock.
    output nextPutAll: 'SOURCE '; nextPutAll: c getAPIHandle getFolderPathName; nextPutAll: '/'; nextPutAll: s specificationName; cr.
    visitPath value: s specSourceInternalOrNil value: 'saved' value: 0
   ]]]].
 output contents] ifFail: [:e | 'PROBE_ERROR: ', e printString, ' ', e arguments printString]]`;
const script = join(directory, 'probe.st'), exe = join(directory, 'probe.exe'); await writeFile(script, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + exe, '/resource:' + script + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
const client = new JsonLineClient({ command: exe, env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631' }, timeoutMs: 90000 });
try { const response = await client.request({ mode: 'snapshot' }); await writeFile(join(directory, 'raw.json'), JSON.stringify(response)); console.log((response as any).payload); } finally { await client.close(); }
