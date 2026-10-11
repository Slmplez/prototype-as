[:component :context |
 component handleExceptionsIn: [
 | original generated nativeImages factory strictSame source before after current candidates objects seen map claimed visit classify eligible wantedImages patch expectedSource protectedVerify verifyBefore verifyAfter progress cells execute result correspondence |
 (context isArray and: [#(6 7) includes: context size])
   ifFalse: [component error: 'Fixed source identity normalization context required'].
 original := context first. generated := context at: 2. nativeImages := context at: 3.
 factory := context at: 4. strictSame := context at: 5. protectedVerify := context at: 6.
 source := original at: 'sourceRoot'.
 (source == (generated at: 'sourceRoot') and: [(original at: 'owner') == (generated at: 'owner')])
   ifFalse: [component error: 'Forward source root/owner replacement is prohibited'].
 (nativeImages isKindOf: IdentityDictionary)
   ifFalse: [component error: 'Exact protected graphical images required'].
 before := original at: 'snapshots'. after := generated at: 'snapshots'.
 current := (generated at: 'captureImages') value: (before keys, after keys).
 ((generated at: 'verifyImages') value: after)
   ifFalse: [component error: 'Generated source changed before identity normalization'].
 candidates := IdentityDictionary new. objects := OrderedCollection new.
 seen := IdentityDictionary new. map := IdentityDictionary new. claimed := IdentitySet new.
 classify := [:value | (after includesKey: value)
   ifTrue: [(after at: value) first] ifFalse: ['constant']].
 eligible := [:old :new | | left right kind |
   (before includesKey: old) ifFalse: [false] ifTrue: [
   left := before at: old. right := after at: new. kind := right first.
   old class == new class and: [left first = kind and: [
     kind = 'fields' ifTrue: [left last size = right last size]
     ifFalse: [kind = 'boundary' ifTrue: [old == new]
     ifFalse: [left last size = right last size]]]]]].
 "Pair only stable field-operation structure. Source records keep their exact
  class/position and graphical identifier; no name-based replacement matching."
 visit := [:old :new :depth | | kind choices paired left right names ownIndex oldOwn newOwn |
   depth > 128 ifTrue: [component error: 'Source normalization depth bound exceeded'].
   kind := classify value: new.
   (#('constant' 'boundary') includes: kind) ifFalse: [
     choices := candidates at: new ifAbsent: [
       objects size >= 100000 ifTrue: [component error: 'Source normalization object bound exceeded'].
       objects add: new. candidates at: new put: OrderedCollection new].
     (eligible value: old value: new) ifTrue: [
       (choices anySatisfy: [:peer | peer == old]) ifFalse: [choices add: old]].
     paired := seen at: new ifAbsentPut: [IdentitySet new].
     (paired includes: old) ifFalse: [paired add: old.
       right := (after at: new) last.
       left := (eligible value: old value: new) ifTrue: [(before at: old) last] ifFalse: [nil].
       (new isKindOf: SGLogicBlockDB) ifTrue: [
         left isNil ifTrue: [component error: 'Stable source record identity is unavailable'].
         names := new class allInstVarNames.
         ownIndex := names indexOf: 'own'. ownIndex = 0 ifTrue: [ownIndex := names indexOf: #own].
         ownIndex = 0 ifTrue: [component error: 'Source record identity schema unavailable'].
         oldOwn := before at: (left at: ownIndex). newOwn := after at: (right at: ownIndex).
         ((oldOwn last first isInteger) and: [oldOwn last first = newOwn last first])
           ifFalse: [component error: 'Source record graphical identifier changed during field operation']].
       kind = 'fields' ifTrue: [1 to: right size do: [:slot |
         visit value: (left isNil ifTrue: [nil] ifFalse: [left at: slot]) value: (right at: slot) value: depth + 1]]
       ifFalse: [kind = 'collection' ifTrue: [
         (new isKindOf: Dictionary) ifTrue: [right keysAndValuesDo: [:key :child |
           visit value: (left isNil ifTrue: [nil] ifFalse: [left keys detect: [:peer | peer == key] ifNone: [nil]])
             value: key value: depth + 1.
           visit value: (left isNil ifTrue: [nil] ifFalse: [left at: key ifAbsent: [nil]])
             value: child value: depth + 1]]
         ifFalse: [1 to: right size do: [:slot |
           visit value: (left isNil ifTrue: [nil] ifFalse: [left at: slot])
             value: (right at: slot) value: depth + 1]]]]
     ]
   ]].
 context size = 7 ifTrue: [
   correspondence := (context last) value: component value:
     (Array with: original with: generated with: nativeImages).
   (correspondence isKindOf: Dictionary) ifFalse: [component error: correspondence asString].
   (correspondence at: 'profile') = 'source_structural_correspondence_v1'
     ifFalse: [component error: 'Fixed structural source correspondence profile required'].
   objects := correspondence at: 'objects'. map := correspondence at: 'map'
 ] ifFalse: [
   visit value: source value: source value: 0.
   objects do: [:new | | choices target |
   (nativeImages includesKey: new) ifTrue: [target := new]
   ifFalse: [
     choices := (candidates at: new) reject: [:old | (claimed includes: old) or: [nativeImages includesKey: old]].
     target := (choices anySatisfy: [:old | old == new]) ifTrue: [new]
       ifFalse: [choices isEmpty ifTrue: [new] ifFalse: [choices first]]].
   (claimed includes: target) ifTrue: [component error: 'Source normalization would collapse distinct aliases'].
   claimed add: target. map at: new put: target]
 ].
 (map at: source) == source ifFalse: [component error: 'Source root identity normalization failed'].
 wantedImages := IdentityDictionary new.
 current keysAndValuesDo: [:object :entry | wantedImages at: object put:
   (Array with: entry first with: (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy]))].
 objects do: [:new | | entry kind saved wanted translated target |
   entry := after at: new. kind := entry first. saved := entry last. target := map at: new.
   translated := [:child | map at: child ifAbsent: [child]].
   wanted := kind = 'value' ifTrue: [saved copy] ifFalse: [
     (new isKindOf: Dictionary) ifTrue: [| keyed |
       keyed := new class new. saved keysAndValuesDo: [:key :child |
         keyed at: (translated value: key) put: (translated value: child)]. keyed]
     ifFalse: [saved collect: [:child | translated value: child]]].
   (nativeImages includesKey: target) ifTrue: [
     (kind = 'value' ifTrue: [wanted = (nativeImages at: target) last] ifFalse: [
       wanted size = (nativeImages at: target) last size and: [
         (wanted isKindOf: Dictionary) ifTrue: [wanted keys allSatisfy: [:key |
           ((nativeImages at: target) last keys anySatisfy: [:peer | peer == key])
             and: [(wanted at: key) == ((nativeImages at: target) last at: key)]]]
         ifFalse: [(1 to: wanted size) allSatisfy: [:slot |
           (wanted at: slot) == ((nativeImages at: target) last at: slot)]]]])
       ifFalse: [component error: 'Source normalization would modify protected graphical state']].
   wantedImages at: target put: (Array with: kind with: wanted)].
 expectedSource := (generated at: 'cloneImages') value: wantedImages.
 ((strictSame value: component value: expectedSource value: ((generated at: 'cloneImages') value: after)) == true)
   ifFalse: [component error: 'Source normalization changed generated values or sharing'].
 patch := factory value: component value: (Array with: wantedImages with: current) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 cells := (patch at: 'primitiveCells') value.
 verifyBefore := [protectedVerify value and: [((generated at: 'verifyImages') value: current)
   and: [(patch at: 'verifyBeforeApply') value]]].
 verifyAfter := [protectedVerify value and: [((generated at: 'verifyImages') value: wantedImages)
   and: [(strictSame value: component value: source value: expectedSource) == true]]].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_cells' put: 0;
   at: 'completed_primitives' put: 0; at: 'cell_count' put: cells size; at: 'direction' put: 'forward'; yourself.
 execute := [| count |
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Forward source normalization cannot replay'].
   verifyBefore value ifFalse: [component error: 'Forward normalization source/native CURRENT conflict'].
   progress at: 'state' put: 'started'.
   [(patch at: 'execute') value] ensure: [
     count := (patch at: 'progress') at: 'completed_primitives'.
     progress at: 'completed_cells' put: count; at: 'completed_primitives' put: count].
   (count = cells size and: [verifyAfter value])
     ifFalse: [component error: 'Forward normalized source identity/values/sharing differ'].
   progress at: 'state' put: 'applied'. count].
 result := Dictionary new at: 'profile' put: 'source_identity_normalization_v1';
   at: 'sourceRoot' put: source; at: 'current' put: current; at: 'desired' put: wantedImages;
   at: 'expectedSource' put: expectedSource; at: 'patch' put: patch; at: 'progress' put: progress;
   at: 'verifyBeforeApply' put: verifyBefore; at: 'verifyDesired' put: verifyAfter;
   at: 'execute' put: execute; at: 'write_authorized' put: false; yourself.
 correspondence notNil ifTrue: [result
   at: 'correspondence_profile' put: (correspondence at: 'profile');
   at: 'correspondence_statistics' put: (correspondence at: 'statistics')].
 result
 ] ifFail: [:error | 'BDE_SOURCE_IDENTITY_NORMALIZATION_ERROR: ', error messageText]
]
