"Primitive-message original body study, pinned by the existing shared witness registry."
[:collector | [:component :context |
 component handleExceptionsIn: [
 | token action root registry record capture images actual answer unchanged combined recorded tokens |
 (context isArray and: [context size = 2]) ifFalse: [component error: 'Fixed message before command required'].
 token := context first. action := context last.
 (#('capture' 'check' 'export' 'release') includes: action) ifFalse: [component error: 'Fixed message before action required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated message original body only'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Original message owner scope expired'].
 registry := Smalltalk at: #DogeBDEMainWorkflowWitnessesV1 ifAbsentPut: [Dictionary new].
 action = 'capture' ifTrue: [
   (registry includesKey: token) ifTrue: [component error: 'Message original body capture cannot replay'].
   registry size >= 128 ifTrue: [component error: 'Shared original witness capacity reached'].
   capture := collector value: component.
   capture isString ifTrue: [component error: capture].
   images := capture at: 'images'.
   (images at: 'verify') value ifFalse: [component error: 'Original Module body changed during capture'].
   record := Dictionary new at: 'profile' put: 'message_primitive_before_study_v1';
     at: 'owner' put: component item; at: 'root' put: root; at: 'diagram' put: (root at: 'diagram');
     at: 'generation' put: (root at: 'generation'); at: 'capture' put: capture; yourself.
   registry at: token put: record
 ] ifFalse: [
   record := registry at: token ifAbsent: [component error: 'Original message study material unavailable'].
   ((record at: 'profile') = 'message_primitive_before_study_v1' and: [
     (record at: 'owner') == component item and: [(record at: 'root') == root and: [
     (record at: 'generation') = (root at: 'generation')]]])
     ifFalse: [component error: 'Original message owner/generation identity differs'].
   capture := record at: 'capture'. images := capture at: 'images'
 ].
 combined := (capture at: 'referenceRows') value: component item dbObject readReferences.
 recorded := (capture at: 'referenceRows') value: component item dbObject readIsReferencedByOnly.
 actual := (images at: 'diff') value.
 unchanged := (images at: 'verify') value and: [combined = (capture at: 'ownerReferences') and: [
   recorded = (capture at: 'ownerDatabaseReferences')]].
 tokens := images at: 'tokens'.
 answer := Dictionary new at: 'profile' put: 'message_primitive_before_study_v1';
   at: 'component_oid' put: component getOID; at: 'component_path' put: component getFolderPathName;
   at: 'study_token' put: token; at: 'generation' put: (record at: 'generation'); at: 'action' put: action;
   at: 'owner_ref' put: (tokens at: component item);
   at: 'before' put: (images at: 'originalImage'); at: 'before_schema' put: (images at: 'fieldDiagnostics') value;
   at: 'current' put: (images at: 'terminalImage') value; at: 'current_schema' put: (images at: 'terminalFieldDiagnostics') value;
   at: 'actual_diff' put: actual;
   at: 'roots' put: ((capture at: 'roots') collect: [:object | Dictionary new
     at: 'ref' put: (tokens at: object); at: 'class' put: object class name asString; yourself]) asArray;
   at: 'model_refs' put: ((capture at: 'models') collect: [:model | tokens at: model]);
   at: 'configuration_links' put: ((capture at: 'links') collect: [:link | Array with: link first
     with: (link at: 2) with: (tokens at: link last)]) asArray;
   at: 'owner_references_before' put: (capture at: 'ownerReferences'); at: 'owner_references_current' put: combined;
   at: 'owner_database_record_references_before' put: (capture at: 'ownerDatabaseReferences');
   at: 'owner_database_record_references_current' put: recorded;
   at: 'unchanged' put: unchanged; at: 'foreign_database_boundaries' put: true;
   at: 'original_objects_retained' put: true; at: 'creation_before_bound' put: false;
   at: 'inverse_authorized' put: false; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'released' put: false; yourself.
 action = 'release' ifTrue: [
   (unchanged and: [(actual at: 'changes') isEmpty and: [(actual at: 'new_objects') isEmpty]])
     ifFalse: [component error: 'Original message body changed; preserve retained material'].
   registry removeKey: token. answer at: 'released' put: true
 ].
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_MESSAGE_BEFORE_STUDY_ERROR: ', error messageText]
]]
