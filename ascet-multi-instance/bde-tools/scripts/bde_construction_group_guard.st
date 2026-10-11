[:component :tokens :reader |
 component handleExceptionsIn: [
 | registry roots seen orders sameOrder references groupModels removedNodes removedModels |
 registry := Smalltalk at: #DogeBDEStructureEditsV3 ifAbsent: [Dictionary new].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [Dictionary new].
 (tokens size >= 1 and: [tokens size <= 16]) ifFalse: [component error: 'Bounded construction token group required'].
 seen := Set new. orders := IdentityDictionary new.
 sameOrder := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 references := [:api | | raw refs |
   raw := api item dbObject.
   (raw isKindOf: DBProxy) ifTrue: [
     refs := raw readReferences. refs isError ifTrue: [component error: 'Owner reference read failed'].
     refs isReferencedBys asSet copy
   ] ifFalse: [
     (raw isKindOf: DBXmlObject) ifFalse: [component error: 'Unsupported owner reference backend'].
     raw references referencedBy asSet copy
   ]
 ].
 groupModels := IdentitySet new.
 removedNodes := IdentitySet new. removedModels := IdentitySet new.
 tokens do: [:token | | entry |
   entry := registry at: token ifAbsent: [component error: 'Construction token unavailable'].
   ((entry at: 'component') = component getOID and: [(entry at: 'owner') == component item])
     ifFalse: [component error: 'Construction model owner changed'].
   (entry includesKey: 'createdModel') ifTrue: [groupModels add: (entry at: 'createdModel') element]
 ].
 tokens do: [:token |
   | record operation root diagram scopeView current created native parent virtual |
   (seen includes: token) ifTrue: [component error: 'Duplicate construction token'].
   seen add: token. record := registry at: token ifAbsent: [component error: 'Construction token unavailable'].
   operation := record at: 'operation'.
   (#('create_block' 'connect_data') includes: operation) ifFalse: [component error: 'Unexpected construction operation'].
   (record at: 'state') = 'applied' ifFalse: [component error: 'Verified applied construction step required'].
   ((record at: 'component') = component getOID and: [(record at: 'owner') == component item])
     ifFalse: [component error: 'Construction owner changed'].
   current := reader value: component value: (record at: 'diagramName') value: #().
   (current startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: current].
   root := roots at: component getOID, '/', ((record at: 'diagramName') subStrings: $/) first.
   diagram := root at: 'diagram'. scopeView := root at: 'activeDiagram'.
   diagram == (record at: 'diagram') ifFalse: [component error: 'Construction graph source expired'].
   (sameOrder value: (root at: 'activeScopeChain') value: (record at: 'scopeChain'))
     ifFalse: [component error: 'Construction hierarchy identity changed'].
   created := record at: 'created'. native := created diagramElement. parent := native manager.
   virtual := orders at: parent ifAbsentPut: [parent children asOrderedCollection copy].
   (virtual includes: native) ifFalse: [component error: 'Created native object missing from its parent'].
   operation = 'connect_data' ifTrue: [
     | source target |
     source := record at: 'source'. target := record at: 'target'.
     (scopeView getAllDiagramConnections anySatisfy: [:edge | edge diagramElement == native])
       ifFalse: [component error: 'Created connection identity missing'].
     (scopeView getAllDiagramElements anySatisfy: [:node | node getAllPins anySatisfy: [:pin | pin diagramElement == source diagramElement]])
       ifFalse: [component error: 'Connection source identity missing'].
     (scopeView getAllDiagramElements anySatisfy: [:node | node getAllPins anySatisfy: [:pin | pin diagramElement == target diagramElement]])
       ifFalse: [component error: 'Connection target identity missing'].
     (created getOutputPin diagramElement == source diagramElement and: [created getInputPin diagramElement == target diagramElement])
       ifFalse: [component error: 'Created connection endpoint identity changed'].
     virtual remove: native
   ] ifFalse: [
     | kind members delta |
     kind := (record at: 'args') first.
     (#('literal' 'comment' 'operator' 'control' 'hierarchy' 'variable' 'parameter' 'constant' 'receive_message' 'send_message' 'send_receive_message'
        'array' 'matrix' 'distribution' 'oned_table' 'twod_table' 'oned_table_fixed' 'twod_table_fixed'
        'resource' 'delta_t' 'implementation_cast' 'enumeration' 'component'
        'oned_table_group' 'twod_table_group' 'existing_model') includes: kind)
       ifFalse: [component error: 'Creation kind is not validated for dependent restoration'].
     (record includesKey: 'createdDefinition') ifTrue: [
       | enumeration folder |
       enumeration := record at: 'createdDefinition'. folder := record at: 'enumFolder'.
       (folder isValid and: [enumeration isValid and: [(folder getItem: (record at: 'enumName')) item == enumeration item]])
         ifFalse: [component error: 'Created enum definition identity changed'].
       enumeration getEnumerationValues asArray = (record at: 'enumItems') asArray
         ifFalse: [component error: 'Created enum items changed'].
       (references value: enumeration) = (record at: 'enumReferencesAfter')
         ifFalse: [component error: 'Created enum references changed before group inverse'].
       component getAllVariables do: [:model |
         ((model respondsTo: #getModelType) and: [model getModelType = 'enum']) ifTrue: [
           (model getRepresentedClass item == enumeration item and: [(groupModels includes: model element) not])
             ifTrue: [component error: 'Created enum acquired a declaration outside this construction group']
         ]
       ]
     ].
     members := scopeView getAllDiagramElements, scopeView getAllDiagramComments.
     (members anySatisfy: [:node | node diagramElement == native]) ifFalse: [component error: 'Created node identity missing'].
     parent == (record at: 'creationParent') contents ifFalse: [component error: 'Creation contents manager identity changed'].
     (diagram getGraphicalHierarchyFromHierarchyElement: (record at: 'placementHierarchy')) == (record at: 'creationParent')
       ifFalse: [component error: 'Placement hierarchy identity changed'].
     (sameOrder value: virtual value: (record at: 'creationAfterOrder'))
       ifFalse: [component error: 'Construction parent order conflicts before any inverse'].
     delta := (record at: 'creationAfterOrder') reject: [:entry | (record at: 'creationOrder') includes: entry].
     (delta size = 1 and: [delta first == native]) ifFalse: [component error: 'Unsupported creation parent effects'].
     kind = 'hierarchy' ifTrue: [
       | child childParent |
       (record includesKey: 'createdHierarchyGuardAfter') ifFalse: [component error: 'Created hierarchy group checkpoint unavailable'].
       child := reader value: component value: (record at: 'createdHierarchyScope') value: (record at: 'createdHierarchyGuardTargets').
       childParent := diagram getGraphicalHierarchyFromHierarchyElement: created.
       (childParent == (record at: 'createdHierarchyParent') and: [
         sameOrder value: childParent children value: (record at: 'createdHierarchyOrder')])
         ifFalse: [component error: 'Created hierarchy children identity or order changed'].
       child = (record at: 'createdHierarchyGuardAfter')
         ifFalse: [component error: 'Created hierarchy contents changed before group inverse']
     ].
     (record includesKey: 'messageOwnerReferences') ifTrue: [
       (references value: component) = (record at: 'messageOwnerReferences')
         ifFalse: [component error: 'Message owner references changed']
     ].
     (record includesKey: 'createdModel') ifTrue: [
       | walk visited model |
       model := record at: 'createdModel'. model isValid ifFalse: [component error: 'Created declaration identity changed'].
       visited := 0.
       walk := [:view :depth |
         depth > 16 ifTrue: [component error: 'Declaration reference depth bound exceeded'].
         view getAllDiagramElements do: [:node |
           visited := visited + 1. visited > 65536 ifTrue: [component error: 'Declaration reference bound exceeded'].
           (node isBlockDiagramFunctionalElement and: [node getModelElement element == model element]) ifTrue: [
             (node diagramElement == native or: [removedNodes includes: node diagramElement])
               ifFalse: [component error: 'Created declaration acquired another occurrence outside its reverse dependencies']
           ].
           node isBlockDiagramHierarchy ifTrue: [walk value: node value: depth + 1]
         ]
       ]. walk value: diagram value: 0.
       ((model respondsTo: #isDistribution) and: [model isDistribution]) ifTrue: [component getAllVariables do: [:candidate |
         ((candidate respondsTo: #isGroupCharTable) and: [candidate isGroupCharTable]) ifTrue: [
           ((candidate getXDistribution element == model element or: [candidate isTwoDTable and: [candidate getYDistribution element == model element]])
             and: [(removedModels includes: candidate element) not])
               ifTrue: [component error: 'Created distribution still has a table outside its reverse dependencies']
         ]
       ]].
       removedModels add: model element
     ].
     virtual remove: native.
     (sameOrder value: virtual value: (record at: 'creationOrder'))
       ifFalse: [component error: 'Virtual creation inverse does not restore parent order'].
     removedNodes add: native
   ]
 ]. 'construction_group_verified'
 ] ifFail: [:error | 'BDE_CONSTRUCTION_GROUP_ERROR: ', error messageText]
]
