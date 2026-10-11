[:sourceDump :aliasPlanner | [:component :token |
 component handleExceptionsIn: [
 | record root copy same live liveCopy original privateSource sourceBefore protected saved visit guard context plan steps sourceAfter privateWitness out replayRefused conflictPlan conflictRefused cell previous |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Private source alias owner differs'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2)
   at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 copy := root at: 'copySource'. same := root at: 'sameSource'.
 live := (record at: 'diagram') specification specSourceInternalOrNil. liveCopy := copy value: live.
 original := record at: 'fieldNativeSourceBefore'. privateSource := copy value: live.
 privateSource == live ifTrue: [component error: 'Private alias source shares live root'].
 sourceBefore := sourceDump value: component value: privateSource.
 protected := IdentitySet new. saved := IdentityDictionary new.
 visit := [:value | | name | name := value class name asString.
   (value == privateSource dbObject or: [value isNil or: [value isNumber or: [(value isKindOf: Symbol) or: [
     value == true or: [value == false or: [value isString or: [value isKindOf: ByteArray]]]]]]]) ifFalse: [
     (saved includesKey: value) ifFalse: [
       (value isKindOf: Dictionary) ifTrue: [saved at: value put: nil. value values do: [:child | visit value: child]]
       ifFalse: [((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [saved at: value put: nil. value do: [:child | visit value: child]]
       ifFalse: [saved at: value put: ((1 to: value class instSize) collect: [:index | value instVarAt: index]) asArray.
         (#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name) ifTrue: [protected add: value].
         (saved at: value) do: [:child | visit value: child]]]
     ]]].
 visit value: privateSource.
 guard := [protected allSatisfy: [:value | (1 to: value class instSize) allSatisfy: [:index |
   (value instVarAt: index) == ((saved at: value) at: index)]]].
 context := Array new: 6. context at: 1 put: privateSource; at: 2 put: original; at: 3 put: protected;
   at: 4 put: guard; at: 5 put: same; at: 6 put: copy.
 plan := aliasPlanner value: component value: context value: 'undo'.
 (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
 steps := (plan at: 'execute') value.
 sourceAfter := sourceDump value: component value: privateSource.
 replayRefused := false.
 component handleExceptionsIn: [(plan at: 'execute') value] ifFail: [:error | replayRefused := true].
 replayRefused ifFalse: [component error: 'Private source patch replay accepted'].
 (same value: privateSource value: original) ifFalse: [component error: 'Private exact source sharing not restored'].
 guard value ifFalse: [component error: 'Private protected source references changed'].
 privateWitness := copy value: privateSource.
 context at: 1 put: (copy value: live).
 conflictPlan := aliasPlanner value: component value: context value: 'undo'.
 (conflictPlan isKindOf: Dictionary) ifFalse: [component error: conflictPlan asString].
 (conflictPlan at: 'cells') isEmpty ifTrue: [component error: 'Nonzero source alias conflict fixture required'].
 cell := (conflictPlan at: 'cells') first. previous := cell at: 4.
 (cell at: 2) = 'fields' ifTrue: [cell first instVarAt: (cell at: 3) put: nil] ifFalse: [cell first at: (cell at: 3) put: nil].
 conflictRefused := false.
 component handleExceptionsIn: [(conflictPlan at: 'execute') value] ifFail: [:error | conflictRefused := true].
 (cell at: 2) = 'fields' ifTrue: [cell first instVarAt: (cell at: 3) put: previous] ifFalse: [cell first at: (cell at: 3) put: previous].
 ((conflictPlan at: 'progress') at: 'completed_primitives') = 0 ifFalse: [component error: 'Conflict performed source alias mutation'].
 (conflictRefused and: [same value: live value: liveCopy]) ifFalse: [component error: 'Source conflict not refused or live source changed'].
 out := Dictionary new at: 'profile' put: 'private_source_alias_patch_v1'; at: 'passed' put: true;
   at: 'cell_count' put: (plan at: 'cells') size; at: 'completed_primitives' put: steps;
   at: 'private_object_count' put: (plan at: 'private_object_count');
   at: 'source_before' put: sourceBefore; at: 'source_after' put: sourceAfter;
   at: 'source_expected' put: (sourceDump value: component value: original);
   at: 'replay_refused' put: replayRefused; at: 'conflict_refused_before_mutation' put: conflictRefused;
   at: 'protected_references_preserved' put: guard value; at: 'live_source_unchanged' put: (same value: live value: liveCopy);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'actual_model_inverse_verified' put: false; yourself.
 ((record at: 'fieldNativeBefore') at: 'encode') value: out
 ] ifFail: [:error | 'BDE_SOURCE_ALIAS_PRIVATE_ERROR: ', error messageText]
]]
