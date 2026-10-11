"Native nonzero controls on newly allocated private objects; no live SG fields or database writes."
[:current | [:component |
 | stage |
 stage := 'binding'.
 component handleExceptionsIn: [
 | root original snapshots tokens describe str point array ordered dictionary set fresh rows material before after
   encode originalObservation names values entry contents |
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Exact current ordinary owner required'].
 encode := root at: 'encodeObservation'. originalObservation := encode value: (root at: 'observationValues').
 str := 'AB' copy. point := 1@2. array := Array with: str with: point.
 ordered := OrderedCollection new add: str; add: point; yourself.
 dictionary := Dictionary new at: #alpha put: 1; at: #beta put: 2; yourself.
 set := Set new add: 1; add: 2; yourself.
 tokens := IdentityDictionary new. snapshots := IdentityDictionary new.
 describe := [:value | | row |
   row := Dictionary new at: 'class' put: value class name asString; yourself.
   (value isNil or: [value isNumber or: [value == true or: [value == false or: [value isKindOf: Symbol]]]])
     ifTrue: [row at: 'kind' put: 'constant'; at: 'value' put: value printString]
     ifFalse: [row at: 'ref' put: (tokens at: value ifAbsentPut: ['r', (tokens size + 1) printString])]. row].
 (Array with: str with: point with: array with: ordered with: dictionary with: set) do: [:object |
   describe value: object.
   object == point ifTrue: [
     names := (object class allInstVarNames collect: [:name | name asString]) asArray.
     snapshots at: object put: (Array with: 'fields' with: names
       with: ((1 to: names size) collect: [:index | object instVarAt: index]) asArray)
   ] ifFalse: [snapshots at: object put: (Array with: (object == str ifTrue: ['value'] ifFalse: ['collection'])
     with: #() with: object copy)]].
 rows := ((snapshots keys collect: [:object |
   entry := snapshots at: object. values := entry last. contents := nil.
   entry first = 'value' ifTrue: [contents := values asCebraString asArray].
   entry first = 'fields' ifTrue: [contents := values collect: [:value | describe value: value]].
   entry first = 'collection' ifTrue: [contents := object == dictionary
     ifTrue: [values keys collect: [:key | Array with: (describe value: key) with: (describe value: (values at: key))]]
     ifFalse: [values collect: [:value | describe value: value]]].
   Dictionary new at: 'binding' put: (describe value: object); at: 'kind' put: entry first;
     at: 'field_names' put: entry second; at: 'value' put: contents; yourself])
       asSortedCollection: [:a :b | ((a at: 'binding') at: 'ref') < ((b at: 'binding') at: 'ref')]) asArray.
 original := Dictionary new at: 'root' put: root; at: 'owner' put: component item;
   at: 'generation' put: (root at: 'generation'); at: 'phase' put: 'captured'; at: 'tokens' put: tokens;
   at: 'snapshots' put: snapshots; at: 'roots' put: #(); at: 'selectedCacheMembers' put: #();
   at: 'originalImage' put: rows; yourself.
 material := Dictionary new at: 'root' put: root; at: 'owner' put: component item;
   at: 'registeredModelMaterial' put: original; at: 'storage' put: Dictionary new; yourself.
 before := Dictionary new at: 'image' put: rows; at: 'registered_roots' put: #();
   at: 'registered_members' put: #(); yourself.
 "Only the six freshly allocated objects are edited."
 stage := 'private-mutation'.
 str at: 1 put: $Z. point instVarAt: 1 put: 9.
 fresh := 'NEW' copy. array at: 1 put: fresh.
 ordered remove: str; remove: point; add: point; add: str.
 dictionary at: #alpha put: 99. set remove: 1; add: 42.
 stage := 'current-collector'.
 after := current value: component value: material value: (Array with: 'since_preparation' with: nil).
 (after isKindOf: Dictionary) ifFalse: [component error: after printString].
 after := after copy. after removeKey: 'snapshots'; removeKey: 'values'.
 (encode value: (root at: 'observationValues')) = originalObservation
   ifFalse: [component error: 'Live graph changed during private SG diff controls'].
 encode value: (Dictionary new at: 'profile' put: 'native_sg_diff_private_v1';
   at: 'before' put: before; at: 'after' put: after;
   at: 'private_objects_allocated' put: 7; at: 'live_observation_unchanged' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'full_delivery' put: false; at: 'online_model_edit_verified' put: false; yourself)
 ] ifFail: [:error | 'BDE_COMMIT_MODEL_DIFF_PRIVATE_ERROR: ', stage, ': ', error messageText]
]]
