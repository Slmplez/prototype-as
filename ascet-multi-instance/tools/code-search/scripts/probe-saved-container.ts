import assert from 'node:assert/strict';
import { execFile, execFileSync, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { copyFile, cp, mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { performance } from 'node:perf_hooks';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.notEqual(instance.port, 32503); assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
const directory = join(ROOT, 'experiments/saved-container', new Date().toISOString().replace(/[:.]/g, '-'));
const benchmark = process.env.ASCET_SAVED_BENCHMARK === '1';
const profile = process.env.ASCET_SAVED_PROFILE === '1';
const savedDiagrams = process.env.ASCET_SAVED_DIAGRAMS === '1';
const forceDiagrams = process.env.ASCET_SAVED_DIAGRAM_FORCE === '1';
const skipDecorations = process.env.ASCET_SAVED_DECORATIONS === 'skip';
const codeTemplates = process.env.ASCET_CODE_TEMPLATES === '1';
const codeHeadless = process.env.ASCET_CODE_HEADLESS === '1';
assert.ok(!codeHeadless || !codeTemplates);
const ownedDiagrams = process.env.ASCET_SAVED_DIAGRAM_OWNED === '1';
const cliBenchmark = process.env.ASCET_SAVED_CLI === '1';
const graphicShadows = process.env.ASCET_GRAPHIC_SHADOWS === '1';
const codeShapes = process.env.ASCET_CODE_SHAPE_TEMPLATES === '1';
const literalTemplates = process.env.ASCET_LITERAL_TEMPLATES === '1';
const planDiagnostics = process.env.ASCET_PLAN_DIAGNOSTICS === '1';
const aliasDescriptors = process.env.ASCET_ALIAS_DESCRIPTOR_COPY === '1';
const complexTemplates = process.env.ASCET_COMPLEX_TEMPLATES === '1';
const bitmapCopy = process.env.ASCET_BITMAP_COPY === '1';
const layoutWordChecks = process.env.ASCET_SAVED_WORD_CHECKS === 'layout';
const initializeNativeGraphics = process.env.ASCET_NATIVE_INITIALIZE === '1';
assert.ok(!initializeNativeGraphics || !savedDiagrams);
assert.ok(!complexTemplates || (ownedDiagrams && !codeHeadless && !literalTemplates && !graphicShadows && !codeTemplates));
assert.ok(!aliasDescriptors || codeHeadless || literalTemplates || complexTemplates);
assert.ok(!bitmapCopy || aliasDescriptors);
assert.ok(!planDiagnostics || (!cliBenchmark && (codeHeadless || literalTemplates || complexTemplates)));
assert.ok(!literalTemplates || (ownedDiagrams && !codeHeadless && !codeTemplates && !graphicShadows));
assert.ok(!codeShapes || codeHeadless);
assert.ok(!graphicShadows || (ownedDiagrams && !codeHeadless && !codeTemplates));
assert.ok(!cliBenchmark || (benchmark && !profile), 'CLI needs the benchmark reader without protocol diagnostics');
await mkdir(directory, { recursive: true });
const reader = await readFile(join(ROOT, 'saved-container-reader.st'), 'utf8');
const tableEnd = reader.indexOf(" rrPhase value: 'root pointer'.");
assert.ok(tableEnd > 0);
let tableReader = reader.slice(0, tableEnd) + `
 rrResult := Dictionary new. rrResult at: #record put: rrRecord; at: #word put: rrWord;
  at: #lookup put: rrLookup; at: #string put: rrString; at: #pointers put: rrPointers; at: #root put: rrRootBase.
 rrResult ]`;
if (layoutWordChecks) {
  const checkedWord = "rrRequire value: (position >= 1 and: [position + 3 <= rrRecord size]) value: 'word bounds'. ";
  assert.ok(tableReader.includes(checkedWord));
  // Every word access follows validated record/object bounds and exact layouts.
  tableReader = tableReader.replace(checkedWord, '');
}
let diagramReader = (await readFile(join(ROOT, 'scripts/saved-diagram-reader.st'), 'utf8')).replace('@@SAVED_TABLE_READER@@', `(${tableReader})`);
if (skipDecorations) diagramReader = diagramReader.replace(
  "1 to: names size do: [:i | result instVarAt: i put: (drResolve value: (drWord value: (object at: 4) + ((i - 1) * 4)) value: depth + 1)]",
  "1 to: names size do: [:i | result instVarAt: i put: ((names at: i) = 'attributedViewNames' ifTrue: [nil] ifFalse: [drResolve value: (drWord value: (object at: 4) + ((i - 1) * 4)) value: depth + 1])]");
let source = (await readFile(join(ROOT, 'native-snapshot.st'), 'utf8')).replaceAll('\r\n', '\n');
const change = (from: string, to: string) => { assert.ok(source.includes(from), from); source = source.replace(from, to); };
change('containerReader |', 'containerReader recordReader recordReadMs recordAssertCount |');
if (!cliBenchmark) change("        stage := 'directory'.", `        recordReader := (${reader}). recordReadMs := 0. recordAssertCount := 0.
        stage := 'directory'.`);
change('| cc |', '| cc saved savedRecord began savedSources |');
if (!cliBenchmark) change('cc := entry value getObjectOrUndefined', `began := Time millisecondClockValue.
                savedRecord := entry value dbInterface readRecord: entry value.
                savedRecord isError ifTrue: [dbAPI error: 'CONTAINER_RECORD_FAILED'].
                (entry value dbInterface linDeLin loadMethodFromRecord: savedRecord) = #loadSwapper:blobStart:
                    ifFalse: [dbAPI error: 'UNSUPPORTED_CONTAINER_DECODER'].
                saved := recordReader valueWithArguments: (Array with: dbAPI with: savedRecord with: savedRecord class blobStart
                    with: [:phase | stage := 'saved ', path, '/', phase]).
                recordReadMs := recordReadMs + (Time millisecondClockValue - began).
                cc := entry value getObjectOrUndefined.
                (cc cProcedureSources size = (saved at: #procedures) size) ifFalse: [dbAPI error: 'SAVED_METHOD_COUNT_MISMATCH'].
                (saved at: #procedures) keysAndValuesDo: [:alias :body |
                    | actualAlias | actualAlias := cc cProcedureSources keys detect: [:key | (hex value: key) = (hex value: alias)]
                        ifNone: [dbAPI error: 'SAVED_METHOD_ALIAS_MISMATCH'].
                    (cc procSourceAt: actualAlias) = body ifFalse: [dbAPI error: 'SAVED_METHOD_BODY_MISMATCH ',
                        (cc procSourceAt: actualAlias) size printString, '/', body size printString].
                    recordAssertCount := recordAssertCount + 1].
                cc cSource value = (saved at: #external_c) ifFalse: [dbAPI error: 'SAVED_C_SOURCE_MISMATCH'].
                cc hSource value = (saved at: #external_h) ifFalse: [dbAPI error: 'SAVED_H_SOURCE_MISMATCH'].
                ((cc instVarNamed: 'localHSource') isNil = (saved at: #header) isNil) ifFalse: [dbAPI error: 'SAVED_HEADER_PRESENCE_MISMATCH'].
                (saved at: #header) ifNotNil: [:body | cc localHSource = body ifFalse: [dbAPI error: 'SAVED_HEADER_MISMATCH']].
                recordAssertCount := recordAssertCount + 3`);
if (benchmark && !cliBenchmark) {
  change('                containerReader ifNotNil: [cc := containerReader value: dbAPI value: entry value value: component methods].', '');
  const begin = source.indexOf('                cc := entry value getObjectOrUndefined.');
  const end = source.indexOf('                recordAssertCount := recordAssertCount + 3', begin);
  assert.ok(begin >= 0 && end > begin);
  source = source.slice(0, begin) + `                savedSources := Dictionary new.
                (saved at: #procedures) keysAndValuesDo: [:alias :body | savedSources at: (hex value: alias) put: body].
                recordAssertCount := recordAssertCount + 3` + source.slice(end + '                recordAssertCount := recordAssertCount + 3'.length);
  change("                cc isRBDBUndefinedObject ifTrue: [dbAPI error: 'Undefined code container'].", '');
  change('(cc cProcedureSources at: method aliasName ifAbsent: [nil])', '(savedSources at: member ifAbsent: [nil])');
  change('(cc procSourceAt: method aliasName)', "(savedSources at: member ifAbsent: [''])");
  change("(cc instVarNamed: 'localHSource')", '(saved at: #header)');
  change('cc localHSource', '(saved at: #header)');
  change('cc cSource value', '(saved at: #external_c)');
  change('cc hSource value', '(saved at: #external_h)');
}
if (profile) {
  change('| api |', '| api phaseBegin phaseModel phaseArchive phaseDiagram phaseState |');
  change("stage := 'load'. oid := key printString. path := ''.", "phaseBegin := Time millisecondClockValue. stage := 'load'. oid := key printString. path := ''.");
  change('                    (component isCClass or: [component isASDLClass]) ifTrue: [',
    '                    phaseModel := Time millisecondClockValue - phaseBegin. phaseBegin := Time millisecondClockValue.\n                    (component isCClass or: [component isASDLClass]) ifTrue: [');
  change('                    (includeDiagrams and:',
    '                    phaseArchive := Time millisecondClockValue - phaseBegin. phaseBegin := Time millisecondClockValue.\n                    (includeDiagrams and:');
  change('                    component isSmClass ifTrue: [',
    '                    phaseDiagram := Time millisecondClockValue - phaseBegin. phaseBegin := Time millisecondClockValue.\n                    component isSmClass ifTrue: [');
  change('                    ]\n                ]\n            ] ifFail: [:error |', `                    ].
                    phaseState := Time millisecondClockValue - phaseBegin.
                    row value: (OrderedCollection new add: '#SAVED_PHASE'; add: path; add: phaseModel printString;
                        add: phaseArchive printString; add: phaseDiagram printString; add: phaseState printString;
                        add: ''; add: ''; add: ''; add: ''; yourself)
                ]
            ] ifFail: [:error |`);
}
if (!cliBenchmark) change('        out contents', `        ${planDiagnostics ? "row value: (OrderedCollection new add: '#PLAN'; add: (bdeLoadFactory at: 5) printString; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; yourself)." : ''}
        row value: (OrderedCollection new add: '#SAVED_CONTAINER'; add: recordReadMs printString;
            add: recordAssertCount printString; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
        out contents`);
if (savedDiagrams) {
  change('recordAssertCount |', 'recordAssertCount savedDiagramReader savedDiagramRead savedDiagramMemo bdeOwnedSources savedGraphicCreator graphicShadowReader graphicShadowCreator savedCodeCreator savedLiteralCreator |');
  if (ownedDiagrams) diagramReader = diagramReader.replace('result := cls basicNew.', `result := cls == SGDataGODB ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [cls basicNew].
     cls == SGDataGODB ifTrue: [result instVarAt: result class instSize put: savedGraphicCreator].`);
  if (graphicShadows) diagramReader = diagramReader.replace(' drMemo := Dictionary new.',
    " drAllowed at: 'SGWrapperDB' put: SGWrapperDB.\n drMemo := Dictionary new.").replace(
    'drRoot class == SGTopGraphicsBlockDB',
    'drRoot class == SGTopGraphicsBlockDB or: [drRoot class == SGWrapperDB and: [drRoot contents isKindOf: SGCodeGODB]]');
  if (literalTemplates) diagramReader = diagramReader.replace('ifFalse: [cls basicNew].',
    'ifFalse: [cls == SGLiteralGODB ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [cls basicNew]].\n     cls == SGLiteralGODB ifTrue: [result instVarAt: result class instSize put: savedLiteralCreator].');
  if (codeHeadless && ownedDiagrams) diagramReader = diagramReader.replace('ifFalse: [cls basicNew].',
    'ifFalse: [cls == SGCodeGODB ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [cls basicNew]].\n     cls == SGCodeGODB ifTrue: [result instVarAt: result class instSize put: savedCodeCreator].');
  change("        stage := 'directory'.", `        savedDiagramReader := (${diagramReader}).
        bdeOwnedSources := IdentitySet new. savedGraphicCreator := (bdeLoadFactory at: 2) value: Dictionary new.
        savedCodeCreator := ${codeHeadless ? `(bdeLoadFactory at: 4)${codeShapes ? ' value: Dictionary new' : ''}` : 'nil'}.
        savedLiteralCreator := ${literalTemplates ? '(bdeLoadFactory at: 4) value' : 'nil'}.
        savedDiagramMemo := IdentityDictionary new.
        savedDiagramRead := [:savedSpec | | proxy cached record candidate |
            proxy := savedSpec sourceKey.
            savedSpec isBdSpecification ifFalse: [savedSpec specSourceInternalOrNil] ifTrue: [
            savedDiagramMemo at: savedSpec ifAbsentPut: [
            cached := ${forceDiagrams ? 'nil' : 'proxy getCachedDBObject'}.
            cached ifNotNil: [cached] ifNil: [
                record := proxy dbInterface readRecord: proxy.
                record isError ifTrue: [dbAPI error: 'SAVED_DIAGRAM_READ_FAILED'].
                (proxy dbInterface linDeLin loadMethodFromRecord: record) = #loadSwapper:blobStart:
                    ifFalse: [dbAPI error: 'SAVED_DIAGRAM_DECODER_UNSUPPORTED'].
                candidate := savedDiagramReader valueWithArguments: (Array with: dbAPI with: record with: record class blobStart
                    with: [:phase | stage := 'saved Diagram ', savedSpec specificationName, '/', phase]).
                bdeOwnedSources add: candidate. candidate
            ]]]].
        stage := 'directory'.`);
  source = source.replaceAll('spec specSourceInternalOrNil', '(savedDiagramRead value: spec)');
}
if (graphicShadows) {
  change("        stage := 'directory'.", `        graphicShadowReader := savedDiagramReader.
        graphicShadowCreator := (bdeLoadFactory at: 4) value: graphicShadowReader value: dbAPI.
        stage := 'directory'.`);
}
const sourcePath = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(sourcePath, source);
const resources = ['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-source-reader.st,bde-reader.st',
  'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'bde-load-factory.st,bde-load-factory.st', 'native-transport.st,native-transport.st'];
resources.push('container-source-reader.st,container-source-reader.st', 'saved-container-reader.st,saved-container-reader.st');
if (initializeNativeGraphics) {
  const factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
  const ending = '    Array with: ownedClass with: createGraphic';
  assert.ok(factory.includes(ending));
  const initialized = factory.replace(ending, `    "Initialize generic library resources without loading database models or sources."
    [ | scalar | scalar := SGReal new.
      ownedGraphicClass createDefault: 'Scalar' procedures: scalar methods positions: scalar methodPositions.
      SGLiteralGO createDefault: ''.
      SGCodeGO createDefault: 'Component' procedures: #() positions: Dictionary new
    ] value.
${ending}`);
  await writeFile(join(directory, 'factory.st'), initialized);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
}
if (ownedDiagrams) {
  const bde = (await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8')).replace(
    'bdeDetachedSource := bdeCopySource value: bdeSavedSource.',
    'bdeDetachedSource := (bdeOwnedSources includes: bdeSavedSource) ifTrue: [bdeSavedSource] ifFalse: [bdeCopySource value: bdeSavedSource].');
  await writeFile(join(directory, 'bde-owned.st'), bde);
  resources[resources.indexOf('bde-source-reader.st,bde-reader.st')] = join(directory, 'bde-owned.st') + ',bde-reader.st';
}
if (codeTemplates) {
  let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
  factory = factory.replace('copyGraphic |', 'copyGraphic ownedCodeClass createCodeGraphic |').replace(
    '    Array with: ownedClass with: createGraphic',
    (await readFile(join(ROOT, 'scripts/code-template-factory.st'), 'utf8')) + '\n    Array with: ownedClass with: createGraphic with: ownedCodeClass with: createCodeGraphic');
  let bde = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
  bde = bde.replace('bdeTemplateCreator |', 'bdeTemplateCreator bdeCodeTemplateCreator |').replace(
    'bdeTemplateCreator := (bdeLoadFactory at: 2) value: Dictionary new.',
    'bdeTemplateCreator := (bdeLoadFactory at: 2) value: Dictionary new. bdeCodeTemplateCreator := (bdeLoadFactory at: 4) value: IdentityDictionary new.').replace(
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value shallowCopy].',
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value class == SGCodeGODB ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [value shallowCopy]].').replace(
    'value class == SGDataGODB ifTrue: [copied instVarAt: copied class instSize put: bdeTemplateCreator].',
    'value class == SGDataGODB ifTrue: [copied instVarAt: copied class instSize put: bdeTemplateCreator]. value class == SGCodeGODB ifTrue: [copied instVarAt: copied class instSize put: bdeCodeTemplateCreator].');
  await writeFile(join(directory, 'factory.st'), factory); await writeFile(join(directory, 'bde.st'), bde);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
  resources[resources.indexOf('bde-source-reader.st,bde-reader.st')] = join(directory, 'bde.st') + ',bde-reader.st';
}
if (codeHeadless) {
  const normalShape = `graphic := ownedCodeGraphicClass createUpdatedDisplay: label actualName: label icon: stored iconDBImage
            lineStyle: stored lineStyle size: stored size.`;
  let codeFactory = (await readFile(join(ROOT, 'scripts/code-headless-factory.st'), 'utf8'))
    .replace('@@CODE_CREATOR_OPEN@@', codeShapes ? '[:templates | ' : '')
    .replace('@@CODE_CREATOR_LOCALS@@', codeShapes ? 'plan key' : '')
    .replace('@@CODE_CREATOR_CLOSE@@', codeShapes ? ']' : '')
    .replace('@@CODE_SHAPE@@', codeShapes ? `stored iconDBImage isNil ifTrue: [
            key := Array with: stored size x with: stored size y.
            plan := templates at: key ifAbsentPut: [
                graphic := ownedCodeGraphicClass createUpdatedDisplay: '' actualName: '' icon: nil
                    lineStyle: stored lineStyle size: stored size.
                copyGraphic value: graphic].
            graphic := plan ifNil: [nil] ifNotNil: [plan value]
        ] ifFalse: [graphic := nil].
        graphic isNil ifTrue: [${normalShape}] ifFalse: [graphic frameGO setRBLineStyle: stored lineStyle].` : normalShape);
  let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
  factory = factory.replace('copyGraphic |', 'copyGraphic ownedCodeClass ownedCodeGraphicClass createCodeGraphic |').replace(
    '    Array with: ownedClass with: createGraphic',
    codeFactory + '\n    Array with: ownedClass with: createGraphic with: ownedCodeClass with: createCodeGraphic');
  let bde = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
  bde = bde.replace('ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value shallowCopy].',
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value class == SGCodeGODB ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [value shallowCopy]].\n                        value class == SGCodeGODB ifTrue: [copied instVarAt: copied class instSize put: savedCodeCreator].');
  if (ownedDiagrams) bde = bde.replace('bdeDetachedSource := bdeCopySource value: bdeSavedSource.',
    'bdeDetachedSource := (bdeOwnedSources includes: bdeSavedSource) ifTrue: [bdeSavedSource] ifFalse: [bdeCopySource value: bdeSavedSource].');
  await writeFile(join(directory, 'factory.st'), factory); await writeFile(join(directory, 'bde.st'), bde);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
  const bdeResource = resources.findIndex(resource => resource.endsWith(',bde-reader.st'));
  resources[bdeResource] = join(directory, 'bde.st') + ',bde-reader.st';
}
if (ownedDiagrams) {
  let prefilter = await readFile(join(ROOT, 'bde-prefilter.st'), 'utf8');
  const dataSlot = graphicShadows ? 3 : 1;
  prefilter = prefilter.replace('1 to: pfValue class instSize do:',
    `1 to: ((pfValue class == (bdeLoadFactory at: ${dataSlot})) ifTrue: [SGDataGODB instSize] ifFalse: [${codeHeadless ? 'pfValue class == (bdeLoadFactory at: 3) ifTrue: [SGCodeGODB instSize] ifFalse: [pfValue class instSize]' : literalTemplates ? 'pfValue class == (bdeLoadFactory at: 3) ifTrue: [SGLiteralGODB instSize] ifFalse: [pfValue class instSize]' : 'pfValue class instSize'}]) do:`);
  if (literalTemplates) prefilter = prefilter.replace('pfValue class == SGLiteralGODB', '(pfValue class == SGLiteralGODB or: [pfValue class == (bdeLoadFactory at: 3)])');
  await writeFile(join(directory, 'prefilter.st'), prefilter);
  resources[resources.indexOf('bde-prefilter.st,bde-prefilter.st')] = join(directory, 'prefilter.st') + ',bde-prefilter.st';
}
if (literalTemplates) {
  const factory = (await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8'))
    .replace('copyGraphic |', 'copyGraphic ownedLiteralClass createLiteralGraphic |').replace(
      '    Array with: ownedClass with: createGraphic',
      (await readFile(join(ROOT, 'scripts/literal-template-factory.st'), 'utf8')) + '\n    Array with: ownedClass with: createGraphic with: ownedLiteralClass with: createLiteralGraphic');
  let bde = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
  bde = bde.replace('lfStored class == SGLiteralGODB', '(lfStored class == SGLiteralGODB or: [lfStored class == (bdeLoadFactory at: 3)])').replace(
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value shallowCopy].',
    'ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value class == SGLiteralGODB ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [value shallowCopy]].\n                        value class == SGLiteralGODB ifTrue: [copied instVarAt: copied class instSize put: savedLiteralCreator].').replace(
    'bdeDetachedSource := bdeCopySource value: bdeSavedSource.',
    'bdeDetachedSource := (bdeOwnedSources includes: bdeSavedSource) ifTrue: [bdeSavedSource] ifFalse: [bdeCopySource value: bdeSavedSource].');
  await writeFile(join(directory, 'factory.st'), factory); await writeFile(join(directory, 'bde.st'), bde);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
  resources[resources.findIndex(resource => resource.endsWith(',bde-reader.st'))] = join(directory, 'bde.st') + ',bde-reader.st';
}
if (complexTemplates) {
  const originalFactory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
  const factory = originalFactory.replace('        ] ifFalse: [nil]\n    ]].', `        ] ifFalse: [
            (represented isKindOf: SGItemWithSpec) ifTrue: [
                ((represented class whichClassIncludesSelector: #graphicObject) == SGItemWithSpec and: [
                    (represented class whichClassIncludesSelector: #graphicObjectWithMissingPins:) == SGItemWithSpec]) ifTrue: [
                    template := templates at: represented ifAbsentPut: [copyGraphic value: represented graphicObject].
                    template ifNil: [nil] ifNotNil: [template value]
                ] ifFalse: [nil]
            ] ifFalse: [nil]
        ]
    ]].`);
  assert.notEqual(factory, originalFactory, 'Complex factory insertion');
  await writeFile(join(directory, 'factory.st'), factory);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
}
if (planDiagnostics) {
  const resource = resources.findIndex(value => value.endsWith(',bde-load-factory.st'));
  const path = resources[resource].slice(0, -',bde-load-factory.st'.length);
  let factory = await readFile(path, 'utf8');
  factory = factory.replace('createGraphic copyGraphic ', 'createGraphic copyGraphic planFailures ')
    .replace('    copyGraphic :=', '    planFailures := Dictionary new.\n    copyGraphic :=')
    .replace('ifFalse: [supported := false]\n                    ]]]]',
      'ifFalse: [supported := false. planFailures at: name put: (planFailures at: name ifAbsent: [0]) + 1]\n                    ]]]]')
    .replace(/with: createCodeGraphic(?=\r?\n)/, 'with: createCodeGraphic), (Array with: planFailures)')
    .replace(/with: createLiteralGraphic(?=\r?\n)/, 'with: createLiteralGraphic), (Array with: planFailures)')
    .replace('    Array with: ownedClass with: createGraphic with:', '    (Array with: ownedClass with: createGraphic with:');
  if (complexTemplates) factory = factory.replace('Array with: ownedClass with: createGraphic\r',
    'Array with: ownedClass with: createGraphic with: nil with: nil with: planFailures\r').replace(
    'Array with: ownedClass with: createGraphic\n', 'Array with: ownedClass with: createGraphic with: nil with: nil with: planFailures\n');
  await writeFile(path, factory);
}
if (aliasDescriptors) {
  const resource = resources.findIndex(value => value.endsWith(',bde-load-factory.st'));
  const path = resources[resource].slice(0, -',bde-load-factory.st'.length);
  let factory = (await readFile(path, 'utf8')).replace(
    "#('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name",
    "#('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'SGAliasMethod' 'SGAliasMethodArgument' 'SGAliasMethodParameter') includes: name");
  if (bitmapCopy) factory = factory.replace("'SGAliasMethodParameter') includes: name",
    "'SGAliasMethodParameter' 'CgDeviceIndependentImage' 'CgIndexedPalette' 'CgDirectPalette') includes: name");
  await writeFile(path, factory);
}
if (graphicShadows) {
  let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
  factory = factory.replace('(self instVarAt: self class instSize) value: represented value: element value: model',
    '(self instVarAt: SGDataGODB instSize + 1) value: represented value: element value: model');
  const scalarMethod = factory.match(/ownedMethod := EsCompiler compile: '([\s\S]*?)' inClass: ownedClass/);
  assert.ok(scalarMethod);
  const shadowFactory = (await readFile(join(ROOT, 'scripts/graphic-shadow-factory.st'), 'utf8')).replace('@@SCALAR_METHOD@@',
    `ownedMethod := EsCompiler compile: '${scalarMethod[1].replace(/^graphicObject:/, 'scalarGraphicObject:')}' inClass: complexDataClass ifFail: [:failure | SGDataGODB error: failure printString].
    complexDataClass addSelector: ownedMethod selector withMethod: ownedMethod.`);
  factory = factory.replace('copyGraphic |', 'copyGraphic shadowClasses createGraphicShadow complexDataClass |').replace(
    '    Array with: ownedClass with: createGraphic',
    shadowFactory + '\n    Array with: ownedClass with: createGraphic with: complexDataClass with: createGraphicShadow');
  let bde = await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8');
  bde = bde.replace('[(bdeLoadFactory at: 1) basicNew]', '[(bdeLoadFactory at: 3) basicNew]').replace(
    'value class == SGDataGODB ifTrue: [copied instVarAt: copied class instSize put: bdeTemplateCreator].',
    'value class == SGDataGODB ifTrue: [copied instVarAt: SGDataGODB instSize + 1 put: bdeTemplateCreator. copied instVarAt: copied class instSize put: graphicShadowCreator].').replace(
    'bdeDetachedSource := bdeCopySource value: bdeSavedSource.',
    'bdeDetachedSource := (bdeOwnedSources includes: bdeSavedSource) ifTrue: [bdeSavedSource] ifFalse: [bdeCopySource value: bdeSavedSource].');
  source = source.replace('cls == SGDataGODB ifTrue: [(bdeLoadFactory at: 1) basicNew]', 'cls == SGDataGODB ifTrue: [(bdeLoadFactory at: 3) basicNew]').replace(
    'cls == SGDataGODB ifTrue: [result instVarAt: result class instSize put: savedGraphicCreator].',
    'cls == SGDataGODB ifTrue: [result instVarAt: SGDataGODB instSize + 1 put: savedGraphicCreator. result instVarAt: result class instSize put: graphicShadowCreator].');
  await writeFile(sourcePath, source);
  await writeFile(join(directory, 'factory.st'), factory); await writeFile(join(directory, 'bde.st'), bde);
  resources[resources.indexOf('bde-load-factory.st,bde-load-factory.st')] = join(directory, 'factory.st') + ',bde-load-factory.st';
  resources[resources.findIndex(resource => resource.endsWith(',bde-reader.st'))] = join(directory, 'bde.st') + ',bde-reader.st';
}
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary, '/resource:' + sourcePath + ',snapshot.st',
  ...resources.map(resource => '/resource:' + resolve(ROOT, resource)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const runFile = promisify(execFile);
if (cliBenchmark) {
  await cp(join(ROOT, 'dist/src'), join(directory, 'dist/src'), { recursive: true });
  await copyFile(binary, join(directory, 'CodeSearchBridge.exe'));
  await writeFile(join(directory, 'package.json'), JSON.stringify({ type: 'module' }));
}
const report: Record<string, any> = { status: 'running', directory, benchmark, profile, cli_benchmark: cliBenchmark, initialize_native_graphics: initializeNativeGraphics, layout_word_checks: layoutWordChecks, graphic_shadows: graphicShadows, code_shapes: codeShapes, literal_templates: literalTemplates, complex_templates: complexTemplates, alias_descriptor_copy: aliasDescriptors, bitmap_copy: bitmapCopy, saved_diagrams: savedDiagrams, force_diagrams: forceDiagrams, skip_decorations: skipDecorations, code_templates: codeTemplates, code_headless: codeHeadless, owned_diagrams: ownedDiagrams,
  boundary: 'Experimental validated saved-record parser with native decryption, compared field by field to live Code Container getters. No shared loader replacement, model edits, source index or production reader change.' };
const samples: unknown[] = [];
try {
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do {
      $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
      Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline)
    throw 'Isolated API endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'saved-container-host'), instance.database, String(identity.pid)], { windowsHide: true });
  host.stdin.end('{"id":1,"op":"quit"}\n'); let output = '', errors = '';
  host.stdout.on('data', value => output += value); host.stderr.on('data', value => errors += value);
  const timer = setTimeout(() => host.kill(), 45_000);
  try { assert.equal(await new Promise((resolve, reject) => { host.once('error', reject); host.once('close', resolve); }), 0, output + errors); }
  finally { clearTimeout(timer); }
  if (cliBenchmark) {
    const cli = new JsonLineClient({ command: process.execPath, args: [join(directory, 'dist/src/cli.js'), '--agent'],
      env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' }, timeoutMs: 90_000 });
    const queries = [{ query: 'set' }, { query: 'set', limit: 200 },
      { query: '\\b(get|set)\\b', mode: 'regex', group_by: 'object', limit: 20 },
      { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' }];
    try {
      const catalogStarted = performance.now();
      const catalog = await cli.request({ operation: 'find', target: 'components', limit: 1 }) as any;
      report.startup_catalog_ms = performance.now() - catalogStarted;
      assert.equal(catalog.status, 'ok', JSON.stringify(catalog));
      for (let round = 0; round < 3; round++) for (const request of queries) {
        const started = performance.now(), response = await cli.request(request) as any;
        const elapsed = performance.now() - started;
        assert.equal(response.status, 'ok', JSON.stringify(response.issues));
        samples.push({ cli_round: round, request, elapsed_ms: elapsed, total_hits: response.total_hits,
          returned_hits: response.returned_hits, bytes: Buffer.byteLength(JSON.stringify(response)) });
      }
    } finally { await cli.close(); }
  }
  const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
  try {
    await bridge.request({ mode: 'catalog' });
    if (benchmark && !cliBenchmark) {
      for (let round = 0; round < 3; round++) {
        const raw = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
        const fields = raw.payload.split('|'), kept: string[] = [], phases: unknown[] = [];
        for (let i = 0; i < fields.length - 1; i += 10) {
          if (fields[i] === '#PLAN') report.plan_failures = fields[i + 1];
          else if (fields[i] === '#SAVED_PHASE') phases.push({ path: fields[i + 1], model_ms: Number(fields[i + 2]),
            archive_ms: Number(fields[i + 3]), diagram_ms: Number(fields[i + 4]), state_ms: Number(fields[i + 5]) });
          else if (fields[i] !== '#SAVED_CONTAINER') kept.push(...fields.slice(i, i + 10));
        }
        const data = decodeResponse({ ...raw, payload: kept.join('|') + '|' });
        assert.deepEqual(data.errors, []); assert.equal(data.coverage.containers, 214);
        samples.push({ search_round: round, timings: raw.timings, coverage: data.coverage, phases });
      }
    }
    const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
    for (let round = 0; round < 3; round++) {
      const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
      assert.equal(raw.ascet_pid, identity.pid);
      const fields = raw.payload.split('|'), kept: string[] = []; let result: string[] | undefined;
      for (let i = 0; i < fields.length - 1; i += 10) {
        const row = fields.slice(i, i + 10); if (row[0] === '#SAVED_CONTAINER') result = row;
        else if (row[0] === '#PLAN') report.plan_failures = row[1]; else if (row[0] !== '#SAVED_PHASE') kept.push(...row);
      }
      const data = decodeResponse({ ...raw, payload: kept.join('|') + '|' });
      if (round === 0) await writeFile(join(directory, 'snapshot.json'), JSON.stringify({ data }));
      assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(expected)); assert.deepEqual(data.diagrams, expected.diagrams);
      assert.ok(result || cliBenchmark); assert.equal(data.coverage.containers, 214);
      samples.push({ round, timings: raw.timings, containers: data.coverage.containers,
        ...(result ? { record_read_decode_ms: Number(result[1]), assertions: Number(result[2]) } : {}) });
    }
    const overBudget = samples.filter((sample: any) => typeof sample.elapsed_ms === 'number' && sample.elapsed_ms >= 500);
    Object.assign(report, { status: overBudget.length ? 'performance_failed' : 'passed', pid: identity.pid,
      all_sources_and_graphs_equal: true, ...(cliBenchmark ? { over_500ms: overBudget.length } : {}) });
    if (overBudget.length) process.exitCode = 2;
  } finally { await bridge.close(); }
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 5000); process.exitCode = 1; }
finally { Object.assign(report, { samples }); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify({ ...report, samples: samples.map((sample: any) => ({ ...sample, phases: undefined })) }, null, 2)); }
