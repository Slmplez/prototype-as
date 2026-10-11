[:component :record :current |
 component handleExceptionsIn: [
 | before after prior applied now removed expected rowsFor same conflicts merged preserved root copy |
 (#('delete_node' 'disconnect_data') includes: (record at: 'operation'))
   ifFalse: [component error: 'Ordinary deletion value plan required'].
 (record at: 'observationCopyProfile' ifAbsent: [nil]) = 'recursive_typed_v1'
   ifFalse: [component error: 'Original recursive typed snapshots unavailable; refusing reconstruction'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2)
   at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 copy := root at: 'copyObservation'.
 before := record at: 'beforeValues' ifAbsent: [component error: 'Original typed observation unavailable'].
 after := record at: 'afterValues' ifAbsent: [component error: 'Applied typed observation unavailable'].
 rowsFor := [:graph | | rows |
   ((graph isKindOf: Dictionary) and: [(graph at: 'entries') size <= 100000])
     ifFalse: [component error: 'Bounded typed graph required'].
   rows := Dictionary new. (graph at: 'entries') do: [:row | | ref |
     ref := row at: 'ref'.
     ((ref isString and: [ref notEmpty]) and: [#('node' 'pin' 'edge' 'model') includes: (row at: 'kind')])
       ifFalse: [component error: 'Exact ordinary row required'].
     (rows includesKey: ref) ifTrue: [component error: 'Duplicate typed row reference'].
     rows at: ref put: row]. rows
 ].
 same := [:left :right | left class == right class and: [
   (left isKindOf: Dictionary) ifTrue: [left size = right size and: [
     left keys allSatisfy: [:key | (right includesKey: key) and: [same value: (left at: key) value: (right at: key)]]]]
   ifFalse: [(left isKindOf: Float) ifTrue: [left asCebraString = right asCebraString]
   ifFalse: [(left isCollection and: [left isString not]) ifTrue: [ | a b |
     a := left asArray. b := right asArray.
     a size = b size and: [(1 to: a size) allSatisfy: [:index | same value: (a at: index) value: (b at: index)]]]
   ifFalse: [left = right]]]]].
 prior := rowsFor value: before. applied := rowsFor value: after. now := rowsFor value: current.
 removed := prior keys reject: [:ref | applied includesKey: ref].
 (removed isEmpty or: [(applied keys anySatisfy: [:ref | (prior includesKey: ref) not or: [
   (same value: (prior at: ref) value: (applied at: ref)) not]]) or: [
   removed anySatisfy: [:ref | (#('node' 'pin' 'edge') includes: ((prior at: ref) at: 'kind')) not]]])
   ifTrue: [component error: 'Original observed patch is not an exact graphical deletion'].
 conflicts := OrderedCollection new. preserved := OrderedCollection new.
 (Array with: before with: after with: current) do: [:graph |
   ((graph keys asSet = after keys asSet) and: [(graph at: 'diagram_kind') = 'block_diagram'])
     ifFalse: [component error: 'Exact ordinary metadata shape required']].
 after keys do: [:key | (#('entries' 'lookup_nodes' 'lookup_edges') includes: key) ifFalse: [
   ((same value: (before at: key) value: (after at: key)) and: [same value: (after at: key) value: (current at: key)])
     ifFalse: [conflicts add: ('Graph metadata changed: ', key)]]].
 removed do: [:ref | (now includesKey: ref) ifTrue: [conflicts add: ('Deleted reference reappeared: ', ref)]].
 applied keys do: [:ref | (now includesKey: ref) ifTrue: [
   #('ref' 'kind' 'native_class') do: [:field |
     (same value: ((applied at: ref) at: field ifAbsent: [nil]) value: ((now at: ref) at: field ifAbsent: [nil]))
       ifFalse: [conflicts add: ('Current row identity changed: ', ref)]]]].
 merged := copy value: now. removed do: [:ref | merged at: ref put: (copy value: (prior at: ref))].
 removed do: [:ref | | row kind |
   row := prior at: ref. kind := row at: 'kind'.
   kind = 'edge' ifTrue: [
     #(('source' 'output') ('target' 'input')) do: [:pair | | endpoint owner |
       endpoint := merged at: (row at: pair first) ifAbsent: [Dictionary new].
       owner := merged at: (endpoint at: 'owner' ifAbsent: ['']) ifAbsent: [Dictionary new].
       (((endpoint at: 'kind' ifAbsent: [nil]) = 'pin' and: [(endpoint at: pair last ifAbsent: [false]) == true]) and: [
         (owner at: 'kind' ifAbsent: [nil]) = 'node' and: [(owner at: 'pins' ifAbsent: [#()]) includes: (endpoint at: 'ref' ifAbsent: [''])]])
         ifFalse: [conflicts add: ('Restored endpoint dependency changed: ', ref)]] .
     now values do: [:other | ((other at: 'kind') = 'edge' and: [(other at: 'target') = (row at: 'target')])
       ifTrue: [conflicts add: ('Restored input occupied: ', ref)]]
   ].
   kind = 'pin' ifTrue: [ | owner |
     owner := merged at: (row at: 'owner') ifAbsent: [Dictionary new].
     ((owner at: 'kind' ifAbsent: [nil]) = 'node' and: [(owner at: 'pins' ifAbsent: [#()]) includes: ref])
       ifFalse: [conflicts add: ('Restored pin owner changed: ', ref)]].
   kind = 'node' ifTrue: [
     (row at: 'pins' ifAbsent: [#()]) do: [:pinRef | | pin |
       pin := merged at: pinRef ifAbsent: [Dictionary new].
       ((pin at: 'kind' ifAbsent: [nil]) = 'pin' and: [(pin at: 'owner' ifAbsent: [nil]) = ref])
         ifFalse: [conflicts add: ('Restored node pin changed: ', ref)]].
     (row includesKey: 'model_ref') ifTrue: [
       (((merged at: (row at: 'model_ref') ifAbsent: [Dictionary new]) at: 'kind' ifAbsent: [nil]) = 'model')
         ifFalse: [conflicts add: ('Restored declaration missing: ', ref)]]
   ]
 ].
 now values do: [:row | (row at: 'kind') = 'edge' ifTrue: [
   (removed anySatisfy: [:ref | ((prior at: ref) at: 'kind') = 'pin' and: [
     ref = (row at: 'source') or: [ref = (row at: 'target')]]])
     ifTrue: [conflicts add: ('New detached-pin dependency: ', (row at: 'ref'))]]].
 expected := copy value: current.
 expected at: 'entries' put: (merged values asSortedCollection: [:left :right | (left at: 'ref') <= (right at: 'ref')]) asArray.
 #(('lookup_nodes' 'node') ('lookup_edges' 'edge')) do: [:pair | | delta field |
   field := pair first. delta := (removed select: [:ref | ((prior at: ref) at: 'kind') = pair last]) size.
   ((Array with: before with: after with: current) allSatisfy: [:graph |
     (graph at: field) isInteger and: [(graph at: field) >= 0]])
     ifFalse: [component error: 'Nonnegative complete lookup counts required'].
   ((before at: field) - (after at: field)) = delta
     ifFalse: [component error: 'Original lookup count does not explain deletion'].
   expected at: field put: (current at: field) + delta].
 (applied keys asSet union: now keys asSet) do: [:ref |
   (same value: (applied at: ref ifAbsent: [nil]) value: (now at: ref ifAbsent: [nil]))
     ifFalse: [preserved add: ref]].
 Dictionary new at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts;
   at: 'expected' put: (conflicts isEmpty ifTrue: [expected] ifFalse: [nil]);
   at: 'preserved' put: preserved asSortedCollection; at: 'same' put: same; yourself
 ] ifFail: [:error | 'BDE_DELETE_INVERSE_VALUES_ERROR: ', error messageText]
]
