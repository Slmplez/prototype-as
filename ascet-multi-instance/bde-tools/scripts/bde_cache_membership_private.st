"Fresh native cache, entries, SG shells and DBObjects only. Live caches are never mutated."
[:planner | [:component :token |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root material storage cache keys entries proxies model slot put snapshot before applied patch privateState
   capture states count conflictResult primitives refusals key copy extra expected verifyDirty result bad identityIndex modifiedKinds refuse guardProgress record |
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'commitResourceMaterial'.
 ((material at: 'owner') == component item and: [(material at: 'root') == root and: [
   (material at: 'generation') = (root at: 'generation') and: [
   (material at: 'editToken') = token and: [(material at: 'phase') = 'captured' and: [
   (record at: 'state') = 'prepared' and: [((record at: 'commitResourceReceipt') at: 'profile') = 'native_commit_prepare_v6']]]]]])
   ifFalse: [component error: 'Original isolated cache owner required'].
 slot := [:object :name | | index | index := (object class allInstVarNames collect: [:n | n asString]) indexOf: name.
   index > 0 ifFalse: [component error: 'Private fixture schema unavailable: ', name]. index].
 put := [:object :name :value | object instVarAt: (slot value: object value: name) put: value].
 identityIndex := [:collection :object | | found | found := 0.
   1 to: collection size do: [:index | (collection at: index) == object ifTrue: [found := index]]. found].
 stage := 'allocate-private'. storage := AbtHighCapacityLookupTable new: 16.
 cache := DBObjectCache basicNew. put value: cache value: 'objects' value: storage.
 put value: cache value: 'modifiedFlag' value: true.
 keys := OrderedCollection new. entries := OrderedCollection new. proxies := OrderedCollection new.
 1 to: 5 do: [:index | | k proxy shell entry |
   k := ByteArray new: ((#(2 5) includes: index) ifTrue: [32] ifFalse: [20]). k at: 20 put: index. keys add: k.
   proxy := DBObject basicNew. put value: proxy value: 'istate' value: ((#(1 3 5) includes: index) ifTrue: [1] ifFalse: [0]).
   put value: proxy value: 'globalId' value: k copy. proxies add: proxy.
   shell := SGModule basicNew. put value: shell value: 'dbObject' value: proxy.
   entry := DBCacheObject basicNew. put value: entry value: 'object' value: shell. entries add: entry
 ].
 snapshot := [((storage associations collect: [:association | Array with: association key with: association key copy with: association value]) asArray)].
 modifiedKinds := OrderedCollection new.
 capture := [| map dirty modified |
   map := ((storage associations collect: [:association | Array with: (identityIndex value: keys value: association key) with: (identityIndex value: entries value: association value)])
     asSortedCollection: [:a :b | a first < b first]) asArray.
   put value: cache value: 'modifiedFlag' value: true.
   modified := cache getModifiedObjects.
   modifiedKinds add: (modified collect: [:object | object class name asString]) asArray.
   dirty := (modified collect: [:object | | proxy shell |
     proxy := object class name asString = 'DBCacheObject'
       ifTrue: [shell := object instVarAt: (slot value: object value: 'object'). shell instVarAt: (slot value: shell value: 'dbObject')]
       ifFalse: [object].
     identityIndex value: proxies value: proxy]) asSortedCollection asArray.
   Dictionary new at: 'members' put: map; at: 'modified_proxy_ids' put: dirty; yourself].
 storage at: keys first put: entries first; at: (keys at: 2) put: (entries at: 2).
 before := snapshot value. states := OrderedCollection new. states add: capture value.
 stage := 'forward-private'. storage removeKey: keys first.
 storage at: (keys at: 2) put: (entries at: 4); at: (keys at: 3) put: (entries at: 3).
 applied := snapshot value. states add: capture value.
 patch := planner value: component value: (Array with: storage with: before with: applied) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 refusals := OrderedCollection new.
 guardProgress := OrderedCollection new.
 refuse := [:reason | | outcome |
   (patch at: 'verifyBeforeApply') value ifTrue: [component error: 'Cache conflict accepted: ', reason].
   outcome := component handleExceptionsIn: [(patch at: 'execute') value. 'unexpected'] ifFail: [:error | 'refused'].
   (outcome = 'refused' and: [((patch at: 'progress') at: 'completed_primitives') = 0 and: [
     ((patch at: 'progress') at: 'state') = 'prepared']])
     ifFalse: [component error: 'Cache conflict dispatched a primitive: ', reason].
   guardProgress add: (((patch at: 'progress') at: 'completed_primitives')). refusals add: reason].
 stage := 'touched-conflict'. storage at: (keys at: 2) put: (entries at: 2).
 refuse value: 'touched_entry'. storage at: (keys at: 2) put: (entries at: 4).
 stage := 'entry-field-conflict'. put value: (entries at: 4) value: 'referenceCount' value: 7.
 refuse value: 'entry_field'. put value: (entries at: 4) value: 'referenceCount' value: nil.
 stage := 'dirty-conflict'. put value: (proxies at: 4) value: 'istate' value: 1.
 refuse value: 'dirty_dependency'. put value: (proxies at: 4) value: 'istate' value: 0.
 stage := 'key-bytes-conflict'. (keys at: 2) at: 20 put: 22.
 refuse value: 'mutated_key_bytes'. (keys at: 2) at: 20 put: 2.
 copy := (keys at: 2) copy. storage removeKey: (keys at: 2); at: copy put: (entries at: 4).
 refuse value: 'equal_distinct_current_key'. storage removeKey: copy; at: (keys at: 2) put: (entries at: 4).
 bad := before copyWith: (Array with: keys first copy with: keys first copy with: entries first).
 result := planner value: component value: (Array with: storage with: bad with: applied) value: 'undo'.
 (result isString and: [result startsWith: 'BDE_CACHE_MEMBERSHIP_PATCH_ERROR:'])
   ifFalse: [component error: 'Duplicate logical retained key accepted'].
 refusals add: 'duplicate_retained_key'.
 stage := 'independent-insert'. storage at: (keys at: 5) put: (entries at: 5). states add: capture value.
 primitives := OrderedCollection new.
 stage := 'undo'. primitives add: (patch at: 'execute') value. states add: capture value.
 stage := 'replay-refusal'.
 result := component handleExceptionsIn: [(patch at: 'execute') value. 'unexpected'] ifFail: [:error | 'refused'].
 result = 'refused' ifFalse: [component error: 'Consumed cache executor replayed']. refusals add: 'executor_replay'.
 stage := 'redo'. patch := planner value: component value: (Array with: storage with: before with: applied) value: 'redo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 primitives add: (patch at: 'execute') value. states add: capture value.
 stage := 'second-undo'. patch := planner value: component value: (Array with: storage with: before with: applied) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 primitives add: (patch at: 'execute') value. states add: capture value.
 storage removeKey: (keys at: 5). states add: capture value.
 (root at: 'encodeObservation') value: (Dictionary new at: 'profile' put: 'native_cache_membership_private_v1';
   at: 'states' put: states asArray; at: 'modified_return_classes' put: modifiedKinds asArray; at: 'native_primitives' put: primitives asArray;
   at: 'native_refusals' put: refusals asArray; at: 'conflict_completed_primitives' put: guardProgress asArray; at: 'conflict_primitives' put: 0;
   at: 'live_cache_mutated' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'production_inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself)
 ] ifFail: [:error | 'BDE_CACHE_MEMBERSHIP_PRIVATE_ERROR: ', stage, ': ', error messageText]
]]
