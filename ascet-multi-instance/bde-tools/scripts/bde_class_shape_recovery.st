[:component :action :request |
 component handleExceptionsIn: [
 | token record root cache original fresh part view candidates ids maxId expectedCount visit count reader current savedSource shape |
 component getOID = '040ts00000001qg7180gki3t9j306' ifFalse: [component error: 'Exact isolated hierarchy fixture required'].
 token := 'edit_7fc3abd0ef12d19bb33e1c6d879007a286f65d1070ac105ce2b3b326e1d1f9f9'.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'state') = 'started'])
   ifFalse: [component error: 'Exact failed native operation no longer started'].
 ((record at: 'operation') = 'create_block' and: [
   (record at: 'args') first = 'literal' and: [((record at: 'args') at: 2) = '7.25']])
   ifFalse: [component error: 'Only the recorded literal failure can be repaired'].
 original := record at: 'diagram'. fresh := component getDiagram: 'Main'.
 original specification == fresh specification ifFalse: [component error: 'Native specification changed'].
 root := Smalltalk at: #DogeBDEStructureIdentityV2. cache := root at: (component getOID, '/Main').
 reader := request first.
 action = 'rebind' ifTrue: [
   | mapping sameShape |
   request size = 3 ifFalse: [component error: 'Exact fixed recovery request required'].
   (request at: 2) = 1 ifFalse: [component error: 'Original generation required'].
   mapping := request last. mapping size = 6 ifFalse: [component error: 'Original six-edge map required'].
   shape := [:diagram |
     | rows collect |
     rows := OrderedCollection new.
     collect := [:v :path :depth |
       depth > 16 ifTrue: [component error: 'Recovery hierarchy bound exceeded'].
       v getAllDiagramElements do: [:n |
         n getAllPins do: [:p | rows add: (Array with: path with: n diagramElement identifier with: p diagramElement identifier
           with: (Array with: p getName with: p isInputPin with: p isOutputPin))].
         rows size > 16384 ifTrue: [component error: 'Recovery pin bound exceeded'].
         n isBlockDiagramHierarchy ifTrue: [collect value: n value: (path, '/h', n diagramElement identifier printString) value: depth + 1]
       ]
     ]. collect value: diagram value: 'Main' value: 0.
     (rows asSortedCollection: [:a :b |
       a first = b first ifTrue: [
         (a at: 2) = (b at: 2) ifTrue: [(a at: 3) < (b at: 3)]
           ifFalse: [(a at: 2) < (b at: 2)]
       ] ifFalse: [a first < b first]
     ]) asArray
   ].
   (shape value: original) = (shape value: fresh) ifFalse: [component error: 'Actual shared interface change cannot be repaired'].
   ids := IdentityDictionary new. maxId := 0.
   mapping do: [:encoded |
     | fields target route edge |
     fields := encoded subStrings: $|. fields size = 5 ifFalse: [component error: 'Invalid edge recovery map'].
     view := original. part := fields first subStrings: $/.
     part first = 'Main' ifFalse: [component error: 'Original root scope required'].
     part size > 17 ifTrue: [component error: 'Recovery scope bound exceeded'].
     part allButFirst do: [:segment |
       candidates := view getAllDiagramElements select: [:n | n isBlockDiagramHierarchy and: [
         ('h', n diagramElement identifier printString) = segment]].
       candidates size = 1 ifFalse: [component error: 'Original recovery hierarchy ambiguous'].
       view := candidates first
     ].
     route := (fields last subStrings: $;) collect: [:pair | | xy | xy := pair subStrings: $,.
       xy size = 2 ifFalse: [component error: 'Exact original route required'].
       Array with: xy first asNumber with: xy last asNumber].
     candidates := view getAllDiagramConnections select: [:e |
       ('p', e getOutputPin diagramElement identifier printString) = (fields at: 3) and: [
         ('p', e getInputPin diagramElement identifier printString) = (fields at: 4) and: [
           (e getAllConnectionPoints collect: [:p | Array with: p x with: p y]) asArray = route asArray]]].
     candidates size = 1 ifFalse: [component error: 'Original recovery edge missing or ambiguous'].
     edge := candidates first diagramElement. (ids includesKey: edge) ifTrue: [component error: 'Duplicate recovery edge'].
     target := fields at: 2.
     target first = $e ifFalse: [component error: 'Original runtime edge ref required'].
     (ids values includes: target) ifTrue: [component error: 'Duplicate runtime edge identity'].
     ids at: edge put: target. maxId := maxId max: ((target copyFrom: 2 to: target size) asNumber)
   ].
   count := 0.
   visit := [:v :depth |
     depth > 16 ifTrue: [component error: 'Recovery tree bound exceeded'].
     count := count + v getAllDiagramConnections size.
     v getAllDiagramElements do: [:n | n isBlockDiagramHierarchy ifTrue: [visit value: n value: depth + 1]]
   ]. visit value: original value: 0.
   count = ids size ifFalse: [component error: 'Recovery mapping does not cover every original edge'].
   savedSource := (cache at: 'copySource') value: fresh specification specSourceInternalOrNil.
   cache at: 'diagram' put: original; at: 'ids' put: ids; at: 'counter' put: maxId;
     at: 'generation' put: 1; at: 'checkpoint' put: savedSource.
   current := reader value: component value: (record at: 'diagramName') value: (record at: 'targets').
   (current startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: current].
   ((cache at: 'sameSource') value: original specification specSourceInternalOrNil value: savedSource)
     ifFalse: [component error: 'Model changed during recovery observation'].
   record at: 'shapeRecoveryCandidate' put: current; at: 'shapeRecoverySource' put: savedSource
 ].
 action = 'finish' ifTrue: [
   request size = 1 ifFalse: [component error: 'Fixed recovery finish required'].
   ((cache at: 'diagram') == original and: [(cache at: 'generation') = 1])
     ifFalse: [component error: 'Recovery registry changed'].
   ((cache at: 'sameSource') value: fresh specification specSourceInternalOrNil value: (record at: 'shapeRecoverySource'))
     ifFalse: [component error: 'Recovery model source changed'].
   current := reader value: component value: (record at: 'diagramName') value: (record at: 'targets').
   current = (record at: 'shapeRecoveryCandidate') ifFalse: [component error: 'Actual recovery candidate changed'].
   record at: 'after' put: current; at: 'state' put: 'applied'
 ].
 (#('rebind' 'finish') includes: action) ifFalse: [component error: 'Unknown fixed recovery action'].
 '{"$d":[["state","', (record at: 'state'), '"],["before",', (record at: 'before'), '],["current",', current, ']]}'
 ] ifFail: [:error | 'BDE_CLASS_SHAPE_RECOVERY_ERROR: ', error messageText]
]
