"Export complete frozen source cells with one identity table across all phases.
 No live instance fields are read and no source/model setter is invoked."
[:component :materials |
 component handleExceptionsIn: [
 | tokens roles source images atom rows result imageLimit |
 (materials isArray and: [#(5 6 8) includes: materials size])
   ifFalse: [component error: 'Exact source root and four frozen images required'].
 source := materials first. roles := #('original' 'applied' 'current' 'candidate').
 materials size = 8 ifTrue: [roles := roles, #('raw_applied' 'raw_current' 'raw_candidate')].
 tokens := IdentityDictionary new.
 imageLimit := materials size = 6 ifTrue: [5] ifFalse: [materials size].
 2 to: imageLimit do: [:index | | snapshots |
   snapshots := materials at: index.
   (snapshots class == IdentityDictionary and: [snapshots size <= 100000])
     ifFalse: [component error: 'Bounded exact frozen source identity images required'].
   snapshots keys do: [:object | tokens at: object ifAbsentPut: ['s', (tokens size + 1) printString]]
 ].
 (tokens includesKey: source) ifFalse: [component error: 'Frozen source root unavailable'].
 atom := [:value |
   (tokens includesKey: value) ifTrue: [Array with: 'ref' with: (tokens at: value)] ifFalse: [
   value isNil ifTrue: [#('nil')] ifFalse: [
   (value == true or: [value == false]) ifTrue: [Array with: 'boolean' with: value] ifFalse: [
   value isInteger ifTrue: [Array with: 'integer' with: value class name asString with: value printString] ifFalse: [
   value class == Float ifTrue: [Array with: 'float64le' with: ((1 to: 8) collect: [:slot | value basicAt: slot]) asArray] ifFalse: [
   (value isKindOf: Symbol) ifTrue: [Array with: 'symbol' with: value class name asString with: value asString]
     ifFalse: [component error: 'Frozen source reference lacks a captured identity']]]]]]
 ].
 result := Dictionary new at: 'profile' put: 'frozen_source_identity_evidence_v1';
   at: 'component_oid' put: component getOID; at: 'source_root' put: (tokens at: source);
   at: 'complete' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 materials size = 8 ifTrue: [result at: 'profile' put: 'frozen_connect_source_projection_evidence_v1'].
 roles doWithIndex: [:role :index |
   images := materials at: index + 1.
   rows := images keys collect: [:object | | entry kind saved row |
     entry := images at: object. kind := entry first. saved := entry last.
     row := Dictionary new at: 'ref' put: (tokens at: object); at: 'native_class' put: object class name asString;
       at: 'kind' put: kind; yourself.
     kind = 'fields' ifTrue: [
       row at: 'field_names' put: (object class allInstVarNames collect: [:name | name asString]) asArray;
         at: 'value' put: (saved collect: [:child | atom value: child]) asArray
     ] ifFalse: [kind = 'boundary' ifTrue: [row at: 'value' put: nil] ifFalse: [
     kind = 'value' ifTrue: [row at: 'value' put: saved asCebraString asArray] ifFalse: [
     kind = 'collection' ifFalse: [component error: 'Unknown frozen source image kind'].
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [row at: 'value' put: (saved keys collect: [:key |
         Array with: (atom value: key) with: (atom value: (saved at: key))]) asArray]
       ifFalse: [row at: 'value' put: (saved collect: [:child | atom value: child]) asArray]]]]. row
   ].
   result at: role put: rows asArray
 ].
 materials size = 6 ifTrue: [| nativeBindings |
   nativeBindings := materials last.
   (nativeBindings class == IdentityDictionary) ifFalse: [component error: 'Fixed native identity table required'].
   result at: 'native_bindings' put: (tokens keys collect: [:object |
     Array with: (tokens at: object) with: (nativeBindings at: object)]) asArray
 ]. result
 ] ifFail: [:error | 'BDE_FROZEN_SOURCE_EVIDENCE_ERROR: ', error messageText]
]
