[:component :checkpoint |
 | stage |
 stage := 'checkpoint'.
 component handleExceptionsIn: [
 | roots root ids savedIds counter savedCounter numbers extras matches |
 ((checkpoint isKindOf: Dictionary) and: [(checkpoint at: 'profile') = 'native_collections_v1'])
   ifFalse: [component error: 'Exact native checkpoint required'].
 stage := 'physical'.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 root := roots at: component getOID, '/Main'.
 ((checkpoint at: 'verify') value and: [(checkpoint at: 'verifyKeyed') value: checkpoint])
   ifFalse: [component error: 'Native identities or complete collections changed'].
 ((checkpoint at: 'verifyScopes') value: (checkpoint at: 'objectsByScope'))
   ifFalse: [component error: 'Native scope witness changed'].
 stage := 'certificate'.
 ((root == (checkpoint at: 'registry') and: [(root at: 'owner') == component item]) and: [
   (root at: 'diagram') == (checkpoint at: 'diagram') and: [
   (root at: 'specification') == (checkpoint at: 'specification') and: [
   (root at: 'generation') = (checkpoint at: 'generation') and: [
   (root at: 'scopeEpoch') == (checkpoint at: 'scopeEpoch') and: [
   (root at: 'issuedGeneration') = (checkpoint at: 'issuedGeneration')]]]]])
   ifFalse: [component error: 'Native registry generation or owner changed'].
 stage := 'source'.
 (((root at: 'sameSource') value: (root at: 'checkpoint') value: (checkpoint at: 'checkpoint')) and: [
   (root at: 'sameSource') value: (root at: 'specification') specSourceInternalOrNil value: (checkpoint at: 'checkpoint')])
   ifFalse: [component error: 'Complete native source changed'].
 stage := 'counter'.
 ids := root at: 'ids'. savedIds := checkpoint at: 'ids'.
 counter := root at: 'counter'. savedCounter := checkpoint at: 'counter'.
 ((counter isInteger and: [savedCounter isInteger]) and: [
   savedCounter >= 0 and: [counter >= savedCounter and: [ids size <= 4096]]])
   ifFalse: [component error: 'Native registry counter is not monotonic'].
 stage := 'aliases'.
 numbers := Set new. extras := 0. matches := true.
 ids keysAndValuesDo: [:native :ref | | number |
   (ref isString and: [ref size >= 2 and: [ref first = $e]])
     ifFalse: [component error: 'Canonical edge identity required'].
   number := (ref copyFrom: 2 to: ref size) asNumber.
   ((number isInteger and: [number > 0 and: [number <= counter]]) and: [
     ref = ('e', number printString) and: [(numbers includes: number) not]])
     ifFalse: [component error: 'Duplicate or noncanonical edge identity'].
   numbers add: number.
   (savedIds includesKey: native) ifTrue: [
     ((savedIds at: native) = ref and: [number <= savedCounter])
       ifFalse: [matches := false]
   ] ifFalse: [
     number > savedCounter ifFalse: [matches := false]. extras := extras + 1
   ]
 ].
 (savedIds keys anySatisfy: [:native | (ids at: native ifAbsent: [nil]) ~= (savedIds at: native)])
   ifTrue: [matches := false].
 stage := 'scoped_aliases'.
 (checkpoint at: 'objectsByScope') values do: [:scope |
   scope keysAndValuesDo: [:ref :native | ref first = $e ifTrue: [
     (savedIds at: native ifAbsent: [nil]) = ref ifFalse: [matches := false]]]
 ].
 Dictionary new at: 'compatible' put: (matches and: [ids size = (savedIds size + extras) and: [counter = (savedCounter + extras)]]);
   at: 'stage' put: 'complete'; at: 'added_identity_count' put: extras; yourself
 ] ifFail: [:error | Dictionary new at: 'compatible' put: false; at: 'stage' put: stage;
   at: 'error' put: error messageText; yourself]
]
