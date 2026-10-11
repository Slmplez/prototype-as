[:helpers | [:component :token |
 component handleExceptionsIn: [
 | record sourceReader normalize same beforeLive afterLive privateBefore privateGenerated source context plan beforeImages normalizedImages undo redo count undoCount redoCount finalCount out native beforeCombined afterCombined memo allocate fill translate originalNative privateNative |
 (helpers isArray and: [helpers size = 3]) ifFalse: [component error: 'Fixed private source helpers required'].
 normalize := helpers first. sourceReader := helpers at: 2. same := helpers last.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Exact original field-material owner required'].
 beforeLive := record at: 'fieldSourceMaterialBefore'. afterLive := record at: 'fieldSourceMaterialAfter'.
 native := record at: 'fieldNativeBefore'.
 beforeCombined := (native at: 'snapshots') copy.
 (beforeLive at: 'snapshots') keysAndValuesDo: [:object :entry | beforeCombined at: object put: entry].
 afterCombined := (record at: 'fieldOriginalAfterImages') copy.
 (afterLive at: 'snapshots') keysAndValuesDo: [:object :entry | afterCombined at: object put: entry].
 memo := IdentityDictionary new.
 allocate := [:images | images keysAndValuesDo: [:object :entry | (memo includesKey: object) ifFalse: [
   memo at: object put: (entry first = 'boundary' ifTrue: [object] ifFalse: [
     entry first = 'fields' ifTrue: [object shallowCopy] ifFalse: [
       (object isKindOf: Dictionary) ifTrue: [object class new] ifFalse: [entry last copy]]])]]].
 translate := [:object | memo at: object ifAbsent: [object]].
 fill := [:images | images keysAndValuesDo: [:object :entry | | target |
   target := memo at: object.
   entry first = 'fields' ifTrue: [1 to: entry last size do: [:slot |
     target instVarAt: slot put: (translate value: (entry last at: slot))]]
   ifFalse: [entry first = 'collection' ifTrue: [
     (object isKindOf: Dictionary) ifTrue: [entry last keysAndValuesDo: [:key :child |
       target at: (translate value: key) put: (translate value: child)]]
     ifFalse: [1 to: entry last size do: [:slot | target at: slot put: (translate value: (entry last at: slot))]]]
   ifFalse: [entry first = 'value' ifTrue: [1 to: entry last size do: [:slot | target at: slot put: (entry last at: slot)]]]]]].
 allocate value: beforeCombined. fill value: beforeCombined.
 source := memo at: (beforeLive at: 'sourceRoot').
 source ~~ (beforeLive at: 'sourceRoot') ifFalse: [component error: 'Private source aliases the live root'].
 privateBefore := sourceReader value: component value: (Array with: source with: #()).
 (privateBefore isKindOf: Dictionary) ifFalse: [component error: privateBefore asString].
 beforeImages := privateBefore at: 'snapshots'.
 "Translate actual native/source before and after with one identity memo, so
  protected graphical/source sharing is preserved on the private copies too."
 allocate value: afterCombined. fill value: afterCombined.
 privateNative := IdentityDictionary new.
 (record at: 'fieldOriginalAfterImages') keysAndValuesDo: [:object :entry | | saved |
   entry first ~= 'boundary' ifTrue: [
     saved := entry first = 'value' ifTrue: [entry last copy] ifFalse: [
       (object isKindOf: Dictionary) ifTrue: [| keyed |
         keyed := object class new. entry last keysAndValuesDo: [:key :child |
           keyed at: (translate value: key) put: (translate value: child)]. keyed]
       ifFalse: [entry last collect: [:child | translate value: child]]].
     privateNative at: (memo at: object) put: (Array with: entry first with: saved)]].
 privateGenerated := sourceReader value: component value: (Array with: source with: beforeImages keys).
 (privateGenerated isKindOf: Dictionary) ifFalse: [component error: privateGenerated asString].
 ((privateGenerated at: 'snapshots') keys anySatisfy: [:object |
   ((beforeLive at: 'snapshots') includesKey: object) and: [object ~~ (beforeLive at: 'owner')]])
   ifTrue: [component error: 'Private source material includes live mutable references'].
 context := Array new: 6.
 context at: 1 put: privateBefore; at: 2 put: privateGenerated; at: 3 put: privateNative;
   at: 4 put: (record at: 'fieldNativePatchFactory'); at: 5 put: same;
   at: 6 put: [((native at: 'verifyImages') value: privateNative)].
 plan := normalize value: component value: context.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 ((privateGenerated at: 'verify') value) ifFalse: [component error: 'Normalization planning mutated private CURRENT'].
 count := (plan at: 'execute') value.
 (plan at: 'verifyDesired') value ifFalse: [component error: 'Normalized full source values/sharing differ'].
 normalizedImages := (privateGenerated at: 'captureImages') value: beforeImages keys.
 undo := (record at: 'fieldNativePatchFactory') value: component value:
   (Array with: beforeImages with: normalizedImages) value: 'undo'.
 (undo isKindOf: Dictionary) ifFalse: [component error: undo asString].
 undoCount := (undo at: 'execute') value.
 ((privateBefore at: 'verifyImages') value: beforeImages)
   ifFalse: [component error: 'Normalized private undo lost original identities/values'].
 redo := (record at: 'fieldNativePatchFactory') value: component value:
   (Array with: beforeImages with: normalizedImages) value: 'redo'.
 (redo isKindOf: Dictionary) ifFalse: [component error: redo asString].
 redoCount := (redo at: 'execute') value.
 ((privateGenerated at: 'verifyImages') value: normalizedImages)
   ifFalse: [component error: 'Normalized private redo differs from actual normalized images'].
 undo := (record at: 'fieldNativePatchFactory') value: component value:
   (Array with: beforeImages with: normalizedImages) value: 'undo'.
 finalCount := (undo at: 'execute') value.
 ((privateBefore at: 'verifyImages') value: beforeImages)
   ifFalse: [component error: 'Private source final restoration lost an original reference'].
 out := Dictionary new at: 'profile' put: 'source_identity_normalization_private_v1';
   at: 'passed' put: true; at: 'normalization_primitives' put: count;
   at: 'inverse_primitives' put: undoCount; at: 'redo_primitives' put: redoCount;
   at: 'final_inverse_primitives' put: finalCount;
   at: 'original_source_objects' put: beforeImages size;
   at: 'normalized_source_objects' put: normalizedImages size;
   at: 'full_generated_values_and_sharing_verified' put: true;
   at: 'protected_native_objects' put: privateNative size;
   at: 'protected_native_source_sharing_preserved' put: true;
   at: 'private_original_identity_restored' put: true;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'formal_tool_history_verified' put: false; yourself.
 ((record at: 'fieldNativeBefore') at: 'encode') value: out
 ] ifFail: [:error | 'BDE_SOURCE_NORMALIZATION_PRIVATE_ERROR: ', error messageText]
]]
