"Fixed one-shot isolated connect/remove without Store or Commit. This study
 restores original native fields and verifies complete source/raw records.
 It does not execute the production v4 editor or authorize its inverse."
[:patchFactory | [:component :context | component handleExceptionsIn: [
 | token action record material study native source diagram parent sameOrder same freeze check prepared execute actual |
 (context isArray and: [context size = 2]) ifFalse: [component error: 'Fixed runtime lifecycle context required'].
 token := context first. action := context last.
 (#('prepare' 'execute' 'inspect') includes: action) ifFalse: [component error: 'Unknown fixed runtime lifecycle action'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated runtime connection study only'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'connectMaterial'.
 ((material at: 'profile') = 'native_connect_material_v4' and: [(record at: 'state') = 'prepared' and: [
   (material at: 'phase') = 'prepared' and: [(record at: 'owner') == component item and: [
   (record at: 'component') = component getOID and: [(record at: 'operation') = 'connect_data' and: [
   (record at: 'diagramName') = 'Main']]]]]]) ifFalse: [component error: 'Original prepared v4 Module/Main connection required'].
 native := material at: 'nativeBefore'. source := material at: 'sourceBefore'.
 diagram := material at: 'diagram'. parent := material at: 'parent'.
 sameOrder := [:a :b | a size = b size and: [(1 to: a size) allSatisfy: [:i | (a at: i) == (b at: i)]]].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]]
   ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 freeze := [:a | (a isKindOf: Dictionary) ifTrue: [| b | b := Dictionary new.
   a keysAndValuesDo: [:k :v | b at: k put: (freeze value: v)]. b]
   ifFalse: [a isArray ifTrue: [(a collect: [:v | freeze value: v]) asArray]
     ifFalse: [a isString ifTrue: [a copy] ifFalse: [a]]]].
 check := [
   ((material at: 'root') at: 'generation') = (material at: 'generation')
     ifFalse: [component error: 'Original runtime generation expired'].
   ((component getDiagram: 'Main') specification == diagram specification and: [diagram topGraphicalHierarchy contents == parent and: [
     diagram specification specSourceInternalOrNil == (source at: 'sourceRoot')]])
     ifFalse: [component error: 'Original runtime diagram/source identity expired'].
   ((native at: 'verify') value and: [(source at: 'verify') value and: [
     (sameOrder value: parent children value: (material at: 'beforeOrder')) and: [
     (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing'))]]])
     ifFalse: [component error: 'Complete original native/source/order CURRENT differs'].
   ((material at: 'moduleReferenceGuard') value and: [(material at: 'persistentReferenceGuard') value and: [
     (material at: 'persistentOwnerGuard') value]])
     ifFalse: [component error: 'Complete original persistent reference/owner CURRENT differs']
 ].
 action = 'prepare' ifTrue: [
   (material includesKey: 'runtimeLifecycle') ifTrue: [component error: 'Runtime lifecycle material cannot replay'].
   check value.
   ((material at: 'targetPin') at: 'point') connections isEmpty ifFalse: [component error: 'Original input occupied'].
   prepared := Dictionary new at: 'profile' put: 'isolated_connect_runtime_prepared_v1';
     at: 'native_token' put: token; at: 'component_oid' put: component getOID;
     at: 'generation' put: (material at: 'generation');
     at: 'before' put: (freeze value: (material at: 'persistentOwnersBefore'));
     at: 'graphical_before' put: (native at: 'originalImage');
     at: 'model_operations' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'persistent_write_calls' put: 0; at: 'production_connection_inverse_available' put: false; yourself.
   study := Dictionary new at: 'phase' put: 'prepared'; at: 'prepared' put: prepared;
     at: 'patchFactory' put: patchFactory; at: 'modelOperations' put: 0; yourself.
   material at: 'runtimeLifecycle' put: study
 ] ifFalse: [study := material at: 'runtimeLifecycle' ifAbsent: [component error: 'Original runtime preparation unavailable']].
 action = 'execute' ifTrue: [
   (study at: 'phase') = 'prepared' ifFalse: [component error: 'Runtime lifecycle consumed; inspect without replay'].
   check value. study at: 'phase' put: 'connect_started'.
   actual := [| edge afterOrder graphical rawAfter observed patch removed restored after |
     edge := diagram connect: (record at: 'source') to: (record at: 'target') withPoints: nil.
     study at: 'created' put: edge; at: 'modelOperations' put: 1.
     (edge isNil or: [edge isKindOf: EtasAPIError]) ifTrue: [component error: 'Actual runtime connection failed'].
     afterOrder := parent children asArray copy.
     (afterOrder size = ((material at: 'beforeOrder') size + 1) and: [
       (afterOrder select: [:o | o == edge diagramElement]) size = 1 and: [
       (sameOrder value: (afterOrder reject: [:o | o == edge diagramElement]) value: (material at: 'beforeOrder'))]])
       ifFalse: [component error: 'Actual runtime edge does not explain complete insertion'].
     (edge getOutputPin diagramElement == ((material at: 'sourcePin') at: 'pin') and: [
       edge getInputPin diagramElement == ((material at: 'targetPin') at: 'pin')])
       ifFalse: [component error: 'Actual runtime endpoint identity differs'].
     graphical := (native at: 'diff') value. study at: 'graphicalActual' put: graphical.
     rawAfter := (material at: 'persistentOwnerReader') value.
     study at: 'persistentAfterConnect' put: rawAfter.
     (source at: 'verify') value ifFalse: [component error: 'Unstored connection unexpectedly changed source; retain actual'].
     (same value: rawAfter value: (material at: 'persistentOwnersBefore'))
       ifFalse: [component error: 'Unstored connection changed persistent owner/references; retain actual'].
     study at: 'phase' put: 'remove_started'.
     removed := diagram removeDiagramObject: edge. study at: 'modelOperations' put: 2.
     (removed isKindOf: EtasAPIError) ifTrue: [component error: 'Runtime edge removal failed'].
     (parent children anySatisfy: [:o | o == edge diagramElement]) ifTrue: [component error: 'Original created edge still attached'].
     observed := (native at: 'captureImages') value: (native at: 'snapshots') keys.
     patch := (study at: 'patchFactory') value: component
       value: (Array with: (native at: 'snapshots') with: observed) value: 'undo'.
     (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
     study at: 'nativePatch' put: patch; at: 'phase' put: 'native_restore_started'.
     (patch at: 'execute') value.
     restored := (native at: 'verify') value and: [(source at: 'verify') value and: [
       (sameOrder value: parent children value: (material at: 'beforeOrder')) and: [
       (sameOrder value: parent sortedChildren value: (material at: 'beforeDrawing'))]]].
     after := (material at: 'persistentOwnerReader') value.
     (restored and: [same value: after value: (material at: 'persistentOwnersBefore')])
       ifFalse: [component error: 'Complete original runtime/source/owner target not restored'].
     study at: 'phase' put: 'restored'; at: 'after' put: after.
     Dictionary new at: 'profile' put: 'isolated_connect_runtime_actual_v1';
       at: 'native_token' put: token; at: 'component_oid' put: component getOID;
       at: 'generation' put: (material at: 'generation');
       at: 'before' put: (freeze value: (material at: 'persistentOwnersBefore'));
       at: 'after_connect' put: rawAfter; at: 'after' put: after;
       at: 'graphical_before' put: (native at: 'originalImage'); at: 'graphical_actual' put: graphical;
       at: 'actual_created_edge' put: true; at: 'endpoint_identity_verified' put: true;
       at: 'model_operations' put: 2; at: 'native_restore_primitives' put: ((patch at: 'progress') at: 'completed_primitives');
       at: 'original_native_source_order_restored' put: restored;
       at: 'store_called' put: false; at: 'commit_called' put: false; at: 'persistent_write_calls' put: 0;
       at: 'production_connection_inverse_available' put: false; at: 'full_delivery' put: false; yourself
   ] value.
   study at: 'actual' put: actual
 ].
 action = 'inspect' ifTrue: [
   (study at: 'phase') = 'restored' ifFalse: [component error: 'Runtime terminal not verified; retain actual material'].
   check value].
 (native at: 'encode') value: (action = 'prepare' ifTrue: [study at: 'prepared'] ifFalse: [study at: 'actual'])
 ] ifFail: [:error | 'BDE_CONNECT_RUNTIME_ERROR: ', error messageText]
]]
