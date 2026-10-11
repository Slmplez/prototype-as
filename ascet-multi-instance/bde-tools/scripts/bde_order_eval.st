[:component :action :token |
 component handleExceptionsIn: [
 | experiments experiment graph parent original objects ids order stream first sameSequence pending selected reversed |
 component getOID = '040ts00000001qg714f06gl6l0bgk' ifFalse: [component error: 'Order eval fixture OID required'].
 ((component getFolderPathName = 'BDE_Tool_Experiments\Trial_data_20260930_012339') or: [component getFolderPathName = '\BDE_Tool_Experiments\Trial_data_20260930_012339'])
   ifFalse: [component error: 'Order eval fixture path required'].
 (#('begin' 'snapshot' 'reverse' 'restore' 'finish') includes: action) ifFalse: [component error: 'Unknown order eval action'].
 experiments := Smalltalk at: #DogeBDEOrderEvalV1 ifAbsentPut: [Dictionary new].
 sameSequence := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 action = 'begin' ifTrue: [
   experiments isEmpty ifFalse: [component error: 'Previous order experiment requires cleanup'].
   (experiments includesKey: token) ifTrue: [component error: 'Order eval token exists'].
   graph := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) at: 'diagram'.
   graph isStateMachineDiagram ifTrue: [component error: 'Ordinary BDE required'].
   selected := graph getAllDiagramElements select: [:n | n diagramElement identifier = 1].
   selected size = 1 ifFalse: [component error: 'Fixture anchor missing'].
   parent := selected first diagramElement manager.
   original := parent children asArray copy.
   ids := IdentityDictionary new.
   1 to: original size do: [:i | ids at: (original at: i) put: i].
   experiment := Dictionary new at: 'graph' put: graph; at: 'parent' put: parent;
     at: 'original' put: original; at: 'ids' put: ids; yourself.
   experiments at: token put: experiment
 ] ifFalse: [experiment := experiments at: token ifAbsent: [component error: 'Order eval token unavailable']].
 parent := experiment at: 'parent'. original := experiment at: 'original'. ids := experiment at: 'ids'.
 graph := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) at: 'diagram'.
 graph == (experiment at: 'graph') ifFalse: [component error: 'Order eval graph changed'].
 objects := parent children asArray copy.
 (objects anySatisfy: [:g | (ids includesKey: g) not]) ifTrue: [component error: 'Order eval unknown object identity'].
 action = 'reverse' ifTrue: [
   (experiment includesKey: 'pending') ifTrue: [component error: 'Injection already pending'].
   objects size < 2 ifTrue: [component error: 'Two remaining objects required'].
   experiment at: 'pending' put: objects.
   reversed := objects reverse.
   1 to: objects size do: [:i | parent children at: i put: (reversed at: i)]
 ].
 action = 'restore' ifTrue: [
   pending := experiment at: 'pending' ifAbsent: [component error: 'No pending injection'].
   ((sameSequence value: objects value: pending reverse) or: [sameSequence value: objects value: pending])
     ifFalse: [component error: 'Injection cleanup conflict'].
   1 to: pending size do: [:i | parent children at: i put: (pending at: i)].
   experiment removeKey: 'pending'
 ].
 order := parent children asArray copy.
 stream := WriteStream on: String new.
 stream nextPutAll: '{"order":['. first := true.
 order do: [:g | first ifFalse: [stream nextPut: $,]. first := false. stream nextPutAll: (ids at: g) printString].
 stream nextPutAll: '],"original_identity_order":'; nextPutAll: (sameSequence value: order value: original) printString;
   nextPutAll: ',"injection_pending":'; nextPutAll: (experiment includesKey: 'pending') printString; nextPut: $}.
 action = 'finish' ifTrue: [
   ((sameSequence value: order value: original) and: [(experiment includesKey: 'pending') not])
     ifFalse: [component error: 'Cannot finish unrestored order experiment'].
   experiments removeKey: token
 ].
 stream contents
 ] ifFail: [:error | 'BDE_ORDER_ERROR: ', error printString, ' ', error messageText]
]
