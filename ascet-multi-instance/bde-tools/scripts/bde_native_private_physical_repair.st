[:database :component :arguments |
 component handleExceptionsIn: [
 | binding roots record wire context seen candidates materials out inspect executor material physical entry object initial desired completed sameOrder projected removal observed delta point |
 binding := arguments last.
 roots := Smalltalk at: #DogeBDEPrivateSessionsV1.
 record := roots at: binding first.
 ((record at: 'binding') = binding and: [(record at: 'owner') == component item and: [
   (record at: 'access') == database dbAccess and: [(record at: 'interface') == database dbInterface]]])
     ifFalse: [component error: 'Exact retained PRIVATE repair binding required'].
 wire := record at: 'wire'.
 (wire value: (Array with: binding first with: 'registry_owner' with: '0')) == component item
   ifFalse: [component error: 'Original private wire owner changed'].
 (#('inspect' 'repair_ordered_prefix' 'repair_probe_collision') includes: arguments first)
   ifFalse: [component error: 'Unknown fixed supplementary private repair action'].
 seen := IdentitySet new. candidates := OrderedCollection new. materials := OrderedCollection new. out := WriteStream on: String new.
 inspect := [:value :label |
   out nextPutAll: label; nextPutAll: '/'; nextPutAll: value class name asString.
   (value isKindOf: Dictionary) ifTrue: [
     (value includesKey: 'profile') ifTrue: [out nextPutAll: '/'; nextPutAll: (value at: 'profile')].
     ((value at: 'profile' ifAbsent: [nil]) = 'native_private_execution_v1') ifTrue: [candidates add: value]
     . ((value at: 'profile' ifAbsent: [nil]) = 'native_private_remote_material_v1') ifTrue: [materials add: value]
   ]. out cr
 ].
 context := wire.
 [context notNil and: [context isContext and: [(seen includes: context) not]]] whileTrue: [
   seen size >= 16 ifTrue: [component error: 'Private context inspection bound exceeded'].
   seen add: context. inspect value: context value: seen size printString.
   1 to: context class instSize do: [:index |
     inspect value: (context instVarAt: index) value: (context class allInstVarNames at: index) asString].
   1 to: context basicSize do: [:index | inspect value: (context basicAt: index) value: index printString].
   context := context parent
 ].
 candidates size = 1 ifTrue: [executor := candidates first.
   out nextPutAll: 'EXECUTOR='; nextPutAll: ((executor at: 'status') value at: 'state'); cr].
 arguments first = 'inspect' ifTrue: [out contents] ifFalse: [
   (candidates size = 1 and: [materials size = 1]) ifFalse: [component error: 'Exact original retained private material required'].
   material := materials first.
   (material at: 'executor') == executor ifFalse: [component error: 'Original executor binding changed'].
   (((material at: 'checkpoint') at: 'verifyCurrent') value and: [
     ((material at: 'clone') at: 'verifyCorrespondence') value: (material at: 'clone')])
     ifFalse: [component error: 'Original private owner/copy lineage changed'].
   physical := (executor at: 'physicalState') value.
   arguments first = 'repair_probe_collision' ifTrue: [
     (((executor at: 'status') value at: 'state') = 'physical_recovery_prepared' and: [
       physical notNil and: [(physical at: 'awaiting') = 0 and: [(physical at: 'outcome') = 'not_applied']]])
         ifFalse: [component error: 'Exact confirmed probe-collision state required'].
     entry := physical at: 'entry'. object := entry at: 'object'. initial := physical at: 'before'.
     completed := physical at: 'completed'.
     (object class = OrderedCollection and: [initial size = 1 and: [object size = 1 and: [
       object first == initial first and: [(physical at: 'after') first == initial first]]]])
         ifFalse: [component error: 'Exact one-member probe collision required'].
     removal := (physical at: 'steps') at: completed + 1.
     (removal first = 'remove' and: [(removal at: 2) == object and: [
       (removal at: 3) = 1 and: [removal last == initial first]]])
         ifFalse: [component error: 'Exact collision primitive required'].
     (executor at: 'resetPhysical') value.
     object isEmpty ifFalse: [component error: 'Exact collision probe reset failed'].
     object addAll: initial.
     (executor at: 'nextPhysicalRecovery') value: completed + 1 value: 'none'.
     wire value: (Array with: binding first with: 'observe' with: '0')
   ] ifFalse: [
   (((executor at: 'status') value at: 'state') = 'physical_recovery_prepared' and: [
     physical notNil and: [(physical at: 'awaiting') = 0 and: [(physical at: 'outcome') = 'applied']]])
       ifFalse: [component error: 'Supplement requires a confirmed ordered prefix'].
   entry := physical at: 'entry'. object := entry at: 'object'.
   (object class = OrderedCollection and: [(entry at: 'kind') = 'collection'])
     ifFalse: [component error: 'Supplement only repairs exact private ordered collections'].
   initial := entry at: 'after'. desired := entry at: 'before'. completed := physical at: 'completed'.
   sameOrder := [:left :right | left size = right size and: [
     ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
   (completed > 0 and: [completed < initial size and: [initial size = (desired size + 1)]])
     ifFalse: [component error: 'Supplement requires a removal-only prefix and one extra member'].
   1 to: completed do: [:index | | step |
     step := (physical at: 'steps') at: index.
     (step first = 'remove' and: [(step at: 2) == object and: [
       (step at: 3) = (initial size - index + 1) and: [step last == (initial at: initial size - index + 1)]]])
       ifFalse: [component error: 'Retained physical prefix differs']].
   (sameOrder value: object value: (initial copyFrom: 1 to: initial size - completed))
     ifFalse: [component error: 'Actual retained collection differs from its exact physical prefix'].
   (sameOrder value: object value: (physical at: 'after'))
     ifFalse: [component error: 'Confirmed physical after-image changed'].
   removal := nil.
   1 to: initial size do: [:index |
     projected := initial copy. projected removeAtIndex: index.
     (sameOrder value: projected value: desired) ifTrue: [
       removal notNil ifTrue: [component error: 'Ambiguous minimal supplementary recovery'].
       removal := Array with: 'remove' with: object with: index with: (initial at: index)]].
   removal isNil ifTrue: [component error: 'Exact supplementary removal not found'].
   observed := (executor at: 'captureCheckpoint') value.
   delta := (executor at: 'diffCheckpoints') value: (executor at: 'currentCheckpoint') value: observed.
   point := material at: 'independentPoint'.
   (point x = ((material at: 'independentX') + 7) and: [delta size = 2 and: [
     (delta anySatisfy: [:change | (change at: 'object') ~~ object and: [
       ((change at: 'object') == point and: [(change at: 'kind') = 'fields' and: [(change at: 'index') = 1]]) not]]) not]])
       ifFalse: [component error: 'Supplementary private CURRENT has other changes'].
   object addAll: (initial copyFrom: object size + 1 to: initial size).
   (sameOrder value: object value: initial) ifFalse: [component error: 'Compensated original physical prefix differs'].
   physical at: 'steps' put: (Array with: removal); at: 'completed' put: 0; at: 'awaiting' put: 0;
     at: 'outcome' put: 'prepared'; at: 'before' put: nil; at: 'after' put: nil.
   (executor at: 'nextPhysicalRecovery') value: 1 value: 'none'.
   ((executor at: 'status') value at: 'state') = 'recovered'
     ifFalse: [component error: 'Supplementary recovery did not finish CURRENT'].
   wire value: (Array with: binding first with: 'observe' with: '0')
   ]
 ]
 ] ifFail: [:error | 'BDE_PRIVATE_REPAIR_ERROR: ', error messageText]
]
