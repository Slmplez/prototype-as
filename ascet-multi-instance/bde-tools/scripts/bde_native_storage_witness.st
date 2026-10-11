[:sourceDump | [:component :clone :image |
 component handleExceptionsIn: [
 | checkpoint memo members expected observations visit add ids export report calls seen mappedScopes reverse expectedKeys storedKeys rows result certificate observationCertificates rowCertificates verify |
 (clone isKindOf: Dictionary) ifFalse: [component error: 'Exact private clone required for storage witnesses'].
 checkpoint := clone at: 'originalCheckpoint'.
 (((clone at: 'verifyCorrespondence') value: clone) and: [(checkpoint at: 'verifyCurrent') value])
   ifFalse: [component error: 'Current native lineage required for storage witnesses'].
 (checkpoint at: 'owner') == component item ifFalse: [component error: 'Storage witness owner changed'].
 memo := clone at: 'memo'. members := clone at: 'nativeByKey'.
 reverse := IdentityDictionary new. members keysAndValuesDo: [:key :member | reverse at: member put: key].
 mappedScopes := IdentityDictionary new.
 (checkpoint at: 'scopeParentWrappers') keysAndValuesDo: [:scope :wrapper |
   mappedScopes at: (memo at: wrapper) put: scope].
 expected := OrderedCollection new. expectedKeys := Set new.
 (checkpoint at: 'scopes') do: [:scope |
   (scope at: 'entries') do: [:entry | (entry at: 'kind') = 'pin' ifFalse: [| key |
     key := (scope at: 'diagram'), '/', (entry at: 'ref').
     (expectedKeys includes: key) ifTrue: [component error: 'Duplicate storage witness member key'].
     expectedKeys add: key.
     expected add: (Dictionary new at: 'scope' put: (scope at: 'diagram');
       at: 'native_key' put: key; at: 'native_class' put: (entry at: 'native_class');
       at: 'kind' put: (entry at: 'kind'); yourself)
   ]]
 ].
 observations := OrderedCollection new. seen := Set new. storedKeys := Set new. calls := 0.
 add := [:native :storage :context | | key scope cohort origin parent kind |
   scope := context first. cohort := context at: 2. origin := context at: 3. parent := context last.
   observations size >= 100000 ifTrue: [component error: 'Storage witness object bound exceeded'].
   storage isNil ifTrue: [component error: 'Nil storage return cannot claim complete runtime lineage'].
   key := cohort = 'graphicBlock' ifTrue: [nil] ifFalse: [
     reverse at: native ifAbsent: [component error: 'Unkeyed storage return cannot claim member lineage']].
   kind := cohort = 'graphicBlock' ifTrue: ['scope_root'] ifFalse: [cohort = 'connections' ifTrue: ['edge'] ifFalse: ['node']].
   key notNil ifTrue: [
     (storedKeys includes: key) ifTrue: [component error: 'Repeated runtime storage witness'].
     storedKeys add: key].
   observations add: (Array with: native with: storage with: (Dictionary new
     at: 'scope' put: scope; at: 'cohort' put: cohort; at: 'origin' put: origin;
     at: 'kind' put: kind; at: 'native_key' put: key; at: 'native_class' put: native class name asString;
     at: 'storage_class' put: storage class name asString; yourself) with: parent).
   storage
 ].
 "Replay the audited wrapper/diagram storage statements, observing each native return exactly once."
 visit := [:wrapper :target :depth | | scope manager basic blocks connections others collect |
   depth > 16 ifTrue: [component error: 'Storage witness hierarchy depth bound exceeded'].
   scope := mappedScopes at: wrapper ifAbsent: [component error: 'Exact native storage scope unavailable'].
   (seen includes: scope) ifTrue: [component error: 'Repeated native storage scope'].
   seen size >= 64 ifTrue: [component error: 'Storage witness scope bound exceeded'].
   seen add: scope. manager := wrapper contents.
   basic := wrapper basicGraphObject storageObject. calls := calls + 1.
   target graphicBlock: (add value: wrapper basicGraphObject value: basic value: (Array with: scope with: 'graphicBlock' with: 'native_storage_return' with: target)).
   collect := [:children :cohort | children collect: [:child | | storage origin |
     child manager == manager ifFalse: [component error: 'Native storage parent identity changed'].
     (child isKindOf: SGHierarchyWrapperGO) ifTrue: [
       cohort = 'blocks' ifFalse: [component error: 'Hierarchy outside native blocks cohort'].
       storage := SGGraphicsBlockDB create. origin := 'audited_hierarchy_storage'.
       visit value: child value: storage value: depth + 1
     ] ifFalse: [storage := child storageObject. calls := calls + 1. origin := 'native_storage_return'].
     add value: child value: storage value: (Array with: scope with: cohort with: origin with: target)
   ]].
   blocks := (collect value: manager blockChildren value: 'blocks') asArray.
   target blocks: blocks.
   connections := (collect value: manager connectionChildren value: 'connections') asArray.
   target connections: connections.
   others := (collect value: manager otherChildren value: 'others') asArray.
   target others: others
 ].
 visit value: (clone at: 'root') value: image value: 0.
 (seen size = mappedScopes size and: [storedKeys = expectedKeys])
   ifFalse: [component error: 'Storage witnesses do not cover every native scope/member'].
 export := sourceDump value: component value: (Array with: image with: 'native_reference_ids').
 (export at: 'profile') = 'native_source_reference_ids_v1'
   ifFalse: [component error: 'Exact native source reference map required'].
 ids := export at: 'ids'.
 rows := observations collect: [:observation | | row |
   row := observation at: 3.
   row at: 'source_ref' put: (ids at: (observation at: 2) ifAbsent: [component error: 'Actual storage return is not in the complete source']);
     at: 'parent_ref' put: (ids at: observation last ifAbsent: [component error: 'Actual storage parent is not in the complete source']);
     at: 'native_parent_verified' put: true. row].
 (((clone at: 'verifyCorrespondence') value: clone) and: [(checkpoint at: 'verifyCurrent') value])
   ifFalse: [component error: 'Live native lineage changed during private storage witness generation'].
 report := Dictionary new at: 'profile' put: 'native_storage_return_witness_v1';
   at: 'oid' put: component getOID; at: 'generation' put: (checkpoint at: 'generation');
   at: 'scope_count' put: seen size; at: 'member_count' put: expected size;
   at: 'native_storage_return_calls' put: calls; at: 'expected_members' put: expected asArray;
   at: 'witnesses' put: rows asArray; at: 'source_graph' put: (export at: 'graph');
   at: 'complete_native_members' put: true; at: 'live_original_unchanged' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
 result := Dictionary new at: 'profile' put: 'native_private_storage_witness_v1'; at: 'report' put: report;
   at: 'source' put: image; at: 'observations' put: observations; yourself.
 observationCertificates := observations collect: [:entry | Array with: entry with: entry copy].
 rowCertificates := observations collect: [:entry | (entry at: 3) copy].
 "Protect actual native pairs within this capture, without requiring obsolete live graphs to be current."
 verify := [:candidate | | matches |
   matches := candidate == result and: [candidate size = certificate size].
   matches := matches and: [certificate keys allSatisfy: [:field |
     (candidate at: field ifAbsent: [nil]) == (certificate at: field)]].
   matches := matches and: [observations size = observationCertificates size and: [
     (report at: 'witnesses') size = observationCertificates size]].
   matches := matches and: [(1 to: observationCertificates size) allSatisfy: [:slot | | entry original frozen row rowCopy |
     entry := observations at: slot. original := (observationCertificates at: slot) first.
     frozen := (observationCertificates at: slot) last. rowCopy := rowCertificates at: slot.
     entry == original and: [entry size = 4 and: [
       ((1 to: 4) allSatisfy: [:index | (entry at: index) == (frozen at: index)]) and: [
       row := entry at: 3.
       row == ((report at: 'witnesses') at: slot) and: [row size = rowCopy size and: [
         rowCopy keys allSatisfy: [:field | (row at: field ifAbsent: [nil]) == (rowCopy at: field)]]]]]]
   ]].
   matches and: [(clone at: 'verifyCorrespondence') value: clone]
 ].
 result at: 'verifyBindings' put: verify. certificate := result copy.
 (verify value: result) ifFalse: [component error: 'Native storage binding seal differs at capture'].
 report at: 'native_bindings_sealed' put: true.
 result
 ] ifFail: [:error | 'BDE_STORAGE_WITNESS_ERROR: ', error messageText]
]]
