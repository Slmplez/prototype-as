[:component :token :expectedState | [:inverseId |
 component handleExceptionsIn: [
 | registry record peers witness lists root parent members retaining actual requiredState materialReader fresh sameOrder declarationRelease enumRelease messageRelease |
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
 (#('prepared' 'reverted' 'retain_reverted' 'reverted_declaration' 'reverted_enum_declaration' 'reverted_message_declaration') includes: expectedState) ifFalse: [component error: 'Invalid release state'].
 retaining := expectedState = 'retain_reverted'.
 enumRelease := expectedState = 'reverted_enum_declaration'.
 messageRelease := expectedState = 'reverted_message_declaration'.
 declarationRelease := messageRelease or: [enumRelease or: [expectedState = 'reverted_declaration']].
 requiredState := (retaining or: [declarationRelease]) ifTrue: ['reverted'] ifFalse: [expectedState].
 record := registry at: token ifAbsent: [nil].
 (retaining and: [record isNil]) ifTrue: [component error: 'Original native material unavailable; refusing reconstruction'].
 record notNil ifTrue: [
   ((record at: 'component') = component getOID and: [(record at: 'owner' ifAbsent: [nil]) == component item]) ifFalse: [component error: 'Recovery native owner mismatch'].
   (record at: 'state') = requiredState ifFalse: [component error: 'Recovery state differs; refusing release'].
   (record includesKey: 'commitResourceToken') ifTrue: [| resources saved |
     resources := Smalltalk at: #DogeBDECommitResourceWitnessesV1 ifAbsent: [Dictionary new].
     saved := resources at: (record at: 'commitResourceToken') ifAbsent: [nil].
     (saved notNil and: [(saved at: 'editRecord' ifAbsent: [nil]) == record])
       ifFalse: [component error: 'Incomplete commit capture must remain pinned; refusing prepared material release']].
   (record includesKey: 'createMaterial') ifTrue: [| creation sameMembers declarationVerified closure pendingNamespace |
     creation := record at: 'createMaterial'.
     sameMembers := [:left :right | left size = right size and: [
       (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
     (((creation at: 'nativeBefore') at: 'verify') value and: [
       ((creation at: 'sourceBefore') at: 'verify') value and: [
       (sameMembers value: (creation at: 'parent') children value: (creation at: 'beforeOrder')) and: [
       (sameMembers value: (creation at: 'parent') sortedChildren value: (creation at: 'beforeDrawing'))]]])
       ifFalse: [component error: 'Complete original creation native/source/order required before material release'].
     ((creation at: 'phase') = 'prepared' and: [creation includesKey: 'declarationBefore']) ifTrue: [
       (((creation at: 'declarationBefore') at: 'images') at: 'verify') value
         ifFalse: [component error: 'Complete original prepared declaration/configuration required before release'].
       (creation at: 'enumDeclaration' ifAbsent: [false]) ifTrue: [| beforeDeclaration currentReferences |
         beforeDeclaration := creation at: 'declarationBefore'.
         currentReferences := (beforeDeclaration at: 'definition') dbObject readReferences.
         currentReferences isError ifTrue: [component error: 'Prepared enum definition references unavailable'].
         currentReferences := currentReferences isReferencedBys.
         currentReferences size > 4096 ifTrue: [component error: 'Prepared enum reference bound exceeded'].
         currentReferences := (currentReferences collect: [:key | Array with: key globalIdString with: key className])
           asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
         currentReferences asArray = (beforeDeclaration at: 'definitionReferences')
           ifFalse: [component error: 'Complete original prepared enum reference set required before release']
       ]
     ].
     (creation at: 'phase') = 'attached' ifTrue: [
       declarationVerified := false.
       (declarationRelease and: [messageRelease
         ifTrue: [#('receive_message' 'send_message' 'send_receive_message') includes: (record at: 'args') first]
         ifFalse: [(record at: 'args') first = (enumRelease ifTrue: ['enumeration'] ifFalse: ['variable'])]]) ifTrue: [
         closure := creation at: 'finalizeActual' ifAbsent: [component error: 'Original declaration finalization proof unavailable'].
         pendingNamespace := (creation at: 'root') at: 'allocatorRetirementPending'
           ifAbsent: [component error: 'Original declaration namespace write barrier unavailable'].
         declarationVerified := ((closure at: 'profile') = (messageRelease ifTrue: ['native_create_finalize_actual_v5'] ifFalse: [enumRelease ifTrue: ['native_create_finalize_actual_v4'] ifFalse: ['native_create_finalize_actual_v3']]) and: [
           (closure at: 'original_declaration_verified') == true and: [
           ((creation at: 'finalizeExecution') at: 'profile') = (messageRelease ifTrue: ['native_create_finalize_execution_v4'] ifFalse: [enumRelease ifTrue: ['native_create_finalize_execution_v3'] ifFalse: ['native_create_finalize_execution_v2']]) and: [
           (creation at: 'createdModel') element == (record at: 'createdModel') element and: [
           (((creation at: 'declarationBefore') at: 'images') at: 'verify') value and: [
           (((creation at: 'finalizeDeclarationImages') at: 'verifyImages') value: (creation at: 'finalizeDeclarationTarget')) and: [
           (pendingNamespace at: 'native_token') = token and: [
           (pendingNamespace at: 'result_change_id') = ((closure at: 'execution') at: 'result_change_id') and: [
           (pendingNamespace at: 'terminal_verified') == true]]]]]]]])
       ].
       (messageRelease and: [declarationVerified]) ifTrue: [| guard freshProof proof originalDeclaration |
         ((creation at: 'messageDeclaration' ifAbsent: [false]) and: [
           component class name asString = 'EtasAPIModuleBDE' and: [component item class name asString = 'SGModule']])
           ifFalse: [component error: 'Independent original Module message release owner required'].
         guard := creation at: 'finalizeMessageGuard'
           ifAbsent: [component error: 'Fixed original message finalization guard unavailable'].
         proof := closure at: 'message_owner_evidence'.
         freshProof := guard value: component value:
           ((Array with: record with: creation with: (creation at: 'historyHead') with:
             (creation at: 'finalizeDeclarationImages')) copyWith: 'finalize_target').
         ((freshProof isKindOf: Dictionary) and: [freshProof size = proof size and: [
           proof keys allSatisfy: [:key | (freshProof includesKey: key) and: [(freshProof at: key) = (proof at: key)]]]])
           ifFalse: [component error: 'Original message release owner/type/role or both reference sources changed'].
         originalDeclaration := creation at: 'declarationBefore'.
         ((((originalDeclaration at: 'images') at: 'verify') value) and: [
           ((creation at: 'finalizeDeclarationImages') at: 'verifyImages') value: (creation at: 'finalizeDeclarationTarget')])
           ifFalse: [component error: 'Message release reference read changed the full original declaration baseline']
       ].
       (enumRelease and: [declarationVerified]) ifTrue: [| beforeDefinition actualDefinition enumProof referenceResult references |
         beforeDefinition := creation at: 'declarationBefore'. actualDefinition := creation at: 'declarationAfter'.
         enumProof := closure at: 'enum_definition_evidence'.
         ((creation at: 'enumDeclaration' ifAbsent: [false]) and: [
           (record at: 'definition') item == (beforeDefinition at: 'definition') and: [
           (actualDefinition at: 'definition') == (beforeDefinition at: 'definition') and: [
           (actualDefinition at: 'enumeration') == (beforeDefinition at: 'enumeration') and: [
           (enumProof at: 'profile') = 'native_enum_definition_finalize_evidence_v1' and: [
           (enumProof at: 'persisted_target_verified') == true and: [
           (enumProof at: 'definition_oid') = (beforeDefinition at: 'definitionOID')]]]]]])
           ifFalse: [component error: 'Original Enum release definition/type proof changed'].
         #(readReferences readIsReferencedByOnly) do: [:selector |
           referenceResult := (beforeDefinition at: 'definition') dbObject perform: selector.
           referenceResult isError ifTrue: [component error: 'Original Enum release reference query failed'].
           references := referenceResult isReferencedBys.
           references size > 4096 ifTrue: [component error: 'Original Enum release reference bound exceeded'].
           references := (references collect: [:key | Array with: key globalIdString with: key className])
             asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
           references asArray = (beforeDefinition at: 'definitionReferences')
             ifFalse: [component error: 'Original Enum release combined/database reference target changed']].
         ((((beforeDefinition at: 'images') at: 'verify') value) and: [
           ((creation at: 'finalizeDeclarationImages') at: 'verifyImages') value: (creation at: 'finalizeDeclarationTarget')])
           ifFalse: [component error: 'Original Enum release reference read changed the complete baseline']
       ].
       (((creation at: 'createdModel') isNil or: [declarationVerified]) and: [(creation at: 'createdDefinition') isNil and: [
         (creation at: 'historyClosed' ifAbsent: [false]) and: [
         ((creation at: 'finalizeExecution') at: 'terminal_verified') == true]]])
         ifFalse: [component error: 'Actual finalization terminal and complete original graphical/declaration body required']]
   ].
   ((retaining or: [record includesKey: 'managedInverseId']) and: [inverseId isEmpty])
     ifTrue: [component error: 'Exact durable inverse owner required'].
   retaining ifTrue: [
     (record includesKey: 'managedInverseId') ifTrue: [component error: 'Material already has an inverse owner; inspect instead of replaying'].
     inverseId = token ifTrue: [component error: 'Material owner cannot be its original token']
   ] ifFalse: [
     (record includesKey: 'managedInverseId') ifTrue: [
       (record at: 'managedInverseId') = inverseId ifFalse: [component error: 'Managed material release owner differs']]
   ].
   (retaining or: [record includesKey: 'managedInverseId']) ifTrue: [
     materialReader := record at: 'materialObservationReader' ifAbsent: [component error: 'Native reader material unavailable in legacy record'].
     fresh := component getDiagram: ((record at: 'diagramName') subStrings: $/) first.
     fresh specification == (record at: 'diagram') specification ifFalse: [component error: 'Native material specification expired'].
     actual := materialReader value: component value: (record at: 'diagramName')
       value: (record at: 'lastObservedTargets' ifAbsent: [record at: 'targets']).
     (actual startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: actual].
     actual = (record at: 'lastObserved') ifFalse: [component error: 'Terminal observation changed before material handoff'].
     root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
     sameOrder := [:left :right | left size = right size and: [((1 to: left size) anySatisfy: [:i | (left at: i) ~~ (right at: i)]) not]].
     ((root at: 'diagram') == (record at: 'diagram') and: [
       sameOrder value: (root at: 'activeScopeChain') value: (record at: 'scopeChain')])
       ifFalse: [component error: 'Native material scope lineage expired'].
     (record includesKey: 'topologyManagedGraphical') ifTrue: [
       ((record at: 'topologyManagedGraphical') at: 'verifyAfter') value
         ifFalse: [component error: 'Actual managed topology terminal changed before release']].
     (record includesKey: 'topologyManagedGraphical') ifFalse: [(record includesKey: 'graphicalRevertedCurrent') ifTrue: [
       ((record at: 'graphicalRevertedCurrent') at: 'verifyAfter') value
         ifFalse: [component error: 'Complete native terminal changed before material handoff']]]
   ].
   (requiredState = 'reverted' and: [record includesKey: 'drawingOriginalValue']) ifTrue: [
     root := record at: 'orderRoot'. parent := record at: 'orderParent'.
     ((root at: 'owner') == component item and: [(root at: 'diagram') == (record at: 'diagram') and: [
       (root at: 'generation') = (record at: 'orderGeneration') and: [parent children == (record at: 'orderCollection')]]])
       ifFalse: [component error: 'Released drawing source identity expired'].
     peers := registry values select: [:peer |
       peer ~~ record and: [(peer at: 'state') = 'applied' and: [
       (peer at: 'owner') == component item and: [(peer at: 'orderRoot' ifAbsent: [nil]) == root and: [
       (peer at: 'diagramName') = (record at: 'diagramName') and: [(peer at: 'orderParent' ifAbsent: [nil]) == parent and: [
       (peer at: 'orderCollection' ifAbsent: [nil]) == parent children and: [
       (peer at: 'orderGeneration' ifAbsent: [nil]) = (root at: 'generation')]]]]]]]].
     peers isEmpty ifFalse: [
       inverseId isEmpty ifTrue: [component error: 'Durable source inverse identity required before witness release'].
       members := (record at: 'drawingBeforeOrder') asArray copy.
       (members size > 100000 or: [members asSet size ~= members size])
         ifTrue: [component error: 'Complete bounded original drawing witness required'].
       lists := peers collect: [:peer | | list | list := peer at: 'drawingCausalWitnesses' ifAbsent: [OrderedCollection new].
         list size >= 128 ifTrue: [component error: 'Drawing causal witness capacity reached']. Array with: peer with: list].
       witness := Dictionary new at: 'owner' put: component item; at: 'root' put: root;
         at: 'diagram' put: (record at: 'diagram'); at: 'diagramName' put: (record at: 'diagramName');
         at: 'parent' put: parent; at: 'collection' put: parent children; at: 'generation' put: (root at: 'generation');
         at: 'sourceToken' put: token; at: 'inverseId' put: inverseId;
         at: 'sourceOrder' put: (record at: 'drawingOriginalValue') deepCopy;
         at: 'sourceIds' put: (record at: 'orderIds') copy; at: 'members' put: members; yourself.
       lists do: [:pair | pair last add: witness. pair first at: 'drawingCausalWitnesses' put: pair last]
     ]
   ].
   retaining ifTrue: [
     (record includesKey: 'topologyHeadHandoffReader') ifTrue: [| ownership |
       ownership := (record at: 'topologyHeadHandoffReader') value: component value: record
         value: (Array with: 'commit' with: token with: inverseId with: 'reverted').
       (ownership isKindOf: Dictionary) ifFalse: [component error: ownership asString]]
     .
     (record includesKey: 'fieldLocalProfile') ifTrue: [| completed |
       completed := record at: 'fieldLocalExecutedHead' ifAbsent: [component error: 'Actual local inverse head material unavailable'].
       ((completed at: 'previousHead') = token and: [(record at: 'fieldLocalHeadId') = token and: [(completed at: 'result') isNil]])
         ifFalse: [component error: 'Local retained inverse does not own its actual patch'].
       #('Native' 'Source' 'Values') do: [:kind |
         record at: ('fieldLocalHeadBefore', kind) put: (completed at: ('before', kind));
           at: ('fieldLocalHeadAfter', kind) put: (completed at: ('after', kind))].
       record at: 'fieldLocalHeadId' put: inverseId.
       record at: 'fieldLocalPreflight' put: Dictionary new.
       record removeKey: 'fieldLocalExecutedHead'
     ].
     record at: 'managedInverseId' put: inverseId; at: 'materialProtocol' put: 'retained_inverse_v1']
     ifFalse: [
       (record includesKey: 'connectMaterial') ifTrue: [| origins |
         origins := ((record at: 'connectMaterial') at: 'root') at: 'sourceCausalOrigins' ifAbsent: [Dictionary new].
         origins removeKey: token ifAbsent: []].
       registry removeKey: token]
 ]. retaining ifTrue: ['retained'] ifFalse: [
   (record notNil and: [record includesKey: 'commitResourceToken'])
     ifTrue: ['released_commit_retained'] ifFalse: ['released']]
 ] ifFail: [:error | 'BDE_RELEASE_ERROR: ', error messageText]
]]
