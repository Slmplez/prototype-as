"Joint logical membership/direct field inverse; fixed retained original images only.
 No Store/Commit, raw hash restore, backend recovery or production authority."
[:helpers | [:component :context :direction |
 component handleExceptionsIn: [
 | membership fields guard progress execute result allowed validate image cover |
 (helpers isArray and: [helpers size = 2 and: [context isArray and: [context size = 5]]])
   ifFalse: [component error: 'Fixed cache membership and original direct-field helpers/images required'].
 allowed := #('DBCacheObject' 'DBObject' 'DBProxy').
 validate := [:images | (images class == IdentityDictionary and: [images size <= 8192])
   ifFalse: [component error: 'Complete bounded retained cache direct images required'].
   images keysAndValuesDo: [:object :entry |
     ((allowed includes: object class name asString) and: [entry isArray and: [entry size = 3 and: [entry first = 'fields']]])
       ifFalse: [component error: 'Unaudited cache direct image type/kind'].
     "Membership keys are guarded byte values, never writable table internals."
     ((object class allInstVarNames collect: [:name | name asString]) includes: 'objects')
       ifTrue: [component error: 'Cache table internals cannot enter direct field executor']]].
 validate value: (context at: 4). validate value: context last.
 cover := [:members :images | members do: [:triple | | entry names shell shellNames proxy |
   entry := images at: triple last ifAbsent: [component error: 'Retained member lacks original direct entry image'].
   names := entry second.
   names = (triple last class allInstVarNames collect: [:name | name asString]) asArray
     ifFalse: [component error: 'Exact retained cache entry schema required'].
   shell := entry last at: (names indexOf: 'object').
   shellNames := (shell class allInstVarNames collect: [:name | name asString]) asArray.
   (shellNames includes: 'dbObject') ifFalse: [component error: 'Separate cache shell proxy profile required'].
   proxy := shell instVarAt: (shellNames indexOf: 'dbObject').
   (images includesKey: proxy) ifFalse: [component error: 'Original dirty proxy image unavailable; no CURRENT promotion']]].
 cover value: (context at: 2) value: (context at: 4). cover value: (context at: 3) value: context last.
 membership := helpers first value: component
   value: (Array with: context first with: (context at: 2) with: (context at: 3)) value: direction.
 fields := helpers last value: component value: (Array with: (context at: 4) with: context last) value: direction.
 ((membership isKindOf: Dictionary) and: [fields isKindOf: Dictionary])
   ifFalse: [component error: 'Joint cache patch preparation failed: ', membership printString, '/', fields printString].
 guard := [(membership at: 'verifyBeforeApply') value and: [(fields at: 'verifyBeforeApply') value]].
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_primitives' put: 0;
   at: 'membership_primitives' put: 0; at: 'field_primitives' put: 0;
   at: 'cell_count' put: (((membership at: 'progress') at: 'cell_count') + ((fields at: 'progress') at: 'cell_count')); yourself.
 execute := [| count |
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Joint cache executor cannot replay'].
   guard value ifFalse: [component error: 'Joint cache conflict; zero dispatch'].
   progress at: 'state' put: 'started'.
   "Membership does not mutate entry/proxy fields; all guards precede the first write."
   count := (membership at: 'execute') value. progress at: 'membership_primitives' put: count; at: 'completed_primitives' put: count.
   count := (fields at: 'execute') value. progress at: 'field_primitives' put: count;
     at: 'completed_primitives' put: (progress at: 'completed_primitives') + count.
   ((membership at: 'verifyDesired') value and: [(fields at: 'verifyDesired') value])
     ifFalse: [component error: 'Joint cache terminal mismatch; retain partial actual'].
   progress at: 'state' put: 'applied'. progress at: 'completed_primitives'].
 result := Dictionary new at: 'profile' put: 'native_cache_state_patch_v1'; at: 'progress' put: progress;
   at: 'verifyBeforeApply' put: guard; at: 'execute' put: execute;
   at: 'verifyDesired' put: [(membership at: 'verifyDesired') value and: [(fields at: 'verifyDesired') value]];
   at: 'membership_progress' put: (membership at: 'progress'); at: 'field_progress' put: (fields at: 'progress');
   at: 'store_called' put: false; at: 'commit_called' put: false; at: 'production_inverse_authorized' put: false;
   at: 'full_commit_resource_closure' put: false; yourself. result
 ] ifFail: [:error | 'BDE_CACHE_STATE_PATCH_ERROR: ', error messageText]
]]
