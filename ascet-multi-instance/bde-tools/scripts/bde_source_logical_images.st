"Read-only logical projection of frozen source images. Never pass these images
 to a live-image verifier as if they were CURRENT. The primitive executor must
 independently capture and guard the real objects before any dispatch."
[:correspondence :strictSame | [:component :context |
 component handleExceptionsIn: [
 | original generated prior actual result map rewritten translate copyEntry objects
   selected visit source expected originalClone projectedClone anchors reverse protected
   nativeAliases nativeBefore nativeAfter stableProtection descriptor oldEntry newEntry |
 (context isArray and: [#(2 3 4 5) includes: context size])
   ifFalse: [component error: 'Fixed original/generated frozen source pair required'].
 original := context first. generated := context at: 2.
 protected := context size >= 3 ifTrue: [context at: 3] ifFalse: [IdentityDictionary new].
 (protected isKindOf: IdentityDictionary)
   ifFalse: [component error: 'Fixed captured native identity protection required'].
 prior := original at: 'snapshots'. actual := generated at: 'snapshots'.
 nativeAliases := IdentityDictionary new.
 context size = 4 ifTrue: [
   (context last isKindOf: IdentityDictionary) ifFalse: [component error: 'Exact frozen native/source origin map required'].
   context last keysAndValuesDo: [:from :to |
     ((protected includesKey: from) and: [from ~~ to and: [from class == Point]])
       ifTrue: [nativeAliases at: from put: to]]
 ].
 stableProtection := protected copy.
 context size = 5 ifTrue: [
   nativeBefore := context at: 4. nativeAfter := context at: 5.
   ((nativeBefore isKindOf: IdentityDictionary) and: [nativeAfter isKindOf: IdentityDictionary])
     ifFalse: [component error: 'Actual frozen before/after native images required'].
   nativeBefore keysAndValuesDo: [:object :beforeEntry |
     ((object class == Point) and: [(nativeAfter includesKey: object) and: [
       (actual includesKey: object) and: [(prior includesKey: object) not]]]) ifTrue: [
       oldEntry := beforeEntry. newEntry := nativeAfter at: object.
       (oldEntry first = 'fields' and: [newEntry first = 'fields' and: [
         oldEntry last size = 2 and: [newEntry last size = 2 and: [
         (oldEntry last allSatisfy: [:value | value isInteger]) and: [
         (1 to: 2) allSatisfy: [:slot | (oldEntry last at: slot) == (newEntry last at: slot)]]]]]])
         ifTrue: [descriptor := Dictionary new at: 'profile' put: 'unchanged_native_source_point_v1';
           at: 'frozen' put: oldEntry last copy; yourself.
           stableProtection at: object put: descriptor]
     ]]
 ].
 result := correspondence value: component value:
   ((Array with: original with: generated with: stableProtection with: 'frozen_planning_v1') copyWith: nativeAliases).
 ((result isKindOf: Dictionary) and: [(result at: 'mode') = 'frozen_planning_v1'
   and: [(result at: 'write_authorized') == false]])
   ifFalse: [component error: result asString].
 map := result at: 'map'. objects := result at: 'objects'.
 reverse := IdentityDictionary new.
 map keysAndValuesDo: [:from :to |
   (reverse includesKey: to) ifTrue: [component error: 'Frozen projection collapses source aliases'].
   reverse at: to put: from].
 translate := [:value | map at: value ifAbsent: [value]].
 copyEntry := [:entry | Array with: entry first with:
   (entry first = 'boundary' ifTrue: [entry last] ifFalse: [entry last copy])].
 rewritten := IdentityDictionary new.
 actual keysAndValuesDo: [:object :entry | rewritten at: object put: (copyEntry value: entry)].
 objects do: [:object | | entry saved translated target kind |
   entry := actual at: object. kind := entry first. saved := entry last.
   target := map at: object.
   translated := kind = 'value' ifTrue: [saved copy] ifFalse: [
     (object isKindOf: Dictionary) ifTrue: [| keyed |
       keyed := object class new.
       saved keysAndValuesDo: [:key :value | | mappedKey |
         mappedKey := translate value: key.
         (keyed includesKey: mappedKey) ifTrue: [component error: 'Frozen projection has ambiguous dictionary keys'].
         keyed at: mappedKey put: (translate value: value)]. keyed]
     ifFalse: [saved collect: [:value | translate value: value]]].
   rewritten at: target put: (Array with: kind with: translated)].
 "Retain original anchors, including detached records, but exclude replaced
  fresh objects which no longer have a logical reference. Their real images
  are retained separately and must still be guarded at execution time."
 selected := IdentityDictionary new.
 visit := [:object :depth | | entry |
   depth > 128 ifTrue: [component error: 'Frozen source projection depth bound exceeded'].
   (rewritten includesKey: object) ifTrue: [
     (selected includesKey: object) ifFalse: [
       selected size >= 100000 ifTrue: [component error: 'Frozen source projection object bound exceeded'].
       entry := rewritten at: object. selected at: object put: entry.
       entry first = 'fields' ifTrue: [entry last do: [:child | visit value: child value: depth + 1]].
       entry first = 'collection' ifTrue: [(object isKindOf: Dictionary)
         ifTrue: [entry last keysAndValuesDo: [:key :child |
           visit value: key value: depth + 1. visit value: child value: depth + 1]]
         ifFalse: [entry last do: [:child | visit value: child value: depth + 1]]]]]
   ifFalse: [((object isNil or: [object isNumber or: [(object isKindOf: Symbol)
     or: [object == true or: [object == false]]]]))
       ifFalse: [component error: 'Frozen projected source reference lacks material']]].
 source := original at: 'sourceRoot'.
 anchors := prior keys. visit value: source value: 0.
 anchors do: [:object | visit value: object value: 0].
 projectedClone := (generated at: 'cloneImages') value: selected.
 originalClone := (generated at: 'cloneImages') value: actual.
 ((strictSame value: component value: projectedClone value: originalClone) == true)
   ifFalse: [component error: 'Frozen source projection changed complete values or bidirectional sharing'].
 expected := Dictionary new at: 'profile' put: 'source_logical_images_v1';
   at: 'sourceRoot' put: source; at: 'owner' put: (original at: 'owner');
   at: 'snapshots' put: selected; at: 'actualSnapshots' put: actual;
   at: 'actualToLogical' put: map; at: 'logicalToActual' put: reverse;
   at: 'correspondence_statistics' put: (result at: 'statistics');
   at: 'cloneImages' put: (generated at: 'cloneImages');
   at: 'complete_values_and_sharing_preserved' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; yourself.
 expected
 ] ifFail: [:error | 'BDE_SOURCE_LOGICAL_IMAGES_ERROR: ', error messageText]
]]
