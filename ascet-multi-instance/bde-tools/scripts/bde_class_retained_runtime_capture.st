[:cloneGraph :sourceDump :detached | [:planReader :executionReader | [:storageReader | [:component :checkpoint :context |
 component handleExceptionsIn: [
 | roots materials key registry material source phase slot same copy clone plan capture before image frozen generated changes summaries reverse steps liveFields result seal certificate expectedExport generatedExport generation owner specification exportText cloneCertificate cloneVerifier witness witnessFrozen witnessedChanges witnessedSummaries |
 (context isKindOf: Array) ifFalse: [component error: 'Exact retained runtime context required'].
 context size = 3 ifFalse: [component error: 'Exact retained runtime context shape required'].
 source := context first. phase := context at: 2. material := context last.
 (#('original' 'applied') includes: phase) ifFalse: [component error: 'Exact retained runtime phase required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained runtime owner required'].
 key := component getOID, '/Main'.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2. materials := Smalltalk at: #DogeBDEClassMaterializeV1.
 registry := roots at: key. slot := phase = 'original' ifTrue: ['originalBindings'] ifFalse: ['afterBindings'].
 ((materials at: key) == material and: [(material at: slot) == checkpoint and: [
   (material at: 'state') = (phase = 'original' ifTrue: ['prepared'] ifFalse: ['applied'])]])
   ifFalse: [component error: 'Retained runtime material phase changed'].
 same := registry at: 'sameSource'. copy := registry at: 'copySource'.
 generation := checkpoint at: 'generation'. owner := component item. specification := checkpoint at: 'specification'.
 frozen := copy value: source.
 liveFields := detached value: component value: (checkpoint at: 'diagram').
 (liveFields isString and: [(liveFields startsWith: 'BDE_') not])
   ifFalse: [component error: 'Complete retained runtime fields required'].
 clone := cloneGraph value: component value: checkpoint value: 'clone'.
 (clone isKindOf: Dictionary) ifFalse: [component error: clone].
 plan := planReader value: component value: clone value: OrderedCollection new.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 capture := executionReader value: component value: clone value: plan.
 (capture isKindOf: Dictionary) ifFalse: [component error: capture].
 before := capture at: 'currentCheckpoint'.
 image := copy value: source. image == source ifTrue: [component error: 'Retained private source aliases live source'].
 (clone at: 'root') createStorageObjectsFor: image.
 generated := copy value: image.
 changes := (capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value.
 reverse := IdentityDictionary new.
 (clone at: 'nativeByKey') keysAndValuesDo: [:name :member | reverse at: member put: name].
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
 plan := planReader value: component value: clone value: changes.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan].
 (plan at: 'compatible') ifFalse: [component error: 'Retained private normalization inverse conflict'].
 steps := (plan at: 'execute') value.
 (((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty
   and: [(clone at: 'verifyInitialGraph') value])
   ifFalse: [component error: 'Retained private normalization not restored'].
 witness := nil. witnessFrozen := nil.
 storageReader notNil ifTrue: [
   witness := storageReader value: component value: clone value: (copy value: source).
   (witness isKindOf: Dictionary) ifFalse: [component error: witness].
   witnessFrozen := copy value: (witness at: 'source').
   (same value: witnessFrozen value: frozen) ifFalse: [component error: 'Retained witnessed source differs from native source'].
   witnessedChanges := (capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value.
   witnessedSummaries := witnessedChanges collect: [:entry | | object index row |
     object := entry at: 'object'. index := entry at: 'index' ifAbsent: [0].
     row := Dictionary new at: 'kind' put: (entry at: 'kind'); at: 'native_class' put: object class name asString;
       at: 'native_key' put: (reverse at: object ifAbsent: [nil]); at: 'index' put: index; yourself.
     (entry at: 'kind') = 'fields' ifTrue: [
       row at: 'field' put: (object class allInstVarNames at: index) asString;
         at: 'before_class' put: (entry at: 'before') class name asString;
         at: 'after_class' put: (entry at: 'after') class name asString
     ] ifFalse: [row at: 'before_size' put: (entry at: 'before') size; at: 'after_size' put: (entry at: 'after') size]. row].
   plan := planReader value: component value: clone value: witnessedChanges.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan].
   (plan at: 'compatible') ifFalse: [component error: 'Retained witness normalization inverse conflict'].
   (witness at: 'report') at: 'private_normalization_changes' put: witnessedSummaries asArray;
     at: 'private_normalization_inverse_steps' put: (plan at: 'execute') value.
   (((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty
     and: [(clone at: 'verifyInitialGraph') value]) ifFalse: [component error: 'Retained witness graph not restored'].
   (witness at: 'report') at: 'private_normalization_restored' put: true
 ].
 ((same value: image value: frozen) and: [same value: source value: frozen])
   ifFalse: [component error: 'Retained generated or live source differs'].
 ((checkpoint at: 'verifyCurrent') value and: [
   (detached value: component value: (checkpoint at: 'diagram')) = liveFields])
   ifFalse: [component error: 'Live graph changed during retained runtime capture'].
 expectedExport := sourceDump value: component value: frozen.
 generatedExport := sourceDump value: component value: generated.
 result := Dictionary new at: 'profile' put: 'class_retained_runtime_image_v1'; at: 'phase' put: phase;
   at: 'generation' put: generation; at: 'owner' put: owner; at: 'specification' put: specification;
   at: 'checkpoint' put: checkpoint; at: 'material' put: material; at: 'clone' put: clone;
   at: 'source' put: image; at: 'sourceWitness' put: generated; at: 'liveFields' put: liveFields;
   at: 'expectedExport' put: expectedExport; at: 'generatedExport' put: generatedExport;
   at: 'normalizationChanges' put: summaries asArray; at: 'normalizationSteps' put: steps; yourself.
 witness notNil ifTrue: [result at: 'storageWitness' put: witness].
 "A history seal verifies its own copied graph; it never treats the old live graph as current."
 exportText := (registry at: 'encodeObservation') value: (Array with: expectedExport with: generatedExport
   with: summaries asArray with: (witness isNil ifTrue: [nil] ifFalse: [witness at: 'report'])).
 cloneCertificate := clone copy. cloneVerifier := clone at: 'verifyCorrespondence'.
 seal := [:candidate | | matches |
   matches := candidate == result.
   matches := matches and: [(materials at: key ifAbsent: [nil]) == material and: [component item == owner]].
   matches := matches and: [(material at: slot ifAbsent: [nil]) == checkpoint].
   matches := matches and: [(checkpoint at: 'owner') == owner and: [(checkpoint at: 'specification') == specification]].
   matches := matches and: [(checkpoint at: 'generation') = generation and: [candidate size = certificate size]].
   matches := matches and: [certificate keys allSatisfy: [:field | (candidate at: field ifAbsent: [nil]) == (certificate at: field)]].
   matches := matches and: [clone size = cloneCertificate size and: [
     cloneCertificate keys allSatisfy: [:field | (clone at: field ifAbsent: [nil]) == (cloneCertificate at: field)]]].
   matches := matches and: [cloneVerifier value: clone].
   matches := matches and: [((capture at: 'diffCheckpoints') value: before value: (capture at: 'captureCheckpoint') value) isEmpty].
   matches := matches and: [(same value: image value: frozen) and: [same value: generated value: frozen]].
   matches := matches and: [witness isNil or: [
     ((witness at: 'verifyBindings') value: witness) and: [same value: (witness at: 'source') value: witnessFrozen]]].
   matches and: [((registry at: 'encodeObservation') value: (Array with: expectedExport with: generatedExport
     with: summaries asArray with: (witness isNil ifTrue: [nil] ifFalse: [witness at: 'report']))) = exportText]
 ].
 result at: 'verifyImage' put: seal. certificate := result copy.
 (seal value: result) ifFalse: [component error: 'Retained runtime seal differs at capture'].
 result
 ] ifFail: [:error | 'BDE_CLASS_RETAINED_RUNTIME_ERROR: ', error messageText]
]]]]
