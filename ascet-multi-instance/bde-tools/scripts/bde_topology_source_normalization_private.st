"Eval only: translate retained actual heads into distinct private objects.
 The production source planner and primitive executor are used on those copies.
 Live model setters, store and diagram dispatch are never called."
[:helpers | [:component :token |
 component handleExceptionsIn: [
 | record beforeLive afterLive native normalize sourceReader same factory correspondence dump
   beforeCombined afterCombined memo allocate fill translate material privateBefore privateGenerated
   source privateNative beforeImages normalizedImages plan context count inverse redo finalInverse
   inverseCount redoCount finalCount out statistics originalExport generatedExport normalizedExport
   mapResult pairs sourceIdsBefore sourceIdsGenerated sourceIdsNormalized originalBlocks normalizedBlocks
   blockSlot names originalBlockIds normalizedBlockIds privateCurrent beforePlan cases survivor ownSlot own point
   pointY manualBefore manualNormalized survivorId merged expected headBefore headAfter nextPatch
   ownedCell ownedSlot savedOwned refusal conflictCurrent duplicateSource duplicateBefore duplicateGenerated
   roleSlot members duplicate copySource aliasSlot savedAlias independentAlias manualSurvivor
   logical logicalMerge logicalAfter logicalCurrent frozenPlan currentMaterial install dispatchTarget
   independentValue manualExpected manualCurrent desired actualBefore actualAfter privatePatch
   privateInverse privateRedo geometryCases pointSlot beforePoint logicalCases expectedExport mergedExport
   currentExport inverseExport ownedImage badImages frozenOnlyResult oldPointY savedPointY pointReplaced
   introducedObject introducedImage invalidMarker liveModeRefusal frozenModeResult redoExport finalExport |
 (helpers isArray and: [#(6 8) includes: helpers size])
   ifFalse: [component error: 'Fixed topology source normalization helpers required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated private topology source owner required'].
 normalize := helpers first. sourceReader := helpers at: 2. same := helpers at: 3.
 factory := helpers at: 4. correspondence := helpers at: 5. dump := helpers at: 6.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   #('disconnect_data' 'delete_node') includes: (record at: 'operation')]])
   ifFalse: [component error: 'Exact retained ordinary topology material required'].
 beforeLive := record at: 'topologyHeadBeforeSource'. afterLive := record at: 'topologyHeadAfterSource'.
 native := record at: 'topologyNativeBefore'.
 beforeCombined := (record at: 'topologyHeadBeforeNative') copy.
 (beforeLive at: 'snapshots') keysAndValuesDo: [:object :entry | beforeCombined at: object put: entry].
 afterCombined := (record at: 'topologyHeadAfterNative') copy.
 (afterLive at: 'snapshots') keysAndValuesDo: [:object :entry | afterCombined at: object put: entry].
 memo := IdentityDictionary new.
 allocate := [:images | images keysAndValuesDo: [:object :entry | (memo includesKey: object) ifFalse: [
   memo at: object put: (entry first = 'boundary' ifTrue: [object] ifFalse: [
     entry first = 'fields' ifTrue: [object shallowCopy] ifFalse: [
       (#('Dictionary' 'IdentityDictionary' 'OrderedCollection' 'Set' 'IdentitySet') includes: object class name asString)
         ifTrue: [object class new] ifFalse: [entry last copy]]])]]].
 translate := [:object | memo at: object ifAbsent: [object]].
 fill := [:images | images keysAndValuesDo: [:object :entry | | target name |
   target := memo at: object. name := object class name asString.
   entry first = 'fields' ifTrue: [1 to: entry last size do: [:slot |
     target instVarAt: slot put: (translate value: (entry last at: slot))]]
   ifFalse: [entry first = 'collection' ifTrue: [
     (#('Dictionary' 'IdentityDictionary') includes: name) ifTrue: [
       target keys asArray do: [:key | target removeKey: key].
       entry last keysAndValuesDo: [:key :child |
         target at: (translate value: key) put: (translate value: child)]]
     ifFalse: [(#('OrderedCollection' 'Set' 'IdentitySet') includes: name) ifTrue: [
       target asArray do: [:child | target remove: child].
       entry last do: [:child | target add: (translate value: child)]]
     ifFalse: [1 to: entry last size do: [:slot |
       target at: slot put: (translate value: (entry last at: slot))]]]]
   ifFalse: [entry first = 'value' ifTrue: [1 to: entry last size do: [:slot |
     target at: slot put: (entry last at: slot)]]]]]].
 material := [:anchors | | captured |
   captured := sourceReader value: component value: (Array with: source with: anchors).
   (captured isKindOf: Dictionary) ifFalse: [component error: captured asString]. captured].
 allocate value: beforeCombined. fill value: beforeCombined.
 source := memo at: (beforeLive at: 'sourceRoot').
 source ~~ (beforeLive at: 'sourceRoot') ifFalse: [component error: 'Private topology source aliases live root'].
 privateBefore := material value: #(). beforeImages := privateBefore at: 'snapshots'.
 copySource := ((Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main')) at: 'copySource'.
 manualBefore := copySource value: source.
 originalExport := dump value: component value: (Array with: source with: 'native_reference_ids').
 allocate value: afterCombined. fill value: afterCombined.
 privateNative := IdentityDictionary new.
 (record at: 'topologyHeadAfterNative') keysAndValuesDo: [:object :entry | | saved name |
   entry first ~= 'boundary' ifTrue: [
     name := object class name asString.
     saved := entry first = 'value' ifTrue: [entry last copy] ifFalse: [
       (#('Dictionary' 'IdentityDictionary') includes: name) ifTrue: [| keyed |
         keyed := object class new. entry last keysAndValuesDo: [:key :child |
           keyed at: (translate value: key) put: (translate value: child)]. keyed]
       ifFalse: [entry last collect: [:child | translate value: child]]].
     privateNative at: (memo at: object) put: (Array with: entry first with: saved)]].
 ((native at: 'verifyImages') value: privateNative)
   ifFalse: [component error: 'Private protected graphical after material differs'].
 privateGenerated := material value: beforeImages keys.
 ((privateGenerated at: 'snapshots') keys anySatisfy: [:object |
   ((beforeLive at: 'snapshots') includesKey: object) and: [object ~~ (beforeLive at: 'owner')]])
   ifTrue: [component error: 'Private topology source contains live mutable references'].
 generatedExport := dump value: component value: (Array with: source with: 'native_reference_ids').
 mapResult := correspondence value: component value:
   (Array with: privateBefore with: privateGenerated with: privateNative).
 (mapResult isKindOf: Dictionary) ifFalse: [component error: mapResult asString].
 context := Array new: 7.
 context at: 1 put: privateBefore; at: 2 put: privateGenerated; at: 3 put: privateNative;
   at: 4 put: factory; at: 5 put: same;
   at: 6 put: [((native at: 'verifyImages') value: privateNative)]; at: 7 put: correspondence.
 beforePlan := (privateGenerated at: 'captureImages') value: (privateGenerated at: 'snapshots') keys.
 plan := normalize value: component value: context.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 ((privateGenerated at: 'verifyImages') value: beforePlan)
   ifFalse: [component error: 'Structural normalization planning modified private CURRENT'].
 count := (plan at: 'execute') value.
 (plan at: 'verifyDesired') value ifFalse: [component error: 'Structural normalization source/sharing differs'].
 normalizedImages := (privateGenerated at: 'captureImages') value: beforeImages keys.
 normalizedExport := dump value: component value: (Array with: source with: 'native_reference_ids').
 sourceIdsBefore := originalExport at: 'ids'. sourceIdsGenerated := generatedExport at: 'ids'.
 sourceIdsNormalized := normalizedExport at: 'ids'. pairs := OrderedCollection new.
 (mapResult at: 'map') keysAndValuesDo: [:generated :retained |
   (sourceIdsGenerated includesKey: generated) ifTrue: [pairs add: (Dictionary new
     at: 'generated_id' put: (sourceIdsGenerated at: generated);
     at: 'original_id' put: (sourceIdsBefore at: retained ifAbsent: [nil]);
     at: 'normalized_id' put: (sourceIdsNormalized at: retained ifAbsent: [nil]);
     at: 'native_class' put: generated class name asString;
     at: 'retained_same_as_generated' put: (generated == retained); yourself)]] .
 names := source class allInstVarNames collect: [:name | name asString]. blockSlot := names indexOf: 'blocks'.
 originalBlocks := ((beforeImages at: source) last at: blockSlot).
 normalizedBlocks := source instVarAt: blockSlot.
 originalBlockIds := ((beforeImages at: originalBlocks) last collect: [:child |
   sourceIdsBefore at: child]) asArray.
 normalizedBlockIds := normalizedBlocks collect: [:child | sourceIdsBefore at: child ifAbsent: [nil]].
 cases := OrderedCollection new.
 "An independent survivor field must use the retained record. The
  manual target is prepared by the existing source copier, not mergeImages."
 survivor := normalizedBlocks detect: [:child | child class name asString = 'SGLiteralGODB' and: [
   (beforeImages includesKey: child) and: [
     aliasSlot := (child class allInstVarNames collect: [:name | name asString]) indexOf: 'aliasName'.
     ((beforeImages at: child) last at: aliasSlot) == (child instVarAt: aliasSlot)]]]
   ifNone: [component error: 'Retained untouched survivor source field required'].
 ownSlot := (survivor class allInstVarNames collect: [:name | name asString]) indexOf: 'own'.
 aliasSlot := (survivor class allInstVarNames collect: [:name | name asString]) indexOf: 'aliasName'.
 own := survivor instVarAt: ownSlot. survivorId := own first.
 savedAlias := survivor instVarAt: aliasSlot. independentAlias := 'PrivateIndependentAlias'.
 survivor instVarAt: aliasSlot put: independentAlias.
 manualNormalized := copySource value: source.
 manualSurvivor := manualBefore blocks detect: [:child | (child isKindOf: SGLogicBlockDB) and: [child iD = survivorId]].
 manualSurvivor instVarAt: aliasSlot put: independentAlias copy.
 headBefore := (privateGenerated at: 'captureImages') value: normalizedImages keys.
 nextPatch := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'undo'.
 (nextPatch isKindOf: Dictionary) ifFalse: [component error: nextPatch asString].
 merged := (nextPatch at: 'mergeImages') value: headBefore.
 expected := (privateGenerated at: 'cloneImages') value: merged.
 (same value: component value: expected value: manualBefore) == true
   ifFalse: [component error: 'Structural source local inverse lost independent survivor field in plan'].
 (nextPatch at: 'execute') value.
 ((same value: component value: source value: manualBefore) == true and: [(survivor instVarAt: aliasSlot) == independentAlias])
   ifFalse: [component error: 'Structural source inverse lost independent survivor field'].
 headAfter := (privateGenerated at: 'captureImages') value: headBefore keys.
 nextPatch := factory value: component value: (Array with: headBefore with: headAfter) value: 'undo'.
 (nextPatch isKindOf: Dictionary) ifFalse: [component error: nextPatch asString].
 (nextPatch at: 'execute') value.
 ((same value: component value: source value: manualNormalized) == true and: [(survivor instVarAt: aliasSlot) == independentAlias])
   ifFalse: [component error: 'Actual source inverse-of-inverse lost independent field or sharing'].
 privateCurrent := (privateGenerated at: 'captureImages') value: headAfter keys.
 nextPatch := factory value: component value: (Array with: headAfter with: privateCurrent) value: 'undo'.
 (nextPatch isKindOf: Dictionary) ifFalse: [component error: nextPatch asString].
 (nextPatch at: 'execute') value.
 ((same value: component value: source value: manualBefore) == true and: [(survivor instVarAt: aliasSlot) == independentAlias])
   ifFalse: [component error: 'Actual final source inverse lost independent field'].
 survivor instVarAt: aliasSlot put: savedAlias.
 ((privateBefore at: 'verifyImages') value: beforeImages)
   ifFalse: [component error: 'Independent source private history failed exact final restoration'].
 cases add: (Dictionary new at: 'case' put: 'survivor_field_preserved_in_actual_inverse_heads';
   at: 'passed' put: true; at: 'survivor_logic_id' put: survivorId;
   at: 'independent_field' put: 'aliasName'; at: 'expected_alias' put: independentAlias;
   at: 'model_setters_called' put: 0; yourself).
 "Restore the private normalized head, then alter an owned root reference.
  Equal visible values cannot make a changed source reference nonconflicting."
 nextPatch := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'redo'.
 (nextPatch isKindOf: Dictionary) ifFalse: [component error: nextPatch asString].
 (nextPatch at: 'execute') value.
 nextPatch := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'undo'.
 ownedCell := (nextPatch at: 'cells') detect: [:cell | cell first == source and: [(cell at: 2) = 'fields']]
   ifNone: [component error: 'Owned structural source root field required'].
 ownedSlot := ownedCell at: 3. savedOwned := source instVarAt: ownedSlot.
 source instVarAt: ownedSlot put: savedOwned copy.
 conflictCurrent := (privateGenerated at: 'captureImages') value: normalizedImages keys.
 refusal := component handleExceptionsIn: [(nextPatch at: 'mergeImages') value: conflictCurrent. false]
   ifFail: [:error | true].
 refusal ifFalse: [component error: 'Structural source owned-reference overlap accepted by planner'].
 refusal := component handleExceptionsIn: [(nextPatch at: 'execute') value. false] ifFail: [:error | true].
 (refusal and: [((nextPatch at: 'progress') at: 'completed_primitives') = 0 and: [
   (privateGenerated at: 'verifyImages') value: conflictCurrent]])
   ifFalse: [component error: 'Structural source overlap was not rejected before primitive writes'].
 source instVarAt: ownedSlot put: savedOwned.
 cases add: (Dictionary new at: 'case' put: 'owned_equal_value_reference_overlap_refused';
   at: 'passed' put: true; at: 'completed_primitives' put: 0; yourself).
 inverse := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'undo'.
 (inverse isKindOf: Dictionary) ifFalse: [component error: inverse asString].
 inverseCount := (inverse at: 'execute') value.
 ((privateBefore at: 'verifyImages') value: beforeImages)
   ifFalse: [component error: 'Private topology inverse lost original references'].
 redo := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'redo'.
 (redo isKindOf: Dictionary) ifFalse: [component error: redo asString].
 redoCount := (redo at: 'execute') value.
 ((privateGenerated at: 'verifyImages') value: normalizedImages)
   ifFalse: [component error: 'Private topology redo differs from normalized actual head'].
 finalInverse := factory value: component value: (Array with: beforeImages with: normalizedImages) value: 'undo'.
 finalCount := (finalInverse at: 'execute') value.
 ((privateBefore at: 'verifyImages') value: beforeImages)
   ifFalse: [component error: 'Private topology final restoration differs'].
 #('blocks' 'connections') do: [:role |
   duplicateSource := copySource value: source.
   duplicateBefore := sourceReader value: component value: (Array with: duplicateSource with: #()).
   (duplicateBefore isKindOf: Dictionary) ifFalse: [component error: duplicateBefore asString].
   roleSlot := (duplicateSource class allInstVarNames collect: [:name | name asString]) indexOf: role.
   members := duplicateSource instVarAt: roleSlot.
   members notEmpty ifFalse: [component error: 'Actual source duplicate role fixture required'].
   duplicate := members first shallowCopy.
   duplicateSource instVarAt: roleSlot put: (members copyWith: duplicate).
   duplicateGenerated := sourceReader value: component value:
     (Array with: duplicateSource with: (duplicateBefore at: 'snapshots') keys).
   (duplicateGenerated isKindOf: Dictionary) ifFalse: [component error: duplicateGenerated asString].
   refusal := correspondence value: component value:
     (Array with: duplicateBefore with: duplicateGenerated with: IdentityDictionary new).
   ((refusal isString and: [refusal startsWith: 'BDE_SOURCE_STRUCTURAL_CORRESPONDENCE_ERROR: Ambiguous source identity in container role']) and: [
     (duplicateGenerated at: 'verify') value])
     ifFalse: [component error: 'Duplicate structural source record was not refused without mutation'].
   cases add: (Dictionary new at: 'case' put: role, '/duplicate_identity_refused';
     at: 'passed' put: true; at: 'reason' put: refusal; at: 'model_setters_called' put: 0; yourself)
 ].
 logicalCases := OrderedCollection new.
 helpers size = 8 ifTrue: [
   logical := helpers at: 7. logicalMerge := helpers last.
   manualBefore := (privateBefore at: 'cloneImages') value: beforeImages.
   "Only this eval branch installs targets, on detached private objects.
    Actual real CURRENT is independently captured for the existing executor."
   install := [:requested | | observed wanted execution |
     observed := material value: requested keys. wanted := (observed at: 'snapshots') copy.
     requested keysAndValuesDo: [:object :entry | wanted at: object put: entry].
     execution := factory value: component value: (Array with: wanted with: (observed at: 'snapshots')) value: 'undo'.
     (execution isKindOf: Dictionary) ifFalse: [component error: execution asString].
     (execution at: 'execute') value.
     ((observed at: 'verifyImages') value: wanted)
       ifFalse: [component error: 'Private real CURRENT primitive target differs'].
     material value: wanted keys].
   privateGenerated := install value: normalizedImages.
   logicalAfter := logical value: component value: (Array with: privateBefore with: privateGenerated).
   (logicalAfter isKindOf: Dictionary) ifFalse: [component error: logicalAfter asString].
   "Disconnect requires the actual difficult replaced native-shared Point.
    Delete may retain the same native-shared Point; report the actual lineage
    rather than fabricate a replacement or claim both fixtures are identical."
   survivor := normalizedBlocks detect: [:child | child class name asString = 'SGLiteralGODB' and: [
     (beforeImages includesKey: child) and: [
       ownSlot := (child class allInstVarNames collect: [:name | name asString]) indexOf: 'own'.
       point := (child instVarAt: ownSlot) at: 2.
       beforePoint := ((beforeImages at: ((beforeImages at: child) last at: ownSlot)) last at: 2).
       point class name asString = 'Point' and: [(point ~~ beforePoint or: [(record at: 'operation') = 'delete_node']) and: [
         (privateNative includesKey: point) and: [((logicalAfter at: 'actualToLogical') at: point ifAbsent: [nil]) == beforePoint]]]]]]
     ifNone: [component error: 'Actual replaced native-shared source Point fixture required'].
   survivorId := (survivor instVarAt: ownSlot) first.
   point := (survivor instVarAt: ownSlot) at: 2.
   pointReplaced := point ~~ beforePoint.
   pointY := (point class allInstVarNames collect: [:name | name asString]) indexOf: 'y'.
   pointSlot := (survivor class allInstVarNames collect: [:name | name asString]) indexOf: 'literalString'.
   savedPointY := point instVarAt: pointY.
   #('point_y' 'literalString') do: [:variant |
     privateGenerated := install value: normalizedImages.
     manualExpected := copySource value: manualBefore.
     manualSurvivor := manualExpected blocks detect: [:child | (child isKindOf: SGLogicBlockDB) and: [child iD = survivorId]].
     variant = 'point_y' ifTrue: [
       independentValue := savedPointY + 30.
       point instVarAt: pointY put: independentValue.
       ((manualSurvivor instVarAt: ownSlot) at: 2) instVarAt: pointY put: independentValue
     ] ifFalse: [independentValue := '934.125'.
       survivor instVarAt: pointSlot put: independentValue.
       manualSurvivor instVarAt: pointSlot put: independentValue copy].
     manualCurrent := copySource value: source.
     currentMaterial := material value: (beforeImages keys, normalizedImages keys).
     logicalCurrent := logical value: component value: (Array with: logicalAfter with: currentMaterial).
     (logicalCurrent isKindOf: Dictionary) ifFalse: [component error: logicalCurrent asString].
     actualBefore := currentMaterial at: 'snapshots'.
     frozenPlan := logicalMerge value: component value: (Array with: beforeImages
       with: (logicalAfter at: 'snapshots') with: (logicalCurrent at: 'snapshots')).
     ((frozenPlan isKindOf: Dictionary) and: [(frozenPlan at: 'compatible') == true])
       ifFalse: [component error: frozenPlan printString].
     desired := frozenPlan at: 'desired'.
     expected := (currentMaterial at: 'cloneImages') value: desired.
     ((same value: component value: expected value: manualExpected) == true
       and: [(currentMaterial at: 'verify') value])
       ifFalse: [component error: 'Logical source local target lost independent field/sharing or changed CURRENT: ', variant].
     liveModeRefusal := correspondence value: component value:
       (Array with: privateBefore with: privateGenerated with: IdentityDictionary new).
     ((liveModeRefusal isString and: [liveModeRefusal startsWith:
       'BDE_SOURCE_STRUCTURAL_CORRESPONDENCE_ERROR: Structural source CURRENT changed before planning'])
       and: [(currentMaterial at: 'verify') value])
       ifFalse: [component error: 'Default correspondence bypassed the real CURRENT check'].
     frozenModeResult := correspondence value: component value: (Array with: privateBefore
       with: privateGenerated with: IdentityDictionary new with: 'frozen_planning_v1').
     ((frozenModeResult isKindOf: Dictionary) and: [(frozenModeResult at: 'write_authorized') == false])
       ifFalse: [component error: 'Frozen historical correspondence granted write authority'].
     "Changing real private contents after freezing cannot change the pure
      merge result. The live executor must nevertheless refuse that CURRENT."
     oldPointY := point instVarAt: pointY. point instVarAt: pointY put: oldPointY + 17.
     frozenOnlyResult := logicalMerge value: component value: (Array with: beforeImages
       with: (logicalAfter at: 'snapshots') with: (logicalCurrent at: 'snapshots')).
     ((frozenOnlyResult isKindOf: Dictionary) and: [(frozenOnlyResult at: 'compatible') == true
       and: [((same value: component value:
         ((currentMaterial at: 'cloneImages') value: (frozenOnlyResult at: 'desired')) value: manualExpected) == true)
       and: [(currentMaterial at: 'verify') value not]]])
       ifFalse: [component error: 'Frozen planner inspected private live contents or lost frozen source values'].
     dispatchTarget := actualBefore copy. desired keysAndValuesDo: [:object :entry | dispatchTarget at: object put: entry].
     privatePatch := factory value: component value: (Array with: dispatchTarget with: actualBefore) value: 'undo'.
     (privatePatch isKindOf: Dictionary) ifFalse: [component error: privatePatch asString].
     ((currentMaterial at: 'verify') value and: [(privatePatch at: 'verifyBeforeApply') value])
       ifTrue: [component error: 'Real CURRENT dispatch guard accepted changed source'].
     point instVarAt: pointY put: oldPointY.
     expectedExport := dump value: component value: manualExpected.
     mergedExport := dump value: component value: expected.
     currentExport := dump value: component value: source.
     (privatePatch at: 'execute') value.
     ((same value: component value: source value: manualExpected) == true and: [
       ((survivor instVarAt: ownSlot) at: 2) == beforePoint])
       ifFalse: [component error: 'Private source inverse lost old Point identity or independent edit'].
     actualAfter := (material value: dispatchTarget keys) at: 'snapshots'.
     inverseExport := dump value: component value: source.
     privateRedo := factory value: component value: (Array with: actualBefore with: actualAfter) value: 'undo'.
     (privateRedo isKindOf: Dictionary) ifFalse: [component error: privateRedo asString].
     (privateRedo at: 'execute') value.
     ((same value: component value: source value: manualCurrent) == true and: [
       ((survivor instVarAt: ownSlot) at: 2) == point])
       ifFalse: [component error: 'Private actual inverse-of-inverse lost current Point identity or independent edit'].
     redoExport := dump value: component value: source.
     privateInverse := factory value: component value:
       (Array with: actualAfter with: ((material value: dispatchTarget keys) at: 'snapshots')) value: 'undo'.
     (privateInverse isKindOf: Dictionary) ifFalse: [component error: privateInverse asString].
     (privateInverse at: 'execute') value.
     (same value: component value: source value: manualExpected) == true
       ifFalse: [component error: 'Private final inverse lost independent edit or source sharing'].
     finalExport := dump value: component value: source.
     logicalCases add: (Dictionary new at: 'case' put: variant, '/frozen_merge_actual_private_roundtrip';
       at: 'passed' put: true; at: 'survivor_logic_id' put: survivorId;
       at: 'independent_value' put: independentValue; at: 'old_point_identity_restored' put: true;
       at: 'source_point_shared_with_private_native' put: true;
       at: 'source_point_replaced_by_topology_edit' put: pointReplaced;
       at: 'frozen_plan_ignores_live_contents' put: true; at: 'real_executor_rejects_late_current_change' put: true;
       at: 'default_correspondence_rejects_noncurrent_material' put: true;
       at: 'expected_source' put: expectedExport; at: 'merged_source' put: mergedExport;
       at: 'current_source' put: currentExport; at: 'inverse_source' put: inverseExport;
       at: 'redo_source' put: redoExport; at: 'final_inverse_source' put: finalExport;
       at: 'touched_cells' put: (frozenPlan at: 'touched_cells'); yourself)
   ].
   privateGenerated := install value: normalizedImages.
   "A directly overlapping logical owned cell is a conflict, including an
    equal-content distinct Array. Projection itself never authorizes a write."
   badImages := (logicalAfter at: 'snapshots') copy.
   ownedImage := (badImages at: source) copy. ownedImage at: 2 put: ownedImage last copy.
   ownedSlot := (1 to: ownedImage last size) detect: [:slot |
     ((beforeImages at: source) last at: slot) ~~ (ownedImage last at: slot)]
     ifNone: [component error: 'Actual logical owned root reference required'].
   ownedImage last at: ownedSlot put: (ownedImage last at: ownedSlot) copy.
   badImages at: source put: ownedImage.
   refusal := logicalMerge value: component value: (Array with: beforeImages
     with: (logicalAfter at: 'snapshots') with: badImages).
   ((refusal isKindOf: Dictionary) and: [(refusal at: 'compatible') == false
     and: [(refusal at: 'desired') isEmpty]])
     ifFalse: [component error: 'Frozen owned-reference overlap supplied a target'].
   logicalCases add: (Dictionary new at: 'case' put: 'logical_owned_reference_overlap_refused';
     at: 'passed' put: true; at: 'conflict_count' put: (refusal at: 'conflicts') size; yourself).
   badImages := (logicalAfter at: 'snapshots') copy.
   introducedObject := badImages keys detect: [:object | (beforeImages includesKey: object) not
     and: [(badImages at: object) first = 'collection']]
     ifNone: [component error: 'Actual introduced source collection fixture required'].
   introducedImage := (badImages at: introducedObject) copy.
   introducedImage at: 2 put: (introducedImage last copyWith: Object new).
   badImages at: introducedObject put: introducedImage.
   refusal := logicalMerge value: component value: (Array with: beforeImages
     with: (logicalAfter at: 'snapshots') with: badImages).
   ((refusal isKindOf: Dictionary) and: [(refusal at: 'compatible') == false
     and: [(refusal at: 'desired') isEmpty]])
     ifFalse: [component error: 'Frozen introduced collection conflict supplied a target'].
   logicalCases add: (Dictionary new at: 'case' put: 'introduced_collection_conflict_refused';
     at: 'passed' put: true; at: 'conflict_count' put: (refusal at: 'conflicts') size; yourself).
   invalidMarker := correspondence value: component value: (Array with: privateBefore
     with: privateGenerated with: IdentityDictionary new with: 'allow_write').
   ((invalidMarker isString and: [invalidMarker startsWith:
     'BDE_SOURCE_STRUCTURAL_CORRESPONDENCE_ERROR: Explicit read-only frozen correspondence marker required'])
     and: [(privateGenerated at: 'verify') value])
     ifFalse: [component error: 'Unknown frozen correspondence mode was accepted or mutated CURRENT'].
   logicalCases add: (Dictionary new at: 'case' put: 'unknown_frozen_mode_refused'; at: 'passed' put: true; yourself).
   privateGenerated := install value: beforeImages.
   (privateBefore at: 'verify') value ifFalse: [component error: 'Logical private histories failed original image restoration']
 ].
 statistics := plan at: 'correspondence_statistics'.
 out := Dictionary new at: 'profile' put: 'topology_source_normalization_private_v1';
   at: 'passed' put: true; at: 'operation' put: (record at: 'operation');
   at: 'normalization_primitives' put: count; at: 'inverse_primitives' put: inverseCount;
   at: 'redo_primitives' put: redoCount; at: 'final_inverse_primitives' put: finalCount;
   at: 'correspondence_statistics' put: statistics; at: 'record_pairs' put: pairs asArray;
   at: 'private_cases' put: cases asArray;
   at: 'logical_cases' put: logicalCases asArray;
   at: 'original_block_ids' put: originalBlockIds; at: 'normalized_block_original_ids' put: normalizedBlockIds;
   at: 'original_source' put: (originalExport at: 'graph');
   at: 'generated_source' put: (generatedExport at: 'graph');
   at: 'normalized_source' put: (normalizedExport at: 'graph');
   at: 'full_generated_values_and_sharing_verified' put: true;
   at: 'private_original_identity_restored' put: true;
   at: 'protected_native_objects' put: privateNative size;
   at: 'protected_native_source_sharing_preserved' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'formal_tool_history_verified' put: false; yourself.
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_TOPOLOGY_SOURCE_NORMALIZATION_PRIVATE_ERROR: ', error messageText]
]]
