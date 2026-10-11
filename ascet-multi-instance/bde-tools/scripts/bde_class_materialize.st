[:detachedReader :bindingReader :registryGuard | [:runtimeReader | [:definition :selector :resolve | [:component :action :reader |
 component handleExceptionsIn: [
 | studies root key record original fresh check snapshot sameObjects nativeObjects savedRegistry baselineSource visit detachedProjection verifyDetached captureBindings preparedBindings runtimeImage |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated interface owner required'].
 definition isClass ifFalse: [component error: 'Class definition required'].
 ((definition getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   definition getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated Class definition required'].
 studies := Smalltalk at: #DogeBDEClassMaterializeV1 ifAbsentPut: [Dictionary new].
 root := Smalltalk at: #DogeBDEStructureIdentityV2. key := component getOID, '/Main'.
 check := [:v | (v isKindOf: EtasAPIError) ifTrue: [component error: v errorMessage].
   v == false ifTrue: [component error: 'Caller store refused']. v].
 nativeObjects := [:diagram |
   | objects walk count |
   objects := OrderedCollection new. count := 0.
   walk := [:current :depth |
     depth > 16 ifTrue: [component error: 'Caller recovery depth bound exceeded'].
     current getAllDiagramElements do: [:node |
       count := count + 1. count > 8192 ifTrue: [component error: 'Caller recovery node bound exceeded'].
       objects add: node diagramElement.
       node getAllPins do: [:pin | objects add: pin diagramElement].
       node isBlockDiagramHierarchy ifTrue: [walk value: node value: depth + 1]
     ].
     current getAllDiagramConnections do: [:edge | objects add: edge diagramElement].
     current getAllDiagramComments do: [:comment | objects add: comment diagramElement]
   ]. walk value: diagram value: 0. objects asArray
 ].
 sameObjects := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 detachedProjection := [:target | | value | value := detachedReader value: component value: target.
   (value startsWith: 'BDE_') ifTrue: [component error: value]. value].
 captureBindings := [| value populate count |
   count := 0.
   populate := [:scope :name :depth |
     depth > 16 ifTrue: [component error: 'Complete binding registration depth bound exceeded'].
     count := count + 1. count > 64 ifTrue: [component error: 'Complete binding registration scope bound exceeded'].
     value := reader value: component value: name value: #().
     (value startsWith: 'BDE_') ifTrue: [component error: value].
     scope getAllDiagramElements do: [:node | node isBlockDiagramHierarchy ifTrue: [
       populate value: node value: (name, '/h', node diagramElement identifier printString) value: depth + 1]]
   ].
   populate value: ((root at: key) at: 'diagram') value: 'Main' value: 0.
   value := bindingReader value: component value: 'capture'.
   (value isKindOf: Dictionary) ifFalse: [component error: value]. value].
 verifyDetached := [
   ((record at: 'bindingProfile' ifAbsent: ['']) = 'native_collections_v1' and: [record includesKey: 'originalBindings'])
     ifFalse: [component error: 'Original native collection checkpoint unavailable'].
   (((record at: 'originalBindings') at: 'keyedProfile' ifAbsent: ['']) = 'native_keyed_collections_v1' and: [
     ((record at: 'originalBindings') at: 'verifyKeyed') value: (record at: 'originalBindings')])
     ifFalse: [component error: 'Original keyed native collection checkpoint unavailable or changed'].
   ((record at: 'originalBindings') at: 'verify') value
     ifFalse: [component error: 'Original native collection contents or manager links changed'].
   (record at: 'detachedProfile' ifAbsent: ['']) = 'collected_graphics_v1'
     ifFalse: [component error: 'Detached original field checkpoint unavailable'].
   (detachedProjection value: original) = (record at: 'detachedFields')
     ifFalse: [component error: 'Detached original graphical fields changed']].
 action = 'prepare' ifTrue: [
   (studies includesKey: key) ifTrue: [component error: 'Caller study record already retained'].
   studies size >= 8 ifTrue: [component error: 'Caller study capacity reached'].
   snapshot := reader value: component value: 'Main' value: #().
   (snapshot startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: snapshot].
   preparedBindings := captureBindings value.
   original := (root at: key) at: 'diagram'.
   savedRegistry := Dictionary new.
   (root at: key) keysAndValuesDo: [:k :v | savedRegistry at: k put: v].
   record := Dictionary new at: 'state' put: 'prepared'; at: 'before' put: snapshot;
     at: 'original' put: original; at: 'originalRegistry' put: savedRegistry;
     at: 'objects' put: (nativeObjects value: original); at: 'selector' put: selector copy; yourself.
   record at: 'detachedProfile' put: 'collected_graphics_v1';
     at: 'detachedFields' put: (detachedProjection value: original).
   record at: 'bindingProfile' put: 'native_collections_v1'; at: 'originalBindings' put: preparedBindings.
   studies at: key put: record.
   runtimeReader notNil ifTrue: [
     runtimeImage := runtimeReader value: component value: preparedBindings
       value: (Array with: (savedRegistry at: 'checkpoint') with: 'original' with: record).
     (runtimeImage isKindOf: Dictionary) ifFalse: [component error: runtimeImage].
     record at: 'originalRuntimeImage' put: runtimeImage]
 ].
 record := studies at: key ifAbsent: [component error: 'Caller study record absent'].
 (record at: 'selector') = selector ifFalse: [component error: 'Retained caller selector mismatch'].
 original := record at: 'original'.
 (#('prune_argument' 'prune_return') includes: action) ifTrue: [
   | selected method formal work nodes pins incident pinIds nodeIds closures scanned |
   (record at: 'state') = 'prepared' ifFalse: [component error: 'Interface closure cannot replay'].
   (((root at: key) at: 'sameSource') value: original specification specSourceInternalOrNil
     value: ((record at: 'originalRegistry') at: 'checkpoint'))
     ifFalse: [component error: 'Interface source changed before pruning'].
   selected := resolve value: definition value: selector. method := selected at: 2. formal := selected last.
   ((action = 'prune_argument') = (selector last = 'argument')) ifFalse: [component error: 'Closure formal slot mismatch'].
   work := component getDiagram: 'Main'. nodes := OrderedCollection new. pins := OrderedCollection new.
   closures := OrderedCollection new. scanned := 0.
   visit := [:current :depth |
     | localNodes localPins localIds localEdges |
     depth > 16 ifTrue: [component error: 'Closure depth bound exceeded'].
     localNodes := OrderedCollection new. localPins := OrderedCollection new.
     current getAllDiagramElements do: [:node |
     scanned := scanned + 1. scanned > 8192 ifTrue: [component error: 'Closure node bound exceeded'].
     node isBlockDiagramFunctionalElement ifTrue: [
       component getOID = definition getOID ifTrue: [
         node diagramElement element == formal ifTrue: [localNodes add: node. localPins addAll: node getAllPins]
       ] ifFalse: [
         | model |
         model := node getModelElement.
         (model isComplex and: [(check value: model getRepresentedClass) getOID = definition getOID]) ifTrue: [
           node getAllPins do: [:pin |
             (pin diagramElement connectorAliasName = formal xmlOID and: [
               pin diagramElement manager methodAliasName = method aliasName]) ifTrue: [localPins add: pin]
           ]
         ]
       ]
     ].
     node isBlockDiagramHierarchy ifTrue: [visit value: node value: depth + 1]
     ].
     localIds := (localPins collect: [:pin | pin diagramElement identifier]) asSet.
     localEdges := current getAllDiagramConnections select: [:edge |
       (localIds includes: edge getOutputPin diagramElement identifier) or: [localIds includes: edge getInputPin diagramElement identifier]
     ].
     closures add: (Array with: current with: localNodes with: localPins with: localEdges).
     nodes addAll: localNodes. pins addAll: localPins
   ]. visit value: work value: 0.
   pins isEmpty ifTrue: [component error: 'No exact formal pin closure found'].
   pinIds := (pins collect: [:pin | pin diagramElement identifier]) asSet.
   nodeIds := (nodes collect: [:node | node diagramElement identifier]) asSet.
   incident := OrderedCollection new. closures do: [:closure | incident addAll: closure last].
   record at: 'prunePinIds' put: pinIds asArray; at: 'pruneNodeIds' put: nodeIds asArray;
     at: 'pruneIncidentCount' put: incident size; at: 'prunedDiagram' put: work; at: 'state' put: 'prune_started'.
   closures do: [:closure |
   closure last do: [:edge | check value: (work removeDiagramObject: edge)].
   (closure at: 2) isEmpty ifTrue: [(closure at: 3) do: [:pin |
     (pin diagramElement manager interfaceGOs includes: pin diagramElement) ifFalse: [component error: 'Pin interface owner mismatch'].
     pin diagramElement manager removeInterfaceGO: pin diagramElement
   ]] ifFalse: [(closure at: 2) do: [:node | check value: (work removeDiagramObject: node)]]
   ].
   "Keep the detached working graph private until the Class declaration is removed."
   record at: 'prunedSource' put: ((record at: 'originalRegistry') at: 'checkpoint'); at: 'state' put: 'pruned'
 ].
 action = 'apply' ifTrue: [
   | needsStore |
   (#('prepared' 'pruned') includes: (record at: 'state')) ifFalse: [component error: 'Caller materialization cannot replay'].
   baselineSource := (record at: 'state') = 'pruned' ifTrue: [record at: 'prunedSource']
     ifFalse: [(record at: 'originalRegistry') at: 'checkpoint'].
   (((root at: key) at: 'sameSource') value: original specification specSourceInternalOrNil value: baselineSource)
     ifFalse: [component error: 'Caller source changed before materialization'].
   fresh := (record at: 'state') = 'pruned' ifTrue: [record at: 'prunedDiagram'] ifFalse: [component getDiagram: 'Main'].
   record at: 'state' put: 'store_started'; at: 'materialized' put: fresh.
   check value: fresh storeToCache.
   record at: 'materializationStores' put: 1.
   fresh := component getDiagram: 'Main'. needsStore := false.
   visit := [:current :depth |
     depth > 16 ifTrue: [component error: 'Sequence materialization depth bound exceeded'].
   current getAllDiagramElements do: [:node | node getAllPins do: [:pin |
     pin hasSequenceCall ifTrue: [pin getSequenceCall diagramElement identifier isNil ifTrue: [needsStore := true]]
   ]. node isBlockDiagramHierarchy ifTrue: [visit value: node value: depth + 1]]
   ]. visit value: fresh value: 0.
   needsStore ifTrue: [
     "A return-to-void signature introduces sequence graphics on the reloaded graph."
     record at: 'materializedSequenceDiagram' put: fresh.
     check value: fresh storeToCache. record at: 'materializationStores' put: 2
   ].
   (root at: key) removeKey: 'checkpoint' ifAbsent: [].
   snapshot := reader value: component value: 'Main' value: #().
   (snapshot startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: snapshot].
   record at: 'after' put: snapshot;
     at: 'afterSource' put: (((root at: key) at: 'copySource') value: original specification specSourceInternalOrNil);
     at: 'afterBindings' put: captureBindings value;
     at: 'state' put: 'applied'.
   runtimeReader notNil ifTrue: [
     runtimeImage := runtimeReader value: component value: (record at: 'afterBindings')
       value: (Array with: (record at: 'afterSource') with: 'applied' with: record).
     (runtimeImage isKindOf: Dictionary) ifFalse: [component error: runtimeImage].
     record at: 'afterRuntimeImage' put: runtimeImage]
 ].
 action = 'verify' ifTrue: [
   (record at: 'state') = 'applied' ifFalse: [component error: 'Caller verify state unavailable'].
   verifyDetached value.
   (record includesKey: 'afterBindings') ifFalse: [component error: 'After native collection checkpoint unavailable'].
   ((registryGuard value: component value: (record at: 'afterBindings')) at: 'compatible')
     ifFalse: [component error: 'After native identities or full collection order changed'].
   snapshot := reader value: component value: 'Main' value: #().
   snapshot = (record at: 'after') ifFalse: [component error: 'Caller inverse graph conflict']
 ].
 action = 'restore' ifTrue: [
   (#('applied' 'pruned') includes: (record at: 'state')) ifFalse: [component error: 'Caller inverse state unavailable'].
   verifyDetached value.
   "The Class signature has already been restored; compare the stored source directly."
   (((root at: key) at: 'sameSource') value: original specification specSourceInternalOrNil
     value: ((record at: 'state') = 'pruned' ifTrue: [record at: 'prunedSource'] ifFalse: [record at: 'afterSource']))
     ifFalse: [component error: 'Caller source inverse conflict'].
   (sameObjects value: (nativeObjects value: original) value: (record at: 'objects'))
     ifFalse: [component error: 'Retained original caller objects changed'].
   (record at: 'state') = 'applied' ifTrue: [
     record at: 'state' put: 'restore_started'. check value: original storeToCache
   ] ifFalse: [record at: 'state' put: 'restore_started'].
   record at: 'restoreStoredSource' put: (((root at: key) at: 'copySource') value: original specification specSourceInternalOrNil).
   root at: key put: (record at: 'originalRegistry').
   (root at: key) at: 'checkpoint' put: (((root at: key) at: 'copySource') value: original specification specSourceInternalOrNil).
   snapshot := reader value: component value: 'Main' value: #().
   snapshot = (record at: 'before') ifFalse: [component error: 'Caller original observation not restored'].
   (sameObjects value: (nativeObjects value: ((root at: key) at: 'diagram')) value: (record at: 'objects'))
     ifFalse: [component error: 'Caller original graph identities not restored'].
   record at: 'state' put: 'restored'
 ].
 action = 'finish_verified_restore' ifTrue: [
   (record at: 'state') = 'restore_started' ifFalse: [component error: 'Only stored inverse can be reconciled'].
   verifyDetached value.
   fresh := component getDiagram: 'Main'.
   (((root at: key) at: 'sameSource') value: fresh specification specSourceInternalOrNil
     value: (record at: 'restoreStoredSource' ifAbsent: [((record at: 'originalRegistry') at: 'checkpoint')]))
     ifFalse: [component error: 'Reconciled inverse source changed'].
   (sameObjects value: (nativeObjects value: original) value: (record at: 'objects'))
     ifFalse: [component error: 'Reconciled inverse original objects changed'].
   record at: 'state' put: 'restored'
 ].
 action = 'release' ifTrue: [
   (#('prepared' 'restored') includes: (record at: 'state')) ifFalse: [component error: 'Cannot release caller recovery material'].
   studies removeKey: key
 ].
 (#('prepare' 'prune_argument' 'prune_return' 'apply' 'verify' 'restore' 'release' 'finish_verified_restore' 'status' 'before_snapshot' 'current_snapshot' 'objects_match' 'registry_match') includes: action)
   ifFalse: [component error: 'Unknown caller study action'].
 action = 'before_snapshot' ifTrue: [record at: 'before'] ifFalse: [
 action = 'current_snapshot' ifTrue: [reader value: component value: 'Main' value: #()] ifFalse: [
 action = 'objects_match' ifTrue: [(sameObjects value: (nativeObjects value: original) value: (record at: 'objects')) printString] ifFalse: [
 action = 'registry_match' ifTrue: [
   fresh := component getDiagram: 'Main'.
   (((record at: 'originalRegistry') at: 'owner') == component item) printString, '/',
   (((record at: 'originalRegistry') at: 'specification') == fresh specification) printString, '/',
   (((root at: key) at: 'sameSource') value: fresh specification specSourceInternalOrNil
     value: ((record at: 'originalRegistry') at: 'checkpoint')) printString
 ] ifFalse: [record at: 'state']]]]
 ] ifFail: [:error | 'BDE_CLASS_MATERIALIZE_ERROR: ', error messageText]
]]]]
