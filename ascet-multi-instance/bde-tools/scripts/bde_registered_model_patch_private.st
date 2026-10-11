"Only freshly allocated private objects enter this executor control. No SG/database write."
[:helpers | [:component |
 | stage |
 stage := 'capture'.
 component handleExceptionsIn: [
 | current patchFactory root encode graph str point array ordered dictionary set extra fresh objects
   tokens snapshots original material before applied capture patch conflictResult conflictPrimitives
   undo redo terminal unrelated restored changes primitives schema rows describe entry contents bad refusals result |
 current := helpers first. patchFactory := helpers last.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Exact original private study owner required'].
 encode := root at: 'encodeObservation'. graph := encode value: (root at: 'observationValues').
 str := 'AB' copy. point := 1@2. array := Array with: str with: point.
 ordered := OrderedCollection new add: str; add: point; yourself.
 dictionary := Dictionary new at: #alpha put: 1; at: #beta put: 2; yourself.
 set := Set new add: 1; add: 2; yourself.
 objects := Array with: str with: point with: array with: ordered with: dictionary with: set.
 tokens := IdentityDictionary new. snapshots := IdentityDictionary new.
 describe := [:value | | row |
   row := Dictionary new at: 'class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [row at: 'kind' put: 'constant'; at: 'value' put: value printString]
     ifFalse: [row at: 'ref' put: (tokens at: value ifAbsentPut: ['r', (tokens size + 1) printString])]. row].
 objects do: [:object | describe value: object.
   object == point ifTrue: [
     schema := (object class allInstVarNames collect: [:name | name asString]) asArray.
     snapshots at: object put: (Array with: 'fields' with: schema
       with: ((1 to: schema size) collect: [:index | object instVarAt: index]) asArray)
   ] ifFalse: [snapshots at: object put: (Array with: (object == str ifTrue: ['value'] ifFalse: ['collection'])
       with: #() with: object copy)]].
 rows := ((snapshots keys collect: [:object |
   entry := snapshots at: object. contents := nil.
   entry first = 'value' ifTrue: [contents := entry last asCebraString asArray].
   entry first = 'fields' ifTrue: [contents := entry last collect: [:value | describe value: value]].
   entry first = 'collection' ifTrue: [contents := object == dictionary
     ifTrue: [entry last keys collect: [:key | Array with: (describe value: key) with: (describe value: (entry last at: key))]]
     ifFalse: [entry last collect: [:value | describe value: value]]].
   Dictionary new at: 'binding' put: (describe value: object); at: 'kind' put: entry first;
     at: 'field_names' put: entry second; at: 'value' put: contents; yourself])
     asSortedCollection: [:a :b | ((a at: 'binding') at: 'ref') < ((b at: 'binding') at: 'ref')]) asArray.
 original := Dictionary new at: 'root' put: root; at: 'owner' put: component item;
   at: 'generation' put: (root at: 'generation'); at: 'phase' put: 'captured'; at: 'tokens' put: tokens;
   at: 'snapshots' put: snapshots; at: 'roots' put: #(); at: 'selectedCacheMembers' put: #();
   at: 'originalImage' put: rows; yourself.
 material := Dictionary new at: 'root' put: root; at: 'owner' put: component item;
   at: 'registeredModelMaterial' put: original; at: 'storage' put: Dictionary new; yourself.
 before := Dictionary new at: 'image' put: rows; at: 'registered_roots' put: #(); at: 'registered_members' put: #(); yourself.
 stage := 'negative-shapes'. refusals := OrderedCollection new.
 bad := snapshots copy. bad removeKey: point.
 result := patchFactory value: component value: (Array with: snapshots with: bad) value: 'undo'.
 (result isString and: [result startsWith: 'BDE_REGISTERED_MODEL_PATCH_ERROR:'])
   ifFalse: [component error: 'Missing original model object was accepted'].
 refusals add: 'missing_original'.
 bad := snapshots copy. bad at: point put: (Array with: 'fields' with: #('wrong' 'schema') with: (snapshots at: point) last).
 result := patchFactory value: component value: (Array with: snapshots with: bad) value: 'undo'.
 (result isString and: [result startsWith: 'BDE_REGISTERED_MODEL_PATCH_ERROR:'])
   ifFalse: [component error: 'Changed model field schema was accepted'].
 refusals add: 'field_schema'.
 bad := snapshots copy. bad at: str put: (Array with: 'value' with: #() with: 'TOO_LONG' copy).
 result := patchFactory value: component value: (Array with: snapshots with: bad) value: 'undo'.
 (result isString and: [result startsWith: 'BDE_REGISTERED_MODEL_PATCH_ERROR:'])
   ifFalse: [component error: 'Resized original model value was accepted'].
 refusals add: 'resized_value'.
 bad := snapshots copy. bad at: point put: (Array with: 'boundary' with: #() with: point).
 result := patchFactory value: component value: (Array with: snapshots with: bad) value: 'undo'.
 (result isString and: [result startsWith: 'BDE_REGISTERED_MODEL_PATCH_ERROR:'])
   ifFalse: [component error: 'Opaque boundary mutable contents were accepted'].
 refusals add: 'mutable_boundary'.
 capture := [:baseline | | report |
   report := current value: component value: material value: (Array with: 'since_preparation' with: baseline).
   (report isKindOf: Dictionary) ifFalse: [component error: report asString]. report].
 str at: 1 put: $Z. point instVarAt: 1 put: 9. fresh := 'NEW' copy. array at: 1 put: fresh.
 ordered add: fresh beforeIndex: 2.
 dictionary at: #alpha put: 99. set remove: 1; add: 42.
 applied := capture value: nil.
 patch := patchFactory value: component value: (Array with: snapshots with: (applied at: 'snapshots')) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 stage := 'introduced-conflict'. fresh at: 1 put: $X.
 (patch at: 'verifyBeforeApply') value ifTrue: [component error: 'Changed introduced identity contents accepted'].
 fresh at: 1 put: $N. refusals add: 'introduced_object_changed'.
 stage := 'touched-conflict'. point instVarAt: 1 put: 13.
 (patch at: 'verifyBeforeApply') value ifTrue: [component error: 'Touched scalar conflict incorrectly accepted'].
 conflictResult := component handleExceptionsIn: [(patch at: 'execute') value. 'unexpected_write']
   ifFail: [:error | 'refused'].
 conflictPrimitives := (patch at: 'progress') at: 'completed_primitives'.
 (conflictResult = 'refused' and: [conflictPrimitives = 0 and: [(point instVarAt: 1) = 13]])
   ifFalse: [component error: 'Touched conflict wrote private cells'].
 point instVarAt: 1 put: 9.
 point instVarAt: 2 put: 77. extra := 'SIDE' copy.
 dictionary at: #gamma put: 3. set add: 43. ordered add: extra.
 unrelated := [ (point instVarAt: 2) = 77 and: [(dictionary at: #gamma) = 3 and: [
   (set includes: 43) and: [ordered last == extra]]]].
 primitives := OrderedCollection new.
 stage := 'undo'. primitives add: (patch at: 'execute') value.
 (unrelated value and: [(patch at: 'verifyDesired') value and: [str = 'AB' and: [
   (point instVarAt: 1) = 1 and: [array first == str and: [ordered first == str and: [
   (dictionary at: #alpha) = 1 and: [(set includes: 1) and: [(set includes: 42) not]]]]]]]])
   ifFalse: [component error: 'Private undo lost unrelated state or original target'].
 undo := capture value: applied.
 patch := patchFactory value: component value: (Array with: snapshots with: (applied at: 'snapshots')) value: 'redo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 stage := 'redo'. primitives add: (patch at: 'execute') value.
 (unrelated value and: [(patch at: 'verifyDesired') value and: [str = 'ZB' and: [
   (point instVarAt: 1) = 9 and: [array first == fresh and: [(ordered at: 2) == fresh and: [
   (dictionary at: #alpha) = 99 and: [(set includes: 42) and: [(set includes: 1) not]]]]]]]])
   ifFalse: [component error: 'Private redo lost unrelated state or actual target'].
 redo := capture value: applied.
 patch := patchFactory value: component value: (Array with: snapshots with: (applied at: 'snapshots')) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 stage := 'second-undo'. primitives add: (patch at: 'execute') value.
 unrelated value ifFalse: [component error: 'Second undo lost independent changes'].
 point instVarAt: 2 put: 2. dictionary removeKey: #gamma. set remove: 43. ordered remove: extra.
 restored := str = 'AB' and: [point = (1@2) and: [array first == str and: [
   ordered size = 2 and: [ordered first == str and: [ordered last == point and: [
   (dictionary at: #alpha) = 1 and: [dictionary size = 2 and: [set size = 2 and: [(set includes: 1) and: [set includes: 2]]]]]]]]]].
 restored ifFalse: [component error: 'Original private objects not restored'].
 terminal := capture value: applied.
 (encode value: (root at: 'observationValues')) = graph
   ifFalse: [component error: 'Live observed graph changed in private executor control'].
 changes := OrderedCollection new.
 (Array with: applied with: undo with: redo with: terminal) do: [:report | | exported |
   exported := report copy. exported removeKey: 'snapshots'; removeKey: 'values'. changes add: exported].
 encode value: (Dictionary new at: 'profile' put: 'native_registered_model_patch_private_v1';
   at: 'before' put: before; at: 'checks' put: changes asArray;
   at: 'native_primitives' put: primitives asArray; at: 'touched_conflict_refused' put: true;
   at: 'native_preparation_refusals' put: refusals asArray;
   at: 'conflict_primitives' put: conflictPrimitives; at: 'unrelated_changes_preserved' put: true;
   at: 'undo_redo_second_undo_verified' put: true; at: 'original_private_objects_restored' put: restored;
   at: 'live_observation_unchanged' put: true; at: 'live_model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'production_inverse_authorized' put: false; at: 'full_delivery' put: false; yourself)
 ] ifFail: [:error | 'BDE_REGISTERED_MODEL_PRIVATE_ERROR: ', stage, ': ', error messageText]
]]
