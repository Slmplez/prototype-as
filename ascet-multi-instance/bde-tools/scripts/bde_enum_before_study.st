"Fixed isolated enum original-body study. Same registry pin policy as Main witnesses."
[:collector | [:component :definitionAPI :context |
 component handleExceptionsIn: [
 | token action root registry record capture images actual answer unchanged references definition definitionOID |
 (context isArray and: [context size = 2]) ifFalse: [component error: 'Fixed enum before command required'].
 token := context first. action := context last.
 (#('capture' 'check' 'export' 'release') includes: action) ifFalse: [component error: 'Fixed enum before action required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated enum before study only'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Original enum study owner expired'].
 definition := definitionAPI item. definitionOID := definitionAPI getOID.
 definition class name asString = 'SGEnumerationDB' ifFalse: [component error: 'Exact existing enum API required'].
 (definitionAPI getFolderPathName startsWith: 'BDE_Tool_Experiments\')
   ifFalse: [component error: 'Isolated existing enum definition required'].
 registry := Smalltalk at: #DogeBDEMainWorkflowWitnessesV1 ifAbsentPut: [Dictionary new].
 action = 'capture' ifTrue: [
   (registry includesKey: token) ifTrue: [component error: 'Enum before capture cannot replay'].
   registry size >= 128 ifTrue: [component error: 'Shared witness capacity reached'].
   capture := collector value: component value: definitionAPI.
   capture isString ifTrue: [component error: capture].
   images := capture at: 'images'.
   (images at: 'verify') value ifFalse: [component error: 'Enum original body changed during capture'].
   record := Dictionary new at: 'profile' put: 'enum_declaration_before_study_v1';
     at: 'owner' put: component item; at: 'root' put: root; at: 'diagram' put: (root at: 'diagram');
     at: 'generation' put: (root at: 'generation'); at: 'definition' put: definition;
     at: 'definitionOID' put: definitionOID; at: 'capture' put: capture; yourself.
   registry at: token put: record
 ] ifFalse: [
   record := registry at: token ifAbsent: [component error: 'Original enum before study unavailable'].
   ((record at: 'profile') = 'enum_declaration_before_study_v1' and: [
     (record at: 'owner') == component item and: [(record at: 'root') == root and: [
     (record at: 'generation') = (root at: 'generation') and: [
     (record at: 'definition') == definition and: [(record at: 'definitionOID') = definitionOID]]]]])
     ifFalse: [component error: 'Original enum owner/definition/generation identity differs'].
   capture := record at: 'capture'. images := capture at: 'images'
 ].
 references := definition dbObject readReferences.
 references isError ifTrue: [component error: 'Current enum reference read failed'].
 references := references isReferencedBys.
 references size > 4096 ifTrue: [component error: 'Current enum reference bound exceeded'].
 references := (references collect: [:key | Array with: key globalIdString with: key className])
   asSortedCollection: [:a :b | a first = b first ifTrue: [a last < b last] ifFalse: [a first < b first]].
 actual := (images at: 'diff') value.
 unchanged := (images at: 'verify') value and: [references asArray = (capture at: 'definitionReferences')].
 answer := Dictionary new at: 'profile' put: 'enum_declaration_before_study_v1';
   at: 'component_oid' put: component getOID; at: 'definition_oid' put: definitionOID;
   at: 'definition_path' put: definitionAPI getFolderPathName; at: 'study_token' put: token;
   at: 'generation' put: (record at: 'generation'); at: 'action' put: action;
   at: 'owner_ref' put: ((images at: 'tokens') at: component item);
   at: 'definition_ref' put: ((images at: 'tokens') at: definition);
   at: 'enumeration_ref' put: ((images at: 'tokens') at: (capture at: 'enumeration'));
   at: 'before' put: (images at: 'originalImage');
   at: 'before_schema' put: (images at: 'fieldDiagnostics') value;
   at: 'current' put: (images at: 'terminalImage') value;
   at: 'current_schema' put: (images at: 'terminalFieldDiagnostics') value;
   at: 'actual_diff' put: actual;
   at: 'roots' put: ((capture at: 'roots') collect: [:object | Dictionary new
     at: 'ref' put: ((images at: 'tokens') at: object); at: 'class' put: object class name asString; yourself]) asArray;
   at: 'configuration_links' put: ((capture at: 'links') collect: [:link | Array with: link first
     with: (link at: 2) with: ((images at: 'tokens') at: link last)]) asArray;
   at: 'definition_references_before' put: (capture at: 'definitionReferences');
   at: 'definition_references_current' put: references asArray;
   at: 'unchanged' put: unchanged; at: 'foreign_database_boundaries' put: true;
   at: 'original_objects_retained' put: true; at: 'creation_before_bound' put: false;
   at: 'full_body_capture' put: false; at: 'inverse_authorized' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'released' put: false; yourself.
 action = 'release' ifTrue: [
   (unchanged and: [(actual at: 'changes') isEmpty and: [(actual at: 'new_objects') isEmpty]])
     ifFalse: [component error: 'Enum study changed; preserve original materials'].
   registry removeKey: token. answer at: 'released' put: true
 ].
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_ENUM_BEFORE_STUDY_ERROR: ', error messageText]
]]
