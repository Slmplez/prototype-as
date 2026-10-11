"Three-way inverse planning over frozen identity images only. No live object
 contents, setters, store, primitive executor or write authorization are used."
[:orderPlanner | [:component :context |
 component handleExceptionsIn: [
 | before after current merged absent collision lookup member same sameEntry conflicts
   cells touched applyCell result introduced |
 (context isArray and: [context size = 3])
   ifFalse: [component error: 'Exact before/after/current frozen images required'].
 before := context first. after := context at: 2. current := context last.
 (Array with: before with: after with: current) do: [:images |
   ((images isKindOf: IdentityDictionary) and: [images size <= 100000])
     ifFalse: [component error: 'Bounded frozen identity images required'].
   images keysAndValuesDo: [:object :entry |
     (entry isArray and: [entry size = 2 and: [#('fields' 'value' 'collection' 'boundary') includes: entry first]])
       ifFalse: [component error: 'Exact frozen image shape required']]].
 ((before keys allSatisfy: [:object | after includesKey: object]) and: [
   after keys allSatisfy: [:object | current includesKey: object]])
   ifFalse: [component error: 'Frozen merge lacks retained anchors'].
 absent := Object new. collision := Object new.
 lookup := [:values :key | (values keys anySatisfy: [:peer | peer == key])
   ifTrue: [values at: key] ifFalse: [(values includesKey: key) ifTrue: [collision] ifFalse: [absent]]].
 member := [:values :item | (values anySatisfy: [:peer | peer == item])
   ifTrue: [true] ifFalse: [(values includes: item) ifTrue: [collision] ifFalse: [false]]].
 same := [:a :b | a size = b size and: [(1 to: a size) allSatisfy: [:slot | (a at: slot) == (b at: slot)]]].
 sameEntry := [:object :left :right | left first = right first and: [
   left first = 'boundary' ifTrue: [left last == right last] ifFalse: [
   left first = 'value' ifTrue: [left last class == right last class and: [left last = right last]] ifFalse: [
   (object isKindOf: Dictionary) ifTrue: [left last size = right last size and: [
     left last keys allSatisfy: [:key | (lookup value: right last value: key) == (left last at: key)]]]
   ifFalse: [(#('Set' 'IdentitySet') includes: object class name asString)
     ifTrue: [left last size = right last size and: [left last allSatisfy: [:item |
       (member value: right last value: item) == true]]]
     ifFalse: [same value: left last value: right last]]]]]].
 conflicts := OrderedCollection new. cells := OrderedCollection new. introduced := 0.
 applyCell := [:object :kind :values | | expected wanted actual slot |
   cells size >= 100000 ifTrue: [component error: 'Frozen merge cell bound exceeded'].
   slot := values first. wanted := values at: 2. expected := values last.
   actual := (current at: object) last.
   actual := (#('fields' 'value' 'indexed') includes: kind) ifTrue: [actual at: slot]
     ifFalse: [kind = 'key' ifTrue: [lookup value: actual value: slot]
       ifFalse: [member value: actual value: slot]].
   (kind = 'value' ifTrue: [actual = expected] ifFalse: [actual == expected])
     ifFalse: [conflicts add: (Array with: 'TOUCHED_CELL_CONFLICT' with: object with: kind with: slot)]
     ifTrue: [cells add: (Array with: object with: kind with: slot with: wanted)]].
 before keysAndValuesDo: [:object :left | | right now kind a b c name |
   right := after at: object. now := current at: object.
   kind := left first. name := object class name asString.
   (kind = right first and: [kind = now first])
     ifFalse: [component error: 'Frozen image kinds differ'].
   a := left last. b := right last. c := now last.
   kind = 'fields' ifTrue: [
     (a size = b size and: [b size = c size and: [a size = object class instSize]])
       ifFalse: [component error: 'Frozen field shape differs'].
     1 to: a size do: [:slot | (a at: slot) ~~ (b at: slot) ifTrue: [
       applyCell value: object value: kind value: (Array with: slot with: (a at: slot) with: (b at: slot))]]
   ] ifFalse: [kind = 'value' ifTrue: [
     ((object isString or: [object isKindOf: ByteArray]) and: [a class == b class and: [
       a class == c class and: [a size = b size and: [b size = c size]]]])
       ifFalse: [component error: 'Frozen indexed value shape differs'].
     1 to: a size do: [:slot | (a at: slot) ~= (b at: slot) ifTrue: [
       applyCell value: object value: kind value: (Array with: slot with: (a at: slot) with: (b at: slot))]]
   ] ifFalse: [kind = 'collection' ifTrue: [
     name = 'Array' ifTrue: [
       (a size = b size and: [b size = c size]) ifFalse: [component error: 'Frozen Array size differs'].
       1 to: a size do: [:slot | (a at: slot) ~~ (b at: slot) ifTrue: [
         applyCell value: object value: 'indexed' value: (Array with: slot with: (a at: slot) with: (b at: slot))]]
     ] ifFalse: [name = 'OrderedCollection' ifTrue: [
       (same value: a value: b) ifFalse: [| order |
         order := orderPlanner value: component value: (Array with: a asArray with: b asArray with: c asArray).
         (order isKindOf: Dictionary) ifFalse: [component error: order asString].
         (order at: 'compatible') == true
           ifTrue: [cells add: (Array with: object with: 'ordered' with: 0 with: (order at: 'merged') asOrderedCollection)]
           ifFalse: [conflicts add: (Array with: 'ORDER_CONFLICT' with: object with: (order at: 'conflicts'))]]
     ] ifFalse: [(#('Dictionary' 'IdentityDictionary') includes: name) ifTrue: [| keys |
       keys := IdentitySet new. keys addAll: a keys; addAll: b keys.
       keys do: [:key | | x y |
         x := lookup value: a value: key. y := lookup value: b value: key.
         (x == collision or: [y == collision]) ifTrue: [component error: 'Ambiguous frozen dictionary key'].
         x ~~ y ifTrue: [applyCell value: object value: 'key' value: (Array with: key with: x with: y)]]
     ] ifFalse: [| items |
       (#('Set' 'IdentitySet') includes: name) ifFalse: [component error: 'Unsupported frozen collection class'].
       items := IdentitySet new. items addAll: a; addAll: b.
       items do: [:item | | x y |
         x := member value: a value: item. y := member value: b value: item.
         (x == collision or: [y == collision]) ifTrue: [component error: 'Ambiguous frozen Set member'].
         x ~~ y ifTrue: [applyCell value: object value: 'member' value: (Array with: item with: x with: y)]]
     ]]]
   ] ifFalse: [kind = 'boundary' ifFalse: [component error: 'Unsupported frozen image kind']]]]
 ].
 after keysAndValuesDo: [:object :entry | (before includesKey: object) ifFalse: [
   introduced := introduced + 1.
   (sameEntry value: object value: entry value: (current at: object))
     ifFalse: [conflicts add: (Array with: 'INTRODUCED_OBJECT_CONFLICT' with: object)]]].
 merged := IdentityDictionary new.
 conflicts isEmpty ifTrue: [
   current keysAndValuesDo: [:object :entry | merged at: object put: (Array with: entry first with:
     (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy]))].
   cells do: [:cell | | object kind slot wanted entry |
     object := cell first. kind := cell at: 2. slot := cell at: 3. wanted := cell last.
     entry := merged at: object.
     (#('fields' 'value' 'indexed') includes: kind) ifTrue: [entry last at: slot put: wanted]
     ifFalse: [kind = 'ordered' ifTrue: [entry at: 2 put: wanted copy]
     ifFalse: [kind = 'key' ifTrue: [wanted == absent
       ifTrue: [entry last removeKey: slot] ifFalse: [entry last at: slot put: wanted]]
     ifFalse: [wanted == true ifTrue: [entry last add: slot] ifFalse: [entry last remove: slot]]]]]
 ].
 touched := cells size.
 result := Dictionary new at: 'profile' put: 'frozen_image_inverse_plan_v1';
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'desired' put: merged; at: 'touched_cells' put: touched;
   at: 'introduced_objects' put: introduced;
   at: 'live_objects_inspected' put: false; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_FROZEN_IMAGE_MERGE_ERROR: ', error messageText]
]]
