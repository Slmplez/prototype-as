[:sourceDump | [:component :token |
 component handleExceptionsIn: [
 | record root source before after encoder out |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID])
   ifFalse: [component error: 'Field source material owner differs'].
 (#('set_literal' 'set_comment' 'move_node' 'set_edge_route') includes: (record at: 'operation'))
   ifFalse: [component error: 'Exact field source operation required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated retained field source required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2)
   at: (component getOID, '/', ((record at: 'diagramName') subStrings: $/) first).
 (root at: 'diagram') == (record at: 'diagram')
   ifFalse: [component error: 'Retained field source diagram expired'].
 before := record at: 'fieldNativeSourceBefore'. after := record at: 'fieldOriginalAfterSource'.
 source := (record at: 'diagram') specification specSourceInternalOrNil.
 encoder := (record at: 'fieldNativeBefore') at: 'encode'.
 out := Dictionary new at: 'profile' put: 'native_field_source_inspection_v1';
   at: 'native_token' put: token; at: 'component_oid' put: component getOID;
   at: 'native_state' put: (record at: 'state');
   at: 'source_matches_original' put: ((root at: 'sameSource') value: source value: before);
   at: 'source_matches_first_after' put: ((root at: 'sameSource') value: source value: after);
   at: 'sources' put: (Dictionary new
     at: 'original' put: (sourceDump value: component value: before);
     at: 'applied' put: (sourceDump value: component value: after);
     at: 'current' put: (sourceDump value: component value: source); yourself);
   at: 'field_execution' put: ((record at: 'fieldStatusReader') value: component value: record value: token);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'native_identity_recreatable_from_export' put: false; yourself.
 encoder value: out
 ] ifFail: [:error | 'BDE_FIELD_SOURCE_ERROR: ', error messageText]
]]
