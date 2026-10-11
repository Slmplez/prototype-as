[:component :action :token |
 component handleExceptionsIn: [
 | source cache records record visit point originalX changed same shallow stream seen |
 component getOID = '040ts00000001qg714f06gl6l0bgk' ifFalse: [component error: 'Source eval fixture OID required'].
 component getFolderPathName = 'BDE_Tool_Experiments\Trial_data_20260930_012339' ifFalse: [component error: 'Source eval fixture path required'].
 (#('mutate' 'restore') includes: action) ifFalse: [component error: 'Unknown source eval action'].
 source := (component getDiagram: 'Main') specification specSourceInternalOrNil.
 cache := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 records := Smalltalk at: #DogeBDESourceEvalV1 ifAbsentPut: [Dictionary new].
 action = 'mutate' ifTrue: [
   records isEmpty ifFalse: [component error: 'Previous source injection requires restoration'].
   same := (cache at: 'sameSource') value: source value: (cache at: 'checkpoint').
   same ifFalse: [component error: 'Initial checkpoint must match'].
   seen := IdentitySet new.
   visit := [:v |
     point isNil ifTrue: [
       (v isKindOf: Point) ifTrue: [point := v] ifFalse: [
       (seen includes: v) ifFalse: [
         seen add: v.
         (v isKindOf: SGGraphicObjectsDB) ifTrue: [
           1 to: v class instSize do: [:i | | child | child := v instVarAt: i. child == source dbObject ifFalse: [visit value: child]]
         ] ifFalse: [
         ((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [v do: [:child | visit value: child]] ifFalse: [
         (v isKindOf: Dictionary) ifTrue: [v values do: [:child | visit value: child]]]]
       ]]
     ]
   ].
   visit value: source.
   point isNil ifTrue: [component error: 'No nested Point in source'].
   shallow := source shallowCopy. originalX := point x.
   record := Dictionary new at: 'source' put: source; at: 'point' put: point;
     at: 'originalX' put: originalX; at: 'originalY' put: point y;
     at: 'checkpoint' put: (cache at: 'checkpoint'); at: 'same' put: (cache at: 'sameSource'); yourself.
   records at: token put: record.
   point x: originalX + 10.
   changed := ((cache at: 'sameSource') value: source value: (cache at: 'checkpoint')) not.
   stream := WriteStream on: String new.
   stream nextPutAll: '{"injection_pending":true,"deep_detected":'; nextPutAll: changed printString;
     nextPutAll: ',"old_shallow_equals":'; nextPutAll: (source equals: shallow) printString; nextPut: $}.
   stream contents
 ] ifFalse: [
   record := records at: token ifAbsent: [component error: 'Source injection missing'].
   source == (record at: 'source') ifFalse: [component error: 'Source identity changed; do not restore stale object'].
   point := record at: 'point'.
   (point x = ((record at: 'originalX') + 10) and: [point y = (record at: 'originalY')])
     ifFalse: [component error: 'Injected Point was changed externally'].
   point x: (record at: 'originalX').
   same := (record at: 'same') value: source value: (record at: 'checkpoint').
   same ifFalse: [component error: 'Original source value did not restore'].
   records removeKey: token.
   '{"injection_pending":false,"source_restored":true}'
 ]
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
