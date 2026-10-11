"Fixed serializer route metadata. This block does not invoke serialization or database writes."
[:component :token :database |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | material root backend owner serializer swapper slot roles probes probe tokens describe image rows methods queries
   class method defining report names values code cacheBefore literals literalImage methodImage methodEvidence
   rechecked nativeKeys stable sameCode sameLiterals |
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
 root := material at: 'root'. owner := material at: 'owner'. backend := material at: 'backend'.
 ((material at: 'editToken') = token and: [owner == component item and: [(root at: 'owner') == owner and: [
   (material at: 'access') == database dbAccess and: [(material at: 'controller') == database dbInterface and: [
   (material at: 'generation') = (root at: 'generation') and: [(material at: 'phase') = 'captured']]]]]])
   ifFalse: [component error: 'Exact original prepared serializer binding required'].
 (#('SGClass' 'SGModule') includes: owner class name asString)
   ifFalse: [component error: 'Fixed existing Class/Module serializer profile required'].
 (material includesKey: 'controlMaterial') ifFalse: [component error: 'Original v3 control capture required'].
 slot := [:object :name | | schema index |
   schema := (object class allInstVarNames collect: [:field | field asString]) asArray.
   index := schema indexOf: name. index > 0 ifFalse: [component error: 'Serializer slot unavailable: ', name].
   object instVarAt: index].
 probes := material at: 'serializerProfiles' ifAbsentPut: [OrderedCollection new].
 probes size >= 16 ifTrue: [component error: 'Serializer profile evidence capacity reached; no eviction'].
 tokens := IdentityDictionary new.
 probe := Dictionary new at: 'phase' put: 'profiling'; at: 'root' put: root; at: 'owner' put: owner;
   at: 'tokens' put: tokens; at: 'originals' put: IdentityDictionary new; at: 'values' put: IdentityDictionary new;
   at: 'methods' put: OrderedCollection new; yourself.
 probes add: probe.
 serializer := slot value: backend value: 'linDeLin'.
 serializer class name asString = 'DBLinDeLin' ifFalse: [component error: 'Audited DBLinDeLin required'].
 swapper := slot value: serializer value: 'swapper'.
 swapper class name asString = 'DBSwapperDumperLoader' ifFalse: [component error: 'Audited Swapper route required'].
 roles := Dictionary new at: 'owner' put: owner; at: 'serializer' put: serializer; at: 'swapper' put: swapper;
   at: 'dumper' put: (slot value: swapper value: 'dumper'); at: 'loader' put: (slot value: swapper value: 'loader'); yourself.
 probe at: 'roles' put: roles.
 describe := [:object | | entry |
   entry := Dictionary new at: 'class' put: object class name asString; yourself.
   (object isNil or: [object isNumber or: [object == true or: [object == false or: [object isKindOf: Symbol]]]])
     ifTrue: [entry at: 'kind' put: 'atom'; at: 'value' put: object printString]
     ifFalse: [entry at: 'ref' put: (tokens at: object ifAbsentPut: ['z', (tokens size + 1) printString]).
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [
         object size > 4194304 ifTrue: [component error: 'Complete serializer value bound exceeded'].
         (probe at: 'values') at: object ifAbsentPut: [object copy].
         entry at: 'kind' put: 'value'; at: 'value' put: object asCebraString asArray
       ] ifFalse: [entry at: 'kind' put: 'boundary']]. entry].
 image := OrderedCollection new.
 roles keys asSortedCollection do: [:role | | object |
   object := roles at: role. names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   names size > 256 ifTrue: [component error: 'Serializer direct schema bound exceeded'].
   values := ((1 to: names size) collect: [:index | object instVarAt: index]) asArray.
   (probe at: 'originals') at: object put: (Array with: object class with: names with: values).
   image add: (Dictionary new at: 'role' put: role; at: 'binding' put: (describe value: object);
     at: 'field_names' put: names; at: 'fields' put: (values collect: [:value | describe value: value]); yourself)].
 probe at: 'image' put: image.
 stage := 'runtime-dispatch'.
 literalImage := [:literal | | entry key value bytes |
   entry := describe value: literal.
   literal class == (Smalltalk at: #EsAtom) ifTrue: [
     literal basicSize <= 4096 ifFalse: [component error: 'Complete EsAtom literal bound exceeded'].
     bytes := ((1 to: literal basicSize) collect: [:index | literal basicAt: index]) asArray.
     (bytes allSatisfy: [:byte | byte class == SmallInteger and: [byte >= 0 and: [byte <= 255]]])
       ifFalse: [component error: 'EsAtom literal must contain original byte integers'].
     entry at: 'kind' put: 'es_atom'; at: 'bytes' put: bytes.
     (probe at: 'values') at: literal ifAbsentPut: [bytes copy]].
   literal class == Association ifTrue: [
     key := slot value: literal value: 'key'. value := slot value: literal value: 'value'.
     (#(#DBLinDeLinError #DBProxy #ReadStream) includes: key)
       ifFalse: [component error: 'Unapproved serializer literal global'].
     value == (Smalltalk at: key) ifFalse: [component error: 'Serializer global binding changed'].
     value name == key ifFalse: [component error: 'Serializer literal global class name differs'].
     (probe at: 'originals') at: literal ifAbsentPut: [Array with: key with: value].
     entry at: 'kind' put: 'global_association'; at: 'key' put: key asString;
       at: 'value' put: (describe value: value); at: 'value_class_name' put: value name asString;
       at: 'current_global_identical' put: true].
   literal class == (Smalltalk at: #EsEmptyBlock) ifTrue: [
     (literal class allInstVarNames size = 0 and: [literal basicSize = 0])
       ifFalse: [component error: 'Unexpected empty block layout'].
     roles at: 'emptyBlock' ifAbsentPut: [literal].
     (roles at: 'emptyBlock') == literal ifFalse: [component error: 'Multiple empty block literal identities'].
     entry at: 'kind' put: 'empty_block'; at: 'fixed_size' put: 0; at: 'indexed_size' put: 0].
   (#('atom' 'es_atom' 'global_association' 'empty_block') includes: (entry at: 'kind'))
     ifFalse: [component error: 'Unclosed serializer literal class: ', literal class name asString].
   entry].
 methodImage := [:requestedClass :selector | | found dictionary array indexCount selectorIndex rawSlot
     currentMethod bytes literalObjects descriptors nativeKey |
   found := requestedClass whichClassIncludesSelector: selector.
   found isNil ifTrue: [component error: 'Serializer dispatch selector unavailable: ', selector asString].
   dictionary := found methodDictionary.
   dictionary class == (Smalltalk at: #EsMBADictionary)
     ifFalse: [component error: 'Only audited compact method dictionary supported'].
   (slot value: dictionary value: 'methodClass') == found
     ifFalse: [component error: 'Compact dictionary class differs'].
   array := slot value: dictionary value: 'methodsArray'.
   array isNil ifTrue: [array := slot value: found value: 'methodsArray'].
   array class == (Smalltalk at: #EsMethodArray)
     ifFalse: [component error: 'Exact effective EsMethodArray required'].
   (array basicSize <= 65536 and: [(array basicSize \\ 2) = 0])
     ifFalse: [component error: 'Complete method array size unsupported'].
   indexCount := 0. selectorIndex := 0.
   1 to: array basicSize by: 2 do: [:index |
     (array basicAt: index) == selector ifTrue: [indexCount := indexCount + 1. selectorIndex := index]].
   indexCount = 1 ifFalse: [component error: 'Unique original selector slot required'].
   rawSlot := array basicAt: selectorIndex + 1.
   rawSlot class == SmallInteger ifFalse: [component error: 'Original compact method integer slot required'].
   currentMethod := found compiledMethodAt: selector.
   (currentMethod class == (Smalltalk at: #EsCompactMethod) and: [
     (slot value: currentMethod value: 'startPC') = rawSlot])
       ifFalse: [component error: 'Compact method ID differs from original slot'].
   bytes := currentMethod bytecodes.
   bytes size <= 65536 ifFalse: [component error: 'Complete method bytecode bound exceeded'].
   literalObjects := currentMethod allLiterals.
   literalObjects size <= 1024 ifFalse: [component error: 'Complete method literal bound exceeded'].
   descriptors := (literalObjects collect: [:literal | literalImage value: literal]) asArray.
   nativeKey := Array with: requestedClass with: found with: array with: selector with: selectorIndex with: rawSlot.
   Dictionary new at: 'native_key' put: nativeKey; at: 'method' put: currentMethod;
     at: 'bytecodes' put: ((1 to: bytes size) collect: [:index | bytes at: index]) asArray;
     at: 'literal_objects' put: literalObjects; at: 'literals' put: descriptors;
     at: 'identity' put: (Dictionary new
       at: 'defining_class_ref' put: (describe value: found);
       at: 'effective_array_ref' put: (describe value: array); at: 'selector_index' put: selectorIndex;
       at: 'slot_kind' put: 'SmallInteger'; at: 'raw_slot' put: rawSlot; at: 'method_id' put: rawSlot;
       at: 'start_pc' put: (slot value: currentMethod value: 'startPC');
       at: 'wrapper_identity_is_method_identity' put: false; yourself); yourself].
 queries := (Array
   with: (Array with: 'owner' with: #('preDump:' 'isLiteral' 'isSelfDumpAndLoad' 'isDbObject' 'dbObject' 'isKnowMyLinks' 'hasReferences'))
   with: (Array with: 'serializer' with: #('dumpSwapper:' 'dumpBytes:' 'getLinkObject:'))
   with: (Array with: 'swapper' with: #('dump:' 'getLinkObject'))
   with: (Array with: 'dumper' with: #('dump:'))
   with: (Array with: 'loader' with: #('getDBLinkProxyOutOf:for:'))) asOrderedCollection.
 queries add: (Array with: 'emptyBlock' with: #('value' 'argumentCount')).
 methods := OrderedCollection new.
 nativeKeys := OrderedCollection new.
 probe at: 'methodEvidence' put: nativeKeys.
 queries do: [:query |
   (roles includesKey: query first) ifFalse: [component error: 'Expected empty block literal missing'].
   class := (roles at: query first) class.
   query last do: [:selectorText | | selector entry |
     selector := selectorText asSymbol.
     defining := class whichClassIncludesSelector: selector.
     defining isNil ifTrue: [component error: 'Serializer dispatch selector unavailable: ', selectorText].
     method := defining compiledMethodAt: selector.
     (probe at: 'methods') add: (Array with: class with: selector with: defining with: method).
     cacheBefore := describe value: (slot value: method value: 'bytecodes').
     code := method bytecodes.
     code size > 65536 ifTrue: [component error: 'Method bytecode bound exceeded'].
     methodEvidence := methodImage value: class value: selector.
     ((methodEvidence at: 'bytecodes') = ((1 to: code size) collect: [:index | code at: index]) asArray)
       ifFalse: [component error: 'Original and keyed dispatch bytecodes differ'].
     nativeKeys add: methodEvidence.
     literals := methodEvidence at: 'literals'.
     entry := Dictionary new at: 'role' put: query first; at: 'requested_class' put: class name asString;
       at: 'selector' put: selectorText; at: 'defining_class' put: defining name asString;
       at: 'method_class' put: method class name asString;
       at: 'bytecode_cache_before' put: cacheBefore; at: 'bytecode_cache_after' put: (describe value: (slot value: method value: 'bytecodes'));
       at: 'bytecodes' put: ((1 to: code size) collect: [:index | code at: index]) asArray;
       at: 'literals' put: literals; at: 'method_identity' put: (methodEvidence at: 'identity'); yourself.
     methods add: entry]].
 stage := 'identity-recheck'.
 nativeKeys do: [:original | | key actualKey |
   key := original at: 'native_key'.
   rechecked := methodImage value: key first value: (key at: 4).
   actualKey := rechecked at: 'native_key'. stable := true.
   1 to: key size do: [:index | (key at: index) == (actualKey at: index) ifFalse: [stable := false]].
   sameCode := (original at: 'bytecodes') = (rechecked at: 'bytecodes').
   sameLiterals := ((root at: 'encodeObservation') value: (original at: 'literals')) =
     ((root at: 'encodeObservation') value: (rechecked at: 'literals')).
   (stable and: [sameCode and: [sameLiterals]])
     ifFalse: [component error: 'Serializer method/literal identity changed during capture']].
 report := Dictionary new at: 'profile' put: 'native_commit_serializer_profile_v2'; at: 'native_token' put: token;
   at: 'component_oid' put: component getOID; at: 'generation' put: (root at: 'generation');
   at: 'profile_index' put: probes size; at: 'image' put: image asArray; at: 'dispatches' put: methods asArray;
   at: 'original_material_held' put: true; at: 'serialization_called' put: false;
   at: 'method_identity_checked_twice' put: true; at: 'complete_literal_descriptors' put: true;
   at: 'method_evidence_count' put: nativeKeys size; at: 'call_closure_complete' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 probe at: 'report' put: report; at: 'phase' put: 'profiled'.
 (root at: 'encodeObservation') value: report
 ] ifFail: [:error | 'BDE_SERIALIZER_PROFILE_ERROR: ', stage, ': ', error messageText]
]
