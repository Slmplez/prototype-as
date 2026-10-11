[:component :token |
 component handleExceptionsIn: [
 | record current roots point text bytes array ordered keyed identityKeyed members identityMembers before after factory plan undoCount redoCount finalCount refused conflictImage live images cases sameOrder sequence sequenceRoot sequenceBefore sequenceAfter keyObject equalKey keyMap keyRoot keyBefore keyAfter mergedImages freshImages |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID
   and: [(record at: 'state') = 'prepared']])
   ifFalse: [component error: 'Prepared exact private-test owner required'].
 current := record at: 'fieldNativeBefore'. factory := record at: 'fieldNativePatchFactory'.
 (current at: 'verify') value ifFalse: [component error: 'Live native baseline differs before private patch test'].
 "Every mutated object is allocated here. No live model reference is copied."
 point := 10 @ 20. text := 'abc' copy. bytes := ByteArray new: 3.
 bytes at: 1 put: 1; at: 2 put: 2; at: 3 put: 3.
 array := Array with: #left with: #original.
 ordered := OrderedCollection new add: #left; add: #original; yourself.
 keyed := Dictionary new at: #touched put: #original; at: #untouched put: #stable; yourself.
 identityKeyed := IdentityDictionary new at: #touched put: #original; at: #untouched put: #stable; yourself.
 members := Set with: #left with: #original.
 identityMembers := IdentitySet new add: #left; add: #original; yourself.
 roots := OrderedCollection new add: point; add: text; add: bytes; add: array; add: ordered;
   add: keyed; add: identityKeyed; add: members; add: identityMembers; yourself.
 before := (current at: 'captureImages') value: (Array with: roots).
 live := current at: 'snapshots'.
 (before keys anySatisfy: [:object | live includesKey: object])
   ifTrue: [component error: 'Private test captured a live model object'].
 point instVarAt: 1 put: 11. text at: 1 put: $x. bytes at: 2 put: 9.
 array at: 2 put: #changed. ordered remove: #original; add: #changed.
 keyed at: #touched put: #changed. identityKeyed at: #touched put: #changed.
 members remove: #original; add: #changed. identityMembers remove: #original; add: #changed.
 after := (current at: 'captureImages') value: (Array with: roots).
 (after keys anySatisfy: [:object | live includesKey: object])
   ifTrue: [component error: 'Private terminal captured a live model object'].
 images := Array with: before with: after. cases := OrderedCollection new.
 plan := factory value: component value: images value: 'undo'.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 ((plan at: 'cells') size >= 9 and: [(plan at: 'verifyBeforeApply') value])
   ifFalse: [component error: 'Nonzero private patch or expected guard differs'].
 undoCount := (plan at: 'execute') value.
 ((current at: 'verifyImages') value: before) ifFalse: [component error: 'Private undo did not restore exact images'].
 cases add: 'nonzero_undo_all_kinds'.
 refused := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
 (refused and: [(current at: 'verifyImages') value: before])
   ifFalse: [component error: 'Private patch replay was accepted or changed objects'].
 cases add: 'replay_refused_without_changes'.
 plan := factory value: component value: images value: 'redo'.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 redoCount := (plan at: 'execute') value.
 ((current at: 'verifyImages') value: after) ifFalse: [component error: 'Private redo did not restore exact images'].
 cases add: 'nonzero_redo_same_objects'.
 plan := factory value: component value: images value: 'undo'.
 finalCount := (plan at: 'execute') value.
 ((current at: 'verifyImages') value: before) ifFalse: [component error: 'Private final inverse differs'].
 cases add: 'final_undo_full_images'.
 plan := factory value: component value: images value: 'redo'.
 point instVarAt: 1 put: 999. conflictImage := (current at: 'captureImages') value: (Array with: roots).
 (plan at: 'verifyBeforeApply') value ifTrue: [component error: 'Private overlapping conflict accepted'].
 refused := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
 (refused and: [((plan at: 'progress') at: 'state') = 'prepared' and: [
   (current at: 'verifyImages') value: conflictImage]])
   ifFalse: [component error: 'Conflicting private execution changed objects'].
 cases add: 'overlap_refused_before_primitive'.
 point instVarAt: 1 put: 10; instVarAt: 2 put: 777.
 plan := factory value: component value: images value: 'redo'.
 (plan at: 'verifyBeforeApply') value ifFalse: [component error: 'Independent private field blocks touched-field patch'].
 (plan at: 'execute') value.
 (point instVarAt: 2) = 777 ifFalse: [component error: 'Private redo overwrote independent field'].
 plan := factory value: component value: images value: 'undo'.
 (plan at: 'execute') value.
 (point instVarAt: 2) = 777 ifFalse: [component error: 'Private undo overwrote independent field'].
 point instVarAt: 2 put: 20.
 ((current at: 'verifyImages') value: before) ifFalse: [component error: 'Private reset differs from original images'].
 cases add: 'independent_field_preserved_both_directions'.
 "Unrelated changes in the exact same containers must survive both directions."
 text at: 3 put: $z. bytes at: 3 put: 7. array at: 1 put: #independent.
 keyed at: #untouched put: #independent; at: #extra put: nil.
 identityKeyed at: #untouched put: #independent; at: #extra put: nil.
 members add: #extra. identityMembers add: #extra. ordered add: #extra.
 plan := factory value: component value: images value: 'redo'.
 (plan at: 'verifyBeforeApply') value ifFalse: [component error: 'Same-container unrelated edit blocks local patch'].
 freshImages := (current at: 'captureImages') value: (Array with: roots).
 mergedImages := (plan at: 'mergeImages') value: freshImages.
 ((current at: 'verifyImages') value: freshImages)
   ifFalse: [component error: 'Native merge planning mutated current objects'].
 (plan at: 'execute') value.
 ((current at: 'verifyImages') value: mergedImages)
   ifFalse: [component error: 'Native merged target differs across all private patch kinds'].
 ((text at: 3) = $z and: [(bytes at: 3) = 7 and: [(array at: 1) == #independent and: [
   (keyed at: #untouched) == #independent and: [(keyed includesKey: #extra) and: [
   (identityKeyed at: #untouched) == #independent and: [(identityKeyed includesKey: #extra) and: [
   (members includes: #extra) and: [(identityMembers includes: #extra) and: [ordered last == #extra]]]]]]]]])
   ifFalse: [component error: 'Local redo lost independent container contents'].
 plan := factory value: component value: images value: 'undo'.
 freshImages := (current at: 'captureImages') value: (Array with: roots).
 mergedImages := (plan at: 'mergeImages') value: freshImages.
 ((current at: 'verifyImages') value: freshImages)
   ifFalse: [component error: 'Native inverse target planning mutated current objects'].
 (plan at: 'execute') value.
 ((current at: 'verifyImages') value: mergedImages)
   ifFalse: [component error: 'Native inverse target differs across all private patch kinds'].
 ((text at: 3) = $z and: [(bytes at: 3) = 7 and: [(array at: 1) == #independent and: [
   (keyed at: #untouched) == #independent and: [(keyed includesKey: #extra) and: [
   (identityKeyed at: #untouched) == #independent and: [(identityKeyed includesKey: #extra) and: [
   (members includes: #extra) and: [(identityMembers includes: #extra) and: [ordered last == #extra]]]]]]]]])
   ifFalse: [component error: 'Local undo lost independent container contents'].
 text at: 3 put: $c. bytes at: 3 put: 3. array at: 1 put: #left.
 keyed at: #untouched put: #stable; removeKey: #extra.
 identityKeyed at: #untouched put: #stable; removeKey: #extra.
 members remove: #extra. identityMembers remove: #extra. ordered remove: #extra.
 ((current at: 'verifyImages') value: before) ifFalse: [component error: 'Private local-container reset differs'].
 cases add: 'independent_same_containers_preserved_both_directions'.
 keyed at: #touched put: #foreign.
 conflictImage := (current at: 'captureImages') value: (Array with: roots).
 plan := factory value: component value: images value: 'redo'.
 (plan at: 'verifyBeforeApply') value ifTrue: [component error: 'Overlapping dictionary value accepted'].
 refused := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
 (refused and: [((plan at: 'progress') at: 'completed_primitives') = 0 and: [
   (current at: 'verifyImages') value: conflictImage]])
   ifFalse: [component error: 'Dictionary conflict changed private objects'].
 keyed at: #touched put: #original. cases add: 'dictionary_overlap_refused'.
 sameOrder := [:left :right | left size = right size and: [
   ((1 to: left size) anySatisfy: [:index | (left at: index) ~~ (right at: index)]) not]].
 sequence := OrderedCollection new add: #left; add: #middle; add: #right; yourself.
 sequenceRoot := Array with: sequence.
 sequenceBefore := (current at: 'captureImages') value: (Array with: sequenceRoot).
 sequence removeAll: sequence asArray; addAll: #(#middle #left #right).
 sequenceAfter := (current at: 'captureImages') value: (Array with: sequenceRoot).
 sequence add: #prefix beforeIndex: 1; add: #suffix.
 plan := factory value: component value: (Array with: sequenceBefore with: sequenceAfter) value: 'undo'.
 (plan at: 'execute') value.
 (sameOrder value: sequence value: #(#prefix #left #middle #right #suffix))
   ifFalse: [component error: 'Exact ordered inverse lost independent prefix/suffix'].
 plan := factory value: component value: (Array with: sequenceBefore with: sequenceAfter) value: 'redo'.
 (plan at: 'execute') value.
 (sameOrder value: sequence value: #(#prefix #middle #left #right #suffix))
   ifFalse: [component error: 'Exact ordered redo lost independent prefix/suffix'].
 cases add: 'ordered_reorder_preserves_prefix_suffix'.
 sequence removeAll: sequence asArray; addAll: #(#left #original #right).
 sequenceBefore := (current at: 'captureImages') value: (Array with: sequenceRoot).
 sequence remove: #original.
 sequenceAfter := (current at: 'captureImages') value: (Array with: sequenceRoot).
 sequence add: #ambiguous beforeIndex: 2.
 plan := factory value: component value: (Array with: sequenceBefore with: sequenceAfter) value: 'undo'.
 (plan at: 'verifyBeforeApply') value ifTrue: [component error: 'Ambiguous restoration gap accepted'].
 refused := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
 (refused and: [((plan at: 'progress') at: 'completed_primitives') = 0 and: [
   sameOrder value: sequence value: #(#left #ambiguous #right)]])
   ifFalse: [component error: 'Ambiguous order gap changed private objects'].
 cases add: 'ordered_ambiguous_gap_refused'.
 keyObject := 'key' copy. equalKey := keyObject copy.
 keyMap := Dictionary new at: keyObject put: #original; yourself. keyRoot := Array with: keyMap.
 keyBefore := (current at: 'captureImages') value: (Array with: keyRoot).
 keyMap at: keyObject put: #changed.
 keyAfter := (current at: 'captureImages') value: (Array with: keyRoot).
 keyMap removeKey: keyObject; at: equalKey put: #changed.
 plan := factory value: component value: (Array with: keyBefore with: keyAfter) value: 'undo'.
 (plan at: 'verifyBeforeApply') value ifTrue: [component error: 'Equal-value replacement of original dictionary key accepted'].
 refused := component handleExceptionsIn: [(plan at: 'execute') value. false] ifFail: [:error | true].
 (refused and: [((plan at: 'progress') at: 'completed_primitives') = 0 and: [keyMap keys asArray first == equalKey]])
   ifFalse: [component error: 'Replaced key identity conflict changed private map'].
 cases add: 'equal_dictionary_key_replacement_refused'.
 (current at: 'verify') value ifFalse: [component error: 'Live baseline changed during private primitives'].
 (current at: 'encode') value: (Dictionary new at: 'profile' put: 'native_field_patch_private_v2';
   at: 'passed' put: true; at: 'cases' put: cases asArray; at: 'primary_private_object_count' put: before size;
   at: 'first_undo_primitives' put: undoCount; at: 'redo_primitives' put: redoCount;
   at: 'final_undo_primitives' put: finalCount; at: 'live_native_unchanged' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'actual_model_inverse_verified' put: false; yourself)
 ] ifFail: [:error | 'BDE_FIELD_PRIVATE_ERROR: ', error messageText]
]
