"Fixed isolated current-after declaration image study. No inverse or setters."
[:imageReader |
[:component :command |
 component handleExceptionsIn: [
 | nativeToken studyToken action record material model owner definition definitionSlot root studies study configClasses roots owned links references
   inspectReference images observed differences answer expanded passes |
 command size = 3 ifFalse: [component error: 'Fixed declaration image command shape required'].
 nativeToken := command first. studyToken := command at: 2. action := command at: 3.
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained declaration image study only'].
 (#('capture' 'check' 'export' 'release') includes: action)
   ifFalse: [component error: 'Fixed declaration image action required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: nativeToken.
 ((record at: 'component') = component getOID and: [(record at: 'owner') == component item and: [
   (record at: 'operation') = 'create_block' and: [(record at: 'args') first = 'variable' and: [
   (record at: 'diagramName') = 'Main' and: [(record at: 'state') = 'applied']]]]])
   ifFalse: [component error: 'Exact retained variable after-state required'].
 material := record at: 'createMaterial'. model := (material at: 'createdModel') element.
 owner := component item.
 ((record at: 'createdModel') element == model and: [(material at: 'phase') = 'attached'])
   ifFalse: [component error: 'Retained original declaration identity changed'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == owner ifFalse: [component error: 'Declaration image owner expired'].
 studies := record at: 'declarationImageStudies' ifAbsent: [nil].
 action = 'capture' ifTrue: [
   studies notNil ifTrue: [(studies includesKey: studyToken)
     ifTrue: [component error: 'Declaration study already exists; inspect instead of recapture']].
   configClasses := #('SGClassImplConfig' 'SGClassValueConfig' 'SGImplConfiguration' 'SGValueConfiguration').
   definitionSlot := (model class allInstVarNames collect: [:name | name asString]) indexOf: 'sgClass'.
   definitionSlot = 0 ifTrue: [component error: 'Audited native variable sgClass slot unavailable'].
   definition := model instVarAt: definitionSlot.
   definition class name asString = 'SGReal' ifFalse: [component error: 'Current study requires audited SGReal definition'].
   roots := OrderedCollection with: owner with: model. roots add: definition.
   owned := OrderedCollection with: owner with: model. owned add: definition.
   links := OrderedCollection new.
   inspectReference := [:value | | config |
     (value isKindOf: DBProxy) ifTrue: [
       (configClasses includes: value className) ifTrue: [
         config := value getObjectIfUndefined: [component error: 'Unresolved declaration configuration'].
         config class name asString = value className
           ifFalse: [component error: 'Declaration linked configuration class differs'].
         (owned anySatisfy: [:object | object == config]) ifFalse: [
           owned size >= 256 ifTrue: [component error: 'Declaration configuration ownership bound exceeded'].
           owned add: config. roots add: config. expanded := true.
           links add: (Array with: value globalIdString with: value className with: config)
         ]
       ]
     ]
   ].
   references := owner dbObject readReferences.
   references isError ifTrue: [component error: 'Declaration configuration references failed'].
   references := references isReferencedBys.
   references size > 256 ifTrue: [component error: 'Declaration configuration root bound exceeded'].
   (references select: [:reference | configClasses includes: reference className]) do: inspectReference.
   "Only traverse the fixed reader's accepted graph, never introspect unknown classes."
   expanded := true. passes := 0.
   [expanded] whileTrue: [
     passes := passes + 1. passes > 256 ifTrue: [component error: 'Declaration configuration closure bound exceeded'].
     images := imageReader value: component value: roots asArray value: owned asArray.
     images isString ifTrue: [component error: images].
     expanded := false.
     ((images at: 'snapshots') keys select: [:value | value isKindOf: DBProxy]) do: inspectReference
   ].
   study := Dictionary new at: 'owner' put: owner; at: 'model' put: model;
     at: 'generation' put: (root at: 'generation'); at: 'images' put: images;
     at: 'links' put: (links collect: [:link | Array with: link first with: (link at: 2)
       with: ((images at: 'tokens') at: link last)]) asArray;
     at: 'released' put: false; yourself.
   studies isNil ifTrue: [studies := Dictionary new. record at: 'declarationImageStudies' put: studies].
   studies at: studyToken put: study
 ] ifFalse: [
   studies isNil ifTrue: [component error: 'Declaration image study unavailable'].
   study := studies at: studyToken.
   ((study at: 'owner') == owner and: [(study at: 'model') == model and: [
     (study at: 'generation') = (root at: 'generation')]])
     ifFalse: [component error: 'Exact retained declaration study identity expired'].
   (study at: 'released') ifTrue: [component error: 'Declaration image study released'].
   images := study at: 'images'
 ].
 observed := (images at: 'verify') value.
 differences := (images at: 'diff') value.
 answer := Dictionary new at: 'profile' put: 'retained_declaration_images_study_v1';
   at: 'component_oid' put: component getOID; at: 'native_token' put: nativeToken;
   at: 'study_token' put: studyToken; at: 'generation' put: (root at: 'generation');
   at: 'action' put: action; at: 'unchanged' put: observed; at: 'actual_diff' put: differences;
   at: 'current_image' put: (images at: 'originalImage');
   at: 'current_schema' put: (images at: 'fieldDiagnostics') value;
   at: 'linked_configurations' put: (study at: 'links');
   at: 'after_image' put: (images at: 'terminalImage') value;
   at: 'after_schema' put: (images at: 'terminalFieldDiagnostics') value;
   at: 'retained_after_state_only' put: true; at: 'complete_body_capture' put: false;
   at: 'foreign_database_boundaries' put: true; at: 'definition_body_captured' put: true;
   at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'released' put: false; yourself.
 action = 'release' ifTrue: [
   (observed and: [(differences at: 'changes') isEmpty and: [(differences at: 'new_objects') isEmpty]])
     ifFalse: [component error: 'Declaration image changed; preserve original study material'].
   study at: 'released' put: true; at: 'images' put: nil; at: 'owner' put: nil; at: 'model' put: nil.
   answer at: 'released' put: true
 ].
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_DECLARATION_IMAGES_ERROR: ', error messageText]
]
]
