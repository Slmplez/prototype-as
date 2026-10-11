[:component :record :context |
 component handleExceptionsIn: [
 | material source desired observed anchors patch cells progress verifyBefore verifyAfter execute protectedVerify result local direction |
 (context isArray and: [context size = 2]) ifFalse: [component error: 'Fixed local source target/direction context required'].
 local := context first. direction := context last.
 ((local at: 'profile') = 'native_source_local_inverse_v1' and: [#('undo' 'redo') includes: direction])
   ifFalse: [component error: 'Fixed local source identity context required'].
 material := local at: 'sourceMaterial'. source := material at: 'sourceRoot'.
 source == (record at: 'diagram') specification specSourceInternalOrNil
   ifFalse: [component error: 'Local source root identity expired before normalization'].
 desired := local at: 'sourceDesired'.
 protectedVerify := [((record at: 'fieldNativeBefore') at: 'verifyImages') value: (local at: 'nativeDesired')].
 protectedVerify value ifFalse: [component error: 'Local native target differs before source normalization'].
 anchors := ((local at: 'sourceAnchors'), desired keys) asOrderedCollection.
 observed := (material at: 'captureImages') value: anchors.
 patch := (record at: 'fieldNativePatchFactory') value: component
   value: (Array with: desired with: observed) value: 'undo'.
 ((patch isKindOf: Dictionary) and: [(patch at: 'profile') = 'native_field_patch_v2'])
   ifFalse: [component error: patch asString].
 cells := (patch at: 'primitiveCells') value.
 progress := Dictionary new at: 'state' put: 'prepared'; at: 'completed_cells' put: 0;
   at: 'completed_primitives' put: 0; at: 'cell_count' put: cells size; at: 'direction' put: direction; yourself.
 verifyBefore := [source == (record at: 'diagram') specification specSourceInternalOrNil and: [
   protectedVerify value and: [((material at: 'verifyImages') value: observed)
     and: [(patch at: 'verifyBeforeApply') value]]]].
 verifyAfter := [source == (record at: 'diagram') specification specSourceInternalOrNil and: [
   protectedVerify value and: [((material at: 'verifyImages') value: desired) and: [
     ((record at: 'fieldSourceSame') value: component value: source value: (local at: 'expectedSource')) == true]]]].
 execute := [| count |
   (progress at: 'state') = 'prepared' ifFalse: [component error: 'Local source identity patch cannot replay; classify instead'].
   verifyBefore value ifFalse: [component error: 'Local source CURRENT/protected native images changed'].
   progress at: 'state' put: 'started'.
   [(patch at: 'execute') value] ensure: [
     count := (patch at: 'progress') at: 'completed_primitives'.
     progress at: 'completed_primitives' put: count; at: 'completed_cells' put: count].
   (count = cells size and: [verifyAfter value])
     ifFalse: [component error: 'Local source identity primitive count/target/protected state differs'].
   progress at: 'state' put: 'applied'. count
 ].
 result := Dictionary new at: 'profile' put: 'source_identity_patch_v1'; at: 'cells' put: cells;
   at: 'progress' put: progress; at: 'nativePatch' put: patch;
   at: 'sourceRoot' put: source; at: 'expectedSource' put: (local at: 'expectedSource');
   at: 'nativeDesiredVerified' put: protectedVerify; at: 'verifyBeforeApply' put: verifyBefore;
   at: 'verifyDesired' put: verifyAfter; at: 'execute' put: execute; at: 'write_authorized' put: false; yourself.
 result
 ] ifFail: [:error | 'BDE_SOURCE_IDENTITY_RESTORE_ERROR: ', error messageText]
]
