[:definition |
 | restoreFactory statusReader strictSame sourceDump |
 (definition isArray and: [definition size = 4]) ifFalse: [definition error: 'Fixed source compensation bundle required'].
 restoreFactory := definition first. statusReader := definition at: 2. strictSame := definition at: 3. sourceDump := definition last.
 [:component :token :command |
 component handleExceptionsIn: [
 | registry record action transaction failed sequence status direction desired native root existing eligible out plan source expected result actual progress phase |
 command size = 4 ifFalse: [component error: 'Exact source compensation context required'].
 action := command first. transaction := command at: 2. failed := command at: 3. sequence := (command at: 4) asNumber.
 (#('inspect' 'prepare' 'apply') includes: action) ifFalse: [component error: 'Fixed source compensation action required'].
 registry := Smalltalk at: #DogeBDEStructureEditsV3. record := registry at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Source compensation owner differs'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated source compensation required'].
 (#('set_literal' 'set_comment' 'move_node' 'set_edge_route') includes: (record at: 'operation'))
   ifFalse: [component error: 'Exact field compensation operation required'].
 status := record at: 'fieldExecutionStatus'. direction := status at: 'direction'.
 phase := status at: 'phase'. native := record at: 'fieldNativeBefore'.
 (record includesKey: 'fieldLocalProfile') ifTrue: [
   action ~= 'inspect' ifTrue: [component error: 'Local source identity failure requires its own actual-head recovery; alias-only compensation prohibited']].
 desired := record at: 'fieldExecutionDesiredImages' ifAbsent: [nil].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2)
   at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 (root at: 'diagram') == (record at: 'diagram') ifFalse: [component error: 'Source compensation diagram expired'].
 existing := record at: 'fieldSourceCompensation' ifAbsent: [nil].
 eligible := #('undo' 'redo') includes: direction.
 eligible := eligible and: [(record includesKey: 'fieldLocalProfile') not].
 eligible := eligible and: [#('field_store_normalization' 'field_source_patch') includes: phase].
 eligible := eligible and: [#('revert_started' 'started') includes: (record at: 'state')].
 eligible := eligible and: [(status at: 'store_started') and: [status at: 'store_completed']].
 eligible := eligible and: [(record at: 'fieldExecutionPatch') notNil and: [(record at: 'fieldExecutionNormalization') notNil]].
 eligible := eligible and: [(((record at: 'fieldExecutionPatch') at: 'progress') at: 'state') = 'applied'].
 eligible := eligible and: [(((record at: 'fieldExecutionNormalization') at: 'progress') at: 'state') = 'applied'].
 eligible := eligible and: [desired notNil and: [(native at: 'verifyImages') value: desired]].
 "No model reader/store is called while the source result is unresolved."
 action ~= 'inspect' ifTrue: [
   ((status at: 'execution_sequence') = sequence and: [transaction ~= failed and: [failed ~= token]])
     ifFalse: [component error: 'Source compensation sequence or identities differ'].
   (record includesKey: 'managedExecution') ifTrue: [
     ((record at: 'managedExecution') at: 'result') = failed
       ifFalse: [component error: 'Source compensation does not own failed managed result']].
   existing notNil ifTrue: [
     ((existing at: 'transaction_id') = transaction and: [(existing at: 'failed_change_id') = failed and: [
       (existing at: 'execution_sequence') = sequence]])
       ifFalse: [component error: 'Another source compensation owns retained material']]
 ].
 action = 'prepare' ifTrue: [
   existing notNil ifTrue: [component error: 'Source compensation already prepared; classify instead'].
   eligible ifFalse: [component error: 'Raw patch/store/normalization not completely restored; source compensation refused'].
   (record at: 'fieldExecutionSourcePatch' ifAbsent: [nil]) notNil
     ifTrue: [component error: 'Existing source patch must be classified without replay'].
   plan := restoreFactory value: component value: record value: direction.
   (plan isKindOf: Dictionary) ifFalse: [component error: plan asString].
   (plan at: 'verifyBeforeApply') value ifFalse: [component error: 'Prepared source compensation conflict'].
   source := plan at: 'sourceRoot'.
   existing := Dictionary new at: 'profile' put: 'native_field_source_compensation_v1';
     at: 'transaction_id' put: transaction; at: 'failed_change_id' put: failed;
     at: 'native_token' put: token; at: 'execution_sequence' put: sequence;
     at: 'direction' put: direction; at: 'state' put: 'prepared';
     at: 'source_before' put: (sourceDump value: component value: source);
     at: 'expected_source' put: (sourceDump value: component value: (plan at: 'expectedSource')); yourself.
   record at: 'fieldSourceCompensation' put: existing;
     at: 'fieldExecutionSourcePatch' put: plan; at: 'fieldExecutionSourceRoot' put: source;
     at: 'fieldSourceRestoreFactory' put: restoreFactory; at: 'fieldSourceSame' put: strictSame;
     at: 'fieldStatusReader' put: statusReader; at: 'fieldSourceTransactionId' put: transaction
 ].
 action = 'apply' ifTrue: [
   existing isNil ifTrue: [component error: 'Prepared source compensation required'].
   (existing at: 'state') = 'prepared' ifFalse: [component error: 'Source compensation cannot replay; classify instead'].
   plan := record at: 'fieldExecutionSourcePatch'.
   ((plan at: 'progress') at: 'state') = 'prepared' ifFalse: [component error: 'Source patch already started; classify instead'].
   (plan at: 'verifyBeforeApply') value ifFalse: [component error: 'Source compensation conflict before writes'].
   existing at: 'state' put: 'started'. status at: 'phase' put: 'field_source_compensation'.
   (plan at: 'execute') value.
   (plan at: 'verifyDesired') value ifFalse: [component error: 'Source compensation exact sharing/protected references differ'].
   "Reestablish only the reader certificate; never replace specSource."
   root at: 'checkpoint' put: ((root at: 'copySource') value: (record at: 'diagram') specification specSourceInternalOrNil).
   result := (record at: 'materialObservationReader') value: component value: (record at: 'diagramName') value: (record at: 'targets').
   (result startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: result].
   ((plan at: 'nativeDesiredVerified') value and: [(plan at: 'verifyDesired') value])
     ifFalse: [component error: 'Source compensation observation changed protected native/source state'].
   result = (record at: (direction = 'undo' ifTrue: ['before'] ifFalse: ['after']))
     ifFalse: [component error: 'Source compensation terminal observation differs from retained target'].
   actual := (native at: 'diff') value.
   record at: (direction = 'undo' ifTrue: ['fieldRevertedActual'] ifFalse: ['fieldAppliedActual']) put: actual;
     at: (direction = 'undo' ifTrue: ['fieldRevertedImages'] ifFalse: ['fieldAppliedImages']) put: (native at: 'terminalSnapshots') value;
     at: (direction = 'undo' ifTrue: ['fieldRevertedSource'] ifFalse: ['fieldAppliedSource'])
       put: ((root at: 'copySource') value: (record at: 'diagram') specification specSourceInternalOrNil);
     at: 'lastObserved' put: result; at: 'state' put: (direction = 'undo' ifTrue: ['reverted'] ifFalse: ['applied']).
   status at: 'phase' put: 'terminal'; at: 'terminal_verified' put: true; at: 'serialized_source_verified' put: true.
   existing at: 'state' put: 'applied';
     at: 'source_after' put: (sourceDump value: component value: (record at: 'diagram') specification specSourceInternalOrNil)
 ].
 out := Dictionary new at: 'profile' put: 'native_field_source_recovery_v1';
   at: 'native_token' put: token; at: 'native_state' put: (record at: 'state');
   at: 'eligible' put: eligible;
   at: 'field_execution' put: ((record at: 'fieldStatusReader') value: component value: record value: token);
   at: 'compensation' put: (existing isNil ifTrue: [nil] ifFalse: [
     existing copy at: 'progress' put: ((record at: 'fieldExecutionSourcePatch') at: 'progress') copy;
       at: 'source_root_preserved' put: ((record at: 'fieldExecutionSourcePatch') at: 'sourceRoot') == (record at: 'diagram') specification specSourceInternalOrNil;
       at: 'native_desired_verified' put: ((record at: 'fieldExecutionSourcePatch') at: 'nativeDesiredVerified') value;
       at: 'source_desired_verified' put: ((record at: 'fieldExecutionSourcePatch') at: 'verifyDesired') value; yourself]);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_SOURCE_COMPENSATION_ERROR: ', error messageText]
]]
