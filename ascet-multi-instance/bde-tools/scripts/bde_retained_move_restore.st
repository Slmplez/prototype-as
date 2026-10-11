[:currentReader | [:component :command |
 component handleExceptionsIn: [
 | action token repairToken edits source roots key root material bindings diagram target restores repair current encoder candidates checkpointFrame checkpoint capturedCounter savedIds check out sameKeys stableRoot setRoute stored |
 action := command first. token := command at: 2. repairToken := command at: 3.
 (#('prepare' 'check' 'execute' 'inspect') includes: action) ifFalse: [component error: 'Unknown retained move restoration action'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Disposable move compensation required'].
 edits := Smalltalk at: #DogeBDEStructureEditsV3.
 source := edits at: token.
 ((source at: 'owner') == component item and: [(source at: 'component') = component getOID and: [
   (source at: 'diagramName') = 'Main' and: [(source at: 'operation') = 'move_node' and: [
   (source at: 'state') = 'started']]]]) ifFalse: [component error: 'Exact unresolved Main move required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2. key := component getOID, '/Main'. root := roots at: key.
 material := (Smalltalk at: #DogeBDEClassMaterializeV1) at: key.
 (material at: 'state') = 'applied' ifFalse: [component error: 'Applied Class checkpoint required'].
 bindings := material at: 'afterBindings'. diagram := source at: 'diagram'. target := source at: 'target'.
 ((bindings at: 'diagram') == diagram and: [(root at: 'owner') == component item and: [
   diagram specification == (root at: 'specification') and: [
   target diagramElement class name asString = 'SGLiteralGO' and: [
   (source at: 'oldRoutes') size = 1 and: [(source at: 'sequenceState') isEmpty]]]]])
   ifFalse: [component error: 'Exact retained one-edge literal binding required'].
 sameKeys := [:dictionary :saved | dictionary keys asSet = saved keys asSet and: [
   (saved keys anySatisfy: [:name | (dictionary at: name) ~~ (saved at: name)]) not]].
 stableRoot := [:saved |
   #('owner' 'diagram' 'specification' 'checkpoint' 'checkpointVersion' 'ids' 'counter'
     'generation' 'scopeEpoch' 'issuedGeneration') allSatisfy: [:name |
       (root at: name ifAbsent: [nil]) == (saved at: name ifAbsent: [nil])]
 ].
 encoder := root at: 'encodeObservation'.
 restores := Smalltalk at: #DogeBDELayoutRestoresV1 ifAbsentPut: [Dictionary new].
 action = 'prepare' ifTrue: [
   (restores includesKey: repairToken) ifTrue: [component error: 'Restoration cannot replay'].
   restores size >= 128 ifTrue: [component error: 'Restoration capacity reached'].
   (bindings at: 'verify') value ifFalse: [component error: 'Retained original Class native bindings changed'].
   checkpointFrame := (bindings at: 'verifyCurrent') parent.
   checkpointFrame class name asString = 'BlockContext' ifFalse: [component error: 'Audited live checkpoint context required'].
   checkpointFrame basicSize > 256 ifTrue: [component error: 'Checkpoint context exceeds audit bound'].
   candidates := OrderedCollection new.
   1 to: checkpointFrame basicSize do: [:index |
     | candidate |
     candidate := checkpointFrame basicAt: index.
     (candidate class == (material at: 'afterSource') class and: [
       (root at: 'sameSource') value: candidate value: (material at: 'afterSource')])
       ifTrue: [candidates add: candidate]
   ].
   candidates size = 1 ifFalse: [component error: 'Unique exact retained checkpoint required'].
   checkpoint := candidates first. savedIds := (bindings at: 'ids') copy.
   capturedCounter := 0.
   savedIds values do: [:alias | | number |
     (alias isString and: [alias first = $e]) ifFalse: [component error: 'Audited retained edge aliases required'].
     number := (alias copyFrom: 2 to: alias size) asNumber.
     alias = ('e', number printString) ifFalse: [component error: 'Noncanonical retained edge alias'].
     capturedCounter := capturedCounter max: number
   ].
   ((1 to: checkpointFrame basicSize) anySatisfy: [:index | (checkpointFrame basicAt: index) == capturedCounter])
     ifFalse: [component error: 'Retained alias counter not present in original checkpoint context'].
   current := currentReader value: component value: (Array with: diagram topGraphicalHierarchy
     with: (root at: 'diagram') topGraphicalHierarchy with: (source at: 'oldRoutes')
     with: (source at: 'oldAnchor')).
   (current isKindOf: Dictionary) ifFalse: [component error: current asString].
   repair := Dictionary new at: 'source' put: source; at: 'root' put: root;
     at: 'owner' put: component item; at: 'component' put: component getOID; at: 'diagramName' put: 'Main';
     at: 'diagram' put: diagram; at: 'material' put: material; at: 'bindings' put: bindings;
     at: 'sourceRecord' put: source copy; at: 'materialRecord' put: material copy;
     at: 'registryRecord' put: root copy; at: 'checkpoint' put: checkpoint;
     at: 'counter' put: capturedCounter; at: 'ids' put: savedIds;
     at: 'originalSource' put: ((root at: 'copySource') value: (material at: 'afterSource'));
     at: 'storedSource' put: ((root at: 'copySource') value: diagram specification specSourceInternalOrNil);
     at: 'current' put: current; at: 'signature' put: repairToken, '/current/1';
     at: 'state' put: 'prepared'; yourself.
   restores at: repairToken put: repair
 ] ifFalse: [
   repair := restores at: repairToken ifAbsent: [component error: 'Prepared exact move restoration unavailable'].
   ((repair at: 'source') == source and: [(repair at: 'root') == root and: [
     (repair at: 'material') == material and: [(repair at: 'bindings') == bindings]]])
     ifFalse: [component error: 'Restoration binding changed'].
   (command at: 4) = (repair at: 'signature') ifFalse: [component error: 'Durable preparation signature mismatch'].
   current := repair at: 'current'
 ].
 check := [
   (sameKeys value: source value: (repair at: 'sourceRecord')) and: [
   (sameKeys value: material value: (repair at: 'materialRecord')) and: [
   (stableRoot value: (repair at: 'registryRecord')) and: [
   (bindings at: 'verify') value and: [(current at: 'verify') value and: [
   ((root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (repair at: 'storedSource')) and: [
   ((root at: 'sameSource') value: (material at: 'afterSource') value: (repair at: 'originalSource')) and: [
   (root at: 'sameSource') value: (repair at: 'checkpoint') value: (repair at: 'originalSource')]]]]]]]
 ].
 action = 'inspect' ifFalse: [
   (repair at: 'state') = 'prepared' ifFalse: [component error: 'Move restoration already started; never replay'].
   check value ifFalse: [component error: 'Frozen move restoration CURRENT changed']
 ].
 action = 'execute' ifTrue: [
   repair at: 'state' put: 'restore_started'.
   target moveTo: (source at: 'oldAnchor') copy.
   setRoute := [:g :corners :endpoints |
     g initialize. g rememberLinkPoint: endpoints first copy.
     corners do: [:p | g rememberBuildingPoint: p copy].
     g rememberLinkPoint: endpoints last copy
   ].
   (source at: 'oldRoutes') do: [:saved |
     setRoute value: saved first value: (saved at: 2) value: (Array with: (saved at: 3) first with: (saved at: 3) last)
   ].
   stored := diagram storeToCache.
   ((stored isKindOf: EtasAPIError) or: [stored == false]) ifTrue: [component error: 'Restoration store failed'].
   repair at: 'state' put: 'stored'.
   ((root at: 'sameSource') value: diagram specification specSourceInternalOrNil value: (material at: 'afterSource'))
     ifFalse: [component error: 'Stored original complete Class layout source differs'].
   (bindings at: 'verify') value ifFalse: [component error: 'Restored original native bindings differ'].
   root at: 'diagram' put: diagram; at: 'checkpoint' put: (repair at: 'checkpoint');
     at: 'ids' put: (repair at: 'ids'); at: 'counter' put: (repair at: 'counter');
     at: 'generation' put: (bindings at: 'generation'); at: 'issuedGeneration' put: (bindings at: 'generation');
     at: 'activeDiagram' put: diagram; at: 'activeScopeChain' put: #().
   (bindings at: 'verifyCurrent') value ifFalse: [component error: 'Exact original Class CURRENT still differs'].
   (sameKeys value: source value: (repair at: 'sourceRecord')) ifFalse: [component error: 'Original unknown edit record changed'].
   repair at: 'state' put: 'restored'
 ].
 out := Dictionary new at: 'profile' put: 'retained_unknown_move_restore_v1';
   at: 'state' put: (repair at: 'state'); at: 'source_token' put: token;
   at: 'restoration_token' put: repairToken; at: 'prepared_signature' put: (repair at: 'signature');
   at: 'graphical_current' put: (current at: 'descriptor');
   at: 'class_after_native_bindings_match' put: (bindings at: 'verify') value;
   at: 'class_after_current_bindings_match' put: (bindings at: 'verifyCurrent') value;
   at: 'stored_complete_layout_source_matches' put: ((root at: 'sameSource')
     value: diagram specification specSourceInternalOrNil value: (material at: 'afterSource'));
   at: 'source_record_unchanged' put: (sameKeys value: source value: (repair at: 'sourceRecord'));
   at: 'original_native_state' put: (source at: 'state');
   at: 'target_anchor' put: (Array with: target diagramElement getPosition x with: target diagramElement getPosition y);
   at: 'generation' put: (root at: 'generation'); yourself.
 encoder value: out
 ] ifFail: [:error | 'BDE_RETAINED_MOVE_RESTORE_ERROR: ', error messageText]
]]
