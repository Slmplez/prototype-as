"Pure bounded declaration cache guard. No setters, store or image rewriting."
[:component :context |
 component handleExceptionsIn: [
 | before current owner names cacheFields cacheClasses walk refsFor oldCache newCache owned
   sameOrder sameMap sameContents sameEntry changes changedStorage newCount fields index moduleCache ownerClass |
 (context isArray and: [#(3 4) includes: context size]) ifFalse: [component error: 'Fixed cache image context required'].
 moduleCache := context size = 4.
 (moduleCache and: [context last ~= 'module_message_cache_v1'])
   ifTrue: [component error: 'Fixed original Module message cache profile required'].
 ownerClass := moduleCache ifTrue: ['SGModule'] ifFalse: ['SGClass'].
 before := context first. current := context at: 2. owner := context at: 3.
 (before isKindOf: IdentityDictionary) ifFalse: [component error: 'Complete original cache image required'].
 (current isKindOf: IdentityDictionary) ifFalse: [component error: 'Complete CURRENT cache image required'].
 ((before includesKey: owner) and: [owner class name asString = ownerClass and: [
   before keys allSatisfy: [:object | current includesKey: object]]])
   ifFalse: [component error: 'Original declaration owner or retained cache objects unavailable'].
 cacheFields := #('aliasNameCache' 'methodAliasNameCache' 'additionalMethodCache').
 cacheClasses := #('LookupTable' 'Array' 'String' 'ByteArray' 'SGAliasVariable' 'SGSelfClass' 'DBProxy').
 names := (owner class allInstVarNames collect: [:name | name asString]) asArray.
 (cacheFields allSatisfy: [:name | names includes: name])
   ifFalse: [component error: 'Audited SGItemWithSpec cache slots unavailable'].
 refsFor := [:object :entry | | refs saved |
   refs := OrderedCollection new. saved := entry last.
   entry first = 'fields' ifTrue: [refs addAll: saved].
   entry first = 'collection' ifTrue: [
     (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
       ifTrue: [saved keysAndValuesDo: [:key :value | refs add: key; add: value]]
       ifFalse: [refs addAll: saved]]. refs
 ].
 walk := [:images | | found pending entry value |
   found := IdentitySet new. pending := OrderedCollection new.
   cacheFields do: [:name |
     value := ((images at: owner) last) at: (names indexOf: name).
     value notNil ifTrue: [
       (value class name asString = 'LookupTable' and: [images includesKey: value])
         ifFalse: [component error: 'Audited lazy cache must be nil or original LookupTable'].
       pending add: value]].
   [pending isEmpty] whileFalse: [
     value := pending removeLast.
     (images includesKey: value) ifTrue: [(found includes: value) ifFalse: [
       (cacheClasses includes: value class name asString) ifTrue: [
         found add: value. entry := images at: value.
         pending addAll: (refsFor value: value value: entry)
       ] ifFalse: [(before includesKey: value) ifFalse: [
         component error: 'Unknown object cannot become computed cache ownership']]
     ]]
   ]. found
 ].
 oldCache := walk value: before. newCache := walk value: current.
 owned := oldCache copy. newCache do: [:object | owned add: object].
 newCount := 0. current keys do: [:object | (before includesKey: object) ifFalse: [
   (newCache includes: object) ifFalse: [component error: 'New CURRENT objects outside audited cache graph'].
   newCount := newCount + 1]].
 sameOrder := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:i | (left at: i) == (right at: i)]]].
 sameMap := [:left :right | left size = right size and: [left keys allSatisfy: [:key |
   (right keys anySatisfy: [:peer | peer == key]) and: [(left at: key) == (right at: key)]]]].
 sameContents := [:object :left :right |
   (#('Dictionary' 'IdentityDictionary') includes: object class name asString)
     ifTrue: [sameMap value: left value: right]
     ifFalse: [((object isKindOf: Set) or: [object isKindOf: IdentitySet])
       ifTrue: [left size = right size and: [left allSatisfy: [:item | right anySatisfy: [:peer | item == peer]]]]
       ifFalse: [sameOrder value: left value: right]]].
 sameEntry := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [true] ifFalse: [
   left first = 'value' ifTrue: [left last = right last] ifFalse: [
     sameContents value: object value: left last value: right last]]]].
 changes := 0. changedStorage := IdentitySet new.
 before keysAndValuesDo: [:object :entry | | actual |
   actual := current at: object.
   entry first = actual first ifFalse: [component error: 'Original declaration image kind changed'].
   entry first = 'fields' ifTrue: [
     entry last size = actual last size ifFalse: [component error: 'Original field schema changed'].
     fields := (object class allInstVarNames collect: [:name | name asString]) asArray.
     1 to: entry last size do: [:i | (entry last at: i) ~~ (actual last at: i) ifTrue: [
       ((object == owner and: [cacheFields includes: (fields at: i)]) or: [
         (owned includes: object) and: [object class name asString = 'LookupTable']])
         ifFalse: [component error: 'Non-cache declaration or configuration field changed: ', (fields at: i)].
       changes := changes + 1. object ~~ owner ifTrue: [changedStorage add: object]]]
   ] ifFalse: [(sameEntry value: object value: entry value: actual) ifFalse: [
     ((owned includes: object) and: [object class name asString = 'Array' and: [entry first = 'collection']])
       ifFalse: [component error: 'Non-cache or non-storage original value changed'].
     changes := changes + 1. changedStorage add: object]]
 ].
 before keysAndValuesDo: [:object :entry | | members |
   (owned includes: object) ifFalse: [
     object == owner ifTrue: [members := OrderedCollection new.
       entry last doWithIndex: [:member :i | (cacheFields includes: (names at: i)) ifFalse: [members add: member]]]
       ifFalse: [members := refsFor value: object value: entry].
     (members anySatisfy: [:member | changedStorage includes: member])
       ifTrue: [component error: 'Changed cache storage shared with non-cache declaration state']
   ]
 ].
 Dictionary new at: 'profile' put: 'native_declaration_cache_guard_v1'; at: 'non_cache_original_state_unchanged' put: true;
   at: 'changed_entries' put: changes; at: 'new_objects' put: newCount; at: 'cache_objects' put: owned size;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'inverse_authorized' put: false; yourself
 ] ifFail: [:error | 'BDE_DECLARATION_CACHE_GUARD_ERROR: ', error messageText]
]
