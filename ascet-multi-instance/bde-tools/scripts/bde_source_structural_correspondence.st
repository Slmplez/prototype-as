"Read-only correspondence of frozen ordinary BDE source images. A record's
 identity is local to its containing graphics block and collection role.
 Nothing here authorizes an edit or constructs a substitute native identity."
[:component :context |
 component handleExceptionsIn: [
 | original generated protected before after source objects candidates seen claimed map
   fieldAt imageKind eligible recordKey visit indexRole hardRecords stats frozenOnly equalProtectedValue nativeAliases |
 (context isArray and: [#(3 4 5) includes: context size])
   ifFalse: [component error: 'Fixed structural source material context required'].
 frozenOnly := context size >= 4.
 (frozenOnly and: [(context at: 4) ~= 'frozen_planning_v1'])
   ifTrue: [component error: 'Explicit read-only frozen correspondence marker required'].
 original := context first. generated := context at: 2. protected := context at: 3.
 source := original at: 'sourceRoot'.
 (source == (generated at: 'sourceRoot') and: [(original at: 'owner') == (generated at: 'owner')])
   ifFalse: [component error: 'Structural source root/owner replacement is prohibited'].
 before := original at: 'snapshots'. after := generated at: 'snapshots'.
 nativeAliases := context size = 5 ifTrue: [context last] ifFalse: [IdentityDictionary new].
 (nativeAliases isKindOf: IdentityDictionary) ifFalse: [component error: 'Exact retained native/source correspondence required'].
 ((before isKindOf: IdentityDictionary) and: [(after isKindOf: IdentityDictionary)
   and: [protected isKindOf: IdentityDictionary]])
   ifFalse: [component error: 'Frozen original/generated/protected images required'].
 "A regenerated source-only String may describe an unchanged protected native
  String at this exact structural position. In frozen planning, mapping equal
  saved contents removes incidental source reference churn without changing
  the native String's identity or bytes. A new protected native object still
  maps only to itself; Point/geometry and actual normalization remain strict."
 equalProtectedValue := [:old :new |
   frozenOnly and: [old class == String and: [new class == String and: [
     (before includesKey: old) and: [(after includesKey: new) and: [
       (before at: old) first = 'value' and: [(after at: new) first = 'value' and: [
       (before at: old) last = (after at: new) last]]]]]]]].
 frozenOnly ifFalse: [(generated at: 'verify') value
   ifFalse: [component error: 'Structural source CURRENT changed before planning']].
 fieldAt := [:images :object :field | | names slot entry |
   entry := images at: object ifAbsent: [component error: 'Source field reference lacks frozen material'].
   entry first = 'fields' ifFalse: [component error: 'Frozen source record fields required'].
   names := object class allInstVarNames collect: [:name | name asString].
   slot := names indexOf: field.
   slot = 0 ifTrue: [component error: 'Source identity field unavailable: ', object class name asString, '/', field].
   entry last at: slot].
 imageKind := [:object | (after includesKey: object)
   ifTrue: [(after at: object) first] ifFalse: ['constant']].
 eligible := [:old :new | | left right kind |
   (before includesKey: old) ifFalse: [false] ifTrue: [
     left := before at: old. right := after at: new. kind := right first.
     old class == new class and: [left first = kind and: [
       kind = 'boundary' ifTrue: [old == new] ifFalse: [
       (#('Dictionary' 'IdentityDictionary' 'OrderedCollection') includes: new class name asString)
         ifTrue: [true] ifFalse: [left last size = right last size]]]]]].
 recordKey := [:images :object :role | | anchor own info identity |
   role = 'connections' ifTrue: [
     (object isKindOf: SGConnectionGODB)
       ifFalse: [component error: 'Unsupported source connection identity class: ', object class name asString].
     info := images at: (fieldAt value: images value: object value: 'info').
     (info first = 'collection' and: [info last size >= 4 and: [
       (1 to: 4) allSatisfy: [:slot | (info last at: slot) isInteger and: [(info last at: slot) >= 0]]]])
       ifFalse: [component error: 'Four exact frozen source endpoint identifiers required'].
     identity := object class name asString.
     1 to: 4 do: [:slot | identity := identity, '/', (info last at: slot) printString].
     identity
   ] ifFalse: [
     anchor := (object isKindOf: SGGraphicsBlockDB)
       ifTrue: [fieldAt value: images value: object value: 'graphicBlock'] ifFalse: [object].
     (anchor isKindOf: SGGraphicObjectsDB)
       ifFalse: [component error: 'Unsupported source block identity class: ', object class name asString].
     own := images at: (fieldAt value: images value: anchor value: 'own').
     (own first = 'collection' and: [own last notEmpty and: [
       own last first isInteger and: [own last first >= 0]]])
       ifFalse: [component error: 'Exact nonnegative frozen source block identifier required'].
     object class name asString, '/', own last first printString
   ]].
 indexRole := [:images :members :role | | index key |
   index := Dictionary new.
   members do: [:object |
     key := recordKey value: images value: object value: role.
     (index includesKey: key)
       ifTrue: [component error: 'Ambiguous source identity in container role ', role, ': ', key].
     index at: key put: object]. index].
 objects := OrderedCollection new. candidates := IdentityDictionary new.
 seen := IdentityDictionary new. hardRecords := IdentitySet new.
 stats := Dictionary new at: 'matched_records' put: 0; at: 'new_records' put: 0;
   at: 'removed_records' put: 0; at: 'resized_arrays_retained_fresh' put: 0;
   at: 'ambiguous_soft_aliases_retained_fresh' put: 0; yourself.
 visit := [:old :new :location | | kind choices paired left right names ownOld ownNew oldIndex newIndex key peer depth role |
   depth := location first. role := location last.
   depth > 128 ifTrue: [component error: 'Structural source correspondence depth bound exceeded'].
   kind := imageKind value: new.
   (#('constant' 'boundary') includes: kind) ifFalse: [
     choices := candidates at: new ifAbsent: [
       objects size >= 100000 ifTrue: [component error: 'Structural source correspondence object bound exceeded'].
       objects add: new. candidates at: new put: OrderedCollection new].
     (eligible value: old value: new) ifTrue: [
       (choices anySatisfy: [:candidate | candidate == old]) ifFalse: [choices add: old]].
     paired := seen at: new ifAbsentPut: [IdentitySet new].
     (paired includes: old) ifFalse: [
       paired add: old. right := (after at: new) last.
       left := (before includesKey: old) ifTrue: [(before at: old) last] ifFalse: [nil].
       (new isKindOf: SGLogicBlockDB) ifTrue: [
         hardRecords add: new.
         old notNil ifTrue: [
           old class == new class ifFalse: [component error: 'Structural source record class differs'].
           ownOld := before at: (fieldAt value: before value: old value: 'own').
           ownNew := after at: (fieldAt value: after value: new value: 'own').
           (ownOld last first isInteger and: [ownOld last first = ownNew last first])
             ifFalse: [component error: 'Structural source record identifier differs']]].
       kind = 'fields' ifTrue: [
         left := (eligible value: old value: new) ifTrue: [left] ifFalse: [nil].
         names := new class allInstVarNames collect: [:name | name asString].
         1 to: right size do: [:slot |
           visit value: (left isNil ifTrue: [nil] ifFalse: [left at: slot])
             value: (right at: slot) value: (Array with: depth + 1
             with: (((new isKindOf: SGGraphicsBlockDB) and: [
               #('blocks' 'connections' 'others') includes: (names at: slot)])
               ifTrue: [names at: slot] ifFalse: [nil]))]
       ] ifFalse: [kind = 'collection' ifTrue: [
         role notNil ifTrue: [
           (#('Array' 'OrderedCollection') includes: new class name asString)
             ifFalse: [component error: 'Ordered source role collection required'].
           old notNil ifTrue: [
             (#('Array' 'OrderedCollection') includes: old class name asString)
               ifFalse: [component error: 'Original ordered source role collection required']].
           oldIndex := indexRole value: before value: (left isNil ifTrue: [#()] ifFalse: [left]) value: role.
           newIndex := indexRole value: after value: right value: role.
           oldIndex keys do: [:identity | (newIndex includesKey: identity) ifFalse: [
             stats at: 'removed_records' put: (stats at: 'removed_records') + 1]].
           (new class name asString = 'Array' and: [left notNil and: [left size ~= right size]])
             ifTrue: [stats at: 'resized_arrays_retained_fresh' put: (stats at: 'resized_arrays_retained_fresh') + 1].
           right do: [:child |
             hardRecords add: child. key := recordKey value: after value: child value: role.
             peer := oldIndex at: key ifAbsent: [nil].
             stats at: (peer isNil ifTrue: ['new_records'] ifFalse: ['matched_records'])
               put: (stats at: (peer isNil ifTrue: ['new_records'] ifFalse: ['matched_records'])) + 1.
             visit value: peer value: child value: (Array with: depth + 1 with: nil)]
         ] ifFalse: [(new isKindOf: Dictionary) ifTrue: [
           right keysAndValuesDo: [:dictionaryKey :child | | oldKey |
             oldKey := left isNil ifTrue: [nil] ifFalse: [
               left keys detect: [:candidate | candidate == dictionaryKey] ifNone: [nil]].
             visit value: oldKey value: dictionaryKey value: (Array with: depth + 1 with: nil).
             visit value: (oldKey isNil ifTrue: [nil] ifFalse: [left at: oldKey])
               value: child value: (Array with: depth + 1 with: nil)]
         ] ifFalse: [
           left := (left notNil and: [old class == new class and: [left size = right size]])
             ifTrue: [left] ifFalse: [nil].
           1 to: right size do: [:slot | visit
             value: (left isNil ifTrue: [nil] ifFalse: [left at: slot])
             value: (right at: slot) value: (Array with: depth + 1 with: nil)]]]
       ]]
     ]
   ]].
 visit value: source value: source value: (Array with: 0 with: nil).
 "Known aliases come only from the preceding actual frozen history projection.
  Include a retained native anchor even when a later move detached it from
  CURRENT. Later native objects have no such alias and keep their identities."
 nativeAliases keysAndValuesDo: [:from :to |
   ((protected includesKey: from) and: [(protected includesKey: to) not and: [
     from class == Point and: [to class == Point and: [before includesKey: to]]]])
     ifFalse: [component error: 'Retained native/source Point alias has no exact original binding'].
   (after includesKey: from) ifTrue: [visit value: to value: from value: (Array with: 0 with: nil)]
 ].
 claimed := IdentitySet new. map := IdentityDictionary new.
 objects do: [:new | | choices target allChoices |
   allChoices := candidates at: new.
   ((hardRecords includes: new) and: [allChoices size > 1])
     ifTrue: [component error: 'Source record has more than one original structural counterpart'].
   (nativeAliases includesKey: new) ifTrue: [target := nativeAliases at: new] ifFalse: [
   (protected includesKey: new) ifTrue: [| protection peers saved |
     protection := protected at: new. target := new.
     (frozenOnly and: [protection isKindOf: Dictionary]) ifTrue: [
       ((protection at: 'profile' ifAbsent: [nil]) = 'unchanged_native_source_point_v1' and: [new class == Point])
         ifFalse: [component error: 'Unknown protected frozen source identity descriptor'].
       saved := protection at: 'frozen'.
       peers := allChoices select: [:old |
         (old class == Point and: [(protected includesKey: old) not and: [(claimed includes: old) not]])
           and: [(before at: old) first = 'fields' and: [(after at: new) first = 'fields' and: [
             (before at: old) last size = 2 and: [(after at: new) last size = 2 and: [saved size = 2 and: [
             (1 to: 2) allSatisfy: [:slot | (saved at: slot) isInteger and: [
               (saved at: slot) == ((before at: old) last at: slot) and: [
               (saved at: slot) == ((after at: new) last at: slot)]]]]]]]]]].
       peers size > 1 ifTrue: [component error: 'Ambiguous unchanged native/source Point counterpart'].
       peers size = 1 ifTrue: [target := peers first]
     ]
   ] ifFalse: [
     choices := allChoices reject: [:old | (claimed includes: old) or: [
       (protected includesKey: old) and: [(equalProtectedValue value: old value: new) not]]].
     target := (choices anySatisfy: [:old | old == new]) ifTrue: [new] ifFalse: [
       choices size = 1 ifTrue: [choices first] ifFalse: [
         choices size > 1 ifTrue: [stats at: 'ambiguous_soft_aliases_retained_fresh'
           put: (stats at: 'ambiguous_soft_aliases_retained_fresh') + 1]. new]].
     ((hardRecords includes: new) and: [allChoices notEmpty and: [choices isEmpty]])
       ifTrue: [component error: 'Original source record counterpart is already claimed or protected']]].
   (claimed includes: target) ifTrue: [component error: 'Structural source correspondence would collapse aliases'].
   claimed add: target. map at: new put: target].
 (map at: source) == source ifFalse: [component error: 'Structural source root identity differs'].
 frozenOnly ifFalse: [(generated at: 'verify') value
   ifFalse: [component error: 'Structural correspondence changed source CURRENT']].
 Dictionary new at: 'profile' put: 'source_structural_correspondence_v1';
   at: 'mode' put: (frozenOnly ifTrue: ['frozen_planning_v1'] ifFalse: ['actual_current_v1']);
   at: 'map' put: map; at: 'objects' put: objects; at: 'statistics' put: stats;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; yourself
 ] ifFail: [:error | 'BDE_SOURCE_STRUCTURAL_CORRESPONDENCE_ERROR: ', error messageText]
]
