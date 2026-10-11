"Typed logical membership only. Never restore raw hash buckets or call DBObjectCache accessors."
[:component :context :direction |
 component handleExceptionsIn: [
 | storage before after mapping absent collision keys cells originals lookup sameKey
   verify progress execute wanted expected actual result capturedKeys dependencies capture dependencyValid |
 (context isArray and: [context size = 3 and: [#('undo' 'redo') includes: direction]])
   ifFalse: [component error: 'Fixed retained cache storage/before/after and direction required'].
 storage := context first.
 storage class name asString = 'AbtHighCapacityLookupTable'
   ifFalse: [component error: 'Audited native cache membership table required'].
 storage size <= 4096 ifFalse: [component error: 'Complete CURRENT cache size bound exceeded'].
 absent := Object new. collision := Object new. capturedKeys := IdentityDictionary new.
 mapping := [:pairs | | mapped values |
   (pairs isArray and: [pairs size <= 4096]) ifFalse: [component error: 'Complete retained cache member array required'].
   mapped := IdentityDictionary new. values := OrderedCollection new.
   pairs do: [:pair | | key entry saved |
     (pair isArray and: [pair size = 3]) ifFalse: [component error: 'Exact retained cache key/original bytes/entry triple required'].
     key := pair first. entry := pair last.
     saved := pair second.
     (key class == ByteArray and: [(#(20 32) includes: key size) and: [saved class == ByteArray and: [
       saved size = key size and: [key = saved and: [entry class name asString = 'DBCacheObject']]]]])
       ifFalse: [component error: 'Exact audited native 20/32-byte cache key and DBCacheObject required'].
     ((mapped includesKey: key) or: [values anySatisfy: [:other | other = key]])
       ifTrue: [component error: 'Duplicate or equal distinct retained cache key is ambiguous'].
     mapped at: key put: entry. values add: key.
     (capturedKeys includesKey: key) ifTrue: [(capturedKeys at: key) = saved
       ifFalse: [component error: 'Original cache key bytes changed across edit']]
       ifFalse: [capturedKeys at: key put: saved copy]
   ]. mapped].
 before := mapping value: (context at: 2). after := mapping value: context last.
 keys := IdentitySet new addAll: before keys; addAll: after keys; yourself.
 keys do: [:key | (keys anySatisfy: [:other | other ~~ key and: [other = key]])
   ifTrue: [component error: 'Original cache key identity rebound across edit']].
 lookup := [:key | | present |
   present := storage keys select: [:candidate | candidate == key].
   present size = 1 ifTrue: [storage at: key]
     ifFalse: [present isEmpty ifFalse: [component error: 'CURRENT cache key collision'].
       (storage includesKey: key) ifTrue: [collision] ifFalse: [absent]]].
 cells := OrderedCollection new.
 dependencies := IdentityDictionary new.
 capture := [:object | | names saved |
   names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   saved := (1 to: names size) collect: [:index | | value | value := object instVarAt: index.
     Array with: value with: (value class == ByteArray ifTrue: [value copy] ifFalse: [nil])].
   dependencies at: object put: (Array with: names with: saved asArray).
   (names includes: 'object') ifTrue: [| shell shellNames proxy |
     shell := object instVarAt: (names indexOf: 'object').
     shell isNil ifFalse: [
       shellNames := (shell class allInstVarNames collect: [:name | name asString]) asArray.
       (shellNames includes: 'dbObject') ifTrue: [
         dependencies at: shell put: (Array with: #('dbObject') with:
           (Array with: (Array with: (shell instVarAt: (shellNames indexOf: 'dbObject')) with: nil))).
         proxy := shell instVarAt: (shellNames indexOf: 'dbObject').
         proxy isNil ifFalse: [capture value: proxy]]]]].
 dependencyValid := [dependencies keys allSatisfy: [:object | | held names saved |
   held := dependencies at: object. names := (object class allInstVarNames collect: [:name | name asString]) asArray.
   saved := held second.
   (held first = #('dbObject') or: [names = held first]) and: [
     (1 to: held first size) allSatisfy: [:index | | value original |
       value := object instVarAt: (names indexOf: (held first at: index)). original := saved at: index.
       value == original first and: [original second isNil or: [value = original second]]]]]].
 keys do: [:key |
   expected := (direction = 'undo' ifTrue: [after] ifFalse: [before]) at: key ifAbsent: [absent].
   wanted := (direction = 'undo' ifTrue: [before] ifFalse: [after]) at: key ifAbsent: [absent].
   expected ~~ wanted ifTrue: [
     cells add: (Array with: key with: expected with: wanted).
     expected == absent ifFalse: [capture value: expected].
     wanted == absent ifFalse: [capture value: wanted]]].
 verify := [ storage size <= 4096 and: [
   (capturedKeys keys allSatisfy: [:key | key = (capturedKeys at: key)]) and: [dependencyValid value and: [
   cells allSatisfy: [:cell | (lookup value: cell first) == cell second]]]]].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_primitives' put: 0; at: 'cell_count' put: cells size; yourself.
 execute := [
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Cache membership patch cannot replay'].
   verify value ifFalse: [component error: 'Cache membership/key identity or bytes conflict; zero primitive dispatch'].
   progress at: 'state' put: 'started'.
   cells do: [:cell |
     cell last == absent ifTrue: [storage removeKey: cell first ifAbsent: [component error: 'Original cache removal disappeared']]
       ifFalse: [storage at: cell first put: cell last].
     progress at: 'completed_primitives' put: (progress at: 'completed_primitives') + 1].
   (cells allSatisfy: [:cell | (lookup value: cell first) == cell last])
     ifFalse: [component error: 'Native cache membership terminal differs; retain actual'].
   progress at: 'state' put: 'applied'. progress at: 'completed_primitives'
 ].
 result := Dictionary new at: 'profile' put: 'native_cache_membership_patch_v1'; at: 'progress' put: progress;
   at: 'verifyBeforeApply' put: verify; at: 'execute' put: execute;
   at: 'verifyDesired' put: [cells allSatisfy: [:cell | (lookup value: cell first) == cell last]];
   at: 'cache_accessor_methods_called' put: 0; at: 'raw_hash_buckets_restored' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'production_inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_CACHE_MEMBERSHIP_PATCH_ERROR: ', error messageText]
]
