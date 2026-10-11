"Adapt retained three-part SG snapshots to the audited native field planner.
 No database/cache/control restoration or production write authority is granted."
[:fieldPatch | [:component :images :direction |
 component handleExceptionsIn: [
 | normalize before after result |
 (images isArray and: [images size = 2])
   ifFalse: [component error: 'Original SG before/after snapshots required'].
 normalize := [:snapshots | | normalized |
   (snapshots class == IdentityDictionary and: [snapshots size <= 16384])
     ifFalse: [component error: 'Bounded original SG identity snapshots required'].
   normalized := IdentityDictionary new.
   snapshots keysAndValuesDo: [:object :entry | | kind names saved schema |
     (entry isArray and: [entry size = 3])
       ifFalse: [component error: 'Exact retained SG snapshot shape required'].
     kind := entry first. names := entry second. saved := entry last.
     (#('fields' 'value' 'collection' 'boundary') includes: kind)
       ifFalse: [component error: 'Unknown retained SG snapshot kind'].
     names isArray ifFalse: [component error: 'Exact SG field-name array required'].
     kind = 'fields' ifTrue: [
       schema := (object class allInstVarNames collect: [:name | name asString]) asArray.
       (object class isVariable not and: [names = schema and: [
         names size <= 512 and: [saved isArray and: [saved size = object class instSize]]]])
         ifFalse: [component error: 'Original SG field schema changed']
     ] ifFalse: [names isEmpty ifFalse: [component error: 'Nonfield SG snapshot claims a field schema']].
     kind = 'boundary' ifTrue: [saved isNil
       ifFalse: [component error: 'Opaque SG boundary cannot claim a mutable image']].
     kind = 'value' ifTrue: [
       ((object isString or: [object isKindOf: ByteArray]) and: [saved class == object class and: [saved size <= 4194304]])
         ifFalse: [component error: 'Exact retained SG indexed value required']].
     kind = 'collection' ifTrue: [
       (#('Array' 'OrderedCollection' 'Dictionary' 'IdentityDictionary' 'Set' 'IdentitySet') includes: object class name asString)
         ifFalse: [component error: 'Unsupported SG collection cannot enter the field planner'].
       (saved class == object class and: [saved size <= 16384])
         ifFalse: [component error: 'Exact retained SG collection image required']].
     normalized at: object put: (Array with: kind with: saved)
   ]. normalized
 ].
 before := normalize value: images first. after := normalize value: images last.
 before keysAndValuesDo: [:object :entry | | terminal original |
   terminal := after at: object ifAbsent: [component error: 'Original retained SG object missing from after'].
   original := images first at: object.
   ((entry first = terminal first) and: [original second = (images last at: object) second])
     ifFalse: [component error: 'Original SG image kind/schema changed across edit']].
 result := fieldPatch value: component value: (Array with: before with: after) value: direction.
 (result isKindOf: Dictionary) ifFalse: [component error: result asString].
 result at: 'registered_model_patch_profile' put: 'native_registered_model_patch_v1';
   at: 'registered_model_objects_before' put: before size; at: 'registered_model_objects_after' put: after size;
   at: 'full_model_transitive_closure' put: false; at: 'cache_membership_restored' put: false;
   at: 'persistent_records_restored' put: false; at: 'production_inverse_authorized' put: false.
 result
 ] ifFail: [:error | 'BDE_REGISTERED_MODEL_PATCH_ERROR: ', error messageText]
]]
