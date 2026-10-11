[:patchReader :sourceDump :detached | [:signature :configuration :discovery | [:definition :nativeSignature | [:component :token :requestedAction |
 | stage |
 stage := 'request'.
 component handleExceptionsIn: [
 | groups candidates roots group entries entry key candidate study method same copy sameObjects check initialVerify currentVerify result source row stores restoreRegistry classifications readSignature publicSignature nativeSignatureText contextReport releaseWitness releasePhase releaseSteps releaseEntries releaseContexts releaseHolder action commitId commitChecksum commitRecord commitSeal verifyPublished |
 action := requestedAction. commitId := nil. commitChecksum := nil.
 (action startsWith: 'retain_commit/') ifTrue: [
   (action size = 148 and: [(action at: 84) = $/])
     ifFalse: [component error: 'Exact CURRENT committed edit binding required'].
   commitId := action copyFrom: 15 to: 83. commitChecksum := action copyFrom: 85 to: 148.
   ((commitId copyFrom: 1 to: 5) = 'edit_' and: [
     ((commitId copyFrom: 6 to: 69), commitChecksum) allSatisfy: [:char | '0123456789abcdef' includes: char]])
       ifFalse: [component error: 'Canonical CURRENT commit id/checksum required'].
   action := 'retain_commit'
 ].
 readSignature := [ | public native |
   public := signature value: definition. native := nativeSignature value: definition.
   (native isString and: [(native startsWith: 'BDE_') not])
     ifFalse: [component error: 'Complete native primitive signature unavailable'].
   public = 'BDE_CLASS_PROBE_ERROR: Formal model type unavailable' ifFalse: [
     public = native ifFalse: [component error: 'Complete public/native signature disagreement']].
   native
 ].
 (#('prepare' 'seal' 'signature_arguments' 'signature_commit' 'publish' 'inspect'
   'restore_signature_arguments' 'restore_signature_commit' 'restore' 'release' 'status' 'abandon'
   'classify' 'reconcile_restore' 'abort_signature_arguments' 'reconcile_untouched' 'retain_commit') includes: action)
     ifFalse: [component error: 'Unknown fixed model publication action'].
 (token isString and: [token size = 69 and: [(token copyFrom: 1 to: 5) = 'cand_' and: [
   (token copyFrom: 6 to: 69) allSatisfy: [:char | '0123456789abcdef' includes: char]]]])
     ifFalse: [component error: 'Exact model publication candidate token required'].
 (Array with: definition with: component) do: [:owner |
   ((owner getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
     owner getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
       ifFalse: [component error: 'Isolated model publication owner required']].
 groups := Smalltalk at: #DogeBDEClassModelPublicationV1 ifAbsentPut: [Dictionary new].
 candidates := Smalltalk at: #DogeBDEClassSourceCandidatesV1.
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 key := component getOID, '/Main'.
 (action = 'status' and: [(groups includesKey: token) not]) ifTrue: [
   ((roots at: key) at: 'encodeObservation') value: (Dictionary new
     at: 'profile' put: 'class_model_publication_study_v1'; at: 'action' put: action;
     at: 'token' put: token; at: 'oid' put: component getOID; at: 'definition_oid' put: definition getOID;
     at: 'state' put: 'absent'; at: 'owner_state' put: nil; at: 'owner_count' put: 0;
     at: 'model_steps' put: 0; at: 'write_authorized' put: false; at: 'production_executor_available' put: false; yourself)
 ] ifFalse: [
 sameObjects := [:left :right | left size = right size and: [
   (1 to: left size) allSatisfy: [:index | (left at: index) == (right at: index)]]].
 check := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage].
   value == false ifTrue: [component error: 'Model publication store refused']. value].
 action = 'prepare' ifTrue: [
   stage := 'candidate identity'.
   candidate := candidates at: token, '/', key.
   (((candidate at: 'verifyRecord') value: candidate) and: [(candidate at: 'verifyCurrent') value])
     ifFalse: [component error: 'Model publication candidate is stale'].
   (groups includesKey: token) ifFalse: [
     stage := 'signature capture'.
     groups size >= 2 ifTrue: [component error: 'Model publication recovery capacity reached'].
     study := (Smalltalk at: #DogeBDEClassStudyV1) at: definition getOID.
     ((study at: 'kind') = 'create_argument' and: [(study at: 'state') = 'added'])
       ifFalse: [component error: 'Exact applied creation recovery record required'].
     method := study at: 'method'.
     ((method ownerSGClass == definition item and: [(study at: 'created') owner == method]) and: [
       sameObjects value: method arguments value: (study at: 'afterArguments')])
       ifFalse: [component error: 'Retained publication signature identities changed'].
     group := Dictionary new at: 'state' put: 'preparing'; at: 'definition' put: definition item;
       at: 'study' put: study; at: 'method' put: method; at: 'entries' put: Dictionary new;
       at: 'signature' put: readSignature value; at: 'discovery' put: (discovery value: definition);
       at: 'definitionConfiguration' put: (configuration value: definition);
       at: 'beforeArguments' put: (study at: 'arguments') copy;
       at: 'afterArguments' put: method arguments copy; at: 'return' put: method returnValue;
       at: 'model_steps' put: 0; yourself.
     #('signature' 'discovery' 'definitionConfiguration') do: [:field |
       ((group at: field) isString and: [((group at: field) startsWith: 'BDE_') not])
         ifFalse: [component error: 'Complete publication signature/configuration/closure required']].
     groups at: token put: group
   ].
   group := groups at: token.
   (group at: 'state') = 'preparing' ifFalse: [component error: 'Publication preparation cannot replay'].
   entries := group at: 'entries'.
   (entries includesKey: key) ifTrue: [component error: 'Publication owner already prepared'].
   stage := 'retained native patch'.
   row := patchReader value: component value: token.
   (row isKindOf: Dictionary) ifFalse: [component error: row].
   ((row at: 'verifyPatched') value and: [((row at: 'report') at: 'runtime_candidate_matches')])
     ifFalse: [component error: 'Complete retained native patch required'].
   stage := 'current owner material'.
   entry := Dictionary new at: 'state' put: 'prepared'; at: 'owner' put: component item;
     at: 'api' put: component; at: 'candidate' put: candidate; at: 'patch' put: row;
     at: 'registry' put: (candidate at: 'root'); at: 'root' put: (candidate at: 'root');
     at: 'configuration' put: (configuration value: component);
     at: 'currentDiagram' put: ((candidate at: 'bindings') at: 'diagram');
     at: 'scopeRegistries' put: Dictionary new;
     at: 'stores' put: 0; at: 'restoreStores' put: 0; yourself.
   stage := 'scope registry capture'.
   roots keysAndValuesDo: [:scopeKey :registry | ((registry at: 'owner' ifAbsent: [nil]) == component item)
     ifTrue: [(entry at: 'scopeRegistries') at: scopeKey put: (Array with: registry with: registry copy)]].
   (((entry at: 'configuration') isString) and: [((entry at: 'configuration') startsWith: 'BDE_') not])
     ifFalse: [component error: 'Complete publication owner configuration required'].
   entries at: key put: entry
 ].
 releaseWitness := nil.
 group := groups at: token ifAbsent: [nil].
 group isNil ifTrue: [
   action = 'classify' ifFalse: [component error: 'Model publication recovery record absent'].
   releaseHolder := candidates at: token, '/', key ifAbsent: [component error: 'Released CURRENT candidate absent'].
   releaseWitness := releaseHolder at: 'currentReleaseWitness' ifAbsent: [component error: 'Fresh CURRENT release witness absent'].
   (releaseWitness at: 'verify') value ifFalse: [component error: 'Released CURRENT complete baseline changed'].
   group := releaseWitness at: 'group'
 ].
 stage := action.
 (group at: 'definition') == definition item ifFalse: [component error: 'Publication Class owner changed'].
 entries := group at: 'entries'. method := group at: 'method'. study := group at: 'study'.
 entry := entries at: key ifAbsent: [nil].
 initialVerify := [ | verified |
   verified := readSignature value = (group at: 'signature').
   verified := verified and: [(discovery value: definition) = (group at: 'discovery')].
   verified := verified and: [(configuration value: definition) = (group at: 'definitionConfiguration')].
   verified := verified and: [sameObjects value: method arguments value: (group at: 'afterArguments')].
   verified := verified and: [method returnValue == (group at: 'return')].
   verified and: [entries values allSatisfy: [:item | | held owner memberMatches |
     held := item at: 'candidate'. owner := item at: 'api'.
     memberMatches := (held at: 'verifyRecord') value: held.
     memberMatches := memberMatches and: [(held at: 'verifyCurrent') value].
     memberMatches := memberMatches and: [(item at: 'owner') == owner item].
     memberMatches := memberMatches and: [(configuration value: owner) = (item at: 'configuration')].
     memberMatches := memberMatches and: [(detached value: owner value: (item at: 'currentDiagram')) = ((item at: 'patch') at: 'currentFields')].
     (#('preparing' 'ready') includes: (group at: 'state')) ifTrue: [
       memberMatches := memberMatches and: [((item at: 'patch') at: 'verifyPatched') value]].
     memberMatches]]
 ].
 currentVerify := [:item :role | | held registry |
   held := item at: 'candidate'. registry := item at: 'registry'.
   (item at: 'owner') == (item at: 'api') item and: [
     (configuration value: (item at: 'api')) = (item at: 'configuration') and: [
       (registry at: 'sameSource') value: (item at: 'currentDiagram') specification specSourceInternalOrNil
         value: ((held at: 'sources') at: role)]]
 ].
 contextReport := [:focus :focusRole | | phase signatureRole arguments expectedSignature actualSignature ownerReports report |
   phase := group at: 'state'.
   signatureRole := (#('ready' 'restore_signature_arguments_set' 'restoring' 'restored') includes: phase) ifTrue: ['current'] ifFalse: [
     (#('signature_arguments_set' 'publishing' 'published') includes: phase) ifTrue: ['candidate'] ifFalse: [nil]].
   arguments := signatureRole = 'candidate' ifTrue: [group at: 'beforeArguments'] ifFalse: [group at: 'afterArguments'].
   expectedSignature := signatureRole = 'candidate'
     ifTrue: [group at: 'candidateSignature' ifAbsent: [nil]] ifFalse: [group at: 'signature'].
   actualSignature := readSignature value.
   ownerReports := entries values collect: [:item | | role currentMatches candidateMatches member |
     role := item == focus ifTrue: [focusRole] ifFalse: [
       (item at: 'state') = 'prepared' ifTrue: ['current'] ifFalse: [
       (item at: 'state') = 'published' ifTrue: ['candidate'] ifFalse: [
       (#('source_restored' 'restored') includes: (item at: 'state')) ifTrue: ['current'] ifFalse: [nil]]]].
     currentMatches := currentVerify value: item value: 'current'.
     candidateMatches := currentVerify value: item value: 'candidate'.
     member := Dictionary new at: 'oid' put: (item at: 'api') getOID;
       at: 'owner_state' put: (item at: 'state'); at: 'required_source_role' put: role;
       at: 'owner_identity_matches' put: ((item at: 'owner') == (item at: 'api') item);
       at: 'configuration_matches' put: ((configuration value: (item at: 'api')) = (item at: 'configuration'));
       at: 'candidate_material_sealed' put: ((((item at: 'candidate') at: 'verifyRecord') value: (item at: 'candidate'))
         and: [((item at: 'candidate') at: 'verifySources') value]);
       at: 'current_source_matches' put: currentMatches; at: 'candidate_source_matches' put: candidateMatches;
       at: 'required_source_matches' put: (role = 'current' ifTrue: [currentMatches] ifFalse: [
         role = 'candidate' ifTrue: [candidateMatches] ifFalse: [
         role = 'either' ifTrue: [currentMatches or: [candidateMatches]] ifFalse: [false]]]); yourself.
     member at: 'matches' put: (#('owner_identity_matches' 'configuration_matches' 'candidate_material_sealed' 'required_source_matches')
       allSatisfy: [:field | member at: field]). member].
   report := Dictionary new at: 'profile' put: 'class_current_context_guard_v1';
     at: 'definition_oid' put: definition getOID; at: 'group_state' put: phase;
     at: 'signature_role' put: signatureRole; at: 'owner_count' put: entries size;
     at: 'definition_identity_matches' put: ((group at: 'definition') == definition item and: [method ownerSGClass == definition item]);
     at: 'argument_identities_match' put: (sameObjects value: method arguments value: arguments);
     at: 'return_identity_matches' put: (method returnValue == (group at: 'return'));
     at: 'complete_signature_matches' put: (signatureRole notNil and: [actualSignature = expectedSignature]);
     at: 'definition_configuration_matches' put: ((configuration value: definition) = (group at: 'definitionConfiguration'));
     at: 'owners' put: ownerReports asArray; at: 'model_setters_called' put: 0; yourself.
   report at: 'matches' put: ((#('definition_identity_matches' 'argument_identities_match' 'return_identity_matches'
     'complete_signature_matches' 'definition_configuration_matches') allSatisfy: [:field | report at: field])
       and: [ownerReports allSatisfy: [:member | member at: 'matches']]). report
 ].
 restoreRegistry := [:item |
   (item at: 'scopeRegistries') keysAndValuesDo: [:scopeKey :saved | | registry |
     registry := saved first.
     registry keys asArray do: [:field | registry removeKey: field].
     saved last keysAndValuesDo: [:field :value | registry at: field put: value].
     roots at: scopeKey put: registry].
   item at: 'state' put: 'restored'.
   (entries values allSatisfy: [:member | (member at: 'state') = 'restored']) ifTrue: [
     initialVerify value ifFalse: [component error: 'Publication complete current context not restored'].
     group at: 'state' put: 'restored']
 ].
 action = 'reconcile_restore' ifTrue: [
   ((group at: 'state') = 'restoring' and: [entry notNil and: [
     #('restore_started' 'source_restored') includes: (entry at: 'state')]])
       ifFalse: [component error: 'Only the exact interrupted current-source restoration can be reconciled'].
   ((sameObjects value: method arguments value: (group at: 'afterArguments')) and: [
     method returnValue == (group at: 'return') and: [currentVerify value: entry value: 'current']])
       ifFalse: [component error: 'Read-only restoration classification conflicts'].
   restoreRegistry value: entry
 ].
 action = 'reconcile_untouched' ifTrue: [
   ((group at: 'state') = 'restoring' and: [entry notNil and: [
     (entry at: 'state') = 'prepared' and: [(entry at: 'stores') = 0]]])
       ifFalse: [component error: 'Only an exact unpublished owner can be reconciled'].
   ((sameObjects value: method arguments value: (group at: 'afterArguments')) and: [
     method returnValue == (group at: 'return') and: [currentVerify value: entry value: 'current']])
       ifFalse: [component error: 'Unpublished owner current source changed'].
   restoreRegistry value: entry
 ].
 action = 'seal' ifTrue: [
   (component item == definition item and: [(group at: 'state') = 'preparing'])
     ifFalse: [component error: 'Only the exact Class can seal publication'].
   entries size = (candidates keys select: [:name | name startsWith: token, '/']) size
     ifFalse: [component error: 'Full prepared candidate owner roster required'].
   (entries includesKey: definition getOID, '/Main') ifFalse: [component error: 'Publication definition graph missing'].
   initialVerify value ifFalse: [component error: 'Publication context changed before model dispatch'].
   group at: 'state' put: 'ready'; at: 'currentContext' put: contextReport
 ].
 action = 'signature_arguments' ifTrue: [
   (component item == definition item and: [(group at: 'state') = 'ready' and: [initialVerify value]])
     ifFalse: [component error: 'Publication signature precondition changed'].
   group at: 'state' put: 'signature_arguments_started'.
   method arguments: (group at: 'beforeArguments') copy.
   group at: 'candidateSignature' put: readSignature value.
   group at: 'model_steps' put: (group at: 'model_steps') + 1; at: 'state' put: 'signature_arguments_set'
 ].
 action = 'signature_commit' ifTrue: [
   ((group at: 'state') = 'signature_arguments_set' and: [
     sameObjects value: method arguments value: (group at: 'beforeArguments')])
       ifFalse: [component error: 'Publication signature commit precondition changed'].
   group at: 'state' put: 'signature_commit_started'.
   method modified. (study at: 'api') autoCommitDatabase.
   group at: 'model_steps' put: (group at: 'model_steps') + 1; at: 'state' put: 'publishing'
 ].
 action = 'publish' ifTrue: [
   ((group at: 'state') = 'publishing' and: [entry notNil and: [(entry at: 'state') = 'prepared']])
     ifFalse: [component error: 'Publication owner cannot replay'].
   ((sameObjects value: method arguments value: (group at: 'beforeArguments')) and: [
     (currentVerify value: entry value: 'current') and: [((entry at: 'patch') at: 'verifyPatched') value]])
       ifFalse: [component error: 'Publication owner source/signature/patch conflict'].
   entry at: 'state' put: 'publish_started'.
   (((entry at: 'patch') at: 'report') at: 'no_graphical_target_required') ifFalse: [
     check value: (((entry at: 'patch') at: 'clone') at: 'diagram') storeToCache.
     entry at: 'stores' put: 1. group at: 'model_steps' put: (group at: 'model_steps') + 1].
   (currentVerify value: entry value: 'candidate') ifFalse: [component error: 'Published complete source differs from merged candidate'].
   entry at: 'state' put: 'published'
 ].
 action = 'inspect' ifTrue: [
   ((group at: 'state') = 'publishing' and: [entries values allSatisfy: [:item |
     (item at: 'state') = 'published' and: [currentVerify value: item value: 'candidate']]])
       ifFalse: [component error: 'Publication full source roster is incomplete'].
   group at: 'publishedSignature' put: readSignature value; at: 'state' put: 'published'
 ].
 action = 'restore_signature_arguments' ifTrue: [
   ((group at: 'state') = 'published' and: [
     sameObjects value: method arguments value: (group at: 'beforeArguments')])
       ifFalse: [component error: 'Publication signature recovery conflict'].
   (entries values allSatisfy: [:item | currentVerify value: item value: 'candidate'])
     ifFalse: [component error: 'Published sources changed before recovery'].
   group at: 'state' put: 'restore_signature_arguments_started'.
   method arguments: (group at: 'afterArguments') copy.
   group at: 'model_steps' put: (group at: 'model_steps') + 1; at: 'state' put: 'restore_signature_arguments_set'
 ].
 action = 'abort_signature_arguments' ifTrue: [
   ((#('signature_arguments_set' 'publishing' 'published') includes: (group at: 'state')) and: [
     sameObjects value: method arguments value: (group at: 'beforeArguments')])
       ifFalse: [component error: 'Publication abort signature cannot be classified'].
   ((readSignature value = (group at: 'candidateSignature')) and: [
     (configuration value: definition) = (group at: 'definitionConfiguration') and: [
       method returnValue == (group at: 'return')]])
       ifFalse: [component error: 'Publication abort full signature or configuration changed'].
   (entries values allSatisfy: [:item | | role |
     role := (item at: 'state') = 'prepared' ifTrue: ['current'] ifFalse: [
       (item at: 'state') = 'published' ifTrue: ['candidate'] ifFalse: [nil]].
     role notNil and: [currentVerify value: item value: role]])
       ifFalse: [component error: 'Publication abort owner sources cannot be classified'].
   group at: 'state' put: 'restore_signature_arguments_started'.
   method arguments: (group at: 'afterArguments') copy.
   group at: 'model_steps' put: (group at: 'model_steps') + 1; at: 'state' put: 'restore_signature_arguments_set'
 ].
 action = 'restore_signature_commit' ifTrue: [
   ((group at: 'state') = 'restore_signature_arguments_set' and: [
     sameObjects value: method arguments value: (group at: 'afterArguments')])
       ifFalse: [component error: 'Publication signature recovery commit conflict'].
   group at: 'state' put: 'restore_signature_commit_started'.
   method modified. (study at: 'api') autoCommitDatabase.
   group at: 'model_steps' put: (group at: 'model_steps') + 1; at: 'state' put: 'restoring'
 ].
 action = 'restore' ifTrue: [
   ((group at: 'state') = 'restoring' and: [entry notNil and: [(entry at: 'state') = 'published']])
     ifFalse: [component error: 'Publication owner recovery cannot replay'].
   (currentVerify value: entry value: 'candidate') ifFalse: [component error: 'Publication inverse source conflict'].
   entry at: 'state' put: 'restore_started'.
   (entry at: 'stores') = 1 ifTrue: [
     check value: (entry at: 'currentDiagram') storeToCache.
     entry at: 'restoreStores' put: 1. group at: 'model_steps' put: (group at: 'model_steps') + 1].
   (currentVerify value: entry value: 'current') ifFalse: [component error: 'Publication current source not restored'].
   entry at: 'state' put: 'source_restored'.
   restoreRegistry value: entry
 ].
 verifyPublished := [ | verified |
   verified := (group at: 'state') = 'published'.
   verified := verified and: [(contextReport value: nil value: 'candidate') at: 'matches'].
   verified and: [entries values allSatisfy: [:member | | execution held matches |
     execution := member at: 'currentExecution' ifAbsent: [nil]. held := member at: 'candidate'.
     matches := execution notNil and: [(member at: 'state') = 'published'].
     matches := matches and: [(candidates at: token, '/', (member at: 'api') getOID, '/Main' ifAbsent: [nil]) == held].
     matches := matches and: [(execution at: 'active') isNil].
     matches := matches and: [(execution at: 'applied') = (execution at: 'forward') size].
     matches := matches and: [(execution at: 'undone') = 0].
     matches := matches and: [#('verifySteps' 'originalSeal' 'latestSeal' 'verifyExpected' 'verifyInverse'
       'publishUndoSeal' 'restoreUndoSeal' 'publishUndoPlanSeal' 'restoreUndoPlanSeal')
         allSatisfy: [:field | (execution at: field) value]].
     matches and: [((execution at: 'capture') at: 'matches') value: (execution at: 'latest')]]]
 ].
 action = 'retain_commit' ifTrue: [
   (component item == definition item and: [(group includesKey: 'committedEdit') not])
     ifFalse: [component error: 'CURRENT commit cannot replay or replace retained ownership'].
   verifyPublished value ifFalse: [component error: 'CURRENT commit requires full published source/native/signature/configuration material'].
   commitRecord := Dictionary new at: 'profile' put: 'class_current_committed_edit_v1';
     at: 'change_id' put: commitId; at: 'intent_checksum' put: commitChecksum;
     at: 'token' put: token; at: 'definition_oid' put: definition getOID;
     at: 'model_steps' put: (group at: 'model_steps'); yourself.
   commitSeal := commitRecord copy.
   group at: 'committedEdit' put: commitRecord;
     at: 'verifyCommittedEdit' put: [ | matches |
       matches := commitRecord size = commitSeal size.
       matches := matches and: [commitSeal keys allSatisfy: [:field |
         (commitRecord at: field ifAbsent: [nil]) = (commitSeal at: field)]].
       matches := matches and: [(group at: 'committedEdit') == commitRecord].
       matches and: [entries values allSatisfy: [:member |
         ((member at: 'candidate') at: 'currentCommittedEdit' ifAbsent: [nil]) == commitRecord]]];
     at: 'verifyCommittedPublished' put: verifyPublished.
   entries values do: [:member | (member at: 'candidate') at: 'currentCommittedEdit' put: commitRecord]
 ].
 action = 'release' ifTrue: [
   (#('preparing' 'ready' 'restored') includes: (group at: 'state'))
     ifFalse: [component error: 'Cannot release outstanding model publication recovery'].
   initialVerify value ifFalse: [component error: 'Model publication release baseline conflict'].
   (entries values anySatisfy: [:member | member includesKey: 'currentExecution']) ifTrue: [
     releasePhase := group at: 'state'. releaseSteps := group at: 'model_steps'.
     (#('ready' 'restored') includes: releasePhase)
       ifFalse: [component error: 'CURRENT release requires complete native preparation'].
     releaseEntries := entries copy. releaseContexts := IdentityDictionary new.
     entries values do: [:member | | execution |
       execution := member at: 'currentExecution' ifAbsent: [component error: 'CURRENT release omits native owner material'].
       ((execution at: 'active') isNil and: [((execution at: 'capture') at: 'matches') value: (execution at: 'original')])
         ifFalse: [component error: 'CURRENT release native baseline conflict'].
       releaseContexts at: member put: execution].
     releaseWitness := Dictionary new at: 'profile' put: 'class_current_release_witness_v1';
       at: 'token' put: token; at: 'group' put: group; yourself.
     releaseWitness at: 'verify' put: [ | verified |
       verified := (releaseWitness at: 'profile') = 'class_current_release_witness_v1'.
       verified := verified and: [(releaseWitness at: 'token') = token and: [(releaseWitness at: 'group') == group]].
       verified := verified and: [(groups includesKey: token) not and: [(group at: 'state') = releasePhase]].
       verified := verified and: [(group at: 'model_steps') = releaseSteps and: [(group at: 'entries') == entries]].
       verified := verified and: [entries size = releaseEntries size and: [initialVerify value]].
       verified and: [releaseEntries keys allSatisfy: [:memberKey | | member held execution owner matches |
         member := releaseEntries at: memberKey. held := member at: 'candidate'.
         execution := releaseContexts at: member. owner := member at: 'api'.
         matches := (entries at: memberKey ifAbsent: [nil]) == member.
         matches := matches and: [(candidates at: token, '/', memberKey ifAbsent: [nil]) == held].
         matches := matches and: [(held at: 'currentReleaseWitness' ifAbsent: [nil]) == releaseWitness].
         matches := matches and: [(held at: 'verifyRecord') value: held].
         matches := matches and: [(member at: 'owner') == owner item and: [(member at: 'currentExecution') == execution]].
         matches := matches and: [(execution at: 'active') isNil and: [(execution at: 'verifySteps') value]].
         matches := matches and: [(execution at: 'verifyExpected') value and: [(execution at: 'verifyInverse') value]].
         matches := matches and: [(execution at: 'publishUndoPlanSeal') value and: [(execution at: 'restoreUndoPlanSeal') value]].
         matches and: [((execution at: 'capture') at: 'matches') value: (execution at: 'original')]]]
     ].
     entries values do: [:member | (member at: 'candidate') at: 'currentReleaseWitness' put: releaseWitness]
   ].
   entries values do: [:member | (member at: 'candidate') removeKey: 'currentCommittedEdit' ifAbsent: []].
   groups removeKey: token
 ].
 action = 'abandon' ifTrue: [
   ((#('preparing' 'ready') includes: (group at: 'state')) and: [(group at: 'model_steps') = 0])
     ifFalse: [component error: 'Only an undispatched preparation can be abandoned'].
   groups removeKey: token
 ].
 result := Dictionary new at: 'profile' put: 'class_model_publication_study_v1';
   at: 'action' put: requestedAction; at: 'token' put: token; at: 'oid' put: component getOID;
   at: 'definition_oid' put: definition getOID; at: 'state' put: (action = 'release' ifTrue: ['released'] ifFalse: [
     action = 'abandon' ifTrue: ['abandoned'] ifFalse: [group at: 'state']]);
   at: 'owner_state' put: (entry isNil ifTrue: [nil] ifFalse: [entry at: 'state']);
   at: 'owner_count' put: entries size; at: 'model_steps' put: (group at: 'model_steps');
   at: 'write_authorized' put: false; at: 'production_executor_available' put: false; yourself.
 (#('retain_commit' 'classify') includes: action) ifTrue: [
   result at: 'committed_edit' put: (group at: 'committedEdit' ifAbsent: [nil]);
     at: 'committed_material_sealed' put: ((group includesKey: 'committedEdit') and: [(group at: 'verifyCommittedEdit') value]);
     at: 'committed_published_matches' put: ((group includesKey: 'committedEdit') and: [(group at: 'verifyCommittedPublished') value])
 ].
 action = 'classify' ifTrue: [
   result at: 'publication_record_present' put: (groups includesKey: token);
     at: 'release_witness_present' put: releaseWitness notNil;
     at: 'release_witness_profile' put: (releaseWitness isNil ifTrue: [nil] ifFalse: [releaseWitness at: 'profile']);
     at: 'release_witness_verified' put: (releaseWitness notNil and: [(releaseWitness at: 'verify') value]).
   publicSignature := signature value: definition.
   nativeSignatureText := nativeSignature value: definition.
   source := readSignature value.
   classifications := entries values collect: [:item | | held registry |
     held := item at: 'candidate'. registry := item at: 'registry'.
     Dictionary new at: 'oid' put: (item at: 'api') getOID; at: 'component' put: (item at: 'api') getFolderPathName;
       at: 'owner_state' put: (item at: 'state'); at: 'current_matches' put: (currentVerify value: item value: 'current');
       at: 'candidate_matches' put: (currentVerify value: item value: 'candidate');
       at: 'actual_source_graph' put: (sourceDump value: (item at: 'api') value: (item at: 'currentDiagram') specification specSourceInternalOrNil);
       at: 'current_source_graph' put: (sourceDump value: (item at: 'api') value: ((held at: 'sources') at: 'current'));
       at: 'candidate_source_graph' put: (sourceDump value: (item at: 'api') value: ((held at: 'sources') at: 'candidate'));
       at: 'publish_stores' put: (item at: 'stores'); at: 'restore_stores' put: (item at: 'restoreStores'); yourself].
   result at: 'owners' put: classifications asArray;
     at: 'actual_signature' put: source;
     at: 'public_signature' put: publicSignature;
     at: 'native_signature' put: nativeSignatureText;
     at: 'public_native_signature_matches' put: (publicSignature = nativeSignatureText);
     at: 'current_signature' put: (group at: 'signature');
     at: 'candidate_signature' put: (group at: 'candidateSignature' ifAbsent: [nil]);
     at: 'current_argument_identities_match' put: (sameObjects value: method arguments value: (group at: 'afterArguments'));
     at: 'candidate_argument_identities_match' put: (sameObjects value: method arguments value: (group at: 'beforeArguments'));
     at: 'return_identity_matches' put: (method returnValue == (group at: 'return'));
     at: 'definition_configuration_matches' put: ((configuration value: definition) = (group at: 'definitionConfiguration'));
     at: 'current_signature_matches' put: ((sameObjects value: method arguments value: (group at: 'afterArguments'))
       and: [method returnValue == (group at: 'return') and: [source = (group at: 'signature')]]);
     at: 'candidate_signature_matches' put: ((sameObjects value: method arguments value: (group at: 'beforeArguments'))
       and: [method returnValue == (group at: 'return') and: [
         source = (group at: 'candidateSignature' ifAbsent: [nil])]]);
     at: 'model_setters_called' put: 0
 ].
 entry notNil ifTrue: [
   result at: 'generation' put: ((entry at: 'candidate') at: 'generation');
     at: 'publish_stores' put: (entry at: 'stores'); at: 'restore_stores' put: (entry at: 'restoreStores').
   (#('prepare' 'publish' 'restore') includes: action) ifTrue: [
     source := (entry at: 'currentDiagram') specification specSourceInternalOrNil.
     result at: 'actual_source_graph' put: (sourceDump value: component value: source);
       at: 'current_source_graph' put: (sourceDump value: component value: (((entry at: 'candidate') at: 'sources') at: 'current'));
       at: 'candidate_source_graph' put: (sourceDump value: component value: (((entry at: 'candidate') at: 'sources') at: 'candidate'))].
   action = 'prepare' ifTrue: [result at: 'runtime_patch' put: ((entry at: 'patch') at: 'report')]
 ].
 ((roots at: key) at: 'encodeObservation') value: result]
 ] ifFail: [:error | 'BDE_CLASS_MODEL_PUBLICATION_ERROR: ', stage, ' ', error printString, ' ', error messageText]
]]]]
