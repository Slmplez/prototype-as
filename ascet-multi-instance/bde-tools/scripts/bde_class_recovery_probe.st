[:detachedReader :registryGuard | [:definition :component :selector |
 component handleExceptionsIn: [
 | signatures materials roots signature material key state aliasFor same signatureBinding signatureAfter ownerMatch specMatch sourceMatch objectsMatch fieldsPresent fieldsMatch nativeObjects original saved root fresh signatureJson materialJson projection bindingsPresent bindingsMatch afterBindingsPresent afterBindingsMatch afterCheckpoint afterPhysical afterRoot afterDiagram afterGeneration afterSource afterIds beforeCounter currentCounter beforeIds currentIds extensionResult extensionStage extensionError extensionErrorJson |
 (definition isClass and: [selector size = 4]) ifFalse: [component error: 'Exact Class recovery selector required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated recovery owner required'].
 signatures := Smalltalk at: #DogeBDEClassStudyV1 ifAbsent: [nil].
 materials := Smalltalk at: #DogeBDEClassMaterializeV1 ifAbsent: [nil].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [nil].
 signature := signatures isNil ifTrue: [nil] ifFalse: [signatures at: definition getOID ifAbsent: [nil]].
 key := component getOID, '/Main'.
 material := materials isNil ifTrue: [nil] ifFalse: [materials at: key ifAbsent: [nil]].
 aliasFor := [:value |
   | out digits |
   value isString ifTrue: ['string:', value] ifFalse: [
     (value isKindOf: ByteArray) ifFalse: [component error: 'Unsupported recovery alias'].
     out := WriteStream on: String new. digits := '0123456789abcdef'.
     value do: [:byte | out nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
     'bytes:', out contents
   ]
 ].
 same := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 state := [:record |
   | value |
   value := record isNil ifTrue: ['absent'] ifFalse: [record at: 'state' ifAbsent: ['unknown']].
   (#('absent' 'prepared' 'added' 'mutation_started' 'pruned' 'prune_started' 'store_started' 'applied' 'restore_started' 'restored') includes: value)
     ifTrue: [value] ifFalse: ['unknown']
 ].
 signatureBinding := false. signatureAfter := false.
 signature notNil ifTrue: [
   | method formal |
   method := signature at: 'method'.
   (signature at: 'kind' ifAbsent: ['']) = 'create_argument' ifTrue: [
     signatureBinding := (signature at: 'selector') = selector and: [
       (signature at: 'api') method == method and: [method ownerSGClass == definition item and: [
         (aliasFor value: method aliasName) = (selector at: 2) and: [
           (signature at: 'arguments') allSatisfy: [:value | value owner == method]
         ]
       ]]
     ].
     (signature includesKey: 'created') ifTrue: [
       signatureBinding := signatureBinding and: [(signature at: 'created') owner == method]
     ]
   ] ifFalse: [
   formal := signature at: 'formal'.
   signatureBinding := (signature at: 'selector') = selector and: [
     (signature at: 'api') method == method and: [method ownerSGClass == definition item and: [
       formal owner == method and: [(aliasFor value: method aliasName) = (selector at: 2) and: [
         (aliasFor value: formal xmlOID) = (selector at: 3) and: [
           selector last = 'argument' ifTrue: [(signature at: 'arguments') anySatisfy: [:value | value == formal]]
             ifFalse: [selector last = 'return' and: [(signature at: 'return') == formal]]
         ]]
       ]]
     ]
   ].
   ].
   (signature includesKey: 'afterArguments') ifTrue: [
     signatureAfter := (same value: method arguments value: (signature at: 'afterArguments')) and: [
       method returnValue == (signature at: 'afterReturn')]
   ]
 ].
 ownerMatch := false. specMatch := false. sourceMatch := false. objectsMatch := false.
 fieldsPresent := false. fieldsMatch := false.
 bindingsPresent := false. bindingsMatch := false. afterBindingsPresent := false. afterBindingsMatch := false.
 afterPhysical := false. afterRoot := false. afterDiagram := false. afterGeneration := false.
 afterSource := false. afterIds := false. beforeCounter := -1. currentCounter := -1. beforeIds := -1. currentIds := -1.
 extensionStage := 'absent'. extensionError := ''.
 fresh := component getDiagram: 'Main'.
 projection := detachedReader value: component value: fresh.
 (projection startsWith: 'BDE_') ifTrue: [component error: projection].
 material notNil ifTrue: [
   original := material at: 'original'. saved := material at: 'originalRegistry'.
   root := roots isNil ifTrue: [nil] ifFalse: [roots at: key ifAbsent: [nil]].
   ownerMatch := (saved at: 'owner') == component item and: [root notNil and: [(root at: 'owner') == component item]].
   fresh := component getDiagram: 'Main'.
   specMatch := original specification == fresh specification and: [
     (saved at: 'specification') == fresh specification and: [root notNil and: [(root at: 'specification') == fresh specification]]].
   (material includesKey: 'afterSource') ifTrue: [
     sourceMatch := (saved at: 'sameSource') value: original specification specSourceInternalOrNil value: (material at: 'afterSource')
   ].
   nativeObjects := OrderedCollection new.
   [ | walk count |
     count := 0.
     walk := [:current :depth |
       depth > 16 ifTrue: [component error: 'Recovery probe depth bound exceeded'].
       current getAllDiagramElements do: [:node |
         count := count + 1. count > 8192 ifTrue: [component error: 'Recovery probe node bound exceeded'].
         nativeObjects add: node diagramElement.
         node getAllPins do: [:pin | nativeObjects add: pin diagramElement].
         node isBlockDiagramHierarchy ifTrue: [walk value: node value: depth + 1]
       ].
       current getAllDiagramConnections do: [:edge | nativeObjects add: edge diagramElement].
       current getAllDiagramComments do: [:comment | nativeObjects add: comment diagramElement]
     ]. walk value: original value: 0
   ] value.
   objectsMatch := same value: nativeObjects asArray value: (material at: 'objects')
   . fieldsPresent := (material at: 'detachedProfile' ifAbsent: ['']) = 'collected_graphics_v1'
     and: [material includesKey: 'detachedFields'].
   fieldsPresent ifTrue: [projection := detachedReader value: component value: original.
     (projection startsWith: 'BDE_') ifTrue: [component error: projection].
     fieldsMatch := projection = (material at: 'detachedFields')].
   bindingsPresent := (material at: 'bindingProfile' ifAbsent: ['']) = 'native_collections_v1'
     and: [material includesKey: 'originalBindings'].
   bindingsPresent ifTrue: [bindingsMatch := ((material at: 'originalBindings') at: 'verify') value].
   afterBindingsPresent := bindingsPresent and: [material includesKey: 'afterBindings'].
   afterBindingsPresent ifTrue: [
     afterCheckpoint := material at: 'afterBindings'.
     extensionResult := registryGuard value: component value: afterCheckpoint.
     afterBindingsMatch := extensionResult at: 'compatible'. extensionStage := extensionResult at: 'stage'.
     extensionError := extensionResult at: 'error' ifAbsent: [''].
     afterPhysical := (afterCheckpoint at: 'verify') value.
     beforeCounter := afterCheckpoint at: 'counter'. beforeIds := (afterCheckpoint at: 'ids') size.
     root notNil ifTrue: [
       afterRoot := root == (afterCheckpoint at: 'registry').
       afterDiagram := (root at: 'diagram') == (afterCheckpoint at: 'diagram').
       afterGeneration := (root at: 'generation') = (afterCheckpoint at: 'generation').
       afterSource := (root at: 'sameSource') value: (root at: 'checkpoint') value: (afterCheckpoint at: 'checkpoint').
       currentCounter := root at: 'counter'. currentIds := (root at: 'ids') size.
       afterIds := ((afterCheckpoint at: 'ids') keys anySatisfy: [:object |
         ((root at: 'ids') at: object ifAbsent: [nil]) ~= ((afterCheckpoint at: 'ids') at: object)]) not
     ]
   ]
 ].
 signatureJson := '{"registry_present":', signatures notNil printString,
   ',"retained_records":', (signatures isNil ifTrue: [0] ifFalse: [signatures size]) printString,
   ',"capacity":8,"record_present":', signature notNil printString,
   ',"state":"', (state value: signature), '","selector_matches":',
     (signature notNil and: [(signature at: 'selector') = selector]) printString,
   ',"original_formal_binding_matches":', signatureBinding printString,
   ',"after_signature_identity_matches":', signatureAfter printString, '}'.
 extensionErrorJson := WriteStream on: String new. extensionErrorJson nextPut: $[.
 extensionError asCebraString doWithIndex: [:byte :index |
   index > 1 ifTrue: [extensionErrorJson nextPut: $,]. extensionErrorJson nextPutAll: byte printString].
 extensionErrorJson nextPut: $].
 materialJson := '{"registry_present":', materials notNil printString,
   ',"retained_records":', (materials isNil ifTrue: [0] ifFalse: [materials size]) printString,
   ',"capacity":8,"record_present":', material notNil printString,
   ',"state":"', (state value: material), '","selector_matches":',
     (material notNil and: [(material at: 'selector') = selector]) printString,
   ',"native_owner_matches":', ownerMatch printString,
   ',"specification_matches":', specMatch printString,
   ',"stored_source_matches":', sourceMatch printString,
   ',"original_object_identities_match":', objectsMatch printString,
   ',"detached_fields_profile":"collected_graphics_v1","current_graphical_fields_observed":true',
   ',"original_graphical_fields_checkpoint_present":', fieldsPresent printString,
   ',"original_graphical_fields_match":', fieldsMatch printString,
   ',"native_binding_profile":"native_collections_v1"',
   ',"original_binding_checkpoint_present":', bindingsPresent printString,
   ',"original_full_collections_match":', bindingsMatch printString,
   ',"after_binding_checkpoint_present":', afterBindingsPresent printString,
   ',"after_native_bindings_match":', afterBindingsMatch printString,
   ',"after_physical_bindings_match":', afterPhysical printString,
   ',"after_registry_root_identity_match":', afterRoot printString,
   ',"after_registry_diagram_match":', afterDiagram printString,
   ',"after_registry_generation_match":', afterGeneration printString,
   ',"after_registry_checkpoint_match":', afterSource printString,
   ',"after_registry_original_ids_match":', afterIds printString,
   ',"after_registry_counter_before":', beforeCounter printString,
   ',"after_registry_counter_current":', currentCounter printString,
   ',"after_registry_ids_before":', beforeIds printString,
   ',"after_registry_ids_current":', currentIds printString,
   ',"after_registry_extension_stage":"', extensionStage, '"',
   ',"after_registry_extension_error_bytes":', extensionErrorJson contents, '}'.
 '{"signature":', signatureJson, ',"material":', materialJson, '}'
 ] ifFail: [:error | 'BDE_CLASS_RECOVERY_PROBE_ERROR: ', error messageText]
]]
