[:cloneGraph :sourceDump :detached | [:planReader :executionReader | [:storageReader :layoutReader | [:resolve :definition | [:retainPatch | [:component :token |
 component handleExceptionsIn: [
 | candidates key record material checkpoint registry same copy selected formal method memo clone plan capture before image generated changes summaries reverse targets walk seen liveFields result steps creationRecord aliasFor witness normalizationChanges normalizationRows layout layoutReport layoutSetters patchedCheckpoint |
 (retainPatch == true or: [retainPatch == false]) ifFalse: [component error: 'Exact retained patch mode required'].
 key := component getOID, '/Main'.
 candidates := Smalltalk at: #DogeBDEClassSourceCandidatesV1.
 record := candidates at: token, '/', key.
 (((record at: 'verifyRecord') value: record) and: [(record at: 'verifyCurrent') value])
   ifFalse: [component error: 'Runtime patch candidate changed before preparation'].
 material := record at: 'material'. checkpoint := record at: 'bindings'. registry := record at: 'root'.
 same := registry at: 'sameSource'. copy := registry at: 'copySource'.
 creationRecord := (Smalltalk at: #DogeBDEClassStudyV1) at: definition getOID.
 (((creationRecord at: 'kind') = 'create_argument' and: [(creationRecord at: 'state') = 'added']) and: [
   (creationRecord at: 'selector') = (material at: 'selector')])
     ifFalse: [component error: 'Exact applied Class creation study required'].
 selected := resolve value: definition value: (material at: 'selector').
 method := creationRecord at: 'method'. formal := creationRecord at: 'created'.
 ((selected last == method and: [method ownerSGClass == definition item]) and: [
   formal owner == method and: [method arguments last == formal]])
     ifFalse: [component error: 'Exact retained created formal native identity changed'].
 aliasFor := [:alias | | out digits |
   alias isString ifTrue: ['string:', alias] ifFalse: [
     (alias isKindOf: ByteArray) ifFalse: [component error: 'Exact created formal alias bytes required'].
     out := WriteStream on: String new. digits := '0123456789abcdef'.
     alias do: [:byte | out nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', out contents]
 ].
 liveFields := detached value: component value: (checkpoint at: 'diagram').
 (liveFields isString and: [(liveFields startsWith: 'BDE_') not])
   ifFalse: [component error: 'Complete runtime patch live fields required'].
 clone := cloneGraph value: component value: checkpoint value: 'clone'.
 (clone isKindOf: Dictionary) ifFalse: [component error: clone].
 memo := clone at: 'memo'. reverse := IdentityDictionary new.
 (clone at: 'nativeByKey') keysAndValuesDo: [:name :member | reverse at: member put: name].
 targets := OrderedCollection new. seen := IdentitySet new.
 walk := [:scope :depth | | add |
   depth > 16 ifTrue: [component error: 'Runtime patch scope depth bound exceeded'].
   add := [:native :kind | | copied parent collection targetKey |
     (seen includes: native) ifTrue: [component error: 'Repeated exact runtime patch target'].
     seen add: native. targets size >= 8192 ifTrue: [component error: 'Runtime patch target bound exceeded'].
     copied := memo at: native. targetKey := reverse at: copied.
     parent := copied manager.
     collection := kind = 'pin' ifTrue: [parent interfaceGOs] ifFalse: [parent children].
     ((memo values includes: collection) and: [(collection select: [:item | item == copied]) size = 1])
       ifFalse: [component error: 'Exact memo-owned runtime patch membership required'].
     targets add: (Dictionary new at: 'native' put: copied; at: 'parent' put: parent;
       at: 'collection' put: collection; at: 'kind' put: kind; at: 'native_key' put: targetKey; yourself)
   ].
   scope getAllDiagramElements do: [:node |
     node isBlockDiagramFunctionalElement ifTrue: [
       component getOID = definition getOID ifTrue: [
         node diagramElement element == formal ifTrue: [
           (node getAllPins anySatisfy: [:pin | pin diagramElement getExternalConnectorGO connectionPoint connections notEmpty])
             ifTrue: [component error: 'Created declaration still has incident edges'].
           add value: node diagramElement value: 'node'
         ]
       ] ifFalse: [| model |
         model := node getModelElement.
         (model isComplex and: [model getRepresentedClass getOID = definition getOID]) ifTrue: [
           node getAllPins do: [:pin |
             (pin diagramElement connectorAliasName = formal xmlOID and: [
               pin diagramElement manager methodAliasName = method aliasName]) ifTrue: [
               pin diagramElement getExternalConnectorGO connectionPoint connections isEmpty
                 ifFalse: [component error: 'Created caller input still has incident edges'].
               add value: pin diagramElement value: 'pin'
             ]
           ]
         ]
       ]
     ].
     node isBlockDiagramHierarchy ifTrue: [walk value: node value: depth + 1]
   ]
 ]. walk value: (checkpoint at: 'diagram') value: 0.
 targets isEmpty ifTrue: [
   (component getOID = definition getOID and: [
     same value: ((record at: 'sources') at: 'current') value: ((record at: 'sources') at: 'candidate')])
       ifFalse: [component error: 'No exact created Class input targets found for a required graphical patch']
 ].
 plan := planReader value: component value: clone value: OrderedCollection new.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 capture := executionReader value: component value: clone value: plan.
 (capture isKindOf: Dictionary) ifFalse: [component error: capture].
 before := capture at: 'currentCheckpoint'.
 witness := storageReader value: component value: clone value: (copy value: ((record at: 'sources') at: 'current')).
 (witness isKindOf: Dictionary) ifFalse: [component error: witness].
 (same value: (witness at: 'source') value: ((record at: 'sources') at: 'current'))
   ifFalse: [component error: 'Runtime layout storage differs from complete current source'].
 normalizationChanges := (capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value.
 normalizationRows := normalizationChanges collect: [:entry | | object index row |
   object := entry at: 'object'. index := entry at: 'index' ifAbsent: [0].
   row := Dictionary new at: 'kind' put: (entry at: 'kind'); at: 'native_class' put: object class name asString;
     at: 'native_key' put: (reverse at: object ifAbsent: [nil]); at: 'index' put: index; yourself.
   (entry at: 'kind') = 'fields' ifTrue: [row at: 'field' put: (object class allInstVarNames at: index) asString;
     at: 'before_class' put: (entry at: 'before') class name asString; at: 'after_class' put: (entry at: 'after') class name asString]
     ifFalse: [row at: 'before_size' put: (entry at: 'before') size; at: 'after_size' put: (entry at: 'after') size]. row
 ].
 plan := planReader value: component value: clone value: normalizationChanges.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 (plan at: 'compatible') ifFalse: [component error: 'Runtime layout witness normalization inverse conflict'].
 (witness at: 'report') at: 'private_normalization_changes' put: normalizationRows asArray;
   at: 'private_normalization_inverse_steps' put: (plan at: 'execute') value; at: 'private_normalization_restored' put: true.
 (((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty and: [
   (clone at: 'verifyInitialGraph') value]) ifFalse: [component error: 'Runtime layout normalization not restored'].
 layout := layoutReader value: component value: record value: (Array with: clone with: targets with: witness).
 (layout isKindOf: Dictionary) ifFalse: [component error: layout].
 (layout at: 'compatible') ifFalse: [component error: 'Runtime layout coordinate conflict before private setters'].
 (layout at: 'pins') do: [:row | | external |
   external := ((clone at: 'nativeByKey') at: (row at: 'native_key')) externalConnectorGO.
   (reverse includesKey: external) ifTrue: [component error: 'Repeated exact layout connector identity'].
   reverse at: external put: (row at: 'native_key'), '/external'
 ].
 layoutSetters := (layout at: 'execute') value.
 layoutReport := Dictionary new.
 #('profile' 'oid' 'generation' 'compatible' 'conflicts' 'affected_callers' 'existing_pins_checked'
   'pins' 'planned_coordinate_setters' 'model_setters_called' 'write_authorized' 'native_merge_executor_available')
     do: [:field | layoutReport at: field put: (layout at: field)].
 layoutReport at: 'actual_coordinate_setters' put: layoutSetters.
 "Only exact current memo-owned targets are changed; connected inputs refuse before private mutations."
 targets do: [:target | | native parent |
   native := target at: 'native'. parent := target at: 'parent'.
   (target at: 'kind') = 'pin' ifTrue: [parent removeInterfaceGO: native]
     ifFalse: [(target at: 'collection') remove: native. native manager: nil]
 ].
 image := copy value: ((record at: 'sources') at: 'current').
 (clone at: 'root') createStorageObjectsFor: image.
 generated := sourceDump value: component value: image.
 changes := (capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value.
 summaries := changes collect: [:entry | | object index row |
   object := entry at: 'object'. index := entry at: 'index' ifAbsent: [0].
   row := Dictionary new at: 'kind' put: (entry at: 'kind'); at: 'native_class' put: object class name asString;
     at: 'native_key' put: (reverse at: object ifAbsent: [nil]); at: 'index' put: index; yourself.
   (entry at: 'kind') = 'fields' ifTrue: [
     row at: 'field' put: (object class allInstVarNames at: index) asString;
       at: 'before_class' put: (entry at: 'before') class name asString;
       at: 'after_class' put: (entry at: 'after') class name asString
   ] ifFalse: [row at: 'before_size' put: (entry at: 'before') size; at: 'after_size' put: (entry at: 'after') size]. row
 ].
 patchedCheckpoint := (capture at: 'captureCheckpoint') value.
 retainPatch ifFalse: [
 plan := planReader value: component value: clone value: changes.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 (plan at: 'compatible') ifFalse: [component error: 'Runtime patch private inverse conflict'].
 steps := (plan at: 'execute') value.
 (((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty
   and: [(clone at: 'verifyInitialGraph') value]) ifFalse: [component error: 'Runtime patch private graph not restored']
 ] ifTrue: [steps := 0].
 (((record at: 'verifyRecord') value: record) and: [(record at: 'verifyCurrent') value and: [
   (detached value: component value: (checkpoint at: 'diagram')) = liveFields]])
     ifFalse: [component error: 'Live graph changed during private runtime patch'].
 result := Dictionary new at: 'profile' put: 'class_current_runtime_patch_v1';
   at: 'token' put: token; at: 'oid' put: component getOID; at: 'generation' put: (record at: 'generation');
   at: 'definition_oid' put: definition getOID; at: 'no_graphical_target_required' put: targets isEmpty;
   at: 'selector' put: (material at: 'selector');
   at: 'created_formal_alias' put: (aliasFor value: formal xmlOID);
   at: 'created_native_identity_verified' put: true;
   at: 'targets' put: (targets collect: [:target | Dictionary new at: 'kind' put: (target at: 'kind');
     at: 'native_key' put: (target at: 'native_key'); yourself]) asArray;
   at: 'actual_private_changes' put: summaries asArray; at: 'private_inverse_steps' put: steps;
   at: 'native_layout_audit' put: layoutReport;
   at: 'layout_storage_witnesses' put: (Dictionary new
     at: 'original' put: (((material at: 'originalRuntimeImage') at: 'storageWitness') at: 'report');
     at: 'applied' put: (((material at: 'afterRuntimeImage') at: 'storageWitness') at: 'report');
     at: 'current' put: (witness at: 'report'); yourself);
   at: 'private_graph_restored' put: retainPatch not; at: 'live_original_unchanged' put: true;
   at: 'expected_source_graph' put: (sourceDump value: component value: ((record at: 'sources') at: 'candidate'));
   at: 'generated_source_graph' put: generated;
   at: 'runtime_candidate_matches' put: (same value: image value: ((record at: 'sources') at: 'candidate'));
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false;
   at: 'native_merge_executor_available' put: false; yourself.
 retainPatch ifTrue: [
   (result at: 'runtime_candidate_matches') ifFalse: [component error: 'Retained patch differs from complete candidate'].
   Dictionary new at: 'report' put: result; at: 'clone' put: clone;
     at: 'candidate' put: image; at: 'record' put: record; at: 'currentFields' put: liveFields;
     at: 'verifyPatched' put: [
       ((clone at: 'verifyCorrespondence') value: clone) and: [
         ((capture at: 'diffCheckpoints') value: patchedCheckpoint value: (capture at: 'captureCheckpoint') value) isEmpty]];
     yourself
 ] ifFalse: [(registry at: 'encodeObservation') value: result]
 ] ifFail: [:error | 'BDE_CLASS_RUNTIME_PATCH_ERROR: ', error messageText]
]]]]]]
