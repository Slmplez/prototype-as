[ | pinPolicy lifecycle |
 pinPolicy := [:roots :retained |
   | pins byRoot byOwner byDiagram addPin pinOwner pinRecord generations oldest oldestAccess |
   (roots isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Structural scopes unavailable'].
   roots size > 64 ifTrue: [Smalltalk error: 'Structural scope capacity invariant violated'].
   pins := Dictionary new. byRoot := IdentityDictionary new. byOwner := IdentityDictionary new.
   byDiagram := IdentityDictionary new. generations := 0. oldestAccess := nil.
   roots keysAndValuesDo: [:key :entry |
     | owner graph generation access |
     (key isString and: [entry isKindOf: Dictionary]) ifFalse: [Smalltalk error: 'Malformed structural scope'].
     generation := entry at: 'generation' ifAbsent: [0]. access := entry at: 'lastAccess' ifAbsent: [0].
     ((generation isInteger and: [generation >= 0]) and: [access isInteger and: [access >= 0]])
       ifFalse: [Smalltalk error: 'Malformed structural scope epoch'].
     generations := generations max: generation. pins at: key put: Set new. byRoot at: entry put: key.
     owner := entry at: 'owner' ifAbsent: [nil]. graph := entry at: 'diagram' ifAbsent: [nil].
     owner notNil ifTrue: [(byOwner at: owner ifAbsentPut: [OrderedCollection new]) add: key].
     graph notNil ifTrue: [(byDiagram at: graph ifAbsentPut: [OrderedCollection new]) add: key]
   ].
   byRoot size = roots size ifFalse: [Smalltalk error: 'Structural scope root identity collision'].
   addPin := [:key :reason | (pins includesKey: key) ifTrue: [(pins at: key) add: reason]].
   pinOwner := [:owner :reason | (byOwner at: owner ifAbsent: [#()]) do: [:key | addPin value: key value: reason]].
   pinRecord := [:record :reason |
     | nativeRoot source oid name parts |
     (record isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained structural record'].
     nativeRoot := record at: 'root' ifAbsent: [record at: 'orderRoot' ifAbsent: [nil]].
     (nativeRoot notNil and: [(nativeRoot isKindOf: Dictionary) not])
       ifTrue: [Smalltalk error: 'Malformed retained native root'].
     (byRoot includesKey: nativeRoot) ifTrue: [addPin value: (byRoot at: nativeRoot) value: reason].
     nativeRoot notNil ifTrue: [pinOwner value: (nativeRoot at: 'owner' ifAbsent: [nil]) value: reason].
     pinOwner value: (record at: 'owner' ifAbsent: [nil]) value: reason.
     source := record at: 'source' ifAbsent: [record].
     ((nativeRoot isNil or: [(byRoot includesKey: nativeRoot) not and: [(nativeRoot at: 'owner' ifAbsent: [nil]) isNil]])
       and: [(record at: 'owner' ifAbsent: [nil]) isNil and: [
       (source isKindOf: Dictionary) not or: [(source at: 'owner' ifAbsent: [nil]) isNil]]])
       ifTrue: [Smalltalk error: 'Unbound retained structural record'].
     (source isKindOf: Dictionary) ifTrue: [
       oid := source at: 'component' ifAbsent: [nil]. name := source at: 'diagramName' ifAbsent: [nil].
       (oid notNil or: [name notNil]) ifTrue: [
         (oid isString and: [name isString]) ifFalse: [Smalltalk error: 'Malformed retained scope binding'].
         parts := name subStrings: $/. parts isEmpty ifTrue: [Smalltalk error: 'Empty retained scope binding'].
         addPin value: (oid, '/', parts first) value: reason
       ]
     ]
   ].
   retained keysAndValuesDo: [:kind :records |
     (records isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained scope registry'].
     records size > 1024 ifTrue: [Smalltalk error: 'Retained scope audit bound exceeded'].
     records keysAndValuesDo: [:token :record |
       | reason oid graph |
       token isString ifFalse: [Smalltalk error: 'Malformed retained scope token'].
       reason := kind, ':', token.
       kind = 'DogeBDEStructureEditsV3' ifTrue: [
         ((record isKindOf: Dictionary) and: [(record at: 'component' ifAbsent: [nil]) isString and: [
           (record at: 'diagramName' ifAbsent: [nil]) isString and: [(record at: 'owner' ifAbsent: [nil]) notNil]]])
           ifFalse: [Smalltalk error: 'Incomplete retained edit scope binding']
       ].
       (#('DogeBDEStructureEditsV3' 'DogeBDELayoutRestoresV1' 'DogeBDEDeletionRestoresV1'
         'DogeBDEAttachedOrderRestoresV1' 'DogeBDEPrivateSessionsV1' 'DogeBDEClassSourceCandidatesV1'
         'DogeBDEMainWorkflowWitnessesV1' 'DogeBDECommitResourceWitnessesV1') includes: kind)
         ifTrue: [pinRecord value: record value: reason] ifFalse: [
       kind = 'DogeBDEClassModelPublicationV1' ifTrue: [
         ((record isKindOf: Dictionary) and: [(record at: 'entries' ifAbsent: [nil]) isKindOf: Dictionary])
           ifFalse: [Smalltalk error: 'Malformed retained model publication recovery'].
         (record at: 'entries') size > 8 ifTrue: [Smalltalk error: 'Model publication recovery owner bound exceeded'].
         (record at: 'entries') values do: [:entry | pinRecord value: entry value: reason]
       ] ifFalse: [
       kind = 'DogeBDEClassMaterializeV1' ifTrue: [
         (record isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained caller material'].
         addPin value: token value: reason
       ] ifFalse: [
       kind = 'DogeBDEClassStudyV1' ifTrue: [
         (record isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained Class study'].
         roots keys do: [:key | (key startsWith: token, '/') ifTrue: [addPin value: key value: reason]]
       ] ifFalse: [
       (#('DogeBDEOverlaysV1' 'DogeBDEGroupOverlaysV1') includes: kind) ifTrue: [
         (record isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained presentation'].
         oid := (record at: 'component') getOID.
         addPin value: (oid, '/Main') value: reason
       ] ifFalse: [
       kind = 'DogeBDEOrderEvalV1' ifTrue: [
         (record isKindOf: Dictionary) ifFalse: [Smalltalk error: 'Malformed retained order study'].
         graph := record at: 'graph'.
         (byDiagram at: graph ifAbsent: [#()]) do: [:key | addPin value: key value: reason]
       ] ifFalse: [
       kind = 'DogeBDESourceEvalV1' ifTrue: [
         roots keys do: [:key | addPin value: key value: reason]
       ] ifFalse: [Smalltalk error: 'Unaudited retained scope registry']]]]]]]
     ]
   ].
   roots keysAndValuesDo: [:key :entry | | access |
     access := entry at: 'lastAccess' ifAbsent: [0].
     (pins at: key) isEmpty ifTrue: [
       (oldestAccess isNil or: [access < oldestAccess or: [access = oldestAccess and: [key < oldest]]])
         ifTrue: [oldest := key. oldestAccess := access]
     ]
   ].
   Dictionary new at: 'pins' put: pins; at: 'oldest' put: oldest; at: 'maxGeneration' put: generations; yourself
 ].
 lifecycle := [:component :action :requested |
   | roots retained policy epoch registry victim next result rows requestedGeneration scopeKey retirement |
   (#('inventory' 'acquire' 'generation' 'retire') includes: action) ifFalse: [component error: 'Unknown structural scope lifecycle action'].
   scopeKey := requested.
   action = 'retire' ifTrue: [
     ((requested isKindOf: Array) and: [requested size = 2 and: [requested first isString and: [requested last isInteger]]])
       ifFalse: [component error: 'Frozen exact scope generation required for retirement'].
     requestedGeneration := requested last. scopeKey := requested first
   ].
   roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [Dictionary new].
   epoch := Smalltalk at: #DogeBDEStructureEpochV1 ifAbsent: [nil].
   retained := Dictionary new.
   #('DogeBDEStructureEditsV3' 'DogeBDELayoutRestoresV1' 'DogeBDEDeletionRestoresV1'
     'DogeBDEAttachedOrderRestoresV1' 'DogeBDEPrivateSessionsV1' 'DogeBDEClassMaterializeV1'
     'DogeBDEClassStudyV1' 'DogeBDEOverlaysV1' 'DogeBDEGroupOverlaysV1'
     'DogeBDEOrderEvalV1' 'DogeBDESourceEvalV1' 'DogeBDEClassSourceCandidatesV1'
     'DogeBDEClassModelPublicationV1' 'DogeBDEMainWorkflowWitnessesV1' 'DogeBDECommitResourceWitnessesV1') do: [:name |
       retained at: name put: (Smalltalk at: name asSymbol ifAbsent: [Dictionary new])
   ].
   policy := pinPolicy value: roots value: retained.
   epoch notNil ifTrue: [
     ((epoch isKindOf: Dictionary) and: [(epoch at: 'profile') = 'structural_scope_epoch_v1' and: [
       #('highWater' 'clock' 'evictions') allSatisfy: [:name | (epoch at: name) isInteger and: [(epoch at: name) >= 0]]]])
       ifFalse: [component error: 'Malformed structural scope lifecycle epoch']
   ].
   action = 'inventory' ifTrue: [
     rows := roots keys asSortedCollection collect: [:key | | entry |
       entry := roots at: key.
       Dictionary new at: 'scope' put: key; at: 'generation' put: (entry at: 'generation' ifAbsent: [0]);
         at: 'counter' put: (entry at: 'counter'); at: 'identity_count' put: (entry at: 'ids') size;
         at: 'last_access' put: (entry at: 'lastAccess' ifAbsent: [0]);
         at: 'pins' put: ((policy at: 'pins') at: key) asSortedCollection asArray; yourself
     ].
     result := Dictionary new at: 'profile' put: 'structural_scope_inventory_v1'; at: 'limit' put: 64;
       at: 'entries' put: rows asArray; at: 'eviction_candidate' put: (policy at: 'oldest');
       at: 'high_water' put: ((policy at: 'maxGeneration') max: (epoch isNil ifTrue: [0] ifFalse: [epoch at: 'highWater']));
       at: 'evictions' put: (epoch isNil ifTrue: [0] ifFalse: [epoch at: 'evictions']);
       at: 'clock' put: (epoch isNil ifTrue: [0] ifFalse: [epoch at: 'clock']);
       at: 'registry_unchanged' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
     result
   ] ifFalse: [
     action = 'retire' ifTrue: [
       registry := roots at: scopeKey ifAbsent: [component error: 'Retirement scope unavailable'].
       ((registry at: 'owner') == component item and: [scopeKey = (component getOID, '/Main') and: [
         (registry at: 'generation') = requestedGeneration]])
         ifFalse: [component error: 'Frozen retirement owner or generation changed'].
       ((policy at: 'pins') at: scopeKey) isEmpty
         ifFalse: [component error: 'Structural scope retained; refusing retirement']
     ].
     epoch isNil ifTrue: [
       epoch := Dictionary new at: 'profile' put: 'structural_scope_epoch_v1';
         at: 'highWater' put: (policy at: 'maxGeneration'); at: 'clock' put: 0; at: 'evictions' put: 0; yourself.
       Smalltalk at: #DogeBDEStructureEpochV1 put: epoch
     ].
     epoch at: 'highWater' put: ((epoch at: 'highWater') max: (policy at: 'maxGeneration')).
     (epoch at: 'certificateVersion' ifAbsent: [0]) = 0 ifTrue: [
       roots values do: [:entry | entry at: 'scopeEpoch' put: epoch;
         at: 'issuedGeneration' put: (entry at: 'generation' ifAbsent: [0])].
       epoch at: 'certificateVersion' put: 1
     ].
     (epoch at: 'certificateVersion') = 1 ifFalse: [component error: 'Unsupported structural scope certificate version'].
     action = 'retire' ifTrue: [
       roots removeKey: scopeKey. epoch at: 'evictions' put: (epoch at: 'evictions') + 1;
         at: 'lastEviction' put: scopeKey.
       Dictionary new at: 'retired' put: true; at: 'scope' put: scopeKey; at: 'generation' put: requestedGeneration; yourself
     ] ifFalse: [action = 'generation' ifTrue: [
       (roots includesKey: scopeKey) ifFalse: [component error: 'Generation allocation requires a current scope'].
       next := (epoch at: 'highWater') + 1. epoch at: 'highWater' put: next.
       (roots at: scopeKey) at: 'scopeEpoch' put: epoch; at: 'issuedGeneration' put: next. next
     ] ifFalse: [
       registry := roots at: scopeKey ifAbsent: [nil].
       registry notNil ifTrue: [
         retirement := registry at: 'allocatorRetirementPending' ifAbsent: [nil].
         retirement notNil ifTrue: [
           ((retirement isKindOf: Dictionary) and: [
             (retirement at: 'profile') = 'allocator_scope_retirement_v1' and: [
             (retirement at: 'scope') = scopeKey and: [
             (retirement at: 'generation') = (registry at: 'generation') and: [
             (registry at: 'owner') == component item]]]])
             ifFalse: [component error: 'Allocator retirement scope certificate changed'].
           (((retirement at: 'terminal_verified') == true) and: [((policy at: 'pins') at: scopeKey) isEmpty])
             ifTrue: [
               lifecycle value: component value: 'retire'
                 value: (Array with: scopeKey with: (retirement at: 'generation')).
               registry := nil
             ]
         ]
       ].
       registry isNil ifTrue: [
         roots size >= 64 ifTrue: [
           victim := policy at: 'oldest'. victim isNil ifTrue: [component error: 'Structural scope registry full; all entries pinned'].
           roots removeKey: victim. epoch at: 'evictions' put: (epoch at: 'evictions') + 1;
             at: 'lastEviction' put: victim
         ].
         registry := Dictionary new at: 'ids' put: IdentityDictionary new; at: 'counter' put: 0; yourself.
         roots at: scopeKey put: registry
       ].
       epoch at: 'clock' put: (epoch at: 'clock') + 1.
       registry at: 'lastAccess' put: (epoch at: 'clock'). registry
     ]]
   ]
 ].
 Smalltalk at: #DogeBDEStructureScopePinsV1 put: pinPolicy.
 Smalltalk at: #DogeBDEStructureLifecycleV1 put: lifecycle.
[:component :diagramName :targets |
 | stage |
 stage := 'start'.
 component handleExceptionsIn: [
 | diagram scopeView freshView freshRoot scopeParts scopeChain boundaryContext freshTypes edgeKey isState registry roots scope ids counter refFor entries selected seeds allNodes allEdges byRef pinRef point nodeRow pinRow edgeRow actionRow encode out result graphSource modelRef models modelRow pinsFor copySource sameSource oidHex interfaceShape currentCertificate copyObservation |
 scopeParts := diagramName subStrings: $/.
 (scopeParts size > 0 and: [scopeParts size <= 17]) ifFalse: [component error: 'Invalid diagram scope'].
 diagram := component getDiagram: scopeParts first.
 freshView := diagram.
 freshRoot := diagram.
 isState := diagram isStateMachineDiagram.
 (diagram specification respondsTo: #specSourceInternalOrNil)
   ifFalse: [component error: 'BDE_DIAGRAM_NOT_GRAPHICAL: structural scope requires a graphical specification'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsentPut: [Dictionary new].
 scope := component getOID, '/', scopeParts first.
 registry := lifecycle value: component value: 'acquire' value: scope.
 copySource := [:source |
   | memo clone visited owner |
   memo := IdentityDictionary new. visited := 0.
   owner := ((source isKindOf: DBBaseObject) or: [(source isKindOf: DBProxy) or: [source isKindOf: SGTopGraphicsBlockDB]])
     ifTrue: [source dbObject] ifFalse: [nil].
   clone := [:v :depth |
     | copied name |
     visited := visited + 1.
     (visited > 1000000 or: [depth > 128]) ifTrue: [component error: 'Source checkpoint bound reached'].
     (v == owner or: [(v isNil or: [v isNumber]) or: [(v isKindOf: Symbol) or: [v == true or: [v == false]]]])
       ifTrue: [v] ifFalse: [
       memo at: v ifAbsent: [
         name := v class name asString.
         ((v isKindOf: String) or: [v isKindOf: ByteArray]) ifTrue: [copied := v copy. memo at: v put: copied] ifFalse: [
         (v isKindOf: Dictionary) ifTrue: [
           copied := v class new. memo at: v put: copied.
           v keysAndValuesDo: [:key :val | copied at: (clone value: key value: depth + 1) put: (clone value: val value: depth + 1)]
         ] ifFalse: [
         ((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [
           copied := v copy. memo at: v put: copied.
           1 to: v size do: [:i | copied at: i put: (clone value: (v at: i) value: depth + 1)]
         ] ifFalse: [
           ((v isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
             ifFalse: [component error: ('Unsupported source checkpoint class ', name)].
           copied := v shallowCopy. memo at: v put: copied.
           1 to: v class instSize do: [:i | copied instVarAt: i put: (clone value: (v instVarAt: i) value: depth + 1)]
         ]]]. copied
       ]
     ]
   ]. clone value: source value: 0
 ].
 registry at: 'copySource' put: copySource.
 sameSource := [:source :saved |
   | memo equal visited |
   memo := IdentityDictionary new. visited := 0.
   equal := [:a :b :depth |
     visited := visited + 1.
     (visited > 1000000 or: [depth > 128]) ifTrue: [component error: 'Source comparison bound reached'].
     a == b ifTrue: [true] ifFalse: [a class = b class ifFalse: [false] ifTrue: [
       ((a isNumber or: [a isString]) or: [(a isKindOf: Symbol) or: [a isKindOf: ByteArray]]) ifTrue: [a = b] ifFalse: [
       (memo includesKey: a) ifTrue: [(memo at: a) == b] ifFalse: [
         memo at: a put: b.
         (a isKindOf: Dictionary) ifTrue: [a size = b size and: [
           (a keys anySatisfy: [:key | ((b includesKey: key) and: [equal value: (a at: key) value: (b at: key) value: depth + 1]) not]) not
         ]] ifFalse: [
         ((a isKindOf: Array) or: [a isKindOf: OrderedCollection]) ifTrue: [a size = b size and: [
           ((1 to: a size) anySatisfy: [:i | (equal value: (a at: i) value: (b at: i) value: depth + 1) not]) not
         ]] ifFalse: [
           ((a isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: a class name asString]) ifTrue: [
             ((1 to: a class instSize) anySatisfy: [:i | (equal value: (a instVarAt: i) value: (b instVarAt: i) value: depth + 1) not]) not
           ] ifFalse: [false]
         ]]
       ]]
     ]]
   ]. equal value: source value: saved value: 0
 ].
 registry at: 'sameSource' put: sameSource.
 graphSource := diagram specification specSourceInternalOrNil.
 currentCertificate := (registry at: 'scopeEpoch' ifAbsent: [nil]) == (Smalltalk at: #DogeBDEStructureEpochV1).
 currentCertificate := currentCertificate and: [(registry at: 'issuedGeneration' ifAbsent: [nil]) = (registry at: 'generation' ifAbsent: [nil])].
 (currentCertificate and: [((registry at: 'checkpointVersion' ifAbsent: [0]) = 2) and: [(registry includesKey: 'checkpoint') and: [
   ((registry at: 'owner' ifAbsent: [nil]) == component item) and: [
   ((registry at: 'specification' ifAbsent: [nil]) == diagram specification) and: [
   sameSource value: graphSource value: (registry at: 'checkpoint')]]]]]) ifTrue: [
   diagram := registry at: 'diagram'
 ] ifFalse: [
   registry at: 'diagram' put: diagram; at: 'owner' put: component item; at: 'specification' put: diagram specification;
     at: 'checkpoint' put: (copySource value: graphSource); at: 'checkpointVersion' put: 2; at: 'ids' put: IdentityDictionary new;
     at: 'generation' put: (lifecycle value: component value: 'generation' value: scope)
 ].
 scopeView := diagram. scopeChain := OrderedCollection new. boundaryContext := OrderedCollection new.
 scopeParts size > 1 ifTrue: [
   isState ifTrue: [component error: 'Hierarchy scope requires an ordinary BDE'].
   2 to: scopeParts size do: [:index |
     | part nativeId matches hierarchy |
     part := scopeParts at: index.
     (part size >= 2 and: [part first = $h]) ifFalse: [component error: 'Exact hierarchy ID required'].
     nativeId := (part copyFrom: 2 to: part size) asNumber.
     (nativeId isInteger and: [nativeId >= 0 and: [nativeId <= 2147483647 and: [part = ('h', nativeId printString)]]])
       ifFalse: [component error: 'Noncanonical hierarchy ID'].
     matches := scopeView getAllDiagramElements select: [:node | node isBlockDiagramHierarchy and: [node diagramElement identifier = nativeId]].
     matches size = 1 ifFalse: [component error: 'Hierarchy scope missing or ambiguous'].
     hierarchy := matches first. scopeChain add: hierarchy diagramElement.
     hierarchy getAllPins do: [:pin |
       | external internal connector members |
       external := pin diagramElement. internal := external getInternalConnectorGO. connector := internal getConnectorGO.
       members := hierarchy getAllInternalPins.
       ((external oppHierNode == connector and: [connector oppHierNode == external]) and: [
         connector manager == internal and: [internal interfaceElementGO == external and: [
           members anySatisfy: [:member | member diagramElement == internal and: [
             member getAllPins anySatisfy: [:p | p diagramElement == connector]]]]]])
         ifFalse: [component error: 'Hierarchy boundary identity mismatch'].
       boundaryContext add: (Dictionary new at: 'hierarchy' put: nativeId;
         at: 'external' put: external identifier; at: 'internal_node' put: internal identifier;
         at: 'internal_pin' put: connector identifier; at: 'input' put: pin isInputPin;
         at: 'output' put: pin isOutputPin; yourself)
     ]. scopeView := hierarchy.
     matches := freshView getAllDiagramElements select: [:node | node isBlockDiagramHierarchy and: [node diagramElement identifier = nativeId]].
     matches size = 1 ifFalse: [component error: 'Fresh hierarchy scope missing or ambiguous'].
     freshView := matches first
   ]
 ].
 "Referenced Class signatures can change without changing the caller graphics source."
 interfaceShape := [:view |
   | rows visit count |
   rows := OrderedCollection new. count := 0.
   visit := [:current :path :depth |
     depth > 16 ifTrue: [component error: 'Interface shape depth bound exceeded'].
     current getAllDiagramElements do: [:node |
       count := count + 1. count > 8192 ifTrue: [component error: 'Interface shape node bound exceeded'].
       node isBlockDiagramComment ifFalse: [node getAllPins do: [:pin |
         rows size >= 16384 ifTrue: [component error: 'Interface shape pin bound exceeded'].
         rows add: (Array with: path with: node diagramElement identifier with: pin diagramElement identifier
           with: (Array with: pin getName with: pin isInputPin with: pin isOutputPin))
       ]].
       node isBlockDiagramHierarchy ifTrue: [visit value: node
         value: (path, '/h', node diagramElement identifier printString) value: depth + 1]
     ]
   ]. visit value: view value: scopeParts first value: 0.
   "Pin binding identity is independent of the API's node/pin enumeration order."
   (rows asSortedCollection: [:a :b |
     a first = b first ifTrue: [
       (a at: 2) = (b at: 2) ifTrue: [
         ((a at: 3) isNil ifTrue: [-1] ifFalse: [a at: 3]) <
           ((b at: 3) isNil ifTrue: [-1] ifFalse: [b at: 3])
       ] ifFalse: [(a at: 2) < (b at: 2)]
     ] ifFalse: [a first < b first]
   ]) asArray
 ].
 isState ifFalse: [
   stage := 'shared interface consistency'.
   (interfaceShape value: diagram) = (interfaceShape value: freshRoot) ifFalse: [
     registry removeKey: 'checkpoint' ifAbsent: [].
     component error: 'BDE_SHARED_INTERFACE_CHANGED: cached caller pins differ from the current Class interface; explicitly refresh and store the affected caller graph'
   ]
 ].
 registry at: 'activeDiagram' put: scopeView; at: 'activeScopeChain' put: scopeChain asArray.
 ids := registry at: 'ids'.
 refFor := [:native :prefix |
   | id |
   id := native identifier.
   (id isInteger and: [id >= 0]) ifTrue: [prefix, id printString] ifFalse: [
     ids at: native ifAbsentPut: [
       ids size >= 4096 ifTrue: [component error: 'Native identity registry limit reached'].
       "Retained inserted objects reserve their issued aliases across undo.
        This counter is read metadata, never a native model allocator."
       counter := (registry at: 'counter') + 1.
       [(registry at: 'connectAliasReservations' ifAbsent: [Dictionary new])
         includesKey: ('e', counter printString)] whileTrue: [
           counter := counter + 1].
       registry at: 'counter' put: counter.
       'e', counter printString
     ]
   ]
 ].
 point := [:p | Array with: p x with: p y].
 pinRef := [:p | | id | id := p diagramElement identifier.
   (id isInteger and: [id >= 0]) ifFalse: [
     component error: 'BDE_UNSTORED_PIN: current interface pin has no stable native ID; explicitly store the affected graph before precise editing'
   ]. 'p', id printString].
 "StoreToCache rebuilds logic on another graphic instance. Cached connector types can remain zero."
 edgeKey := [:e | Array with: e getOutputPin diagramElement identifier with: e getInputPin diagramElement identifier
   with: (e getAllConnectionPoints collect: [:p | Array with: p x with: p y]) asArray].
 freshTypes := Dictionary new.
 isState ifFalse: [freshView getAllDiagramConnections do: [:e |
   | key types | key := edgeKey value: e.
   types := freshTypes at: key ifAbsentPut: [Set new]. types add: e getConnectionType
 ]].
 oidHex := [:oid | | s digits | s := WriteStream on: String new. digits := '0123456789abcdef'.
   oid do: [:b | s nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. s contents].
 modelRef := [:m | stage := 'modelRef ', m class name asString. 'm_', (oidHex value: m element xmlOID)].
 modelRow := [:m | | row type represented config data scalar |
   stage := 'modelRow ', m class name asString.
   row := Dictionary new at: 'ref' put: (modelRef value: m); at: 'kind' put: 'model';
     at: 'name' put: m getName; at: 'native_class' put: m class name asString; yourself.
   stage := 'model type ', m class name asString.
   m isMessage ifTrue: [row at: 'message' put: (Dictionary new
     at: 'scope' put: m getScope; at: 'send' put: m isSendMessage;
     at: 'receive' put: m isReceiveMessage; at: 'send_receive' put: m isSendReceiveMessage;
     at: 'global_label' put: m element defaultGlobalLabel; yourself)].
   (m respondsTo: #getModelType) ifTrue: [type := m getModelType. (type isKindOf: EtasAPIError) ifFalse: [row at: 'model_type' put: type]].
   (m isComplex or: [type = 'enum']) ifTrue: [
     represented := m getRepresentedClass.
     (represented isKindOf: EtasAPIError) ifTrue: [component error: 'Referenced definition unavailable'].
     row at: 'definition' put: (Dictionary new at: 'path' put: represented getFolderPathName; at: 'oid' put: represented getOID; yourself)
   ].
   type = 'enum' ifTrue: [row at: 'enum_values' put: represented getEnumerationValues].
   (m respondsTo: #isParameter) ifTrue: [row at: 'parameter' put: m isParameter; at: 'variable' put: m isVariable].
   ((m element respondsTo: #isDependent) and: [m element isDependent]) ifTrue: [
     | formula captured formals bindingRows mapping entry |
     formula := m element instVarNamed: 'formula'.
     captured := Dictionary new at: 'status' put: 'absent'; yourself.
     formula notNil ifTrue: [
       formals := OrderedCollection new. bindingRows := OrderedCollection new.
       config := component getDefaultData.
       mapping := config isNil ifTrue: [nil] ifFalse: [config item instVarNamed: 'dependentParameters'].
       entry := mapping isNil ifTrue: [nil] ifFalse: [mapping at: m element aliasName ifAbsent: [nil]].
       formula identifiers size <= 64 ifFalse: [component error: 'Formula formal bound exceeded'].
       formula identifiers do: [:formal | | key actual |
         key := oidHex value: formal aliasName.
         formals add: (Dictionary new at: 'oid' put: key; at: 'name' put: formal identifier; yourself).
         actual := entry isNil ifTrue: [nil] ifFalse: [entry at: formal aliasName ifAbsent: [nil]].
         bindingRows add: (Dictionary new at: 'formal_oid' put: key;
           at: 'actual_ref' put: (actual isNil ifTrue: [nil] ifFalse: ['m_', (oidHex value: actual)]); yourself)
       ].
       captured at: 'status' put: 'read'; at: 'text' put: formula formulaBasic;
         at: 'compiled' put: formula esFormula; at: 'formals' put: formals;
         at: 'bindings' put: (Dictionary new at: 'source' put: 'component_default_configuration';
           at: 'status' put: (entry isNil ifTrue: ['absent'] ifFalse: ['read']);
           at: 'configuration_oid' put: (config isNil ifTrue: [nil] ifFalse: [config getOID]); at: 'values' put: bindingRows; yourself)
     ]. row at: 'dependent_formula' put: captured
   ].
   ((m isScalar or: [#('EtasAPIConstant' 'EtasAPIModelReceiveMessage' 'EtasAPIModelSendMessage' 'EtasAPIModelSendReceiveMessage') includes: m class name asString]) and: [m getScope = 'local']) ifTrue: [
     scalar := Dictionary new at: 'source' put: 'component_default_configuration'; at: 'status' put: 'absent'; yourself.
     config := component getDefaultData.
     (config notNil and: [(config isKindOf: EtasAPIError) not]) ifTrue: [
       scalar at: 'configuration_oid' put: config getOID.
       data := config getEntryFor: m.
       (data isKindOf: EtasAPIError) ifTrue: [scalar at: 'status' put: 'unavailable'; at: 'error_code' put: data errorCode] ifFalse: [
         data isNil ifFalse: [
           data class name asString = 'EtasAPIScalarDataElement' ifTrue: [
             scalar at: 'status' put: 'read'; at: 'value' put: data getPhysValue
           ] ifFalse: [scalar at: 'status' put: 'unsupported'; at: 'native_class' put: data class name asString]
         ]
       ]
     ]. row at: 'default_value' put: scalar
   ].
   ((#('EtasAPIModelArray' 'EtasAPIModelMatrix' 'EtasAPIModelDistribution') includes: m class name asString) and: [m getScope = 'local']) ifTrue: [
     scalar := Dictionary new at: 'source' put: 'component_default_configuration'; at: 'status' put: 'absent'; yourself.
     config := component getDefaultData.
     (config notNil and: [(config isKindOf: EtasAPIError) not]) ifTrue: [
       scalar at: 'configuration_oid' put: config getOID.
       data := config getEntryFor: m.
       (data isKindOf: EtasAPIError) ifTrue: [scalar at: 'status' put: 'unavailable'; at: 'error_code' put: data errorCode] ifFalse: [
         data isNil ifFalse: [
           (#('EtasAPIArrayDataElement' 'EtasAPIDistributionDataElement') includes: data class name asString) ifTrue: [
             scalar at: 'size' put: data getSize; at: 'max_size' put: data getMaxSize; at: 'declared_max_size' put: m getMaxSize.
             data getSize <= 256 ifTrue: [scalar at: 'status' put: 'read'; at: 'values' put: data getPhysValue]
               ifFalse: [scalar at: 'status' put: 'not_collected'; at: 'reason' put: 'array size exceeds 256 value bound']
           ] ifFalse: [data class name asString = 'EtasAPIMatrixDataElement' ifTrue: [
             scalar at: 'size' put: (Array with: data getXSize with: data getYSize);
               at: 'max_size' put: (Array with: data getMaxXSize with: data getMaxYSize);
               at: 'declared_max_size' put: (Array with: m getMaxXSize with: m getMaxYSize).
             (data getXSize <= 16 and: [data getYSize <= 16]) ifTrue: [scalar at: 'status' put: 'read'; at: 'values' put: data getPhysValue]
               ifFalse: [scalar at: 'status' put: 'not_collected'; at: 'reason' put: 'matrix exceeds 16x16 bound']
           ] ifFalse: [scalar at: 'status' put: 'unsupported'; at: 'native_class' put: data class name asString]]
         ]
       ]
     ]. row at: 'default_value' put: scalar
   ].
   (m isOneDTable or: [m isTwoDTable]) ifTrue: [
     row at: 'group_table' put: m isGroupCharTable; at: 'fixed_table' put: m isFixedCharTable.
     row at: 'declared_interpolation' put: m element getInterpolation.
     m getScope = 'local' ifTrue: [
       scalar := Dictionary new at: 'source' put: 'component_default_configuration'; at: 'status' put: 'absent'; yourself.
       config := component getDefaultData.
       (config notNil and: [(config isKindOf: EtasAPIError) not]) ifTrue: [
         scalar at: 'configuration_oid' put: config getOID. data := config getEntryFor: m.
         (data isKindOf: EtasAPIError) ifTrue: [scalar at: 'status' put: 'unavailable'; at: 'error_code' put: data errorCode] ifFalse: [
           data notNil ifTrue: [
             (#('EtasAPIOneDTableDataElement' 'EtasAPITwoDTableDataElement') includes: data class name asString) ifTrue: [
               scalar at: 'interpolation_linear' put: data isInterpolationLinear;
                 at: 'interpolation_rounded' put: data isInterpolationRounded;
                 at: 'extrapolation_constant' put: data isExtrapolationConstant.
               scalar at: 'declared_max_size' put: (m isTwoDTable
                 ifTrue: [Array with: m getMaxXSize with: m getMaxYSize] ifFalse: [m getMaxXSize]).
               (data getXSize <= (m isTwoDTable ifTrue: [16] ifFalse: [256]) and: [m isTwoDTable not or: [data getYSize <= 16]]) ifTrue: [
                 scalar at: 'status' put: 'read'; at: 'values' put: data getValue getPhysValue;
                   at: 'x' put: data getXDistribution getPhysValue.
                 m isTwoDTable ifTrue: [
                   scalar at: 'y' put: data getYDistribution getPhysValue;
                     at: 'size' put: (Array with: data getXSize with: data getYSize)
                 ] ifFalse: [scalar at: 'size' put: data getXSize]
               ] ifFalse: [scalar at: 'status' put: 'not_collected'; at: 'reason' put: 'table values exceed bounded read size']
             ] ifFalse: [scalar at: 'status' put: 'unsupported'; at: 'native_class' put: data class name asString]
           ]
         ]
       ]. row at: 'default_value' put: scalar
     ].
     m isGroupCharTable ifTrue: [
       row at: 'x_distribution' put: (modelRef value: m getXDistribution).
       m isTwoDTable ifTrue: [row at: 'y_distribution' put: (modelRef value: m getYDistribution)]
     ]
   ].
   row
 ].
 actionRow := [:info :index |
   | call source |
   call := info instVarNamed: ('action', index printString, 'MethodCall').
   source := info instVarNamed: ('action', index printString, 'ASDL').
   Dictionary new at: 'source' put: source;
     at: 'method_alias' put: call aliasName; at: 'method_call_id' put: call identifier;
     at: 'mode' put: (source notNil ifTrue: ['esdl'] ifFalse: [call aliasName isNil ifTrue: ['none'] ifFalse: ['method']]); yourself
 ].
 pinsFor := [:n | n isBlockDiagramComment ifTrue: [#()] ifFalse: [n getAllPins]].
 pinRow := [:p |
   | row call frame activator |
   row := Dictionary new at: 'ref' put: (pinRef value: p); at: 'kind' put: 'pin';
     at: 'name' put: p getName; at: 'owner' put: ('n', p getBlockDiagramElement identifier printString);
     at: 'input' put: p isInputPin; at: 'output' put: p isOutputPin; at: 'sequence' put: nil; yourself.
   p hasSequenceCall ifTrue: [
     call := p getSequenceCall. frame := call diagramElement basicGraphObject logicFrame. activator := call getSequenceActivator.
     row at: 'sequence' put: (Dictionary new at: 'id' put: call diagramElement identifier;
       at: 'number' put: call getSequenceNumber; at: 'method' put: (activator isNil ifTrue: [nil] ifFalse: [activator getName]);
       at: 'label' put: (call diagramElement instVarNamed: 'labelGO') text;
       at: 'position' put: (point value: frame origin); at: 'size' put: (point value: frame extent); yourself)
   ]. row
 ].
 nodeRow := [:n |
   | row native frame info |
   stage := 'node ', n class name asString.
   native := n diagramElement. frame := native basicGraphObject logicFrame.
   row := Dictionary new at: 'ref' put: (refFor value: native value: 'n');
     at: 'kind' put: (isState ifTrue: ['state'] ifFalse: ['node']);
     at: 'native_class' put: native class name asString;
     at: 'anchor' put: (point value: native getPosition);
     at: 'position' put: (point value: frame origin); at: 'size' put: (point value: frame extent); yourself.
   isState ifTrue: [
     row at: 'name' put: n getName; at: 'initial' put: n isStartState.
     info := native stateInfoGO.
     row at: 'entry' put: (actionRow value: info value: 1);
       at: 'static' put: (actionRow value: info value: 2);
       at: 'exit' put: (actionRow value: info value: 3)
   ] ifFalse: [
     row at: 'pins' put: ((pinsFor value: n) collect: [:p | pinRef value: p]).
     n isBlockDiagramLiteral ifTrue: [row at: 'literal' put: n getLiteralText].
     n isBlockDiagramComment ifTrue: [row at: 'comment' put: n getComment].
     n isBlockDiagramControl ifTrue: [row at: 'control' put: n getType].
     n isBlockDiagramHierarchyPin ifTrue: [row at: 'hierarchy_boundary' put: true].
     n isBlockDiagramOperator ifTrue: [row at: 'operator' put: n getType].
     (native isKindOf: ASDConversionGO) ifTrue: [row at: 'conversion_type' put: native conversionType asString].
     n isBlockDiagramHierarchy ifTrue: [row at: 'children' put: 'not_collected'; at: 'hierarchy_name' put: n getName]
     . n isBlockDiagramFunctionalElement ifTrue: [
       | m | m := n getModelElement.
       row at: 'model_ref' put: (modelRef value: m); at: 'model_name' put: m getName
     ]
   ]. row
 ].
 edgeRow := [:e |
   | native row info |
   native := e diagramElement.
   row := Dictionary new at: 'ref' put: (refFor value: native value: (isState ifTrue: ['t'] ifFalse: ['e']));
     at: 'kind' put: (isState ifTrue: ['transition'] ifFalse: ['edge']);
     at: 'native_class' put: native class name asString; yourself.
   isState ifTrue: [
     info := native transitionInfoGO.
     row at: 'source' put: (e hasStartPin ifTrue: ['unsupported_boundary_pin'] ifFalse: [refFor value: e getStartState diagramElement value: 'n']);
       at: 'target' put: (e hasEndPin ifTrue: ['unsupported_boundary_pin'] ifFalse: [refFor value: e getEndState diagramElement value: 'n']);
       at: 'priority' put: e getPriority;
       at: 'trigger' put: (actionRow value: info value: 1);
       at: 'action' put: (actionRow value: info value: 2);
       at: 'condition' put: (actionRow value: info value: 3);
       at: 'route' put: (native basicGraphObject cornerPoints collect: [:p | point value: p])
   ] ifFalse: [
     | types |
     types := freshTypes at: (edgeKey value: e) ifAbsent: [component error: 'Retained edge has no fresh endpoint/route counterpart'].
     types size = 1 ifFalse: [component error: 'Ambiguous fresh connection types'].
     row at: 'source' put: (pinRef value: e getOutputPin); at: 'target' put: (pinRef value: e getInputPin);
       at: 'type' put: types asArray first; at: 'route' put: (e getAllConnectionPoints collect: [:p | point value: p])
   ]. row
 ].
 allNodes := isState ifTrue: [diagram getAllStates] ifFalse: [scopeView getAllDiagramElements, scopeView getAllDiagramComments].
 allEdges := isState ifTrue: [diagram getAllTransitions] ifFalse: [scopeView getAllDiagramConnections].
 byRef := Dictionary new. entries := OrderedCollection new. selected := Set new.
 allNodes do: [:n |
   | key |
   key := refFor value: n diagramElement value: 'n'. byRef at: key put: n.
   isState ifFalse: [(pinsFor value: n) do: [:p | byRef at: (pinRef value: p) put: p]]
 ].
 allEdges do: [:e | byRef at: (refFor value: e diagramElement value: (isState ifTrue: ['t'] ifFalse: ['e'])) put: e].
 targets isEmpty ifTrue: [selected addAll: byRef keys] ifFalse: [
   targets do: [:key | (byRef includesKey: key) ifTrue: [selected add: key]].
   isState ifFalse: [
     targets do: [:key |
       ((key startsWith: 'n') and: [byRef includesKey: key]) ifTrue: [
         (pinsFor value: (byRef at: key)) do: [:p | selected add: (pinRef value: p)]
       ]
     ]
   ].
   seeds := selected copy.
   allEdges do: [:e |
     | key source target |
     key := refFor value: e diagramElement value: (isState ifTrue: ['t'] ifFalse: ['e']).
     isState ifTrue: [
       source := e hasStartPin ifTrue: ['unsupported_boundary_pin'] ifFalse: [refFor value: e getStartState diagramElement value: 'n'].
       target := e hasEndPin ifTrue: ['unsupported_boundary_pin'] ifFalse: [refFor value: e getEndState diagramElement value: 'n']
     ] ifFalse: [source := pinRef value: e getOutputPin. target := pinRef value: e getInputPin].
     (((seeds includes: key) or: [seeds includes: source]) or: [seeds includes: target]) ifTrue: [
       selected add: key; add: source; add: target
     ]
   ]
 ].
 isState ifFalse: [allNodes do: [:n | (pinsFor value: n) do: [:p |
   (selected includes: (pinRef value: p)) ifTrue: [selected add: (refFor value: n diagramElement value: 'n')]
 ]]].
 allNodes do: [:n |
   (selected includes: (refFor value: n diagramElement value: 'n')) ifTrue: [entries add: (nodeRow value: n)].
   isState ifFalse: [(pinsFor value: n) do: [:p | (selected includes: (pinRef value: p)) ifTrue: [entries add: (pinRow value: p)]]]
 ].
 allEdges do: [:e |
   (selected includes: (refFor value: e diagramElement value: (isState ifTrue: ['t'] ifFalse: ['e']))) ifTrue: [entries add: (edgeRow value: e)]
 ].
 isState ifFalse: [
   models := component getAllVariables, component getImplementationCasts.
   models do: [:m | | key | key := modelRef value: m.
     (targets isEmpty or: [(targets includes: key) or: [entries anySatisfy: [:row | (row at: 'model_ref' ifAbsent: [nil]) = key]]])
       ifTrue: [entries add: (modelRow value: m)]
   ]
 ].
 result := Dictionary new at: 'diagram' put: diagramName; at: 'diagram_kind' put: (isState ifTrue: ['state_machine'] ifFalse: ['block_diagram']);
   at: 'generation' put: (registry at: 'generation' ifAbsent: [0]);
   at: 'entries' put: (entries asSortedCollection: [:a :b | (a at: 'ref') <= (b at: 'ref')]); at: 'targets' put: targets;
   at: 'identity' put: 'native_object_registry_guarded_by_graphics_source_in_current_ASCET_process';
   at: 'lookup_nodes' put: allNodes size; at: 'lookup_edges' put: allEdges size; yourself.
 scopeParts size > 1 ifTrue: [result at: 'boundary_context' put: boundaryContext].
 out := WriteStream on: (String new: 4096).
 encode := [:x |
   x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   x isString ifTrue: [
     out nextPutAll: '{"$s":['. x asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Float) ifTrue: [
     out nextPutAll: '{"$f":['. x asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [
     | first |
     first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:k | first ifFalse: [out nextPut: $,]. first := false. out nextPut: $[. encode value: k. out nextPut: $,. encode value: (x at: k). out nextPut: $]].
     out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [
     | first |
     first := true. out nextPut: $[. x do: [:v | first ifFalse: [out nextPut: $,]. first := false. encode value: v]. out nextPut: $]
   ] ifFalse: [component error: ('Unsupported structural value ', x class name asString, ' ', x printString)]]]]]]
 ].
 encode value: result.
 copyObservation := [:value | | copied | copied := (
[:copyApi :copyInput |
 copyApi handleExceptionsIn: [
 | memo clone visited |
 memo := IdentityDictionary new. visited := 0.
 clone := [:item :depth | | typedResult |
   visited := visited + 1.
   (visited > 1000000 or: [depth > 128]) ifTrue: [copyApi error: 'Typed observation copy bound exceeded'].
   (item isNil or: [item isNumber or: [(item isKindOf: Symbol) or: [item == true or: [item == false]]]])
     ifTrue: [item] ifFalse: [
     memo at: item ifAbsent: [
       item isString ifTrue: [typedResult := item copy. memo at: item put: typedResult]
       ifFalse: [(item isKindOf: Dictionary) ifTrue: [
         typedResult := Dictionary new. memo at: item put: typedResult.
         item keysAndValuesDo: [:key :child |
           (key isString or: [key isInteger or: [key isKindOf: Symbol]])
             ifFalse: [copyApi error: 'Scalar typed observation key required'].
           typedResult at: key put: (clone value: child value: depth + 1)]
       ] ifFalse: [item isCollection ifTrue: [| members |
         members := item asArray. typedResult := Array new: members size. memo at: item put: typedResult.
         1 to: members size do: [:index | typedResult at: index put: (clone value: (members at: index) value: depth + 1)]
       ] ifFalse: [copyApi error: 'Unsupported typed observation class ', item class name asString]]]. typedResult
     ]
   ]].
 clone value: copyInput value: 0
 ] ifFail: [:error | 'BDE_OBSERVATION_COPY_ERROR: ', error messageText]
]
 ) value: component value: value.
   (copied isString and: [copied startsWith: 'BDE_OBSERVATION_COPY_ERROR:'])
     ifTrue: [component error: copied]. copied].
 registry at: 'copyObservation' put: copyObservation; at: 'observationCopyProfile' put: 'recursive_typed_v1'.
 registry at: 'observationValues' put: (copyObservation value: result).
 registry at: 'encodeObservation' put: [:value | out := WriteStream on: String new. encode value: value. out contents].
 out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', stage, ' ', error printString, ' ', error messageText]
]
] value
