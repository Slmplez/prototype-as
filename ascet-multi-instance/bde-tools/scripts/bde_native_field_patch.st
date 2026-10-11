[:orderReader | [:component :material :direction |
 | phase |
 phase := 'guard'.
 component handleExceptionsIn: [
 | before after cells introduced sameOrder sameContents matches add verifyFrom verifyTo execute progress result absent collision lookup membership orderPlans orderDesired mergeImages primitiveCells conflictSummary |
 ((material isKindOf: Array) and: [material size = 2])
   ifFalse: [component error: 'Fixed before/after native material pair required'].
 before := material first. after := material last.
 ((before isKindOf: IdentityDictionary) and: [after isKindOf: IdentityDictionary])
   ifFalse: [component error: 'Retained native identity images required'].
 (#('undo' 'redo') includes: direction) ifFalse: [component error: 'Exact native field patch direction required'].
 (before size > 100000 or: [after size > 100000]) ifTrue: [component error: 'Native field patch object bound exceeded'].
 cells := OrderedCollection new. introduced := IdentityDictionary new.
 absent := Object new. collision := Object new.
 orderPlans := IdentityDictionary new. orderDesired := IdentityDictionary new.
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 sameContents := [:object :saved | object size = saved size and: [
   (#('Dictionary' 'IdentityDictionary') includes: object class name asString) ifTrue: [(saved keys anySatisfy: [:key |
     ((object keys anySatisfy: [:currentKey | currentKey == key]) and: [(object at: key) == (saved at: key)]) not]) not]
   ifFalse: [(#('Set' 'IdentitySet') includes: object class name asString)
     ifTrue: [(saved anySatisfy: [:member | (object anySatisfy: [:current | current == member]) not]) not]
     ifFalse: [sameOrder value: object value: saved]]]].
 lookup := [:object :key | (object keys anySatisfy: [:currentKey | currentKey == key])
   ifTrue: [object at: key] ifFalse: [(object includesKey: key) ifTrue: [collision] ifFalse: [absent]]].
 membership := [:object :member | (object anySatisfy: [:current | current == member])
   ifTrue: [true] ifFalse: [(object includes: member) ifTrue: [collision] ifFalse: [false]]].
 add := [:object :kind :values | | cell |
   cells size >= 100000 ifTrue: [component error: 'Native field patch cell bound exceeded'].
   cell := Array new: 5. cell at: 1 put: object; at: 2 put: kind; at: 3 put: values first;
     at: 4 put: (direction = 'undo' ifTrue: [values last] ifFalse: [values at: 2]);
     at: 5 put: (direction = 'undo' ifTrue: [values at: 2] ifFalse: [values last]).
   cells add: cell].
 before keysAndValuesDo: [:object :old | | now kind left right name |
   now := after at: object ifAbsent: [component error: 'Original native object missing from terminal material'].
   kind := old first. kind = now first ifFalse: [component error: 'Native image kind changed'].
   name := object class name asString. phase := name, '/', kind.
   left := old last. right := now last.
   kind = 'fields' ifTrue: [
     (left size = object class instSize and: [right size = left size and: [object class isVariable not]])
       ifFalse: [component error: 'Native patch field shape changed'].
     1 to: left size do: [:index | (left at: index) ~~ (right at: index)
       ifTrue: [add value: object value: kind value: (Array with: index with: (left at: index) with: (right at: index))]]
   ] ifFalse: [kind = 'value' ifTrue: [
     ((object isString or: [object isKindOf: ByteArray]) and: [left size = right size and: [object size = right size]])
       ifFalse: [component error: 'Native indexed value cannot change original size or identity'].
     1 to: left size do: [:index | (left at: index) ~= (right at: index)
       ifTrue: [add value: object value: kind value: (Array with: index with: (left at: index) with: (right at: index))]]
   ] ifFalse: [kind = 'collection' ifTrue: [
     (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: name)
       ifFalse: [component error: 'Native patch collection type unavailable'].
     name = 'Array' ifTrue: [
       (left size = right size and: [object size = right size])
         ifFalse: [component error: 'Original native Array size changed'].
       1 to: left size do: [:index | (left at: index) ~~ (right at: index)
         ifTrue: [add value: object value: 'indexed' value: (Array with: index with: (left at: index) with: (right at: index))]]
     ] ifFalse: [name = 'OrderedCollection' ifTrue: [
       (sameOrder value: left value: right) ifFalse: [
         add value: object value: 'ordered' value: (Array with: 0 with: left asArray with: right asArray)]
     ] ifFalse: [(#('Dictionary' 'IdentityDictionary') includes: name) ifTrue: [| keys |
       keys := IdentitySet new. keys addAll: left keys; addAll: right keys.
       keys do: [:key | | from to |
         from := lookup value: left value: key. to := lookup value: right value: key.
         (from == collision or: [to == collision]) ifTrue: [component error: 'Equal but distinct retained dictionary keys are ambiguous'].
         from ~~ to ifTrue: [add value: object value: 'key' value: (Array with: key with: from with: to)]]
     ] ifFalse: [| members |
       members := IdentitySet new. members addAll: left; addAll: right.
       members do: [:member | | from to |
         from := membership value: left value: member. to := membership value: right value: member.
         (from == collision or: [to == collision]) ifTrue: [component error: 'Equal but distinct retained Set members are ambiguous'].
         from ~~ to ifTrue: [add value: object value: 'member' value: (Array with: member with: from with: to)]]
     ]]]
   ] ifFalse: [kind = 'boundary' ifFalse: [component error: 'Unknown retained native patch kind']]]]
 ].
 after keysAndValuesDo: [:object :entry | (before includesKey: object) ifFalse: [introduced at: object put: entry]].
 matches := [:cell :expected | | object kind index |
   object := cell first. kind := cell at: 2. index := cell at: 3.
   kind = 'fields' ifTrue: [(object instVarAt: index) == expected]
   ifFalse: [kind = 'value' ifTrue: [(object at: index) = expected]
   ifFalse: [kind = 'indexed' ifTrue: [(object at: index) == expected]
   ifFalse: [kind = 'key' ifTrue: [(lookup value: object value: index) == expected]
   ifFalse: [kind = 'member' ifTrue: [(membership value: object value: index) == expected]
   ifFalse: [sameOrder value: object value: expected]]]]]].
 verifyFrom := [
   orderPlans := IdentityDictionary new. orderDesired := IdentityDictionary new.
   (cells allSatisfy: [:cell | (cell at: 2) = 'ordered' ifTrue: [| plan |
     plan := orderReader value: component value: (Array with: cell last with: (cell at: 4) with: cell first asArray).
     ((plan isKindOf: Dictionary) and: [(plan at: 'compatible') == true])
       ifTrue: [orderPlans at: cell put: plan. orderDesired at: cell put: (plan at: 'merged'). true]
       ifFalse: [false]
   ] ifFalse: [matches value: cell value: (cell at: 4)]])
     and: [(introduced keys anySatisfy: [:object | | entry kind saved |
       entry := introduced at: object. kind := entry first. saved := entry last.
       kind = 'boundary' ifTrue: [false] ifFalse: [kind = 'fields'
         ifTrue: [((1 to: saved size) anySatisfy: [:index | (object instVarAt: index) ~~ (saved at: index)])]
         ifFalse: [kind = 'value' ifTrue: [object ~= saved] ifFalse: [(sameContents value: object value: saved) not]]]]) not]
 ].
 verifyTo := [cells allSatisfy: [:cell | (cell at: 2) = 'ordered'
   ifTrue: [(orderDesired includesKey: cell) and: [matches value: cell value: (orderDesired at: cell)]]
   ifFalse: [matches value: cell value: cell last]]].
 "Read-only failure evidence. Keep the full identity guard; do not classify a
  different source reference as an independent change merely by equal value."
 conflictSummary := [| report count append describe |
   report := ''. count := 0.
   describe := [:value | | text |
     text := (value isString or: [value isNumber or: [value isKindOf: Character]])
       ifTrue: [value printString] ifFalse: [value class name asString].
     text size > 80 ifTrue: [text := (text copyFrom: 1 to: 80), '...']. text].
   append := [:object :kind :detail | | label slot expected actual |
     slot := detail first. expected := detail at: 2. actual := detail last.
     count := count + 1.
     count <= 24 ifTrue: [
       label := slot asString.
       (kind = 'fields' and: [slot isInteger and: [slot > 0 and: [slot <= object class instSize]]])
         ifTrue: [label := label, '/', (object class allInstVarNames at: slot) asString].
       report := report, ' [', object class name asString, '/', kind,
         ' slot=', label, ' expected=', (describe value: expected),
         ' current=', (describe value: actual), ']']].
   cells do: [:cell | | object kind slot actual valid plan |
     object := cell first. kind := cell at: 2. slot := cell at: 3.
     kind = 'ordered' ifTrue: [
       plan := orderReader value: component value: (Array with: cell last with: (cell at: 4) with: object asArray).
       valid := (plan isKindOf: Dictionary) and: [(plan at: 'compatible') == true].
       actual := object
     ] ifFalse: [
       valid := matches value: cell value: (cell at: 4).
       actual := kind = 'fields' ifTrue: [object instVarAt: slot] ifFalse: [
         (#('value' 'indexed') includes: kind) ifTrue: [object at: slot] ifFalse: [
         kind = 'key' ifTrue: [lookup value: object value: slot]
           ifFalse: [membership value: object value: slot]]]].
     valid ifFalse: [append value: object value: kind value: (Array with: slot with: (cell at: 4) with: actual)]].
   introduced keysAndValuesDo: [:object :entry | | kind saved |
     kind := entry first. saved := entry last.
     kind = 'fields' ifTrue: [1 to: saved size do: [:slot |
       (object instVarAt: slot) ~~ (saved at: slot) ifTrue: [
         append value: object value: kind value: (Array with: slot with: (saved at: slot) with: (object instVarAt: slot))]]]
     ifFalse: [kind = 'boundary' ifFalse: [
       (kind = 'value' ifTrue: [object ~= saved] ifFalse: [(sameContents value: object value: saved) not])
         ifTrue: [append value: object value: ('introduced_', kind) value: (Array with: 0 with: saved with: object)]]]].
   'conflicts=', count asString, report
 ].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_cells' put: 0;
   at: 'completed_primitives' put: 0; at: 'cell_count' put: cells size; at: 'direction' put: direction; yourself.
 "Build the exact local target from freshly captured identity images. This only
  mutates private image containers; original objects and caller images stay intact."
 mergeImages := [:currentImages | | merged |
   ((currentImages isKindOf: IdentityDictionary) and: [currentImages size <= 100000])
     ifFalse: [component error: 'Bounded current native identity images required'].
   (progress at: 'state') = 'prepared'
     ifFalse: [component error: 'Native merged target requires an undispatched patch'].
   verifyFrom value ifFalse: [component error: 'Native merged target touched-unit conflict ', conflictSummary value].
   ((before keys, after keys) allSatisfy: [:object | currentImages includesKey: object])
     ifFalse: [component error: 'Merged target lacks retained original or introduced images'].
   merged := IdentityDictionary new.
   currentImages keysAndValuesDo: [:object :entry |
     (entry isArray and: [entry size = 2 and: [#('fields' 'value' 'collection' 'boundary') includes: entry first]])
       ifFalse: [component error: 'Exact current native image shape required'].
     merged at: object put: (Array with: entry first with:
       (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy]))].
   cells do: [:cell | | object kind slot entry saved wanted |
     object := cell first. kind := cell at: 2. slot := cell at: 3.
     entry := merged at: object. saved := entry last. wanted := cell last.
     kind = 'fields' ifTrue: [entry first = 'fields'
       ifFalse: [component error: 'Merged field image kind differs'].
       saved at: slot put: wanted]
     ifFalse: [(#('value' 'indexed') includes: kind) ifTrue: [
       entry first = (kind = 'value' ifTrue: ['value'] ifFalse: ['collection'])
         ifFalse: [component error: 'Merged indexed image kind differs'].
       saved at: slot put: wanted]
     ifFalse: [entry first = 'collection' ifFalse: [component error: 'Merged collection image kind differs'].
       kind = 'key' ifTrue: [wanted == absent
         ifTrue: [saved removeKey: slot] ifFalse: [saved at: slot put: wanted]]
       ifFalse: [kind = 'member' ifTrue: [wanted == true
         ifTrue: [saved add: slot] ifFalse: [saved remove: slot]]
       ifFalse: [kind = 'ordered' ifFalse: [component error: 'Unknown merged target primitive'].
         entry at: 2 put: ((orderDesired at: cell) asOrderedCollection)]]
     ]]
   ]. merged
 ].
 primitiveCells := [| flattened |
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Primitive plan requires an undispatched native patch'].
   verifyFrom value ifFalse: [component error: 'Native primitive-plan touched-unit conflict'].
   flattened := OrderedCollection new.
   cells do: [:cell | (cell at: 2) = 'ordered'
     ifTrue: [((orderPlans at: cell) at: 'splices') do: [:step |
       flattened add: (Array with: cell first with: ('ordered_', step first)
         with: (step at: 2) with: step last with: nil)]]
     ifFalse: [flattened add: cell]]. flattened
 ].
 execute := [| count wrote |
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Native field patch cannot replay; classify instead'].
   verifyFrom value ifFalse: [component error: 'Native touched field/index/key/member/order or introduced reference conflict'].
   progress at: 'state' put: 'started'. count := 0.
   wrote := [count := count + 1. progress at: 'completed_primitives' put: count].
   cells do: [:cell | | object kind index value |
     object := cell first. kind := cell at: 2. index := cell at: 3. value := cell last.
     kind = 'fields' ifTrue: [object instVarAt: index put: value. wrote value]
     ifFalse: [(#('value' 'indexed') includes: kind) ifTrue: [object at: index put: value. wrote value]
     ifFalse: [kind = 'key' ifTrue: [value == absent
       ifTrue: [object removeKey: index] ifFalse: [object at: index put: value]. wrote value]
     ifFalse: [kind = 'member' ifTrue: [value == true
       ifTrue: [object add: index] ifFalse: [object remove: index]. wrote value]
     ifFalse: [kind = 'ordered' ifFalse: [component error: 'Unknown exact patch primitive'].
       ((orderPlans at: cell) at: 'splices') do: [:step | | position member |
         position := step at: 2. member := step last.
         step first = 'remove' ifTrue: [
           (object at: position) == member ifFalse: [component error: 'Native field order removal slot changed'].
           object removeAtIndex: position
         ] ifFalse: [object add: member beforeIndex: position]. wrote value]
     ]]]].
     progress at: 'completed_cells' put: (progress at: 'completed_cells') + 1
   ].
   verifyTo value ifFalse: [component error: 'Native field patch terminal references/values differ'].
   progress at: 'state' put: 'applied'. count
 ].
 result := Dictionary new at: 'profile' put: 'native_field_patch_v2'; at: 'direction' put: direction;
   at: 'cells' put: cells; at: 'introduced' put: introduced; at: 'progress' put: progress;
   at: 'mergeImages' put: mergeImages;
   "Only a raw-cell prerequisite for a separately guarded logical-source plan.
    Orders and introduced objects still require their own full planner guards."
   at: 'verifyOwnedScalarCells' put: [cells allSatisfy: [:cell |
     (cell at: 2) = 'ordered' or: [matches value: cell value: (cell at: 4)]]];
   at: 'primitiveCells' put: primitiveCells;
   at: 'verifyBeforeApply' put: verifyFrom; at: 'verifyDesired' put: verifyTo; at: 'execute' put: execute;
   at: 'model_setters_called' put: 0; at: 'write_authorized' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_FIELD_PATCH_ERROR: ', phase, ' ', error printString, ' ', error messageText]
]]
