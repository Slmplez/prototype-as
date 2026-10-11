[:planner :bindings :signature | [:configuration :detached | [:definition | [:component :action :token |
 component handleExceptionsIn: [
 | roots materials candidates key candidateKey record registry material planned native same copy baseline snapshots currentBindings signatureText configurationText definitionConfiguration export exportText certificate verifyRecord verifyCurrent originalBindings selector owner definitionOwner result negatives wrong refuse pinPolicy pinResult reused |
 (#('prepare' 'inspect' 'audit' 'release' 'status') includes: action)
   ifFalse: [component error: 'Exact candidate lifecycle action required'].
 (token isString and: [token size = 69 and: [(token copyFrom: 1 to: 5) = 'cand_' and: [
   (token copyFrom: 6 to: 69) allSatisfy: [:character | '0123456789abcdef' includes: character]]]])
   ifFalse: [component error: 'Canonical candidate token required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated candidate owner required'].
 (definition isClass and: [(definition getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   definition getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_']])
   ifFalse: [component error: 'Isolated candidate Class required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 materials := Smalltalk at: #DogeBDEClassMaterializeV1.
 candidates := Smalltalk at: #DogeBDEClassSourceCandidatesV1 ifAbsentPut: [Dictionary new].
 key := component getOID, '/Main'. candidateKey := token, '/', key.
 reused := action = 'prepare' and: [candidates includesKey: candidateKey].
 action = 'prepare' ifTrue: [(candidates includesKey: candidateKey) ifFalse: [
   candidates size >= 8 ifTrue: [component error: 'Native candidate capacity reached'].
   planned := planner value: component value: 'candidate_native'.
   (planned isKindOf: Dictionary) ifFalse: [component error: planned].
   ((planned at: 'plan') at: 'compatible') ifFalse: [component error: 'Conflicting value candidate cannot be retained'].
   native := planned at: 'native_candidate'. registry := native at: 'registry'. material := native at: 'material'.
   same := registry at: 'sameSource'. copy := registry at: 'copySource'.
   currentBindings := bindings value: component value: 'capture'.
   (currentBindings isKindOf: Dictionary) ifFalse: [component error: currentBindings].
   signatureText := signature value: definition. configurationText := configuration value: component.
   definitionConfiguration := configuration value: definition.
   (Array with: signatureText with: configurationText with: definitionConfiguration) do: [:text |
     (text isString and: [(text startsWith: 'BDE_') not]) ifFalse: [component error: 'Complete native candidate context required']].
   originalBindings := material at: 'originalBindings'. selector := (material at: 'selector') copy.
   owner := component item. definitionOwner := definition item.
   baseline := Dictionary new. snapshots := Dictionary new.
   #('original' 'applied' 'current' 'candidate') do: [:role |
     baseline at: role put: (native at: role). snapshots at: role put: (copy value: (native at: role))].
   export := planned copy. export removeKey: 'native_candidate'.
   exportText := (registry at: 'encodeObservation') value: export.
   record := Dictionary new at: 'profile' put: 'class_source_candidate_v1'; at: 'state' put: 'prepared';
     at: 'token' put: token; at: 'component' put: component getOID; at: 'diagramName' put: 'Main';
     at: 'root' put: registry; at: 'owner' put: owner; at: 'definition' put: definitionOwner;
     at: 'material' put: material; at: 'bindings' put: currentBindings;
     at: 'generation' put: (registry at: 'generation'); at: 'sources' put: baseline;
     at: 'sourcePlan' put: export; yourself.
   certificate := record copy.
   verifyRecord := [:candidate |
     ((candidate isKindOf: Dictionary) and: [
       #('profile' 'state' 'token' 'component' 'diagramName' 'generation') allSatisfy: [:field |
         (candidate at: field ifAbsent: [nil]) = (certificate at: field)]]) and: [
     #('root' 'owner' 'definition' 'material' 'bindings' 'sources' 'sourcePlan') allSatisfy: [:field |
       (candidate at: field ifAbsent: [nil]) == (certificate at: field)]]
   ].
   verifyCurrent := [ | matches |
     matches := (roots at: key ifAbsent: [nil]) == registry.
     matches := matches and: [component item == owner and: [definition item == definitionOwner]].
     matches := matches and: [(materials at: key ifAbsent: [nil]) == material and: [(material at: 'state') = 'applied']].
     matches := matches and: [(material at: 'selector') = selector and: [(material at: 'originalBindings') == originalBindings]].
     matches := matches and: [(originalBindings at: 'verify') value and: [(originalBindings at: 'verifyKeyed') value: originalBindings]].
     matches := matches and: [(detached value: component value: (material at: 'original')) = (material at: 'detachedFields')].
     matches := matches and: [(currentBindings at: 'verifyCurrent') value].
     matches := matches and: [same value: ((material at: 'originalRegistry') at: 'checkpoint') value: (snapshots at: 'original')].
     matches := matches and: [same value: (material at: 'afterSource') value: (snapshots at: 'applied')].
     matches := matches and: [same value: (registry at: 'checkpoint') value: (snapshots at: 'current')].
     matches := matches and: [#('original' 'applied' 'current' 'candidate') allSatisfy: [:role |
       (baseline at: role) == (native at: role) and: [same value: (baseline at: role) value: (snapshots at: role)]]].
     matches := matches and: [((registry at: 'encodeObservation') value: export) = exportText].
     matches := matches and: [(signature value: definition) = signatureText].
     matches := matches and: [(configuration value: component) = configurationText].
     matches and: [(configuration value: definition) = definitionConfiguration]
   ].
   record at: 'verifyRecord' put: verifyRecord; at: 'verifyCurrent' put: verifyCurrent;
     at: 'verifySources' put: [#('original' 'applied' 'current' 'candidate') allSatisfy: [:role |
       same value: (baseline at: role) value: (snapshots at: role)]].
   (verifyCurrent value and: [verifyRecord value: record])
     ifFalse: [component error: 'Native candidate changed during preparation'].
   candidates at: candidateKey put: record
 ]].
 record := candidates at: candidateKey ifAbsent: [nil].
 action = 'status' ifTrue: [
   result := Dictionary new at: 'profile' put: 'class_source_candidate_v1';
     at: 'state' put: (record isNil ifTrue: ['absent'] ifFalse: [record at: 'state']);
     at: 'action' put: action; at: 'token' put: token; at: 'oid' put: component getOID;
     at: 'definition_oid' put: definition getOID;
     at: 'generation' put: (record isNil ifTrue: [(roots at: key) at: 'generation'] ifFalse: [record at: 'generation']);
     at: 'candidate_present' put: record notNil;
     at: 'model_setters_called' put: 0; at: 'store_called' put: false;
     at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
   record notNil ifTrue: [
     ((record at: 'owner') == component item and: [(record at: 'definition') == definition item])
       ifFalse: [component error: 'Candidate status owner changed']]
 ] ifFalse: [
 record isNil ifTrue: [component error: 'Native candidate absent'].
 ((record at: 'token') = token and: [(record at: 'component') = component getOID and: [
   (record at: 'owner') == component item and: [(record at: 'definition') == definition item]]])
   ifFalse: [component error: 'Native candidate belongs to another owner or Class'].
 ((record at: 'verifyRecord') value: record) ifFalse: [component error: 'Native candidate metadata changed'].
 action = 'release' ifTrue: [
   (record includesKey: 'currentCommittedEdit')
     ifTrue: [component error: 'Committed CURRENT edit owns this exact native material'].
   candidates removeKey: candidateKey.
   result := Dictionary new at: 'profile' put: 'class_source_candidate_v1'; at: 'state' put: 'released';
     at: 'action' put: action; at: 'token' put: token; at: 'oid' put: component getOID;
     at: 'definition_oid' put: definition getOID; at: 'generation' put: (record at: 'generation');
     at: 'model_setters_called' put: 0; at: 'store_called' put: false;
     at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself
 ] ifFalse: [
   (record at: 'verifyCurrent') value ifFalse: [component error: 'Native candidate current baseline changed'].
   pinPolicy := Smalltalk at: #DogeBDEStructureScopePinsV1.
   pinResult := pinPolicy value: roots value: (Dictionary new at: 'DogeBDEClassSourceCandidatesV1' put: candidates; yourself).
   ((pinResult at: 'pins') at: key) isEmpty ifTrue: [component error: 'Prepared candidate scope is not pinned'].
   negatives := 0.
   action = 'audit' ifTrue: [
     refuse := [:candidate | ((record at: 'verifyRecord') value: candidate)
       ifTrue: [component error: 'Altered copied candidate witness accepted']. negatives := negatives + 1].
     #('root' 'owner' 'definition' 'material' 'bindings' 'sources' 'sourcePlan') do: [:field |
       wrong := record copy. wrong at: field put: nil. refuse value: wrong].
     #('profile' 'state' 'token' 'component' 'diagramName' 'generation') do: [:field |
       wrong := record copy. wrong at: field put: nil. refuse value: wrong].
     (record at: 'verifyCurrent') value ifFalse: [component error: 'Candidate audit changed current state']
   ].
   result := Dictionary new at: 'profile' put: 'class_source_candidate_v1'; at: 'state' put: 'prepared';
     at: 'action' put: action; at: 'token' put: token; at: 'oid' put: component getOID;
     at: 'definition_oid' put: definition getOID; at: 'generation' put: (record at: 'generation');
     at: 'native_object_count' put: ((record at: 'bindings') at: 'objects') size;
     at: 'native_collection_count' put: ((record at: 'bindings') at: 'collectionCount');
     at: 'private_negative_count' put: negatives; at: 'source_plan' put: (record at: 'sourcePlan');
     at: 'preparation_reused' put: reused;
     at: 'scope_pinned' put: true;
     at: 'current_baseline_verified' put: true; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
     at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself
 ]].
 (((record isNil ifTrue: [roots at: key] ifFalse: [record at: 'root'])) at: 'encodeObservation') value: result
 ] ifFail: [:error | 'BDE_CLASS_SOURCE_CANDIDATE_ERROR: ', error messageText]
]]]]
